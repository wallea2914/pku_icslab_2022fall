/**
 * 姓名: 赵伟城
 * 学号: 2100013165
 * 
 * proxy.c
 * 一个简单的处理GET事件的缓存代理
 * 缓存驱逐使用近似LRU策略,访问缓存采用读者优先策略
 * 
*/
#include <stdio.h>
#include "csapp.h"
/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define MAX_BLOCK_NUM MAX_CACHE_SIZE / MAX_OBJECT_SIZE

/* You won't lose style points for including this lonzg line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
static const char *connect_hdr = "Connection: close\r\n";
static const char *proxy_hdr = "Proxy-Connection: close\r\n";
char *response = "HTTP/1.1 200 Connection Established\r\nConnection: close\r\n\r\n";

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

/********************
 * 处理http          *
 * ******************
*/
void doit(rio_t* client_rp,char* url);                                                     
void parse_url(char *url, char *hostname, char *port, char *filename);
void generate_new_requests(rio_t *rp, char *new, char *hostname, 
                            char *port, char *filename);
void do_connect(rio_t* client_rp,char* url);

/********************
 * 线程例程          *
 * ******************
*/
void *thread(void *vargp);
void *https_transfer(void *vargp);

/********************
 * cache function   *
 * ******************
*/
void read_pre(int index);
void read_after(int index);
void cache_init();
int cache_find(char* url);
int cache_find_place();
void cache_read(int index,char* buf);
void cache_write(char* url,char* obj);
void cache_update_lru(int index);



int main(int argc, char **argv)
{
    Signal(SIGPIPE, SIG_IGN);
    int listenfd, *connfdp;
    char hostname[MAXLINE], port[MAXLINE];
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;
    pthread_t tid;

    if (argc != 2)
    {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }

    cache_init();
    listenfd = Open_listenfd(argv[1]); // 打开监听套接字

    while (1)
    {
        clientlen = sizeof(clientaddr);
        connfdp = Malloc(sizeof(int));
        *connfdp = Accept(listenfd, (SA *)&clientaddr, &clientlen);
        if(*connfdp < 0)
        {
            fprintf(stderr,"accept error:\n");
            continue;
        }
        if(getnameinfo((SA *)&clientaddr, clientlen, 
                        hostname, MAXLINE, port, MAXLINE, 0) < 0)
        {
            fprintf(stderr,"getnameinfo error:\n");
            continue;
        }
        // printf("Accepted connection from (%s, %s)\n",hostname,port);

        Pthread_create(&tid, NULL, thread, connfdp);
    }

    Close(listenfd);
    return 0;
}


/**
 * 作用: 处理一次GET服务
 * 参数: client_rp --客户端文件描述符关联的缓冲区
 *      url --服务器url
*/
void doit(rio_t* client_rp,char* url)
{
    int client_fd = client_rp->rio_fd;
    int server_fd;
    char buf[MAXLINE];

    char hostname[MAXLINE], port[MAXLINE], filename[MAXLINE];
    char new_requests[MAXLINE];

    rio_t server_rio;

    parse_url(url, hostname, port, filename); 

    //=========================读cache=====================
    char tmp_url[2 * MAXLINE];
    sprintf(tmp_url, "%s%s", hostname, filename);
    int readblk_index = cache_find(tmp_url);
    if (readblk_index != -1) // 可以直接读
    {
        char tmp_buf[MAX_OBJECT_SIZE];
        cache_read(readblk_index, tmp_buf);
        Rio_writen(client_fd,tmp_buf,MAX_OBJECT_SIZE);
        return;
    }

    //============================连接到服务器==================
    generate_new_requests(client_rp, new_requests, 
                            hostname, port, filename);
    server_fd = open_clientfd(hostname, port);

    if (server_fd < 0)
    {
        return;
    }

    Rio_readinitb(&server_rio, server_fd);
    Rio_writen(server_fd, new_requests, MAXLINE);

    char tmpbuf[MAX_OBJECT_SIZE];
    memset(tmpbuf, 0, sizeof(tmpbuf));
    int size = 0;
    size_t len = 0;
    while ((len = Rio_readlineb(&server_rio, buf, MAXLINE)) > 0)
    {
        size += len;
        if (size < MAX_OBJECT_SIZE)
        {
            memcpy(tmpbuf + size - len, buf, len);
        }
        Rio_writen(client_fd, buf, len); // 写到客户端
    }

    //======================================cache写
    if (size < MAX_OBJECT_SIZE) // 缓存新的
    {
        cache_write(tmp_url,tmpbuf);
    }
    //==============================cache=========================
    Close(server_fd);
}


/**
 * 作用: 解析来自客户端的uri/url
 * 参数: uri --uri/url字符串
 *      hostname --将解析得到的主机名写入hostname
 *      port --将解析得到的端口写入port,默认为:"80"
 *      filename --将解析得到的后缀写入filename
*/
void parse_url(char *url, char *hostname, char *port, char *filename)
{
    int tmp_port = 80;
    strcpy(port, "80");
    char *pos = strstr(url, "//");

    pos = pos != NULL ? pos + 2 : url;

    char *pos2 = strstr(pos, ":");
    if (pos2 != NULL)
    {
        *pos2 = '\0';
        sscanf(pos, "%s", hostname);
        sscanf(pos2 + 1, "%d%s", &tmp_port, filename);
        sprintf(port, "%d", tmp_port);
    }
    else
    {
        pos2 = strstr(pos, "/");
        if (pos2 != NULL)
        {
            *pos2 = '\0';
            sscanf(pos, "%s", hostname);
            *pos2 = '/';
            sscanf(pos2, "%s", filename);
        }
        else
        {
            sscanf(pos, "%s", hostname);

        }
    }
    return;
}


/**
 * 作用: 生成新的请求,包括请求行和请求头,并放入new
 * 参数: rp --从rp继续读取剩下的请求头
 *      new --dest
 *      hostname,port,filename --src
*/
void generate_new_requests(rio_t *rp, char *new, 
                            char *hostname, char *port, char *filename)
{
    char buf[MAXLINE], request[MAXLINE], host[MAXLINE], other[MAXLINE];

    sprintf(request, "GET %s HTTP/1.0\r\n", filename); // 此时filename就是uri
    sprintf(host, "Host: %s\r\n", hostname);

    while (Rio_readlineb(rp, buf, MAXLINE) > 0)
    {
        if (strcmp(buf, "\r\n") == 0) // 最后的空行
            break;

        // 忽略代理相关的header
        if (strstr(buf, "Host") != NULL)
        {
            strcpy(host, buf);
            continue;
        }

        if (strstr(buf, "User-Agent") != NULL)
            continue;
        if (strstr(buf, "Connection") != NULL)
            continue;
        if (strstr(buf, "Proxy-Connection") != NULL)
            continue;

        strcat(other, buf);
        // sprintf(request,"%s%s",request,buf);
    }

    sprintf(new, "%s%s%s%s%s%s%s",
            request,
            host,
            connect_hdr,
            proxy_hdr,
            user_agent_hdr,
            other,
            "\r\n");
}

/**
 * 作用: 处理CONNECT事件(https)
 * 参数: client_rp --客户端文件描述符关联的缓冲区
 *      url --服务器url
*/
void do_connect(rio_t* client_rp,char* url)
{
    int client_fd = client_rp->rio_fd;
    int server_fd; 
    char buf[MAXLINE];
    char hostname[MAXLINE], port[MAXLINE], filename[MAXLINE];
    rio_t server_rio;

    pthread_t tid1,tid2;
    int* client,*server;

    parse_url(url, hostname, port, filename); 

    server_fd = open_clientfd(hostname,port);
    if(server_fd < 0)
        return;
    Rio_readinitb(&server_rio,server_fd);
    Rio_writen(client_fd,response,strlen(response));

    int n = Rio_readlineb(client_rp,buf,MAXLINE);
    while(strcmp(buf,"\r\n") != 0)//把client的报头读完
    {
        if(n == -1)
        {
            return;
        }
        n = Rio_readlineb(client_rp,buf,MAXLINE);
    }
    

    //下面开始转发
    client = Malloc(2 * sizeof(int));
    server = Malloc(2 * sizeof(int));
    client[0] = client_fd;
    client[1] = server_fd;
    server[0] = server_fd;
    server[1] = client_fd;

    Pthread_create(&tid1, NULL, https_transfer, client);
    Pthread_create(&tid2, NULL, https_transfer, server);
    Pthread_join(tid1,NULL);
    Pthread_join(tid2,NULL);

    Close(server_fd);
}

/**
 * 作用: 线程例程,处理一个客户端的事件
 * 参数: vargp --一个指针,存放的是客户端文件描述符
*/
void *thread(void *vargp)
{
    int client_fd = *((int *)vargp);
    Pthread_detach(Pthread_self());
    Free(vargp);

    char buf[MAXLINE];
    char method[MAXLINE], url[MAXLINE], version[MAXLINE];

    rio_t client_rio;

    Rio_readinitb(&client_rio, client_fd);

    if (Rio_readlineb(&client_rio, buf, MAXLINE) <= 0)
    {
        Close(client_fd);
        return NULL;
    }
    if(sscanf(buf, "%s %s %s", method, url, version) != 3)
    {
        Close(client_fd);
        return NULL;
    }

    if (strcmp(method, "GET") == 0)
    {
        doit(&client_rio,url);
        Close(client_fd);
        return NULL;
    }
    else if(strcmp(method, "CONNECT") == 0)
    {
        do_connect(&client_rio,url);
        Close(client_fd);
        return NULL;
    }
    else
    {
        Close(client_fd);
        return NULL;
    }
}

/**
 * 作用: 处理https请求后的客户端和服务器之间的数据转发
 * 参数: vargp --一个指针,指向一个存有两个int数据的空间
 *              第一个int是读文件描述符
 *              第二个int是写文件描述符
*/
void *https_transfer(void *vargp)
{
    int from_fd = ((int*)vargp)[0];
    int to_fd = ((int*)vargp)[1];
    char buf[MAXLINE];
    int n;
    Free(vargp);

    while((n = read(from_fd,buf,MAXLINE)))
    {
        if(n == -1)
        {
            return NULL;
        }
        Rio_writen(to_fd,buf,n);
    }
    return NULL;
}


/***********************
 * cache function      *
 * *********************
*/

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

