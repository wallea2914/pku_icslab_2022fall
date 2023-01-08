/**
 * cache.h
 * 
 * cache相关的函数原型
*/

#include "csapp.h"

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