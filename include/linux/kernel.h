/*
 * 定义了一些常用函数原型
 */
extern inline void  check_data32(int value, int pos)
{
__asm__ __volatile__(
"shl $4, %%ebx\n\t"
"addl $0xb8000, %%ebx\n\t"
"movl $0xf0000000, %%eax\n\t"
"movb $28, %%cl\n"
"1:\n\t"
"movl %0, %%edx\n\t"
"andl %%eax, %%edx\n\t"
"shr %%cl, %%edx\n\t"
"add $0x30, %%dx\n\t"
"cmp $0x3a, %%dx\n\t"
"jb 2f\n\t"
"add $0x07, %%dx\n"
"2:\n\t"
"add $0x0c00, %%dx\n\t"
"movw %%dx, (%%ebx)\n\t"
"sub $0x04, %%cl\n\t"
"shr $0x04, %%eax\n\t"
"add $0x02, %%ebx\n\t"
"cmpl $0x0, %%eax\n\t"
"jnz 1b\n"
::"m" (value), "b" (pos));
}

/*验证给定地址开始的内存块是否超限*/
void verify_area(void * addr, int count);

/*显示内核出错信息，然后死循环*/
volatile void panic(const char * str);

/*标准打印*/
int printf(const char * fmt, ...);

/*内核专用打印*/
int printk(const char * fmt, ...);

/*往tty上写指定长度字符串*/
int tty_write(unsigned ch, char * buf, int count);

/*通用内核内存分配函数*/
void *malloc(unsigned int size);

/*释放指定对象占用的内存*/
void free_s(void * obj, int size);

#define free(x) free_s((x), 0)

#define suser() (current->euid == 0)

