#SRC = $(wildcard *.c)
#OBJ = $(patsubst %.c, %.o, $(SRC))
#
#
#chr_drv.a:$(OBJ) keyboard.o rs_io.o
#	$(AR) rcs -o $@ $^
#%.o:%.c
#	$(CC) $(CFLAGS) $(CDIR) -c -o $@ $<
#keyboard.o:keyboard.S
#	$(CPP) -o cppkeyboard.s $<
#	$(AS) -o $@ cppkeyboard.s
#	@rm cppkeyboard.s
#rs_io.o:rs_io.s
#	$(AS) -o $@ $<
#

include ../../Makefile.header

CFLAGS += -I../../include
CPP    += -I../../include

.c.s:
	$(CC) $(CFLAGS) -S -o $@ $<
.s.o:
	$(AS) -o $@ $<
.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<

OBJS = console.o keyboard.o rs_io.o serial.o tty_io.o tty_ioctl.o

chr_drv.a: $(OBJS)
	$(AR) rcs $@ $(OBJS)
	@sync

keyboard.s: kb.S ../../include/linux/config.h
	$(CPP) kb.S -o $@

clean:
	@rm -f *.o *.a tmp_make keyboard.s
	@for i in *.c;do rm -f `basename $$i .c`.s;done

dep:
	@sed '/\#\#\# Dependencies/q' < Makefile > tmp_make
	@(for i in *.c;do echo -n `echo $$i | sed 's,\.c,\.s,'`" "; \
		$(CPP) -M $$i;done) >> tmp_make
	@cp tmp_make Makefile

### Dependencies:
console.s console.o: console.c ../../include/linux/sched.h \
 ../../include/linux/head.h ../../include/linux/fs.h \
 ../../include/sys/types.h ../../include/linux/mm.h \
 ../../include/signal.h ../../include/linux/tty.h ../../include/termios.h \
 ../../include/asm/io.h ../../include/asm/system.h
serial.s serial.o: serial.c ../../include/linux/tty.h ../../include/termios.h \
 ../../include/linux/sched.h ../../include/linux/head.h \
 ../../include/linux/fs.h ../../include/sys/types.h \
 ../../include/linux/mm.h ../../include/signal.h \
 ../../include/asm/system.h ../../include/asm/io.h
tty_io.s tty_io.o: tty_io.c ../../include/ctype.h ../../include/errno.h \
 ../../include/signal.h ../../include/sys/types.h \
 ../../include/linux/sched.h ../../include/linux/head.h \
 ../../include/linux/fs.h ../../include/linux/mm.h \
 ../../include/linux/tty.h ../../include/termios.h \
 ../../include/asm/segment.h ../../include/asm/system.h
tty_ioctl.s tty_ioctl.o: tty_ioctl.c ../../include/errno.h ../../include/termios.h \
 ../../include/linux/sched.h ../../include/linux/head.h \
 ../../include/linux/fs.h ../../include/sys/types.h \
 ../../include/linux/mm.h ../../include/signal.h \
 ../../include/linux/kernel.h ../../include/linux/tty.h \
 ../../include/asm/io.h ../../include/asm/segment.h \
 ../../include/asm/system.h
