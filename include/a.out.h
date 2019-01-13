#ifndef _A_OUT_H
#define _A_OUT_H

#define __GNU_EXEC_MACROS__

struct exec {
	unsigned long a_magic;        //执行文件魔数。使用N_MAGIC等宏访问。
	unsigned long a_text;         //代码长度，字节数 4
	unsigned long a_data;         //数据长度
	unsigned long a_bss;          //文件中的未初始化数据区长度
	unsigned long a_syms;         //文件中的符号表长度
	unsigned long a_entry;        //执行开始地址
	unsigned long a_trsize;       //代码重定位信息长度
	unsigned long a_drsize;       //数据重定位信息长度
};

//用于取上述exec结构中的魔数。
#ifndef N_MAGIC
#define N_MAGIC(exec) ((exec).a_magic)
#endif

#ifndef OMAGIC
/*Code indicating object file or impure executable*/
/*PDP-11 魔数0407早期使用*/
#define OMAGIC 0407 
/*指明为纯可执行文件代码  0410=0x108*/
#define NMAGIC 0410
/*指明为需求分页处理的可执行文件  结构头占用1K空间 0413=0x10b*/
#define ZMAGIC 0413
#endif
/*下面宏用于判断魔数字段正确性 ，魔数不能被识别则返回真*/
#ifndef N_BADMAG
#define N_BADMAG(x)                                  \
 (N_MAGIC(x) != OMAGIC && N_MAGIC(x) != NMAGIC        \
 && N_MAGIC(x) != ZMAGIC)
#endif

#define _N_BADMAG(x)                                  \
(N_MAGIC(X) != OMAGIC && N_MAGIC(x) != NMAGIC       \
 && N_MAGIC(x) !=ZMAGIC) 

//目标文件头结构末端到1024字节之间的长度
#define _N_HDROFF(x) (SEGMENT_SIZE - sizeof (struct exec))

//下面宏用于操作目标文件的内容。包括.o 模块文件和可执行文件
//代码部分起始偏移值
//如果文件是ZMAGIC类型的，即是执行文件，那么代码部分是从执行文件的1024字节偏移处
//开始：否则执行代码部分紧随执行头结构末端(32字节)开始，即使模块文件(OMAGIC)类型
#ifndef N_TXTOFF
#define N_TXTOFF(x) \
 (N_MAGIC(x) == ZMAGIC ? _N_HDROFF((x)) + sizeof (struct exec) : sizeof (struct exec))
#endif

//数据部分起始偏移地址。从代码部分末端开始
#ifndef N_DATOFF
#define N_DATOFF(x) (N_TXTOFF(x) + (x).a_text)
#endif 

//代码重定位信息偏移值。从数据部分末端开始。
#ifndef N_TRELOFF
#define N_TRELOFF(x) (N_TXTOFF(x) + (x).a_data)
#endif

//数据重定位信息偏移值。从代码重定位信息末端开始
#ifndef N_DRELOFF
#define N_DRELOFF(x) (N_TRELOFF(x) + (x).a_trsize)
#endif

//符号表偏移值。从上面数据段重定位表末端开始。
#ifndef N_SYMOFF
#define N_SYMOFF(x) (N_DRELOFF(x) + (x).a_drsize)
#endif

//字符串信息偏移值。从上数据重定位表末端开始
#ifndef N_STROFF
#define N_STROFF(x) (N_SYMOFF(x) + (x).a_syms)
#endif

//下面对可执行文件被加载到内存(逻辑空间)中的位置情况进行操作。
/*代码段加载后在内存中的地址*/
#ifndef N_TXTADDR
#define N_TXTADDR(x) 0
#endif


//数据段加载后在内存中地址
//未列出的名称的机器。需用户定义SEGMENT_SIZE
#if defined(vax) || defined(hp300) || defined(pyr)
#define SEGMENT_SIZE PAGE_SIZE
#endif
#ifdef	hp300
#define	PAGE_SIZE	4096
#endif
#ifdef	sony
#define	SEGMENT_SIZE	0x2000
#endif	/* Sony.  */
#ifdef is68k
#define SEGMENT_SIZE 0x20000
#endif
#if defined(m68k) && defined(PORTAR)
#define PAGE_SIZE 0x400
#define SEGMENT_SIZE PAGE_SIZE
#endif

//内核定义页4KB 段大小1KB 上面定义未使用
#define PAGE_SIZE 4096
#define SEGMENT_SIZE 1024

//以段为界限的大小 (进位方式)
#define _N_SEGMENT_ROUND(x) (((x) + SEGMENT_SIZE - 1) & ~(SEGMENT_SIZE - 1))

//代码段尾地址
#define _N_TXTENDADDR(x) (N_TXTADDR(x) + (x).a_text)

//数据段开始地址
//如果文件是OMAGIC类型 那么数据段就直接紧随代码段。否则数据
//段地址从代码段后面段边界开始1KB边界对齐 比如ZMAGIC文件
#ifndef N_DATADDR
#define N_DATADDR(x) \
	(N_MAGIC(x)==OMAGIC? (_N_TXTENDADDR(x)) \
	 : (_N_SEGMENT_ROUND (_N_TXTENDADDR(x))))
#endif

/*bss段加载到内存以后的地址*/
#ifndef N_BSSADDR
#define N_BSSADDR(x) (N_DATADDR(x) + (x).a_data)
#endif


/*下面是对目标文件中的符号表项和相关操作宏进行定义*/
//a.out 目标文件中符号表项结构
#ifndef N_NLIST_DECLARED 
struct nlist {
	union {
		char *n_name;
		struct nlist *n_next;
		long n_strx;
	} n_un;
	unsigned char n_type; //该字节分成3个字段
	unsigned n_other;
	short n_desc;
	unsigned long n_value;
};
#endif


/*定义nlist结构中n_type字段值的常量符号*/
#ifndef N_UNDF
#define N_UNDF 0
#endif
#ifndef N_ABS
#define N_ABS 2
#endif
#ifndef N_TEXT
#define N_TEXT 4
#endif
#ifndef N_DATA
#define N_DATA 6
#endif
#ifndef N_BSS
#define N_BSS 8
#endif
#ifndef N_COMM
#define N_COMM 18
#endif
#ifndef N_FN
#define N_FN 15
#endif

//以下3个常量定义是nlist结构体中n_type字段的屏蔽码(八进制)
#ifndef N_EXT
//0x01 (0b0000,0001)符号是否是外部的(全局)
#define N_EXT 1                     
#endif
#ifndef N_TYPE
//0x1e (0b0001,1110)符号的类型位
#define N_TYPE 036
#endif
#ifndef N_STAB
//0xe0 (0b1110,0000)这几个比特位用于符号调试器
#define N_STAB 0340
#endif


#define N_INDR 0xa

/*这些符号用于.o文件中是作为链接器ld的输入*/
#define N_SETA 0x14  //绝对集合元素符号
#define N_SETT 0x16  //代码集合元素符号
#define N_SETD 0x18  //数据集合元素符号
#define N_SETB 0x1A  //Bss集合元素符号

/*LD的输出*/
#define N_SETV 0x1C  //指向数据区中集合向量

#ifndef N_RELOCATION_INFO_DECLARED

/*
 * 下面结构描述单个重定位操作的执行
 * 
 * 
 */

//a.out 目标文件中代码和数据重定位信息结构
struct relocation_info {
	/*段内需要重定位的地址*/
	int r_address;
	/*与r_extern有关*/
	unsigned int r_symbolnum:24;
	unsigned int r_pcrel:1;
	unsigned int r_length:2;
	unsigned int r_extern:1;
	unsigned int r_pad:4;
};
#endif

#endif
