/*
 * linux/init/main.c
 *
 * (C) 
 */

#define __LIBRARY__
#include <linux/head.h>
#include <asm/io.h>

static char printbuf[1024];             /*静态字符串数组,用作内核显示信息的缓存*/

extern void mem_init(long mem_start, long end);  /*内存管理初始化*/

#define EXT_MEM_K (*(unsigned short *)0x90002)   /*1MB以后的拓展内存(KB)*/


/*这段宏读取CMOS实时时钟信息。outb_p和inb_p是include/asm/io.h中定义的端口输入输出宏。*/
#define CMOS_READ(addr) ({ \
outb_p(0x80|addr,0x70); \
inb_p(0x71); \
})

static long memory_end = 0;             /*机器具有的物理内存容量 (字节数)*/
static long buffer_memory_end = 0;      /*高速缓冲区末端地址*/
static long main_memory_start = 0;      /*主内存(将用于分页)开始的位置*/

/*定义宏。 将BCD码转成二进制数值。BCD用半个字节表示一个10进制
 *因此一个字节代表2个10进制。(val)&15取BCD表示10进制的个位数。(val)>>4取
 *BCD表示10进制的十位数，在乘10.相加得一个字节BCD码实际二进制数值
 */
#define BCD_TO_BIN(val) ((val)=((val)&15) + ((val)>>4)*10)


int main(void)
{
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

















