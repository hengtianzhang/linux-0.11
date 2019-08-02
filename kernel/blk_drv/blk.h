/*
 * 硬盘块设备参数。只用于块设备的头文件。
 * 定义请求队列中项的数据结构request。
 */
#ifndef _BLK_H
#define _BLK_H

/*块设备数量*/
#define NR_BLK_DEV 7
/*
 * 请求队列中所包含的项数
 */
#define NR_REQUEST 32

/*请求队列中项的结构 dev=-1表示队列中该项没有被使用*/
struct request {
	int dev; //发出请求的设备号
	int cmd; // read or wirte
	int errors; //操作时产生的错误次数
	unsigned long sector; //起始扇区 1块=2扇区
	unsigned long nr_sectors; //读/写扇区数
	char *buffer; //数据缓冲区
	struct task_struct *waiting; //任务等待操作执行完成的地方
	struct buffer_head *bh; //缓冲区头指针
	struct request *next; //指向下一请求项
};

/*定义用于电梯算法：读操作总是在写操作之前
 *读操作对时间要求比写操作严格
 *s1 s2 是request指针
 *用于判断两个请求前后排序顺序
 */
#define IN_ORDER(s1, s2)                                                       \
	((s1)->cmd < (s2)->cmd ||                                              \
	 ((s1)->cmd == (s2)->cmd &&                                            \
	  ((s1)->dev < (s2)->dev ||                                            \
	   ((s1)->dev == (s2)->dev && (s1)->sector < (s2)->sector))))

//块设备结构
struct blk_dev_struct {
	void (*request_fn)(void); //请求操作的函数指针
	struct request *current_request; //当前正在处理的请求信息结构
};

/*块设备表 每种设备占用一项*/
extern struct blk_dev_struct blk_dev[NR_BLK_DEV];
/*请求项队列数组*/
extern struct request request[NR_REQUEST];
/*等待空闲请求项的进程队列头指针*/
extern struct task_struct *wait_for_request;

#ifdef MAJOR_NR //主设备号
/*
 * 需要加入条目，目前块设备仅支持硬盘和软盘。虛擬盤
 */
#if (MAJOR_NR == 1) //ram 参见ll_rw_blk.c
/*ram disk*/
#define DEVICE_NAME "ramdisk"
#define DEVICE_REQUEST do_rd_request //设备请求函数
#define DEVICE_NR(device) ((device)&7) //设备号0--7
#define DEVICE_ON(device) //开启设备。虛擬盤无需开始或关闭
#define DEVICE_OFF(device)

#elif (MAJOR_NR == 2) //软驱的主设备号
/*floppy*/
#define DEVICE_NAME "floppy"
#define DEVICE_INTR do_floppy //设备中断处理
#define DEVICE_REQUEST do_fd_request //设备请求
#define DEVICE_NR(device) ((device)&3) //设备号0--3
#define DEVICE_ON(device) floppy_on(DEVICE_NR(device)) //开启设备宏
#define DEVICE_OFF(device) floppy_off(DEVICE_NR(device)) //关闭

#elif (MAJOR_NR == 3) //硬盘主设备号
/* harddisk */
#define DEVICE_NAME "harddisk"
#define DEVICE_INTR do_hd
#define DEVICE_REQUEST do_hd_request
#define DEVICE_NR(device) (MINOR(device) / 5) //0-1
#define DEVICE_ON(device)
#define DEVICE_OFF(device)

#else
/* unknown blk device */
#error "unknown blk device"

#endif

#define CURRENT (blk_dev[MAJOR_NR].current_request) //指定主设备号的当前指针
#define CURRENT_DEV DEVICE_NR(CURRENT->dev) //当前请求项CURRENT中的设备号

/*如果定义了DEVICE_INTR，则把他声明为一个函数指针。并默认为NULL*/
#ifdef DEVICE_INTR
void (*DEVICE_INTR)(void) = NULL;
#endif

static void(DEVICE_REQUEST)(void);

/*锁定指定的缓冲区 块*/
//如果指定的缓冲区bh未加锁，则报警告信息。否则解锁并唤醒等待
//该缓冲区的进程。参数缓冲区头指针
static inline void unlock_buffer(struct buffer_head *bh)
{
	if (!bh->b_lock)
		printk(DEVICE_NAME ": free buffer being unlocked\n");
	bh->b_lock = 0;
	wake_up(&bh->b_wait);
}

/*结束请求处理*/
//关闭指定块设备。检测此次读写缓冲区是否有效。有效则设置缓冲区
//更新标志 并解锁该缓冲区。唤醒等待该请求项的进程以及等待空闲
//请求项出现的进程。释放并从请求项链表中删除本请求项，并指向
//下一请求
static inline void end_request(int uptodate)
{
	DEVICE_OFF(CURRENT->dev); //关闭设备
	if (CURRENT->bh) { //CURRENT为当前请求项指针
		CURRENT->bh->b_uptodate = uptodate; //置更新标志
		unlock_buffer(CURRENT->bh); //解锁缓冲区
	}
	if (!uptodate) {
		printk(DEVICE_NAME "I/O error\n\t");
		printk("dev %04x, block %d\n\r", CURRENT->dev,
		       CURRENT->bh->b_blocknr);
	}
	wake_up(&CURRENT->waiting); //唤醒等待该请求的进程
	wake_up(&wait_for_request); //唤醒等待空闲请求的进程
	CURRENT->dev = -1; //释放该请求项
	CURRENT = CURRENT->next; //从链表中删除请求项，并指向下一个请求
}

/*定义初始化请求项宏*/
//该宏用于对当前请求进行一些有效性判定
//如果设备当前请求项为NULL 表示设备空闲，则退出函数
//否则如果当前请求设备的主设备号不等于驱动程序定义的主设备号，
//则是请求队列乱掉了，内核打印出错信息并死机，请求的缓冲区
//未被锁定也出错。打印出错信息并死机
#define INIT_REQUEST                                                           \
	repeat:                                                                \
	if (!CURRENT)                                                          \
		return;                                                        \
	if (MAJOR(CURRENT->dev) != MAJOR_NR)                                   \
		panic(DEVICE_NAME ": request list destroyed");                 \
	if (CURRENT->bh) {                                                     \
		if (!CURRENT->bh->b_lock)                                      \
			panic(DEVICE_NAME ": block not locked");               \
	}

#endif

#endif
