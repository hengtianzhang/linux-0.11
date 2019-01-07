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

CFLAGS =-m32 -march=i386 -O1 -Wall -Wstrict-prototypes -fno-strict-aliasing -fomit-frame-pointer -fno-pic -fno-stack-protector -pipe
CDIR = -nostdinc -I$(ROOT_DIR)/include
CHECKFLAGS = -D__KERNEL__
LDFLAGS =-m elf_i386 -M -Ttext 0x0

export CC CPP LD AR AS CFLAGS CDIR CHECKFLAGS
OBJ =boot/head.o init/main.o fs/fs.o kernel/kernel.o mm/mm.o \
kernel/blk_drv/blk_drv.a kernel/chr_drv/chr_drv.a kernel/math/math.a \
lib/lib.a
#all:Image 
all: system.bin system.list system.syms
	@echo "\nmake all done!\n"
#Image: $(ROOT_DIR)/boot/bootsect.bin $(ROOT_DIR)/boot/setup.bin $(ROOT_DIR)/tool/system.bin

system.bin: system.elf
	$(OBJCOPY) -R .note -R .comment -S -O binary $< $@
system.list:system.elf
	$(OBJDUMP) -D -x -f -m i386 $< > $@
system.syms:system.elf
	$(NM) -l -n $< > $@
system.elf:$(OBJ)
	$(LD) $(LDFLAGS) -o $@ $^ > system.map

boot/head.o:boot/head.s
	$(AS) -o $@ $<

%.o:%.c
	$(CC) $(CFLAGS) $(CDIR) -c -o $@ $<

fs/fs.o:
	$(MAKE) -C $(ROOT_DIR)/fs
kernel/kernel.o:
	$(MAKE) -C $(ROOT_DIR)/kernel
mm/mm.o:
	$(MAKE) -C $(ROOT_DIR)/mm
kernel/blk_drv/blk_drv.a:
	$(MAKE) -C $(ROOT_DIR)/kernel/blk_drv
kernel/chr_drv/chr_drv.a:
	$(MAKE) -C $(ROOT_DIR)/kernel/chr_drv
kernel/math/math.a:
	$(MAKE) -C $(ROOT_DIR)/kernel/math
lib/lib.a :
	$(MAKE) -C $(ROOT_DIR)/lib
	
.PHONY: clean

clean:
	@find $(CUR_DIR) -name *.o -exec echo cleaning {} \;
	@find $(CUR_DIR) -name *.a -exec echo cleaning {} \;
	@find $(CUR_DIR) -name *.o -exec rm -f {} \;
	@find $(CUR_DIR) -name *.a -exec rm -f {} \;
	@rm -rf system.*
	@echo "\ndelete midware file done!\n"

