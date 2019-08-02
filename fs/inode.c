/*
 * 
 *
 */
#include <string.h>
#include <sys/stat.h>

#include <linux/sched.h>

#include <linux/kernel.h>
#include <linux/mm.h>
#include <asm/system.h>

struct m_inode inode_table[NR_INODE] = {
	{
		0,
	},
}; //内存中i节点表

static void read_inode(struct m_inode *inode);
static void write_inode(struct m_inode *inode);

/* 等待指定i节点可用 */
static inline void wait_on_inode(struct m_inode *inode)
{
	cli();
	while (inode->i_lock)
		sleep_on(&inode->i_wait);
	sti();
}

/* 对指定i节点上锁 */
static inline void lock_inode(struct m_inode *inode)
{
	cli();
	while (inode->i_lock)
		sleep_on(&inode->i_wait);
	inode->i_lock = 1;
	sti();
}

/* 对指定i节点解锁 */
static inline void unlock_inode(struct m_inode *inode)
{
	inode->i_lock = 0;
	wake_up(&inode->i_wait);
}

/* 释放设备dev在内存中i节点表中所有i节点 */
void invalidate_inodes(int dev)
{
	int i;
	struct m_inode *inode;

	/*
	 * 
	 */
	inode = 0 + inode_table;
	for (i = 0; i < NR_INODE; i++, inode++) {
		wait_on_inode(inode);
		if (inode->i_dev == dev) {
			if (inode->i_count)
				printk("inode in use on removed disk\n\r");
			inode->i_dev = inode->i_dirt = 0;
		}
	}
}

/*同步内存i节点表中所有i节点与设备上i节点作同步操作*/
void sync_inodes(void)
{
	int i;
	struct m_inode *inode;

	inode = 0 + inode_table;
	for (i = 0; i < NR_INODE; i++, inode++) {
		wait_on_inode(inode);
		if (inode->i_dirt && !inode->i_pipe)
			write_inode(inode);
	}
}

/* 文件数据块映射到盘块的处理操作 */
static int _bmap(struct m_inode *inode, int block, int create)
{
	struct buffer_head *bh;
	int i;

	if (block < 0)
		panic("_bmap: block < 0");
	if (block >= 7 + 512 + 512 * 512)
		panic("_bmap: block > big");

	if (block < 7) {
		if (create && !inode->i_zone[block])
			if ((inode->i_zone[block] = new_block(inode->i_dev))) {
				inode->i_ctime = CURRENT_TIME;
				inode->i_dirt = 1;
			}
		return inode->i_zone[block];
	}

	block -= 7;
	if (block < 512) {
		if (create && !inode->i_zone[7])
			if ((inode->i_zone[7] = new_block(inode->i_dev))) {
				inode->i_dirt = 1;
				inode->i_ctime = CURRENT_TIME;
			}
		if (!inode->i_zone[7])
			return 0;

		/*取一次间接块*/
		if (!(bh = bread(inode->i_dev, inode->i_zone[7])))
			return 0;
		i = ((unsigned short *)(bh->b_data))[block];
		if (create && !i)
			if ((i = new_block(inode->i_dev))) {
				((unsigned short *)(bh->b_data))[block] = i;
				bh->b_dirt = 1;
			}
		brelse(bh);
		return i;
	}

	/*二次间接块*/
	block -= 512;
	if (create && !inode->i_zone[8])
		if ((inode->i_zone[8] = new_block(inode->i_dev))) {
			inode->i_dirt = 1;
			inode->i_ctime = CURRENT_TIME;
		}
	if (!inode->i_zone[8])
		return 0;
	if (!(bh = bread(inode->i_dev, inode->i_zone[8])))
		return 0;
	i = ((unsigned short *)bh->b_data)[block >> 9];
	if (create && !i)
		if ((i = new_block(inode->i_dev))) {
			((unsigned short *)(bh->b_data))[block >> 9] = i;
			bh->b_dirt = 1;
		}
	brelse(bh);

	if (!i)
		return 0;
	if (!(bh = bread(inode->i_dev, i)))
		return 0;
	i = ((unsigned short *)bh->b_data)[block & 511];
	if (create && !i)
		if ((i = new_block(inode->i_dev))) {
			((unsigned short *)(bh->b_data))[block & 511] = i;
			bh->b_dirt = 1;
		}
	brelse(bh);
	return i;
}

int bmap(struct m_inode *inode, int block)
{
	return _bmap(inode, block, 0);
}

/* 取文件数据块block 在设备上对应的逻辑块号 */
int create_block(struct m_inode *inode, int block)
{
	return _bmap(inode, block, 1);
}

/* 放回一个i节点 回写入设备*/
void iput(struct m_inode *inode)
{
	if (!inode)
		return;
	wait_on_inode(inode);
	if (!inode->i_count)
		panic("iput: trying to free inode");

	if (inode->i_pipe) {
		wake_up(&inode->i_wait);
		if (--inode->i_count)
			return;
		free_page(inode->i_size);
		inode->i_count = 0;
		inode->i_dirt = 0;
		inode->i_pipe = 0;
		return;
	}

	if (!inode->i_dev) {
		inode->i_count--;
		return;
	}
	if (S_ISBLK(inode->i_mode)) {
		sync_dev(inode->i_zone[0]);
		wait_on_inode(inode);
	}

repeat:
	if (inode->i_count > 1) {
		inode->i_count--;
		return;
	}
	if (!inode->i_nlinks) {
		truncate(inode);
		free_inode(inode);
		return;
	}

	if (inode->i_dirt) {
		write_inode(inode);
		wait_on_inode(inode);
		goto repeat;
	}
	inode->i_count--;
	return;
}

/* 从i节点表中获取一个空闲i节点项 */
/* 寻找引用计数为0，写盘后清零 */
struct m_inode *get_empty_inode(void)
{
	struct m_inode *inode;
	/* 指向i节点表第1项 */
	static struct m_inode *last_inode = inode_table;
	int i;

	do {
		inode = NULL;
		for (i = NR_INODE; i; i--) {
			if (++last_inode >= inode_table + NR_INODE)
				last_inode = inode_table;
			if (!last_inode->i_count) {
				inode = last_inode;
				if (!inode->i_dirt && !inode->i_lock)
					break;
			}
		}

		if (!inode) {
			for (i = 0; i < NR_INODE; i++)
				printk("%04x: %6d\t", inode_table[i].i_dev,
				       inode_table[i].i_num);
			panic("No free inode in mem");
		}

		wait_on_inode(inode);
		while (inode->i_dirt) {
			write_inode(inode);
			wait_on_inode(inode);
		}
	} while (inode->i_count);
	memset(inode, 0, sizeof(*inode));
	inode->i_count = 1;
	return inode;
}

/* 获取管道节点 */
struct m_inode *get_pipe_inode(void)
{
	struct m_inode *inode;

	if (!(inode = get_empty_inode()))
		return NULL;
	if (!(inode->i_size = get_free_page())) {
		inode->i_count = 0;
		return NULL;
	}

	inode->i_count = 2;
	PIPE_HEAD(*inode) = PIPE_TAIL(*inode) = 0;
	inode->i_pipe = 1; //置管道使用标志
	return inode;
}

/*取得一个i节点*/
struct m_inode *iget(int dev, int nr)
{
	struct m_inode *inode, *empty;
	if (!dev)
		panic("iget with dev == 0");
	empty = get_empty_inode();
	inode = inode_table;
	while (inode < NR_INODE + inode_table) {
		if (inode->i_dev != dev || inode->i_num != nr) {
			inode++;
			continue;
		}
		wait_on_inode(inode);
		if (inode->i_dev != dev || inode->i_num != nr) {
			inode = inode_table;
			continue;
		}

		inode->i_count++;
		if (inode->i_mount) {
			int i;
			for (i = 0; i < NR_SUPER; i++)
				if (super_block[i].s_imount == inode)
					break;
			if (i >= NR_SUPER) {
				printk("Mounted inode hasn't got sb\n");
				if (empty)
					iput(empty);
				return inode;
			}
			iput(inode);
			dev = super_block[i].s_dev;
			nr = ROOT_INO;
			inode = inode_table;
			continue;
		}
		if (empty)
			iput(empty);
		return inode;
	}

	if (!empty)
		return inode;
	inode = empty;
	inode->i_dev = dev;
	inode->i_num = nr;
	read_inode(inode);
	return inode;
}

static void read_inode(struct m_inode *inode)
{
	struct super_block *sb;
	struct buffer_head *bh;
	int block;

	lock_inode(inode);
	if (!(sb = get_super(inode->i_dev)))
		panic("trying to read inode whitout dev");

	block = 2 + sb->s_imap_blocks + sb->s_zmap_blocks +
		(inode->i_num - 1) / INODES_PER_BLOCK;
	if (!(bh = bread(inode->i_dev, block)))
		panic("unable to read i-node block");
	*(struct d_inode *)inode =
		((struct d_inode *)
			 bh->b_data)[(inode->i_num - 1) % INODES_PER_BLOCK];
	brelse(bh);
	unlock_inode(inode);
}

static void write_inode(struct m_inode *inode)
{
	struct super_block *sb;
	struct buffer_head *bh;
	int block;

	lock_inode(inode);
	if (!inode->i_dirt || !inode->i_dev) {
		unlock_inode(inode);
		return;
	}
	if (!(sb = get_super(inode->i_dev)))
		panic("trying to write inode without device");
	block = 2 + sb->s_imap_blocks + sb->s_zmap_blocks +
		(inode->i_num - 1) / INODES_PER_BLOCK;
	if (!(bh = bread(inode->i_dev, block)))
		panic("unable to read i-node block");
	((struct d_inode *)bh->b_data)[(inode->i_num - 1) % INODES_PER_BLOCK] =
		*(struct d_inode *)inode;
	bh->b_dirt = 1;
	inode->i_dirt = 0;
	brelse(bh);
	unlock_inode(inode);
}
