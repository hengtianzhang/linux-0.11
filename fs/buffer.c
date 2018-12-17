/*
 * 高速緩衝區
 */
#include <stdarg.h>

#include <linux/config.h>
#include <linux/sched.h>
#include <linux/kernel.h>
#include <asm/system.h>
#include <asm/io.h>

//鏈接生成 end
extern int end;
struct buffer_head * start_buffer = (struct buffer_head * )&end;
struct buffer_head * hash_table[NR_HASH];
static struct buffer_head * free_list; //空閑緩衝塊鏈表頭指針
static struct task_struct * buffer_wait = NULL; //等待空閑緩衝塊而睡眠的任務隊列

int NR_BUFFERS = 0; //系統含有的緩衝塊個數

//等待指定緩衝塊解鎖
static inline void wait_on_buffer(struct buffer_head * bh)
{
	cli();
	while (bh->b_lock) //如果已被上鎖則進程進入睡眠
		sleep_on(&bh->b_wait);
	sti();
}

//設備數據同步
//同步設備和内存告訴緩衝區數據
int sys_sync(void)
{
	int i;
	struct buffer_head * bh;
	sync_inodes();
	bh = start_buffer;
	for (i = 0; i < NR_BUFFERS; i++, bh++) {
		wait_on_buffer(bh);
		if (bh->b_dirt)
			ll_rw_block(WRITE, bh); //被修改，則產生寫請求
	}
	return 0;
}


//對指定設備進行高速緩衝數據與設備上數據同步。
int sync_dev(int dev)
{
	int i;
	struct buffer_head * bh;
	bh = start_buffer;
	for (i = 0; i < NR_BUFFERS; i++,bh++) {
		if (bh->b_dev != dev) //不是設備dev的緩衝塊則繼續
			continue;
		wait_on_buffer(bh);//等待緩衝區解鎖(如果以上鎖)
		if (bh->b_dev == dev && bh->b_dirt)
			ll_rw_block(WRITE, bh);
	}
	//再將i節點數據寫入告訴緩衝區快。讓i節點表inode_table中的inode與
	//緩衝中信息同步
	sync_inodes();
	//兩次同步
	bh = start_buffer;
	for (i = 0; i < NR_BUFFERS; i++,bh++) {
		if (bh->b_dev != dev)
			continue;
		wait_on_buffer(bh);
		if (bh->b_dev == dev && bh->b_dirt)
			ll_rw_block(WRITE, bh);
	}
	return 0;
}


//使制定設備在高速緩衝區中的數據無效
void inline invalidate_buffers(int dev)
{
	int i;
	struct buffer_head * bh;
	bh = start_buffer;
	for (i = 0; i < NR_BUFFERS; i++,bh++) {
		if (bh->b_dev != dev)
			continue;
		wait_on_buffer(bh);
		if (bh->b_dev == dev)
			bh->b_uptodate = bh->b_dirt = 0;
	}
}


//檢測一個軟盤是否更換，是則緩衝區塊無效，執行慢。
void check_disk_change(int dev)
{
	int i;
	if (MAJOR(dev) != 2)
		return;
	if (!floppy_change(dev & 0x03))
		return;
	for (i = 0; i < NR_SUPER; i++)
		if (super_block[i].s_dev == dev)
			put_super(super_block[i].s_dev);
	invalidate_inodes(dev);
	invalidate_buffers(dev);
}


#define _hashfn(dev,block) (((unsigned)(dev^block))%NR_HASH)
#define hash(dev,block) hash_table[_hashfn(dev,block)]

//從hash隊列和空閑緩衝隊列中移走塊
static inline void remove_from_queues(struct buffer_head * bh)
{
//從hash隊列移除緩衝塊
	if (bh->b_next)
		bh->b_next->b_prev = bh->b_prev;
	if (bh->b_prev)
		bh->b_prev->b_next = bh->b_next;

	if (hash(bh->b_dev,bh->b_blocknr) == bh)
		hash(bh->b_dev,bh->b_blocknr) = bh->b_next;

//從空閑緩衝表中移除緩衝塊
	if (!(bh->b_prev_free) || !(bh->b_next_free))
		panic("Free block list corrupted");
	bh->b_prev_free->b_next_free = bh->b_next_free;
	bh->b_next_free->b_prev_free = bh->b_prev_free;
	if (free_list == bh)
		free_list = bh->b_next_free;
}


//將緩衝塊插入空閑鏈表尾部。同時放入hash隊列
static inline void insert_into_queues(struct buffer_head * bh)
{
	//放入空閑鏈表尾部
	bh->b_next_free = free_list;
	bh->b_prev_free = free_list->b_prev_free;
	free_list->b_prev_free->b_next_free = bh;
	free_list->b_prev_free = bh;
	//如果該緩衝區對應一個設備，則將其插入新hash隊列
	bh->b_prev = NULL;
	bh->b_next = NULL;
	if (!bh->b_dev)
		return;
	bh->b_next = hash(bh->b_dev,bh->b_blocknr);
	hash(bh->b_dev,bh->b_blocknr) = bh;
	if (bh->b_next)
		bh->b_next->b_prev = bh;
}


//利用hash表在高速緩衝區中尋找給定設備和指定塊號的緩衝塊
static struct buffer_head * find_buffer(int dev, int block)
{
	struct buffer_head * tmp;
	for (tmp = hash(dev,block); tmp != NULL; tmp = tmp->b_next)
		if (tmp->b_dev == dev && tmp->b_blocknr == block)
			return tmp;
	return NULL;
}

//利用hash表在告訴緩衝區中尋找制定緩衝塊。找到即上鎖
struct buffer_head * get_hash_table(int dev, int block)
{
	struct buffer_head * bh;

	for (;;) {
		if (!(bh = find_buffer(dev,block)))
			return NULL;
		bh->b_count++;
		wait_on_buffer(bh);
		if (bh->b_dev == dev && bh->b_blocknr == block)
			return bh;
		//睡眠期間。設備號或塊號變化，則撤銷對它的引用。重新尋找
		bh->b_count--;
	}
}








void bread_page(unsigned long address,int dev,int b[4])
{

}
struct buffer_head * bread(int dev,int block)
{
}

void brelse(struct buffer_head * buf)
{
}
struct buffer_head * breada(int dev,int first, ...)
{

}


