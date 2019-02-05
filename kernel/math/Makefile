#SRC = $(wildcard *.c)
#OBJ = $(patsubst %.c, %.o, $(SRC))
#
#math.a:$(OBJ)
#	$(AR) rcs -o $@ $^
#%.o:%.c
#	$(CC) $(CFLAGS) $(CDIR) -c -o $@ $<
#
include ../../Makefile.header

CFLAGS += -I../../include
CPP    += -I../../include

.c.s:
	$(CC) $(CFLAGS) -S -o $*.s $<

.s.o:
	$(AS) -o $*.o $<

.c.o:
	$(CC) $(CFLAGS) -c -o $*.o $<

OBJS = math_emulate.o

math.a: $(OBJS)
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
math_emulate.s math_emulate.o: math_emulate.c
