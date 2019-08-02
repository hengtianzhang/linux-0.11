/*
 * 硬盘控制器驱动程序 提供对硬盘控器器块设备的读写驱动和硬盘初始化
 * 初始化硬盘和设置硬盘所用数据结构信息的函数，sys_setup hd_init
 * 向硬盘控制器发送命令的函数 hd_out
 * 处理硬盘当前请求项的函数 do_hd_request
 * 硬盘中断处理过程中调用C函数 read_intr write_intr bad_rw_intr
 * recal_intr do_hd_request
 * 硬盘控制器操作辅助函数 controler_ready drive_busy win_result
 * hd_out reset_controler
 * 
 * 硬盘中断辅助程序。用于扫描请求项队列。使用中断在函数之间跳转
 * 所有函数在中断中调用，即不可休眠
 */
#include <linux/config.h>
#include <linux/sched.h>
#include <linux/fs.h>
#include <linux/kernel.h>
#include <linux/hdreg.h>
#include <asm/system.h>
#include <asm/io.h>
#include <asm/segment.h>

#define MAJOR_NR 3
#include "blk.h"

#define CMOS_READ(addr) ({ \
outb_p(0x80|addr,0x70); \
inb_p(0x71); \
})

/*每个扇区读/写操作允许的最多出错次数*/
#define MAX_ERRORS   7
#define MAX_HD       2  //最多支持2个硬盘

//重新校正处理函数
//复位操作时在硬盘中断处理程序中调用的重新校正函数
static void recal_intr(void);

//重新校正标志。set 会调用recal_intr以将磁头移动到0柱面
static int recalibrate = 0;

//复位标志 读写错误会设置该标志
static int reset = 0;

/*定义硬盘参数及类型*/
//各字段分别是 磁头数 每磁道扇区数 柱面数 写前预补偿柱面数
// 磁头着陆区柱面号 控制字节
struct hd_i_struct {
	int head,sect,cyl,wpcom,lzone,ctl;
};

/*Ref: config.h*/
#ifdef HD_TYPE
struct hd_i_struct hd_info[] = { HD_TYPE };
#define NR_HD ((sizeof (hd_info))/(sizeof (struct hd_i_struct)))
#else
struct hd_i_struct hd_info[] = { {0,0,0,0,0,0},{0,0,0,0,0,0} };
static int NR_HD = 0;
#endif

/*定义硬盘分区结构。给出每个分区从硬盘0道开始计算起的物理起始扇区号
 *和分区扇区总数
 *其中5倍处的hd[0] hd[5]项代表整个硬盘的参数
 */
static struct hd_struct {
	long start_sect; //分区在硬盘中的起始物理扇区
	long nr_sects; //分区中扇区总数
} hd[5*MAX_HD] = {{0,0},};

/*读端口port 共读nr字 保存在buf*/
#define port_read(port,buf,nr) \
__asm__("cld;rep;insw"::"d" (port),"D" (buf),"c"(nr):)

/*写端口port 共nr字 从buf取数据*/
#define port_write(port,buf,nr) \
__asm__("cld;rep;outsw"::"d" (port),"S" (buf),"c" (nr):)


extern void hd_interrupt(void); //硬盘中断过程
extern void rd_load(void); //虛擬盤创建加载函数

/*下面函數只在初始化被調用一次，用靜態變量callable作爲可調用標志*/
/*系統設置函數*/
//參數BIOS   init子程序設置為指向硬盤參數表結構的指針
//兩個硬盤參數表結構由0x90080獲取
int sys_setup(void * BIOS)
{
	static int callable = 1; //限制本函數只被調用一次
	int i, drive;
	unsigned char cmos_disks;
	struct partition * p;
	struct buffer_head * bh;

	if (!callable)
		return -1;
	callable = 0;
#ifndef HD_TYPE
	for (drive=0 ; drive<2 ; drive++) {
		hd_info[drive].cyl = *(unsigned short *) BIOS;//柱面數
		hd_info[drive].head = *(unsigned char *) (2+BIOS);//磁頭數
		hd_info[drive].wpcom = *(unsigned short *) (5+BIOS);//
		hd_info[drive].ctl = *(unsigned char *) (8+BIOS);
		hd_info[drive].lzone = *(unsigned short *) (12+BIOS);
		hd_info[drive].sect = *(unsigned char *) (14+BIOS);
		BIOS += 16;
	}
	if (hd_info[1].cyl)
		NR_HD = 2;
	else
		NR_HD = 1;
#endif
	for (i = 0; i < NR_HD; i++) {
		hd[i*5].start_sect = 0; //硬盤起始扇區號
		hd[i*5].nr_sects = hd_info[i].head*
					hd_info[i].sect*hd_info[i].cyl; //硬盤縂扇區數
	}
	/*Ref:
		We querry CMOS about hard disks : it could be that 
		we have a SCSI/ESDI/etc controller that is BIOS
		compatable with ST-506, and thus showing up in our
		BIOS table, but not register compatable, and therefore
		not present in CMOS.

		Furthurmore, we will assume that our ST-506 drives
		<if any> are the primary drives in the system, and 
		the ones reflected as drive 1 or 2.

		The first drive is stored in the high nibble of CMOS
		byte 0x12, the second in the low nibble.  This will be
		either a 4 bit drive type or 0xf indicating use byte 0x19 
		for an 8 bit type, drive 1, 0x1a for drive 2 in CMOS.

		Needless to say, a non-zero value means we have 
		an AT controller hard disk for that drive.

		
	*/
	if ((cmos_disks = CMOS_READ(0x12)) & 0xf0)
		if (cmos_disks & 0x0f)
			NR_HD = 2;
		else
			NR_HD = 1;
	else
		NR_HD = 0;
//若NR_HD = 0 則兩個硬盤都不是AT控制器兼容的，則清空兩個硬盤數據
//。。。
	for (i = NR_HD; i < 2; i++) {
		hd[i*5].start_sect = 0;
		hd[i*5].nr_sects = 0;
	}

	/*讀取每個硬盤上第一個山區中分區信息。用於設置分區結構數組中
	  各分區信息。
	  首先使用讀塊函數bread()讀取硬盤第一個數據塊
	  第一個參數0x300 0x305 代表兩個硬盤 第二個參數0 所需讀取的塊號
	  讀成功，則數據被存在緩衝區bh中 如bh為0 則是失敗 打印出錯並
	  死機。 否則根據硬盤第一個扇區0xAA55判斷扇區數據有效性
	  從而可以知道扇區中位於偏移0x1BE開始的分區表是否有效
	 */
	for (drive = 0; drive < NR_HD; drive++) {
		if (!(bh = bread(0x300 + drive*5, 0))) {
			printk("Unable to read partiton table of drive %d\n\r",
					drive);
			panic("");
		}
		if (bh->b_data[510] != 0x55 || (unsigned char)
			bh->b_data[511] != 0xAA) {
			printk("Bad partiton table on drive %d\n\r", drive);
			panic("");
		}
		p = 0x1BE + (void *)bh->b_data; //分區表位置 一扇區0x1BE
		for (i = 1; i < 5; i++, p++) {
			hd[i+5*drive].start_sect = p->start_sect;
			hd[i+5*drive].nr_sects = p->nr_sects;
		}
		brelse(bh); //釋放為存放硬盤數據塊而申請的緩衝區
	}
	if (NR_HD)
		printk("Partition table%s ok. \n\r",(NR_HD>1)?"s":"");
	rd_load(); //嘗試創建並加載虛擬盤
	mount_root(); //安裝根文件系統
	return (0);
}



/*判斷並循環等待硬盤控制器就緒*/
//讀硬盤控制狀態寄存器端口0x1f7,循環檢測其中驅動器就緒比特位位6
//是否被置位 并且控制器忙位位7 被復位 返回0 則等待控制器空閑時
//間超時 
static int controller_ready(void)
{
	int retries = 100000;
	while (--retries && (inb_p(HD_STATUS)&0x80));
	return (retries);
}


/*檢測硬盤執行命令後的狀態*/
static int win_result(void)
{
	int i = inb_p(HD_STATUS);

	if ((i & (BUSY_STAT | READY_STAT | WRERR_STAT | SEEK_STAT | ERR_STAT))
		== (READY_STAT | SEEK_STAT))
		return (0); /*ok*/
	if (i&1) i = inb(HD_ERROR);
	return 1;
}

/*向硬盤控制器發送命令塊*/
/*
	drive 硬盤號      nsect 讀寫扇區數 sect 起始扇區
	head 磁頭號 cyl 柱面號   cmd 命令碼
	intr_addr 硬盤中斷處理
	該函數在硬盤控制器就緒后  先設置全局函數指針變量do_hd指向中斷
	處理程序。再發送硬盤控制字節和7字節參數命令塊
 */
static void hd_out(unsigned int drive,unsigned int nsect,unsigned int sect,
		unsigned int head,unsigned int cyl,unsigned int cmd,
		void (*intr_addr)(void))
{
	register int port asm("dx");
	/*對參數進行有效性檢測。如果驅動器號大於1 只能是0，1 或者磁頭號
	  大於15 則進程不支持停機。否則判斷並循環等待驅動器就緒
	*/
	if (drive > 1 || head > 15)
		panic("Trying to write bad sector");
	if (!controller_ready())
		panic("HD controller not ready");
	/*設置硬盤中斷do_hd*/
	do_hd = intr_addr;
	outb_p(hd_info[drive].ctl,HD_CMD); //向控制器輸出控制字節
	port = HD_DATA; //数据端口
	outb_p(hd_info[drive].wpcom>>2,++port);//参数写预补偿柱面号
	outb_p(nsect,++port); //读写扇区总数
	outb_p(sect,++port); //起始扇区
	outb_p(cyl,++port);
	outb_p(cyl>>8,++port);//柱面高8位
	outb_p(0xA0|(drive<<4)|head,++port);//驱动器号+磁头号
	outb_p(cmd,++port); //命令，硬盘控制命令
}

/*等待硬盘就绪*/
static int drive_busy(void)
{
	unsigned int i;

	for (i = 0; i < 10000; i++)
		if (READY_STAT == (inb_p(HD_STATUS) & (BUSY_STAT|READY_STAT)))
			break;
	i = inb(HD_STATUS);
	i &= BUSY_STAT | READY_STAT | SEEK_STAT;
	if (i == (READY_STAT | SEEK_STAT)) //仅有此两种状态则返回
		return 0;
	printk("HD controller times out\n\r"); //等待超时
	return 1;
}


/*诊断复位*/
static void reset_controller(void)
{
	int i;
	//首先发送允许复位
	outb(4,HD_CMD); //复位字节
	for (i = 0; i < 100; i++) nop(); //wait
	outb(hd_info[0].ctl & 0x0f, HD_CMD);
	if (drive_busy())
		printk("HD-controller still busy\n\r");
	if ((i = inb(HD_ERROR)) !=1)
		printk("HD-controller reset failed: %02x\n\r", i);
}


//复位硬盘nr
static void reset_hd(int nr)
{
	reset_controller();
	hd_out(nr,hd_info[nr].sect,hd_info[nr].sect,hd_info[nr].head-1,
		hd_info[nr].cyl,WIN_SPECIFY,&recal_intr);
}


//意外硬盘中断调用
void unexpected_hd_interrupt(void)
{
	printk("Unexpected HD interrupt\n\r");
}

//读写硬盘失败处理
static void bad_rw_intr(void)
{
	if (++CURRENT->errors >= MAX_ERRORS)
		end_request(0);
	if (CURRENT->errors > MAX_ERRORS/2)
		reset = 1;
}

//读操作中断调用
static void read_intr(void)
{
	if (win_result()) { //若控制器忙读写或命令错
		bad_rw_intr();
		do_hd_request(); //再次请求硬盘操作
		return ;
	}
	port_read(HD_DATA,CURRENT->buffer,256);
	CURRENT->errors = 0;
	CURRENT->buffer += 512; //调整缓冲区指针，指向新空区
	CURRENT->sector++; //起始扇区号加1
	/*读完一个扇区，硬盘将发出中断，调用do_hd*/
	if (--CURRENT->nr_sectors) {
		do_hd = &read_intr;
		return ;
	}
	end_request(1);
	do_hd_request();
}

//写扇区中断调用
static void write_intr(void)
{
	if (win_result()) {
		bad_rw_intr(); //读写失败处理
		do_hd_request(); //再次请求硬盘处理
		return ;
	}
	if (--CURRENT->nr_sectors) {//还有扇区需要写
		CURRENT->sector++; //当前请求起始扇区号+1
		CURRENT->buffer += 512;
		do_hd = &write_intr;
		port_write(HD_DATA,CURRENT->buffer,256);
		return ;
	}
	end_request(1);
	do_hd_request();
}

//硬盘重新校正 中断
static void recal_intr(void)
{
	if (win_result())
		bad_rw_intr();
	do_hd_request();
}


//执行硬盘读写请求
void do_hd_request(void)
{
	int i, r;
	unsigned int block, dev;
	unsigned int sec, head, cyl;
	unsigned int nsect;
	/* 首先检测请求项是否合理，没有请求项则退出
		然后取设备号中子设备号。以及当前请求中起始扇区号
	 */
	INIT_REQUEST;
	dev = MINOR(CURRENT->dev);
	block = CURRENT->sector; //请求的起始扇区
	if (dev >= 5*NR_HD || block+2 > hd[dev].nr_sects) {
		end_request(0);
		goto repeat;
	}
	block += hd[dev].start_sect;
	dev /= 5; //硬盘号
	/*计算磁道中扇区号sec 所在柱面号cyl 和磁头号head*/
	__asm__("divl %4":"=a"(block),"=d" (sec):"0" (block),"1" (0),
			"r" (hd_info[dev].sect));
	__asm__("divl %4":"=a" (cyl),"=d" (head):"0"(block),"1" (0),
			"r" (hd_info[dev].head));

	sec++; //调整扇区号
	nsect = CURRENT->nr_sectors; //欲读写的扇区数
	if (reset) {
		reset = 0;
		recalibrate = 1;
		reset_hd(CURRENT_DEV);
		return ;
	}
	if (recalibrate) {
		recalibrate = 0;
		hd_out(dev, hd_info[CURRENT_DEV].sect,0,0,0,
				WIN_RESTORE,&recal_intr);
		return ;
	}

	if (CURRENT->cmd == WRITE) {
		hd_out(dev,nsect,sec,head,cyl,WIN_WRITE,&write_intr);
		for (i = 0; i < 3000 && !(r = inb_p(HD_STATUS)&DRQ_STAT) ; i++)
			/*DRQ_STAT 置位 退出*/;
		if (!r) {
			bad_rw_intr();
			goto repeat;
		}
		port_write(HD_DATA,CURRENT->buffer,256);
	} else if (CURRENT->cmd == READ) {
		hd_out(dev,nsect,sec,head,cyl,WIN_READ,&read_intr);
	} else 
		panic("unknown hd-command");
}



/*硬盘系统初始化*/

void hd_init(void)
{
	blk_dev[MAJOR_NR].request_fn = DEVICE_REQUEST;
	set_intr_gate(0x2E,&hd_interrupt);
	outb_p(inb_p(0x21)&0xfb,0x21); //复位接联的主8259A int2的屏蔽位
	outb(inb_p(0xA1)&0xbf,0xA1); //复位硬盘中断请求屏蔽位 从片
}




