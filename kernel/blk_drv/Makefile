#SRC = $(wildcard *.c)
#OBJ = $(patsubst %.c, %.o, $(SRC))
#
#blk_drv.a:$(OBJ)
#	$(AR) rcs -o $@ $^
#%.o:%.c
#	$(CC) $(CFLAGS) $(CDIR) -c -o $@ $<

include ../../Makefile.header

CFLAGS += -I../../include
CPP += -I../../include

.c.s:
	$(CC) $(CFLAGS) -S -o $@ $<

.s.o:
	$(AS) -o $@ $<

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<

OBJS = floppy.o hd.o ll_rw_blk.o ramdisk.o

blk_drv.a: $(OBJS)
	$(AR) rcs $@ $(OBJS)
	@sync

clean:
	@rm -f *.o *.a tmp_make
	@for i in *.c;do rm -f `basename $$i .c`.s;done

dep:
	@sed '/\#\#\# Dependencies/q' < Makefile > tmp_make
	@(for i in *.c;do echo -n `echo $$i | sed 's,\.c,\.s,'`" "; \
		$(CPP) -M $$i;done) >> tmp_make
	@cp tmp_make Makefile

### Dependencies:
floppy.s floppy.o: floppy.c ../../include/linux/sched.h ../../include/linux/head.h \
 ../../include/linux/fs.h ../../include/sys/types.h \
 ../../include/linux/mm.h ../../include/signal.h \
 ../../include/linux/kernel.h ../../include/linux/fdreg.h \
 ../../include/asm/system.h ../../include/asm/io.h \
 ../../include/asm/segment.h blk.h
hd.s hd.o: hd.c ../../include/linux/config.h ../../include/linux/sched.h \
 ../../include/linux/head.h ../../include/linux/fs.h \
 ../../include/sys/types.h ../../include/linux/mm.h \
 ../../include/signal.h ../../include/linux/kernel.h \
 ../../include/linux/hdreg.h ../../include/asm/system.h \
 ../../include/asm/io.h ../../include/asm/segment.h blk.h
ll_rw_blk.s ll_rw_blk.o: ll_rw_blk.c ../../include/errno.h \
 ../../include/linux/sched.h ../../include/linux/head.h \
 ../../include/linux/fs.h ../../include/sys/types.h \
 ../../include/linux/mm.h ../../include/signal.h \
 ../../include/linux/kernel.h ../../include/asm/system.h blk.h
ramdisk.s ramdisk.o: ramdisk.c ../../include/string.h ../../include/linux/config.h \
 ../../include/linux/sched.h ../../include/linux/head.h \
 ../../include/linux/fs.h ../../include/sys/types.h \
 ../../include/linux/mm.h ../../include/signal.h \
 ../../include/linux/kernel.h ../../include/asm/system.h \
 ../../include/asm/segment.h ../../include/asm/memory.h blk.h
