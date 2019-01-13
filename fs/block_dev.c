/*
 * 块设备文件数据访问操作
 */
#include <errno.h>

#include <linux/sched.h>

#include <linux/kernel.h>
#include <asm/segment.h>
#include <asm/system.h>

/* 向指定设备从给定偏移处写入指定长度数据 */
int block_write(int dev, long * pos, char * buf, int count)
{
	int block = *pos >> BLOCK_SIZE_BITS; //pos 所在文件数据块号
	int offset = *pos & (BLOCK_SIZE - 1);//pos 在数据块中偏移
	int chars;
	int written = 0;
	struct buffer_head * bh;
	register char * p;

	while (count > 0) {
		chars = BLOCK_SIZE - offset; //本块可写入的字节数
		if (chars > count)
			chars = count;
		if (chars == BLOCK_SIZE)
			bh = getblk(dev, block);
		else
			bh = breada(dev, block, block + 1, block + 2, -1);
		block++;
		if (!bh)
			return written?written:-EIO;
		p = offset + bh->b_data;
		offset = 0;
		*pos += chars;
		written += chars;
		count -= chars;
		while (chars-- > 0)
			*(p++) = get_fs_byte(buf++);
		bh->b_dirt = 1;
		brelse(bh);
	}	
	return written;
}

/* 从指定设备和位置读入 指定长度数据到用户缓冲区 */
int block_read(int dev, unsigned long * pos, char * buf, int count)
{
	int block = *pos >> BLOCK_SIZE_BITS;
	int offset = *pos & (BLOCK_SIZE-1);
	int chars;
	int read = 0;
	struct buffer_head * bh;
	register char * p;

	while (count>0) {
		chars = BLOCK_SIZE-offset;
		if (chars > count)
			chars = count;
		if (!(bh = breada(dev,block,block+1,block+2,-1)))
			return read?read:-EIO;
		block++;
		p = offset + bh->b_data;
		offset = 0;
		*pos += chars;
		read += chars;
		count -= chars;
		while (chars-->0)
			put_fs_byte(*(p++),buf++);
		brelse(bh);
	}
	return read;
}

