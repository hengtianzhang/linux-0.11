VERSION = 1

ROOT_DIR = $(shell pwd)

BOCHS = bochs-2.6.9

MAKE = make

#CFLAGS =-m32 -std=gnu89 -march=i386 -O1 -Wall -Wstrict-prototypes -fno-strict-aliasing -fomit-frame-pointer -fno-pic -fno-stack-protector -pipe -fno-reorder-functions
#CDIR = -nostdinc -I$(ROOT_DIR)/include
#CHECKFLAGS = -D__KERNEL__
#LDFLAGS =-m elf_i386 -M -Ttext 0x0

#export CC CPP LD AR AS CFLAGS CDIR CHECKFLAGS

RAMDISK = #-DRAMDISK=512
HDA_IMG = ./tools/hdc-0.11-new.img
include Makefile.header

LDFLAGS += -M -Ttext 0x0 -e _start
CFLAGS  += $(RAMDISK) -Iinclude
CPP += -Iinclude

#
# This is not used "ROOT_DEV"
#
ROOT_DEV = #FLOPPY

ARCHIVES = kernel/kernel.o mm/mm.o fs/fs.o
DRIVERS  = kernel/blk_drv/blk_drv.a kernel/chr_drv/chr_drv.a
MATH     = kernel/math/math.a
LIBS     = lib/lib.a


.c.s:
	$(CC) $(CFLAGS) -S -o $@ $<
.s.o:
	$(AS) -o $@ $<
.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<


#all:system.list system.syms Image
#	@echo "\nmake all done!\n"
all: Image

Image: boot/bootsect.bin boot/setup.bin system.bin
	@$(CC) -o tools/build tools/build.c
	@./tools/build
	@cat boot/bootsect.bin boot/setup.bin appending.bin system.bin > Image
	@rm -f system.tmp
	@sync

system.bin: system.tmp
	$(STRIP) system.tmp
	$(OBJCOPY) -R .note -R .comment -O binary $< $@

system.list:system.tmp
	$(OBJDUMP) -D -x -f -m i386 $< > $@

system.syms:system.tmp
	$(NM) -l -n $< > $@

system.tmp:system.elf
	@cp -f system.elf system.tmp
	@cp -f system.elf tools/system

system.elf: boot/head.o init/main.o \
	$(ARCHIVES) $(DRIVERS) $(MATH) $(LIBS)
	$(LD) $(LDFLAGS) -o $@ $^ > system.map


disk:Image
	dd if=Image of=tools/a.img bs=512 seek=0 conv=notrunc
	
boot/setup.bin:
	$(MAKE) setup.bin -C boot

boot/bootsect.bin:
	$(MAKE) bootsect.bin -C boot

boot/head.o:
	$(MAKE) head.o -C boot

fs/fs.o:
	$(MAKE) -C fs

kernel/kernel.o:
	$(MAKE) -C kernel

mm/mm.o:
	$(MAKE) -C mm

kernel/blk_drv/blk_drv.a:
	$(MAKE) -C kernel/blk_drv

kernel/chr_drv/chr_drv.a:
	$(MAKE) -C kernel/chr_drv

kernel/math/math.a:
	$(MAKE) -C kernel/math

lib/lib.a :
	$(MAKE) -C lib
	
info:system.list system.syms

dep:
	@sed '/\#\#\# Dependencies/q' < Makefile > tmp_make
	@(for i in init/*.c;do echo -n "init/";$(CPP) -M $$i;done) >> tmp_make
	@cp tmp_make Makefile
	@for i in fs kernel  mm lib; do make dep -C $$i; done

distclean: clean
	@make clean -C tools/bochs/$(BOCHS)

start:
	@qemu-system-x86_64 -m 16M -boot a -fda Image -hda $(HDA_IMG)

debug:
	@echo $(OS)
	@qemu-system-x86_64 -m 16M -boot a -fda Image -hda $(HDA_IMG) -s -S

bochs-gdb:
	@(cd tools;bochs -f bochsrc-gdb)

bochs-run:
	@(cd tools;bochs -f bochsrc)

bochs-build-debug:
	@(cd tools/bochs/$(BOCHS); \
	./configure --enable-plugins --enable-disasm --enable-debugger; \
	sudo make; \
	sudo make install)

bochs-build-gdb:
	@(cd tools/bochs/$(BOCHS); \
	./configure --enable-plugins --enable-disasm --enable-gdb-stub; \
	sudo make; \
	sudo make install)

bochs-clean:
	@make clean -C tools/bochs/$(BOCHS)

.PHONY: clean

clean:
	@rm -f Image system.elf system.tmp system.map system.list system.syms tmp_make appending.bin system.bin
	@rm -f init/*.o tools/build tools/bochsout.txt tools/system tools/a.img
	@for i in mm fs kernel lib boot;do make clean -C $$i; done

### Dependencies:
init/main.o: init/main.c include/unistd.h include/sys/stat.h \
 include/sys/types.h include/sys/times.h include/sys/utsname.h \
 include/utime.h include/time.h include/linux/tty.h include/termios.h \
 include/linux/sched.h include/linux/head.h include/linux/fs.h \
 include/linux/mm.h include/signal.h include/asm/system.h \
 include/asm/io.h include/stddef.h include/stdarg.h include/fcntl.h
