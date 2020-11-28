	.file	"error.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl gluErrorString
	.type	gluErrorString, @function
gluErrorString:
.LFB0:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libutil/error.c"
	.loc 1 69 0
	.cfi_startproc
	.loc 1 70 0
	cmpwi 0,3,0
	beq- 0,.L6
	.loc 1 73 0
	addi 10,3,-1280
	cmplwi 7,10,5
	bgt+ 7,.L3
	.loc 1 74 0
	lis 9,.LANCHOR1@ha
	.loc 1 69 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.loc 1 74 0
	slwi 10,10,2
	la 9,.LANCHOR1@l(9)
	lwzx 6,9,10
	lis 9,glErrFile@ha
	.loc 1 69 0
	mflr 0
	stw 31,12(1)
	.loc 1 74 0
	lwz 7,glErrFile@l(9)
	.cfi_register 65, 0
	.cfi_offset 31, -4
	lis 31,.LANCHOR0@ha
	lis 9,glErrLine@ha
	la 31,.LANCHOR0@l(31)
	lis 5,.LC2@ha
	lwz 8,glErrLine@l(9)
	mr 3,31
	li 4,1024
	la 5,.LC2@l(5)
	.loc 1 69 0
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 74 0
	crxor 6,6,6
	bl snprintf
	.loc 1 91 0
	addi 11,1,16
	.loc 1 75 0
	mr 3,31
	.loc 1 91 0
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
.L3:
	.cfi_def_cfa_offset 0
	.loc 1 77 0
	xoris 10,3,0xffff
	cmpwi 7,10,-32719
	beq 7,.L7
	.loc 1 80 0
	addis 3,3,0xfffe
	addi 9,3,30172
	cmplwi 7,9,4
	bgt+ 7,.L4
	.loc 1 81 0
	lis 10,.LANCHOR1@ha
	slwi 9,9,2
	la 10,.LANCHOR1@l(10)
	add 9,10,9
	lwz 3,24(9)
	blr
.L4:
	.loc 1 83 0
	addi 9,3,30821
	cmplwi 7,9,36
	bgt+ 7,.L5
	.loc 1 84 0
	addi 3,3,30822
	b __gluNURBSErrorString
.L5:
	.loc 1 86 0
	addi 9,3,30921
	cmplwi 7,9,7
	bgt- 7,.L8
	.loc 1 87 0
	addi 3,3,30922
	b __gluTessErrorString
.L6:
	.loc 1 71 0
	lis 3,.LC0@ha
	la 3,.LC0@l(3)
	blr
.L7:
	.loc 1 78 0
	lis 3,.LC1@ha
	la 3,.LC1@l(3)
	blr
.L8:
	.loc 1 90 0
	li 3,0
	blr
	.cfi_endproc
.LFE0:
	.size	gluErrorString, .-gluErrorString
	.section	.rodata
	.align 2
	.set	.LANCHOR1,. + 0
	.type	glErrorStrings, @object
	.size	glErrorStrings, 24
glErrorStrings:
	.long	.LC3
	.long	.LC4
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC5
	.type	gluErrorStrings, @object
	.size	gluErrorStrings, 20
gluErrorStrings:
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"no error"
.LC1:
	.string	"table too large"
.LC2:
	.string	"%s at %s - %d"
.LC3:
	.string	"invalid enumerant"
.LC4:
	.string	"invalid value"
.LC5:
	.string	"out of memory"
.LC6:
	.string	""
.LC7:
	.string	"invalid operation"
.LC8:
	.string	"stack overflow"
.LC9:
	.string	"stack underflow"
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	error_string, @object
	.size	error_string, 1024
error_string:
	.zero	1024
	.section	".text"
.Letext0:
	.file 2 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/include/GL/gl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x15b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x1
	.4byte	.LASF21
	.4byte	.LASF22
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x92
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x99
	.4byte	0x37
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa3
	.uleb128 0x6
	.4byte	0x96
	.uleb128 0x6
	.4byte	0x53
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x1
	.byte	0x44
	.4byte	0xd4
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0x44
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa8
	.uleb128 0x9
	.4byte	0x9d
	.4byte	0xea
	.uleb128 0xa
	.4byte	0x88
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x2c
	.4byte	0xfb
	.uleb128 0x5
	.byte	0x3
	.4byte	glErrorStrings
	.uleb128 0x6
	.4byte	0xda
	.uleb128 0x9
	.4byte	0x9d
	.4byte	0x110
	.uleb128 0xa
	.4byte	0x88
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x35
	.4byte	0x121
	.uleb128 0x5
	.byte	0x3
	.4byte	gluErrorStrings
	.uleb128 0x6
	.4byte	0x100
	.uleb128 0x9
	.4byte	0x96
	.4byte	0x137
	.uleb128 0xc
	.4byte	0x88
	.2byte	0x3ff
	.byte	0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x41
	.4byte	0x126
	.uleb128 0x5
	.byte	0x3
	.4byte	error_string
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3f
	.4byte	0x9d
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x40
	.4byte	0x4c
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
	.uleb128 0x1b
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
.LASF10:
	.string	"long long int"
.LASF6:
	.string	"short unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF4:
	.string	"GLenum"
.LASF24:
	.string	"errorCode"
.LASF18:
	.string	"glErrFile"
.LASF13:
	.string	"long unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF23:
	.string	"gluErrorString"
.LASF19:
	.string	"glErrLine"
.LASF14:
	.string	"char"
.LASF15:
	.string	"glErrorStrings"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"GLubyte"
.LASF16:
	.string	"gluErrorStrings"
.LASF9:
	.string	"long int"
.LASF8:
	.string	"double"
.LASF17:
	.string	"error_string"
.LASF2:
	.string	"signed char"
.LASF22:
	.string	"D:\\\\devkitPro\\\\portlibs\\\\thirdparty\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF7:
	.string	"float"
.LASF20:
	.string	"GNU C 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF3:
	.string	"short int"
.LASF21:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libutil/error.c"
.LASF12:
	.string	"sizetype"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
