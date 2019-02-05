/*
 *
 */
#ifndef _STRING_H
#define _STRING_H

#ifndef NULL
#define NULL ((void *)0)
#endif

#ifndef _SIZE_T
#define _SIZE_T
typedef unsigned int size_t;
#endif

extern char * strerror(int errno);

extern inline char * strcpy(char * dest,const char *src);
extern inline char * strcat(char * dest,const char * src);
extern inline int strcmp(const char * cs,const char * ct);
extern inline int strspn(const char * cs, const char * ct);
extern inline int strcspn(const char * cs, const char * ct);
extern inline char * strpbrk(const char * cs,const char * ct);
extern inline char * strstr(const char * cs,const char * ct);
extern inline int strlen(const char * s);
extern char * ___strtok;

extern inline char * strtok(char * s,const char * ct);

/*
 * Changes by falcon<zhangjinw@gmail.com>, the original return value is static
 * inline ... it can not be called by other functions in another files.
 */

extern inline void * memcpy(void * dest,const void * src, int n);
extern inline void * memmove(void * dest,const void * src, int n);
extern inline void * memchr(const void * cs,char c,int count);
#endif

