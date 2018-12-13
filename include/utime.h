/*
 * 文件访问和修改时间结构
 */

 #ifndef _UTIME_H
 #define _UTIME_H

#include <sys/types.h>

struct utimbuf {
	time_t actime; //文件访问时间.秒计 1970.1.1 0:0:0
	time_t modtime; //文件修改时间
};

extern int utime(const char *filename, struct utimbuf *times);

 #endif