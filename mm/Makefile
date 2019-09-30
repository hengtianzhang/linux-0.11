#SRC = $(wildcard *.c)
#OBJ = $(patsubst %.c, %.o, $(SRC))
#
#mm.o:$(OBJ) page.o
#	$(LD) -m elf_i386 -r -o $@ $^
#%.o:%.c
#	$(CC) $(CFLAGS) $(CDIR) -c -o $@ $<
#	
#page.o:page.s
#$(AS) -o $@ $<
#

include ../Makefile.header

LDFLAGS += -r
CFLAGS	+= -I../include
CPP	+= -I../include

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<
.s.o:
	$(AS) -o $@ $<
.c.s:
	$(CC) $(CFLAGS) -S -o $@ $<

OBJS = memory.o page.o

all: mm.o

mm.o: $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

clean:
	@rm -f *.o tmp_make
	@for i in *.c;do rm -f `basename $$i .c`.s;done

dep:
	@sed '/\#\#\# Dependencies/q' < Makefile > tmp_make
	@(for i in *.c;do $(CPP) -M $$i;done) >> tmp_make
	@cp tmp_make Makefile

### Dependencies
memory.o: memory.c ../include/signal.h ../include/sys/types.h \
 ../include/asm/system.h ../include/linux/sched.h ../include/linux/head.h \
 ../include/linux/fs.h ../include/linux/mm.h ../include/linux/kernel.h
