/*
   终端 ：
          进程读/写
              |
        终端驱动程序上层接口
        	  |
          行规则程序
              |
         设备驱动程序
         	  |
           字符设备
   1：串行端口终端 /dev/ttySn
   		/dev/S0 /dev/S1  4,64   4,65 对应DOS COM1  ,COM2
   2：伪终端 /dev/ptyp  ,/dev/ttyp
   3: 控制终端 /dev/tty
		进程控制终端
   4: 控制台 /dev/ttyn,/dev/console
   5: 其他
 */


void chr_dev_init(void)
{

}
