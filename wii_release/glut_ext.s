	.file	"glut_ext.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl glutExtensionSupported
	.type	glutExtensionSupported, @function
glutExtensionSupported:
.LFB0:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/glut/glut_ext.c"
	.loc 1 16 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 22 0
	li 4,32
	.loc 1 16 0
	stmw 29,12(1)
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 30,3
	stw 0,28(1)
	.cfi_offset 65, 4
	.loc 1 22 0
	bl strchr
.LVL1:
	.loc 1 23 0
	cmpwi 7,3,0
	beq- 7,.L2
.L4:
	.loc 1 24 0
	li 3,0
.LVL2:
	b .L3
.LVL3:
.L2:
	.loc 1 23 0 discriminator 1
	lbz 9,0(30)
	cmpwi 7,9,0
	beq- 7,.L4
	.loc 1 26 0
	lis 31,.LANCHOR0@ha
	lwz 9,.LANCHOR0@l(31)
	cmpwi 7,9,0
	bne+ 7,.L5
	.loc 1 27 0
	li 3,7939
.LVL4:
	bl glGetString
.LVL5:
	stw 3,.LANCHOR0@l(31)
.L5:
	.loc 1 31 0
	lwz 29,.LANCHOR0@l(31)
.LVL6:
.L6:
	.loc 1 33 0
	mr 3,29
	mr 4,30
	bl strstr
.LVL7:
	.loc 1 34 0
	mr. 31,3
	beq- 0,.L4
	.loc 1 36 0
	mr 3,30
.LVL8:
	bl strlen
.LVL9:
	.loc 1 37 0
	cmplw 7,31,29
	.loc 1 36 0
	add 10,31,3
.LVL10:
	.loc 1 37 0
	beq- 7,.L7
	.loc 1 37 0 is_stmt 0 discriminator 1
	lbz 9,-1(31)
	cmpwi 7,9,32
	beq- 7,.L7
.L8:
	.loc 1 16 0 is_stmt 1
	mr 29,10
.LVL11:
	b .L6
.LVL12:
.L7:
	.loc 1 38 0
	lbzx 9,31,3
	andi. 9,9,223
	cmpwi 7,9,0
	bne+ 7,.L8
	.loc 1 39 0
	li 3,1
.LVL13:
.L3:
	.loc 1 45 0
	addi 11,1,24
	b _restgpr_29_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 65
	.cfi_endproc
.LFE0:
	.size	glutExtensionSupported, .-glutExtensionSupported
	.align 2
	.globl __glutIsSupportedByGLX
	.type	__glutIsSupportedByGLX, @function
__glutIsSupportedByGLX:
.LFB1:
	.loc 1 51 0
	.cfi_startproc
.LVL14:
	.loc 1 87 0
	li 3,0
.LVL15:
	blr
	.cfi_endproc
.LFE1:
	.size	__glutIsSupportedByGLX, .-__glutIsSupportedByGLX
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	extensions.8890, @object
	.size	extensions.8890, 4
extensions.8890:
	.zero	4
	.section	".text"
.Letext0:
	.file 2 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h"
	.file 3 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/include/GL/gl.h"
	.file 4 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x207
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x1
	.4byte	.LASF27
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x2
	.byte	0xd4
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x6
	.4byte	0x7f
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x92
	.4byte	0x2c
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x99
	.4byte	0x41
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x6
	.4byte	0x9c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9c
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0xf
	.4byte	0x56
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x186
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0xf
	.4byte	0x86
	.4byte	.LLST0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x11
	.4byte	0xb5
	.uleb128 0x5
	.byte	0x3
	.4byte	extensions.8890
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x12
	.4byte	0xb5
	.4byte	.LLST1
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x13
	.4byte	0xc0
	.4byte	.LLST2
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x13
	.4byte	0xc0
	.4byte	.LLST3
	.uleb128 0xb
	.4byte	.LVL1
	.4byte	0x1af
	.4byte	0x146
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL5
	.4byte	0x1c9
	.4byte	0x15b
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f03
	.byte	0
	.uleb128 0xb
	.4byte	.LVL7
	.4byte	0x1df
	.4byte	0x175
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL9
	.4byte	0x1f9
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.byte	0x32
	.4byte	0x56
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1af
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x32
	.4byte	0x79
	.4byte	.LLST4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x4
	.byte	0x1b
	.4byte	0x79
	.4byte	0x1c9
	.uleb128 0xf
	.4byte	0x86
	.uleb128 0xf
	.4byte	0x56
	.byte	0
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x3
	.2byte	0x358
	.4byte	0xb5
	.4byte	0x1df
	.uleb128 0xf
	.4byte	0x91
	.byte	0
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x4
	.byte	0x28
	.4byte	0x79
	.4byte	0x1f9
	.uleb128 0xf
	.4byte	0x86
	.uleb128 0xf
	.4byte	0x86
	.byte	0
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x4
	.byte	0x21
	.4byte	0x21
	.uleb128 0xf
	.4byte	0x86
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
	.uleb128 0x2117
	.uleb128 0x19
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
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
.LASF6:
	.string	"long long int"
.LASF27:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/glut/glut_ext.c"
.LASF11:
	.string	"size_t"
.LASF24:
	.string	"glGetString"
.LASF19:
	.string	"terminator"
.LASF23:
	.string	"strchr"
.LASF12:
	.string	"GLenum"
.LASF9:
	.string	"long unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF22:
	.string	"extension"
.LASF14:
	.string	"float"
.LASF25:
	.string	"strstr"
.LASF21:
	.string	"__glutIsSupportedByGLX"
.LASF18:
	.string	"where"
.LASF3:
	.string	"unsigned char"
.LASF13:
	.string	"GLubyte"
.LASF10:
	.string	"char"
.LASF17:
	.string	"start"
.LASF1:
	.string	"long int"
.LASF20:
	.string	"glutExtensionSupported"
.LASF15:
	.string	"double"
.LASF28:
	.string	"strlen"
.LASF5:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"sizetype"
.LASF26:
	.string	"GNU C 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF4:
	.string	"short int"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"extensions"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
