/**
 * cache.c
 * 
 * 一个简单的全相联cache,采取近似LRU驱逐策略.访问缓存时使用读者优先策略
*/
#include "cache.h"

#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define MAX_BLOCK_NUM MAX_CACHE_SIZE / MAX_OBJECT_SIZE

struct block
{
    char obj[MAX_OBJECT_SIZE];
    char url[MAXLINE];
    int lru;
    int is_empty;

    int r_cnt;
    sem_t mutex, w;
};//缓存块

struct block cache[MAX_BLOCK_NUM];
int blk_num = 0;

/**
 * 作用: 读前管理mutex和w两个锁
 * 参数: index --处理的块的cache下标
*/

void read_pre(int index)
{
    P(&cache[index].mutex);
    cache[index].r_cnt++;
    if (cache[index].r_cnt == 1)
        P(&cache[index].w);
    V(&cache[index].mutex);
}
/**
 * 作用: 读后管理mutex和w两个锁
 * 参数: index --处理的块的cache下标
*/
void read_after(int index)
{
    P(&cache[index].mutex);
    cache[index].r_cnt--;
    if (cache[index].r_cnt == 0)
        V(&cache[index].w);
    V(&cache[index].mutex);
}

/**
 * 作用: 初始化所有cache块
*/
void cache_init()
{
    blk_num = 0;
    for(int i = 0;i < MAX_BLOCK_NUM;i++)
    {
        cache[i].lru = 0;
        cache[i].is_empty = 1;
        cache[i].r_cnt = 0;

        Sem_init(&cache[i].mutex,0,1);
        Sem_init(&cache[i].w,0,1);
    }
}

/**
 * 作用: 在cache中查找url是否缓存
 * 返回值: 缓存块下标,未缓存则返回-1
*/
int cache_find(char* url)
{
    int tmp = -1;
    for(int i = 0;i < MAX_BLOCK_NUM;i++)
    {
        //注意这里也是读,要上锁
        read_pre(i);
        if(cache[i].is_empty == 0 && strcmp(url,cache[i].url) == 0)
        {
            tmp = i;
        }
        read_after(i);
    }
    return tmp;
}

/**
 * 作用: 找到一个cache的位置来缓存一个新object
 *      要么找到一个空块,要么依照LRU策略找到一个驱逐块
 * 返回值: 找到的位置的下标
*/
int cache_find_place()
{
    int tmp_lru = -1;
    int tmp = 0;

    for(int i = 0;i < MAX_BLOCK_NUM;i++)
    {
        //这里也要读
        read_pre(i);
        if(cache[i].is_empty == 1)//找到个空块
        {
            tmp = i;
            read_after(i);
            break;
        }
        else
        {
            if(cache[i].lru > tmp_lru)
            {
                tmp_lru = cache[i].lru;
                tmp = i;
            }
            read_after(i);
        }
    }

    return tmp;
}


/**
 * 作用: 从cache中读取
 * 参数: index --块下标
 *      buf --将块内容放在buf中
*/
void cache_read(int index,char* buf)
{
    read_pre(index);
    memcpy(buf,cache[index].obj,MAX_OBJECT_SIZE);
    cache_update_lru(index);
    read_after(index);
}

/**
 * 作用: 写缓存
 * 参数: url --需要缓存的web地址
 *      obj --缓存内容
*/
void cache_write(char* url,char* obj)
{
    int index = cache_find_place();

    //这里就是写
    P(&cache[index].w);
    //上锁
    memcpy(cache[index].obj,obj,MAX_OBJECT_SIZE);
    strcpy(cache[index].url,url);
    cache[index].is_empty = 0;
    cache[index].lru = 0;//这里细想一下

    cache[index].r_cnt = 0;
    sem_init(&cache[index].mutex, 0, 1);
    sem_init(&cache[index].w, 0, 1);
    //解锁
    V(&cache[index].w);

    cache_update_lru(index);
}


/**
 * 作用: 访问cache之后更新LRU值
*/
void cache_update_lru(int index)
{
    for(int i = 0;i < MAX_BLOCK_NUM;i++)
    {
        P(&cache[i].w);

        if(i == index)
        {
            cache[i].lru = 0;
        }
        else if(cache[i].is_empty == 0)
        {
            cache[i].lru++;
        }

        V(&cache[i].w);
    }
}

