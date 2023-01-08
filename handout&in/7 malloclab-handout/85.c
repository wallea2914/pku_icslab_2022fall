/*
 * @Author: 周裕涵 HumpreyChou
 * @ID:     1900012455
 * @Date:   2020-12-18 16:22:50
 * @Last Modified by:   周裕涵 HumpreyChou
 * @Last Modified time: 2020-12-23 23:33:17
 * @File: A general dynamic storage allocator
 * 
 * 
 *                                      HIGH-LEVEL DESCRIPTION
 * 1. Block Structure
 * There are two types of blocks: allocated and free, the minimum size of a block is 16 bytes (4 word)
 * (1) Allocated block 
 * It has a 4-byte header and 12 bytes left to be payload and padding
 * Allocated block's header stores three pieces of information:
 * block size, whether this block is allocated, whether previous block is allocated
 * ---------------------------------------------------------
 *                  size               | prev_alloc | alloc    header
 * ---------------------------------------------------------
 *                      payload
 * 
 * ---------------------------------------------------------
 *                 padding(optional)
 * ---------------------------------------------------------
 * (2) Free block
 * It has a 4-byte header and a 4-byte footer, the header's role is identical to that in allocated block 
 * The footer is almost the same as the header except that it does not need to store prev_alloc bit
 * There are two pointers stored in a free block pointing to the predecessor and successor of this block in the free list
 * On 64-bit machine sizeof(void*) == 8, but as the heap size is not larger than 2^32 bytes, we can store the pointer in a 
 * 4-bytes space by calculating the offset of the pointer to the beginning of the heap
 * Thus, we use macro RELA_NULL to represant NULL in relative-pointer, if pred/succ == RELA_NULL then pred/succ == heap_begin
 * ---------------------------------------------------------
 *                  size               | prev_alloc | alloc    header
 * ---------------------------------------------------------
 *                      pred ptr
 * ---------------------------------------------------------
 *                      succ ptr
 * ---------------------------------------------------------
 *                      payload
 * 
 * ---------------------------------------------------------
 *                 padding(optional)
 * ---------------------------------------------------------
 *                   size           | not important | alloc    footer
 * ---------------------------------------------------------
 * 2. Free Block Management
 * We use a segregated free list to manage free blocks
 * Free blocks are segregated into different lists based on their size
 * Each list itself is ordered by free block's size
 * Here is just an example of the list
 * seg_free_list: | 2^0 ~ 2^1 - 1 | 2^1 ~ 2^2  - 1 | ... | 2^30 ~ 2^31 - 1 |
 *                         |               |                   |
 *                         1               2                  2^30
 *                        NULL             |                   |
 *                                         3                  NULL
 *                                         |
 *                                        ...
 * Each time allocating a block, find the first fit in the list and delete it from the list
 * Each time freeing a block, coalesce previous and next block if they are free to create a larger block 
 * then insert it into the list
 * 
 * 3. Placement Policy
 * When a free block is find to place payload on it, it comes to three conditions:
 * (1) block size - required size <= minumum block size (16 bytes), just make the whole block allocated
 * (2) block size - required size >= PLACE_ARG (an argument to be optimized), make the rear part of the 
 * block allocated and make the front part free, which means to divide the block
 * (3) otherwise, make the front part of the block allocated and rear part free, also dividing the block  
 */


#include "mm.h"
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "memlib.h"

/* To make mm_checkheap more verbose */
#define VERBOSE 0
#if VERBOSE
#define check_printf(...) printf(__VA_ARGS__)
#else
#define check_printf(...)
#endif

/* To know what is going on when SEGMENT FAULT happens */
#define DEBUG 0
#if DEBUG
#define dbg_printf(...) printf(__VA_ARGS__)
#else
#define dbg_printf(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* Global variables */
static char *heap = 0;
static char *heap_list = 0; /* Pointer to first block */
static char *seg_free_list = 0;

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN_PTR(p) (((size_t)(p) + (ALIGNMENT - 1)) & ~0x7)
#define ALIGN_BLK(word) ((word % 2) ? (word + 1) : (word))

/* Basic constants and macros */
#define WSIZE 4             /* Word and header/footer size (bytes) */
#define DSIZE 8             /* Double word size (bytes) */
#define CHUNKSIZE (1 << 12) /* Extend heap by this amount (bytes) */

#define MAX(x, y) ((x) > (y) ? (x) : (y))

/* Pack a size and allocated bit and previous allocated bit into a word */
#define PACK(size, alloc, prev_alloc) ((size) | (alloc) | (prev_alloc))

/* Read and write a word at address p */
#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)
#define GET_PREV_ALLOC(p) (GET(p) & 0x2)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp) ((char *)(bp)-WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp)-WSIZE)))
#define PREV_BLKP(bp) ((char *)(bp)-GET_SIZE(((char *)(bp)-DSIZE)))

/* Convert a 32-bit integer stored in a free list to a 64-bit ptr */
#define PTR32_64(bp) \
    ((char *)((size_t)(*(unsigned int *)(bp)) + (size_t)(heap)))
/* Convert a 64-bit ptr to a 32-bit integer to store in a free block */
#define PTR64_32(bp) ((unsigned int)((size_t)(bp) - (size_t)(heap)))

#define FREE_LIST_MAX 32

/* Argument to optimize placement policy */
#define PLACE_ARG 112

/* Relative NULL, if ptr - heap == NULL then ptr == RELA_NULL */
#define RELA_NULL heap

/* Given block ptr bp, compute predecessor and successor block ptr of a free
 * block */
#define PRED_PTR(bp) (PTR32_64((bp)))
#define SUCC_PTR(bp) (PTR32_64((char *)(bp) + WSIZE))

/* Given block ptr bp, return pointers to the pred/succ ptr of a free block */
#define PRED(bp) ((char *)(bp))
#define SUCC(bp) ((char *)(bp) + WSIZE)

/* Convert ptr to 32 bits unsigned int and set it to *p */
#define SET_PTR(p, ptr) (*(unsigned int *)(p) = PTR64_32((ptr)))

/* Function prototypes */
static void *extend_heap(size_t word);
static void *coalesce(void *bp);
static void insert(void *bp, size_t size);
static void delete (void *bp);
static void *place(void *bp, size_t asize);
static void *find_fit(size_t asize);
static void change_next_block(char *bp, size_t alloc);

/*
 * Initialize: return -1 on error, 0 on success.
 */
int mm_init(void) {
    dbg_printf("enter mm_init\n");
    if ((heap = mem_sbrk(4 * WSIZE + 4 * FREE_LIST_MAX)) == (void *)-1)
        return -1;

    seg_free_list = heap;
    memset(seg_free_list, 0, 4 * FREE_LIST_MAX);

    heap_list = seg_free_list + 4 * FREE_LIST_MAX;
    PUT(heap_list, 0);                             /* alignment padding */
    PUT(heap_list + 1 * WSIZE, PACK(DSIZE, 1, 2)); /* prologue header */
    PUT(heap_list + 2 * WSIZE, PACK(DSIZE, 1, 2)); /* prologue footer */
    PUT(heap_list + 3 * WSIZE, PACK(0, 1, 2));     /* epilogue header */
    heap_list += (2 * WSIZE); /* heap_list points to prologue footer */

    dbg_printf(
        "before extend_heap, heap = %p, seg_free_list = %p, heap_list = %p\n",
        heap, seg_free_list, heap_list);

    if (extend_heap(CHUNKSIZE / WSIZE) == NULL)
        return -1;
    dbg_printf("mm_init done, heap = %p, seg_free_list = %p, heap_list = %p\n",
               heap, seg_free_list, heap_list);
    return 0;
}

/*
 * malloc
 */
void *malloc(size_t size) {

    dbg_printf("----------------------------------\n");
    dbg_printf("enter malloc, ask for %d bytes\n", size);

    if (size <= 0)
        return NULL;
    size_t asize;
    size_t extend_size;
    char *bp;

    if (size <= 3 * WSIZE)
        asize = 2 * DSIZE;
    else
        asize = DSIZE * ((size + DSIZE + DSIZE - 1) / DSIZE);

    dbg_printf("asize = %d\n", asize);

    if ((bp = find_fit(asize)) != NULL) {
        bp = place(bp, asize);
        dbg_printf("malloc finds a fit, bp = %p\n", bp);
        return bp;
    }

    extend_size = MAX(asize, CHUNKSIZE);
    if ((bp = extend_heap(extend_size / WSIZE)) == NULL)
        return NULL;
    bp = place(bp, asize);

    dbg_printf("malloc extends heap and finds a fit, bp = %p\n", bp);
    
    return bp;
}

/*
 * free
 */
void free(void *bp) {

    dbg_printf("-----------------------------------\n");
    dbg_printf("enter free, ask to free %p\n", bp);

    if (!bp)
        return;

    bp = coalesce(bp);
    insert(bp, GET_SIZE(HDRP(bp))); /* size may be enlarged */
    
    dbg_printf("free block of %d size\n", GET_SIZE(HDRP(bp)));
    dbg_printf("leave free\n");
}

/**
 * realloc
 * @brief: a simple idea, if the old size is large enough
 * then return oldptr, else malloc a new block and free the old block
 */
void *realloc(void *oldptr, size_t size) {
    size_t oldsize;
    void *newptr;

    /* If size == 0 then this is just free, and we return NULL. */
    if (size == 0) {
        free(oldptr);
        return NULL;
    }

    /* If oldptr is NULL, then this is just malloc. */
    if (oldptr == NULL) {
        return malloc(size);
    }

    oldsize = GET_SIZE(HDRP(oldptr)) - WSIZE; /* old maximum paylaod */

    if (oldsize >= size)
        return oldptr;

    newptr = malloc(size);
    if (!newptr)
        return NULL;
    memcpy(newptr, oldptr, oldsize);
    free(oldptr);
    return newptr;
}

/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 */
void *calloc(size_t nmemb, size_t size) {
    size_t total = nmemb * size;
    char *bp = malloc(total);
    memset(bp, 0, total);
    return bp;
}

/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static int aligned(const void *p) { return (size_t)ALIGN_PTR(p) == (size_t)p; }

/**
 * mm_checkheap
 * @brief: check prologue/epilogue blocks, heap and segregated free list
 */
void mm_checkheap(int lineno) {
    check_printf("---------call mm_checkheap at line: %d---------\n", lineno);
    /* check prologue and epilogue blocks */
    char *pro = heap_list - WSIZE;
    if ((GET(pro) != (8 | 1 | 2)) || (GET(pro + WSIZE) != (8 | 1 | 2))) {
        printf("prologue block changed\n");
        exit(1);
    }
    char *epi = (char *)mem_heap_hi() + 1 - WSIZE;
    if (GET_SIZE(epi) != 0 || GET_ALLOC(epi) != 1) {
        printf("epilogue block changed\n");
        exit(1);
    }
    check_printf("check prologue and epilogue blocks done\n");

    /* check header and footer */
    char *iter = heap_list + 2 * WSIZE;
    check_printf("# check header and footer\n");
    int cnt = 1;
    while (iter < (char *)mem_heap_hi()) {
        size_t header_size = GET_SIZE(HDRP(iter));
        size_t footer_size = GET_SIZE(FTRP(iter));
        size_t header_alloc = GET_ALLOC(HDRP(iter));
        size_t footer_alloc = GET_ALLOC(FTRP(iter));
        size_t header_prevalloc = GET_PREV_ALLOC(HDRP(iter));
        if (header_alloc) {
            check_printf(
                "#%d (allocated) [addr] %p [header] size: %u alloc: %d "
                "prev_alloc: %d\n",
                cnt, iter, header_size, header_alloc, header_prevalloc);

        } else {
            check_printf(
                "#%d (free) [addr] %p [header] size: %u alloc: %d prev_alloc: "
                "%d\n",
                cnt, iter, header_size, header_alloc, header_prevalloc);
            check_printf(
                "          [addr] %p [footer] size: %u alloc: %d"
                "%d\n",
                cnt, iter, footer_size, footer_alloc);
        }
        /* check alignment */
        if ((size_t)iter & 0x7) {
            printf("alignment violation\n");
            exit(1);
        }
        /* check header/footer consistency */
        if ((!header_alloc && (header_size != footer_size)) ||
            (!header_alloc && footer_alloc)) {
            printf("header and footer inconsistency\n");
            exit(1);
        }
        cnt++;
        iter = NEXT_BLKP(iter);
    }

    /* check free list */
    check_printf("# check free list\n");
    for (int range = 0; range < FREE_LIST_MAX; ++range) {
        char *iter = PTR32_64(seg_free_list + range * WSIZE);
        check_printf("-----------free list range %d----------\n", range);
        int cnt = 1;
        while (iter != RELA_NULL) {
            check_printf("#%d [bp]: %p [size]: %u [pred]: %p [succ]: %p\n",
                         cnt++, iter, GET_SIZE(HDRP(iter)), PRED_PTR(iter),
                         SUCC_PTR(iter));
            /* check size */
            if (GET_SIZE(HDRP(iter)) < (1 << range) ||
                GET_SIZE(HDRP(iter)) >= (1 << (range + 1))) {
                printf("incorrect size in a free list\n");
                exit(1);
            }
            iter = SUCC_PTR(iter);
        }
    }
}

/**
 * extend_heap
 * @brief: extend heap by word * WSIZE return block ptr to the new block
 * extended if possible, coalesce previous free block
 */
static void *extend_heap(size_t word) {
    dbg_printf("enter extend_heap\n");

    size_t size = WSIZE * ALIGN_BLK(word);
    char *old;
    if ((old = mem_sbrk(size)) == (void *)-1)
        return NULL;

    dbg_printf("heap extended with %d words\n", size / WSIZE);

    PUT(HDRP(old), PACK(size, 0, GET_PREV_ALLOC(HDRP(old))));
    PUT(FTRP(old), PACK(size, 0, GET_PREV_ALLOC(HDRP(old))));
    PUT(HDRP(NEXT_BLKP(old)), PACK(0, 1, 0)); /* new epilogue header */
    char *coal = coalesce(old);
    insert(coal, GET_SIZE(HDRP(coal)));
    
    dbg_printf("leave extend_heap\n");
    return coal;
}

/**
 * insert
 * @brief: insert bp to the segregated free list based on the block's size
 */
static void insert(void *bp, size_t size) {
    dbg_printf("enter insert, inserting bp = %p\n", bp);

    int range = -1;
    size_t tmp = size;
    while (tmp && range < FREE_LIST_MAX) {
        tmp >>= 1;
        range++;
    }

    dbg_printf("size == %d, range == %d\n", size, range);

    /* j behind i, GET_SIZE(HDRP(i)) is the first one to be larger than size */
    char *i = PTR32_64(seg_free_list + range * WSIZE);
    char *j = RELA_NULL;

    while (i != RELA_NULL && size > GET_SIZE(HDRP(i))) {
        j = i;
        i = SUCC_PTR(i);
    }

    dbg_printf("i == %p, j == %p\n", i, j);

    if (i == RELA_NULL && j == RELA_NULL) { /* case 1 empty list */
        SET_PTR(seg_free_list + range * WSIZE, bp);
        SET_PTR(PRED(bp), RELA_NULL);
        SET_PTR(SUCC(bp), RELA_NULL);
    } else if (i == RELA_NULL &&
               j != RELA_NULL) { /* case 2 append to the last */
        SET_PTR(SUCC(j), bp);
        SET_PTR(SUCC(bp), RELA_NULL);
        SET_PTR(PRED(bp), j);
    } else if (i != RELA_NULL &&
               j == RELA_NULL) { /* case 3 append to the first */
        SET_PTR(seg_free_list + range * WSIZE, bp);
        SET_PTR(SUCC(bp), i);
        SET_PTR(PRED(i), bp);
        SET_PTR(PRED(bp), RELA_NULL);
    } else { /* case 4 insert in the middle */
        SET_PTR(SUCC(j), bp);
        SET_PTR(PRED(bp), j);
        SET_PTR(SUCC(bp), i);
        SET_PTR(PRED(i), bp);
    }
    dbg_printf("leave insert\n");
    return;
}

/**
 * delete
 * @brief: delete bp from segregated free list
 */
static void delete (void *bp) {
    dbg_printf("enter delete, deleting bp = %p\n", bp);

    int range = -1;
    size_t size = GET_SIZE(HDRP(bp));
    size_t tmp = size;
    while (tmp && range < FREE_LIST_MAX) {
        tmp >>= 1;
        range++;
    }
    dbg_printf("size == %d, range == %d\n", size, range);

    char *pred = PRED_PTR(bp), *succ = SUCC_PTR(bp);

    dbg_printf("pred = %p, succ = %p\n", pred, succ);
    if (succ == RELA_NULL &&
        pred == RELA_NULL) { /* case 1 only one element in the list */
        SET_PTR(seg_free_list + range * WSIZE, RELA_NULL);
    } else if (succ == RELA_NULL && pred != RELA_NULL) { /* case 2 delete last*/
        SET_PTR(SUCC(pred), RELA_NULL);
    } else if (succ != RELA_NULL &&
               pred == RELA_NULL) { /* case 3 delete first */
        SET_PTR(seg_free_list + range * WSIZE, succ);
        SET_PTR(PRED(succ), RELA_NULL);
    } else { /* case 4 delete middle */
        SET_PTR(SUCC(pred), succ);
        SET_PTR(PRED(succ), pred);
    }
    dbg_printf("leave delete\n");
    return;
}

/**
 * coalesce
 * @brief: bp must point to a free block now, coalesce previous/next block if
 * possible to create a larger free block
 */
static void *coalesce(void *bp) {
    dbg_printf("enter coalesce\n");
    size_t prev_alloc = GET_PREV_ALLOC(HDRP(bp));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    dbg_printf("prev_alloc: %d, next_alloc: %d, size: %d\n", prev_alloc,
               next_alloc, size);

    /* cases are identical to cases in CS:APP */
    if (prev_alloc && next_alloc) { /* case 1 */
        PUT(HDRP(bp), PACK(size, 0, GET_PREV_ALLOC(HDRP(bp))));
        PUT(FTRP(bp), PACK(size, 0, GET_PREV_ALLOC(HDRP(bp))));
        change_next_block(bp, 0);
    } else if (prev_alloc && !next_alloc) { /* case 2 */
        char *nextbp = NEXT_BLKP(bp);
        size += GET_SIZE(HDRP(nextbp));
        delete (nextbp);
        PUT(HDRP(bp), PACK(size, 0, GET_PREV_ALLOC(HDRP(bp))));
        PUT(FTRP(bp), PACK(size, 0, GET_PREV_ALLOC(HDRP(bp))));
        change_next_block(bp, 0);
    } else if (!prev_alloc && next_alloc) { /* case 3 */
        char *prevbp = PREV_BLKP(bp);
        size += GET_SIZE(HDRP(prevbp));
        delete (prevbp);
        bp = prevbp;
        PUT(HDRP(bp), PACK(size, 0, GET_PREV_ALLOC(HDRP(bp))));
        PUT(FTRP(bp), PACK(size, 0, GET_PREV_ALLOC(HDRP(bp))));
        change_next_block(bp, 0);
    } else { /* case 4 */
        char *nextbp = NEXT_BLKP(bp);
        char *prevbp = PREV_BLKP(bp);
        size += GET_SIZE(HDRP(prevbp)) + GET_SIZE(HDRP(nextbp));
        delete (prevbp);
        delete (nextbp);
        bp = prevbp;
        PUT(HDRP(bp), PACK(size, 0, GET_PREV_ALLOC(HDRP(bp))));
        PUT(FTRP(bp), PACK(size, 0, GET_PREV_ALLOC(HDRP(bp))));
        change_next_block(bp, 0);
    }
    dbg_printf("leave coalesce\n");
    return bp;
}

/**
 * find_fit
 * @brief: find first fit in segregated free list based on asize
 * since the list is ordered, fisrt fit is considered to be best fit
 */
static void *find_fit(size_t asize) {
    dbg_printf("enter find_fit\n");
    int range = -1;
    size_t tmp = asize;
    char *bp = NULL;
    while (tmp && range < FREE_LIST_MAX) {
        tmp >>= 1;
        range++;
    }

    dbg_printf("asize == %d, range == %d\n", asize, range);

    while (range < FREE_LIST_MAX && bp == NULL) {
        for (char *i = PTR32_64(seg_free_list + range * WSIZE); i != RELA_NULL;
             i = SUCC_PTR(i)) {
            if (GET_SIZE(HDRP(i)) >= asize) {
                bp = i;
                break;
            }
        }
        range++;
    }

    dbg_printf("leave find_fit with bp = %p\n", bp);
    /* if range == FREE_LIST_MAX then not found, return NULL */
    return bp;
}

/**
 * place
 * @brief: place payload of asize at block bp
 * 3 cases depending on the block size and payload
 */
static void *place(void *bp, size_t asize) {
    dbg_printf("enter place, placing bp = %p\n", bp);

    size_t size = GET_SIZE(HDRP(bp));
    size_t remain = size - asize;
    dbg_printf("block size: %d, asize: %d, remain: %d\n", size, asize, remain);
    
    delete (bp);              /* this block is no longer free anyway */
    if (remain < 2 * DSIZE) { /* case 1 */
        dbg_printf("no partition\n");
        PUT(HDRP(bp), PACK(size, 1, GET_PREV_ALLOC(HDRP(bp))));
        change_next_block(bp, 1);
    } else if (asize >= PLACE_ARG) { /* case 2 */
        PUT(HDRP(bp), PACK(remain, 0, GET_PREV_ALLOC(HDRP(bp))));
        PUT(FTRP(bp), PACK(remain, 0, GET_PREV_ALLOC(HDRP(bp))));
        change_next_block(bp, 0);
        char *partition = NEXT_BLKP(bp);
        dbg_printf("place it on the back, partition = %p\n", partition);
        PUT(HDRP(partition), PACK(asize, 1, GET_PREV_ALLOC(HDRP(partition))));
        change_next_block(partition, 1);
        insert(bp, remain);
        bp = partition;
    } else { /* case 3 */
        PUT(HDRP(bp), PACK(asize, 1, GET_PREV_ALLOC(HDRP(bp))));
        change_next_block(bp, 1);
        char *partition = NEXT_BLKP(bp);
        dbg_printf("partition = %p\n", partition);
        PUT(HDRP(partition), PACK(remain, 0, GET_PREV_ALLOC(HDRP(partition))));
        PUT(FTRP(partition), PACK(remain, 0, GET_PREV_ALLOC(HDRP(partition))));
        change_next_block(partition, 0);
        insert(partition, remain);
    }
    dbg_printf("leave place\n");
    return bp;
}

/**
 * change_next_block
 * @brief: change the PREV_ALLOC bit of the next block based on the status of
 * this block(alloc/free)
 */
static void change_next_block(char *bp, size_t alloc) {
    char *nextbp = NEXT_BLKP(bp);
    if (nextbp <= (char *)mem_heap_hi() + 1) {
        size_t nextsize = GET_SIZE(HDRP(nextbp));
        size_t nextalloc = GET_ALLOC(HDRP(nextbp));
        if (alloc) {
            PUT(HDRP(nextbp), PACK(nextsize, nextalloc, 0x2));
        } else {
            PUT(HDRP(nextbp), PACK(nextsize, nextalloc, 0));
        }
    }
}