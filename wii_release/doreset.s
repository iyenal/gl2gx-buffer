	.file	"doreset.cpp"
	.section	".text"
.Ltext0:
	.align 2
	.globl do_reset
	.type	do_reset, @function
do_reset:
.LFB0:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/doreset.cpp"
	.loc 1 4 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 5 0
	li 3,0
	.loc 1 4 0
	stw 0,12(1)
	.cfi_offset 65, 4
	.loc 1 5 0
	bl exit
.LVL0:
	.cfi_endproc
.LFE0:
	.size	do_reset, .-do_reset
.Letext0:
	.file 2 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF11
	.byte	0x4
	.4byte	.LASF12
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x1
	.byte	0x3
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a
	.uleb128 0x5
	.4byte	.LVL0
	.4byte	0x9a
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x4d
	.uleb128 0x8
	.4byte	0x44
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF12:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/doreset.cpp"
.LASF11:
	.string	"GNU C++ 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF8:
	.string	"long unsigned int"
.LASF13:
	.string	"do_reset"
.LASF6:
	.string	"long long unsigned int"
.LASF2:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF10:
	.string	"long int"
.LASF4:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF14:
	.string	"exit"
.LASF3:
	.string	"short int"
.LASF7:
	.string	"sizetype"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
