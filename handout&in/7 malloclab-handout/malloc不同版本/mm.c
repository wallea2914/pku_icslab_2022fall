/*
 * mm.c
 *
 * NAME:赵伟城
 * ID:2100013165
 *
 * high-level solution description:
 * 1)已分配块:
 *      header
 *      header: 29bit  |  1bit  |  1bit  |  1bit  
 *              size     保留位  prev_alloc  alloc
 *      由于有prev_alloc,因此不需要footer
 * 2)空闲块:
 *      header + pred + succ + footer
 *      由于堆大小不超过2^32,pred & succ采用4字节大小,记录相对堆起始地址的偏移
 *      从而计算地址
 *      最小块大小为 4+4+4+4 = 16 bytes
 * 3)分离空闲链表
 *      在堆序言块之前存储 LISTNUM 个 4bytes,记录每个链表的起始地址对堆的偏移量
 *      用free_list全局变量记录第一个链表起始地址的地址
 *      其余链表起始地址可以用 free_list + i * WSIZE 找到
 * 4)链表插入使用头插法
 * 5)寻找最佳块用于分配时,近似于best fit,这里限定查找前cnt次中的最优适配
 * 6)宏基本基于教材,所以教材中的宏没详细注释
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

/*堆起始地址*/
static char *heap;

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT - 1)) & ~0x7)

#define WSIZE 4
#define DSIZE 8

#define CHUNKSIZE 1496  /*面向trace编程优化*/

/*最小块大小 header + pred + succ + footer*/
#define MINBLOCK (WSIZE + WSIZE + WSIZE + WSIZE) 
/*链表数量*/
#define LISTNUM 12

#define MAX(x, y) ((x) > (y) ? (x) : (y))

#define PACK(size, alloc) ((size) | (alloc))

/*处理header footer*/
#define GET(p) (*(unsigned int *)(p)) /*读取p处一个字*/
#define PUT(p, val) (*(unsigned int *)(p) = (val))
#define GET_SIZE(p) (GET(p) & ~0x07) /*参数p是header 或者 footer*/
#define GET_ALLOC(p) (GET(p) & 0x1)
#define GET_PREV_ALLOC(p) (GET(p) & 0x2) /*查看前面一个块是否已经分配*/

/*处理八字指针，待优化*/
#define GETPTR(p) (*(unsigned long **)(p))
#define PUTPTR(p, addr) (*(unsigned long **)(p) = (unsigned long *)(addr))

/*处理四字相对偏移量*/
#define GETPTR_32(p) (heap + (*(unsigned int *)(p)))
#define PUTPTR_32(p, addr) (*(unsigned int *)(p) = (unsigned int)((char *)(addr)-heap))

/*处理块指针*/
#define HDRP(bp) ((char *)(bp)-WSIZE) /*bp是块指针*/
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)))
#define PREV_BLKP(bp) ((char *)(bp)-GET_SIZE((char *)(bp)-DSIZE)) 
#define PREDP(bp) (bp)
#define SUCCP(bp) ((char *)(bp) + WSIZE) //注意此处改了4字节

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
    if ((heap_listp = mem_sbrk((4 + LISTNUM) * WSIZE)) == (void *)-1)
    {
        return -1;
    }

    heap = heap_listp;
    PUT(heap_listp, 0);
    // printf("heap: %p\n", heap_listp);
    heap_listp += WSIZE;

    freelist = heap_listp;
    for (int i = 0; i < LISTNUM; i++) //链表块
    {
        PUT(heap_listp, 0);
        heap_listp += WSIZE;
    }

    PUT(heap_listp, PACK(8, 1));             //序言块
    PUT(heap_listp + 1 * WSIZE, PACK(8, 1)); //序言块
    PUT(heap_listp + 2 * WSIZE, PACK(0, 3)); //结尾块 再次妙用 标3表示自己和前面的都分配了
    heap_listp += WSIZE;

    void *bp = extend_heap(CHUNKSIZE / WSIZE);
    if (bp == NULL)
        return -1;
    return 0;
}

static void *extend_heap(size_t words) //返回一个新的空闲块
{
    // printf("=================extend==============\n");
    size_t size;
    char *bp;

    size = words * WSIZE;
    size = ALIGN(size);
    if ((long)(bp = mem_sbrk(size)) == -1)
        return NULL;

    size_t alloc = GET_PREV_ALLOC(HDRP(bp)); //此时bp的header是结尾块
    if (alloc)
    {
        PUT(HDRP(bp), PACK(size, 2));
        PUT(FTRP(bp), PACK(size, 2));
    }
    else
    {
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); //新结尾块 这里新结尾块应该标1 前面是空闲块

    return coalesce(bp);
}

/**
 * 合并块，这里就要负责给空闲链表插入新块
 */
static void *coalesce(void *bp)
{
    // printf("==================coalesce===============\n");
    char *prev;
    char *next;
    size_t prev_alloc = GET_PREV_ALLOC(HDRP(bp));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    // printf("%ld %ld\n",prev_alloc,next_alloc);
    if (prev_alloc && next_alloc)
    {
        insert(get_list(size), bp);
    }
    else if (prev_alloc && (!next_alloc))
    {
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        next = NEXT_BLKP(bp);
        delete (get_list(GET_SIZE(HDRP(next))), next);
        insert(get_list(size), bp);
    }
    /*前面是空闲块时，必须用前面块的footer计算prev*/
    else if ((!prev_alloc) && next_alloc) 
    {
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        // printf("hhh\n");
        prev = PREV_BLKP(bp);
        // printf("HHHHH\n");
        delete (get_list(GET_SIZE(HDRP(prev))), prev);
        // printf("%p %p\n",prev,bp);
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

    PUT(HDRP(bp), PACK(size, 2));
    PUT(FTRP(bp), PACK(size, 2));

    next = NEXT_BLKP(bp);

    //这里合并后保证后一个块是分配了的
    PUT(HDRP(next), PACK(GET_SIZE(HDRP(next)), 1)); 
    return bp;
}

/*
 * malloc
 */
void *malloc(size_t size)
{
    // printf("====================malloc==================\n");
    size_t asize;
    size_t extensive;
    char *bp = NULL;

    if (size == 0)
        return NULL;

    asize = ALIGN(size + WSIZE); //请求size个字节，分配块得加上头尾
    if (asize <= MINBLOCK)
        asize = MINBLOCK;

    // printf("asize:%ld\n",asize);
    if ((bp = find_fit(asize)) != NULL)
    {
        place(bp, asize);
        // printf("hhhh%p %ld %ld\n",bp,size,asize);
        return bp;
    }

    extensive = MAX(asize, CHUNKSIZE);
    if ((bp = extend_heap(extensive / WSIZE)) == NULL)
    {
        return NULL;
    }
    place(bp, asize);

    // printf("pppp%p %ld %ld\n",bp,size,asize);
    // exit(0);
    return bp;
}

static void *find_fit(size_t asize)
{
    // printf("==================find================\n");
    void *tmp; //块指针
    size_t start = get_list(asize);

    size_t offset = 1 << 31;
    size_t cnt = 0;
    void *ans = NULL;

    for (size_t i = start; i < LISTNUM; i++)
    {
        //注意结束条件 ！=heap  相当于存的四字节是0
        for (tmp = GETPTR_32(freelist + 4 * i); tmp != heap; tmp = GETPTR_32(SUCCP(tmp)))
        {
            // printf("hsa\n");
            if (GET_SIZE(HDRP(tmp)) >= asize)
            {
                size_t tmp_off = GET_SIZE(HDRP(tmp)) - asize;
                cnt++;
                // printf("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\n");
                // printf("%ld %ld\n",tmp_off,offset);

                if (cnt == 4096)
                    return ans;
                if (tmp_off < offset)
                {
                    ans = tmp;
                    // printf("+++++++++++++++++++++++++++++++++++++++\n");
                    offset = tmp_off;
                    if (tmp_off == 0)
                        return ans;
                }
            }
        }
    }

    // exit(0);
    if (cnt == 0)
        return NULL;
    else
        return ans;
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
    size_t pre_alloc = GET_PREV_ALLOC(HDRP(bp));
    // printf("%ld %ld\n",total,remain);
    if (remain >= MINBLOCK)
    {
        if (alloc == 0)
            delete (get_list(total), bp);
        // printf("%p\n",GETPTR(freelist + 8 * get_list(total)));
        if (pre_alloc == 0)
            PUT(HDRP(bp), PACK(asize, 1));
        else
            PUT(HDRP(bp), PACK(asize, 3));
        // PUT(FTRP(bp), PACK(asize, 1));

        //先更新bp的size，才可以计算下一个块
        void *next = NEXT_BLKP(bp);
        // printf("%p %p\n",bp,next);
        PUT(HDRP(next), PACK(remain, 2));
        PUT(FTRP(next), PACK(remain, 2));

        coalesce(next);
        return;
    }
    else
    {
        if (pre_alloc)
            PUT(HDRP(bp), PACK(total, 3));
        else
            PUT(HDRP(bp), PACK(total, 1));

        void *next = NEXT_BLKP(bp);
        size_t next_alloc = GET_ALLOC(HDRP(next));

        if (next_alloc)
            PUT(HDRP(next), PACK(GET_SIZE(HDRP(next)), 3));
        else
            PUT(HDRP(next), PACK(GET_SIZE(HDRP(next)), 2));
        if (alloc == 0)
            delete (get_list(total), bp);
        return;
    }
}

/*
 * free
 */
void free(void *ptr)
{
    // printf("=================free====================\n");
    if (ptr == NULL)
        return;

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

    newsize = ALIGN(size + WSIZE);
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
        memcpy(newptr, oldptr, oldsize - WSIZE);
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
    /*检查序言块/结尾块*/
    char *prologue1 = heap_listp - WSIZE;
    char *prologue2 = heap_listp;
    char *epilogue = (char *)mem_heap_hi() + 1 - WSIZE;
    if (GET(prologue1) != (8 | 1) || GET(prologue2) != (8 | 1))
    {
        printf("prologue block has changed\n");
        exit(1);
    }
    if (GET_SIZE(epilogue) != 8 || GET_ALLOC(epilogue) != 1)
    {
        printf("epilogue block has changed\n");
        exit(1);
    }

    /*检查所有块*/
    char *i = heap_listp + WSIZE;
    int free_flag = 0;
    while (i != epilogue)
    {
        /*检查地址对齐*/
        if ((unsigned long)i % 8 != 0)
        {
            printf("block address %p is not aligned\n", i);
            exit(1);
        }

        /*检查header & footer*/
        char *header = HDRP(i);
        /*检查堆边界*/
        if (in_heap(header + GET_SIZE(header)) == 0)
        {
            printf("%p not in boundary", i);
            exit(1);
        }
        /*检查地址对齐*/
        if (GET_SIZE(header) % 8 != 0)
        {
            printf("%p block size is not aligned\n", i);
            exit(1);
        }
        /*检查header&footer是否匹配*/
        if (GET_ALLOC(header) == 0)
        {
            char *footer = FTRP(i);
            if (GET(header) != GET(footer))
            {
                printf("%p block's header & footer not match\n", i);
                exit(1);
            }
        }
        /*检查prev_alloc正确性*/
        if (GET_PREV_ALLOC(header) != GET_ALLOC(HDRP(PREV_BLKP(i))))
        {
            printf("%p block's prev_alloc not correct\n", i);
            exit(1);
        }
        /*检查是否有连续的空闲块*/
        if (GET_ALLOC(header) == 0)
        {
            if (free_flag == 1)
            {
                printf("%p has two consecutive free block\n", i);
                exit(1);
            }
            free_flag = 1;
        }
        else
            free_flag = 0;

        i = NEXT_BLKP(i);
    }

    /*检查空闲链表*/
    char *j;
    for (size_t k = 0; k < LISTNUM; k++)
    {
        for (j = GETPTR_32(freelist + 4 * k); j != heap; j = GETPTR_32(SUCCP(j)))
        {
            /*检查链表是否连续*/
            char *next_free = GETPTR_32(SUCCP(j));
            if (next_free != heap && j != GETPTR_32(PREDP(j)))
            {
                printf("%p free block not consistent\n",j);
                exit(1);
            }

            /*检查是否在堆边界中*/
            if (j < (char *)mem_heap_lo() || j > (char *)mem_heap_hi())
            {
                printf("%p free block not in boundary\n",j);
                exit(1);
            }

            /*检查桶分类是否正确*/
            if (get_list(GET_SIZE(HDRP(j))) != k)
            {
                printf("%p should not in %ld list",j,k);
                exit(1);
            }

            /*检查是否与空闲块匹配*/
            if(GET_ALLOC(HDRP(j)) == 1)
            {
                printf("%p free block is not free\n",j);
                exit(1);
            }
        }
    }
}

/**
 * 链表插入
 * 在 list 号链表中插入空闲块 bp
 * LIFO头插法
*/
static void insert(size_t list, void *bp) 
{
    char *tmp_list = freelist + 4 * list;
    if (GETPTR_32(tmp_list) == heap) //注意不是null  空表
    {
        PUTPTR_32(SUCCP(bp), heap); //链表最后一个块的后继为heap，即0
        PUTPTR_32(PREDP(bp), heap); //标记链表的第一个块，第一块前驱为heap，即0
        PUTPTR_32(tmp_list, bp);
    }
    else //表非空
    {
        void *tmp = GETPTR_32(tmp_list);
        PUTPTR_32(SUCCP(bp), tmp);
        PUTPTR_32(PREDP(bp), heap); // bp插在头部
        PUTPTR_32(tmp_list, bp);
        PUTPTR_32(PREDP(tmp), bp);
    }
}

/**
 * 链表删除
 * 在 list 号链表中删除空闲块 bp
*/
static void delete (size_t list, void *bp)
{
    char *tmp_list = freelist + 4 * list;
    void *pred;
    void *next;
    pred = GETPTR_32(PREDP(bp)); //块指针
    next = GETPTR_32(SUCCP(bp));

    if (pred == heap) // bp是第一个块
    {
        PUTPTR_32(tmp_list, next); //修改第一个块
    }
    else //否则修改前一个块的后继
    {
        PUTPTR_32(SUCCP(pred), next);
    }

    if (next != heap) //修改后一个块的前驱
    {
        PUTPTR_32(PREDP(next), pred);
    }
}

/**
 * 给一个已经对齐的大小，返回它应该放在第几号链表,随缘分桶
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