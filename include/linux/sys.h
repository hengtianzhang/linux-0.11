/*
 * 列出内核中所有系统调用函数原型。以及系统调用函数指针表
 */
extern int sys_setup(void);
extern int sys_exit(void);
extern int sys_fork(void);
extern int sys_read(void);
extern int sys_write(void);
extern int sys_open(void);
extern int sys_close(void);
extern int sys_waitpid(void);
extern int sys_creat(void);
extern int sys_link(void);
extern int sys_unlink(void);
extern int sys_execve(void);
extern int sys_chdir(void);
extern int sys_time(void);
extern int sys_mknod(void);
extern int sys_chmod(void);
extern int sys_chown(void);
extern int sys_break(void);
extern int sys_stat(void);
extern int sys_lseek(void);
extern int sys_getpid(void);
extern int sys_mount(void);
extern int sys_umount(void);
extern int sys_setuid(void);
extern int sys_getuid(void);
extern int sys_stime(void);
extern int sys_ptrace(void);
extern int sys_alarm(void);
extern int sys_fstat(void);
extern int sys_pause(void);
extern int sys_utime(void);
extern int sys_stty(void);
extern int sys_gtty(void);
extern int sys_access(void);
extern int sys_nice(void);
extern int sys_ftime(void);
extern int sys_sync(void);
extern int sys_kill(void);
extern int sys_rename(void);
extern int sys_mkdir(void);
extern int sys_rmdir(void);
extern int sys_dup(void);
extern int sys_pipe(void);
extern int sys_times(void);
extern int sys_prof(void);
extern int sys_brk(void);
extern int sys_setgid(void);
extern int sys_getgid(void);
extern int sys_signal(void);
extern int sys_geteuid(void);
extern int sys_getegid(void);
extern int sys_acct(void);
extern int sys_phys(void);
extern int sys_lock(void);
extern int sys_ioctl(void);
extern int sys_fcntl(void);
extern int sys_mpx(void);
extern int sys_setpgid(void);
extern int sys_ulimit(void);
extern int sys_uname(void);
extern int sys_umask(void);
extern int sys_chroot(void);
extern int sys_ustat(void);
extern int sys_dup2(void);
extern int sys_getppid(void);
extern int sys_getpgrp(void);
extern int sys_setsid(void);
extern int sys_sigaction(void);
extern int sys_sgetmask(void);
extern int sys_ssetmask(void);
extern int sys_setreuid(void);
extern int sys_setregid(void);
extern int sys_iam(void);
extern int sys_whoami(void);

fn_ptr sys_call_table[] = {
	sys_setup,    sys_exit,     sys_fork,      sys_read,     sys_write,
	sys_open,     sys_close,    sys_waitpid,   sys_creat,    sys_link,
	sys_unlink,   sys_execve,   sys_chdir,     sys_time,     sys_mknod,
	sys_chmod,    sys_chown,    sys_break,     sys_stat,     sys_lseek,
	sys_getpid,   sys_mount,    sys_umount,    sys_setuid,   sys_getuid,
	sys_stime,    sys_ptrace,   sys_alarm,     sys_fstat,    sys_pause,
	sys_utime,    sys_stty,     sys_gtty,      sys_access,   sys_nice,
	sys_ftime,    sys_sync,     sys_kill,      sys_rename,   sys_mkdir,
	sys_rmdir,    sys_dup,      sys_pipe,      sys_times,    sys_prof,
	sys_brk,      sys_setgid,   sys_getgid,    sys_signal,   sys_geteuid,
	sys_getegid,  sys_acct,     sys_phys,      sys_lock,     sys_ioctl,
	sys_fcntl,    sys_mpx,      sys_setpgid,   sys_ulimit,   sys_uname,
	sys_umask,    sys_chroot,   sys_ustat,     sys_dup2,     sys_getppid,
	sys_getpgrp,  sys_setsid,   sys_sigaction, sys_sgetmask, sys_ssetmask,
	sys_setreuid, sys_setregid, sys_iam,       sys_whoami
};
