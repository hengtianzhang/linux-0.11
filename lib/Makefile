#SRC = $(wildcard *.c)
#OBJ = $(patsubst %.c, %.o, $(SRC))
#
#lib.a:$(OBJ)
#	$(AR) rcs -o $@ $^
#%.o:%.c
#	$(CC) $(CFLAGS) $(CDIR) -c -o $@ $<
#

include ../Makefile.header

CFLAGS	+= -I../include
CPP	+= -I../include

.c.s:
	$(CC) $(CFLAGS) -S -o $@ $<
.s.o:
	$(AS) -o $@ $<
.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<

OBJS  = _exit.o close.o ctype.o dup.o errno.o execve.o malloc.o \
		open.o setsid.o string.o wait.o write.o

lib.a: $(OBJS)
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
_exit.s _exit.o: _exit.c ../include/unistd.h ../include/sys/stat.h \
 ../include/sys/types.h ../include/sys/times.h ../include/sys/utsname.h \
 ../include/utime.h
close.s close.o: close.c ../include/unistd.h ../include/sys/stat.h \
 ../include/sys/types.h ../include/sys/times.h ../include/sys/utsname.h \
 ../include/utime.h
ctype.s ctype.o: ctype.c ../include/ctype.h
dup.s dup.o: dup.c ../include/unistd.h ../include/sys/stat.h \
 ../include/sys/types.h ../include/sys/times.h ../include/sys/utsname.h \
 ../include/utime.h
errno.s errno.o: errno.c
execve.s execve.o: execve.c ../include/unistd.h ../include/sys/stat.h \
 ../include/sys/types.h ../include/sys/times.h ../include/sys/utsname.h \
 ../include/utime.h
malloc.s malloc.o: malloc.c ../include/linux/kernel.h ../include/linux/mm.h \
 ../include/asm/system.h
open.s open.o: open.c ../include/unistd.h ../include/sys/stat.h \
 ../include/sys/types.h ../include/sys/times.h ../include/sys/utsname.h \
 ../include/utime.h ../include/stdarg.h
setsid.s setsid.o: setsid.c ../include/unistd.h ../include/sys/stat.h \
 ../include/sys/types.h ../include/sys/times.h ../include/sys/utsname.h \
 ../include/utime.h
string.s string.o: string.c ../include/string.h
wait.s wait.o: wait.c ../include/unistd.h ../include/sys/stat.h \
 ../include/sys/types.h ../include/sys/times.h ../include/sys/utsname.h \
 ../include/utime.h ../include/sys/wait.h
write.s write.o: write.c ../include/unistd.h ../include/sys/stat.h \
 ../include/sys/types.h ../include/sys/times.h ../include/sys/utsname.h \
 ../include/utime.h
