/*
 * 注：主設備號  類型 説明             請求項操作函數
 *         0      無     無       NULL
 *         1   塊/字符    ram/内存(虛擬盤)    do_rd_request
 *         2   塊      fd/軟驅設備     do_fd_request
 *         3   塊     hd/硬盤       do_hd_request
 *         4   字符    ttyx設備    NULL
 *         5   字符    tty       NULL
 *         6   字符    lp打印機     NULL
 * 
 * 塊設備的邏輯塊(1024字節)為單位。
 *
 */
#include <errno.h>
#include <linux/sched.h>
#include <linux/kernel.h>
#include <asm/system.h>

#include "blk.h"
/*
 * The request-struct contains all necessary data
 * to load a nr of sectors into memory
 */
struct request request[NR_REQUEST];

/*
 * used to wait on when there are no free requests
 * 当请求没有空闲时 临时进程的等待处
 */
struct task_struct *wait_for_request = NULL;

/* blk_dev_struct is:
 *	do_request-address  对应主设备号的请求处理指针
 *	next-request 该设备的下一个请求
 */
struct blk_dev_struct blk_dev[NR_BLK_DEV] = {
	{ NULL, NULL }, /* no_dev */
	{ NULL, NULL }, /* dev mem */
	{ NULL, NULL }, /* dev fd */
	{ NULL, NULL }, /* dev hd */
	{ NULL, NULL }, /* dev ttyx */
	{ NULL, NULL }, /* dev tty */
	{ NULL, NULL } /* dev lp */
};

/*锁定指定缓冲块*/
/*如果被其他任务锁定，则自己睡眠，直至被执行解锁缓冲区*/
static inline void lock_buffer(struct buffer_head *bh)
{
	cli();
	while (bh->b_lock)
		sleep_on(&bh->b_wait);
	bh->b_lock = 1;
	sti();
}

//释放锁定的缓冲区
static inline void unlock_buffer(struct buffer_head *bh)
{
	if (!bh->b_lock)
		printk("ll_rw_block.c: buffer not locked\n\r");
	bh->b_lock = 0;
	wake_up(&bh->b_wait);
}

/*向链表中加入一个请求项*/
static void add_request(struct blk_dev_struct *dev, struct request *req)
{
	struct request *tmp;
	//首先对参数提供请求项的指针和标志作初始化。置空请求项中下一项
	req->next = NULL;
	cli(); //关
	if (req->bh)
		req->bh->b_dirt = 0; //清缓冲区'脏'标志
	//查看设备当前是否有请求项，即是否忙。如为空则本次是第一个请求
	if (!(tmp = dev->current_request)) {
		dev->current_request = req;
		sti();
		(dev->request_fn)(); //执行请求
		return;
	}
	//不为空，则使用电梯算法搜索最佳插入位置。
	for (; tmp->next; tmp = tmp->next)
		if ((IN_ORDER(tmp, req) || !IN_ORDER(tmp, tmp->next)) &&
		    IN_ORDER(req, tmp->next))
			break;
	req->next = tmp->next;
	tmp->next = req;
	sti();
}

//创建请求项并插入请求队列
static void make_request(int major, int rw, struct buffer_head *bh)
{
	struct request *req;
	int rw_ahead;
	if ((rw_ahead = (rw == READA || rw == WRITEA))) {
		if (bh->b_lock)
			return;
		if (rw == READA)
			rw = READ;
		else
			rw = WRITE;
	}
	if (rw != READ && rw != WRITE)
		panic("Bad block dev command, must be R/W/RA/WA");
	lock_buffer(bh);
	if ((rw == WRITE && !bh->b_dirt) || (rw == READ && bh->b_uptodate)) {
		unlock_buffer(bh);
		return;
	}
repeat:
	/*不能全是写，需要为读留一些空间。读是优先的*/
	if (rw == READ)
		req = request + NR_REQUEST; //读请求，将指针指向队尾
	else
		req = request + ((NR_REQUEST * 2) / 3); //写指向指针队列2/3处
	/*搜索空请求项*/
	while (--req >= request)
		if (req->dev < 0)
			break;
	/*如果没有空闲项，则让该次请求操作睡眠，需检查是否提前读写*/
	if (req < request) { //搜索到头 队列无空项
		if (rw_ahead) { //是提前读写请求就退出
			unlock_buffer(bh);
			return;
		}
		sleep_on(&wait_for_request); //否则就睡眠，过会再来查看请求队列
		goto repeat; //重新搜索
	}
	/*有空项*/
	req->dev = bh->b_dev; //设备号
	req->cmd = rw;
	req->errors = 0;
	req->sector = bh->b_blocknr << 1; //起始扇区，块号转换成扇区号1块=2扇区
	req->nr_sectors = 2; //本次请求需要读写的扇区数
	req->buffer = bh->b_data; //请求项缓冲区指向需读写的数据缓冲区
	req->waiting = NULL; //任务等待操作执行完成的地方
	req->bh = bh; //缓冲块头指针
	req->next = NULL;
	add_request(major + blk_dev, req);
}

/*低层读写数据块函数*/
/*与其他系统部分接口*/
void ll_rw_block(int rw, struct buffer_head *bh)
{
	unsigned int major;
	/*主设备号不存在。或请求设备操作函数不存在*/
	if ((major = MAJOR(bh->b_dev)) >= NR_BLK_DEV ||
	    !(blk_dev[major].request_fn)) {
		printk("Trying to read nonexistent block-device\n\r");
		return;
	}
	make_request(major, rw, bh);
}

/*块设备初始化函数*/
void blk_dev_init(void)
{
	int i;
	for (i = 0; i < NR_REQUEST; i++) {
		request[i].dev = -1;
		request[i].next = NULL;
	}
}
