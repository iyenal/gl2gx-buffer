	.file	"dict.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl __gl_dictListNewDict
	.type	__gl_dictListNewDict, @function
__gl_dictListNewDict:
.LFB0:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/dict.c"
	.loc 1 49 0
	.cfi_startproc
.LVL0:
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stmw 30,8(1)
	.cfi_register 65, 0
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,3
	.loc 1 50 0
	li 3,20
.LVL1:
	.loc 1 49 0
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 49 0
	mr 30,4
	.loc 1 50 0
	bl malloc
.LVL2:
	.loc 1 53 0
	cmpwi 0,3,0
	beq- 0,.L2
.LVL3:
	.loc 1 57 0
	li 10,0
	.loc 1 58 0
	stw 3,4(3)
	.loc 1 57 0
	stw 10,0(3)
	.loc 1 59 0
	stw 3,8(3)
	.loc 1 61 0
	stw 31,12(3)
	.loc 1 62 0
	stw 30,16(3)
.LVL4:
.L2:
	.loc 1 65 0
	addi 11,1,16
	b _restgpr_30_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 65
	.cfi_endproc
.LFE0:
	.size	__gl_dictListNewDict, .-__gl_dictListNewDict
	.align 2
	.globl __gl_dictListDeleteDict
	.type	__gl_dictListDeleteDict, @function
__gl_dictListDeleteDict:
.LFB1:
	.loc 1 69 0
	.cfi_startproc
.LVL5:
	mflr 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stmw 30,8(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 30,3
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 72 0
	lwz 31,4(3)
.LVL6:
.L9:
	.loc 1 72 0 is_stmt 0 discriminator 1
	cmplw 7,31,30
	.loc 1 73 0 is_stmt 1 discriminator 1
	mr 3,31
	.loc 1 72 0 discriminator 1
	beq- 7,.L12
.LVL7:
	.loc 1 73 0 discriminator 2
	bl free
.LVL8:
	.loc 1 72 0 discriminator 2
	lwz 31,4(31)
.LVL9:
	b .L9
.LVL10:
.L12:
	.loc 1 76 0
	lwz 0,20(1)
	lmw 30,8(1)
.LVL11:
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	.loc 1 75 0
	b free
.LVL12:
	.cfi_endproc
.LFE1:
	.size	__gl_dictListDeleteDict, .-__gl_dictListDeleteDict
	.align 2
	.globl __gl_dictListInsertBefore
	.type	__gl_dictListInsertBefore, @function
__gl_dictListInsertBefore:
.LFB2:
	.loc 1 80 0
	.cfi_startproc
.LVL13:
	mflr 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stmw 29,12(1)
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 29,3
	stw 0,28(1)
	.cfi_offset 65, 4
	mr 31,4
	mr 30,5
.LVL14:
.L18:
	.loc 1 84 0 discriminator 1
	lwz 31,8(31)
.LVL15:
	.loc 1 85 0 discriminator 1
	lwz 4,0(31)
	cmpwi 7,4,0
	bne+ 7,.L14
.L17:
	.loc 1 87 0
	li 3,12
	bl malloc
.LVL16:
	.loc 1 88 0
	cmpwi 0,3,0
	beq- 0,.L15
	.loc 1 90 0
	stw 30,0(3)
	.loc 1 91 0
	lwz 9,4(31)
	stw 9,4(3)
	.loc 1 92 0
	lwz 9,4(31)
	stw 3,8(9)
	.loc 1 93 0
	stw 31,8(3)
	.loc 1 94 0
	stw 3,4(31)
	.loc 1 96 0
	b .L15
.LVL17:
.L14:
	.loc 1 85 0 discriminator 1
	lwz 9,16(29)
	mr 5,30
	lwz 3,12(29)
	mtctr 9
	bctrl
.LVL18:
	cmpwi 7,3,0
	beq+ 7,.L18
	b .L17
.LVL19:
.L15:
	.loc 1 97 0
	addi 11,1,24
	b _restgpr_29_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 65
	.cfi_endproc
.LFE2:
	.size	__gl_dictListInsertBefore, .-__gl_dictListInsertBefore
	.align 2
	.globl __gl_dictListDelete
	.type	__gl_dictListDelete, @function
__gl_dictListDelete:
.LFB3:
	.loc 1 101 0
	.cfi_startproc
.LVL20:
	.loc 1 102 0
	lwz 9,4(4)
	.loc 1 104 0
	mr 3,4
.LVL21:
	.loc 1 102 0
	lwz 10,8(4)
	stw 10,8(9)
	.loc 1 103 0
	lwz 9,8(4)
	lwz 10,4(4)
	stw 10,4(9)
	.loc 1 105 0
	.loc 1 104 0
	b free
.LVL22:
	.cfi_endproc
.LFE3:
	.size	__gl_dictListDelete, .-__gl_dictListDelete
	.align 2
	.globl __gl_dictListSearch
	.type	__gl_dictListSearch, @function
__gl_dictListSearch:
.LFB4:
	.loc 1 109 0
	.cfi_startproc
.LVL23:
	mflr 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stmw 29,12(1)
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 30,3
	stw 0,28(1)
	.cfi_offset 65, 4
	.loc 1 109 0
	mr 29,4
	.loc 1 110 0
	mr 31,3
.LVL24:
.L28:
	.loc 1 113 0 discriminator 1
	lwz 31,4(31)
.LVL25:
	.loc 1 114 0 discriminator 1
	lwz 5,0(31)
	cmpwi 7,5,0
	beq- 7,.L29
	lwz 9,16(30)
	mr 4,29
	lwz 3,12(30)
	mtctr 9
	bctrl
.LVL26:
	cmpwi 7,3,0
	beq+ 7,.L28
.L29:
	.loc 1 117 0
	addi 11,1,24
	mr 3,31
	b _restgpr_29_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 65
	.cfi_endproc
.LFE4:
	.size	__gl_dictListSearch, .-__gl_dictListSearch
.Letext0:
	.file 2 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h"
	.file 3 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/dict-list.h"
	.file 4 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\malloc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x30e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x1
	.4byte	.LASF28
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0xd4
	.4byte	0x33
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x43
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x44
	.4byte	0x59
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x14
	.byte	0x3
	.byte	0x65
	.4byte	0x8a
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x3
	.byte	0x66
	.4byte	0x8a
	.byte	0
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x67
	.4byte	0x4c
	.byte	0xc
	.uleb128 0x8
	.string	"leq"
	.byte	0x3
	.byte	0x68
	.4byte	0xe5
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x45
	.4byte	0x95
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0xc
	.byte	0x3
	.byte	0x5f
	.4byte	0xc6
	.uleb128 0x8
	.string	"key"
	.byte	0x3
	.byte	0x60
	.4byte	0x41
	.byte	0
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x61
	.4byte	0xc6
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x62
	.4byte	0xc6
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8a
	.uleb128 0xa
	.4byte	0x21
	.4byte	0xe5
	.uleb128 0xb
	.4byte	0x4c
	.uleb128 0xb
	.4byte	0x41
	.uleb128 0xb
	.4byte	0x41
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xcc
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2f
	.4byte	0x18d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18d
	.uleb128 0xd
	.4byte	.LASF6
	.byte	0x1
	.byte	0x2f
	.4byte	0x4c
	.4byte	.LLST0
	.uleb128 0xe
	.string	"leq"
	.byte	0x1
	.byte	0x2f
	.4byte	0xe5
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x32
	.4byte	0x18d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF5
	.byte	0x1
	.byte	0x33
	.4byte	0xc6
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LVL2
	.4byte	0x2ef
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4e
	.uleb128 0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0x44
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e4
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x44
	.4byte	0x18d
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LASF20
	.byte	0x1
	.byte	0x46
	.4byte	0xc6
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	.LVL8
	.4byte	0x304
	.4byte	0x1da
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL12
	.4byte	0x304
	.byte	0
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4f
	.4byte	0xc6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x259
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4f
	.4byte	0x18d
	.4byte	.LLST5
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x4f
	.4byte	0xc6
	.4byte	.LLST6
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.byte	0x4f
	.4byte	0x41
	.4byte	.LLST7
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x51
	.4byte	0xc6
	.4byte	.LLST8
	.uleb128 0x14
	.4byte	.LVL16
	.4byte	0x2ef
	.4byte	0x24c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LVL18
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0x64
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29e
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x64
	.4byte	0x18d
	.4byte	.LLST9
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x64
	.4byte	0xc6
	.4byte	.LLST10
	.uleb128 0x17
	.4byte	.LVL22
	.4byte	0x304
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x6c
	.4byte	0xc6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ef
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x6c
	.4byte	0x18d
	.4byte	.LLST11
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.byte	0x6c
	.4byte	0x41
	.4byte	.LLST12
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x6e
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x6f
	.uleb128 0x16
	.4byte	.LVL26
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF29
	.byte	0x4
	.byte	0x25
	.4byte	0x4c
	.4byte	0x304
	.uleb128 0xb
	.4byte	0x28
	.byte	0
	.uleb128 0x19
	.4byte	.LASF30
	.byte	0x4
	.byte	0x2d
	.uleb128 0xb
	.4byte	0x4c
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
	.uleb128 0x8
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2-1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-1-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x6d
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
.LASF27:
	.string	"GNU C 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF25:
	.string	"__gl_dictListDelete"
.LASF12:
	.string	"short int"
.LASF2:
	.string	"size_t"
.LASF29:
	.string	"malloc"
.LASF16:
	.string	"sizetype"
.LASF23:
	.string	"newNode"
.LASF5:
	.string	"head"
.LASF22:
	.string	"__gl_dictListInsertBefore"
.LASF30:
	.string	"free"
.LASF19:
	.string	"dict"
.LASF14:
	.string	"long long int"
.LASF3:
	.string	"DictListKey"
.LASF1:
	.string	"long int"
.LASF24:
	.string	"__gl_dictListDeleteDict"
.LASF6:
	.string	"frame"
.LASF20:
	.string	"node"
.LASF11:
	.string	"unsigned char"
.LASF28:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/dict.c"
.LASF10:
	.string	"signed char"
.LASF15:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF26:
	.string	"__gl_dictListSearch"
.LASF13:
	.string	"short unsigned int"
.LASF18:
	.string	"char"
.LASF4:
	.string	"DictList"
.LASF17:
	.string	"long unsigned int"
.LASF7:
	.string	"DictListNode"
.LASF9:
	.string	"prev"
.LASF21:
	.string	"__gl_dictListNewDict"
.LASF8:
	.string	"next"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
