#ifndef _SIGNAL_H
#define _SIGNAL_H

#include <sys/types.h>

typedef int sig_atomic_t;             /*信号原子操作类型*/
typedef unsigned int sigset_t;    /*信号集类型*/

#define _NSIG           32         /*信号种类*/
#define NSIG            _NSIG

#define SIGHUP		 1      //Hang Up    挂断控制终端或进程
#define SIGINT		 2      //Interrupt  来自键盘的中断
#define SIGQUIT		 3      //Quit       来自键盘的退出
#define SIGILL		 4      //Illeagle   非法指令
#define SIGTRAP		 5      //Trap       跟踪断点
#define SIGABRT		 6      //Abort      异常结束
#define SIGIOT		 6      //IO Trap    同上
#define SIGUNUSED	 7      //Unused     没有使用
#define SIGFPE		 8      //FPE        协处理器出错
#define SIGKILL 	 9      //Kill       强迫进程终止
#define SIGUSR1		10      //Userl      用户信号1，进程可使用
#define SIGSEGV		11      //Segment Violation  无效内存引用
#define SIGUSR2		12      //User2      用户信号2，进程可使用
#define SIGPIPE		13      //Pipe       管道写出错，无读者
#define SIGALRM		14      //Alarm      实时定时器报警
#define SIGTERM		15      //Terminate  进程终止
#define SIGSTKFLT	16      //Stack Fault 栈溢出
#define SIGCHLD		17      //Child      子进程停止或终止
#define SIGCONT		18      //Continue   恢复进程继续执行
#define SIGSTOP		19      //Stop       停止进程执行
#define SIGTSTP		20      //TTY Stop   tty发出停止进程，可忽略
#define SIGTTIN		21      //TTY In     后台进程请求输入
#define SIGTTOU		22      //TTT Out    后台进程请求输出

#define SA_NOCLDSTOP    1           //当子进程处于停止状态，就不对SIGCHILD处理
#define SA_NOMASK       0x40000000  //不阻止在指定的信号处理程序中再收到该信号
#define SA_ONESHOT      0x80000000  //信号句柄一旦被调用过就恢复到默认处理句柄

/*下面用于sigprocmask(how, )改变阻塞信号集(屏蔽码)，用于改变该函数行为*/
#define SIG_BLOCK    0   //在阻塞信号集中加上给定信号
#define SIG_UNBLOCK  1   //从阻塞信号集中删除指定信号
#define SIG_SETMASK  2   //设置阻塞信号集

/*用于告知内核，让内核处理信号或忽略信号的处理*/
#define SIG_DFL   ((void (*)(int))0)  /*默认信号处理程序（信号句柄）*/
#define SIG_IGN   ((void (*)(int))1)  /*忽略信号的处理程序*/


struct sigaction {
	void (*sa_handler)(int);   //对应信号处理 可使用SIG_DFL 或SIG_IGN来忽略该信号
	sigset_t sa_mask;          //信号的屏蔽码
	int sa_flags;              //改变信号处理过程的信号集 36-38行定义
	void (*sa_restorer)(void); //恢复指针
};

/*signal函数为信号_sig安装新信号处理程序*/
void (*signal(int _sig, void (*_func)(int)))(int);


/*下面两个函数用于发送信号*/
int raise(int sig);  //向当前进程自身发送信号，等价于kill(getpid(), sig);
int kill(pid_t pid, int sig); //用于向任何进程或进程组发送信号

int sigaddset(sigset_t *mask, int signo); /*信号集中信号增加*/

int sigdelset(sigset_t *mask, int signo); /*信号集中信号删除*/

/*用于初始化进程屏蔽信号集，清空屏蔽，响应所有信号*/
int sigemptyset(sigset_t *mask);         

/*用于初始化进程屏蔽信号集，添加屏蔽，屏蔽所有信号*/
int sigfillset(sigset_t *mask);           

/*用于测试一个指定信号是否在信号集中*/
int sigismember(sigset_t *mask, int signo); 


/*对set中信号进行检测，看是否有挂起的信号。返回进程中当前被阻塞的信号集*/
int sigpending(sigset_t *set);
 
/*改变进程目前被阻塞的信号集。*/
int sigprocmask(int how, sigset_t *set, sigset_t *oldset);

/**/
int sigsuspend(sigset_t *sigmask);

int sigaction(int sig, struct sigaction *act, struct sigaction *oldact);



#endif



























































 
