/*
 * 内核模式不能使用printf。fs專用於用戶模式
 * 調用tty_write信息取自fs寄存器 而内核信息只想内核數據段
 * 故需要使用ds 而臨時使用fs
 */
#if 1
void  check_data32(int value, int pos)
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

#endif
#include <stdarg.h>
#include <stddef.h>

#include <linux/kernel.h>

static char buf[1024]; //顯示用臨時緩衝區

extern int vsprintf(char *buf, const char * fmt, va_list args);

int printk(const char *fmt, ...)
{
	va_list args;
	int i;
	va_start(args, fmt);
	i = vsprintf(buf, fmt, args);
	va_end(args);
	__asm__("push %%fs\n\t"
			"push %%ds\n\t"
			"pop %%fs\n\t"
			"pushl %0\n\t"
			"pushl $buf\n\t"
			"pushl $0\n\t"
			"call tty_write\n\t"
			"addl $8, %%esp\n\t"
			"popl %0\n\t"
			"pop %%fs"
			::"r" (i):);
	return i;
}

