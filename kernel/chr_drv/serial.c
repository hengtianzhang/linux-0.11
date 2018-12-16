/*
 * 串口初始化
 * 实现rs232的输入输出
 */
#include <linux/tty.h>
#include <linux/sched.h>
#include <asm/system.h>
#include <asm/io.h>

//达到就发送
#define WAKEUP_CHARS (TTY_BUF_SIZE/4)

extern void rs1_interrupt(void);
extern void rs2_interrupt(void);

//初始化串口 设置波特率2400bps。允许中断 串1 0x3F8 串2 0x2F8
static void init(int port)
{
	outb_p(0x80,port+3);
	outb_p(0x30,port); //波特率低字节0x30 2400bps
	outb_p(0x00,port+1); //波特率高字节 0x00
	outb_p(0x03,port+3);
	outb_p(0x0b,port+4);
	outb_p(0x0d,port+1);//除写以外，允许所有中断源中断

	(void)inb_p(port);
}

//初始化串口中断程序和串行接口
void rs_init(void)
{
	set_intr_gate(0x24,rs1_interrupt); //串口1 IRQ4
	set_intr_gate(0x23,rs2_interrupt); //串口2 IRQ3
	init(tty_table[1].read_q.data);//.data 端口基址
	init(tty_table[2].read_q.data);
	outb(inb_p(0x2)&0xE7,0x21); //允许主8259A响应IRQ3 IRQ4
}

/*tty_write以将数据写入队列调用此函数。串行数据发送输出*/
void rs_write(struct tty_struct * tty)
{
	cli();
	if (!EMPTY(tty->write_q)) 
	//不为空则读取中断允许寄存器。添加发送保持寄存器中断允许位1.
		outb(inb_p(tty->write_q.data+1)|0x02,tty->write_q.data+1);
	sti();
}