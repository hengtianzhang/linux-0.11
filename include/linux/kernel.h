/*
 * 定义了一些常用函数原型
 */
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

