	.file	"glut_bwidth.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl glutBitmapWidth
	.type	glutBitmapWidth, @function
glutBitmapWidth:
.LFB0:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/glut/glut_bwidth.c"
	.loc 1 13 0
	.cfi_startproc
.LVL0:
	.loc 1 17 0
	lwz 10,8(3)
	.loc 1 13 0
	mr 9,3
	.loc 1 17 0
	cmpw 7,4,10
	blt- 7,.L3
	.loc 1 17 0 discriminator 1
	lwz 8,4(3)
	.loc 1 18 0 discriminator 1
	li 3,0
.LVL1:
	.loc 1 17 0 discriminator 1
	add 8,10,8
	cmpw 7,4,8
	bgelr- 7
	.loc 1 19 0
	subf 10,10,4
	lwz 9,12(9)
.LVL2:
	slwi 10,10,2
	lwzx 9,9,10
.LVL3:
	.loc 1 20 0
	cmpwi 7,9,0
	beqlr- 7
	.loc 1 13 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.loc 1 21 0
	lfs 0,16(9)
	addi 9,1,8
.LVL4:
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,8(1)
	.loc 1 24 0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.LVL5:
.L3:
	.loc 1 18 0
	li 3,0
.LVL6:
	blr
	.cfi_endproc
.LFE0:
	.size	glutBitmapWidth, .-glutBitmapWidth
	.align 2
	.globl glutBitmapLength
	.type	glutBitmapLength, @function
glutBitmapLength:
.LFB1:
	.loc 1 28 0
	.cfi_startproc
.LVL7:
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.loc 1 28 0
	mr 10,3
.LVL8:
	addi 4,4,-1
.LVL9:
	.loc 1 33 0
	li 3,0
.LVL10:
	.loc 1 39 0
	lis 6,0x4330
	lis 5,.LC1@ha
.LVL11:
.L10:
	.loc 1 34 0 discriminator 1
	lbzu 9,1(4)
.LVL12:
	cmpwi 7,9,0
	beq- 7,.L18
.LVL13:
	.loc 1 36 0
	lwz 8,8(10)
	cmpw 7,9,8
	blt- 7,.L11
	.loc 1 36 0 is_stmt 0 discriminator 1
	lwz 7,4(10)
	add 7,8,7
	cmpw 7,9,7
	blt- 7,.L10
.L11:
	.loc 1 37 0 is_stmt 1
	subf 9,8,9
.LVL14:
	lwz 7,12(10)
	slwi 9,9,2
	lwzx 9,7,9
.LVL15:
	.loc 1 38 0
	cmpwi 7,9,0
	beq- 7,.L10
	.loc 1 39 0
	xoris 3,3,0x8000
.LVL16:
	stw 6,8(1)
.LVL17:
	stw 3,12(1)
	lfs 0,.LC1@l(5)
	lfd 13,8(1)
	fsub 0,13,0
	lfs 13,16(9)
	addi 9,1,16
.LVL18:
	frsp 0,0
	fadds 0,0,13
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,16(1)
.LVL19:
	b .L10
.LVL20:
.L18:
	.loc 1 43 0
	addi 1,1,24
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE1:
	.size	glutBitmapLength, .-glutBitmapLength
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1501560836
	.section	".text"
.Letext0:
	.file 2 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/include/GL/gl.h"
	.file 3 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/glut/glutbitmap.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x25b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x1
	.4byte	.LASF35
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x99
	.4byte	0x28
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x9c
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x9d
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	0x61
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x5
	.4byte	0xa4
	.uleb128 0x5
	.4byte	0x56
	.uleb128 0x7
	.byte	0x4
	.4byte	0xc1
	.uleb128 0x5
	.4byte	0x44
	.uleb128 0x8
	.byte	0x18
	.byte	0x3
	.byte	0xc
	.4byte	0x117
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x3
	.byte	0xd
	.4byte	0xb6
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.byte	0xe
	.4byte	0xb6
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x3
	.byte	0xf
	.4byte	0x7a
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x3
	.byte	0x10
	.4byte	0x7a
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x3
	.byte	0x11
	.4byte	0x7a
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x3
	.byte	0x12
	.4byte	0xbb
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x3
	.byte	0x13
	.4byte	0xc6
	.uleb128 0x8
	.byte	0x10
	.byte	0x3
	.byte	0x15
	.4byte	0x15a
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x3
	.byte	0x16
	.4byte	0xab
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.byte	0x17
	.4byte	0x15a
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x3
	.byte	0x18
	.4byte	0x15a
	.byte	0x8
	.uleb128 0xa
	.string	"ch"
	.byte	0x3
	.byte	0x19
	.4byte	0x15f
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	0x3d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x165
	.uleb128 0x5
	.4byte	0x16a
	.uleb128 0x7
	.byte	0x4
	.4byte	0x170
	.uleb128 0x5
	.4byte	0x117
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x3
	.byte	0x1a
	.4byte	0x180
	.uleb128 0x7
	.byte	0x4
	.4byte	0x122
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x3
	.byte	0x1c
	.4byte	0x9b
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0xc
	.4byte	0x3d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e2
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0xc
	.4byte	0x186
	.4byte	.LLST0
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0xc
	.4byte	0x3d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0xe
	.4byte	0x175
	.4byte	.LLST0
	.uleb128 0xf
	.string	"ch"
	.byte	0x1
	.byte	0xf
	.4byte	0x16a
	.4byte	.LLST2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1b
	.4byte	0x3d
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x253
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1b
	.4byte	0x186
	.4byte	.LLST3
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1b
	.4byte	0x253
	.4byte	.LLST4
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0x1d
	.4byte	0x3d
	.4byte	.LLST5
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1d
	.4byte	0x3d
	.4byte	.LLST6
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1e
	.4byte	0x175
	.4byte	.LLST7
	.uleb128 0xf
	.string	"ch"
	.byte	0x1
	.byte	0x1f
	.4byte	0x16a
	.4byte	.LLST8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x259
	.uleb128 0x5
	.4byte	0x28
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
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
.LASF35:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/glut/glut_bwidth.c"
.LASF25:
	.string	"first"
.LASF30:
	.string	"glutBitmapWidth"
.LASF21:
	.string	"bitmap"
.LASF29:
	.string	"fontinfo"
.LASF32:
	.string	"string"
.LASF27:
	.string	"GLUTbitmapFont"
.LASF8:
	.string	"float"
.LASF12:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"GLsizei"
.LASF18:
	.string	"xorig"
.LASF14:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF31:
	.string	"glutBitmapLength"
.LASF17:
	.string	"height"
.LASF9:
	.string	"double"
.LASF22:
	.string	"BitmapCharRec"
.LASF28:
	.string	"font"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"yorig"
.LASF15:
	.string	"char"
.LASF34:
	.string	"GNU C 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF13:
	.string	"sizetype"
.LASF11:
	.string	"long long int"
.LASF23:
	.string	"name"
.LASF16:
	.string	"width"
.LASF3:
	.string	"short int"
.LASF24:
	.string	"num_chars"
.LASF5:
	.string	"GLubyte"
.LASF10:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF20:
	.string	"advance"
.LASF7:
	.string	"GLfloat"
.LASF33:
	.string	"length"
.LASF26:
	.string	"BitmapFontPtr"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
