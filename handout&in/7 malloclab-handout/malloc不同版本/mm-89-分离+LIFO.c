/*
 * mm.c
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
#define DEBUG
#ifdef DEBUG
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

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT - 1)) & ~0x7)

#define WSIZE 4
#define DSIZE 8
#define CHUNKSIZE 2048
#define MINBLOCK (WSIZE + DSIZE + DSIZE + WSIZE) /*最小块大小 header + pred + succ + footer*/
#define LISTNUM 12

#define MAX(x, y) ((x) > (y) ? (x) : (y))

#define PACK(size, alloc) ((size) | (alloc))

/*处理header footer*/
#define GET(p) (*(unsigned int *)(p)) /*读取p处一个字*/
#define PUT(p, val) (*(unsigned int *)(p) = (val))
#define GET_SIZE(p) (GET(p) & ~0x07) /*参数p是header 或者 footer*/
#define GET_ALLOC(p) (GET(p) & 0x1)

/*处理八字指针，待优化*/
#define GETPTR(p) (*(unsigned long **)(p))
#define PUTPTR(p, addr) (*(unsigned long **)(p) = (unsigned long *)(addr))

/*处理块指针*/
#define HDRP(bp) ((char *)(bp)-WSIZE) /*bp是块指针*/
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)))
#define PREV_BLKP(bp) ((char *)(bp)-GET_SIZE((char *)(bp)-DSIZE))
#define PREDP(bp) (bp)
#define SUCCP(bp) ((char *)(bp) + DSIZE)

static char *heap_listp = NULL; /*序言块指针*/
static char *freelist = NULL;   /*空闲链表*/

/*堆块操作*/
static void *extend_heap(size_t words);
static void place(void *bp, size_t asize);
static void *find_fit(size_t asize);
static void *coalesce(void *bp);

/*链表操作*/
static void insert(size_t list, void *bp);
static void delete (size_t list, void *bp);

static size_t get_list(size_t asize);

/*
 * Initialize: return -1 on error, 0 on success.
 */
int mm_init(void)
{
    // printf("======================init=======================\n");
    if ((heap_listp = mem_sbrk((4 + 2 * LISTNUM) * WSIZE)) == (void *)-1)
    {
        return -1;
    }

    PUT(heap_listp, 0);
    // printf("heap: %p\n",heap_listp);
    heap_listp += WSIZE;

    freelist = heap_listp;
    for (int i = 0; i < LISTNUM; i++) //链表块
    {
        PUT(heap_listp, 0);
        PUT(heap_listp + 1 * WSIZE, 0);
        heap_listp += 2 * WSIZE;
    }

    PUT(heap_listp, PACK(8, 1));             //序言块
    PUT(heap_listp + 1 * WSIZE, PACK(8, 1)); //序言块
    PUT(heap_listp + 2 * WSIZE, PACK(0, 1)); //结尾块
    heap_listp += (1 * WSIZE);

    if (extend_heap(CHUNKSIZE / WSIZE) == NULL)
        return -1;

    // printf("freelist: %p\n",freelist);
    // printf("heap_listp: %p\n",heap_listp);

    return 0;
}

static void *extend_heap(size_t words) //返回一个新的空闲块
{
    size_t size;
    char *bp;

    size = words * WSIZE;
    size = ALIGN(size);
    if ((long)(bp = mem_sbrk(size)) == -1)
        return NULL;

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); //新结尾块

    return coalesce(bp);
}

/**
 * 合并块，这里就要负责给空闲链表插入新块
 */
static void *coalesce(void *bp)
{
    char *prev;
    char *next;
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    if (prev_alloc && next_alloc)
    {
        insert(get_list(size), bp);
        return bp;
    }
    else if (prev_alloc && (!next_alloc))
    {
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        next = NEXT_BLKP(bp);
        delete (get_list(GET_SIZE(HDRP(next))), next);
        insert(get_list(size), bp);
    }
    else if ((!prev_alloc) && next_alloc)
    {
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        prev = PREV_BLKP(bp);
        delete (get_list(GET_SIZE(HDRP(prev))), prev);
        //printf("%p %p\n",prev,bp);
        bp = prev;
        insert(get_list(size), bp);
    }
    else
    {
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(FTRP(NEXT_BLKP(bp)));
        prev = PREV_BLKP(bp);
        next = NEXT_BLKP(bp);
        bp = prev;
        delete (get_list(GET_SIZE(HDRP(prev))), prev);
        delete (get_list(GET_SIZE(HDRP(next))), next);
        insert(get_list(size), bp);
    }

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    return bp;
}

/*
 * malloc
 */
void *malloc(size_t size)
{
     //printf("====================malloc==================\n");
    size_t asize;
    size_t extensive;
    char *bp = NULL;

    if (size == 0)
        return NULL;

    asize = ALIGN(size + 2 * WSIZE); //请求size个字节，分配块得加上头尾
    if (asize <= MINBLOCK)
        asize = MINBLOCK;

    // printf("asize:%ld\n",asize);
    if ((bp = find_fit(asize)) != NULL)
    {
        place(bp, asize);
         //printf("hhhh%p %ld %ld\n",bp,size,asize);
        return bp;
    }

    extensive = MAX(asize, CHUNKSIZE);
    if ((bp = extend_heap(extensive / WSIZE)) == NULL)
    {
        return NULL;
    }
    place(bp, asize);

    // printf("pppp%p %ld %ld\n",bp,size,asize);
    return bp;
}

static void *find_fit(size_t asize)
{
    // printf("==================find================\n");
    void *tmp; //块指针
    size_t start = get_list(asize);
    for (size_t i = start; i < 12; i++)
    {
        for (tmp = GETPTR(freelist + 8 * i); tmp != NULL; tmp = GETPTR(SUCCP(tmp)))
        {
            // printf("hsa\n");
            if (GET_SIZE(HDRP(tmp)) >= asize)
            {
                return tmp;
            }
        }
    }

    return NULL;
}

/**
在bp处分配asize的块
bp可能已经分配也有可能空闲
若空闲，在空闲链表里删bp，增next
若分配，增next
*/
static void place(void *bp, size_t asize)
{
    // printf("=====================place=============\n");
    size_t total = GET_SIZE(HDRP(bp));
    size_t remain = total - asize;
    size_t alloc = GET_ALLOC(HDRP(bp));
     //printf("%ld %ld\n",total,remain);
    if (remain >= MINBLOCK)
    {
        if (alloc == 0)
            delete (get_list(total),bp);
        //printf("%p\n",GETPTR(freelist + 8 * get_list(total)));
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));

        //先更新bp的size，才可以计算下一个块
        void *next = NEXT_BLKP(bp);
        //printf("%p %p\n",bp,next);
        PUT(HDRP(next), PACK(remain, 0));
        PUT(FTRP(next), PACK(remain, 0));

        insert(get_list(remain),next);
        //printf("%p\n",GETPTR(freelist + 8 * get_list(remain)));
        return;
    }
    else
    {
        PUT(HDRP(bp), PACK(total, 1));
        PUT(FTRP(bp), PACK(total, 1));
        if (alloc == 0)
            delete (get_list(total),bp);
        return;
    }
}

/*
 * free
 */
void free(void *ptr)
{
    // printf("=================free====================\n");
    size_t size;
    if (ptr == NULL)
        return;

    size = GET_SIZE(HDRP(ptr));
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    coalesce(ptr);
    // printf("%p\n",ptr);
}

/*
 * realloc - you may want to look at mm-naive.c
 */
void *realloc(void *oldptr, size_t size)
{
    // printf("====================realloc==================\n");
    size_t newsize, oldsize, extensive;
    void *newptr;
    if (oldptr == NULL)
    {
        return malloc(size);
    }
    if (size == 0)
    {
        free(oldptr);
        return NULL;
    }

    newsize = ALIGN(size + 2 * WSIZE);
    if (newsize < MINBLOCK)
        newsize = MINBLOCK;
    oldsize = GET_SIZE(HDRP(oldptr));

    if (oldsize >= newsize) //缩小
    {

        place(oldptr, newsize);
        return oldptr;
    }
    else //扩大
    {
        //
        // printf("wwwwefffsd\n");
        if ((newptr = find_fit(newsize)) == NULL)
        {
            extensive = MAX(newsize, CHUNKSIZE);
            if ((newptr = extend_heap(extensive / WSIZE)) == NULL)
            {
                return NULL;
            }
        }
        place(newptr, newsize);
        memcpy(newptr, oldptr, oldsize - 2 * WSIZE);
        free(oldptr);
        return newptr;
    }
    return NULL;
}

/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 */
void *calloc(size_t nmemb, size_t size)
{
    size_t total = nmemb * size;
    void *bp = malloc(total);
    memset(bp, 0, total);
    return bp;
}

/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static int in_heap(const void *p)
{
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static int aligned(const void *p)
{
    return (size_t)ALIGN(p) == (size_t)p;
}

/*
 * mm_checkheap
 */
void mm_checkheap(int lineno)
{
}

static void insert(size_t list, void *bp) // LIFO头插法
{
    char *tmp_list = freelist + 8 * list;
    if (GETPTR(tmp_list) == NULL)
    {
        PUTPTR(SUCCP(bp), NULL);
        PUTPTR(PREDP(bp), tmp_list);
        PUTPTR(tmp_list, bp);
    }
    else
    {
        void *tmp = GETPTR(tmp_list);
        PUTPTR(SUCCP(bp), tmp);
        PUTPTR(PREDP(bp), tmp_list);
        PUTPTR(tmp_list, bp);
        PUTPTR(PREDP(tmp), bp);
    }
}

static void delete (size_t list, void *bp)
{
    char *tmp_list = freelist + 8 * list;
    void *pred;
    void *next;
    pred = GETPTR(PREDP(bp)); //块指针
    next = GETPTR(SUCCP(bp));

    if (pred == tmp_list) // bp是第一个块
    {
        PUTPTR(tmp_list, next); //修改第一个块
    }
    else //否则修改前一个块的后继
    {
        PUTPTR(SUCCP(pred), next);
    }

    if (next != NULL) //修改后一个块的前驱
    {
        PUTPTR(PREDP(next), pred);
    }
}

/**
 * 给一个已经对齐的大小，返回它应该放在第几个链表
 */
static size_t get_list(size_t asize)
{
    if (asize <= 24)
    {
        return 0;
    }
    else if (asize <= 48)
    {
        return 1;
    }
    else if (asize <= 72)
    {
        return 2;
    }
    else if (asize <= 96)
    {
        return 3;
    }
    else if (asize <= 120)
    {
        return 4;
    }
    else if (asize <= 240)
    {
        return 5;
    }
    else if (asize <= 480)
    {
        return 6;
    }
    else if (asize <= 960)
    {
        return 7;
    }
    else if (asize <= 1920)
    {
        return 8;
    }
    else if (asize <= 3840)
    {
        return 9;
    }
    else if (asize <= 7680)
    {
        return 10;
    }
    else
    {
        return 11;
    }
}