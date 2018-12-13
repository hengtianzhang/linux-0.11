/*
 * linux/init/main.c
 *
 * (C) 
 */

#define __LIBRARY__
#include <unistd.h>
#include <time.h>

inline _syscall0(int,fork)
inline _syscall0(int,pause)
inline _syscall1(int,setup,void *,BIOS)
inline _syscall0(int,sync)

#include <linux/tty.h>
#include <linux/sched.h>
#include <linux/head.h>
#include <asm/system.h>
#include <asm/io.h>

#include <stddef.h>
#include <stdarg.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>

#include <linux/fs.h>

static char printbuf[1024];             /*静态字符串数组,用作内核显示信息的缓存*/

extern int vsprintf(); //送格式化输出到一字符串中
extern void init(void); //函数原型，初始化
extern void blk_dev_init(void); //块设备初始化子程序
extern void chr_dev_init(void); //字符设备初始化子程序
extern void hd_init(void); //硬盘初始化
extern void floppy_init(void); //软驱初始化
extern void mem_init(long start, long end); //内存管理初始化
extern long rd_init(long mem_start, int length); //虚拟盘初始化
extern long kernel_mktime(struct tm * tm); //计算系统开机启动时间
extern long startup_time; //内核启动时间

/*由setup设置*/
#define EXT_MEM_K (*(unsigned short *)0x90002)   /*1MB以后的拓展内存(KB)*/
#define DRIVE_INFO (*(struct drive_info *)0x90080) //硬盘参数表32字节内容
#define ORIG_ROOT_DEV (*(unsigned short *) 0x901FC) //根文件系统所在设备号



/*这段宏读取CMOS实时时钟信息。outb_p和inb_p是include/asm/io.h中定义的端口输入输出宏。*/
#define CMOS_READ(addr) ({ \
outb_p(0x80|addr,0x70); \
inb_p(0x71); \
})

/*定义宏。 将BCD码转成二进制数值。BCD用半个字节表示一个10进制
 *因此一个字节代表2个10进制。(val)&15取BCD表示10进制的个位数。(val)>>4取
 *BCD表示10进制的十位数，在乘10.相加得一个字节BCD码实际二进制数值
 */
#define BCD_TO_BIN(val) ((val)=((val)&15) + ((val)>>4)*10)

/*该函数取CMOS实时钟信息作为开机时间，并保存到全局变量startup_time（秒）*/
static void time_init(void)
{
	struct tm time;
	/* CMOS访问速度慢，为减小误差，在读取了下面循环中所有数据后，若此时CMOS中
     * 秒值发生变化，则重新读取，控制内核与CMOS时间误差控制在1S
	 */
	do {
		time.tm_sec = CMOS_READ(0);
		time.tm_min = CMOS_READ(2);
		time.tm_hour = CMOS_READ(4);
		time.tm_mday = CMOS_READ(7);
		time.tm_mon = CMOS_READ(8);
		time.tm_year = CMOS_READ(9);
	} while (time.tm_sec != CMOS_READ(0));
	BCD_TO_BIN(time.tm_sec);
	BCD_TO_BIN(time.tm_min);
	BCD_TO_BIN(time.tm_hour);
	BCD_TO_BIN(time.tm_mday);
	BCD_TO_BIN(time.tm_mon);
	BCD_TO_BIN(time.tm_year);
	time.tm_mon--;
	startup_time = kernel_mktime(&time);
}



static long memory_end = 0;             /*机器具有的物理内存容量 (字节数)*/
static long buffer_memory_end = 0;      /*高速缓冲区末端地址*/
static long main_memory_start = 0;      /*主内存(将用于分页)开始的位置*/

struct drive_info { char dummy[32]; } drive_info; //用于存放硬盘参数表



int main(void)
{
	ROOT_DEV = ORIG_ROOT_DEV; //文件系统
	drive_info = DRIVE_INFO; //硬盘参数表
	memory_end = (1<<20) + (EXT_MEM_K<<10); /*内存大小=1MB + 扩展内存（k）*1024*/
	memory_end &= 0xfffff000;                /*忽略不到4kb的内存数*/
	if (memory_end > 16*1024*1024)   //超过16MB的内存按16MB计算
		memory_end = 16*1024*1024;
	if (memory_end > 12*1024*1024)       //mem > 12MB   则设置缓冲区末端=4MB
		buffer_memory_end = 4*1024*1024;
	else if (memory_end > 6*1024*1024)   //mem > 6MB    则设置缓冲区末端=2MB
		buffer_memory_end = 2*1024*1024;
	else	
		buffer_memory_end = 1*1024*1024;
	main_memory_start = buffer_memory_end;
	
#ifdef RAMDISK
	main_memory_start += rd_init(main_memory_start, RAMDISK*1024);
#endif
   /*下面开始内核的所有初始化*/
   	mem_init(main_memory_start,memory_end); //主内存初始化

}

















