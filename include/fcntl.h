/*
 * 文件控制选项头
 *
 */
#ifndef _FCNTL_H
#define _FCNTL_H

#include <sys/types.h>

/*NOCTTY NDELAY no implement yet*/
#define O_ACCMODE    00003   //文件访问模式屏蔽吗

/*打开文件open()和控制函数fcntl()使用的文件访问模式 3选1*/
#define O_RDONLY     00
#define O_WRONLY     01
#define O_RDWR       02


/*文件创建和操作标志 open()*/
#define O_CREAT      00100    //文件不存在就创建。
#define O_EXCL       00200    //独占使用文件标志
#define O_NOCTTY     00400    //不分配控制终端
#define O_TRUNC      01000    //若文件已存在且是写操作，则长度截为0
#define O_APPEND     02000    //以添加方式打开，文件指针置为文件尾
#define O_NONBLOCK   04000    //非阻塞方式打开和操作文件
#define O_NDELAY     O_NONBLOCK   //非阻塞方式打开和操作文件

/*定义fcntl命令*/
#define F_DUPFD      0       //拷贝文件句柄为最小数值的句柄
#define F_GETFD      1       //取得句柄标志，仅一个标志 FD_CLOEXEC
#define F_SETFD      2       //设置文件句柄
#define F_GETFL      3       //取得文件状态标志和访问模式
#define F_SETFL      4       //设置文件状态标志和访问模式

/*fcntl 第三个参数*/
#define F_GETLK      5       //返回阻止锁定的flock结构
#define F_SETLK      6       //设置F_RDLCK或F_WRLCK或清楚F_UNLCK锁定
#define F_SETLKW     7       //等待设置或清楚锁定

/*用于F_GETFL F_SETFL*/
#define FD_CLOEXEC   1

/*锁定类型*/
#define F_RDLCK      0      //共享或读文件锁定
#define F_WRLCK      1      //独占或写文件锁定
#define F_UNLCK      2      //文件解锁

struct flock {
	short l_type;    //锁定类型
	short l_whence;  
	off_t l_start;
	off_t l_len;
	off_t l_pid;
};

extern int creat(const char * filename,mode_t mode);
extern int fcntl(int fildes,int cmd, ...);
extern int open(const char * filename, int flags, ...);

#endif














