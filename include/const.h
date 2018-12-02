/* 
 * 文件定义了i节点中文件属性和类型i_mode字段所用到的一些标志位常量符号
 */
#ifndef _CONST_H
#define _CONST_H

#define BUFFER_END 0x200000

//i节点数据结构中i_mode字段的各标志位
#define I_TYPE          0170000       //指明i节点类型
#define I_DIRECTORY     0040000       //是目录文件
#define I_REGULAR       0100000       //是常规文件，不是目录文件或特殊文件
#define I_BLOCK_SPECIAL 0060000       //是块设备特殊文件
#define I_CHAR_SPECIAL  0020000       //是字符设备特殊文件
#define I_NAMED_PIPE    0010000       //是命名管道节点
#define I_SET_UID_BIT   0004000       //在执行时设置有效用户ID类型
#define I_SET_GID_BIT   0002000       //在执行时设置有效组ID类型

#endif