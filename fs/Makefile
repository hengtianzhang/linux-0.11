#
#SRC = $(wildcard *.c)
#OBJ = $(patsubst %.c, %.o, $(SRC))
#
#fs.o:$(OBJ)
#	$(LD) -m elf_i386 -r -o $@ $^
#
#%.o:%.c
#	$(CC) $(CFLAGS) $(CDIR) -c -o $@ $<
#

include ../Makefile.header

LDFLAGS += -r
CFLAGS	+= -I../include
CPP	+= -I../include

.c.s:
	$(CC) $(CFLAGS) -S -o $@ $<
.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<
.s.o:
	$(AS) -o $@ $<

OBJS = bitmap.o block_dev.o buffer.o char_dev.o exec.o fcntl.o file_dev.o \
	   file_table.o inode.o ioctl.o namei.o open.o pipe.o read_write.o \
	   stat.o super.o truncate.o

fs.o: $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

clean:
	@rm -f *.o *.a tmp_make
	@for i in *.c;do rm -f `basename $$i .c`.s;done

dep:
	@sed '/\#\#\# Dependencies/q' < Makefile > tmp_make
	@(for i in *.c;do $(CPP) -M $$i;done) >> tmp_make
	@cp tmp_make Makefile

### Dependencies:
bitmap.o: bitmap.c ../include/string.h ../include/linux/sched.h \
 ../include/linux/head.h ../include/linux/fs.h ../include/sys/types.h \
 ../include/linux/mm.h ../include/signal.h ../include/linux/kernel.h
block_dev.o: block_dev.c ../include/errno.h ../include/linux/sched.h \
 ../include/linux/head.h ../include/linux/fs.h ../include/sys/types.h \
 ../include/linux/mm.h ../include/signal.h ../include/linux/kernel.h \
 ../include/asm/segment.h ../include/asm/system.h
buffer.o: buffer.c ../include/stdarg.h ../include/linux/config.h \
 ../include/linux/sched.h ../include/linux/head.h ../include/linux/fs.h \
 ../include/sys/types.h ../include/linux/mm.h ../include/signal.h \
 ../include/linux/kernel.h ../include/asm/system.h ../include/asm/io.h
char_dev.o: char_dev.c ../include/errno.h ../include/sys/types.h \
 ../include/linux/sched.h ../include/linux/head.h ../include/linux/fs.h \
 ../include/linux/mm.h ../include/signal.h ../include/linux/kernel.h \
 ../include/asm/segment.h ../include/asm/io.h
exec.o: exec.c ../include/errno.h ../include/string.h \
 ../include/sys/stat.h ../include/sys/types.h ../include/a.out.h \
 ../include/linux/fs.h ../include/linux/sched.h ../include/linux/head.h \
 ../include/linux/mm.h ../include/signal.h ../include/linux/kernel.h \
 ../include/asm/segment.h
fcntl.o: fcntl.c ../include/string.h ../include/errno.h \
 ../include/linux/sched.h ../include/linux/head.h ../include/linux/fs.h \
 ../include/sys/types.h ../include/linux/mm.h ../include/signal.h \
 ../include/linux/kernel.h ../include/asm/segment.h ../include/fcntl.h \
 ../include/sys/stat.h
file_dev.o: file_dev.c ../include/errno.h ../include/fcntl.h \
 ../include/sys/types.h ../include/linux/sched.h ../include/linux/head.h \
 ../include/linux/fs.h ../include/linux/mm.h ../include/signal.h \
 ../include/linux/kernel.h ../include/asm/segment.h
file_table.o: file_table.c ../include/linux/fs.h ../include/sys/types.h
inode.o: inode.c ../include/string.h ../include/sys/stat.h \
 ../include/sys/types.h ../include/linux/sched.h ../include/linux/head.h \
 ../include/linux/fs.h ../include/linux/mm.h ../include/signal.h \
 ../include/linux/kernel.h ../include/asm/system.h
ioctl.o: ioctl.c ../include/string.h ../include/errno.h \
 ../include/sys/stat.h ../include/sys/types.h ../include/linux/sched.h \
 ../include/linux/head.h ../include/linux/fs.h ../include/linux/mm.h \
 ../include/signal.h
namei.o: namei.c ../include/linux/sched.h ../include/linux/head.h \
 ../include/linux/fs.h ../include/sys/types.h ../include/linux/mm.h \
 ../include/signal.h ../include/linux/kernel.h ../include/asm/segment.h \
 ../include/string.h ../include/fcntl.h ../include/errno.h \
 ../include/const.h ../include/sys/stat.h
open.o: open.c ../include/string.h ../include/errno.h ../include/fcntl.h \
 ../include/sys/types.h ../include/utime.h ../include/sys/stat.h \
 ../include/linux/sched.h ../include/linux/head.h ../include/linux/fs.h \
 ../include/linux/mm.h ../include/signal.h ../include/linux/tty.h \
 ../include/termios.h ../include/linux/kernel.h ../include/asm/segment.h
pipe.o: pipe.c ../include/signal.h ../include/sys/types.h \
 ../include/linux/sched.h ../include/linux/head.h ../include/linux/fs.h \
 ../include/linux/mm.h ../include/asm/segment.h
read_write.o: read_write.c ../include/sys/stat.h ../include/sys/types.h \
 ../include/errno.h ../include/linux/kernel.h ../include/linux/sched.h \
 ../include/linux/head.h ../include/linux/fs.h ../include/linux/mm.h \
 ../include/signal.h ../include/asm/segment.h
stat.o: stat.c ../include/errno.h ../include/sys/stat.h \
 ../include/sys/types.h ../include/linux/fs.h ../include/linux/sched.h \
 ../include/linux/head.h ../include/linux/mm.h ../include/signal.h \
 ../include/linux/kernel.h ../include/asm/segment.h
super.o: super.c ../include/linux/config.h ../include/linux/sched.h \
 ../include/linux/head.h ../include/linux/fs.h ../include/sys/types.h \
 ../include/linux/mm.h ../include/signal.h ../include/linux/kernel.h \
 ../include/asm/system.h ../include/errno.h ../include/sys/stat.h
truncate.o: truncate.c ../include/linux/sched.h ../include/linux/head.h \
 ../include/linux/fs.h ../include/sys/types.h ../include/linux/mm.h \
 ../include/signal.h ../include/sys/stat.h
