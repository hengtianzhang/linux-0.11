/*
   终端 ：
          进程读/写
              |
        终端驱动程序上层接口
        	  |
          行规则程序
              |
         设备驱动程序
         	  |
           字符设备
   1：串行端口终端 /dev/ttySn
   		/dev/S0 /dev/S1  4,64   4,65 对应DOS COM1  ,COM2
   2：伪终端 /dev/ptyp  ,/dev/ttyp
   3: 控制终端 /dev/tty
		进程控制终端
   4: 控制台 /dev/ttyn,/dev/console
   5: 其他
 */
/* 每个tty设备有三个缓冲队列。
   读缓冲队列read_q  
   写缓冲队列write_q
   辅助缓冲队列secondary
 */
#include <ctype.h> //字符类型判断和转换宏
#include <errno.h>
#include <signal.h>

//信号在信号位图中对应的比特屏蔽位
#define ALRMMASK (1<<(SIGALRM-1)) //警告信号屏蔽位
#define KILLMASK (1<<(SIGKILL-1)) //终止信号屏蔽位
#define INTMASK (1<<(SIGINT-1)) //键盘中断信号屏蔽位
#define QUITMASK (1<<(SIGQUIT-1)) //键盘退出信号屏蔽位
#define TSTPMASK (1<(SIGTSTP-1)) //tty发出的停止进程信号屏蔽位

#include <linux/sched.h>
#include <linux/tty.h>
#include <asm/segment.h>
#include <asm/system.h>

//获取termios结构中三个模式标志集之一
#define _L_FLAG(tty,f)	((tty)->termios.c_lflag & f) //本地模式标志
#define _I_FLAG(tty,f)	((tty)->termios.c_iflag & f) //输入模式
#define _O_FLAG(tty,f)	((tty)->termios.c_oflag & f) //输出

/*取termios结构终端特殊（本地）模式标志集中的一个标志*/
#define L_CANON(tty)	_L_FLAG((tty),ICANON) //取规范模式标志
#define L_ISIG(tty)	_L_FLAG((tty),ISIG) //信号标志
#define L_ECHO(tty)	_L_FLAG((tty),ECHO) //回显字符标志
#define L_ECHOE(tty)	_L_FLAG((tty),ECHOE) //规范模式时取回显标志
#define L_ECHOK(tty)	_L_FLAG((tty),ECHOK) //规范模式时取KILL擦出当前行标志
#define L_ECHOCTL(tty)	_L_FLAG((tty),ECHOCTL) //取回显控制字符标志
#define L_ECHOKE(tty)	_L_FLAG((tty),ECHOKE) //规范模式取KILL擦除行并回显标志

/**/
#define I_UCLC(tty)	_I_FLAG((tty),IUCLC) //取大写到小写标志
#define I_NLCR(tty)	_I_FLAG((tty),INLCR) //取换行符NL转回车符CR标志
#define I_CRNL(tty)	_I_FLAG((tty),ICRNL) //取回车符CR转换行符NL标志
#define I_NOCR(tty)	_I_FLAG((tty),IGNCR) //取忽略回车符CR标志

#define O_POST(tty)	_O_FLAG((tty),OPOST) //取执行输出处理标志
#define O_NLCR(tty)	_O_FLAG((tty),ONLCR) //取换行符NL转回车换行符CR-NL标志
#define O_CRNL(tty)	_O_FLAG((tty),OCRNL) //取回车符CR转换行符标志
#define O_NLRET(tty)	_O_FLAG((tty),ONLRET) //取换行符NL执行回车标志
#define O_LCUC(tty)	_O_FLAG((tty),OLCUC) //取小写转大写标志


//tty数据结构。三个初始化项数据  控制台，串口1，串口终端2
struct tty_struct tty_table[] = {
	{
		{ICRNL,		/* change incoming CR to NL 输入CR转NL*/
		OPOST|ONLCR,	/* change outgoing NL to CRNL 输出NL转CRNL*/
		0, //控制模式标志集
		ISIG | ICANON | ECHO | ECHOCTL | ECHOKE, //本地模式标志
		0,		/* console termio */ //线路规程 0-TTY
		INIT_C_CC}, //控制字符数组
		0,			/* initial pgrp */ //所属初始进程组
		0,			/* initial stopped */ //初始停止标志
		con_write, //控制台写函数
		{0,0,0,0,""},		/* console read-queue */ //读缓冲
		{0,0,0,0,""},		/* console write-queue */ //写缓冲
		{0,0,0,0,""}		/* console secondary queue */ //辅助队列
	},{
		{0, /* no translation */
		0,  /* no translation */
		B2400 | CS8,
		0,
		0,
		INIT_C_CC},
		0,
		0,
		rs_write,
		{0x3f8,0,0,0,""},		/* rs 1 */
		{0x3f8,0,0,0,""},
		{0,0,0,0,""}
	},{
		{0, /* no translation */
		0,  /* no translation */
		B2400 | CS8,
		0,
		0,
		INIT_C_CC},
		0,
		0,
		rs_write,
		{0x2f8,0,0,0,""},		/* rs 2 */
		{0x2f8,0,0,0,""},
		{0,0,0,0,""}
	}
};


/*tty读写缓冲结构地址表，rs_io.s使用*/
struct tty_queue * table_list[] = {
	&tty_table[0].read_q, &tty_table[0].write_q,
	&tty_table[1].read_q, &tty_table[1].write_q,
	&tty_table[2].read_q, &tty_table[2].write_q
};


void tty_init(void)
{
	rs_init();
	con_init();
}



//tty键盘终端字符 处理
void tty_intr(struct tty_struct * tty, int mask)
{
	int i;
	if (tty->pgrp <= 0) //0位init进程
		return ;
	for (i = 0; i < NR_TASKS; i++) {
		if (task[i] && task[i]->pgrp == tty->pgrp)
			task[i]->signal |= mask; //向同组所有进程发送mask信号。(set)
	}
}

//如果队列缓冲区空则让进程进入可中断睡眠状态
static void sleep_if_empty(struct tty_queue * queue)
{
	cli();
	while (!current->signal && EMPTY(*queue))
		interruptible_sleep_on(&queue->proc_list);
	sti();
}

static void sleep_if_full(struct tty_queue * queue)
{
	if (!FULL(*queue))
		return;
	cli();
	while (!current->signal && LEFT(*queue)<128)
		interruptible_sleep_on(&queue->proc_list);
	sti();
}


//按键等待
void wait_for_keypress(void)
{
	sleep_if_empty(&tty_table[0].secondary);
}


//复制成规则模式字符序列
void copy_to_cooked(struct tty_struct * tty)
{
	signed char c;

	while (!EMPTY(tty->read_q) && !FULL(tty->secondary)) {
		GETCH(tty->read_q,c);
		if (c==13) //CR回车
			if (I_CRNL(tty))
				c=10;
			else if (I_NOCR(tty))
				continue;
			else ;
		else if (c==10 && I_NLCR(tty))
			c=13;
		if (I_UCLC(tty))
			c=tolower(c);
		if (L_CANON(tty)) {
			if (c==KILL_CHAR(tty)) {
				/* deal with killing the input line */
				while(!(EMPTY(tty->secondary) ||
						(c=LAST(tty->secondary))==10 ||
						c==EOF_CHAR(tty))) {
					if (L_ECHO(tty)) {
						if (c<32)
							PUTCH(127,tty->write_q);
						PUTCH(127,tty->write_q);
						tty->write(tty);
					}
					DEC(tty->secondary.head);
				}
				continue;
			}
			if (c==ERASE_CHAR(tty)) {
				if (EMPTY(tty->secondary) ||
				   (c=LAST(tty->secondary))==10 ||
				   c==EOF_CHAR(tty))
					continue;
				if (L_ECHO(tty)) {
					if (c<32)
						PUTCH(127,tty->write_q);
					PUTCH(127,tty->write_q);
					tty->write(tty);
				}
				DEC(tty->secondary.head);
				continue;
			}
			if (c==STOP_CHAR(tty)) {
				tty->stopped=1;
				continue;
			}
			if (c==START_CHAR(tty)) {
				tty->stopped=0;
				continue;
			}
		}
		if (L_ISIG(tty)) {
			if (c==INTR_CHAR(tty)) {
				tty_intr(tty,INTMASK);
				continue;
			}
			if (c==QUIT_CHAR(tty)) {
				tty_intr(tty,QUITMASK);
				continue;
			}
		}
		if (c==10 || c==EOF_CHAR(tty))
			tty->secondary.data++;
		if (L_ECHO(tty)) {
			if (c==10) {
				PUTCH(10,tty->write_q);
				PUTCH(13,tty->write_q);
			} else if (c<32) {
				if (L_ECHOCTL(tty)) {
					PUTCH('^',tty->write_q);
					PUTCH(c+64,tty->write_q);
				}
			} else
				PUTCH(c,tty->write_q);
			tty->write(tty);
		}
		PUTCH(c,tty->secondary);
	}
	wake_up(&tty->secondary.proc_list);
}


//tty_read
//从辅助缓冲队列读取指定数量字符。放到用户指定的缓冲区
int tty_read(unsigned channel, char * buf, int nr)
{
	struct tty_struct * tty;
	char c, * b = buf;
	int minimum, time, flag = 0;
	long oldalarm;
	if (channel > 2 || nr < 0) return -1;
	tty = &tty_table[channel];

	oldalarm = current->alarm; //保存进程当前报警定时器
	time = 10L*tty->termios.c_cc[VTIME]; //设置读操作超时定时值
	minimum = tty->termios.c_cc[VMIN];	//最少需要读取字符
	if (time && !minimum) {
		minimum = 1;
		if (flag = (!oldalarm || time + jiffies < oldalarm))
			current->alarm = time + jiffies;
	}
	if (minimum > nr)
		minimum = nr;
	while (nr > 0) {
		if (flag && (current->signal & ALRMMASK)) {
			//定时时间已到
			current->signal &= ~ALRMMASK;
			break;
		}
		if (current->signal) //进程原定时已到。或受到其他信号
			break;
		if (EMPTY(tty->secondary) || (L_CANON(tty) &&
			!tty->secondary.data && LEFT(tty->secondary)>20)) {
			sleep_if_empty(&tty->secondary);
			continue;
		}
		do {
			GETCH(tty->secondary,c);
			if (c == EOF_CHAR(tty) || c== 10)
				tty->secondary.data--; //字符行数减1
			if (c == EOF_CHAR(tty) && L_CANON(tty))
				return (b-buf);
			else {
				put_fs_byte(c,b++);
				if (!--nr)
					break;
			}
		} while (nr > 0 && !EMPTY(tty->secondary));
		if (time && !L_CANON(tty)) 
			if (flag = (!oldalarm || time + jiffies < oldalarm))
				current->alarm = time + jiffies;
			else
				current->alarm = oldalarm;
		if (L_CANON(tty)) {
			if (b-buf)
				break;
		} else if (b-buf >= minimum)
			break;
	}
	current->alarm = oldalarm;
	if (current->signal && !(b-buf))
		return -EINTR;
	return (b-buf);//以读字符数
}




//tty写入写队列缓冲区
int tty_write(unsigned channel, char * buf, int nr)
{
	static cr_flag = 0;
	struct tty_struct * tty;
	char c, *b = buf;

	if (channel > 2 || nr < 0) return -1;
	tty = channel + tty_table;
	while (nr > 0) {
		sleep_if_full(&tty->write_q);
		if (current->signal)
			break;
		while (nr > 0 && !FULL(tty->write_q)) {
			c = get_fs_byte(b);
			if (O_POST(tty)) {
				if (c == '\r' && O_CRNL(tty))
					c = '\n';
				else if (c == '\n' && O_NLRET(tty))
					c = '\r';
				if (c == '\n' && !cr_flag && O_NLCR(tty)) {
					cr_flag = 1;
					PUTCH(13,tty->write_q);
					continue;
				}
				if (O_LCUC(tty))
					c = toupper(c);
			}
			b++; nr--;
			cr_flag = 0;
			PUTCH(c, tty->write_q);
		}
		tty->write(tty);
		if (nr > 0)
			schedule();
	}
	return (b-buf);
}


//tty中断处理 字符规范模式处理
void do_tty_interrupt(int tty)
{
	copy_to_cooked(tty_table + tty);
}



void chr_dev_init(void)
{

}






