/*
 * 定义硬盘控制器一些常量符号
 * 包括控制器端口 硬盘状态寄存器各位的状态 控制器命令
 * 及出错状态符号。和硬盘分区表数据结构
 * AT
 */
#ifndef _HDREG_H
#define _HDREG_H
/*硬盘控制器寄存器端口 Ref: IBM AT Bios */
#define HD_DATA		0x1f0	/* _CTL when writing */
#define HD_ERROR	0x1f1	/* see err-bits */
#define HD_NSECTOR	0x1f2	/* nr of sectors to read/write */
#define HD_SECTOR	0x1f3	/* starting sector */
#define HD_LCYL		0x1f4	/* starting cylinder */
#define HD_HCYL		0x1f5	/* high byte of starting cyl */
#define HD_CURRENT	0x1f6	/* 101dhhhh , d=drive, hhhh=head */
#define HD_STATUS	0x1f7	/* see status-bits */
#define HD_PRECOMP HD_ERROR	/* same io address, read=error, write=precomp */
#define HD_COMMAND HD_STATUS	/* same io address, read=status, write=cmd */

#define HD_CMD		0x3f6 /*控制寄存器端口*/
/*硬盘状态寄存器定义*/
/* Bits of HD_STATUS */
#define ERR_STAT	0x01  //命令执行错误
#define INDEX_STAT	0x02 //收到索引
#define ECC_STAT	0x04	/* Corrected error */
#define DRQ_STAT	0x08 //请求服务
#define SEEK_STAT	0x10 //寻到结束
#define WRERR_STAT	0x20 //驱动器故障
#define READY_STAT	0x40 //驱动器准备好
#define BUSY_STAT	0x80 //控制器忙碌

/* Values for HD_COMMAND */
/*硬盘命令值*/
#define WIN_RESTORE		0x10  //驱动器重新校正
#define WIN_READ		0x20 //读扇区
#define WIN_WRITE		0x30 //写扇区
#define WIN_VERIFY		0x40 //扇区检验
#define WIN_FORMAT		0x50 //格式化磁道
#define WIN_INIT		0x60 //控制器初始化
#define WIN_SEEK 		0x70 //寻道
#define WIN_DIAGNOSE		0x90 //控制器诊断
#define WIN_SPECIFY		0x91 //建立驱动器参数

/* Bits for HD_ERROR */
/*错误寄存器各bit位含义*/
#define MARK_ERR	0x01	/* Bad address mark ?数据标志丢失 */
#define TRK0_ERR	0x02	/* couldn't find track 0 磁道0错误*/
#define ABRT_ERR	0x04	/* ? */
#define ID_ERR		0x10	/* ? */
#define ECC_ERR		0x40	/* ? */
#define	BBD_ERR		0x80	/* ? */

/*硬盘分区表结构*/
/*分区表有4个表项组成，每个表项16字节，对应一个分区信息。
 *存放分区的大小和起止的柱面号 磁道号 扇区号 
 *分区表存放在0柱面0头第一个扇区的0x1BE--0x1FD
 *
 * 0x00 boot_ind 引导标志。4个分区同时只有一个分区是可引导的
 * 0x01 head  分区起始磁头号
 * 0x02 sector 分区起始扇区号 位0-5和起始柱面高两位6-7
 * 0x03 cyl 分区起始柱面号低8位
 * 0x04 sys_ind 分区类型字节 0x0b DOS 0x80 Old Minix 0x83 Linux...
 * 0x05 end_head 分区结束磁头号
 * 0x06 end_sector 结束扇区号位0-5 和结束柱面号高两位6-7
 * 0x07 end_cyl 结束柱面号低8位
 * 0x08--0x0b 32 start_sect 分区起始物理扇区号
 * 0x0c--0x0f 32 nr_sects 分区占用的扇区数
 */
struct partition {
	unsigned char boot_ind;
	unsigned char head;
	unsigned char sector;
	unsigned char cyl;
	unsigned char sys_ind;
	unsigned char end_head;
	unsigned char end_sector;
	unsigned char end_cyl;
	unsigned int start_sects;
	unsigned int nr_sects;
};

#endif
