/*
 * 实现终端屏幕写函数，及终端屏幕显示操控操作
 * 控制台的输入输出 con_init con_wirte
 * VT102
 */
#include <linux/sched.h>
#include <linux/tty.h>
#include <asm/io.h>
#include <asm/system.h>

#define ORIG_X (*(unsigned char *)0x90000) //初始光标列号
#define ORIG_Y (*(unsigned char *)0x90001) //行号
#define ORIG_VIDEO_PAGE (*(unsigned short *)0x90004) //显示页面
#define ORIG_VIDEO_MODE ((*(unsigned short *)0x90006) & 0xff) //显示模式
#define ORIG_VIDEO_COLS (((*(unsigned short *)0x90006) & 0xff00) >> 8) //字符列数
#define ORIG_VIDEO_LINES (25) //显示行数
#define ORIG_VIDEO_EGA_AX (*(unsigned short *)0x90008) //[?]
#define ORIG_VIDEO_EGA_BX (*(unsigned short *)0x9000a) //显示内存大小和色彩模式
#define ORIG_VIDEO_EGA_CX (*(unsigned short *)0x9000c) //显示卡特性参数

/*定义显示器单色/彩色显示模式类型符号*/
#define VIDEO_TYPE_MDA		0x10	/* Monochrome Text Display	单色文本*/
#define VIDEO_TYPE_CGA		0x11	/* CGA Display CGA显示器			*/
#define VIDEO_TYPE_EGAM		0x20	/* EGA/VGA in Monochrome Mode单色	*/
#define VIDEO_TYPE_EGAC		0x21	/* EGA/VGA in Color Mode彩色	*/

#define NPAR 16 //转义字符序列中最大参数个数

extern void keyboard_interrupt(void);

//使用的显示类型
static unsigned char	video_type;		/* Type of display being used	*/
//屏幕文本列数
static unsigned long	video_num_columns;	/* Number of text columns	*/
//屏幕每行使用的字节数
static unsigned long	video_size_row;		/* Bytes per row		*/
//屏幕文本行数
static unsigned long	video_num_lines;	/* Number of test lines		*/
//初始显示页面
static unsigned char	video_page;		/* Initial video page		*/
//显示内存起止地址
static unsigned long	video_mem_start;	/* Start of video RAM		*/
//显示内存结束地址
static unsigned long	video_mem_end;		/* End of video RAM (sort of)	*/
//显示控制索引寄存器端口
static unsigned short	video_port_reg;		/* Video register select port	*/
//控制数据寄存器端口
static unsigned short	video_port_val;		/* Video register value port	*/
//擦除字符属性及字符
static unsigned short	video_erase_char;	/* Char+Attrib to erase with	*/


/*卷屏操作*/

//滚屏起始内存地址
static unsigned long	origin;		/* Used for EGA/VGA fast scroll	*/
//滚屏结束内存地址
static unsigned long	scr_end;	/* Used for EGA/VGA fast scroll	*/
//当前光标对应的显示内存位置
static unsigned long	pos;
//当前光标位置
static unsigned long	x,y;
//滚动时行号
static unsigned long	top,bottom;
//ANSI转义字符序列处理状态
static unsigned long	state=0;
//ANSI转义字符序列参数个数和参数数组
static unsigned long	npar,par[NPAR];
//收到问号字符标志
static unsigned long	ques=0;
//字符属性 黑底百字
static unsigned char	attr=0x07;

//系统蜂鸣函数
static void sysbeep(void);

/*终端回应ESC-Z csi0c*/
#define RESPONSE "\033[?1;2c"


/*跟踪光标当前位置*/
static inline void gotoxy(unsigned int new_x, unsigned int new_y)
{
	if (new_x > video_num_columns || new_y >= video_num_lines)
		return ;
	x = new_x;
	y = new_y;
	pos = origin + y*video_size_row + (x<<1); //1列用2字节表示
}


/*设置滚屏起始显示内存地址*/
static inline void set_origin(void)
{
	cli();
	outb_p(12,video_port_reg);//选择数据寄存器r12.输出卷屏起始位置高字节
	outb_p(0xff&((origin-video_mem_start)>>9),video_port_val);
	outb_p(13,video_port_reg); //输出卷屏起始低字节
	outb_p(0xff&((origin-video_mem_start)>>1),video_port_val);
	sti();
}


/*向上卷动一行*/
static void scrup(void)
{
	if (video_type == VIDEO_TYPE_EGAC || video_type == VIDEO_TYPE_EGAM) {
		if (!top && bottom == video_num_lines) {
			origin += video_size_row;
			pos += video_size_row;
			scr_end += video_size_row;
			if (scr_end > video_mem_end) {
				__asm__("cld\n\t"
					"rep\n\t"
					"movsl\n\t"
					"movl video_num_columns,%1\n\t"
					"rep\n\t"
					"stosw"
					::"a" (video_erase_char),
					"c" ((video_num_lines-1)*video_num_columns>>1),
					"D" (video_mem_start),
					"S" (origin)
					:);
				scr_end -= origin-video_mem_start;
				pos -= origin-video_mem_start;
				origin = video_mem_start;
			} else {
				__asm__("cld\n\t"
					"rep\n\t"
					"stosw"
					::"a" (video_erase_char),
					"c" (video_num_columns),
					"D" (scr_end-video_size_row)
					:);
			}
			set_origin();
		} else {
			__asm__("cld\n\t"
				"rep\n\t"
				"movsl\n\t"
				"movl video_num_columns,%%ecx\n\t"
				"rep\n\t"
				"stosw"
				::"a" (video_erase_char),
				"c" ((bottom-top-1)*video_num_columns>>1),
				"D" (origin+video_size_row*top),
				"S" (origin+video_size_row*(top+1))
				:);
		}
	} else {
		/*Not EDA/VGA*/
			__asm__("cld\n\t"
			"rep\n\t"
			"movsl\n\t"
			"movl video_num_columns,%%ecx\n\t"
			"rep\n\t"
			"stosw"
			::"a" (video_erase_char),
			"c" ((bottom-top-1)*video_num_columns>>1),
			"D" (origin+video_size_row*top),
			"S" (origin+video_size_row*(top+1))
			:);
	}
}

/*向下滚动一行*/
static void scrdown(void)
{
	if (video_type == VIDEO_TYPE_EGAC || video_type == VIDEO_TYPE_EGAM) {
		__asm__("std\n\t"
			"rep\n\t"
			"movsl\n\t"
			"addl $2,%%edi\n\t"	/* %edi has been decremented by 4 */
			"movl video_num_columns,%%ecx\n\t"
			"rep\n\t"
			"stosw\n\t"
			"cld"
			::"a" (video_erase_char),
			"c" ((bottom-top-1)*video_num_columns>>1),
			"D" (origin+video_size_row*bottom-4),
			"S" (origin+video_size_row*(bottom-1)-4)
			:);
	}
	else {
		/*Not EGA...*/
		__asm__("std\n\t"
			"rep\n\t"
			"movsl\n\t"
			"addl $2,%%edi\n\t"	/* %edi has been decremented by 4 */
			"movl video_num_columns,%%ecx\n\t"
			"rep\n\t"
			"stosw\n\t"
			"cld"
			::"a" (video_erase_char),
			"c" ((bottom-top-1)*video_num_columns>>1),
			"D" (origin+video_size_row*bottom-4),
			"S" (origin+video_size_row*(bottom-1)-4)
			:);
	}
}


/*光标位置下移一行*/
//line feed 换行
static void lf(void)
{
	if (y + 1 < bottom) {
		y++;
		pos += video_size_row;
		return ;
	}
	scrup();
}

/*光标在同列上移一行*/
//reverse index 反向索引 指控制字符RI 或转义字符ESC M
static void ri(void)
{
	if (y > top) {
		y--;
		pos -= video_size_row;
		return ;
	}
	scrdown();
}

//光标回到第一列 （0列）
//carriage return 回车
static void cr(void)
{
	pos -= x << 1;
	x = 0;
}

/*擦除光标前一字符 空格代替 del*/
static void del(void)
{
	if (x) {
		pos -= 2;
		x--;
		*(unsigned short *)pos = video_erase_char;
	}
}


/*删除屏幕上与光标位置相关部分*/
//ESC PS=0 删除光标到屏幕底端  1 删除屏幕开始到光标处
// 2 整屏删除
static void csi_J(int par)
{
	long count;
	long start;
	switch (par) {
		case 0:
			count = (scr_end-pos)>>1;
			start = pos;
			break;
		case 1:
			count = (pos-origin)>>1;
			start = origin;
			break;
		case 2:
			count = video_num_columns * video_num_lines;
			start = origin;
			break;
		default:
			return ;
	}
	__asm__("cld\n\t"
			"rep\n\t"
			"stosw\n\t"
			::"c" (count),
			"D" (start),"a" (video_erase_char)
			:);
}

//删除上一行与光标位置相关部分
//0 删除到行尾 1 从开始删除  2 整行删除
static void csi_K(int par)
{
	long count;
	long start;

	switch (par) {
		case 0:	/* erase from cursor to end of line */
			if (x>=video_num_columns)
				return;
			count = video_num_columns-x;
			start = pos;
			break;
		case 1:	/* erase from start of line to cursor */
			start = pos - (x<<1);
			count = (x<video_num_columns)?x:video_num_columns;
			break;
		case 2: /* erase whole line */
			start = pos - (x<<1);
			count = video_num_columns;
			break;
		default:
			return;
	}
	__asm__("cld\n\t"
		"rep\n\t"
		"stosw\n\t"
		::"c" (count),
		"D" (start),"a" (video_erase_char)
		:);
}


//设置显示字符属性 0 默认  1加粗  4加下划线7反显27正显
void csi_m(void)
{
	int i;

	for (i=0;i<=npar;i++)
		switch (par[i]) {
			case 0:attr=0x07;break;
			case 1:attr=0x0f;break;
			case 4:attr=0x0f;break;
			case 7:attr=0x70;break;
			case 27:attr=0x07;break;
		}
}

/*设置显示光标*/
static inline void set_cursor(void)
{
	cli();
	outb_p(14, video_port_reg);
	outb_p(0xff&((pos-video_mem_start)>>9), video_port_val);
	outb_p(15, video_port_reg);
	outb_p(0xff&((pos-video_mem_start)>>1), video_port_val);
	sti();
}

/*发送对VT100的响应序列*/
static void respond(struct tty_struct * tty)
{
	char * p = RESPONSE;
	cli();
	while (*p) {
		PUTCH(*p,tty->read_q);
		p++;
	}
	sti();
	copy_to_cooked(tty);
}

/*在光标处插入一空格字符*/
static void insert_char(void)
{
	int i=x;
	unsigned short tmp, old = video_erase_char;
	unsigned short * p = (unsigned short *) pos;

	while (i++<video_num_columns) {
		tmp=*p;
		*p=old;
		old=tmp;
		p++;
	}
}

/*光标处插入一行*/
static void insert_line(void)
{
	int oldtop,oldbottom;

	oldtop=top;
	oldbottom=bottom;
	top=y;
	bottom = video_num_lines;
	scrdown();
	top=oldtop;
	bottom=oldbottom;
}

//删除一个字符
static void delete_char(void)
{
	int i;
	unsigned short * p = (unsigned short *) pos;

	if (x>=video_num_columns)
		return;
	i = x;
	while (++i < video_num_columns) {
		*p = *(p+1);
		p++;
	}
	*p = video_erase_char;
}

//删除光标所在行
static void delete_line(void)
{
	int oldtop,oldbottom;

	oldtop=top;
	oldbottom=bottom;
	top=y;
	bottom = video_num_lines;
	scrup();
	top=oldtop;
	bottom=oldbottom;
}

//在光标处插入nr个字符
static void csi_at(unsigned int nr)
{
	if (nr > video_num_columns)
		nr = video_num_columns;
	else if (!nr)
		nr = 1;
	while (nr--)
		insert_char();
}

//光标处插入nr行
static void csi_L(unsigned int nr)
{
	if (nr > video_num_lines)
		nr = video_num_lines;
	else if (!nr)
		nr = 1;
	while (nr--)
		insert_line();
}

//删除光标nr字符
static void csi_P(unsigned int nr)
{
	if (nr > video_num_columns)
		nr = video_num_columns;
	else if (!nr)
		nr = 1;
	while (nr--)
		delete_char();
}

//删除光标处nr行
static void csi_M(unsigned int nr)
{
	if (nr > video_num_lines)
		nr = video_num_lines;
	else if (!nr)
		nr=1;
	while (nr--)
		delete_line();
}

static int saved_x = 0;
static int saved_y = 0;

//保存当前光标位置
static void save_cur(void)
{
	saved_x=x;
	saved_y=y;
}

//恢复光标
static void restore_cur(void)
{
	gotoxy(saved_x, saved_y);
}



//控制台写函数
void con_write(struct tty_struct * tty)
{
	int nr;
	char c;

	nr = CHARS(tty->write_q);
	while (nr--) {
		GETCH(tty->write_q,c);
		switch(state) {
			case 0:
				if (c>31 && c<127) {
					if (x>=video_num_columns) {
						x -= video_num_columns;
						pos -= video_size_row;
						lf();
					}
					__asm__("movb %%bl,%%ah\n\t"
						"movw %%ax,%1\n\t"
						::"a" (c),"m" (*(short *)pos),"b" (attr)
						:);
					pos += 2;
					x++;
				} else if (c==27)
					state=1;
				else if (c==10 || c==11 || c==12)
					lf();
				else if (c==13)
					cr();
				else if (c==ERASE_CHAR(tty))
					del();
				else if (c==8) {
					if (x) {
						x--;
						pos -= 2;
					}
				} else if (c==9) {
					c=8-(x&7);
					x += c;
					pos += c<<1;
					if (x>video_num_columns) {
						x -= video_num_columns;
						pos -= video_size_row;
						lf();
					}
					c=9;
				} else if (c==7)
					sysbeep();
				break;
			case 1:
				state=0;
				if (c=='[')
					state=2;
				else if (c=='E')
					gotoxy(0,y+1);
				else if (c=='M')
					ri();
				else if (c=='D')
					lf();
				else if (c=='Z')
					respond(tty);
				else if (x=='7')
					save_cur();
				else if (x=='8')
					restore_cur();
				break;
			case 2:
				for(npar=0;npar<NPAR;npar++)
					par[npar]=0;
				npar=0;
				state=3;
				if ((ques=(c=='?')))
					break;
			case 3:
				if (c==';' && npar<NPAR-1) {
					npar++;
					break;
				} else if (c>='0' && c<='9') {
					par[npar]=10*par[npar]+c-'0';
					break;
				} else state=4;
			case 4:
				state=0;
				switch(c) {
					case 'G': case '`':
						if (par[0]) par[0]--;
						gotoxy(par[0],y);
						break;
					case 'A':
						if (!par[0]) par[0]++;
						gotoxy(x,y-par[0]);
						break;
					case 'B': case 'e':
						if (!par[0]) par[0]++;
						gotoxy(x,y+par[0]);
						break;
					case 'C': case 'a':
						if (!par[0]) par[0]++;
						gotoxy(x+par[0],y);
						break;
					case 'D':
						if (!par[0]) par[0]++;
						gotoxy(x-par[0],y);
						break;
					case 'E':
						if (!par[0]) par[0]++;
						gotoxy(0,y+par[0]);
						break;
					case 'F':
						if (!par[0]) par[0]++;
						gotoxy(0,y-par[0]);
						break;
					case 'd':
						if (par[0]) par[0]--;
						gotoxy(x,par[0]);
						break;
					case 'H': case 'f':
						if (par[0]) par[0]--;
						if (par[1]) par[1]--;
						gotoxy(par[1],par[0]);
						break;
					case 'J':
						csi_J(par[0]);
						break;
					case 'K':
						csi_K(par[0]);
						break;
					case 'L':
						csi_L(par[0]);
						break;
					case 'M':
						csi_M(par[0]);
						break;
					case 'P':
						csi_P(par[0]);
						break;
					case '@':
						csi_at(par[0]);
						break;
					case 'm':
						csi_m();
						break;
					case 'r':
						if (par[0]) par[0]--;
						if (!par[1]) par[1] = video_num_lines;
						if (par[0] < par[1] &&
						    par[1] <= video_num_lines) {
							top=par[0];
							bottom=par[1];
						}
						break;
					case 's':
						save_cur();
						break;
					case 'u':
						restore_cur();
						break;
				}
		}
	}
	set_cursor();
}

void con_init(void)
{
	register unsigned char a;
	char *display_desc = "????";
	char *display_ptr;
	
	video_num_columns = ORIG_VIDEO_COLS; //字符列数
	video_size_row = video_num_columns * 2; //每行字符需要使用的字节数
	video_num_lines = ORIG_VIDEO_LINES;
	video_page = ORIG_VIDEO_PAGE;
	video_erase_char = 0x0720; //擦出字符 0x20字符 0x07属性

	if (ORIG_VIDEO_MODE == 7) {
		video_mem_start = 0xb0000; //单显映像内存
		video_port_reg = 0x3b4;
		video_port_val = 0x3b5;

		if ((ORIG_VIDEO_EGA_BX & 0xff) != 0x10) {
			video_type = VIDEO_TYPE_EGAM;
			video_mem_end = 0xb8000; //显示末端内存
			display_desc = "EGAm"; //显示描述字符串
		} else {
			video_type = VIDEO_TYPE_MDA;
			video_mem_end = 0xb2000;
			display_desc = "*MDA";
		}
	} else {
		//彩色显示卡
		video_mem_start = 0xb8000;
		video_port_reg = 0x3d4;
		video_port_val = 0x3d5;

		if ((ORIG_VIDEO_EGA_BX & 0xff) != 0x10) {
			video_type = VIDEO_TYPE_EGAC;
			video_mem_end = 0xbc000;
			display_desc = "EGAc";
		} else {
			video_type = VIDEO_TYPE_CGA;
			video_mem_end = 0xba000;
			display_desc = "*CGA";
		}
	}
	display_ptr = ((char *)video_mem_start) + video_size_row - 8;
	while (*display_desc) {
		*display_ptr++ = *display_desc++;
		display_ptr++;
	}

	/*初始化滚屏的变量*/
	origin = video_mem_start;
	scr_end = video_mem_start + video_num_lines * video_size_row;
	top = 0;
	bottom = video_num_lines;
	
	gotoxy(ORIG_X,ORIG_Y);
	set_trap_gate(0x21,&keyboard_interrupt);
	outb_p(inb_p(0x21)&0xfd,0x21);
	a = inb_p(0x61);
	outb_p(a|0x80,0x61);
	outb(a,0x61);
}


/*停止蜂鸣*/
void sysbeepstop(void)
{
	outb(inb_p(0x61)&0xFC,0x61);
}

int beepcount = 0; //蜂鸣时间滴答计数

//开通蜂鸣
static void sysbeep(void)
{
	outb_p(inb_p(0x61)|3,0x61);
	outb_p(0xB6,0x43);
	outb_p(0x37,0x42);
	beepcount = HZ/8;
}


