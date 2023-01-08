//姓名：赵伟城
//学号：2100013165

/*
*csim.c  
*功能:  模拟cache，读取指令操作，判断hit/miss，并按照LRU策略驱逐。
*       
*命令行参数：csim [-hv] -s <s> -E <E> -b <b> -t <tracefile>
*-h：使用信息
*-v：打印详细hit/miss信息
*-s：组索引位数
*-E：每组行数
*-b：块偏移位数
*-t：测试文件
*
*输出：miss/hit/eviction总数
*/
#include <malloc.h>
#include <stdio.h>
#include <stdbool.h>
#include <getopt.h>
#include <string.h>
#include <stdlib.h>
#include "cachelab.h"


//行
struct line
{
    /* data */
    bool is_valid;
    unsigned long tag;
    void *block;
    int last_use_time;//这一行上次使用的时间
};

//组
struct set
{
    struct line *all;
};

//cache
struct set *cache;
// cache  组：cache[i]  行：cache[i].all[j]  块：cache[i].all[j].block

//cache参数
int s, E, b;
int t, S, B, C;

//用于LRU替换，记录当前时间
int time = 0;

//记录结果
int hits = 0;
int misses = 0;
int evictions = 0;

//用于读取文件和指令
FILE *fp;
char operation[22];//一条指令

//函数原型
void read_options(int argc, char *argv[]);
void init_cache();
void delete_cache();
void call_cache(unsigned long address);
bool is_full(unsigned long set_index);
void LRU_change(unsigned long set_index, unsigned long tag);
void sim_op();
void get_input();

/*
*read_options
*作用：读命令行参数，并初始化cache的几个参数
*参数：
    argc：命令行参数个数
    argv：命令行参数的字符串数组
*实现：借助库函数 getopt 一个个读取，并用 atoi 转化为int类型
*/
void read_options(int argc, char *argv[])
{
    int tmp;
    while ((tmp = getopt(argc, argv, "hvs:E:b:t:")) != -1)
    {
        switch (tmp)
        {
        case 'h':
            exit(0);
        case 'v':
            break;
        case 's':
            s = atoi(optarg);
            S = 1 << s;
            break;
        case 'E':
            E = atoi(optarg);
            break;
        case 'b':
            b = atoi(optarg);
            break;
        case 't':
            fp = fopen(optarg, "r");
            if (!fp)
            {
                exit(-1);
            }
            break;
        default:
            break;
        }
    }
    t = 64 - s - b;
    C = S * E * B;
}

/*
*init_cache
*作用：初始化cache空间，包括分配内存以及有效位赋0
*/
void init_cache()
{
    cache = malloc(S * sizeof(struct set));
    for (int i = 0; i < S; i++)
    {
        cache[i].all = malloc(E * sizeof(struct line));
        for (int j = 0; j < E; j++)
        {
            cache[i].all[j].is_valid = 0;
            cache[i].all[j].block = malloc(B);
            cache[i].all[j].last_use_time = 0;
        }
    }
}

/*
*delete_cache
*作用：释放cache空间
*/
void delete_cache()
{
    for (int i = 0; i < S; i++)
    {
        for (int j = 0; j < E; j++)
        {
            free(cache[i].all[j].block);
        }
        free(cache[i].all);
    }
    free(cache);
}

/*
*call_cache
*作用：
*   模拟cpu将地址请求传送给cache后，cache的行为
*   若命中，则hits++，否则misses++，并按规则选择行替换
*参数：
*   address：地址请求     
*/
void call_cache(unsigned long address)
{
    //time++;
    unsigned long set_index = address << t >> (t + b);
    unsigned long tag = address >> (s + b);

    //行匹配
    bool flag = 0;
    for (int i = 0; i < E; i++)
    {
        //命中
        if (cache[set_index].all[i].is_valid == 1 && cache[set_index].all[i].tag == tag)
        {
            hits++;
            //printf("%s",operation);
            //printf("   hit\n");
            flag = 1;
            cache[set_index].all[i].last_use_time = time;
            break;
        }
    }
    //没命中
    if (!flag)
    {
        misses++;
        //printf("%s",operation);
        //printf("   miss\n");
        if (is_full(set_index))//若这组满了，就要驱逐
        {
            LRU_change(set_index, tag);
            evictions++;
            //printf("%s",operation);
            //printf("   evit\n");
        }
        else
        {
            for (int i = 0; i < E; i++)
            {
                //找到空行，并放进去
                if (cache[set_index].all[i].is_valid == 0)
                {
                    cache[set_index].all[i].is_valid = 1;
                    cache[set_index].all[i].last_use_time = time;
                    cache[set_index].all[i].tag = tag;
                    break;
                }
            }
        }
    }
}

/*
*is_full
*作用：判断一个组是否所有行都占满了，用于之后的LRU替换
*参数：
*   set_index：组索引编号
*返回值：
*   true：满，需要LRU替换
*   false：没满
*/
bool is_full(unsigned long set_index) 
{
    for (int i = 0; i < E; i++)
    {
        if (cache[set_index].all[i].is_valid == 0)
            return false;
    }
    return true;
}

/*
*作用：将新的一行tag放入指定组中，并用LRU策略驱逐掉旧的一行
*参数：
*   set_index：组索引
*   tag：需要放入的新行的tag
*/
void LRU_change(unsigned long set_index, unsigned long tag)
{
    //找到替换行
    int line_index = 0;
    int last_time = 9999999;
    for (int i = 0; i < E; i++)
    {
        if (cache[set_index].all[i].last_use_time < last_time)
        {
            line_index = i;
            last_time = cache[set_index].all[i].last_use_time;
        }
    }
    //替换
    cache[set_index].all[line_index].last_use_time = time;
    cache[set_index].all[line_index].tag = tag;
}

/*
*sim_op
*作用：处理指令operation（全局变量）
*/
void sim_op()
{
    time++;
    char op;
    unsigned long address;
    int size;

    //需要空格开头的，即只处理L S M
    int cnt = sscanf(operation, " %c %lx,%d", &op, &address, &size);
    if (cnt == 0)
        return;
    switch (op)
    {
    case 'L'://L 请求一次cache
        call_cache(address);
        break;
    case 'S'://S 请求一次cache
        call_cache(address);
        break;
    case 'M'://M 请求两次cache
        call_cache(address);
        call_cache(address);
        break;
    default:
        break;
    }
}

/*
*get_input
*作用：将trace文件分成一条条指令，再调用sim_op处理每条指令
*/
void get_input() //读trace文件
{
    while (fgets(operation, 22, fp))
    {
        if (operation[strlen(operation) - 1] == '\n')
        {
            operation[strlen(operation) - 1] = '\0';
        }
        sim_op();
    }
}

int main(int argc, char *argv[])
{
    
    read_options(argc,argv);
    init_cache();
    get_input();
    delete_cache();
    //printf("%d %d %d\n",s,E,b);
    printSummary(hits, misses, evictions);
    return 0;
}