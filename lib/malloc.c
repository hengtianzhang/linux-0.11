/*
 *
 */
#include <linux/kernel.h>
#include <linux/mm.h>
#include <asm/system.h>

/* 存储桶描述符 */
struct bucket_desc { /* 16 bytes */
	void *page; /* 该描述符对应的内存页面指针 */
	struct bucket_desc *next;
	void *freeptr; /* 指向本桶中空闲内存位置的指针 */
	unsigned short refcnt; /*引用计数 */
	unsigned short bucket_size; /* 本描述符对应存储桶的大小 */
};

/*存储桶描述符目录结构 */
struct _bucket_dir { /* 8 bytes */
	int size; /* 该存储桶的大小 */
	struct bucket_desc *chain; /* 该存储桶目录项的桶描述符链表指针 */
};

struct _bucket_dir bucket_dir[] = {
	{ 16, (struct bucket_desc *)0 },   { 32, (struct bucket_desc *)0 },
	{ 64, (struct bucket_desc *)0 },   { 128, (struct bucket_desc *)0 },
	{ 256, (struct bucket_desc *)0 },  { 512, (struct bucket_desc *)0 },
	{ 1024, (struct bucket_desc *)0 }, { 2048, (struct bucket_desc *)0 },
	{ 4096, (struct bucket_desc *)0 }, { 0, (struct bucket_desc *)0 }
};

struct bucket_desc *free_bucket_desc = (struct bucket_desc *)0;

static inline void init_bucket_desc()
{
	struct bucket_desc *bdesc, *first;
	int i;

	/* 申请一页内存，用于存放桶描述符。 */
	first = bdesc = (struct bucket_desc *)get_free_page();
	if (!bdesc)
		panic("Out of memory in init_bucket_desc()");
	/* 计算一页内存中可存放的桶描述符数量 */
	for (i = PAGE_SIZE / sizeof(struct bucket_desc); i > 1; i--) {
		bdesc->next = bdesc + 1;
		bdesc++;
	}

	bdesc->next = free_bucket_desc;
	free_bucket_desc = first;
}

void *malloc(unsigned int len)
{
	struct _bucket_dir *bdir;
	struct bucket_desc *bdesc;
	void *retval;

	for (bdir = bucket_dir; bdir->size; bdir++)
		if (bdir->size >= len)
			break;
	if (!bdir->size) {
		printk("malloc called with impossibly largument (%d)\n", len);
		panic("malloc: bad arg");
	}

	cli();
	for (bdesc = bdir->chain; bdesc; bdesc = bdesc->next)
		if (bdesc->freeptr)
			break;

	if (!bdesc) {
		char *cp;
		int i;

		if (!free_bucket_desc)
			init_bucket_desc();
		bdesc = free_bucket_desc;
		free_bucket_desc = bdesc->next;
		bdesc->refcnt = 0;
		bdesc->bucket_size = bdir->size;
		bdesc->page = bdesc->freeptr =
			(void *)(cp = (char *)get_free_page());
		if (!cp)
			panic("Out of memory in kernel malloc()");

		for (i = PAGE_SIZE / bdir->size; i > 1; i--) {
			*((char **)cp) = cp + bdir->size;
			cp += bdir->size;
		}
		*((char **)cp) = 0;
		bdesc->next = bdir->chain;
		bdir->chain = bdesc;
	}
	retval = (void *)bdesc->freeptr;
	bdesc->freeptr = *((void **)retval);
	bdesc->refcnt++;
	sti();
	return retval;
}

void free_s(void *obj, int size)
{
	void *page;
	struct _bucket_dir *bdir;
	struct bucket_desc *bdesc, *prev;
	page = (void *)((unsigned long)obj & 0xfffff000);
	for (bdir = bucket_dir; bdir->size; bdir++) {
		prev = 0;
		if (bdir->size < size)
			continue;
		for (bdesc = bdir->chain; bdesc; bdesc = bdesc->next) {
			if (bdesc->page == page)
				goto found;
			prev = bdesc;
		}
	}
	panic("Bad address passed to kernel free_s()");
found:
	cli();
	*((void **)obj) = bdesc->freeptr;
	bdesc->freeptr = obj;
	bdesc->refcnt--;
	if (bdesc->refcnt == 0) {
		if ((prev && (prev->next != bdesc)) ||
		    (!prev && (bdir->chain != bdesc)))
			for (prev = bdir->chain; prev; prev = prev->next)
				if (prev->next == bdesc)
					break;

		if (prev)
			prev->next = bdesc->next;
		else {
			if (bdir->chain != bdesc)
				panic("malloc bucket chains corrupted");
			bdir->chain = bdesc->next;
		}
		free_page((unsigned long)bdesc->page);
		bdesc->next = free_bucket_desc;
		free_bucket_desc = bdesc;
	}
	sti();
	return;
}
