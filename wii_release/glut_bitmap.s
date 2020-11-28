	.file	"glut_bitmap.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl glutBitmapCharacter
	.type	glutBitmapCharacter, @function
glutBitmapCharacter:
.LFB0:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/glut/glut_bitmap.c"
	.loc 1 12 0
	.cfi_startproc
	.loc 1 18 0
	lwz 9,8(3)
	cmpw 7,4,9
	bltlr- 7
	.loc 1 19 0 discriminator 1
	lwz 10,4(3)
	add 10,9,10
	.loc 1 18 0 discriminator 1
	cmpw 7,4,10
	bgelr- 7
	.loc 1 12 0
	mflr 0
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	.loc 1 21 0
	subf 9,9,4
	.loc 1 12 0
	stw 31,44(1)
	.loc 1 21 0
	slwi 9,9,2
	.loc 1 12 0
	stw 0,52(1)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 21 0
	lwz 10,12(3)
	lwzx 31,10,9
	.loc 1 22 0
	cmpwi 7,31,0
	beq- 7,.L1
	.loc 1 24 0
	li 3,3312
	addi 4,1,28
	bl glGetIntegerv
	.loc 1 25 0
	li 3,3313
	addi 4,1,24
	bl glGetIntegerv
	.loc 1 26 0
	li 3,3314
	addi 4,1,20
	bl glGetIntegerv
	.loc 1 27 0
	li 3,3315
	addi 4,1,16
	bl glGetIntegerv
	.loc 1 28 0
	li 3,3316
	addi 4,1,12
	bl glGetIntegerv
	.loc 1 29 0
	li 3,3317
	addi 4,1,8
	bl glGetIntegerv
	.loc 1 34 0
	li 3,3312
	li 4,0
	bl glPixelStorei
	.loc 1 35 0
	li 3,3313
	li 4,0
	bl glPixelStorei
	.loc 1 36 0
	li 3,3314
	li 4,0
	bl glPixelStorei
	.loc 1 37 0
	li 3,3315
	li 4,0
	bl glPixelStorei
	.loc 1 38 0
	li 3,3316
	li 4,0
	bl glPixelStorei
	.loc 1 39 0
	li 3,3317
	li 4,1
	bl glPixelStorei
	.loc 1 40 0
	lis 9,.LC0@ha
	lfs 1,8(31)
	lfs 2,12(31)
	lfs 3,16(31)
	lfs 4,.LC0@l(9)
	lwz 5,20(31)
	lwz 3,0(31)
	lwz 4,4(31)
	bl glBitmap
	.loc 1 43 0
	lwz 4,28(1)
	li 3,3312
	bl glPixelStorei
	.loc 1 44 0
	lwz 4,24(1)
	li 3,3313
	bl glPixelStorei
	.loc 1 45 0
	lwz 4,20(1)
	li 3,3314
	bl glPixelStorei
	.loc 1 46 0
	lwz 4,16(1)
	li 3,3315
	bl glPixelStorei
	.loc 1 47 0
	lwz 4,12(1)
	li 3,3316
	bl glPixelStorei
	.loc 1 48 0
	lwz 4,8(1)
	li 3,3317
	bl glPixelStorei
.L1:
	.loc 1 50 0
	addi 11,1,48
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
	.cfi_endproc
.LFE0:
	.size	glutBitmapCharacter, .-glutBitmapCharacter
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	0
	.section	".text"
.Letext0:
	.file 2 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/include/GL/gl.h"
	.file 3 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/glut/glutbitmap.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x22e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x1
	.4byte	.LASF37
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x98
	.4byte	0x48
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x99
	.4byte	0x28
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x9c
	.4byte	0x48
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x9d
	.4byte	0x77
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x7
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x5
	.4byte	0xaf
	.uleb128 0x5
	.4byte	0x61
	.uleb128 0x7
	.byte	0x4
	.4byte	0xcc
	.uleb128 0x5
	.4byte	0x4f
	.uleb128 0x8
	.byte	0x18
	.byte	0x3
	.byte	0xc
	.4byte	0x122
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x3
	.byte	0xe
	.4byte	0xc1
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x3
	.byte	0xf
	.4byte	0x85
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x3
	.byte	0x10
	.4byte	0x85
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x3
	.byte	0x11
	.4byte	0x85
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x3
	.byte	0x12
	.4byte	0xc6
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x3
	.byte	0x13
	.4byte	0xd1
	.uleb128 0x8
	.byte	0x10
	.byte	0x3
	.byte	0x15
	.4byte	0x165
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.byte	0x16
	.4byte	0xb6
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x3
	.byte	0x17
	.4byte	0x165
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x3
	.byte	0x18
	.4byte	0x165
	.byte	0x8
	.uleb128 0xa
	.string	"ch"
	.byte	0x3
	.byte	0x19
	.4byte	0x16a
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	0x48
	.uleb128 0x7
	.byte	0x4
	.4byte	0x170
	.uleb128 0x5
	.4byte	0x175
	.uleb128 0x7
	.byte	0x4
	.4byte	0x17b
	.uleb128 0x5
	.4byte	0x122
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x3
	.byte	0x1a
	.4byte	0x18b
	.uleb128 0x7
	.byte	0x4
	.4byte	0x12d
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x3
	.byte	0x1c
	.4byte	0xa6
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0xb
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0xb
	.4byte	0x191
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0xb
	.4byte	0x48
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.string	"ch"
	.byte	0x1
	.byte	0xd
	.4byte	0x175
	.uleb128 0x1
	.byte	0x6f
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0xe
	.4byte	0x180
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0xf
	.4byte	0x3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0xf
	.4byte	0x3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0xf
	.4byte	0x3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x10
	.4byte	0x3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x10
	.4byte	0x3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x10
	.4byte	0x3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
.LASF31:
	.string	"lsbfirst"
.LASF26:
	.string	"first"
.LASF33:
	.string	"skiprows"
.LASF22:
	.string	"bitmap"
.LASF39:
	.string	"fontinfo"
.LASF36:
	.string	"GNU C 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF28:
	.string	"GLUTbitmapFont"
.LASF32:
	.string	"rowlength"
.LASF9:
	.string	"float"
.LASF13:
	.string	"long long unsigned int"
.LASF38:
	.string	"glutBitmapCharacter"
.LASF7:
	.string	"GLsizei"
.LASF34:
	.string	"skippixels"
.LASF15:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF18:
	.string	"height"
.LASF17:
	.string	"width"
.LASF1:
	.string	"unsigned char"
.LASF19:
	.string	"xorig"
.LASF10:
	.string	"double"
.LASF23:
	.string	"BitmapCharRec"
.LASF29:
	.string	"font"
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"yorig"
.LASF16:
	.string	"char"
.LASF4:
	.string	"GLint"
.LASF14:
	.string	"sizetype"
.LASF12:
	.string	"long long int"
.LASF35:
	.string	"alignment"
.LASF24:
	.string	"name"
.LASF30:
	.string	"swapbytes"
.LASF37:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/glut/glut_bitmap.c"
.LASF3:
	.string	"short int"
.LASF25:
	.string	"num_chars"
.LASF5:
	.string	"GLubyte"
.LASF11:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF21:
	.string	"advance"
.LASF8:
	.string	"GLfloat"
.LASF27:
	.string	"BitmapFontPtr"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
	.gnu_attribute 4, 1
