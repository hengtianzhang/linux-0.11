/*
 *  this 定义了对硬件IO端口访问的嵌入式汇编宏函数
 *
 *  后两个使用jmp指令进行了时间延时
 *
 */
 
 #define outb(value,port) \
 __asm__ ("outb %%al,%%dx"::"a" (value),"d" (port))


#define inb(port) ({ \
unsigned char _v; \
__asm__ volatile ("inb %%dx,%%al":"=a" (_v):"d" (port)); \
_v; \
})

/* 带延时的硬件端口输出函数。*/
#define oub_p(value,port) \
__asm__ ("outb %%al,%%dx\n" \
			"\tjmp 1f\n" \
			"1:\tjmp 1f\n" \
			"1:"::"a" (value),"d" (port))
				

#define inb_p(port) ({ \
unsigned char _v; \
__asm__ volatile ("inb %%dx,%%al\n" \
			"\tjmp 1f\n" \
			"1:\tjmp 1f\n" \
			"1:":"=a" (_v):"d" (port)); \
_v; \
})

