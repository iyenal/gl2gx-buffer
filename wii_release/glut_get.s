	.file	"glut_get.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl glutGet
	.type	glutGet, @function
glutGet:
.LFB0:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/glut/glut_get.c"
	.loc 1 14 0
	.cfi_startproc
.LVL0:
	.loc 1 16 0
	cmplwi 7,3,501
	.loc 1 14 0
	mflr 0
	stwu 1,-8(1)
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 4,3
	stw 0,12(1)
	.cfi_offset 65, 4
	.loc 1 16 0
	bgt- 7,.L3
	cmplwi 7,3,500
	bge- 7,.L11
	cmplwi 7,3,102
	beq- 7,.L5
	bgt+ 7,.L6
	cmplwi 7,3,100
	bge+ 7,.L11
	b .L2
.L6:
	cmplwi 7,3,103
	beq+ 7,.L7
	b .L2
.L3:
	cmplwi 7,3,503
	beq- 7,.L7
	blt- 7,.L5
	cmplwi 7,3,504
	beq+ 7,.L13
	b .L2
.L5:
	.loc 1 32 0
	li 3,200
.LVL1:
	b .L13
.LVL2:
.L7:
	.loc 1 34 0
	li 3,201
.LVL3:
.L13:
	.loc 1 154 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	.loc 1 34 0
	b __glutGet
.LVL4:
.L2:
	.cfi_restore_state
	.loc 1 151 0
	lis 3,.LC0@ha
.LVL5:
	la 3,.LC0@l(3)
	crxor 6,6,6
	bl __glutWarning
.LVL6:
	.loc 1 152 0
	li 3,-1
	b .L4
.LVL7:
.L11:
	.loc 1 18 0
	li 3,0
.LVL8:
.L4:
	.loc 1 154 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE0:
	.size	glutGet, .-glutGet
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"invalid glutGet parameter: %d"
	.section	".text"
.Letext0:
	.file 2 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/include/GL/gl.h"
	.file 3 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/glut/glutint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF13
	.byte	0x1
	.4byte	.LASF14
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x2
	.byte	0x92
	.4byte	0x2c
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
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8d
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0xd
	.4byte	0x48
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd9
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0xd
	.4byte	0x21
	.4byte	.LLST0
	.uleb128 0x8
	.4byte	.LVL4
	.4byte	0xd9
	.uleb128 0x9
	.4byte	.LVL6
	.4byte	0xee
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x3
	.byte	0x3e
	.4byte	0x48
	.4byte	0xee
	.uleb128 0xc
	.4byte	0x21
	.byte	0
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x3
	.byte	0x3b
	.uleb128 0xc
	.4byte	0x87
	.uleb128 0xe
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
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
	.byte	0x54
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4-1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE0-.Ltext0
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
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"GLenum"
.LASF11:
	.string	"long unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF5:
	.string	"float"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF19:
	.string	"__glutWarning"
.LASF6:
	.string	"double"
.LASF18:
	.string	"__glutGet"
.LASF4:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF16:
	.string	"glutGet"
.LASF13:
	.string	"GNU C 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF3:
	.string	"short int"
.LASF14:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/glut/glut_get.c"
.LASF10:
	.string	"sizetype"
.LASF17:
	.string	"param"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
