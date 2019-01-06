VERSION = 1

ROOT_DIR = $(shell pwd)
CUR_DIR = .

MAKE = make
CC = gcc
CPP = $(CC) -E -nostdinc -traditional -I$(ROOT_DIR)/include
LD = ld
AR = ar
AS = as
OBJDUMP = objdump
OBJCOPY = objcopy
NM =nm

CDFLAGS =-m32 -march=i386 -Os -Wall -Wstrict-prototypes -fno-strict-aliasing -fomit-frame-pointer -fno-pic -fno-stack-protector -pipe
CDIR = -nostdinc -I$(ROOT_DIR)/include
CHECKFLAGS = -D__KERNEL__
LDFLAGS = -m elf_i386 -M -Ttext 0x0
OBJ = 
#all:Image 
all: system.bin system.list system.syms
#Image: $(ROOT_DIR)/boot/bootsect.bin $(ROOT_DIR)/boot/setup.bin $(ROOT_DIR)/tool/system.bin

tool/system.bin: system.elf
	$(OBJCOPY) -R .note -R .comment -S -O binary $< $@
system.list:system.elf
	$(OBJDUMP) -D -x -f -m i386 $< > $@
system.syms:system.elf
	$(NM) -l -n $< > $@
system.elf:$(OBJ)
	$(LD) $(LDFLAGS) -o $@ $^ >system.map

.PHONY: clean

clean:
	@find $(CUR_DIR) -name *.o -exec echo cleaning {} \;
	@find $(CUR_DIR) -name *.a -exec echo cleaning {} \;
	@find $(CUR_DIR) -name *.o -exec rm -f {} \;
	@find $(CUR_DIR) -name *.a -exec rm -f {} \;
	@echo "\ndelete midware file done!\n"







ROOT_DIR = $(shell pwd)
CUR_DIR = .
MAKE = make
CC = gcc
CPP = $(CC) -E
LD = ld
LDFLAGS = -m elf_i386 -M -Ttext 0x0
CFLAGS = -m32 -march=i386 -Os -Wall -Wstrict-prototypes -fno-strict-aliasing -fomit-frame-pointer -fno-pic -fno-stack-protector \
		 -pipe
CDIR = -nostdinc -I$(ROOT_DIR)/include
CHECKFLAGS = -D__KERNEL__
SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o $(SRC))
%.o:%.c
	CPP -traditional keyboard.S -o cppkeyboard.s
	ld -r -o $@ &^
	ld -Text 0x0 --oformat binary
	AR rcs
	objcopy -R .note -R .comment -S -O binary src.elf obj.bin
	objdump -D -x -f -m i386 obj.elf > sys.list
	nm -l -n obj.elf > sys.syms
lib:
		$(MAKE) -C $(ROOT_DIR)

.PHONY: clean
