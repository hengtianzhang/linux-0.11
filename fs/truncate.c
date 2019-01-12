/*
 * 用于释放指定i节点在设备上占用的所有逻辑块。
 */
#include <linux/sched.h>

#include <sys/stat.h>

/*  释放所有一次间接块 */
/* dev 文件系统所在设备的设备号，block是逻辑块号 */
static void free_ind(int dev, int block)
{
	struct buffer_head * bh;
	unsigned short * p;
	int i;

	/* 有效性判断 */
	if (!block)
		return;
	/*读取一次间接块，并释放其上表明使用的所有逻辑块*/
	if (bh = bread(dev, block)) {
		p = (unsigned short *) bh->b_data; //指向缓冲块数据区
		for (i = 0; i < 512; i++, p++)
			if (*p)
				free_block(dev, *p);
		brelse(bh);
	}
	/* 释放设备上的一次间接块 */
	free_block(dev, block);
}


/* 释放所有二次间接块 */
static void free_dind(int dev, int block)
{
	struct buffer_head * bh;
	unsigned short * p;
	int i;

	if (!block)
		return ;

	/* 读取二次间接块的一级块，并释放其上表明使用的所有逻辑块，然后释放一级块 */
	if (bh = bread(dev, block)) {
		p = (unsigned short *) bh->b_data;
		for (i = 0; i < 512; i++, p++)
			if (*p)
				free_ind(dev, *p);
		brelse(bh);
	}
	free_block(dev, block);
}


/* 截断文件数据函数 */
/* 将节点对应文件长度截为0，并释放占用的设备空间 */
void truncate(struct m_inode * inode)
{
	int i;

	/* 如果不是常规文件或是目录文件则返回 */
	if (!(S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode)))
		return ;
	/* 释放i节点的7个直接逻辑块 */
	for (i = 0; i < 7; i++)
		if (inode->i_zone[i]) {
			free_block(inode->i_dev, inode->i_zone[i]);
			inode->i_zone[i] = 0;
		}
	free_ind(inode->i_dev, inode->i_zone[7]);
	free_dind(inode->i_dev, inode->i_zone[8]);
	inode->i_zone[7] = inode->i_zone[8] = 0;
	inode->i_size = 0; //文件大小清零
	inode->i_dirt = 1;

	/* 重置修改文件时间和i节点改变时间为当前时间 */
	inode->i_mtime = inode->i_ctime = CURRENT_TIME;
}




















