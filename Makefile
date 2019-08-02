VERSION = 1

ROOT_DIR = $(shell pwd)

MAKE = make

# indicate the Hardware Image file
HDA_IMG = ./tools/hdc-0.11-new.img

#
# if you want the ram-disk device, define this to be the
# size in blocks.
#
RAMDISK =  #-DRAMDISK=512

# indicate the path of the calltree
CALLTREE=$(shell find tools/ -name "calltree" -perm 755 -type f)

# indicate the path of the bochs
#BOCHS=$(shell find tools/ -name "bochs" -perm 755 -type f)
BOCHS=bochs

# This is a basic Makefile for setting the general configuration
include Makefile.header

LDFLAGS += -M -Ttext 0x0 -e _start
CFLAGS  += $(RAMDISK) -Iinclude
CPP += -Iinclude

#
# ROOT_DEV specifies the default root-device when making the image.
# This can be either FLOPPY, /dev/xxxx or empty, in which case the
# default of /dev/hd6 is used by 'build'.
#
ROOT_DEV= #FLOPPY 

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

bochs-start:
	@$(BOCHS) -q -f tools/bochs/bochsrc/bochsrc-hd.bxrc	

bochs-debug:
	@$(BOCHS) -q -f tools/bochs/bochsrc/bochsrc-hd-dbg.bxrc	

bochs:
ifeq ($(BOCHS),)
	@(cd tools/bochs/bochs-2.3.7; \
	./configure --enable-plugins --enable-disasm --enable-gdb-stub;\
	make)
endif

bochs-clean:
	@make clean -C tools/bochs/bochs-2.3.7

calltree:
ifeq ($(CALLTREE),)
	@make -C tools/calltree-2.3
endif

calltree-clean:
	@(find tools/calltree-2.3 -name "*.o" \
	-o -name "calltree" -type f | xargs -i rm -f {})

cg: callgraph
callgraph:
	@calltree -b -np -m init/main.c | tools/tree2dotx > linux-0.11.dot
	@dot -Tjpg linux-0.11.dot -o linux-0.11.jpg

help:
	@echo "<<<<This is the basic help info of linux-0.11>>>"
	@echo ""
	@echo "Usage:"
	@echo "     make --generate a kernel floppy Image with a fs on hda1"
	@echo "     make start -- start the kernel in qemu"
	@echo "     make debug -- debug the kernel in qemu & gdb at port 1234"
	@echo "     make disk  -- generate a kernel Image & copy it to tools/a.img(floppy)"
	@echo "     make cscope -- genereate the cscope index databases"
	@echo "     make tags -- generate the tag file"
	@echo "     make cg -- generate callgraph of the system architecture"
	@echo "     make clean -- clean the object files"
	@echo "     make distclean -- only keep the source code files"
	@echo ""
	@echo "Note!:"
	@echo "     * You need to install the following basic tools:"
	@echo "          ubuntu|debian, qemu|bochs, ctags, cscope, calltree, graphviz "
	@echo "          vim-full, build-essential, hex, dd, gcc 4.3.2 or later"
	@echo "     * Becarefull to change the compiling options, which will heavily"
	@echo "     influence the compiling procedure and running result."
	@echo ""
	@echo "Author:"
	@echo "     * 1991, linus write and release the original linux 0.95(linux 0.11)."
	@echo "     * 2005, jiong.zhao<gohigh@sh163.net> release a new version "
	@echo "     which can be used in RedHat 9 along with the book 'Explaining "
	@echo "     Linux-0.11 Completly', and he build a site http://www.oldlinux.org"
	@echo "     * 2018, miracle<378479645@qq.com> release a new version which can be"
	@echo "     used in ubuntu|debian 32bit|64bit with gcc 4.3.2 or later, and give some new "
	@echo "     features for experimenting. such as this help info, boot/bootsect.s and"
	@echo "     boot/setup.s with AT&T rewritting, porting to gcc 4.3.2 or later:-)"
	@echo ""
	@echo "<<<Be Happy To Play With It :-)>>>"

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
