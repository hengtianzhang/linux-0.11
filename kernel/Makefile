#SRC = $(wildcard *.c)
#OBJ = $(patsubst %.c, %.o, $(SRC))

#kernel.o:$(OBJ) asm.o system_call.o
#	$(LD) -m elf_i386 -r -o $@ $^
#%.o:%.c
#	$(CC) $(CFLAGS) $(CDIR) -c -o $@ $<
#	
#asm.o:asm.s
#	$(AS) -o $@ $<
#system_call.o:system_call.s
#	$(AS) -o $@ $<
#

include ../Makefile.header

LDFLAGS += -r

# NOTE!: do not try to add -On to CFLAGS with gcc4.x, which will optimize the
# memcpy function a lot to let the kernel not work, for fixing this problem,
# please refer to glibc and rewrite the memcpy in include/string.h, or just not
# use any -On options with gcc 4.x when compiling it. in fact, we only can not
# use -On with gcc4.x to compile fork.c, but after that you need to isolate the
# compling procedure of it, it's not good too. for playing with linux-0.11, we
# just have fun, have no much concerning about the performance.

CFLAGS += -I../include

CPP += -I../include

.c.s:
	$(CC) $(CFLAGS) -S -o $@ $<

.s.o:
	$(AS) -o $@ $<

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<


OBJS = asm.o exit.o fork.o mktime.o panic.o printk.o \
	   sched.o signal.o sys.o system_call.o traps.o \
	   vsprintf.o who.o

kernel.o: $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)
	@sync

clean:
	@rm -f *.o tmp_make 
	@for i in *.c;do rm -f `basename $$i .c`.s;done
	@for i in chr_drv blk_drv math; do make clean -C $$i; done

dep:
	@sed '/\#\#\# Dependencies/q' < Makefile > tmp_make
	@(for i in *.c;do echo -n `echo $$i | sed 's,\.c,\.s,'`" "; \
		$(CPP) -M $$i;done) >> tmp_make
	@cp tmp_make Makefile
	@for i in chr_drv blk_drv; do make dep -C $$i; done

### Dependencies
exit.s exit.o: exit.c ../include/errno.h ../include/signal.h \
 ../include/sys/types.h ../include/sys/wait.h ../include/linux/sched.h \
 ../include/linux/head.h ../include/linux/fs.h ../include/linux/mm.h \
 ../include/linux/kernel.h ../include/linux/tty.h ../include/termios.h \
 ../include/asm/segment.h
fork.s fork.o: fork.c ../include/errno.h ../include/linux/sched.h \
 ../include/linux/head.h ../include/linux/fs.h ../include/sys/types.h \
 ../include/linux/mm.h ../include/signal.h ../include/linux/kernel.h \
 ../include/asm/segment.h ../include/asm/system.h
mktime.s mktime.o: mktime.c ../include/time.h
panic.s panic.o: panic.c ../include/linux/kernel.h ../include/linux/sched.h \
 ../include/linux/head.h ../include/linux/fs.h ../include/sys/types.h \
 ../include/linux/mm.h ../include/signal.h
printk.s printk.o: printk.c ../include/stdarg.h ../include/stddef.h \
 ../include/linux/kernel.h
sched.s sched.o: sched.c ../include/linux/sched.h ../include/linux/head.h \
 ../include/linux/fs.h ../include/sys/types.h ../include/linux/mm.h \
 ../include/signal.h ../include/linux/kernel.h ../include/linux/sys.h \
 ../include/linux/fdreg.h ../include/asm/system.h ../include/asm/io.h \
 ../include/asm/segment.h
signal.s signal.o: signal.c ../include/linux/sched.h ../include/linux/head.h \
 ../include/linux/fs.h ../include/sys/types.h ../include/linux/mm.h \
 ../include/signal.h ../include/linux/kernel.h ../include/asm/segment.h
sys.s sys.o: sys.c ../include/errno.h ../include/linux/sched.h \
 ../include/linux/head.h ../include/linux/fs.h ../include/sys/types.h \
 ../include/linux/mm.h ../include/signal.h ../include/linux/tty.h \
 ../include/termios.h ../include/linux/kernel.h ../include/asm/segment.h \
 ../include/sys/times.h ../include/sys/utsname.h
traps.s traps.o: traps.c ../include/string.h ../include/linux/head.h \
 ../include/linux/sched.h ../include/linux/fs.h ../include/sys/types.h \
 ../include/linux/mm.h ../include/signal.h ../include/linux/kernel.h \
 ../include/asm/system.h ../include/asm/segment.h ../include/asm/io.h
vsprintf.s vsprintf.o: vsprintf.c ../include/stdarg.h ../include/string.h
who.s who.o: who.c ../include/string.h ../include/errno.h \
 ../include/asm/segment.h
