#ifndef _MM_H
#define _MM_H
#define PAGE_SIZE 4096

/*取空闲页面函数，返回页面地址*/
extern unsigned long get_free_page(void);

/* 在指定线性地址处映射一内存页面。在页目录和页表中设置该
 * 页面信息。返回该页面物理地址
 */
extern unsigned long put_page(unsigned long page, unsigned long address);

/*释放物理地址addr开始的一页内存。*/
extern void free_page(unsigned long addr);
#endif
