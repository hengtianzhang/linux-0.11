#include <string.h>

#include <linux/config.h>
#include <linux/sched.h>
#include <linux/fs.h>
#include <linux/kernel.h>
#include <asm/system.h>
#include <asm/segment.h>
#include <asm/memory.h>

#define MAJOR_NR 1
#include "blk.h"

char *rd_start; //虛擬盤内存中开始位置
int rd_length = 0;

void do_rd_request(void)
{
	int len;
	char *addr;
	INIT_REQUEST;
	addr = rd_start + (CURRENT->sector << 9);
	len = CURRENT->nr_sectors << 9;

	if ((MINOR(CURRENT->dev) != 1) || (addr+len > rd_start+rd_length)) {
		end_request(0);
		goto repeat;
	}
	if (CURRENT->cmd == WRITE) {
		(void) memcpy(addr, CURRENT->buffer, len);
	} else if (CURRENT->cmd == READ) {
		(void) memcpy(CURRENT->buffer, addr, len);
	} else
		panic("unknown ramdisk-command");
	end_request(1);
	goto repeat;
}

/*返回内存虛擬盤所需内存量*/
long rd_init(long mem_start, int length)
{
	int i;
	char *cp;

	blk_dev[MAJOR_NR].request_fn = DEVICE_REQUEST;
	rd_start = (char *)mem_start;
	rd_length = length;
	cp = rd_start;
	for (i = 0; i < length; i++)
		*cp++ = '\0';
	return(length);
}

/*尝试加载根文件系统，ramdisk*/
void rd_load(void)
{
	struct buffer_head *bh;
	struct super_block s;
	int block = 256; //开始于256块
	int i = 1;
	int nblocks; //文件系统盘块总数
	char *cp;

	if (!rd_length)
		return ;
	printk("Ram disk: %d byte, starting at 0x%x\n", rd_length,
				(int) rd_start);
	if (MAJOR(ROOT_DEV) != 2)
		return ;
/*读根文件系统基本参数*/
	bh = breada(ROOT_DEV,block+1, block, block+2, -1);
	if (!bh) {
		printk("Disk error while looking for randisk!\n");
	}
	*((struct d_super_block *) &s) = *((struct d_super_block *)bh->b_data);
	brelse(bh);	
	if (s.s_magic != SUPER_MAGIC)
		//磁盘无ramdisk映像文件
		return ;
	nblocks = s.s_nzones << s.s_log_zone_size;
	if (nblocks > (rd_length >> BLOCK_SIZE_BITS)) {
		printk("Ram disk image too big! (%d blocks, %d avail)\n",
				nblocks, rd_length >> BLOCK_SIZE_BITS);
		return ;
	}
	printk("Loading %d bytes into ram disk... 0000k",
		nblocks << BLOCK_SIZE_BITS);
	cp = rd_start;
	while (nblocks) {
		if (nblocks > 2) 
			bh = breada(ROOT_DEV, block, block+1, block+2, -1);
		else
			bh = bread(ROOT_DEV, block);
		if (!bh) {
			printk("I/O error on block %d, aborting load\n", 
				block);
			return;
		}
		(void) memcpy(cp, bh->b_data, BLOCK_SIZE);
		brelse(bh);
		printk("\010\010\010\010\010%4dk",i);
		cp += BLOCK_SIZE;
		block++;
		nblocks--;
		i++;
	}
	printk("\010\010\010\010\010done \n");
	ROOT_DEV=0x0101;
}

