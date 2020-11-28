	.file	"gl_textures.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	scale_s32, @function
scale_s32:
.LFB96:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl_textures.c"
	.loc 1 1112 0
	.cfi_startproc
.LVL0:
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.loc 1 1115 0
	lis 9,0x4330
	xoris 3,3,0x8000
.LVL1:
	stw 9,8(1)
	lis 9,.LC1@ha
	stw 3,12(1)
	lfs 1,.LC1@l(9)
	.loc 1 1121 0
	lis 9,.LC2@ha
	.loc 1 1115 0
	lfd 0,8(1)
	.loc 1 1121 0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	.loc 1 1115 0
	fsub 1,0,1
	.loc 1 1121 0
	lfs 0,.LC2@l(9)
	.loc 1 1115 0
	frsp 1,1
	.loc 1 1121 0
	fmuls 1,1,0
	blr
	.cfi_endproc
.LFE96:
	.size	scale_s32, .-scale_s32
	.align 2
	.globl glPixelStorei
	.type	glPixelStorei, @function
glPixelStorei:
.LFB65:
	.loc 1 22 0
	.cfi_startproc
	.loc 1 23 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L4
	.loc 1 23 0 discriminator 1
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,23
	b .L32
.L4:
	.loc 1 25 0
	addi 3,3,-3312
	cmplwi 7,3,21
	bgt- 7,.L31
	lis 9,.L7@ha
	slwi 3,3,2
	la 9,.L7@l(9)
	.loc 1 22 0
	mflr 0
	.loc 1 25 0
	lwzx 10,9,3
	.loc 1 22 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 25 0
	add 9,10,9
	mtctr 9
	.loc 1 22 0
	stw 31,12(1)
	stw 0,20(1)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	mr 31,4
	.loc 1 25 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L7:
	.long .L6-.L7
	.long .L8-.L7
	.long .L9-.L7
	.long .L10-.L7
	.long .L11-.L7
	.long .L12-.L7
	.long .L5-.L7
	.long .L5-.L7
	.long .L5-.L7
	.long .L5-.L7
	.long .L5-.L7
	.long .L5-.L7
	.long .L5-.L7
	.long .L5-.L7
	.long .L5-.L7
	.long .L5-.L7
	.long .L13-.L7
	.long .L14-.L7
	.long .L15-.L7
	.long .L16-.L7
	.long .L17-.L7
	.long .L18-.L7
	.section	".text"
.L13:
	.loc 1 27 0
	addic 9,4,-1
	subfe 31,9,4
	lis 9,pack@ha
	stb 31,pack@l(9)
	b .L3
.L14:
	.loc 1 28 0
	addic 10,4,-1
	subfe 31,10,4
	lis 9,pack+1@ha
	stb 31,pack+1@l(9)
	b .L3
.L15:
	.loc 1 30 0
	cmpwi 7,4,0
	bge+ 7,.L20
	.loc 1 32 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,32
	b .L33
.L20:
	.loc 1 35 0
	lis 9,pack+4@ha
	stw 4,pack+4@l(9)
	.loc 1 36 0
	b .L3
.L16:
	.loc 1 38 0
	cmpwi 7,4,0
	bge+ 7,.L21
	.loc 1 40 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,40
	b .L33
.L21:
	.loc 1 43 0
	lis 9,pack+8@ha
	stw 4,pack+8@l(9)
	.loc 1 44 0
	b .L3
.L17:
	.loc 1 46 0
	cmpwi 7,4,0
	bge+ 7,.L22
	.loc 1 48 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,48
	b .L33
.L22:
	.loc 1 51 0
	lis 9,pack+12@ha
	stw 4,pack+12@l(9)
	.loc 1 52 0
	b .L3
.L18:
	addi 9,4,-1
	cmplwi 7,9,7
	bgt- 7,.L23
	li 10,1
	slw 9,10,9
	andi. 10,9,139
	bne- 0,.L24
.L23:
	.loc 1 61 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,61
	bl _glSetErrorEx
.L24:
	.loc 1 63 0
	lis 9,pack+16@ha
	stw 31,pack+16@l(9)
	.loc 1 64 0
	b .L3
.L6:
	.loc 1 65 0
	addic 9,4,-1
	subfe 31,9,4
	lis 9,unpack@ha
	stb 31,unpack@l(9)
	b .L3
.L8:
	.loc 1 66 0
	addic 10,4,-1
	subfe 31,10,4
	lis 9,unpack+1@ha
	stb 31,unpack+1@l(9)
	b .L3
.L9:
	.loc 1 68 0
	cmpwi 7,4,0
	bge+ 7,.L25
	.loc 1 70 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,70
	b .L33
.L25:
	.loc 1 73 0
	lis 9,unpack+4@ha
	stw 4,unpack+4@l(9)
	.loc 1 74 0
	b .L3
.L10:
	.loc 1 76 0
	cmpwi 7,4,0
	bge+ 7,.L26
	.loc 1 78 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,78
	b .L33
.L26:
	.loc 1 81 0
	lis 9,unpack+8@ha
	stw 4,unpack+8@l(9)
	.loc 1 82 0
	b .L3
.L11:
	.loc 1 84 0
	cmpwi 7,4,0
	bge+ 7,.L27
	.loc 1 86 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,86
	b .L33
.L27:
	.loc 1 89 0
	lis 9,unpack+12@ha
	stw 4,unpack+12@l(9)
	.loc 1 90 0
	b .L3
.L12:
	addi 9,4,-1
	cmplwi 7,9,7
	bgt- 7,.L28
	li 10,1
	slw 9,10,9
	andi. 10,9,139
	bne- 0,.L29
.L28:
	.loc 1 99 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,99
	bl _glSetErrorEx
.L29:
	.loc 1 101 0
	lis 9,unpack+16@ha
	stw 31,unpack+16@l(9)
	.loc 1 102 0
	b .L3
.L5:
	.loc 1 104 0
	lis 4,.LC3@ha
	li 3,1280
	la 4,.LC3@l(4)
	li 5,104
.L33:
	.loc 1 107 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	b .L32
.L3:
	.cfi_restore_state
	addi 11,1,16
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
.L31:
	.cfi_def_cfa_offset 0
	.loc 1 104 0
	lis 4,.LC3@ha
	li 3,1280
	la 4,.LC3@l(4)
	li 5,104
.L32:
	b _glSetErrorEx
	.cfi_endproc
.LFE65:
	.size	glPixelStorei, .-glPixelStorei
	.align 2
	.globl glPixelStoref
	.type	glPixelStoref, @function
glPixelStoref:
.LFB64:
	.loc 1 17 0
	.cfi_startproc
.LVL2:
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.loc 1 18 0
	fctiwz 1,1
.LVL3:
	addi 9,1,8
	stfiwx 1,0,9
	lwz 4,8(1)
	.loc 1 19 0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	.loc 1 18 0
	b glPixelStorei
.LVL4:
	.cfi_endproc
.LFE64:
	.size	glPixelStoref, .-glPixelStoref
	.align 2
	.globl _glGetPixelStore
	.type	_glGetPixelStore, @function
_glGetPixelStore:
.LFB66:
	.loc 1 111 0
	.cfi_startproc
.LVL5:
	.loc 1 112 0
	addi 3,3,-3312
.LVL6:
	cmplwi 7,3,21
	bgt- 7,.L38
	lis 9,.L40@ha
	slwi 3,3,2
.LVL7:
	la 9,.L40@l(9)
	lwzx 10,9,3
	add 9,10,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L40:
	.long .L39-.L40
	.long .L41-.L40
	.long .L42-.L40
	.long .L43-.L40
	.long .L44-.L40
	.long .L45-.L40
	.long .L38-.L40
	.long .L38-.L40
	.long .L38-.L40
	.long .L38-.L40
	.long .L38-.L40
	.long .L38-.L40
	.long .L38-.L40
	.long .L38-.L40
	.long .L38-.L40
	.long .L38-.L40
	.long .L46-.L40
	.long .L47-.L40
	.long .L48-.L40
	.long .L49-.L40
	.long .L50-.L40
	.long .L51-.L40
	.section	".text"
.L46:
	.loc 1 114 0
	lis 9,pack@ha
	lbz 9,pack@l(9)
	b .L53
.L47:
	.loc 1 115 0
	lis 9,pack+1@ha
	lbz 9,pack+1@l(9)
	b .L53
.L48:
	.loc 1 116 0
	lis 9,pack+4@ha
	lwz 9,pack+4@l(9)
	b .L53
.L49:
	.loc 1 117 0
	lis 9,pack+8@ha
	lwz 9,pack+8@l(9)
	b .L53
.L50:
	.loc 1 118 0
	lis 9,pack+12@ha
	lwz 9,pack+12@l(9)
	b .L53
.L51:
	.loc 1 119 0
	lis 9,pack+16@ha
	lwz 9,pack+16@l(9)
	b .L53
.L39:
	.loc 1 120 0
	lis 9,unpack@ha
	lbz 9,unpack@l(9)
	b .L53
.L41:
	.loc 1 121 0
	lis 9,unpack+1@ha
	lbz 9,unpack+1@l(9)
	b .L53
.L42:
	.loc 1 122 0
	lis 9,unpack+4@ha
	lwz 9,unpack+4@l(9)
	b .L53
.L43:
	.loc 1 123 0
	lis 9,unpack+8@ha
	lwz 9,unpack+8@l(9)
	b .L53
.L44:
	.loc 1 124 0
	lis 9,unpack+12@ha
	lwz 9,unpack+12@l(9)
	b .L53
.L45:
	.loc 1 125 0
	lis 9,unpack+16@ha
	lwz 9,unpack+16@l(9)
.L53:
	stw 9,0(4)
	blr
.L38:
	.loc 1 127 0
	lis 4,.LC3@ha
.LVL8:
	li 3,1280
	la 4,.LC3@l(4)
	li 5,127
	.loc 1 130 0
	.loc 1 127 0
	b _glSetErrorEx
.LVL9:
	.cfi_endproc
.LFE66:
	.size	_glGetPixelStore, .-_glGetPixelStore
	.align 2
	.globl GL2GX_Wrap
	.type	GL2GX_Wrap, @function
GL2GX_Wrap:
.LFB67:
	.loc 1 133 0
	.cfi_startproc
.LVL10:
	.loc 1 134 0
	cmpwi 7,3,10497
	beq- 7,.L56
	xoris 9,3,0xffff
	cmpwi 7,9,-32465
	beq 7,.L57
	cmpwi 7,3,10496
	bne+ 7,.L62
.L57:
	.loc 1 137 0
	li 9,0
	b .L63
.L56:
	.loc 1 138 0
	li 9,1
.L63:
	stb 9,0(4)
	blr
.L62:
.LVL11:
.LBB23:
.LBB24:
	.loc 1 140 0
	lis 4,.LC3@ha
.LVL12:
	li 3,1280
.LVL13:
	la 4,.LC3@l(4)
	li 5,140
.LBE24:
.LBE23:
	.loc 1 143 0
.LBB26:
.LBB25:
	.loc 1 140 0
	b _glSetErrorEx
.LVL14:
.LBE25:
.LBE26:
	.cfi_endproc
.LFE67:
	.size	GL2GX_Wrap, .-GL2GX_Wrap
	.align 2
	.globl GL2GX_Filter
	.type	GL2GX_Filter, @function
GL2GX_Filter:
.LFB68:
	.loc 1 146 0
	.cfi_startproc
.LVL15:
	.loc 1 147 0
	cmpwi 7,3,9984
	beq- 7,.L66
	bgt+ 7,.L67
	cmpwi 7,3,9728
	beq- 7,.L68
	cmpwi 7,3,9729
	.loc 1 150 0
	li 9,1
	.loc 1 147 0
	beq+ 7,.L74
	b .L65
.L67:
	cmpwi 7,3,9986
	beq- 7,.L70
	blt- 7,.L71
	cmpwi 7,3,9987
	.loc 1 154 0
	li 9,5
	.loc 1 147 0
	beq+ 7,.L74
	b .L65
.L68:
	.loc 1 149 0
	li 9,0
	b .L74
.L66:
	.loc 1 151 0
	li 9,2
	b .L74
.L71:
	.loc 1 152 0
	li 9,3
	b .L74
.L70:
	.loc 1 153 0
	li 9,4
.L74:
	.loc 1 154 0
	stb 9,0(4)
	blr
.L65:
.LVL16:
.LBB29:
.LBB30:
	.loc 1 156 0
	lis 4,.LC3@ha
.LVL17:
	li 3,1280
.LVL18:
	la 4,.LC3@l(4)
	li 5,156
.LBE30:
.LBE29:
	.loc 1 159 0
.LBB32:
.LBB31:
	.loc 1 156 0
	b _glSetErrorEx
.LVL19:
.LBE31:
.LBE32:
	.cfi_endproc
.LFE68:
	.size	GL2GX_Filter, .-GL2GX_Filter
	.align 2
	.globl _glGetSize
	.type	_glGetSize, @function
_glGetSize:
.LFB69:
	.loc 1 197 0
	.cfi_startproc
.LVL20:
	cmplwi 7,3,39
	bgt- 7,.L84
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	lbzux 10,9,3
	lbz 7,40(9)
	extsb 10,10
	lbz 8,80(9)
	lbz 9,120(9)
	extsb 7,7
	extsb 8,8
	extsb 9,9
	b .L76
.L84:
	.loc 1 197 0
	li 9,0
	li 8,0
	li 7,0
	li 10,0
.L76:
.LVL21:
	.loc 1 210 0
	cmplwi 7,4,6405
	beq- 7,.L78
	bgt- 7,.L79
	cmplwi 7,4,6403
	beq- 7,.L78
	cmplwi 7,4,6404
	bnelr- 7
	.loc 1 213 0
	stw 7,0(5)
	blr
.L79:
	.loc 1 210 0
	cmplwi 7,4,6409
	beq- 7,.L82
	xoris 10,4,0xffff
.LVL22:
	cmpwi 7,10,-32695
	beq 7,.L82
	cmplwi 7,4,6406
	bnelr- 7
	.loc 1 215 0
	stw 8,0(5)
	blr
.LVL23:
.L78:
	.loc 1 214 0
	stw 10,0(5)
	blr
.LVL24:
.L82:
	.loc 1 217 0
	stw 9,0(5)
	blr
	.cfi_endproc
.LFE69:
	.size	_glGetSize, .-_glGetSize
	.align 2
	.globl GX_SetTevCIn
	.type	GX_SetTevCIn, @function
GX_SetTevCIn:
.LFB71:
	.loc 1 269 0
	.cfi_startproc
.LVL25:
	.loc 1 272 0
	cmplwi 7,3,5890
	.loc 1 270 0
	li 9,15
	stb 9,0(5)
	.loc 1 272 0
	bne+ 7,.L89
	.loc 1 274 0
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	stb 9,0(6)
	b .L95
.L89:
	.loc 1 276 0
	addis 9,3,0xffff
	addi 9,9,31552
	cmplwi 6,9,7
	bgt- 6,.L91
	.loc 1 278 0
	addi 3,3,64
.LVL26:
	stb 3,0(6)
.LVL27:
	b .L95
.LVL28:
.L91:
	.loc 1 284 0
	li 9,-1
	stb 9,0(6)
	.loc 1 287 0
	xoris 9,3,0xffff
	cmpwi 6,9,-31369
	beq 6,.L93
	xoris 9,3,0xffff
	cmpwi 6,9,-31368
	beq 6,.L94
	bnelr+ 7
.LVL29:
.L95:
	.loc 1 290 0
	cmplwi 7,4,768
	beq- 7,.L96
	cmplwi 7,4,770
	bnelr- 7
	.loc 1 293 0
	li 9,9
	b .L102
.L96:
	.loc 1 292 0
	li 9,8
	b .L102
.LVL30:
.L93:
	.loc 1 297 0
	cmplwi 7,4,768
	bne+ 7,.L103
	.loc 1 299 0
	li 9,10
.LVL31:
.L102:
	.loc 1 293 0
	stb 9,0(5)
	blr
.LVL32:
.L103:
	.loc 1 297 0
	cmplwi 7,4,770
	bnelr- 7
	.loc 1 300 0
	li 9,5
	b .L102
.L94:
	.loc 1 304 0
	cmplwi 7,4,768
	beq- 7,.L100
	cmplwi 7,4,770
	bnelr- 7
	.loc 1 307 0
	stb 8,0(5)
	blr
.L100:
	.loc 1 306 0
	stb 7,0(5)
	blr
	.cfi_endproc
.LFE71:
	.size	GX_SetTevCIn, .-GX_SetTevCIn
	.align 2
	.globl GX_SetTevAIn
	.type	GX_SetTevAIn, @function
GX_SetTevAIn:
.LFB72:
	.loc 1 314 0
	.cfi_startproc
.LVL33:
	.loc 1 317 0
	cmplwi 7,3,5890
	.loc 1 315 0
	li 9,7
	stb 9,0(5)
	.loc 1 317 0
	bne+ 7,.L105
	.loc 1 319 0
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	stb 9,0(6)
	b .L111
.L105:
	.loc 1 321 0
	addis 9,3,0xffff
	addi 9,9,31552
	cmplwi 6,9,7
	bgt- 6,.L107
	.loc 1 323 0
	addi 3,3,64
.LVL34:
	stb 3,0(6)
.LVL35:
	b .L111
.LVL36:
.L107:
	.loc 1 329 0
	li 9,-1
	stb 9,0(6)
	.loc 1 332 0
	xoris 9,3,0xffff
	cmpwi 6,9,-31369
	beq 6,.L109
	xoris 9,3,0xffff
	cmpwi 6,9,-31368
	beq 6,.L110
	bnelr+ 7
.LVL37:
.L111:
	.loc 1 334 0
	li 9,4
	b .L112
.LVL38:
.L109:
	.loc 1 335 0
	li 9,5
.LVL39:
.L112:
	stb 9,0(5)
	blr
.LVL40:
.L110:
	.loc 1 336 0
	stb 7,0(5)
	blr
	.cfi_endproc
.LFE72:
	.size	GX_SetTevAIn, .-GX_SetTevAIn
	.align 2
	.globl GX_IncReg
	.type	GX_IncReg, @function
GX_IncReg:
.LFB73:
	.loc 1 341 0
	.cfi_startproc
.LVL41:
	.loc 1 342 0
	cmplwi 7,3,1
	beq- 7,.L117
	.loc 1 345 0
	xori 3,3,2
.LVL42:
	addic 3,3,-1
	subfe 3,3,3
	rlwinm 3,3,0,30,30
	addi 3,3,1
	blr
.LVL43:
.L117:
	.loc 1 346 0
	li 3,2
.LVL44:
	.loc 1 349 0
	blr
	.cfi_endproc
.LFE73:
	.size	GX_IncReg, .-GX_IncReg
	.align 2
	.globl GX_IncCCReg
	.type	GX_IncCCReg, @function
GX_IncCCReg:
.LFB74:
	.loc 1 352 0
	.cfi_startproc
.LVL45:
	.loc 1 353 0
	cmplwi 7,3,1
	beq- 7,.L122
	.loc 1 356 0
	xori 3,3,2
.LVL46:
	addic 3,3,-1
	subfe 3,3,3
	rlwinm 3,3,0,29,29
	addi 3,3,2
	blr
.LVL47:
.L122:
	.loc 1 357 0
	li 3,4
.LVL48:
	.loc 1 360 0
	blr
	.cfi_endproc
.LFE74:
	.size	GX_IncCCReg, .-GX_IncCCReg
	.align 2
	.globl GX_IncCAReg
	.type	GX_IncCAReg, @function
GX_IncCAReg:
.LFB75:
	.loc 1 363 0
	.cfi_startproc
.LVL49:
	.loc 1 364 0
	cmplwi 7,3,1
	beq- 7,.L127
	.loc 1 367 0
	xori 3,3,2
.LVL50:
	addic 3,3,-1
	subfe 3,3,3
	rlwinm 3,3,0,29,29
	addi 3,3,3
	blr
.LVL51:
.L127:
	.loc 1 368 0
	li 3,5
.LVL52:
	.loc 1 371 0
	blr
	.cfi_endproc
.LFE75:
	.size	GX_IncCAReg, .-GX_IncCAReg
	.align 2
	.globl GX_IncAAReg
	.type	GX_IncAAReg, @function
GX_IncAAReg:
.LFB76:
	.loc 1 374 0
	.cfi_startproc
.LVL53:
	.loc 1 375 0
	cmplwi 7,3,1
	beq- 7,.L132
	.loc 1 378 0
	xori 3,3,2
.LVL54:
	addic 3,3,-1
	subfe 3,3,3
	rlwinm 3,3,0,30,30
	addi 3,3,1
	blr
.LVL55:
.L132:
	.loc 1 379 0
	li 3,2
.LVL56:
	.loc 1 382 0
	blr
	.cfi_endproc
.LFE76:
	.size	GX_IncAAReg, .-GX_IncAAReg
	.align 2
	.globl GX_IncTexMap
	.type	GX_IncTexMap, @function
GX_IncTexMap:
.LFB77:
	.loc 1 385 0
	.cfi_startproc
.LVL57:
	addi 3,3,-1
.LVL58:
	rlwinm 3,3,0,0xff
	cmplwi 7,3,6
	bgt- 7,.L135
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	add 3,9,3
	lbz 3,160(3)
	blr
.L135:
	.loc 1 385 0
	li 3,0
	.loc 1 398 0
	blr
	.cfi_endproc
.LFE77:
	.size	GX_IncTexMap, .-GX_IncTexMap
	.align 2
	.globl GX_IncTexCoord
	.type	GX_IncTexCoord, @function
GX_IncTexCoord:
.LFB78:
	.loc 1 401 0
	.cfi_startproc
.LVL59:
	addi 3,3,-1
.LVL60:
	rlwinm 3,3,0,0xff
	cmplwi 7,3,6
	bgt- 7,.L138
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	add 3,9,3
	lbz 3,168(3)
	blr
.L138:
	.loc 1 401 0
	li 3,0
	.loc 1 414 0
	blr
	.cfi_endproc
.LFE78:
	.size	GX_IncTexCoord, .-GX_IncTexCoord
	.align 2
	.globl GX_SetTevCombineStage
	.type	GX_SetTevCombineStage, @function
GX_SetTevCombineStage:
.LFB79:
	.loc 1 418 0
	.cfi_startproc
.LVL61:
	stwu 1,-80(1)
	.cfi_def_cfa_offset 80
	mflr 0
	.loc 1 419 0
	li 9,0
	.loc 1 418 0
	stmw 18,24(1)
	.cfi_register 65, 0
	.cfi_offset 18, -56
	.cfi_offset 19, -52
	.cfi_offset 20, -48
	.cfi_offset 21, -44
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.loc 1 424 0
	mr. 31,3
	.loc 1 418 0
	stw 0,84(1)
	.cfi_offset 65, 4
	.loc 1 418 0
	mr 26,4
	.loc 1 419 0
	stw 9,0(4)
.LVL62:
	.loc 1 424 0
	bne- 0,.L180
	.loc 1 422 0
	li 22,5
	.loc 1 421 0
	li 20,10
	b .L140
.L180:
	.loc 1 426 0
	li 22,0
	.loc 1 425 0
	li 20,0
.L140:
.LVL63:
	.loc 1 442 0
	li 9,0
	.loc 1 444 0
	addi 24,1,12
	li 10,-1
	.loc 1 445 0
	addi 23,1,8
	.loc 1 446 0
	addi 19,1,20
	li 7,15
	.loc 1 447 0
	addi 21,1,16
	li 8,7
.LVL64:
.L142:
	.loc 1 442 0 discriminator 2
	cmpwi 7,9,2
	.loc 1 444 0 discriminator 2
	stbx 10,9,24
	.loc 1 445 0 discriminator 2
	stbx 10,9,23
	.loc 1 446 0 discriminator 2
	stbx 7,9,19
	.loc 1 447 0 discriminator 2
	stbx 8,9,21
	.loc 1 442 0 discriminator 2
	addi 9,9,1
.LVL65:
	bne+ 7,.L142
.LVL66:
	.loc 1 454 0
	lis 27,cur_tex@ha
	lis 30,glTexEnvs@ha
	lwz 9,cur_tex@l(27)
.LVL67:
	la 30,glTexEnvs@l(30)
	mulli 9,9,108
	add 9,30,9
	lwz 9,28(9)
	cmplwi 7,9,8448
	beq- 7,.L181
	bgt- 7,.L145
	cmplwi 7,9,260
	beq- 7,.L181
	cmplwi 7,9,7681
	.loc 1 456 0
	li 28,1
	.loc 1 454 0
	beq+ 7,.L144
	b .L139
.L145:
	xoris 10,9,0xffff
	cmpwi 7,10,-31372
	beq 7,.L181
	xoris 10,9,0xffff
	.loc 1 461 0
	li 28,3
	.loc 1 454 0
	cmpwi 7,10,-31371
	beq 7,.L144
	xoris 10,9,0xffff
	cmpwi 7,10,-31513
	bne 7,.L139
.L181:
	.loc 1 460 0
	li 28,2
.L144:
.LVL68:
	.loc 1 468 0
	li 29,0
	.loc 1 470 0
	la 25,cur_tex@l(27)
.LVL69:
.L149:
	.loc 1 470 0 is_stmt 0 discriminator 2
	lwz 9,0(25)
	add 5,19,29
	add 6,24,29
	mr 7,20
	mulli 9,9,27
	mr 8,22
	mr 18,25
	add 9,9,29
	.loc 1 468 0 is_stmt 1 discriminator 2
	addi 29,29,1
.LVL70:
	.loc 1 470 0 discriminator 2
	addi 10,9,8
	addi 9,9,12
	slwi 10,10,2
	slwi 9,9,2
	add 10,30,10
	lwzx 4,30,9
	lwz 3,4(10)
	bl GX_SetTevCIn
.LVL71:
	.loc 1 468 0 discriminator 2
	cmpw 7,29,28
	blt+ 7,.L149
	.loc 1 474 0
	lwz 9,0(25)
	mulli 9,9,108
	add 9,30,9
	lwz 9,32(9)
	cmplwi 7,9,8448
	beq- 7,.L182
	bgt- 7,.L151
	cmplwi 7,9,260
	beq- 7,.L182
	cmplwi 7,9,7681
	.loc 1 476 0
	li 25,1
	.loc 1 474 0
	beq+ 7,.L150
	b .L139
.L151:
	xoris 10,9,0xffff
	cmpwi 7,10,-31372
	beq 7,.L182
	xoris 10,9,0xffff
	.loc 1 481 0
	li 25,3
	.loc 1 474 0
	cmpwi 7,10,-31371
	beq 7,.L150
	xoris 10,9,0xffff
	cmpwi 7,10,-31513
	bne 7,.L139
.L182:
	.loc 1 480 0
	li 25,2
.L150:
.LVL72:
	.loc 1 486 0
	li 29,0
.LVL73:
.L155:
	.loc 1 488 0 discriminator 2
	lwz 9,0(18)
	add 5,21,29
	add 6,23,29
	mr 7,22
	mulli 9,9,27
	add 9,9,29
	.loc 1 486 0 discriminator 2
	addi 29,29,1
.LVL74:
	.loc 1 488 0 discriminator 2
	addi 10,9,12
	addi 9,9,16
	slwi 10,10,2
	slwi 9,9,2
	add 10,30,10
	add 9,30,9
	lwz 3,12(10)
	lwz 4,8(9)
	bl GX_SetTevAIn
.LVL75:
	.loc 1 486 0 discriminator 2
	cmpw 7,29,25
	blt+ 7,.L155
.LVL76:
	cmpw 7,25,28
	bge- 7,.L156
	mr 25,28
.LVL77:
.L156:
	cmpwi 7,25,0
	.loc 1 503 0
	li 28,0
.LVL78:
	.loc 1 502 0
	li 29,-1
	mr 9,25
	bgt+ 7,.L160
	li 9,1
.LVL79:
.L160:
	.loc 1 505 0
	lbzx 10,24,28
	extsb 10,10
	cmpwi 7,10,-1
	beq- 7,.L157
	.loc 1 507 0
	cmpwi 7,29,-1
	beq- 7,.L183
	.loc 1 513 0
	cmpw 7,29,10
	beq+ 7,.L157
	.loc 1 515 0
	lis 4,.LC3@ha
	li 3,1280
	la 4,.LC3@l(4)
	li 5,515
	b .L214
.L183:
	mr 29,10
.LVL80:
.L157:
	.loc 1 520 0
	lbzx 10,23,28
	extsb 10,10
	cmpwi 7,10,-1
	beq- 7,.L158
	.loc 1 522 0
	cmpwi 7,29,-1
	beq- 7,.L184
	.loc 1 528 0
	cmpw 7,29,10
	beq+ 7,.L158
	.loc 1 530 0
	lis 4,.LC3@ha
	li 3,1280
	la 4,.LC3@l(4)
	li 5,530
.LVL81:
.L214:
	bl _glSetErrorEx
.LVL82:
	.loc 1 531 0
	b .L139
.LVL83:
.L184:
	mr 29,10
.LVL84:
.L158:
	.loc 1 503 0
	addic. 9,9,-1
	addi 28,28,1
.LVL85:
	bne+ 0,.L160
	.loc 1 545 0
	lwz 9,cur_tex@l(27)
	mulli 9,9,108
	add 9,30,9
	lwz 9,28(9)
	cmplwi 7,9,8448
	beq- 7,.L161
	bgt+ 7,.L162
	cmplwi 7,9,260
	beq- 7,.L163
	cmplwi 7,9,7681
	.loc 1 548 0
	mr 3,31
	li 4,15
	.loc 1 545 0
	beq+ 7,.L216
	b .L139
.L162:
	xoris 10,9,0xffff
	cmpwi 7,10,-31372
	beq 7,.L165
	xoris 10,9,0xffff
	cmpwi 7,10,-31371
	beq 7,.L166
	xoris 10,9,0xffff
	cmpwi 7,10,-31513
	bne 7,.L139
	.loc 1 568 0
	lbz 4,21(1)
	li 5,15
	lbz 7,20(1)
	mr 3,31
	li 6,15
	bl GX_SetTevColorIn
.LVL86:
	.loc 1 570 0
	li 5,0
	.loc 1 569 0
	li 4,1
	.loc 1 571 0
	b .L168
.LVL87:
.L161:
	.loc 1 553 0
	mr 3,31
	li 4,15
	lbz 5,20(1)
	lbz 6,21(1)
	b .L209
.L163:
	.loc 1 558 0
	lbz 4,21(1)
	mr 3,31
.L216:
	li 5,15
	li 6,15
	lbz 7,20(1)
	b .L208
.L165:
	.loc 1 563 0
	lbz 4,21(1)
	li 5,15
	lbz 7,20(1)
	mr 3,31
	li 6,15
	bl GX_SetTevColorIn
.LVL88:
	.loc 1 565 0
	li 5,2
	b .L210
.LVL89:
.L166:
	.loc 1 573 0
	lbz 4,21(1)
	mr 3,31
	lbz 5,20(1)
	lbz 6,22(1)
.L209:
	li 7,15
.L208:
	bl GX_SetTevColorIn
.LVL90:
	.loc 1 575 0
	li 5,0
.LVL91:
.L210:
	.loc 1 574 0
	li 4,0
.LVL92:
.L168:
	.loc 1 583 0
	lwz 10,cur_tex@l(27)
	mr 3,31
	li 7,1
	li 8,0
	mulli 10,10,108
	add 10,30,10
	lbz 6,104(10)
	bl GX_SetTevColorOp
.LVL93:
	.loc 1 593 0
	lwz 9,cur_tex@l(27)
	mulli 9,9,108
	add 9,30,9
	lwz 9,32(9)
	cmplwi 7,9,8448
	beq- 7,.L169
	bgt+ 7,.L170
	cmplwi 7,9,260
	beq- 7,.L171
	cmplwi 7,9,7681
	.loc 1 596 0
	mr 3,31
	li 4,7
	.loc 1 593 0
	beq+ 7,.L217
	b .L139
.L170:
	xoris 10,9,0xffff
	cmpwi 7,10,-31372
	beq 7,.L173
	xoris 10,9,0xffff
	cmpwi 7,10,-31371
	beq 7,.L174
	xoris 10,9,0xffff
	cmpwi 7,10,-31513
	bne 7,.L139
	.loc 1 616 0
	lbz 4,17(1)
	li 5,7
	lbz 7,16(1)
	mr 3,31
	li 6,7
	bl GX_SetTevAlphaIn
.LVL94:
	.loc 1 618 0
	li 5,0
	.loc 1 617 0
	li 4,1
	.loc 1 619 0
	b .L176
.LVL95:
.L169:
	.loc 1 601 0
	mr 3,31
	li 4,7
	lbz 5,16(1)
	lbz 6,17(1)
	b .L212
.L171:
	.loc 1 606 0
	lbz 4,17(1)
	mr 3,31
.L217:
	li 5,7
	li 6,7
	lbz 7,16(1)
	b .L211
.L173:
	.loc 1 611 0
	lbz 4,17(1)
	li 5,7
	lbz 7,16(1)
	mr 3,31
	li 6,7
	bl GX_SetTevAlphaIn
.LVL96:
	.loc 1 613 0
	li 5,2
	b .L213
.LVL97:
.L174:
	.loc 1 621 0
	lbz 4,17(1)
	mr 3,31
	lbz 5,16(1)
	lbz 6,18(1)
.L212:
	li 7,7
.L211:
	bl GX_SetTevAlphaIn
.LVL98:
	.loc 1 623 0
	li 5,0
.LVL99:
.L213:
	.loc 1 622 0
	li 4,0
.LVL100:
.L176:
	.loc 1 629 0
	lwz 10,cur_tex@l(27)
	mr 3,31
	li 7,1
	li 8,0
	mulli 10,10,108
	add 30,30,10
	lbz 6,105(30)
	bl GX_SetTevAlphaOp
.LVL101:
	.loc 1 637 0
	cmpwi 7,29,-1
	.loc 1 635 0
	li 9,1
	stw 9,0(26)
	.loc 1 637 0
	bne+ 7,.L177
	.loc 1 639 0
	mr 3,31
	li 4,255
	li 5,255
	b .L215
.L177:
	.loc 1 643 0
	rlwinm 28,28,0,0xff
.LVL102:
	mr 3,28
	bl GX_IncTexCoord
.LVL103:
	mr 30,3
	mr 3,28
	bl GX_IncTexMap
.LVL104:
	mr 4,30
	mr 5,3
	mr 3,31
.L215:
	li 6,4
	bl GX_SetTevOrder
.LVL105:
.L139:
	.loc 1 645 0
	addi 11,1,80
	b _restgpr_18_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 65
	.cfi_endproc
.LFE79:
	.size	GX_SetTevCombineStage, .-GX_SetTevCombineStage
	.align 2
	.globl setAniso
	.type	setAniso, @function
setAniso:
.LFB81:
	.loc 1 785 0
	.cfi_startproc
.LVL106:
	.loc 1 786 0
	lis 9,.LC4@ha
	lis 10,cur_tex@ha
	lfs 0,.LC4@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	fcmpu 7,1,0
	bnl+ 7,.L226
	.loc 1 788 0
	lwz 10,cur_tex@l(10)
	mulli 10,10,108
	add 9,9,10
	li 10,0
	b .L228
.L226:
.LVL107:
.LBB35:
.LBB36:
	.loc 1 790 0
	lis 8,.LC5@ha
	.loc 1 792 0
	lwz 10,cur_tex@l(10)
	.loc 1 790 0
	lfs 0,.LC5@l(8)
	.loc 1 792 0
	mulli 10,10,108
	.loc 1 790 0
	fcmpu 7,1,0
	.loc 1 792 0
	add 9,9,10
	li 10,1
	.loc 1 790 0
	blt- 7,.L228
	.loc 1 796 0
	li 10,2
.LVL108:
.L228:
	stb 10,22(9)
	blr
.LBE36:
.LBE35:
	.cfi_endproc
.LFE81:
	.size	setAniso, .-setAniso
	.align 2
	.globl setMaxLod
	.type	setMaxLod, @function
setMaxLod:
.LFB82:
	.loc 1 801 0
	.cfi_startproc
.LVL109:
	.loc 1 802 0
	lis 9,.LC6@ha
	lis 10,cur_tex@ha
	lfs 0,.LC6@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	fcmpu 7,1,0
	bng+ 7,.L237
	.loc 1 804 0
	lwz 10,cur_tex@l(10)
	mulli 10,10,108
	add 9,9,10
	b .L239
.L237:
.LVL110:
.LBB39:
.LBB40:
	.loc 1 806 0
	lis 8,.LC7@ha
	.loc 1 808 0
	lwz 10,cur_tex@l(10)
	.loc 1 806 0
	lfs 0,.LC7@l(8)
	.loc 1 808 0
	mulli 10,10,108
	.loc 1 806 0
	fcmpu 7,1,0
	.loc 1 808 0
	add 9,9,10
	.loc 1 806 0
	bnl+ 7,.L238
.LVL111:
.L239:
	.loc 1 808 0
	stfs 0,12(9)
	blr
.LVL112:
.L238:
	.loc 1 812 0
	stfs 1,12(9)
	blr
.LBE40:
.LBE39:
	.cfi_endproc
.LFE82:
	.size	setMaxLod, .-setMaxLod
	.align 2
	.globl glSetTexEnvMode
	.type	glSetTexEnvMode, @function
glSetTexEnvMode:
.LFB86:
	.loc 1 901 0
	.cfi_startproc
.LVL113:
	.loc 1 902 0
	cmplwi 7,3,8449
	bgt- 7,.L242
	cmplwi 7,3,8448
	bge- 7,.L243
	cmplwi 7,3,260
	beq- 7,.L243
	cmplwi 7,3,7681
	bne+ 7,.L241
	b .L243
.L242:
	xoris 9,3,0xffff
	cmpwi 7,9,-31376
	bne 7,.L241
.L243:
	.loc 1 909 0
	stw 3,0(4)
	blr
.L241:
.LVL114:
.LBB43:
.LBB44:
	.loc 1 912 0
	lis 4,.LC3@ha
.LVL115:
	li 3,1280
.LVL116:
	la 4,.LC3@l(4)
	li 5,912
.LBE44:
.LBE43:
	.loc 1 914 0
.LBB46:
.LBB45:
	.loc 1 912 0
	b _glSetErrorEx
.LVL117:
.LBE45:
.LBE46:
	.cfi_endproc
.LFE86:
	.size	glSetTexEnvMode, .-glSetTexEnvMode
	.align 2
	.globl glSetSrc
	.type	glSetSrc, @function
glSetSrc:
.LFB87:
	.loc 1 917 0
	.cfi_startproc
.LVL118:
	.loc 1 918 0
	addis 9,3,0xffff
	addi 10,9,31552
	cmplwi 7,10,7
	bgt+ 7,.L253
	.loc 1 920 0
	stw 3,0(4)
	.loc 1 921 0
	blr
.L253:
.LVL119:
.LBB49:
.LBB50:
	.loc 1 923 0
	cmplwi 7,3,5890
	beq- 7,.L256
	blt- 7,.L255
	addi 9,9,31370
	cmplwi 7,9,2
	bgt- 7,.L255
.L256:
	.loc 1 929 0
	stw 3,0(4)
.L255:
	.loc 1 931 0
	lis 4,.LC3@ha
.LVL120:
	li 3,1280
.LVL121:
	la 4,.LC3@l(4)
	li 5,931
.LBE50:
.LBE49:
	.loc 1 933 0
.LBB52:
.LBB51:
	.loc 1 931 0
	b _glSetErrorEx
.LVL122:
.LBE51:
.LBE52:
	.cfi_endproc
.LFE87:
	.size	glSetSrc, .-glSetSrc
	.align 2
	.globl glSetRGBOp
	.type	glSetRGBOp, @function
glSetRGBOp:
.LFB88:
	.loc 1 936 0
	.cfi_startproc
.LVL123:
	.loc 1 937 0
	cmplwi 7,3,768
	beq- 7,.L263
	cmplwi 7,3,770
	bne+ 7,.L262
.L263:
	.loc 1 941 0
	stw 3,0(4)
.L262:
	.loc 1 945 0
	lis 4,.LC3@ha
.LVL124:
	li 3,1280
.LVL125:
	la 4,.LC3@l(4)
	li 5,945
	.loc 1 947 0
	.loc 1 945 0
	b _glSetErrorEx
.LVL126:
	.cfi_endproc
.LFE88:
	.size	glSetRGBOp, .-glSetRGBOp
	.align 2
	.globl glSetAlphaOp
	.type	glSetAlphaOp, @function
glSetAlphaOp:
.LFB89:
	.loc 1 950 0
	.cfi_startproc
.LVL127:
	.loc 1 951 0
	cmplwi 7,3,770
	bne- 7,.L271
	.loc 1 954 0
	stw 3,0(4)
.L271:
	.loc 1 957 0
	lis 4,.LC3@ha
.LVL128:
	li 3,1280
.LVL129:
	la 4,.LC3@l(4)
	li 5,957
	.loc 1 959 0
	.loc 1 957 0
	b _glSetErrorEx
.LVL130:
	.cfi_endproc
.LFE89:
	.size	glSetAlphaOp, .-glSetAlphaOp
	.align 2
	.globl glSetComRGB
	.type	glSetComRGB, @function
glSetComRGB:
.LFB90:
	.loc 1 962 0
	.cfi_startproc
.LVL131:
	.loc 1 963 0
	cmplwi 7,3,8448
	beq- 7,.L275
	bgt- 7,.L276
	cmplwi 7,3,260
	beq- 7,.L275
	cmplwi 7,3,7681
	bne+ 7,.L274
	b .L275
.L276:
	xoris 9,3,0xffff
	cmpwi 7,9,-31513
	beq 7,.L275
	cmplwi 7,3,34023
	blt- 7,.L274
	addis 9,3,0xffff
	addi 9,9,31372
	cmplwi 7,9,1
	bgt- 7,.L274
.L275:
	.loc 1 971 0
	stw 3,0(4)
.L274:
	.loc 1 975 0
	lis 4,.LC3@ha
.LVL132:
	li 3,1280
.LVL133:
	la 4,.LC3@l(4)
	li 5,975
	.loc 1 977 0
	.loc 1 975 0
	b _glSetErrorEx
.LVL134:
	.cfi_endproc
.LFE90:
	.size	glSetComRGB, .-glSetComRGB
	.align 2
	.globl glSetComAlpha
	.type	glSetComAlpha, @function
glSetComAlpha:
.LFB91:
	.loc 1 980 0
	.cfi_startproc
.LVL135:
	.loc 1 981 0
	cmplwi 7,3,8448
	beq- 7,.L288
	bgt- 7,.L289
	cmplwi 7,3,260
	beq- 7,.L288
	cmplwi 7,3,7681
	bne+ 7,.L287
	b .L288
.L289:
	xoris 9,3,0xffff
	cmpwi 7,9,-31513
	beq 7,.L288
	cmplwi 7,3,34023
	blt- 7,.L287
	addis 9,3,0xffff
	addi 9,9,31372
	cmplwi 7,9,1
	bgt- 7,.L287
.L288:
	.loc 1 989 0
	stw 3,0(4)
.L287:
	.loc 1 991 0
	lis 4,.LC3@ha
.LVL136:
	li 3,1280
.LVL137:
	la 4,.LC3@l(4)
	li 5,991
	.loc 1 994 0
	.loc 1 991 0
	b _glSetErrorEx
.LVL138:
	.cfi_endproc
.LFE91:
	.size	glSetComAlpha, .-glSetComAlpha
	.align 2
	.globl glSetScale
	.type	glSetScale, @function
glSetScale:
.LFB92:
	.loc 1 997 0
	.cfi_startproc
	stwu 1,-40(1)
	.cfi_def_cfa_offset 40
	mflr 0
	stfd 30,24(1)
	.cfi_register 65, 0
	.cfi_offset 62, -16
	.loc 1 998 0
	fmr 30,1
	.loc 1 997 0
	stfd 31,32(1)
	.cfi_offset 63, -8
	fmr 31,1
	stw 31,20(1)
	.cfi_offset 31, -20
	mr 31,3
	stw 0,44(1)
	.cfi_offset 65, 4
	.loc 1 998 0
	bl floor
	fcmpu 7,30,1
	beq+ 7,.L300
	.loc 1 1000 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,1000
	b .L309
.L300:
	.loc 1 1003 0
	fctiwz 31,31
	addi 9,1,8
	stfiwx 31,0,9
	lwz 9,8(1)
	cmpwi 7,9,2
	beq- 7,.L302
	cmpwi 7,9,4
	beq- 7,.L303
	cmpwi 7,9,1
	bne+ 7,.L306
	.loc 1 1005 0
	li 9,0
	b .L308
.L302:
	.loc 1 1006 0
	li 9,1
	b .L308
.L303:
	.loc 1 1007 0
	li 9,2
.L308:
	stb 9,0(31)
	.loc 1 1011 0
	addi 11,1,40
	lwz 31,20(1)
	b _restfpr_30_x
	.cfi_remember_state
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 65
	.cfi_restore 31
.L306:
	.cfi_restore_state
.LBB55:
.LBB56:
	.loc 1 1009 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,1009
.L309:
.LBE56:
.LBE55:
	.loc 1 1011 0
	lwz 0,44(1)
	lwz 31,20(1)
	lfd 30,24(1)
	mtlr 0
	.cfi_restore 65
	lfd 31,32(1)
	addi 1,1,40
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_def_cfa_offset 0
.LBB58:
.LBB57:
	.loc 1 1009 0
	b _glSetErrorEx
.LBE57:
.LBE58:
	.cfi_endproc
.LFE92:
	.size	glSetScale, .-glSetScale
	.align 2
	.globl _glTexEnvf
	.type	_glTexEnvf, @function
_glTexEnvf:
.LFB93:
	.loc 1 1014 0
	.cfi_startproc
.LVL139:
	.loc 1 1015 0
	xoris 9,3,0xffff
	.loc 1 1014 0
	stwu 1,-128(1)
	.cfi_def_cfa_offset 128
	.loc 1 1015 0
	cmpwi 7,9,-31352
	beq 7,.L312
	cmplwi 7,3,34184
	li 9,0
	bgt- 7,.L313
	ori 9,9,34162
	cmpw 7,3,9
	beq- 7,.L314
	cmplwi 7,3,34162
	bgt+ 7,.L315
	cmplwi 7,3,8704
	beq- 7,.L316
	xoris 9,3,0xffff
	cmpwi 7,9,-31375
	beq 7,.L317
	cmplwi 7,3,3356
	bne+ 7,.L311
	.loc 1 1033 0
	lis 9,cur_tex@ha
	lis 3,glTexEnvs@ha
.LVL140:
	lwz 9,cur_tex@l(9)
	la 3,glTexEnvs@l(3)
	mulli 9,9,108
	add 3,3,9
	addi 3,3,105
	b .L366
.LVL141:
.L315:
	.loc 1 1015 0
	xoris 9,3,0xffff
	cmpwi 7,9,-31360
	beq 7,.L319
	cmplwi 7,3,34176
	li 9,0
	bgt+ 7,.L320
	ori 9,9,34163
	cmpw 7,3,9
	bne- 7,.L311
	.loc 1 1032 0
	lis 9,cur_tex@ha
	lis 3,glTexEnvs@ha
.LVL142:
	lwz 9,cur_tex@l(9)
	la 3,glTexEnvs@l(3)
	mulli 9,9,108
	add 3,3,9
	addi 3,3,104
	b .L366
.LVL143:
.L320:
	.loc 1 1015 0
	ori 9,9,34177
	cmpw 7,3,9
	beq- 7,.L322
	xoris 9,3,0xffff
	cmpwi 7,9,-31358
	beq 7,.L323
	b .L311
.L313:
	ori 9,9,34193
	cmpw 7,3,9
	beq- 7,.L324
	cmplwi 7,3,34193
	li 9,0
	bgt+ 7,.L325
	ori 9,9,34186
	cmpw 7,3,9
	beq- 7,.L326
	cmplwi 7,3,34186
	blt- 7,.L327
	xoris 9,3,0xffff
	cmpwi 7,9,-31344
	beq 7,.L328
	b .L311
.L325:
	ori 9,9,34200
	cmpw 7,3,9
	beq- 7,.L329
	cmplwi 7,3,34200
	li 9,0
	bgt+ 7,.L330
	ori 9,9,34194
	cmpw 7,3,9
	beq+ 7,.L331
	b .L311
.L330:
	ori 9,9,34201
	cmpw 7,3,9
	beq- 7,.L332
	xoris 9,3,0xffff
	cmpwi 7,9,-31334
	beq 7,.L333
	b .L311
.L316:
	.loc 1 1017 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L334
	fctiwz 0,1
	addi 9,1,124
	stfiwx 0,0,9
	lwz 3,124(1)
.LVL144:
	b .L335
.LVL145:
.L334:
	fsubs 0,1,13
	addi 9,1,120
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,120(1)
.LVL146:
	addis 3,3,0x8000
.L335:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	.loc 1 1038 0
	addi 1,1,128
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	.loc 1 1017 0
	mulli 9,9,108
	add 4,4,9
	addi 4,4,24
	b glSetTexEnvMode
.LVL147:
.L317:
	.cfi_restore_state
	.loc 1 1018 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L336
	fctiwz 0,1
	addi 9,1,116
	stfiwx 0,0,9
	lwz 3,116(1)
.LVL148:
	b .L337
.LVL149:
.L336:
	fsubs 0,1,13
	addi 9,1,112
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,112(1)
.LVL150:
	addis 3,3,0x8000
.L337:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	.loc 1 1038 0
	addi 1,1,128
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	.loc 1 1018 0
	mulli 9,9,108
	add 4,4,9
	addi 4,4,28
	b glSetComRGB
.LVL151:
.L314:
	.cfi_restore_state
	.loc 1 1019 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L338
	fctiwz 0,1
	addi 9,1,108
	stfiwx 0,0,9
	lwz 3,108(1)
.LVL152:
	b .L339
.LVL153:
.L338:
	fsubs 0,1,13
	addi 9,1,104
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,104(1)
.LVL154:
	addis 3,3,0x8000
.L339:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	.loc 1 1038 0
	addi 1,1,128
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	.loc 1 1019 0
	mulli 9,9,108
	addi 9,9,32
	add 4,4,9
	b glSetComAlpha
.LVL155:
.L319:
	.cfi_restore_state
	.loc 1 1020 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L340
	fctiwz 0,1
	addi 9,1,100
	stfiwx 0,0,9
	lwz 3,100(1)
.LVL156:
	b .L341
.LVL157:
.L340:
	fsubs 0,1,13
	addi 9,1,96
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,96(1)
.LVL158:
	addis 3,3,0x8000
.L341:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 9,9,108
	add 4,4,9
	addi 4,4,36
	b .L365
.LVL159:
.L322:
	.loc 1 1021 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L342
	fctiwz 0,1
	addi 9,1,92
	stfiwx 0,0,9
	lwz 3,92(1)
.LVL160:
	b .L343
.LVL161:
.L342:
	fsubs 0,1,13
	addi 9,1,88
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,88(1)
.LVL162:
	addis 3,3,0x8000
.L343:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 9,9,108
	add 4,4,9
	addi 4,4,40
.L365:
	.loc 1 1038 0
	addi 1,1,128
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	.loc 1 1021 0
	b glSetSrc
.LVL163:
.L323:
	.cfi_restore_state
	.loc 1 1022 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L344
	fctiwz 0,1
	addi 9,1,84
	stfiwx 0,0,9
	lwz 3,84(1)
.LVL164:
	b .L345
.LVL165:
.L344:
	fsubs 0,1,13
	addi 9,1,80
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,80(1)
.LVL166:
	addis 3,3,0x8000
.L345:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 9,9,108
	add 4,4,9
	addi 4,4,44
	b .L365
.LVL167:
.L312:
	.loc 1 1023 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L346
	fctiwz 0,1
	addi 9,1,76
	stfiwx 0,0,9
	lwz 3,76(1)
.LVL168:
	b .L347
.LVL169:
.L346:
	fsubs 0,1,13
	addi 9,1,72
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,72(1)
.LVL170:
	addis 3,3,0x8000
.L347:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 9,9,108
	add 4,4,9
	addi 4,4,60
	b .L365
.LVL171:
.L327:
	.loc 1 1024 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L348
	fctiwz 0,1
	addi 9,1,68
	stfiwx 0,0,9
	lwz 3,68(1)
.LVL172:
	b .L349
.LVL173:
.L348:
	fsubs 0,1,13
	addi 9,1,64
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,64(1)
.LVL174:
	addis 3,3,0x8000
.L349:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 9,9,108
	add 4,4,9
	addi 4,4,64
	b .L365
.LVL175:
.L326:
	.loc 1 1025 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L350
	fctiwz 0,1
	addi 9,1,60
	stfiwx 0,0,9
	lwz 3,60(1)
.LVL176:
	b .L351
.LVL177:
.L350:
	fsubs 0,1,13
	addi 9,1,56
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,56(1)
.LVL178:
	addis 3,3,0x8000
.L351:
	lis 9,cur_tex@ha
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 9,9,108
	add 4,4,9
	addi 4,4,68
	b .L365
.LVL179:
.L328:
	.loc 1 1026 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L352
	fctiwz 0,1
	addi 9,1,52
	stfiwx 0,0,9
	lwz 3,52(1)
.LVL180:
	b .L353
.LVL181:
.L352:
	fsubs 0,1,13
	addi 9,1,48
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,48(1)
.LVL182:
	addis 3,3,0x8000
.L353:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,48
	b .L368
.LVL183:
.L324:
	.loc 1 1027 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L354
	fctiwz 0,1
	addi 9,1,44
	stfiwx 0,0,9
	lwz 3,44(1)
.LVL184:
	b .L355
.LVL185:
.L354:
	fsubs 0,1,13
	addi 9,1,40
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,40(1)
.LVL186:
	addis 3,3,0x8000
.L355:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,52
	b .L368
.LVL187:
.L331:
	.loc 1 1028 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L356
	fctiwz 0,1
	addi 9,1,36
	stfiwx 0,0,9
	lwz 3,36(1)
.LVL188:
	b .L357
.LVL189:
.L356:
	fsubs 0,1,13
	addi 9,1,32
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,32(1)
.LVL190:
	addis 3,3,0x8000
.L357:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,56
.L368:
	lis 4,glTexEnvs@ha
	.loc 1 1038 0
	.loc 1 1028 0
	la 4,glTexEnvs@l(4)
	.loc 1 1038 0
	addi 1,1,128
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	.loc 1 1028 0
	add 4,4,9
	b glSetRGBOp
.LVL191:
.L329:
	.cfi_restore_state
	.loc 1 1029 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L358
	fctiwz 0,1
	addi 9,1,28
	stfiwx 0,0,9
	lwz 3,28(1)
.LVL192:
	b .L359
.LVL193:
.L358:
	fsubs 0,1,13
	addi 9,1,24
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,24(1)
.LVL194:
	addis 3,3,0x8000
.L359:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,48
	b .L367
.LVL195:
.L332:
	.loc 1 1030 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L360
	fctiwz 0,1
	addi 9,1,20
	stfiwx 0,0,9
	lwz 3,20(1)
.LVL196:
	b .L361
.LVL197:
.L360:
	fsubs 0,1,13
	addi 9,1,16
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,16(1)
.LVL198:
	addis 3,3,0x8000
.L361:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,52
	b .L367
.LVL199:
.L333:
	.loc 1 1031 0
	lis 9,.LC8@ha
	lfs 13,.LC8@l(9)
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L362
	fctiwz 0,1
	addi 9,1,12
	stfiwx 0,0,9
	lwz 3,12(1)
.LVL200:
	b .L363
.LVL201:
.L362:
	fsubs 0,1,13
	addi 9,1,8
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 3,8(1)
.LVL202:
	addis 3,3,0x8000
.L363:
	lis 9,cur_tex@ha
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,56
.L367:
	lis 4,glTexEnvs@ha
	.loc 1 1038 0
	.loc 1 1031 0
	la 4,glTexEnvs@l(4)
	.loc 1 1038 0
	addi 1,1,128
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	.loc 1 1031 0
	add 4,4,9
	b glSetAlphaOp
.LVL203:
.L366:
	.cfi_restore_state
	.loc 1 1038 0
	addi 1,1,128
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	.loc 1 1033 0
	b glSetScale
.LVL204:
.L311:
	.cfi_restore_state
	.loc 1 1035 0
	lis 4,.LC3@ha
	.loc 1 1038 0
	.loc 1 1035 0
	li 3,1280
.LVL205:
	la 4,.LC3@l(4)
	li 5,1035
	.loc 1 1038 0
	addi 1,1,128
	.cfi_def_cfa_offset 0
	.loc 1 1035 0
	b _glSetErrorEx
.LVL206:
	.cfi_endproc
.LFE93:
	.size	_glTexEnvf, .-_glTexEnvf
	.align 2
	.globl _glTexEnvi
	.type	_glTexEnvi, @function
_glTexEnvi:
.LFB94:
	.loc 1 1041 0
	.cfi_startproc
.LVL207:
	mr 9,3
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.loc 1 1042 0
	xoris 10,9,0xffff
	.loc 1 1041 0
	mr 3,4
.LVL208:
	.loc 1 1042 0
	cmpwi 7,10,-31352
	beq 7,.L371
	cmplwi 7,9,34184
	li 10,0
	bgt- 7,.L372
	ori 10,10,34162
	cmpw 7,9,10
	beq- 7,.L373
	cmplwi 7,9,34162
	bgt+ 7,.L374
	cmplwi 7,9,8704
	beq- 7,.L375
	xoris 10,9,0xffff
	cmpwi 7,10,-31375
	beq 7,.L376
	cmplwi 7,9,3356
	bne+ 7,.L370
	.loc 1 1060 0
	xoris 3,4,0x8000
	lis 9,0x4330
.LVL209:
	stw 3,20(1)
	lis 3,glTexEnvs@ha
	stw 9,16(1)
	lis 9,.LC1@ha
	lfs 1,.LC1@l(9)
	lis 9,cur_tex@ha
	lfd 0,16(1)
	la 3,glTexEnvs@l(3)
	lwz 9,cur_tex@l(9)
	fsub 1,0,1
	mulli 9,9,108
	add 3,3,9
	frsp 1,1
	addi 3,3,105
	b .L395
.LVL210:
.L374:
	.loc 1 1042 0
	xoris 10,9,0xffff
	cmpwi 7,10,-31360
	beq 7,.L378
	cmplwi 7,9,34176
	li 10,0
	bgt+ 7,.L379
	ori 10,10,34163
	cmpw 7,9,10
	bne- 7,.L370
	.loc 1 1059 0
	xoris 3,4,0x8000
.LVL211:
	lis 9,0x4330
.LVL212:
	stw 3,12(1)
	lis 3,glTexEnvs@ha
	stw 9,8(1)
	lis 9,.LC1@ha
	lfs 1,.LC1@l(9)
	lis 9,cur_tex@ha
	lfd 0,8(1)
	la 3,glTexEnvs@l(3)
	lwz 9,cur_tex@l(9)
	fsub 1,0,1
	mulli 9,9,108
	add 3,3,9
	frsp 1,1
	addi 3,3,104
	b .L395
.LVL213:
.L379:
	.loc 1 1042 0
	ori 10,10,34177
	cmpw 7,9,10
	beq- 7,.L381
	xoris 10,9,0xffff
	cmpwi 7,10,-31358
	bne 7,.L370
	.loc 1 1049 0
	lis 9,cur_tex@ha
.LVL214:
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 9,9,108
	add 4,4,9
	addi 4,4,44
	b .L394
.LVL215:
.L372:
	.loc 1 1042 0
	ori 10,10,34193
	cmpw 7,9,10
	beq- 7,.L383
	cmplwi 7,9,34193
	li 10,0
	bgt+ 7,.L384
	ori 10,10,34186
	cmpw 7,9,10
	beq- 7,.L385
	cmplwi 7,9,34186
	blt- 7,.L386
	xoris 10,9,0xffff
	cmpwi 7,10,-31344
	bne 7,.L370
	.loc 1 1053 0
	lis 9,cur_tex@ha
.LVL216:
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,48
	b .L397
.LVL217:
.L384:
	.loc 1 1042 0
	ori 10,10,34200
	cmpw 7,9,10
	beq- 7,.L388
	cmplwi 7,9,34200
	li 10,0
	bgt+ 7,.L389
	ori 10,10,34194
	cmpw 7,9,10
	bne- 7,.L370
	.loc 1 1055 0
	lis 9,cur_tex@ha
.LVL218:
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,56
	b .L397
.LVL219:
.L389:
	.loc 1 1042 0
	ori 10,10,34201
	cmpw 7,9,10
	beq- 7,.L391
	xoris 10,9,0xffff
	cmpwi 7,10,-31334
	bne 7,.L370
	.loc 1 1058 0
	lis 9,cur_tex@ha
.LVL220:
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,56
	b .L396
.LVL221:
.L375:
	.loc 1 1044 0
	lis 9,cur_tex@ha
.LVL222:
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	.loc 1 1065 0
	addi 1,1,24
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	.loc 1 1044 0
	mulli 9,9,108
	add 4,4,9
	addi 4,4,24
	b glSetTexEnvMode
.LVL223:
.L376:
	.cfi_restore_state
	.loc 1 1045 0
	lis 9,cur_tex@ha
.LVL224:
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	.loc 1 1065 0
	addi 1,1,24
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	.loc 1 1045 0
	mulli 9,9,108
	add 4,4,9
	addi 4,4,28
	b glSetComRGB
.LVL225:
.L373:
	.cfi_restore_state
	.loc 1 1046 0
	lis 9,cur_tex@ha
.LVL226:
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	.loc 1 1065 0
	addi 1,1,24
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	.loc 1 1046 0
	mulli 9,9,108
	addi 9,9,32
	add 4,4,9
	b glSetComAlpha
.LVL227:
.L378:
	.cfi_restore_state
	.loc 1 1047 0
	lis 9,cur_tex@ha
.LVL228:
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 9,9,108
	add 4,4,9
	addi 4,4,36
	b .L394
.LVL229:
.L381:
	.loc 1 1048 0
	lis 9,cur_tex@ha
.LVL230:
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 9,9,108
	add 4,4,9
	addi 4,4,40
.L394:
	.loc 1 1065 0
	addi 1,1,24
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	.loc 1 1048 0
	b glSetSrc
.LVL231:
.L371:
	.cfi_restore_state
	.loc 1 1050 0
	lis 9,cur_tex@ha
.LVL232:
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 9,9,108
	add 4,4,9
	addi 4,4,60
	b .L394
.LVL233:
.L386:
	.loc 1 1051 0
	lis 9,cur_tex@ha
.LVL234:
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 9,9,108
	add 4,4,9
	addi 4,4,64
	b .L394
.LVL235:
.L385:
	.loc 1 1052 0
	lis 9,cur_tex@ha
.LVL236:
	lis 4,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 4,glTexEnvs@l(4)
	mulli 9,9,108
	add 4,4,9
	addi 4,4,68
	b .L394
.LVL237:
.L383:
	.loc 1 1054 0
	lis 9,cur_tex@ha
.LVL238:
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,52
.L397:
	.loc 1 1055 0
	lis 4,glTexEnvs@ha
	.loc 1 1065 0
	.loc 1 1055 0
	la 4,glTexEnvs@l(4)
	.loc 1 1065 0
	addi 1,1,24
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	.loc 1 1055 0
	add 4,4,9
	b glSetRGBOp
.LVL239:
.L388:
	.cfi_restore_state
	.loc 1 1056 0
	lis 9,cur_tex@ha
.LVL240:
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,48
	b .L396
.LVL241:
.L391:
	.loc 1 1057 0
	lis 9,cur_tex@ha
.LVL242:
	lwz 9,cur_tex@l(9)
	mulli 9,9,108
	addi 9,9,52
.L396:
	.loc 1 1058 0
	lis 4,glTexEnvs@ha
	.loc 1 1065 0
	.loc 1 1058 0
	la 4,glTexEnvs@l(4)
	.loc 1 1065 0
	addi 1,1,24
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	.loc 1 1058 0
	add 4,4,9
	b glSetAlphaOp
.LVL243:
.L395:
	.cfi_restore_state
	.loc 1 1065 0
	addi 1,1,24
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	.loc 1 1060 0
	b glSetScale
.LVL244:
.L370:
	.cfi_restore_state
	.loc 1 1062 0
	lis 4,.LC3@ha
	.loc 1 1065 0
	.loc 1 1062 0
	li 3,1280
.LVL245:
	la 4,.LC3@l(4)
	li 5,1062
	.loc 1 1065 0
	addi 1,1,24
	.cfi_def_cfa_offset 0
	.loc 1 1062 0
	b _glSetErrorEx
.LVL246:
	.cfi_endproc
.LFE94:
	.size	_glTexEnvi, .-_glTexEnvi
	.align 2
	.globl glTexEnvf
	.type	glTexEnvf, @function
glTexEnvf:
.LFB98:
	.loc 1 1168 0
	.cfi_startproc
.LVL247:
	.loc 1 1169 0
	lis 10,cur_state@ha
	lwz 10,cur_state@l(10)
	andi. 9,10,1
	beq+ 0,.L399
	.loc 1 1169 0 discriminator 1
	lis 4,.LC3@ha
.LVL248:
	li 3,1282
.LVL249:
	la 4,.LC3@l(4)
	li 5,1169
	b .L408
.LVL250:
.L399:
	.loc 1 1171 0
	xoris 10,3,0xffff
	cmpwi 7,10,-31488
	bne 7,.L400
	.loc 1 1172 0
	xoris 9,4,0xffff
	cmpwi 7,9,-31487
	bne 7,.L401
	.loc 1 1174 0
	lis 9,cur_tex@ha
	lwz 10,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 10,10,108
	add 9,9,10
	stfs 1,16(9)
	.loc 1 1175 0
	blr
.L401:
.LVL251:
.LBB61:
.LBB62:
	.loc 1 1179 0
	lis 4,.LC3@ha
.LVL252:
	li 3,1280
.LVL253:
	la 4,.LC3@l(4)
	li 5,1179
	b .L408
.LVL254:
.L400:
.LBE62:
.LBE61:
	.loc 1 1183 0
	cmplwi 7,3,8960
	bne+ 7,.L406
	.loc 1 1168 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.loc 1 1185 0
	fctiwz 1,1
.LVL255:
	mr 3,4
.LVL256:
	addi 9,1,8
	stfiwx 1,0,9
	lwz 4,8(1)
.LVL257:
	.loc 1 1190 0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	.loc 1 1185 0
	b _glTexEnvi
.LVL258:
.L406:
	.loc 1 1187 0
	lis 4,.LC3@ha
.LVL259:
	li 3,1280
.LVL260:
	la 4,.LC3@l(4)
	li 5,1187
.LVL261:
.L408:
	b _glSetErrorEx
.LVL262:
	.cfi_endproc
.LFE98:
	.size	glTexEnvf, .-glTexEnvf
	.align 2
	.globl glTexEnvfv
	.type	glTexEnvfv, @function
glTexEnvfv:
.LFB95:
	.loc 1 1068 0
	.cfi_startproc
.LVL263:
	.loc 1 1069 0
	lis 8,cur_state@ha
	lwz 8,cur_state@l(8)
	andi. 7,8,1
	beq+ 0,.L410
	.loc 1 1069 0 is_stmt 0 discriminator 1
	lis 4,.LC3@ha
.LVL264:
	li 3,1282
.LVL265:
	la 4,.LC3@l(4)
	li 5,1069
.LVL266:
	b .L417
.LVL267:
.L410:
	.loc 1 1071 0 is_stmt 1
	cmpwi 7,5,0
	bne+ 7,.L411
	.loc 1 1073 0
	lis 4,.LC3@ha
.LVL268:
	li 3,1281
.LVL269:
	la 4,.LC3@l(4)
	li 5,1073
.LVL270:
	b .L417
.LVL271:
.L411:
	.loc 1 1077 0
	cmplwi 7,3,8960
	bne+ 7,.L412
	.loc 1 1079 0
	cmplwi 7,4,8705
	lfs 1,0(5)
	bne- 7,.L413
	.loc 1 1081 0
	lis 9,cur_tex@ha
	lwz 10,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 10,10,108
	add 9,9,10
	stfs 1,88(9)
	.loc 1 1082 0
	lfs 0,4(5)
	stfs 0,92(9)
	.loc 1 1083 0
	lfs 0,8(5)
	stfs 0,96(9)
	.loc 1 1084 0
	lfs 0,12(5)
	stfs 0,100(9)
	blr
.L413:
	.loc 1 1109 0
	.loc 1 1088 0
	b glTexEnvf
.LVL272:
.L412:
	.loc 1 1091 0
	xoris 8,3,0xffff
	cmpwi 7,8,-31488
	bne 7,.L415
	.loc 1 1093 0
	xoris 10,4,0xffff
	cmpwi 7,10,-31487
	bne 7,.L416
	.loc 1 1095 0
	lis 9,cur_tex@ha
	lfs 0,0(5)
	lwz 10,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 10,10,108
	add 9,9,10
	stfs 0,16(9)
	.loc 1 1096 0
	blr
.L416:
	.loc 1 1100 0
	lis 4,.LC3@ha
.LVL273:
	li 3,1280
.LVL274:
	la 4,.LC3@l(4)
	li 5,1100
.LVL275:
	b .L417
.LVL276:
.L415:
	.loc 1 1106 0
	lis 4,.LC3@ha
.LVL277:
	li 3,1280
.LVL278:
	la 4,.LC3@l(4)
	li 5,1106
.LVL279:
.L417:
	.loc 1 1109 0
	.loc 1 1106 0
	b _glSetErrorEx
.LVL280:
	.cfi_endproc
.LFE95:
	.size	glTexEnvfv, .-glTexEnvfv
	.align 2
	.globl glTexEnviv
	.type	glTexEnviv, @function
glTexEnviv:
.LFB97:
	.loc 1 1124 0
	.cfi_startproc
	.loc 1 1125 0
	lis 8,cur_state@ha
	lwz 8,cur_state@l(8)
	andi. 7,8,1
	beq+ 0,.L419
	.loc 1 1125 0 discriminator 1
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,1125
	b .L427
.L419:
	.loc 1 1127 0
	cmpwi 7,5,0
	.loc 1 1124 0
	mflr 0
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stmw 30,24(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,5
	stw 0,36(1)
	.cfi_offset 65, 4
	.loc 1 1127 0
	bne+ 7,.L420
	.loc 1 1129 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,1129
	b .L428
.L420:
	.loc 1 1133 0
	cmplwi 7,3,8960
	bne+ 7,.L421
	.loc 1 1135 0
	cmplwi 7,4,8705
	lwz 10,0(5)
	bne- 7,.L422
	.loc 1 1137 0
	lis 9,cur_tex@ha
	mr 3,10
	lwz 30,cur_tex@l(9)
	bl scale_s32
	lis 9,glTexEnvs@ha
	mulli 30,30,108
	la 9,glTexEnvs@l(9)
	add 30,9,30
	stfs 1,88(30)
	.loc 1 1138 0
	lwz 3,4(31)
	bl scale_s32
	stfs 1,92(30)
	.loc 1 1139 0
	lwz 3,8(31)
	bl scale_s32
	stfs 1,96(30)
	.loc 1 1140 0
	lwz 3,12(31)
	bl scale_s32
	stfs 1,100(30)
	b .L418
.L422:
	.loc 1 1144 0
	lis 9,0x4330
	xoris 10,10,0x8000
	stw 9,8(1)
	lis 9,.LC1@ha
	stw 10,12(1)
	lfs 1,.LC1@l(9)
	lfd 0,8(1)
	.loc 1 1165 0
	lwz 0,36(1)
	.loc 1 1144 0
	fsub 1,0,1
	.loc 1 1165 0
	lmw 30,24(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	.loc 1 1144 0
	frsp 1,1
	b glTexEnvf
.L421:
	.cfi_restore_state
	.loc 1 1147 0
	xoris 8,3,0xffff
	cmpwi 7,8,-31488
	bne 7,.L424
	.loc 1 1149 0
	xoris 10,4,0xffff
	cmpwi 7,10,-31487
	bne 7,.L425
	.loc 1 1151 0
	lis 9,cur_tex@ha
	lwz 10,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 10,10,108
	add 9,9,10
	lwz 10,0(5)
	xoris 10,10,0x8000
	stw 10,20(1)
	lis 10,0x4330
	stw 10,16(1)
	lis 10,.LC1@ha
	lfs 0,.LC1@l(10)
	lfd 13,16(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,16(9)
	.loc 1 1152 0
	b .L418
.L425:
	.loc 1 1156 0
	lis 4,.LC3@ha
	li 3,1280
	la 4,.LC3@l(4)
	li 5,1156
	b .L428
.L424:
	.loc 1 1162 0
	lis 4,.LC3@ha
	li 3,1280
	la 4,.LC3@l(4)
	li 5,1162
.L428:
	.loc 1 1165 0
	lwz 0,36(1)
	lmw 30,24(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
.L427:
	.loc 1 1162 0
	b _glSetErrorEx
.L418:
	.cfi_def_cfa_offset 32
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 1165 0
	addi 11,1,32
	b _restgpr_30_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 65
	.cfi_endproc
.LFE97:
	.size	glTexEnviv, .-glTexEnviv
	.align 2
	.globl glTexEnvi
	.type	glTexEnvi, @function
glTexEnvi:
.LFB99:
	.loc 1 1193 0
	.cfi_startproc
.LVL281:
	.loc 1 1194 0
	lis 10,cur_state@ha
	lwz 10,cur_state@l(10)
	andi. 9,10,1
	beq+ 0,.L430
	.loc 1 1194 0 discriminator 1
	lis 4,.LC3@ha
.LVL282:
	li 3,1282
.LVL283:
	la 4,.LC3@l(4)
	li 5,1194
.LVL284:
	b .L439
.LVL285:
.L430:
	.loc 1 1196 0
	xoris 10,3,0xffff
	cmpwi 7,10,-31488
	bne 7,.L431
	.loc 1 1197 0
	xoris 9,4,0xffff
	cmpwi 7,9,-31487
	bne 7,.L432
	.loc 1 1199 0
	lis 9,cur_tex@ha
	.loc 1 1193 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.loc 1 1199 0
	lwz 10,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	xoris 5,5,0x8000
.LVL286:
	mulli 10,10,108
	stw 5,12(1)
	add 9,9,10
	lis 10,0x4330
	stw 10,8(1)
	lis 10,.LC1@ha
	lfs 0,.LC1@l(10)
	lfd 13,8(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,16(9)
	.loc 1 1216 0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
.LVL287:
.L432:
	.loc 1 1204 0
	lis 4,.LC3@ha
.LVL288:
	li 3,1280
.LVL289:
	la 4,.LC3@l(4)
	li 5,1204
.LVL290:
	b .L439
.LVL291:
.L431:
	.loc 1 1208 0
	cmplwi 7,3,8960
	bne+ 7,.L437
	.loc 1 1210 0
	mr 3,4
.LVL292:
	mr 4,5
.LVL293:
	b _glTexEnvi
.LVL294:
.L437:
	.loc 1 1213 0
	lis 4,.LC3@ha
.LVL295:
	li 3,1280
.LVL296:
	la 4,.LC3@l(4)
	li 5,1213
.LVL297:
.L439:
	b _glSetErrorEx
.LVL298:
	.cfi_endproc
.LFE99:
	.size	glTexEnvi, .-glTexEnvi
	.align 2
	.globl resizeMan
	.type	resizeMan, @function
resizeMan:
.LFB101:
	.loc 1 1280 0
	.cfi_startproc
.LVL299:
	mflr 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stmw 29,12(1)
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,3
	stw 0,28(1)
	.cfi_offset 65, 4
	.loc 1 1280 0
	mr 30,4
	.loc 1 1293 0
	lwz 10,8(3)
	lwz 9,12(3)
	cmplw 7,9,10
	bgt- 7,.L441
.L447:
	.loc 1 1304 0
	lwz 3,0(31)
.LVL300:
	cmpwi 7,3,0
	bne+ 7,.L463
	b .L442
.LVL301:
.L441:
	.loc 1 1295 0
	li 9,0
	.loc 1 1296 0
	addi 10,10,1
	.loc 1 1295 0
	stw 9,12(3)
.LVL302:
	.loc 1 1296 0
	mtctr 10
.LVL303:
.L444:
	.loc 1 1296 0 is_stmt 0 discriminator 1
	bdz .L447
	.loc 1 1298 0 is_stmt 1
	lwz 10,4(31)
	lbzx 10,10,9
	cmpwi 7,10,0
	beq- 7,.L445
	.loc 1 1299 0
	lwz 10,12(31)
	addi 10,10,1
	stw 10,12(31)
.L445:
	.loc 1 1296 0
	addi 9,9,1
.LVL304:
	b .L444
.LVL305:
.L463:
	.loc 1 1304 0 discriminator 1
	lwz 9,4(31)
	cmpwi 7,9,0
	bne+ 7,.L448
.L442:
	.loc 1 1306 0
	li 9,0
	stw 9,8(31)
	.loc 1 1307 0
	stw 9,12(31)
.L448:
	.loc 1 1311 0
	lwz 10,8(31)
	.loc 1 1313 0
	li 9,1
	.loc 1 1311 0
	cmplw 7,30,10
	blt+ 7,.L449
	.loc 1 1316 0
	mulli 4,30,76
.LVL306:
	bl realloc
.LVL307:
	.loc 1 1317 0
	mr. 29,3
	bne+ 0,.L450
	.loc 1 1319 0
	lis 4,.LC3@ha
	li 3,1285
.LVL308:
	la 4,.LC3@l(4)
	li 5,1319
	b .L465
.LVL309:
.L450:
	.loc 1 1323 0
	lwz 3,4(31)
.LVL310:
	mr 4,30
	bl realloc
.LVL311:
	.loc 1 1325 0
	cmpwi 0,3,0
	bne+ 0,.L451
	.loc 1 1329 0
	lis 4,.LC3@ha
	.loc 1 1327 0
	stw 29,0(31)
	.loc 1 1329 0
	li 3,1285
.LVL312:
	la 4,.LC3@l(4)
	li 5,1329
.L465:
	bl _glSetErrorEx
.LVL313:
	.loc 1 1330 0
	li 9,0
	b .L449
.LVL314:
.L451:
	.loc 1 1334 0
	lwz 9,8(31)
.LVL315:
	.loc 1 1336 0
	li 7,0
	cmplw 7,9,30
	subf 10,9,30
	addi 10,10,1
	bgt- 7,.L459
	cmpwi 7,30,0
	bne+ 7,.L452
.L459:
	li 10,1
.L452:
	.loc 1 1334 0 discriminator 1
	addic. 10,10,-1
	beq- 0,.L466
	.loc 1 1336 0 discriminator 2
	stbx 7,3,9
	.loc 1 1334 0 discriminator 2
	addi 9,9,1
.LVL316:
	b .L452
.L466:
	.loc 1 1339 0
	stw 30,8(31)
	.loc 1 1343 0
	li 9,1
.LVL317:
	.loc 1 1340 0
	stw 29,0(31)
	.loc 1 1341 0
	stw 3,4(31)
.LVL318:
.L449:
	.loc 1 1344 0
	addi 11,1,24
	mr 3,9
	b _restgpr_29_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 65
	.cfi_endproc
.LFE101:
	.size	resizeMan, .-resizeMan
	.align 2
	.globl initTextures
	.type	initTextures, @function
initTextures:
.LFB100:
	.loc 1 1222 0
	.cfi_startproc
	stwu 1,-72(1)
	.cfi_def_cfa_offset 72
	mflr 0
	.loc 1 1223 0
	lis 9,cur_tex@ha
	.loc 1 1225 0
	li 4,0
	.loc 1 1222 0
	stmw 19,12(1)
	.cfi_register 65, 0
	.cfi_offset 19, -60
	.cfi_offset 20, -56
	.cfi_offset 21, -52
	.cfi_offset 22, -48
	.cfi_offset 23, -44
	.cfi_offset 24, -40
	.cfi_offset 25, -36
	.cfi_offset 26, -32
	.cfi_offset 27, -28
	.cfi_offset 28, -24
	.cfi_offset 29, -20
	.cfi_offset 30, -16
	.cfi_offset 31, -12
	.loc 1 1225 0
	lis 30,texMan@ha
	la 30,texMan@l(30)
	.loc 1 1223 0
	li 31,0
	.loc 1 1225 0
	mr 3,30
	li 5,16
	.loc 1 1223 0
	stw 31,cur_tex@l(9)
	.loc 1 1265 0
	li 25,0
	.loc 1 1222 0
	stw 0,76(1)
	.loc 1 1234 0
	li 29,0
	.loc 1 1222 0
	stfd 31,64(1)
	.cfi_offset 65, 4
	.cfi_offset 63, -8
	.loc 1 1225 0
	bl memset
.LVL319:
	.loc 1 1226 0
	mr 3,30
	li 4,4000
	bl resizeMan
.LVL320:
	.loc 1 1231 0
	lis 10,pack@ha
	la 9,pack@l(10)
	stb 31,pack@l(10)
	.loc 1 1232 0
	lis 8,unpack@ha
	.loc 1 1231 0
	li 10,4
	stb 31,1(9)
	.loc 1 1236 0
	li 30,0
	.loc 1 1231 0
	stw 31,4(9)
	.loc 1 1238 0
	li 22,4
	.loc 1 1231 0
	stw 31,8(9)
	.loc 1 1239 0
	li 28,1
	.loc 1 1231 0
	stw 31,12(9)
	.loc 1 1242 0
	li 26,0
	.loc 1 1231 0
	stw 10,16(9)
	.loc 1 1232 0
	la 9,unpack@l(8)
	stb 31,1(9)
	.loc 1 1249 0
	li 27,8448
	.loc 1 1232 0
	stw 31,4(9)
	.loc 1 1265 0
	ori 25,25,34168
	.loc 1 1232 0
	stw 31,8(9)
	.loc 1 1260 0
	li 24,5890
	.loc 1 1232 0
	stw 31,12(9)
	.loc 1 1268 0
	li 20,768
	.loc 1 1232 0
	stb 31,unpack@l(8)
	lis 31,glTexEnvs+44@ha
	stw 10,16(9)
.LVL321:
	.loc 1 1243 0
	lis 9,.LC6@ha
	la 31,glTexEnvs+44@l(31)
	lfs 31,.LC6@l(9)
	.loc 1 1250 0
	addi 21,31,-44
	.loc 1 1269 0
	li 19,770
	.loc 1 1272 0
	li 23,-1
.LVL322:
.L473:
	.loc 1 1250 0
	mulli 3,29,108
	.loc 1 1236 0
	stb 30,-44(31)
	.loc 1 1238 0
	stb 22,-43(31)
	.loc 1 1250 0
	li 4,0
	.loc 1 1239 0
	stb 28,-42(31)
	.loc 1 1250 0
	add 3,21,3
	.loc 1 1240 0
	stb 28,-41(31)
	.loc 1 1250 0
	addi 3,3,88
	.loc 1 1241 0
	stb 28,-40(31)
	.loc 1 1250 0
	li 5,16
	.loc 1 1242 0
	stw 26,-36(31)
	.loc 1 1243 0
	stfs 31,-32(31)
	.loc 1 1244 0
	stw 26,-28(31)
	.loc 1 1245 0
	stb 30,-24(31)
	.loc 1 1246 0
	stb 30,-23(31)
	.loc 1 1247 0
	stb 30,-22(31)
	.loc 1 1249 0
	stw 27,-20(31)
	.loc 1 1250 0
	bl memset
.LVL323:
	.loc 1 1253 0
	stw 27,-16(31)
	.loc 1 1254 0
	stw 27,-12(31)
.LVL324:
	mr 9,31
	.loc 1 1256 0
	li 10,0
.LVL325:
.L471:
	.loc 1 1258 0
	cmpwi 7,10,0
	bne+ 7,.L468
.LVL326:
	.loc 1 1260 0
	stw 24,-8(31)
	.loc 1 1261 0
	stw 24,16(31)
	b .L469
.LVL327:
.L468:
	.loc 1 1265 0
	stw 25,-8(9)
	.loc 1 1266 0
	stw 25,16(9)
.LVL328:
.L469:
	.loc 1 1256 0
	cmpwi 7,10,2
	.loc 1 1268 0
	stwu 20,4(9)
	.loc 1 1256 0
	addi 10,10,1
.LVL329:
	.loc 1 1269 0
	stw 19,24(9)
	.loc 1 1256 0
	bne+ 7,.L471
.LVL330:
	.loc 1 1234 0
	cmpwi 7,29,7
	.loc 1 1272 0
	stw 23,40(31)
	.loc 1 1274 0
	stb 30,60(31)
	.loc 1 1234 0
	addi 29,29,1
.LVL331:
	.loc 1 1275 0
	stb 30,61(31)
	addi 31,31,108
	.loc 1 1234 0
	bne+ 7,.L473
	.loc 1 1277 0
	lmw 19,12(1)
.LVL332:
	addi 11,1,72
	b _restfpr_31_x
	.cfi_restore 63
	.cfi_restore 65
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_endproc
.LFE100:
	.size	initTextures, .-initTextures
	.align 2
	.globl activateTex
	.type	activateTex, @function
activateTex:
.LFB102:
	.loc 1 1347 0
	.cfi_startproc
.LVL333:
	mflr 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 1348 0
	addi 4,4,-1
.LVL334:
	.loc 1 1347 0
	stmw 29,12(1)
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,3
	stw 0,28(1)
	.cfi_offset 65, 4
	.loc 1 1350 0
	lwz 9,4(3)
	lbzx 29,9,4
	cmpwi 7,29,0
	bne+ 7,.L475
	.loc 1 1353 0
	li 10,1
	.loc 1 1355 0
	mulli 30,4,76
	.loc 1 1353 0
	stbx 10,9,4
	.loc 1 1355 0
	li 5,76
	li 4,0
.LVL335:
	lwz 3,0(3)
.LVL336:
	add 3,3,30
	bl memset
.LVL337:
	.loc 1 1356 0
	lwz 9,0(31)
	.loc 1 1365 0
	li 10,10
	li 8,0
	.loc 1 1356 0
	add 9,9,30
	.loc 1 1365 0
	mtctr 10
	.loc 1 1356 0
	stw 29,4(9)
	.loc 1 1357 0
	lwz 9,0(31)
	add 9,9,30
	stw 29,20(9)
	.loc 1 1358 0
	lwz 9,0(31)
	add 9,9,30
	stw 29,24(9)
	.loc 1 1359 0
	lwz 9,0(31)
	add 9,9,30
	stw 29,32(9)
	.loc 1 1360 0
	lwz 9,0(31)
	add 9,9,30
	stb 29,74(9)
.LVL338:
	.loc 1 1363 0
	li 9,0
.LVL339:
.L478:
	.loc 1 1365 0 discriminator 2
	lwz 10,0(31)
	add 10,10,30
	add 10,10,9
	.loc 1 1363 0 discriminator 2
	addi 9,9,1
.LVL340:
	.loc 1 1365 0 discriminator 2
	stb 8,8(10)
	.loc 1 1363 0 discriminator 2
	bdnz .L478
	.loc 1 1368 0
	lwz 9,12(31)
.LVL341:
	addi 9,9,1
	stw 9,12(31)
.L475:
	.loc 1 1369 0
	addi 11,1,24
	b _restgpr_29_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 65
	.cfi_endproc
.LFE102:
	.size	activateTex, .-activateTex
	.align 2
	.globl deleteTex
	.type	deleteTex, @function
deleteTex:
.LFB103:
	.loc 1 1372 0
	.cfi_startproc
.LVL342:
	mflr 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stmw 29,12(1)
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.loc 1 1373 0
	addi 29,4,-1
.LVL343:
	.loc 1 1372 0
	stw 0,28(1)
	.cfi_offset 65, 4
	.loc 1 1372 0
	mr 30,3
	.loc 1 1375 0
	lwz 9,4(3)
	lbzx 9,9,29
	cmpwi 7,9,0
	beq- 7,.L481
	.loc 1 1378 0
	lwz 9,0(3)
	mulli 31,29,76
	add 31,9,31
.LVL344:
	.loc 1 1380 0
	lwz 3,4(31)
.LVL345:
	cmpwi 7,3,0
	beq- 7,.L483
	.loc 1 1382 0
	lwz 4,28(31)
.LVL346:
	bl releaseTextureSlot
.LVL347:
.L483:
	.loc 1 1385 0
	li 9,0
	.loc 1 1393 0
	li 10,10
	.loc 1 1385 0
	stw 9,4(31)
	.loc 1 1393 0
	mtctr 10
	.loc 1 1386 0
	stw 9,20(31)
	.loc 1 1393 0
	li 8,0
	.loc 1 1387 0
	stw 9,24(31)
	.loc 1 1388 0
	stw 9,32(31)
.LVL348:
.L485:
	add 10,31,9
	.loc 1 1391 0 discriminator 2
	addi 9,9,1
.LVL349:
	.loc 1 1393 0 discriminator 2
	stb 8,8(10)
	.loc 1 1391 0 discriminator 2
	bdnz .L485
	.loc 1 1396 0
	lwz 9,4(30)
.LVL350:
	li 10,0
	stbx 10,9,29
	.loc 1 1397 0
	lwz 9,12(30)
	addi 9,9,-1
	stw 9,12(30)
.LVL351:
.L481:
	.loc 1 1399 0
	addi 11,1,24
	b _restgpr_29_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 65
	.cfi_endproc
.LFE103:
	.size	deleteTex, .-deleteTex
	.align 2
	.globl isUsed
	.type	isUsed, @function
isUsed:
.LFB104:
	.loc 1 1403 0
	.cfi_startproc
.LVL352:
	.loc 1 1405 0
	lwz 9,8(3)
	.loc 1 1404 0
	addi 4,4,-1
.LVL353:
	.loc 1 1405 0
	cmplw 7,9,4
	ble- 7,.L496
	.loc 1 1409 0
	lwz 9,4(3)
	lbzx 3,9,4
.LVL354:
	blr
.LVL355:
.L496:
	.loc 1 1406 0
	li 3,0
.LVL356:
	.loc 1 1410 0
	blr
	.cfi_endproc
.LFE104:
	.size	isUsed, .-isUsed
	.align 2
	.globl getTex
	.type	getTex, @function
getTex:
.LFB105:
	.loc 1 1414 0
	.cfi_startproc
.LVL357:
	.loc 1 1415 0
	mulli 4,4,76
.LVL358:
	lwz 3,0(3)
.LVL359:
	addi 4,4,-76
	.loc 1 1416 0
	add 3,3,4
	blr
	.cfi_endproc
.LFE105:
	.size	getTex, .-getTex
	.align 2
	.globl getCur
	.type	getCur, @function
getCur:
.LFB106:
	.loc 1 1419 0
	.cfi_startproc
.LVL360:
	.loc 1 1420 0
	lis 9,cur_tex@ha
	.loc 1 1419 0
	mflr 0
	.loc 1 1420 0
	lwz 10,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	.loc 1 1419 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 1420 0
	la 9,glTexEnvs@l(9)
	mulli 10,10,108
	.loc 1 1419 0
	stmw 30,8(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 30,3
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 1420 0
	add 9,9,10
	lwz 31,84(9)
	mr 4,31
	bl isUsed
.LVL361:
	cmpwi 7,3,0
	lwz 3,0(30)
	beq+ 7,.L500
	.loc 1 1421 0
	mulli 31,31,76
	addi 31,31,-76
	add 3,3,31
.L500:
	.loc 1 1425 0
	addi 11,1,16
	b _restgpr_30_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 65
	.cfi_endproc
.LFE106:
	.size	getCur, .-getCur
	.align 2
	.globl glGetTexLevelParameteriv
	.type	glGetTexLevelParameteriv, @function
glGetTexLevelParameteriv:
.LFB70:
	.loc 1 225 0
	.cfi_startproc
	.loc 1 226 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L503
	.loc 1 226 0 discriminator 1
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,226
	b .L531
.L503:
	.loc 1 228 0
	cmpwi 7,6,0
	.loc 1 225 0
	mflr 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stmw 30,8(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,6
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 228 0
	bne+ 7,.L504
	.loc 1 230 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,230
	b .L532
.L504:
	.loc 1 234 0
	addis 9,3,0xffff
	mr 30,4
	addi 9,9,32669
	cmplwi 7,9,1
	ble- 7,.L505
	.loc 1 234 0 is_stmt 0 discriminator 1
	xoris 9,3,0xffff
	cmpwi 7,9,-32656
	bne 7,.L506
.L505:
	.loc 1 236 0 is_stmt 1
	cmplwi 7,5,4097
	beq- 7,.L508
	xoris 9,5,0xffff
	cmpwi 7,9,-32655
	beq 7,.L526
	cmplwi 7,5,4096
	bne+ 7,.L527
	.loc 1 238 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	lwz 9,20(3)
	b .L530
.L508:
	.loc 1 239 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	lwz 9,24(3)
.L530:
	sraw 30,9,30
	stw 30,0(31)
	b .L502
.L527:
	.loc 1 242 0
	li 9,0
	.loc 1 243 0
	lis 4,.LC3@ha
	.loc 1 242 0
	stw 9,0(31)
	.loc 1 243 0
	li 3,1281
	la 4,.LC3@l(4)
	li 5,243
	b .L532
.L506:
	.loc 1 249 0
	xoris 9,5,0xffff
	cmpwi 7,9,-32675
	beq 7,.L513
	cmplwi 7,5,32861
	bgt- 7,.L514
	cmplwi 7,5,4099
	beq- 7,.L515
	bgt- 7,.L516
	cmplwi 7,5,4096
	beq- 7,.L517
	cmplwi 7,5,4097
	bne- 7,.L512
	.loc 1 252 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	lwz 9,24(3)
	b .L529
.L516:
	.loc 1 249 0
	cmplwi 7,5,4101
	beq- 7,.L519
	xoris 9,5,0xffff
	cmpwi 7,9,-32676
	bne 7,.L512
	.loc 1 256 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	li 4,6403
	lbz 3,3(3)
	b .L533
.L514:
	.loc 1 249 0
	xoris 9,5,0xffff
	cmpwi 7,9,-32672
	beq 7,.L521
	cmplwi 7,5,32864
	li 9,0
	bgt- 7,.L522
	ori 9,9,32862
	cmpw 7,5,9
	beq- 7,.L523
	xoris 9,5,0xffff
	cmpwi 7,9,-32673
	bne 7,.L512
	.loc 1 259 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	li 4,6406
	lbz 3,3(3)
	b .L533
.L522:
	.loc 1 249 0
	ori 9,9,32865
	cmpw 7,5,9
	beq- 7,.L525
	xoris 9,5,0xffff
	cmpwi 7,9,-32655
	beq 7,.L526
	b .L512
.L517:
	.loc 1 251 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	lwz 9,20(3)
	b .L529
.L526:
	.loc 1 253 0
	li 9,1
	b .L529
.L515:
	.loc 1 254 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	lwz 9,68(3)
.L529:
	stw 9,0(31)
	b .L502
.L519:
	.loc 1 255 0
	stw 10,0(6)
	b .L502
.L513:
	.loc 1 257 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	li 4,6404
	lbz 3,3(3)
	b .L533
.L523:
	.loc 1 258 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	li 4,6405
	lbz 3,3(3)
	b .L533
.L521:
	.loc 1 260 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	li 4,6409
	lbz 3,3(3)
	b .L533
.L525:
	.loc 1 261 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	li 4,0
	lbz 3,3(3)
	ori 4,4,32841
.L533:
	.loc 1 266 0
	lwz 0,20(1)
	.loc 1 261 0
	mr 5,31
	.loc 1 266 0
	lmw 30,8(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	.loc 1 261 0
	b _glGetSize
.L512:
	.cfi_restore_state
	.loc 1 263 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,263
.L532:
	.loc 1 266 0
	lwz 0,20(1)
	lmw 30,8(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
.L531:
	.loc 1 263 0
	b _glSetErrorEx
.L502:
	.cfi_def_cfa_offset 16
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 266 0
	addi 11,1,16
	b _restgpr_30_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 65
	.cfi_endproc
.LFE70:
	.size	glGetTexLevelParameteriv, .-glGetTexLevelParameteriv
	.align 2
	.globl GX_SetTevStage
	.type	GX_SetTevStage, @function
GX_SetTevStage:
.LFB80:
	.loc 1 648 0
	.cfi_startproc
	stwu 1,-40(1)
	.cfi_def_cfa_offset 40
	mflr 0
	stmw 24,8(1)
	.cfi_register 65, 0
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.loc 1 649 0
	lis 27,cur_tex@ha
	lwz 9,cur_tex@l(27)
	lis 26,glTexEnvs@ha
	.loc 1 648 0
	stw 0,44(1)
	.cfi_offset 65, 4
	.loc 1 649 0
	la 26,glTexEnvs@l(26)
	mulli 9,9,108
	add 9,26,9
	lwz 8,24(9)
	xoris 9,8,0xffff
	cmpwi 7,9,-31376
	bne 7,.L535
	.loc 1 782 0
	lwz 0,44(1)
	lmw 24,8(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,40
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_def_cfa_offset 0
	.loc 1 652 0
	b GX_SetTevCombineStage
.L535:
	.cfi_restore_state
	.loc 1 661 0
	cmpwi 7,3,0
	.loc 1 656 0
	li 9,1
	mr 31,3
	stw 9,0(4)
	.loc 1 661 0
	bne- 7,.L560
	.loc 1 659 0
	li 28,5
	.loc 1 658 0
	li 30,10
	b .L536
.L560:
	.loc 1 663 0
	li 28,0
	.loc 1 662 0
	li 30,0
.L536:
	.loc 1 666 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	.loc 1 667 0
	lwz 25,cur_tex@l(27)
	.loc 1 666 0
	mr 29,3
	.loc 1 667 0
	rlwinm 25,25,0,0xff
	mr 3,25
	bl GX_IncTexCoord
	mr 24,3
	mr 3,25
	bl GX_IncTexMap
	mr 4,24
	mr 5,3
	li 6,4
	mr 3,31
	bl GX_SetTevOrder
	.loc 1 669 0
	lwz 9,cur_tex@l(27)
	mr 3,31
	li 4,0
	mulli 9,9,108
	li 5,0
	li 7,1
	li 8,0
	add 9,26,9
	lbz 6,104(9)
	bl GX_SetTevColorOp
	.loc 1 670 0
	lwz 9,cur_tex@l(27)
	mr 3,31
	li 4,0
	mulli 9,9,108
	li 5,0
	li 7,1
	li 8,0
	add 9,26,9
	lbz 6,105(9)
	bl GX_SetTevAlphaOp
	.loc 1 680 0
	lwz 9,cur_tex@l(27)
	mulli 9,9,108
	add 9,26,9
	lwz 9,24(9)
	cmplwi 7,9,7681
	beq- 7,.L538
	bgt+ 7,.L539
	cmplwi 7,9,260
	beq+ 7,.L540
	b .L534
.L539:
	cmplwi 7,9,8448
	beq- 7,.L541
	cmplwi 7,9,8449
	beq+ 7,.L542
	b .L534
.L540:
	.loc 1 684 0
	lwz 9,68(29)
	.loc 1 688 0
	mr 3,31
	li 4,15
	.loc 1 684 0
	cmplwi 7,9,6406
	beq- 7,.L593
	.loc 1 691 0
	li 4,8
	b .L593
.L541:
	.loc 1 698 0
	lwz 9,68(29)
	.loc 1 702 0
	mr 3,31
	li 4,15
	.loc 1 698 0
	cmplwi 7,9,6406
	bne- 7,.L583
.L593:
	.loc 1 702 0
	li 5,15
	li 6,15
	b .L590
.L583:
	.loc 1 705 0
	mr 5,30
	li 6,8
	b .L591
.L542:
	.loc 1 712 0
	lwz 9,68(29)
	.loc 1 715 0
	mr 3,31
	.loc 1 712 0
	cmplwi 7,9,6408
	bne- 7,.L584
	.loc 1 715 0
	mr 4,30
	li 5,8
	li 6,9
.L591:
	li 7,15
	b .L588
.L584:
	.loc 1 718 0
	li 4,15
	li 5,15
	li 6,15
	b .L585
.L538:
	.loc 1 725 0
	lwz 9,68(29)
	.loc 1 729 0
	mr 3,31
	li 4,15
	li 5,15
	.loc 1 725 0
	cmplwi 7,9,6406
	.loc 1 729 0
	li 6,15
	.loc 1 725 0
	bne- 7,.L585
.L590:
	.loc 1 729 0
	mr 7,30
	b .L588
.L585:
	.loc 1 732 0
	li 7,8
.L588:
	bl GX_SetTevColorIn
	.loc 1 744 0
	lwz 9,cur_tex@l(27)
	mulli 9,9,108
	add 26,26,9
	lwz 9,24(26)
	cmplwi 7,9,7681
	beq- 7,.L552
	bgt+ 7,.L553
	cmplwi 7,9,260
	beq- 7,.L554
	cmplwi 7,9,3042
	bne+ 7,.L534
	b .L554
.L553:
	cmplwi 7,9,8448
	beq- 7,.L554
	cmplwi 7,9,8449
	.loc 1 765 0
	mr 3,31
	li 4,7
	.loc 1 744 0
	beq+ 7,.L592
	b .L534
.L554:
	.loc 1 750 0
	lwz 9,68(29)
	.loc 1 755 0
	mr 3,31
	li 4,7
	.loc 1 750 0
	cmplwi 7,9,6407
	beq- 7,.L592
	cmplwi 7,9,6409
	beq- 7,.L592
	.loc 1 758 0
	li 5,4
	mr 6,28
	li 7,7
	b .L589
.L592:
	.loc 1 765 0
	li 5,7
	li 6,7
	mr 7,28
	b .L589
.L552:
	.loc 1 770 0
	lwz 9,68(29)
	cmplwi 7,9,6407
	beq- 7,.L559
	cmplwi 7,9,6409
	bne+ 7,.L558
.L559:
	.loc 1 775 0
	mr 3,31
	li 4,7
	li 5,7
	li 6,7
	mr 7,28
	bl GX_SetTevAlphaIn
.L558:
	.loc 1 777 0
	mr 3,31
	li 4,7
	li 5,7
	li 6,7
	li 7,4
.L589:
	.loc 1 782 0
	lwz 0,44(1)
	lmw 24,8(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,40
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_def_cfa_offset 0
	.loc 1 777 0
	b GX_SetTevAlphaIn
.L534:
	.cfi_restore_state
	.loc 1 782 0
	addi 11,1,40
	b _restgpr_24_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 65
	.cfi_endproc
.LFE80:
	.size	GX_SetTevStage, .-GX_SetTevStage
	.align 2
	.globl glTexParameteri
	.type	glTexParameteri, @function
glTexParameteri:
.LFB83:
	.loc 1 817 0
	.cfi_startproc
	.loc 1 818 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L595
	.loc 1 818 0 discriminator 1
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,818
	b .L610
.L595:
	.loc 1 820 0
	xoris 9,4,0xffff
	.loc 1 817 0
	mflr 0
	.loc 1 820 0
	cmpwi 7,9,-32454
	.loc 1 817 0
	stwu 1,-40(1)
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 31,36(1)
	.cfi_offset 31, -4
	mr 31,5
	stw 0,44(1)
	.cfi_offset 65, 4
	.loc 1 820 0
	beq 7,.L597
	cmplwi 7,4,33082
	bgt- 7,.L598
	cmplwi 7,4,10241
	beq- 7,.L599
	bgt+ 7,.L600
	cmplwi 7,4,10240
	bne- 7,.L596
	.loc 1 823 0
	lis 9,cur_tex@ha
	mr 3,5
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,2
	b .L611
.L600:
	.loc 1 820 0
	cmplwi 7,4,10242
	beq- 7,.L602
	cmplwi 7,4,10243
	bne- 7,.L596
	.loc 1 825 0
	lis 9,cur_tex@ha
	mr 3,5
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,4
	b .L612
.L598:
	.loc 1 820 0
	xoris 9,4,0xffff
	cmpwi 7,9,-32452
	beq 7,.L604
	cmplwi 7,4,33084
	blt- 7,.L605
	xoris 9,4,0xffff
	cmpwi 7,9,-32451
	beq 7,.L606
	xoris 9,4,0xffff
	cmpwi 7,9,-31490
	bne 7,.L596
	.loc 1 828 0
	xoris 31,5,0x8000
	lis 9,0x4330
	stw 31,28(1)
	stw 9,24(1)
	lis 9,.LC1@ha
	lfs 1,.LC1@l(9)
	lfd 13,24(1)
	.loc 1 841 0
	lwz 0,44(1)
	.loc 1 828 0
	fsub 1,13,1
	.loc 1 841 0
	lwz 31,36(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,40
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	.loc 1 828 0
	frsp 1,1
	b setAniso
.L599:
	.cfi_restore_state
	.loc 1 822 0
	lis 9,cur_tex@ha
	mr 3,5
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,1
.L611:
	.loc 1 841 0
	lwz 0,44(1)
	lwz 31,36(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,40
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	.loc 1 823 0
	b GL2GX_Filter
.L602:
	.cfi_restore_state
	.loc 1 824 0
	lis 9,cur_tex@ha
	mr 3,5
	lwz 4,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 4,4,108
	add 4,4,9
	addi 4,4,3
.L612:
	.loc 1 841 0
	lwz 0,44(1)
	lwz 31,36(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,40
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	.loc 1 825 0
	b GL2GX_Wrap
.L597:
	.cfi_restore_state
	.loc 1 826 0
	lis 9,cur_tex@ha
	xoris 31,5,0x8000
	lwz 10,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	stw 31,12(1)
	mulli 10,10,108
	add 9,9,10
	lis 10,0x4330
	stw 10,8(1)
	lis 10,.LC1@ha
	lfs 0,.LC1@l(10)
	lfd 13,8(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,8(9)
	b .L594
.L605:
	.loc 1 827 0
	xoris 31,5,0x8000
	lis 9,0x4330
	stw 31,20(1)
	stw 9,16(1)
	lis 9,.LC1@ha
	lfs 1,.LC1@l(9)
	lfd 0,16(1)
	.loc 1 841 0
	lwz 0,44(1)
	.loc 1 827 0
	fsub 1,0,1
	.loc 1 841 0
	lwz 31,36(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,40
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	.loc 1 827 0
	frsp 1,1
	b setMaxLod
.L604:
	.cfi_restore_state
	.loc 1 830 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	stb 31,73(3)
	.loc 1 831 0
	b .L594
.L606:
	.loc 1 833 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	stb 31,74(3)
	.loc 1 834 0
	b .L594
.L596:
	.loc 1 841 0
	lwz 0,44(1)
	.loc 1 838 0
	lis 4,.LC3@ha
	.loc 1 841 0
	lwz 31,36(1)
	.loc 1 838 0
	li 3,1280
	.loc 1 841 0
	mtlr 0
	.cfi_restore 65
	.loc 1 838 0
	la 4,.LC3@l(4)
	li 5,838
	.loc 1 841 0
	addi 1,1,40
	.cfi_restore 31
	.cfi_def_cfa_offset 0
.L610:
	.loc 1 838 0
	b _glSetErrorEx
.L594:
	.cfi_def_cfa_offset 40
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 841 0
	addi 11,1,40
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
	.cfi_endproc
.LFE83:
	.size	glTexParameteri, .-glTexParameteri
	.align 2
	.globl glTexParameterf
	.type	glTexParameterf, @function
glTexParameterf:
.LFB84:
	.loc 1 847 0
	.cfi_startproc
	.loc 1 848 0
	lis 10,cur_state@ha
	lwz 10,cur_state@l(10)
	andi. 8,10,1
	beq+ 0,.L614
	.loc 1 848 0 discriminator 1
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,848
	b .L625
.L614:
	.loc 1 849 0
	xoris 10,4,0xffff
	cmpwi 7,10,-32453
	beq 7,.L616
	cmplwi 7,4,33083
	.loc 1 847 0
	mflr 0
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stfd 31,24(1)
	.cfi_offset 63, -8
	fmr 31,1
	stw 0,36(1)
	.cfi_offset 65, 4
	.loc 1 849 0
	bgt+ 7,.L617
	cmplwi 7,4,10240
	blt- 7,.L615
	cmplwi 7,4,10243
	ble- 7,.L618
	xoris 10,4,0xffff
	cmpwi 7,10,-32454
	bne 7,.L615
	.loc 1 855 0
	lis 9,cur_tex@ha
	lwz 10,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 10,10,108
	add 9,9,10
	stfs 1,8(9)
	b .L613
.L617:
	.loc 1 849 0
	xoris 10,4,0xffff
	cmpwi 7,10,-32451
	beq 7,.L620
	cmplwi 7,4,33085
	blt- 7,.L621
	xoris 10,4,0xffff
	cmpwi 7,10,-31490
	bne 7,.L615
	.loc 1 869 0
	lwz 0,36(1)
	lfd 31,24(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,32
	.cfi_restore 63
	.cfi_def_cfa_offset 0
	.loc 1 857 0
	b setAniso
.L618:
	.cfi_restore_state
	.loc 1 854 0
	fctiwz 31,1
	addi 9,1,16
	stfiwx 31,0,9
	.loc 1 869 0
	lwz 0,36(1)
	.loc 1 854 0
	lwz 5,16(1)
	.loc 1 869 0
	lfd 31,24(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_restore 63
	.cfi_def_cfa_offset 0
	.loc 1 854 0
	b glTexParameteri
.L616:
	.loc 1 856 0
	b setMaxLod
.L621:
	.cfi_def_cfa_offset 32
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.loc 1 859 0
	lis 3,texMan@ha
	fctiwz 31,31
	la 3,texMan@l(3)
	bl getCur
	addi 8,1,12
	stfiwx 31,0,8
	lwz 9,12(1)
	stb 9,73(3)
	.loc 1 860 0
	b .L613
.L620:
	.loc 1 862 0
	lis 3,texMan@ha
	fctiwz 31,31
	la 3,texMan@l(3)
	bl getCur
	addi 9,1,8
	stfiwx 31,0,9
	lwz 9,8(1)
	stb 9,74(3)
	.loc 1 863 0
	b .L613
.L615:
	.loc 1 869 0
	lwz 0,36(1)
	.loc 1 866 0
	lis 4,.LC3@ha
	.loc 1 869 0
	lfd 31,24(1)
	.loc 1 866 0
	li 3,1280
	.loc 1 869 0
	mtlr 0
	.cfi_restore 65
	.loc 1 866 0
	la 4,.LC3@l(4)
	li 5,866
	.loc 1 869 0
	addi 1,1,32
	.cfi_restore 63
	.cfi_def_cfa_offset 0
.L625:
	.loc 1 866 0
	b _glSetErrorEx
.L613:
	.cfi_def_cfa_offset 32
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.loc 1 869 0
	addi 11,1,32
	b _restfpr_31_x
	.cfi_restore 63
	.cfi_restore 65
	.cfi_endproc
.LFE84:
	.size	glTexParameterf, .-glTexParameterf
	.align 2
	.globl glTexParameterfv
	.type	glTexParameterfv, @function
glTexParameterfv:
.LFB85:
	.loc 1 874 0
	.cfi_startproc
.LVL362:
	.loc 1 875 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L627
	.loc 1 875 0 is_stmt 0 discriminator 1
	lis 4,.LC3@ha
.LVL363:
	li 3,1282
.LVL364:
	la 4,.LC3@l(4)
	li 5,875
.LVL365:
	b .L636
.LVL366:
.L627:
	.loc 1 876 0 is_stmt 1
	xoris 9,4,0xffff
	cmpwi 7,9,-32666
	beq 7,.L629
	cmplwi 7,4,32870
	bgt- 7,.L630
	cmplwi 7,4,4100
	beq+ 7,.L631
	blt- 7,.L628
	addi 9,4,-10240
	b .L635
.L630:
	xoris 9,4,0xffff
	cmpwi 7,9,-32654
	beq 7,.L629
	cmplwi 7,4,32882
	blt- 7,.L628
	addis 9,4,0xffff
	addi 9,9,32454
.L635:
	cmplwi 7,9,3
	bgt- 7,.L628
.L629:
	.loc 1 888 0
	lfs 1,0(5)
	.loc 1 898 0
	.loc 1 888 0
	b glTexParameterf
.LVL367:
.L631:
	.loc 1 891 0
	lfs 11,0(5)
	lis 10,.LANCHOR1@ha
	lfs 12,4(5)
	la 9,.LANCHOR1@l(10)
	lfs 13,8(5)
	lfs 0,12(5)
	stfs 11,.LANCHOR1@l(10)
	stfs 12,4(9)
	stfs 13,8(9)
	stfs 0,12(9)
	.loc 1 892 0
	blr
.L628:
	.loc 1 895 0
	lis 4,.LC3@ha
.LVL368:
	li 3,1280
.LVL369:
	la 4,.LC3@l(4)
	li 5,895
.LVL370:
.L636:
	.loc 1 898 0
	.loc 1 895 0
	b _glSetErrorEx
.LVL371:
	.cfi_endproc
.LFE85:
	.size	glTexParameterfv, .-glTexParameterfv
	.align 2
	.globl getNextTexID
	.type	getNextTexID, @function
getNextTexID:
.LFB107:
	.loc 1 1428 0
	.cfi_startproc
.LVL372:
	mflr 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	.cfi_offset 31, -4
	.loc 1 1430 0
	li 31,0
	.loc 1 1428 0
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 1430 0
	lwz 9,8(3)
	addi 9,9,1
	mtctr 9
.LVL373:
.L638:
	.loc 1 1430 0 is_stmt 0 discriminator 1
	bdz .L645
	.loc 1 1432 0 is_stmt 1
	lwz 9,4(3)
	lbzx 9,9,31
	addi 31,31,1
.LVL374:
	cmpwi 7,9,0
	bne+ 7,.L638
	.loc 1 1434 0
	mr 4,31
	bl activateTex
.LVL375:
	.loc 1 1435 0
	mr 9,31
	b .L640
.LVL376:
.L645:
	.loc 1 1441 0
	slwi 4,31,1
	bl resizeMan
.LVL377:
	.loc 1 1447 0
	li 9,0
	.loc 1 1441 0
	cmpwi 7,3,0
	beq- 7,.L640
	.loc 1 1443 0
	addi 9,31,1
.LVL378:
.L640:
	.loc 1 1449 0
	addi 11,1,16
	mr 3,9
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
	.cfi_endproc
.LFE107:
	.size	getNextTexID, .-getNextTexID
	.align 2
	.globl glGenTextures
	.type	glGenTextures, @function
glGenTextures:
.LFB108:
	.loc 1 1452 0
	.cfi_startproc
	.loc 1 1453 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L647
	.loc 1 1453 0 discriminator 1
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,1453
	b .L652
.L647:
	.loc 1 1455 0
	cmpwi 7,3,0
	.loc 1 1452 0
	mflr 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stmw 28,8(1)
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 30,3
	stw 0,28(1)
	.cfi_offset 65, 4
	.loc 1 1455 0
	bge+ 7,.L648
	.loc 1 1470 0
	lwz 0,28(1)
	.loc 1 1457 0
	lis 4,.LC3@ha
	.loc 1 1470 0
	lmw 28,8(1)
	.loc 1 1457 0
	li 3,1281
	.loc 1 1470 0
	mtlr 0
	.cfi_restore 65
	.loc 1 1457 0
	la 4,.LC3@l(4)
	li 5,1457
	.loc 1 1470 0
	addi 1,1,24
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
.L652:
	.loc 1 1457 0
	b _glSetErrorEx
.L648:
	.cfi_def_cfa_offset 24
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 1462 0
	lis 29,texMan@ha
	mr 28,4
	la 29,texMan@l(29)
	.loc 1 1464 0
	li 31,0
	.loc 1 1462 0
	lwz 4,12(29)
	mr 3,29
	add 4,30,4
	bl resizeMan
.L649:
	.loc 1 1464 0 discriminator 1
	cmplw 7,31,30
	bge- 7,.L653
.LBB63:
	.loc 1 1466 0 discriminator 2
	mr 3,29
	bl getNextTexID
	slwi 9,31,2
	.loc 1 1467 0 discriminator 2
	stwx 3,28,9
.LBE63:
	.loc 1 1464 0 discriminator 2
	addi 31,31,1
	b .L649
.L653:
	.loc 1 1470 0
	addi 11,1,24
	b _restgpr_28_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 65
	.cfi_endproc
.LFE108:
	.size	glGenTextures, .-glGenTextures
	.align 2
	.globl glBindTexture
	.type	glBindTexture, @function
glBindTexture:
.LFB109:
	.loc 1 1473 0
	.cfi_startproc
	.loc 1 1474 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L655
	.loc 1 1474 0 discriminator 1
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,1474
	b _glSetErrorEx
.L655:
	.loc 1 1473 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	mflr 0
	stmw 29,12(1)
	.cfi_register 65, 0
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.loc 1 1476 0
	lis 31,texMan@ha
	mr 30,4
	mr 29,3
	la 3,texMan@l(31)
	.loc 1 1473 0
	stw 0,28(1)
	.cfi_offset 65, 4
	.loc 1 1476 0
	bl activateTex
	.loc 1 1478 0
	lwz 10,texMan@l(31)
	mulli 9,30,76
	.loc 1 1481 0
	addi 11,1,24
	.loc 1 1478 0
	add 9,10,9
	stw 29,-44(9)
	.loc 1 1480 0
	lis 9,cur_tex@ha
	lwz 10,cur_tex@l(9)
	lis 9,glTexEnvs@ha
	la 9,glTexEnvs@l(9)
	mulli 10,10,108
	add 9,9,10
	stw 30,84(9)
	.loc 1 1481 0
	b _restgpr_29_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 65
	.cfi_endproc
.LFE109:
	.size	glBindTexture, .-glBindTexture
	.align 2
	.globl _glSetEnableTex
	.type	_glSetEnableTex, @function
_glSetEnableTex:
.LFB110:
	.loc 1 1484 0
	.cfi_startproc
.LVL379:
	.loc 1 1485 0
	lis 9,cur_tex@ha
	lis 10,glTexEnvs@ha
	lwz 9,cur_tex@l(9)
	la 10,glTexEnvs@l(10)
	mulli 9,9,108
	stbx 3,10,9
	blr
	.cfi_endproc
.LFE110:
	.size	_glSetEnableTex, .-_glSetEnableTex
	.align 2
	.globl _glGetEnableTex
	.type	_glGetEnableTex, @function
_glGetEnableTex:
.LFB111:
	.loc 1 1488 0
	.cfi_startproc
.LVL380:
	.loc 1 1489 0
	lis 9,cur_tex@ha
	.loc 1 1490 0
	lis 10,glTexEnvs@ha
	.loc 1 1489 0
	lwz 9,cur_tex@l(9)
	.loc 1 1490 0
	la 10,glTexEnvs@l(10)
	.loc 1 1489 0
	mulli 9,9,108
	.loc 1 1490 0
	lbzx 3,10,9
.LVL381:
	blr
	.cfi_endproc
.LFE111:
	.size	_glGetEnableTex, .-_glGetEnableTex
	.align 2
	.globl GX_SetTextures
	.type	GX_SetTextures, @function
GX_SetTextures:
.LFB112:
	.loc 1 1493 0
	.cfi_startproc
.LVL382:
	mflr 0
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stmw 26,24(1)
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	lis 28,glTexEnvs+84@ha
	stw 0,52(1)
	.cfi_offset 65, 4
	.loc 1 1493 0
	mr 30,3
	la 28,glTexEnvs+84@l(28)
	.loc 1 1496 0
	li 27,0
	.loc 1 1497 0
	li 29,0
.LBB64:
.LBB65:
.LBB66:
	.loc 1 1415 0
	lis 26,texMan@ha
.LVL383:
.L668:
.LBE66:
.LBE65:
	.loc 1 1499 0
	lwz 31,0(28)
	cmpwi 7,31,-1
	beq- 7,.L660
	.loc 1 1504 0
	lbz 9,-84(28)
	cmpwi 7,9,0
	beq- 7,.L660
.LVL384:
.LBB68:
.LBB67:
	.loc 1 1415 0
	mulli 31,31,76
.LVL385:
	lwz 9,texMan@l(26)
	addi 31,31,-76
	add 31,9,31
.LBE67:
.LBE68:
	.loc 1 1513 0
	lwz 9,4(31)
	cmpwi 7,9,0
	beq- 7,.L660
	.loc 1 1518 0
	lbz 9,72(31)
	addi 9,9,-2
	cmplwi 7,9,3
	bgt- 7,.L661
.LBB69:
	.loc 1 1528 0
	lbz 10,74(31)
	li 9,1
.L663:
	.loc 1 1528 0 is_stmt 0 discriminator 1
	cmpw 7,9,10
	addi 8,9,-1
.LVL386:
	bgt- 7,.L666
	add 7,31,9
	.loc 1 1530 0 is_stmt 1
	lbz 7,8(7)
	cmpwi 7,7,0
	bne+ 7,.L664
.L666:
	.loc 1 1536 0
	cmpw 7,8,10
	blt- 7,.L660
	b .L661
.L664:
.LVL387:
	.loc 1 1528 0
	addi 9,9,1
.LVL388:
	b .L663
.LVL389:
.L661:
.LBE69:
	.loc 1 1543 0
	rlwinm 3,29,0,0xff
	.loc 1 1547 0
	addi 27,27,1
.LVL390:
	.loc 1 1543 0
	bl GX_IncTexMap
.LVL391:
	mr 4,3
	addi 3,31,36
	bl GX_LoadTexObj
.LVL392:
	.loc 1 1545 0
	mr 3,30
	addi 4,1,8
	bl GX_SetTevStage
.LVL393:
	.loc 1 1549 0
	lwz 9,8(1)
	add 30,30,9
.LVL394:
	rlwinm 30,30,0,0xff
.LVL395:
.L660:
.LBE64:
	.loc 1 1497 0
	cmpwi 7,29,7
	addi 28,28,108
	addi 29,29,1
.LVL396:
	bne+ 7,.L668
	.loc 1 1552 0
	mr 3,27
	bl GX_SetNumTexGens
.LVL397:
	.loc 1 1555 0
	addi 11,1,48
	mr 3,30
	b _restgpr_26_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 65
	.cfi_endproc
.LFE112:
	.size	GX_SetTextures, .-GX_SetTextures
	.align 2
	.globl convertInternalFormat
	.type	convertInternalFormat, @function
convertInternalFormat:
.LFB113:
	.loc 1 1558 0
	.cfi_startproc
.LVL398:
	.loc 1 1559 0
	li 9,1
	stw 9,0(4)
	.loc 1 1560 0
	li 9,0
	ori 9,9,32834
	cmpw 7,3,9
	li 9,0
	bgt- 7,.L681
	ori 9,9,32832
	cmpw 7,3,9
	bge- 7,.L682
	cmpwi 7,3,6408
	beq- 7,.L683
	bgt- 7,.L684
	cmpwi 7,3,3
	beq- 7,.L685
	bgt+ 7,.L686
	cmpwi 7,3,1
	beq- 7,.L694
	cmpwi 7,3,2
	b .L722
.L686:
	cmpwi 7,3,6406
	beq- 7,.L689
	bgt- 7,.L685
	cmpwi 7,3,4
	beq+ 7,.L683
	b .L680
.L684:
	cmpwi 7,3,10768
	beq- 7,.L685
	bgt- 7,.L690
	cmpwi 7,3,6409
	beq- 7,.L694
	cmpwi 7,3,6410
.L722:
	beq+ 7,.L688
	b .L680
.L690:
	li 9,0
	ori 9,9,32827
	cmpw 7,3,9
	blt- 7,.L680
	li 9,0
	ori 9,9,32830
	cmpw 7,3,9
	ble- 7,.L689
	b .L694
.L681:
	ori 9,9,32845
	cmpw 7,3,9
	li 9,0
	bgt- 7,.L691
	ori 9,9,32843
	cmpw 7,3,9
	bge- 7,.L682
	li 9,0
	ori 9,9,32840
	cmpw 7,3,9
	bgt- 7,.L694
	li 9,0
	ori 9,9,32836
	cmpw 7,3,9
	blt+ 7,.L688
	b .L689
.L691:
	ori 9,9,32854
	cmpw 7,3,9
	bgt+ 7,.L692
	li 9,0
	ori 9,9,32853
	cmpw 7,3,9
	bge- 7,.L683
	li 9,0
	ori 9,9,32847
	cmpw 7,3,9
	bge+ 7,.L685
	b .L680
.L692:
	xoris 10,3,0xffff
	.loc 1 1595 0
	li 9,5
	.loc 1 1560 0
	cmpwi 7,10,-32681
	beq 7,.L687
	li 9,0
	ori 9,9,32859
	cmpw 7,3,9
	ble+ 7,.L683
	b .L680
.L689:
	.loc 1 1566 0
	li 9,3
	b .L687
.L682:
	.loc 1 1577 0
	li 9,1
	b .L687
.L688:
	.loc 1 1580 0
	li 9,2
	b .L687
.L685:
	.loc 1 1594 0
	li 9,4
	b .L687
.L683:
	.loc 1 1603 0
	li 9,6
	b .L687
.L680:
	.loc 1 1606 0
	li 9,0
	stw 9,0(4)
	.loc 1 1607 0
	li 9,5
	b .L687
.L694:
	.loc 1 1571 0
	li 9,0
.L687:
	.loc 1 1608 0
	mr 3,9
.LVL399:
	blr
	.cfi_endproc
.LFE113:
	.size	convertInternalFormat, .-convertInternalFormat
	.align 2
	.globl GenArray
	.type	GenArray, @function
GenArray:
.LFB114:
	.loc 1 1612 0
	.cfi_startproc
.LVL400:
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	mr 9,3
	.loc 1 1613 0
	rlwinm 3,4,0,0xffff
.LVL401:
	.loc 1 1612 0
	stmw 30,8(1)
	.loc 1 1613 0
	rlwinm 4,5,0,0xffff
.LVL402:
	.cfi_register 65, 0
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.loc 1 1612 0
	mr 31,6
	.loc 1 1613 0
	mr 5,9
.LVL403:
	li 6,1
.LVL404:
	.loc 1 1612 0
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 1613 0
	bl GX_GetTexBufferSize
.LVL405:
	stw 3,0(31)
	.loc 1 1615 0
	bl getTextureSlot
.LVL406:
	.loc 1 1617 0
	mr. 30,3
	beq- 0,.L724
	.loc 1 1622 0
	lwz 5,0(31)
	li 4,127
	bl memset
.LVL407:
.L724:
	.loc 1 1625 0
	addi 11,1,16
	mr 3,30
	b _restgpr_30_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 65
	.cfi_endproc
.LFE114:
	.size	GenArray, .-GenArray
	.align 2
	.globl IsPowerOfTwo
	.type	IsPowerOfTwo, @function
IsPowerOfTwo:
.LFB115:
	.loc 1 1627 0
	.cfi_startproc
.LVL408:
	.loc 1 1628 0
	neg 9,3
	and 9,9,3
	.loc 1 1629 0
	xor 3,9,3
.LVL409:
	cntlzw 3,3
	srwi 3,3,5
	blr
	.cfi_endproc
.LFE115:
	.size	IsPowerOfTwo, .-IsPowerOfTwo
	.align 2
	.globl computeStart
	.type	computeStart, @function
computeStart:
.LFB116:
	.loc 1 1632 0
	.cfi_startproc
.LVL410:
	.loc 1 1633 0
	mr. 7,4
	.loc 1 1632 0
	mflr 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,3
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 1633 0
	bne+ 0,.L731
	.loc 1 1635 0
	lwz 3,4(3)
.LVL411:
	b .L732
.LVL412:
.L731:
.LBB74:
.LBB75:
	.loc 1 1640 0
	cmpwi 7,7,1
	lwz 3,20(3)
.LVL413:
	lwz 4,24(31)
.LVL414:
	.loc 1 1642 0
	li 6,0
	lwz 5,0(31)
	rlwinm 3,3,0,0xffff
	rlwinm 4,4,0,0xffff
	.loc 1 1640 0
	beq- 7,.L736
	.loc 1 1646 0
	li 6,1
	rlwinm 7,7,0,0xff
.LVL415:
.L736:
	bl GX_GetTexBufferSize
.LVL416:
	.loc 1 1649 0
	lwz 9,4(31)
.LVL417:
.LBB76:
.LBB77:
	.file 2 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/include/glint.h"
	.loc 2 343 0
	add 3,9,3
.LVL418:
.L732:
.LBE77:
.LBE76:
.LBE75:
.LBE74:
	.loc 1 1653 0
	addi 11,1,16
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
	.cfi_endproc
.LFE116:
	.size	computeStart, .-computeStart
	.align 2
	.globl CorrectGLtype
	.type	CorrectGLtype, @function
CorrectGLtype:
.LFB117:
	.loc 1 1656 0
	.cfi_startproc
.LVL419:
	.loc 1 1657 0
	cmplwi 7,4,6410
	.loc 1 1656 0
	mflr 0
	stwu 1,-8(1)
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.cfi_offset 65, 4
	.loc 1 1657 0
	bgt- 7,.L739
	cmplwi 7,4,6403
	bge- 7,.L740
	cmplwi 7,4,6400
	beq+ 7,.L740
	b .L738
.L739:
	addis 9,4,0xffff
	addi 9,9,32544
	cmplwi 7,9,1
	ble+ 7,.L740
.L738:
	.loc 1 1672 0
	lis 4,.LC3@ha
.LVL420:
	li 3,1280
.LVL421:
	la 4,.LC3@l(4)
	li 5,1672
	b .L756
.LVL422:
.L740:
	.loc 1 1676 0
	cmplwi 7,3,32822
	bgt- 7,.L743
	cmplwi 7,3,32819
	bge- 7,.L744
	cmplwi 7,3,5120
	blt- 7,.L742
	cmplwi 7,3,5126
	.loc 1 1717 0
	li 9,1
	.loc 1 1676 0
	ble+ 7,.L741
	xoris 9,3,0xffff
	cmpwi 7,9,-32718
	beq 7,.L745
	b .L742
.L743:
	cmplwi 7,3,33634
	blt- 7,.L742
	cmplwi 7,3,33636
	ble- 7,.L745
	cmplwi 7,3,33640
	ble+ 7,.L744
	b .L742
.L745:
	.loc 1 1682 0
	cmplwi 7,4,6407
	.loc 1 1684 0
	li 9,1
	.loc 1 1682 0
	beq- 7,.L741
	.loc 1 1688 0
	lis 4,.LC3@ha
.LVL423:
	li 3,1280
.LVL424:
	la 4,.LC3@l(4)
	li 5,1688
	b .L756
.LVL425:
.L744:
.LBB80:
.LBB81:
	.loc 1 1700 0
	cmplwi 7,4,6408
	.loc 1 1702 0
	li 9,1
	.loc 1 1700 0
	beq- 7,.L741
	xoris 10,4,0xffff
	cmpwi 7,10,-32543
	beq 7,.L741
	.loc 1 1706 0
	lis 4,.LC3@ha
.LVL426:
	li 3,1280
.LVL427:
	la 4,.LC3@l(4)
	li 5,1706
	b .L756
.LVL428:
.L742:
.LBE81:
.LBE80:
	.loc 1 1721 0
	lis 4,.LC3@ha
.LVL429:
	li 3,1280
.LVL430:
	la 4,.LC3@l(4)
	li 5,1721
.L756:
	bl _glSetErrorEx
.LVL431:
	.loc 1 1722 0
	li 9,0
.L741:
	.loc 1 1726 0
	lwz 0,12(1)
	mr 3,9
	addi 1,1,8
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE117:
	.size	CorrectGLtype, .-CorrectGLtype
	.align 2
	.globl glTexSubImage2D
	.type	glTexSubImage2D, @function
glTexSubImage2D:
.LFB118:
	.loc 1 1734 0
	.cfi_startproc
	stwu 1,-112(1)
	.cfi_def_cfa_offset 112
	mflr 0
	stmw 23,76(1)
	.cfi_register 65, 0
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 29,9
	.loc 1 1735 0
	lis 9,cur_state@ha
	.loc 1 1734 0
	mr 26,8
	.loc 1 1735 0
	lwz 9,cur_state@l(9)
	.loc 1 1734 0
	stw 0,116(1)
	.cfi_offset 65, 4
	.loc 1 1735 0
	andi. 8,9,1
	.loc 1 1734 0
	lwz 23,120(1)
	.loc 1 1735 0
	beq+ 0,.L758
	.loc 1 1735 0 is_stmt 0 discriminator 1
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,1735
	b .L776
.L758:
	.loc 1 1739 0 is_stmt 1
	cmplwi 7,3,3553
	beq+ 7,.L759
	.loc 1 1741 0
	lis 4,.LC3@ha
	li 3,1280
	la 4,.LC3@l(4)
	li 5,1741
.L776:
	.loc 1 1811 0
	lwz 0,116(1)
	lmw 23,76(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,112
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 0
	.loc 1 1741 0
	b _glSetErrorEx
.L759:
	.cfi_restore_state
	.loc 1 1746 0
	cmplwi 7,10,6656
	mr 27,10
	beq- 7,.L760
	.loc 1 1746 0 is_stmt 0 discriminator 1
	cmplwi 7,29,6400
	bne+ 7,.L761
.L760:
	.loc 1 1748 0 is_stmt 1
	lis 4,.LC3@ha
	li 3,1280
	la 4,.LC3@l(4)
	li 5,1748
	b .L776
.L761:
	.loc 1 1752 0
	cmplwi 7,4,10
	mr 30,4
	ble+ 7,.L762
	.loc 1 1754 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,1754
	b .L776
.L762:
	.loc 1 1758 0
	mr 3,10
	mr 4,29
	mr 28,5
	mr 24,6
	mr 25,7
	bl CorrectGLtype
	.loc 1 1760 0
	cmpwi 7,3,0
	beq- 7,.L757
	.loc 1 1765 0
	lis 3,texMan@ha
	la 3,texMan@l(3)
	bl getCur
	.loc 1 1767 0
	lwz 9,4(3)
	.loc 1 1765 0
	mr 31,3
	.loc 1 1767 0
	cmpwi 7,9,0
	bne+ 7,.L764
	.loc 1 1769 0
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,1769
	b .L776
.L764:
	.loc 1 1774 0
	lwz 9,20(3)
	lis 10,.LC1@ha
	lfs 0,.LC1@l(10)
	sraw 8,9,30
	lis 9,0x4330
	xoris 8,8,0x8000
	stw 9,24(1)
	stw 8,28(1)
	.loc 1 1777 0
	xoris 8,28,0x8000
	.loc 1 1775 0
	lwz 7,24(3)
	.loc 1 1777 0
	stw 8,36(1)
	lis 8,.LC7@ha
	stw 9,32(1)
	.loc 1 1774 0
	lfd 10,24(1)
	.loc 1 1777 0
	lfd 13,32(1)
	.loc 1 1774 0
	fsub 12,10,0
	.loc 1 1777 0
	fsub 11,13,0
	lfs 13,.LC7@l(8)
	.loc 1 1774 0
	frsp 12,12
	.loc 1 1777 0
	frsp 11,11
	fcmpu 7,11,13
	blt- 7,.L765
	.loc 1 1778 0 discriminator 1
	add 8,28,25
	stw 9,40(1)
	xoris 8,8,0x8000
	stw 8,44(1)
	lfd 10,40(1)
	fsub 11,10,0
	frsp 11,11
	.loc 1 1777 0 discriminator 1
	fcmpu 7,11,12
	bgt- 7,.L765
	.loc 1 1779 0
	xoris 8,24,0x8000
	stw 9,48(1)
	stw 8,52(1)
	lfd 11,48(1)
	fsub 0,11,0
	frsp 0,0
	.loc 1 1778 0
	fcmpu 7,0,13
	blt- 7,.L765
	.loc 1 1780 0
	lfs 0,.LC1@l(10)
	add 8,24,26
	.loc 1 1775 0
	sraw 10,7,30
	.loc 1 1780 0
	xoris 8,8,0x8000
	.loc 1 1775 0
	xoris 10,10,0x8000
	.loc 1 1780 0
	stw 8,60(1)
	stw 9,56(1)
	.loc 1 1775 0
	stw 10,68(1)
	stw 9,64(1)
	.loc 1 1780 0
	lfd 12,56(1)
	.loc 1 1775 0
	lfd 10,64(1)
	.loc 1 1780 0
	fsub 13,12,0
	.loc 1 1775 0
	fsub 0,10,0
	.loc 1 1780 0
	frsp 13,13
	.loc 1 1775 0
	frsp 0,0
	.loc 1 1779 0
	fcmpu 7,13,0
	bng+ 7,.L774
.L765:
	.loc 1 1782 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,1782
	b .L776
.L774:
	.loc 1 1786 0
	cmpwi 7,26,0
	blt- 7,.L768
	.loc 1 1786 0 is_stmt 0 discriminator 1
	cmpwi 7,25,0
	bge+ 7,.L769
.L768:
	.loc 1 1788 0 is_stmt 1
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,1788
	b .L776
.L769:
	.loc 1 1792 0
	lwz 9,68(3)
	cmpw 7,9,29
	bne+ 7,.L770
	.loc 1 1794 0
	lis 4,.LC3@ha
	li 3,1280
	la 4,.LC3@l(4)
	li 5,1794
	b .L776
.L770:
	.loc 1 1798 0
	mr 4,30
	.loc 1 1800 0
	add 30,31,30
	.loc 1 1798 0
	bl computeStart
	.loc 1 1799 0
	lwz 5,0(31)
	lwz 8,20(31)
	.loc 1 1798 0
	mr 4,3
	.loc 1 1799 0
	lwz 9,24(31)
	mr 3,29
	stw 24,8(1)
	mr 6,23
	stw 25,12(1)
	mr 7,27
	stw 26,16(1)
	mr 10,28
	.loc 1 1802 0
	lis 29,glTexEnvs@ha
	addi 28,31,36
	.loc 1 1799 0
	bl TransferPixels
	.loc 1 1800 0
	li 9,1
	stb 9,8(30)
	.loc 1 1802 0
	lis 30,cur_tex@ha
	lwz 9,cur_tex@l(30)
	la 29,glTexEnvs@l(29)
	lwz 4,4(31)
	mr 3,28
	mulli 9,9,108
	lhz 5,22(31)
	lhz 6,26(31)
	li 10,1
	add 9,29,9
	lbz 7,3(31)
	lbz 8,3(9)
	lbz 9,4(9)
	bl GX_InitTexObj
	.loc 1 1804 0
	lwz 9,cur_tex@l(30)
	mr 3,28
	mulli 9,9,108
	add 9,29,9
	lbz 4,1(9)
	lbz 5,2(9)
	lfs 1,8(9)
	lfs 2,12(9)
	lfs 3,16(9)
	lbz 6,20(9)
	lbz 7,21(9)
	lbz 8,22(9)
	bl GX_InitTexObjLOD
	.loc 1 1808 0
	lwz 9,cur_tex@l(30)
	.loc 1 1810 0
	lwz 3,4(31)
	.loc 1 1808 0
	mulli 9,9,108
	.loc 1 1810 0
	lwz 4,28(31)
	.loc 1 1808 0
	add 29,29,9
	lbz 9,1(29)
	stb 9,72(31)
	.loc 1 1811 0
	lwz 0,116(1)
	lmw 23,76(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,112
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 0
	.loc 1 1810 0
	b DCFlushRange
.L757:
	.cfi_restore_state
	.loc 1 1811 0
	addi 11,1,112
	b _restgpr_23_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 65
	.cfi_endproc
.LFE118:
	.size	glTexSubImage2D, .-glTexSubImage2D
	.align 2
	.globl glTexImage2D
	.type	glTexImage2D, @function
glTexImage2D:
.LFB120:
	.loc 1 1842 0
	.cfi_startproc
.LVL432:
	stwu 1,-80(1)
	.cfi_def_cfa_offset 80
.LVL433:
	mflr 0
	stmw 22,40(1)
	.cfi_register 65, 0
	.cfi_offset 22, -40
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 25,9
	.loc 1 1843 0
	lis 9,cur_state@ha
.LVL434:
	.loc 1 1842 0
	mr 23,10
	.loc 1 1843 0
	lwz 9,cur_state@l(9)
	.loc 1 1842 0
	stw 0,84(1)
	.cfi_offset 65, 4
	.loc 1 1843 0
	andi. 10,9,1
.LVL435:
	.loc 1 1842 0
	lwz 22,88(1)
	.loc 1 1843 0
	beq+ 0,.L778
	.loc 1 1843 0 is_stmt 0 discriminator 1
	lis 4,.LC3@ha
.LVL436:
	li 3,1282
.LVL437:
	la 4,.LC3@l(4)
	li 5,1843
.LVL438:
	b .L836
.LVL439:
.L778:
.LBB82:
.LBB83:
	.loc 1 1628 0 is_stmt 1
	neg 9,6
	mr 30,4
	and 9,9,6
	mr 31,5
.LBE83:
.LBE82:
	.loc 1 1847 0
	cmpw 7,9,6
	mr 29,6
	mr 28,7
.LVL440:
	li 8,0
.LVL441:
	bne+ 7,.L780
.LVL442:
.LBB84:
.LBB85:
	.loc 1 1628 0
	neg 8,7
	and 8,8,7
.LBE85:
.LBE84:
	.loc 1 1847 0
	xor 8,8,7
	cntlzw 8,8
	srwi 8,8,5
.LVL443:
.L780:
	.loc 1 1849 0 discriminator 4
	xoris 9,3,0xffff
	cmpwi 7,9,-32668
	bne 7,.L781
	.loc 1 1851 0
	cmpwi 7,8,0
	lis 3,texMan@ha
.LVL444:
	la 3,texMan@l(3)
	beq- 7,.L782
	.loc 1 1851 0 is_stmt 0 discriminator 1
	li 9,1024
.LVL445:
	sraw 9,9,30
	cmpw 7,29,9
	bgt- 7,.L782
	cmpw 7,28,9
	bgt- 7,.L782
	cmpwi 7,30,10
	ble- 7,.L783
.L782:
.LBB86:
	.loc 1 1853 0 is_stmt 1
	bl getCur
.LVL446:
	.loc 1 1854 0
	li 9,0
	stw 9,20(3)
	.loc 1 1855 0
	stw 9,24(3)
.LBE86:
	.loc 1 1852 0
	b .L777
.LVL447:
.L783:
.LBB87:
	.loc 1 1859 0
	bl getCur
.LVL448:
	.loc 1 1860 0
	slw 29,29,30
.LVL449:
	.loc 1 1861 0
	slw 30,28,30
.LVL450:
	.loc 1 1860 0
	stw 29,20(3)
	.loc 1 1861 0
	stw 30,24(3)
	b .L777
.LVL451:
.L781:
.LBE87:
	.loc 1 1866 0
	cmplwi 7,3,3553
	beq- 7,.L784
	.loc 1 1868 0
	lis 4,.LC3@ha
.LVL452:
	li 3,1280
.LVL453:
	la 4,.LC3@l(4)
	li 5,1868
.LVL454:
.L836:
	bl _glSetErrorEx
.LVL455:
	.loc 1 1869 0
	b .L777
.LVL456:
.L784:
	.loc 1 1872 0
	cmpwi 7,8,0
	beq- 7,.L785
	.loc 1 1872 0 is_stmt 0 discriminator 1
	cmpwi 7,29,0
	blt- 7,.L785
	cmpwi 7,28,0
	bge+ 7,.L786
.L785:
	.loc 1 1874 0 is_stmt 1
	lis 4,.LC3@ha
.LVL457:
	li 3,1281
.LVL458:
	la 4,.LC3@l(4)
	li 5,1874
.LVL459:
	b .L836
.LVL460:
.L786:
	.loc 1 1879 0
	cmplwi 7,23,6656
	beq- 7,.L787
	.loc 1 1879 0 is_stmt 0 discriminator 1
	cmplwi 7,25,6400
	bne+ 7,.L788
.L787:
	.loc 1 1881 0 is_stmt 1
	lis 4,.LC3@ha
.LVL461:
	li 3,1280
.LVL462:
	la 4,.LC3@l(4)
	li 5,1881
.LVL463:
	b .L836
.LVL464:
.L788:
	.loc 1 1886 0
	cmplwi 7,30,10
	ble- 7,.L789
	.loc 1 1888 0
	lis 4,.LC3@ha
.LVL465:
	li 3,1281
.LVL466:
	la 4,.LC3@l(4)
	li 5,1888
.LVL467:
	b .L836
.LVL468:
.L789:
	.loc 1 1892 0
	mr 3,23
.LVL469:
	mr 4,25
.LVL470:
	bl CorrectGLtype
.LVL471:
	.loc 1 1894 0
	cmpwi 7,3,0
	.loc 1 1892 0
	stw 3,28(1)
	.loc 1 1894 0
	beq+ 7,.L777
	.loc 1 1899 0
	mr 3,31
	addi 4,1,28
	bl convertInternalFormat
.LVL472:
	.loc 1 1903 0
	lwz 9,28(1)
	.loc 1 1899 0
	mr 26,3
.LVL473:
	.loc 1 1903 0
	cmpwi 7,9,0
	bne+ 7,.L790
	.loc 1 1905 0
	lis 4,.LC3@ha
	li 3,1280
.LVL474:
	la 4,.LC3@l(4)
	li 5,1905
	b .L836
.LVL475:
.L790:
	.loc 1 1911 0
	lis 3,texMan@ha
.LVL476:
	.loc 1 1913 0
	slw 27,28,30
	.loc 1 1911 0
	la 3,texMan@l(3)
	.loc 1 1914 0
	slw 24,29,30
	.loc 1 1911 0
	bl getCur
.LVL477:
	.loc 1 1919 0
	cmpwi 7,28,1
	.loc 1 1911 0
	mr 31,3
.LVL478:
	.loc 1 1919 0
	li 8,0
	lwz 9,24(3)
	bne+ 7,.L791
	.loc 1 1919 0 is_stmt 0 discriminator 1
	cmpwi 6,29,1
	bne+ 6,.L791
	cmpw 6,9,27
	bne+ 6,.L791
	lwz 8,20(3)
	xor 8,8,24
	cntlzw 8,8
	srwi 8,8,5
.L791:
	.loc 1 1922 0 is_stmt 1 discriminator 4
	cmpw 6,9,27
	.loc 1 1919 0 discriminator 4
	mr 10,8
.LVL479:
	.loc 1 1922 0 discriminator 4
	beq- 6,.L792
	.loc 1 1922 0 is_stmt 0 discriminator 2
	bne+ 7,.L810
.L792:
	.loc 1 1922 0 discriminator 1
	lwz 9,20(31)
	li 8,1
.LVL480:
	cmpw 7,9,24
	beq- 7,.L793
	.loc 1 1922 0 discriminator 4
	xori 8,29,1
	cntlzw 8,8
	srwi 8,8,5
	b .L793
.LVL481:
.L810:
	.loc 1 1922 0
	li 8,0
.LVL482:
.L793:
	.loc 1 1924 0 is_stmt 1 discriminator 5
	cmpwi 6,10,0
	.loc 1 1922 0 discriminator 5
	mr 9,8
.LVL483:
	.loc 1 1924 0 discriminator 5
	bne- 6,.L794
	.loc 1 1924 0 is_stmt 0 discriminator 1
	cmpwi 7,8,0
	bne- 7,.L794
	cmpwi 7,30,0
	beq+ 7,.L794
	.loc 1 1926 0 is_stmt 1
	lis 4,.LC3@ha
	li 3,1281
.LVL484:
	la 4,.LC3@l(4)
	li 5,1926
	b .L836
.LVL485:
.L794:
	.loc 1 1930 0
	lwz 3,4(31)
.LVL486:
	cmpwi 7,3,0
	beq- 7,.L795
	.loc 1 1930 0 is_stmt 0 discriminator 1
	bne- 6,.L796
	cmpwi 7,9,0
	bne- 7,.L796
	cmpwi 7,30,0
	bne- 7,.L796
.LBB88:
	.loc 1 1934 0 is_stmt 1
	lwz 4,28(31)
	bl releaseTextureSlot
.LVL487:
	.loc 1 1935 0
	stw 30,4(31)
.L795:
.LVL488:
	.loc 1 1941 0 discriminator 1
	li 10,10
.LBE88:
	.loc 1 1922 0 discriminator 1
	li 9,0
.LBB90:
	.loc 1 1941 0 discriminator 1
	mtctr 10
	li 8,0
.LVL489:
.L798:
	add 10,31,9
	.loc 1 1939 0 discriminator 2
	addi 9,9,1
.LVL490:
	.loc 1 1941 0 discriminator 2
	stb 8,8(10)
	.loc 1 1939 0 discriminator 2
	bdnz .L798
	.loc 1 1944 0
	mr 3,26
	mr 4,29
	mr 5,28
	addi 6,1,24
	li 7,10
	bl GenArray
.LVL491:
	.loc 1 1946 0
	cmpwi 7,3,0
	.loc 1 1944 0
	stw 3,4(31)
	.loc 1 1946 0
	bne+ 7,.L799
	.loc 1 1948 0
	lis 4,.LC3@ha
	li 3,1285
	la 4,.LC3@l(4)
	li 5,1948
	b .L836
.L799:
	.loc 1 1954 0
	stw 26,0(31)
	.loc 1 1953 0
	stw 25,68(31)
	.loc 1 1955 0
	lwz 9,24(1)
	.loc 1 1957 0
	stw 27,24(31)
	.loc 1 1955 0
	stw 9,28(31)
	.loc 1 1960 0
	li 9,3553
	stw 9,32(31)
	.loc 1 1962 0
	lbz 9,74(31)
	.loc 1 1958 0
	stw 24,20(31)
	.loc 1 1962 0
	cmpwi 7,9,0
	bne- 7,.L800
.LBB89:
	.loc 1 1964 0
	cmpw 7,24,27
	mr 8,24
	bge- 7,.L801
.LVL492:
	mr 8,27
.LVL493:
.L801:
	.loc 1 1966 0
	li 9,0
.L835:
	.loc 1 1968 0
	cmpwi 7,8,1
	.loc 1 1971 0
	stb 9,74(31)
	.loc 1 1968 0
	ble- 7,.L800
	.loc 1 1971 0
	lbz 9,74(31)
	.loc 1 1970 0
	srawi 8,8,1
.LVL494:
	.loc 1 1971 0
	addi 9,9,1
	b .L835
.LVL495:
.L796:
.LBE89:
.LBE90:
	.loc 1 1977 0
	lwz 9,0(31)
	cmpw 7,26,9
	beq- 7,.L800
	.loc 1 1979 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,1979
	b .L836
.LVL496:
.L800:
	.loc 1 1984 0
	cmpwi 7,22,0
	beq- 7,.L777
.LBB91:
	.loc 1 1986 0
	mr 4,30
	mr 3,31
	bl computeStart
.LVL497:
	.loc 1 1987 0
	li 9,0
	stw 9,8(1)
	.loc 1 1986 0
	mr 4,3
.LVL498:
	.loc 1 1987 0
	stw 29,12(1)
	mr 8,29
	stw 28,16(1)
	mr 9,28
	mr 3,25
.LVL499:
	mr 5,26
	mr 6,22
	mr 7,23
	li 10,0
	.loc 1 1989 0
	add 30,31,30
.LVL500:
	.loc 1 1987 0
	bl TransferPixels
.LVL501:
	.loc 1 1989 0
	li 9,1
	stb 9,8(30)
	.loc 1 1991 0
	lis 30,cur_tex@ha
	lwz 9,cur_tex@l(30)
	lis 29,glTexEnvs@ha
.LVL502:
	la 29,glTexEnvs@l(29)
	addi 28,31,36
.LVL503:
	mulli 9,9,108
	lwz 4,4(31)
	lhz 5,22(31)
	mr 3,28
	add 9,29,9
	lhz 6,26(31)
	lbz 8,3(9)
	li 10,1
	lbz 7,3(31)
	lbz 9,4(9)
	bl GX_InitTexObj
.LVL504:
	.loc 1 1993 0
	lwz 9,cur_tex@l(30)
	mr 3,28
	mulli 9,9,108
	add 9,29,9
	lbz 4,1(9)
	lbz 5,2(9)
	lfs 1,8(9)
	lfs 2,12(9)
	lfs 3,16(9)
	lbz 6,20(9)
	lbz 7,21(9)
	lbz 8,22(9)
	bl GX_InitTexObjLOD
.LVL505:
	.loc 1 1997 0
	lwz 9,cur_tex@l(30)
	.loc 1 1999 0
	lwz 3,4(31)
	.loc 1 1997 0
	mulli 9,9,108
	.loc 1 1999 0
	lwz 4,24(1)
	.loc 1 1997 0
	add 29,29,9
	lbz 9,1(29)
	stb 9,72(31)
	.loc 1 1999 0
	bl DCFlushRange
.LVL506:
.L777:
.LBE91:
	.loc 1 2001 0
	addi 11,1,80
.LVL507:
	b _restgpr_22_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 65
	.cfi_endproc
.LFE120:
	.size	glTexImage2D, .-glTexImage2D
	.align 2
	.globl glTexImage1D
	.type	glTexImage1D, @function
glTexImage1D:
.LFB119:
	.loc 1 1821 0
	.cfi_startproc
.LVL508:
	mflr 0
	mr 11,9
	.loc 1 1822 0
	lis 9,cur_state@ha
.LVL509:
	.loc 1 1821 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 1822 0
	lwz 9,cur_state@l(9)
	.loc 1 1821 0
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 1821 0
	mr 0,8
	.loc 1 1822 0
	andi. 8,9,1
.LVL510:
	beq+ 0,.L838
	.loc 1 1833 0 discriminator 1
	lwz 0,20(1)
.LVL511:
	.loc 1 1822 0 discriminator 1
	lis 4,.LC3@ha
.LVL512:
	.loc 1 1833 0 discriminator 1
	.loc 1 1822 0 discriminator 1
	li 3,1282
.LVL513:
	.loc 1 1833 0 discriminator 1
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	.loc 1 1822 0 discriminator 1
	la 4,.LC3@l(4)
	li 5,1822
.LVL514:
	.loc 1 1833 0 discriminator 1
	addi 1,1,16
	.cfi_def_cfa_offset 0
	.loc 1 1822 0 discriminator 1
	b _glSetErrorEx
.LVL515:
.L838:
	.cfi_restore_state
	.loc 1 1824 0
	li 9,0
	mr 12,7
	ori 9,9,32867
	.loc 1 1826 0
	stw 10,8(1)
	.loc 1 1824 0
	cmpw 7,3,9
	bne+ 7,.L839
	.loc 1 1826 0
	li 3,0
.LVL516:
	ori 3,3,32868
	b .L842
.LVL517:
.L839:
	.loc 1 1830 0
	li 3,3553
.LVL518:
.L842:
	mr 9,0
	li 7,1
.LVL519:
	mr 8,12
	mr 10,11
.LVL520:
	bl glTexImage2D
.LVL521:
	.loc 1 1833 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE119:
	.size	glTexImage1D, .-glTexImage1D
	.align 2
	.globl glDeleteTextures
	.type	glDeleteTextures, @function
glDeleteTextures:
.LFB121:
	.loc 1 2005 0
	.cfi_startproc
	.loc 1 2006 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L844
	.loc 1 2006 0 discriminator 1
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,2006
	b .L850
.L844:
	.loc 1 2010 0
	cmpwi 7,3,0
	.loc 1 2005 0
	mflr 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stmw 28,8(1)
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 30,3
	stw 0,28(1)
	.cfi_offset 65, 4
	.loc 1 2010 0
	bge+ 7,.L845
	.loc 1 2012 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,2012
	b .L851
.L845:
	.loc 1 2016 0
	cmpwi 7,4,0
	mr 29,4
	beq- 7,.L846
	.loc 1 2024 0
	lis 28,texMan@ha
	.loc 1 2016 0
	li 31,0
	.loc 1 2024 0
	la 28,texMan@l(28)
	b .L847
.L846:
	.loc 1 2018 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,2018
.L851:
	.loc 1 2026 0
	lwz 0,28(1)
	lmw 28,8(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,24
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
.L850:
	.loc 1 2018 0
	b _glSetErrorEx
.L847:
	.cfi_def_cfa_offset 24
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 2022 0 discriminator 1
	cmplw 7,31,30
	bge- 7,.L852
	slwi 9,31,2
	.loc 1 2024 0 discriminator 2
	mr 3,28
	lwzx 4,29,9
	.loc 1 2022 0 discriminator 2
	addi 31,31,1
	.loc 1 2024 0 discriminator 2
	bl deleteTex
	b .L847
.L852:
	.loc 1 2026 0
	addi 11,1,24
	b _restgpr_28_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 65
	.cfi_endproc
.LFE121:
	.size	glDeleteTextures, .-glDeleteTextures
	.align 2
	.globl glIsTexture
	.type	glIsTexture, @function
glIsTexture:
.LFB122:
	.loc 1 2028 0
	.cfi_startproc
.LVL522:
	.loc 1 2029 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	bne- 0,.L857
	mr 4,3
	.loc 1 2031 0
	lis 3,texMan@ha
.LVL523:
	la 3,texMan@l(3)
	b isUsed
.LVL524:
.L857:
	.loc 1 2028 0 discriminator 1
	mflr 0
	stwu 1,-8(1)
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 2029 0 discriminator 1
	lis 4,.LC3@ha
	li 3,1282
.LVL525:
	la 4,.LC3@l(4)
	li 5,2029
	.loc 1 2028 0 discriminator 1
	stw 0,12(1)
	.cfi_offset 65, 4
	.loc 1 2029 0 discriminator 1
	bl _glSetErrorEx
.LVL526:
	.loc 1 2032 0 discriminator 1
	lwz 0,12(1)
	li 3,0
	addi 1,1,8
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE122:
	.size	glIsTexture, .-glIsTexture
	.globl border_color
	.comm	texMan,16,4
	.comm	call_offset,4,4
	.comm	read_mode,4,4
	.comm	glTexEnvs,864,4
	.comm	fog_color,4,1
	.comm	fog_density,4,4
	.comm	fog_endz,4,4
	.comm	fog_startz,4,4
	.comm	fog_mode,1,1
	.comm	fog_enable,1,1
	.comm	Trans,32,4
	.comm	_clearcolor,4,1
	.comm	copy_material,4,4
	.comm	copy_mat_enabled,1,1
	.comm	color_write_mask,4,4
	.comm	unpack,20,4
	.comm	pack,20,4
	.comm	point_size,4,4
	.comm	line_width,4,4
	.comm	normFar,4,4
	.comm	normNear,4,4
	.comm	viewPort,16,4
	.comm	scissorInfo,16,4
	.comm	scissor_test,1,1
	.comm	fb_max_width,4,4
	.comm	fb_max_height,4,4
	.comm	cur_state,4,4
	.comm	cull_mode,1,1
	.comm	blend_op,1,1
	.comm	blend_dst,1,1
	.comm	blend_src,1,1
	.comm	blend_type,1,1
	.comm	lighting,1,1
	.comm	gxwinding,4,4
	.comm	gxcullfaceanabled,1,1
	.comm	curmat,68,4
	.comm	globAmbient,16,4
	.comm	lights,1312,4
	.comm	cur_mode,4,4
	.comm	curmtx,4,4
	.comm	texture_stack,128,4
	.comm	projection_stack,16,4
	.comm	model_stack,16,4
	.comm	_cleardepth,4,4
	.comm	depthfunction,4,4
	.comm	depthupdate,1,1
	.comm	depthtestenabled,1,1
	.comm	cur_tex_client,4,4
	.comm	cur_tex,4,4
	.comm	_GLtype,4,4
	.comm	_type,4,4
	.comm	vert_i,4,4
	.comm	_colorelements,16000,32
	.comm	_texcoordelements,64000,32
	.comm	_vertexelements,12000,32
	.comm	_normalelements,12000,32
	.comm	color,20,4
	.comm	tex,160,4
	.comm	vert,20,4
	.comm	norm,20,4
	.comm	_temptexcoordelement,64,4
	.comm	_tempnormalelement,12,4
	.comm	_tempcolorelement,16,4
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	CSWTCH.68, @object
	.size	CSWTCH.68, 40
CSWTCH.68:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	CSWTCH.69, @object
	.size	CSWTCH.69, 40
CSWTCH.69:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	CSWTCH.70, @object
	.size	CSWTCH.70, 40
CSWTCH.70:
	.byte	0
	.byte	0
	.byte	4
	.byte	8
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.type	CSWTCH.71, @object
	.size	CSWTCH.71, 40
CSWTCH.71:
	.byte	4
	.byte	8
	.byte	4
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	CSWTCH.79, @object
	.size	CSWTCH.79, 7
CSWTCH.79:
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.zero	1
	.type	CSWTCH.81, @object
	.size	CSWTCH.81, 7
CSWTCH.81:
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1501560836
.LC2:
	.4byte	805306368
.LC4:
	.4byte	1073741824
.LC5:
	.4byte	1082130432
.LC6:
	.4byte	1092616192
.LC7:
	.4byte	0
.LC8:
	.4byte	1325400064
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl_textures.c"
	.section	".bss"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	border_color, @object
	.size	border_color, 16
border_color:
	.zero	16
	.section	".text"
.Letext0:
	.file 3 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h"
	.file 4 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\stdint.h"
	.file 5 "D:\\devkitPro\\/libogc/include/gctypes.h"
	.file 6 "D:\\devkitPro\\/libogc/include/ogc/gu.h"
	.file 7 "D:\\devkitPro\\/libogc/include/ogc/gx.h"
	.file 8 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/include/GL/gl.h"
	.file 9 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/include/mat_stack.h"
	.file 10 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\malloc.h"
	.file 11 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\string.h"
	.file 12 "D:\\devkitPro\\/libogc/include/ogc/cache.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2caf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF306
	.byte	0x1
	.4byte	.LASF307
	.4byte	.LASF308
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0xd4
	.4byte	0x37
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x7
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x29
	.4byte	0x55
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2a
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x35
	.4byte	0x5c
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x36
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4f
	.4byte	0x63
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x50
	.4byte	0x37
	.uleb128 0x8
	.string	"u8"
	.byte	0x5
	.byte	0x11
	.4byte	0xb1
	.uleb128 0x8
	.string	"u16"
	.byte	0x5
	.byte	0x12
	.4byte	0xc7
	.uleb128 0x8
	.string	"u32"
	.byte	0x5
	.byte	0x13
	.4byte	0xdd
	.uleb128 0x8
	.string	"s8"
	.byte	0x5
	.byte	0x16
	.4byte	0xa6
	.uleb128 0x8
	.string	"s16"
	.byte	0x5
	.byte	0x17
	.4byte	0xbc
	.uleb128 0x8
	.string	"s32"
	.byte	0x5
	.byte	0x18
	.4byte	0xd2
	.uleb128 0x8
	.string	"vu8"
	.byte	0x5
	.byte	0x1b
	.4byte	0x133
	.uleb128 0x9
	.4byte	0xe8
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x1c
	.4byte	0x143
	.uleb128 0x9
	.4byte	0xf2
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x1d
	.4byte	0x153
	.uleb128 0x9
	.4byte	0xfd
	.uleb128 0x8
	.string	"vs8"
	.byte	0x5
	.byte	0x20
	.4byte	0x163
	.uleb128 0x9
	.4byte	0x108
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x21
	.4byte	0x173
	.uleb128 0x9
	.4byte	0x112
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x22
	.4byte	0x183
	.uleb128 0x9
	.4byte	0x11d
	.uleb128 0x8
	.string	"f32"
	.byte	0x5
	.byte	0x2b
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x2e
	.4byte	0x19e
	.uleb128 0x9
	.4byte	0x25
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.uleb128 0xa
	.4byte	0xfd
	.4byte	0x1ba
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c0
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0xc
	.byte	0x6
	.byte	0x5e
	.4byte	0x1ec
	.uleb128 0xe
	.string	"x"
	.byte	0x6
	.byte	0x5f
	.4byte	0x188
	.byte	0
	.uleb128 0xe
	.string	"y"
	.byte	0x6
	.byte	0x5f
	.4byte	0x188
	.byte	0x4
	.uleb128 0xe
	.string	"z"
	.byte	0x6
	.byte	0x5f
	.4byte	0x188
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x60
	.4byte	0x1c1
	.uleb128 0xf
	.4byte	.LASF309
	.byte	0x4
	.byte	0x7
	.2byte	0x490
	.4byte	0x257
	.uleb128 0x10
	.string	"U8"
	.byte	0x7
	.2byte	0x492
	.4byte	0x128
	.uleb128 0x10
	.string	"S8"
	.byte	0x7
	.2byte	0x493
	.4byte	0x158
	.uleb128 0x10
	.string	"U16"
	.byte	0x7
	.2byte	0x494
	.4byte	0x138
	.uleb128 0x10
	.string	"S16"
	.byte	0x7
	.2byte	0x495
	.4byte	0x168
	.uleb128 0x10
	.string	"U32"
	.byte	0x7
	.2byte	0x496
	.4byte	0x148
	.uleb128 0x10
	.string	"S32"
	.byte	0x7
	.2byte	0x497
	.4byte	0x178
	.uleb128 0x10
	.string	"F32"
	.byte	0x7
	.2byte	0x498
	.4byte	0x193
	.byte	0
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x7
	.2byte	0x499
	.4byte	0x1f7
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x4
	.byte	0x7
	.2byte	0x49e
	.4byte	0x29d
	.uleb128 0x13
	.string	"r"
	.byte	0x7
	.2byte	0x49f
	.4byte	0xe8
	.byte	0
	.uleb128 0x13
	.string	"g"
	.byte	0x7
	.2byte	0x4a0
	.4byte	0xe8
	.byte	0x1
	.uleb128 0x13
	.string	"b"
	.byte	0x7
	.2byte	0x4a1
	.4byte	0xe8
	.byte	0x2
	.uleb128 0x13
	.string	"a"
	.byte	0x7
	.2byte	0x4a2
	.4byte	0xe8
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x7
	.2byte	0x4a3
	.4byte	0x263
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x20
	.byte	0x7
	.2byte	0x4b9
	.4byte	0x2c4
	.uleb128 0x13
	.string	"val"
	.byte	0x7
	.2byte	0x4ba
	.4byte	0x1aa
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x7
	.2byte	0x4bb
	.4byte	0x2a9
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x40
	.byte	0x7
	.2byte	0x4f1
	.4byte	0x2eb
	.uleb128 0x13
	.string	"val"
	.byte	0x7
	.2byte	0x4f2
	.4byte	0x2eb
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xfd
	.4byte	0x2fb
	.uleb128 0xb
	.4byte	0x3e
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x7
	.2byte	0x4f3
	.4byte	0x2d0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c4
	.uleb128 0xa
	.4byte	0xe8
	.4byte	0x31d
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe8
	.uleb128 0x6
	.byte	0x4
	.4byte	0xfd
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x92
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x8
	.byte	0x93
	.4byte	0x45
	.uleb128 0x14
	.4byte	.LASF310
	.byte	0x8
	.byte	0x95
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x8
	.byte	0x98
	.4byte	0x63
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0x9b
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x8
	.byte	0x9c
	.4byte	0x63
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x8
	.byte	0x9d
	.4byte	0x25
	.uleb128 0x6
	.byte	0x4
	.4byte	0x378
	.uleb128 0x7
	.4byte	0x33f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x383
	.uleb128 0x7
	.4byte	0x367
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38e
	.uleb128 0x7
	.4byte	0x346
	.uleb128 0x6
	.byte	0x4
	.4byte	0x346
	.uleb128 0x6
	.byte	0x4
	.4byte	0x39f
	.uleb128 0x7
	.4byte	0x351
	.uleb128 0x6
	.byte	0x4
	.4byte	0x351
	.uleb128 0x7
	.4byte	0x329
	.uleb128 0x6
	.byte	0x4
	.4byte	0x329
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x2
	.byte	0xa
	.4byte	0x1ec
	.uleb128 0x15
	.byte	0x10
	.byte	0x2
	.byte	0x15
	.4byte	0x3dd
	.uleb128 0xe
	.string	"v"
	.byte	0x2
	.byte	0x17
	.4byte	0x3b5
	.byte	0
	.uleb128 0xe
	.string	"w"
	.byte	0x2
	.byte	0x18
	.4byte	0x25
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x2
	.byte	0x19
	.4byte	0x3c0
	.uleb128 0x15
	.byte	0x8
	.byte	0x2
	.byte	0x1b
	.4byte	0x405
	.uleb128 0xe
	.string	"s"
	.byte	0x2
	.byte	0x1d
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.string	"t"
	.byte	0x2
	.byte	0x1e
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x2
	.byte	0x1f
	.4byte	0x3e8
	.uleb128 0x15
	.byte	0x10
	.byte	0x2
	.byte	0x21
	.4byte	0x441
	.uleb128 0xe
	.string	"r"
	.byte	0x2
	.byte	0x23
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.string	"g"
	.byte	0x2
	.byte	0x24
	.4byte	0x25
	.byte	0x4
	.uleb128 0xe
	.string	"b"
	.byte	0x2
	.byte	0x25
	.4byte	0x25
	.byte	0x8
	.uleb128 0xe
	.string	"a"
	.byte	0x2
	.byte	0x26
	.4byte	0x25
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x2
	.byte	0x27
	.4byte	0x410
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x14
	.byte	0x2
	.byte	0x41
	.4byte	0x493
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x2
	.byte	0x43
	.4byte	0x1a3
	.byte	0
	.uleb128 0xe
	.string	"p"
	.byte	0x2
	.byte	0x44
	.4byte	0x1ba
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x2
	.byte	0x45
	.4byte	0xe8
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x2
	.byte	0x46
	.4byte	0x346
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x2
	.byte	0x47
	.4byte	0x329
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x2
	.byte	0x48
	.4byte	0x44c
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x10
	.byte	0x9
	.byte	0xc
	.4byte	0x4db
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x9
	.byte	0xe
	.4byte	0x53
	.byte	0
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x9
	.byte	0xf
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x9
	.byte	0x10
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xe
	.string	"cur"
	.byte	0x9
	.byte	0x11
	.4byte	0x2c
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x9
	.byte	0x12
	.4byte	0x49e
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0xa4
	.byte	0x2
	.byte	0x7d
	.4byte	0x583
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x2
	.byte	0x7f
	.4byte	0x1a3
	.byte	0
	.uleb128 0xe
	.string	"obj"
	.byte	0x2
	.byte	0x81
	.4byte	0x2fb
	.byte	0x4
	.uleb128 0xe
	.string	"pos"
	.byte	0x2
	.byte	0x83
	.4byte	0x3dd
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0x2
	.byte	0x85
	.4byte	0x3b5
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x2
	.byte	0x87
	.4byte	0x441
	.byte	0x60
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x2
	.byte	0x88
	.4byte	0x441
	.byte	0x70
	.uleb128 0x16
	.4byte	.LASF61
	.byte	0x2
	.byte	0x89
	.4byte	0x441
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x2
	.byte	0x8b
	.4byte	0x25
	.byte	0x90
	.uleb128 0x16
	.4byte	.LASF63
	.byte	0x2
	.byte	0x8c
	.4byte	0x25
	.byte	0x94
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0x2
	.byte	0x8d
	.4byte	0x25
	.byte	0x98
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x2
	.byte	0x8e
	.4byte	0x25
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x2
	.byte	0x8f
	.4byte	0x25
	.byte	0xa0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x2
	.byte	0x90
	.4byte	0x4e6
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x44
	.byte	0x2
	.byte	0x9a
	.4byte	0x5d7
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x2
	.byte	0x9c
	.4byte	0x441
	.byte	0
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x2
	.byte	0x9d
	.4byte	0x441
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x2
	.byte	0x9e
	.4byte	0x441
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF61
	.byte	0x2
	.byte	0x9f
	.4byte	0x441
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x2
	.byte	0xa0
	.4byte	0x25
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x2
	.byte	0xa1
	.4byte	0x58e
	.uleb128 0x17
	.4byte	.LASF311
	.byte	0x4
	.byte	0x2
	.byte	0xb9
	.4byte	0x601
	.uleb128 0x18
	.4byte	.LASF72
	.sleb128 0
	.uleb128 0x18
	.4byte	.LASF73
	.sleb128 1
	.uleb128 0x18
	.4byte	.LASF74
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x2
	.byte	0xbe
	.4byte	0x5e2
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x10
	.byte	0x2
	.byte	0xe2
	.4byte	0x645
	.uleb128 0xe
	.string	"x"
	.byte	0x2
	.byte	0xe4
	.4byte	0x346
	.byte	0
	.uleb128 0xe
	.string	"y"
	.byte	0x2
	.byte	0xe5
	.4byte	0x346
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x2
	.byte	0xe6
	.4byte	0x35c
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x2
	.byte	0xe7
	.4byte	0x35c
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x2
	.byte	0xe8
	.4byte	0x60c
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x14
	.byte	0x2
	.byte	0xf5
	.4byte	0x6a5
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x2
	.byte	0xf7
	.4byte	0x1a3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x2
	.byte	0xf8
	.4byte	0x1a3
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x2
	.byte	0xf9
	.4byte	0x63
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x2
	.byte	0xfa
	.4byte	0x63
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x2
	.byte	0xfb
	.4byte	0x63
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x2
	.byte	0xfc
	.4byte	0x63
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x2
	.byte	0xfd
	.4byte	0x650
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x8
	.byte	0x2
	.2byte	0x110
	.4byte	0x6d8
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x112
	.4byte	0x188
	.byte	0
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x113
	.4byte	0x188
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x114
	.4byte	0x6b0
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x6c
	.byte	0x2
	.2byte	0x120
	.4byte	0x810
	.uleb128 0x19
	.4byte	.LASF57
	.byte	0x2
	.2byte	0x122
	.4byte	0x1a3
	.byte	0
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x124
	.4byte	0xe8
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x125
	.4byte	0xe8
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x126
	.4byte	0xe8
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x127
	.4byte	0xe8
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x128
	.4byte	0x188
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x129
	.4byte	0x188
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x12a
	.4byte	0x188
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x2
	.2byte	0x12b
	.4byte	0xe8
	.byte	0x14
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0x2
	.2byte	0x12c
	.4byte	0xe8
	.byte	0x15
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x12d
	.4byte	0xe8
	.byte	0x16
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x12f
	.4byte	0x329
	.byte	0x18
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0x2
	.2byte	0x131
	.4byte	0x329
	.byte	0x1c
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0x2
	.2byte	0x132
	.4byte	0x329
	.byte	0x20
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0x2
	.2byte	0x134
	.4byte	0x810
	.byte	0x24
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0x2
	.2byte	0x135
	.4byte	0x810
	.byte	0x30
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x136
	.4byte	0x810
	.byte	0x3c
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x137
	.4byte	0x810
	.byte	0x48
	.uleb128 0x13
	.string	"tex"
	.byte	0x2
	.2byte	0x139
	.4byte	0x346
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x13b
	.4byte	0x441
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x13d
	.4byte	0xe8
	.byte	0x68
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x13e
	.4byte	0xe8
	.byte	0x69
	.byte	0
	.uleb128 0xa
	.4byte	0x329
	.4byte	0x820
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x13f
	.4byte	0x6e4
	.uleb128 0xd
	.4byte	.LASF113
	.byte	0x4c
	.byte	0x1
	.byte	0xa3
	.4byte	0x8c9
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x1
	.byte	0xa5
	.4byte	0xfd
	.byte	0
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x1
	.byte	0xa6
	.4byte	0x53
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x1
	.byte	0xa8
	.4byte	0x8c9
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x1
	.byte	0xaa
	.4byte	0x35c
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x1
	.byte	0xab
	.4byte	0x35c
	.byte	0x18
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x1
	.byte	0xac
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x1
	.byte	0xae
	.4byte	0x329
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF118
	.byte	0x1
	.byte	0xaf
	.4byte	0x2c4
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x1
	.byte	0xb0
	.4byte	0x329
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x1
	.byte	0xb2
	.4byte	0xe8
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF120
	.byte	0x1
	.byte	0xb3
	.4byte	0xe8
	.byte	0x49
	.uleb128 0x16
	.4byte	.LASF121
	.byte	0x1
	.byte	0xb4
	.4byte	0xe8
	.byte	0x4a
	.byte	0
	.uleb128 0xa
	.4byte	0x1a3
	.4byte	0x8d9
	.uleb128 0xb
	.4byte	0x3e
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0x1
	.byte	0xb5
	.4byte	0x82c
	.uleb128 0xd
	.4byte	.LASF123
	.byte	0x10
	.byte	0x1
	.byte	0xb8
	.4byte	0x921
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x1
	.byte	0xba
	.4byte	0x921
	.byte	0
	.uleb128 0x16
	.4byte	.LASF125
	.byte	0x1
	.byte	0xbb
	.4byte	0x31d
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x1
	.byte	0xbc
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF127
	.byte	0x1
	.byte	0xbd
	.4byte	0x2c
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8d9
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x1
	.byte	0xbe
	.4byte	0x8e4
	.uleb128 0x1a
	.4byte	.LASF129
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.4byte	0x952
	.uleb128 0x1b
	.string	"p1"
	.byte	0x1
	.byte	0x84
	.4byte	0x346
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.byte	0x84
	.4byte	0x31d
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF130
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.4byte	0x972
	.uleb128 0x1b
	.string	"p1"
	.byte	0x1
	.byte	0x91
	.4byte	0x346
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.byte	0x91
	.4byte	0x31d
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x310
	.byte	0x1
	.4byte	0x98c
	.uleb128 0x1d
	.string	"val"
	.byte	0x1
	.2byte	0x310
	.4byte	0x367
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x320
	.byte	0x1
	.4byte	0x9a6
	.uleb128 0x1d
	.string	"val"
	.byte	0x1
	.2byte	0x320
	.4byte	0x367
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x384
	.byte	0x1
	.4byte	0x9ca
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x384
	.4byte	0x3aa
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.2byte	0x384
	.4byte	0x3af
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x394
	.byte	0x1
	.4byte	0x9ee
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x394
	.4byte	0x3aa
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.2byte	0x394
	.4byte	0x3af
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x3e4
	.byte	0x1
	.4byte	0xa12
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x3e4
	.4byte	0x383
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.2byte	0x3e4
	.4byte	0x31d
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x48f
	.byte	0x1
	.4byte	0xa44
	.uleb128 0x1e
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x48f
	.4byte	0x329
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x48f
	.4byte	0x329
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x48f
	.4byte	0x367
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x585
	.4byte	0x921
	.byte	0x1
	.4byte	0xa6e
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x585
	.4byte	0xa6e
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x585
	.4byte	0x351
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x927
	.uleb128 0x20
	.4byte	.LASF312
	.byte	0x2
	.2byte	0x154
	.byte	0x3
	.4byte	0xaa2
	.uleb128 0x1e
	.4byte	.LASF141
	.byte	0x2
	.2byte	0x154
	.4byte	0xaa2
	.uleb128 0x1d
	.string	"n"
	.byte	0x2
	.2byte	0x154
	.4byte	0x2c
	.uleb128 0x21
	.string	"p"
	.byte	0x2
	.2byte	0x156
	.4byte	0xaa8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x53
	.uleb128 0x6
	.byte	0x4
	.4byte	0x31d
	.uleb128 0x1f
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x65f
	.4byte	0x53
	.byte	0x1
	.4byte	0xaee
	.uleb128 0x1d
	.string	"tex"
	.byte	0x1
	.2byte	0x65f
	.4byte	0x921
	.uleb128 0x1e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x65f
	.4byte	0x346
	.uleb128 0x22
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x666
	.4byte	0xfd
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.2byte	0x671
	.4byte	0x53
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x677
	.4byte	0x63
	.byte	0x1
	.4byte	0xb18
	.uleb128 0x1e
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x677
	.4byte	0x329
	.uleb128 0x1e
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x677
	.4byte	0x329
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x65b
	.4byte	0x63
	.byte	0x1
	.4byte	0xb36
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x65b
	.4byte	0x63
	.byte	0
	.uleb128 0x23
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x457
	.4byte	0x367
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5f
	.uleb128 0x24
	.string	"t"
	.byte	0x1
	.2byte	0x457
	.4byte	0x11d
	.4byte	.LLST0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF181
	.byte	0x1
	.byte	0x15
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8f
	.uleb128 0x26
	.4byte	.LASF138
	.byte	0x1
	.byte	0x15
	.4byte	0x329
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF134
	.byte	0x1
	.byte	0x15
	.4byte	0x346
	.uleb128 0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x27
	.4byte	.LASF148
	.byte	0x1
	.byte	0x10
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd4
	.uleb128 0x28
	.4byte	.LASF138
	.byte	0x1
	.byte	0x10
	.4byte	0x329
	.4byte	.LLST1
	.uleb128 0x28
	.4byte	.LASF134
	.byte	0x1
	.byte	0x10
	.4byte	0x367
	.4byte	.LLST2
	.uleb128 0x29
	.4byte	.LVL4
	.4byte	0xb5f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF149
	.byte	0x1
	.byte	0x6e
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc28
	.uleb128 0x28
	.4byte	.LASF138
	.byte	0x1
	.byte	0x6e
	.4byte	0x329
	.4byte	.LLST3
	.uleb128 0x28
	.4byte	.LASF150
	.byte	0x1
	.byte	0x6e
	.4byte	0x393
	.4byte	.LLST4
	.uleb128 0x29
	.4byte	.LVL9
	.4byte	0x2a39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x7f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x500
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x932
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc86
	.uleb128 0x2c
	.4byte	0x93e
	.4byte	.LLST5
	.uleb128 0x2c
	.4byte	0x948
	.4byte	.LLST6
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2c
	.4byte	0x93e
	.4byte	.LLST7
	.uleb128 0x2c
	.4byte	0x948
	.4byte	.LLST8
	.uleb128 0x29
	.4byte	.LVL14
	.4byte	0x2a39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x8c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x500
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x952
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce4
	.uleb128 0x2c
	.4byte	0x95e
	.4byte	.LLST9
	.uleb128 0x2c
	.4byte	0x968
	.4byte	.LLST10
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2c
	.4byte	0x95e
	.4byte	.LLST11
	.uleb128 0x2c
	.4byte	0x968
	.4byte	.LLST12
	.uleb128 0x29
	.4byte	.LVL19
	.4byte	0x2a39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x9c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x500
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF151
	.byte	0x1
	.byte	0xc4
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd62
	.uleb128 0x26
	.4byte	.LASF114
	.byte	0x1
	.byte	0xc4
	.4byte	0xe8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF50
	.byte	0x1
	.byte	0xc4
	.4byte	0x329
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF134
	.byte	0x1
	.byte	0xc4
	.4byte	0x393
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2e
	.string	"r"
	.byte	0x1
	.byte	0xc6
	.4byte	0x346
	.4byte	.LLST13
	.uleb128 0x2e
	.string	"g"
	.byte	0x1
	.byte	0xc6
	.4byte	0x346
	.4byte	.LLST14
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.byte	0xc6
	.4byte	0x346
	.4byte	.LLST13
	.uleb128 0x2e
	.string	"a"
	.byte	0x1
	.byte	0xc6
	.4byte	0x346
	.4byte	.LLST16
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xc6
	.4byte	0x346
	.4byte	.LLST17
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x10c
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdcc
	.uleb128 0x24
	.string	"src"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x329
	.4byte	.LLST18
	.uleb128 0x30
	.string	"op"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x329
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.string	"C"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x31d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x31
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x10c
	.4byte	0xdcc
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x31
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x10c
	.4byte	0xe8
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x31
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x10c
	.4byte	0xe8
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x108
	.uleb128 0x2f
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x139
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe2e
	.uleb128 0x24
	.string	"src"
	.byte	0x1
	.2byte	0x139
	.4byte	0x329
	.4byte	.LLST19
	.uleb128 0x30
	.string	"op"
	.byte	0x1
	.2byte	0x139
	.4byte	0x329
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.string	"C"
	.byte	0x1
	.2byte	0x139
	.4byte	0x31d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x31
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x139
	.4byte	0xdcc
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x31
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x139
	.4byte	0xe8
	.uleb128 0x1
	.byte	0x57
	.byte	0
	.uleb128 0x32
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x154
	.4byte	0xe8
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe57
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x154
	.4byte	0xe8
	.4byte	.LLST20
	.byte	0
	.uleb128 0x32
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x15f
	.4byte	0xe8
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe80
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x15f
	.4byte	0xe8
	.4byte	.LLST21
	.byte	0
	.uleb128 0x32
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x16a
	.4byte	0xe8
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea9
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x16a
	.4byte	0xe8
	.4byte	.LLST22
	.byte	0
	.uleb128 0x32
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x175
	.4byte	0xe8
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed2
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x175
	.4byte	0xe8
	.4byte	.LLST23
	.byte	0
	.uleb128 0x32
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x180
	.4byte	0xe8
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xefb
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x180
	.4byte	0xe8
	.4byte	.LLST24
	.byte	0
	.uleb128 0x32
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x190
	.4byte	0xe8
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf24
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x190
	.4byte	0xe8
	.4byte	.LLST25
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x1a1
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11a3
	.uleb128 0x33
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1a1
	.4byte	0xe8
	.4byte	.LLST26
	.uleb128 0x33
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x323
	.4byte	.LLST27
	.uleb128 0x34
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x1a5
	.4byte	0xe8
	.4byte	.LLST28
	.uleb128 0x34
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x1a6
	.4byte	0xe8
	.4byte	.LLST29
	.uleb128 0x34
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x1ad
	.4byte	0xe8
	.4byte	.LLST30
	.uleb128 0x35
	.string	"Aop"
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xe8
	.4byte	.LLST31
	.uleb128 0x34
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x1af
	.4byte	0xe8
	.4byte	.LLST32
	.uleb128 0x34
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xe8
	.4byte	.LLST33
	.uleb128 0x36
	.string	"C"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.string	"A"
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x11a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x37
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x11a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.string	"Tex"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x108
	.4byte	.LLST34
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x63
	.4byte	.LLST35
	.uleb128 0x34
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x63
	.4byte	.LLST36
	.uleb128 0x34
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x63
	.4byte	.LLST37
	.uleb128 0x34
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x63
	.4byte	.LLST38
	.uleb128 0x38
	.4byte	.LVL71
	.4byte	0xd62
	.4byte	0x1072
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x86
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x84
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x7
	.byte	0x88
	.sleb128 0
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x7
	.byte	0x83
	.sleb128 0
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0
	.uleb128 0x38
	.4byte	.LVL75
	.4byte	0xdd2
	.4byte	0x109c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x86
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x7
	.byte	0x87
	.sleb128 0
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x7
	.byte	0x85
	.sleb128 0
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0
	.uleb128 0x39
	.4byte	.LVL82
	.4byte	0x2a39
	.uleb128 0x38
	.4byte	.LVL86
	.4byte	0x2a54
	.4byte	0x10c3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL88
	.4byte	0x2a54
	.4byte	0x10e1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL90
	.4byte	0x2a54
	.uleb128 0x38
	.4byte	.LVL93
	.4byte	0x2a7a
	.4byte	0x1108
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL94
	.4byte	0x2aa5
	.4byte	0x1126
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL96
	.4byte	0x2aa5
	.4byte	0x1144
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL98
	.4byte	0x2aa5
	.uleb128 0x38
	.4byte	.LVL101
	.4byte	0x2acb
	.4byte	0x116b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL103
	.4byte	0xefb
	.4byte	0x117f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL104
	.4byte	0xed2
	.4byte	0x1193
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL105
	.4byte	0x2af6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x108
	.4byte	0x11b3
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x2
	.byte	0
	.uleb128 0x2b
	.4byte	0x972
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11e2
	.uleb128 0x3b
	.4byte	0x97f
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x3c
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x2c
	.4byte	0x97f
	.4byte	.LLST39
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x98c
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1211
	.uleb128 0x3b
	.4byte	0x999
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x3c
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x2c
	.4byte	0x999
	.4byte	.LLST40
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x9a6
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1270
	.uleb128 0x2c
	.4byte	0x9b3
	.4byte	.LLST41
	.uleb128 0x2c
	.4byte	0x9bf
	.4byte	.LLST42
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x2c
	.4byte	0x9b3
	.4byte	.LLST43
	.uleb128 0x2c
	.4byte	0x9bf
	.4byte	.LLST44
	.uleb128 0x29
	.4byte	.LVL117
	.4byte	0x2a39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x390
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x500
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x9ca
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12cf
	.uleb128 0x2c
	.4byte	0x9d7
	.4byte	.LLST45
	.uleb128 0x2c
	.4byte	0x9e3
	.4byte	.LLST46
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x2c
	.4byte	0x9e3
	.4byte	.LLST47
	.uleb128 0x2c
	.4byte	0x9d7
	.4byte	.LLST48
	.uleb128 0x29
	.4byte	.LVL122
	.4byte	0x2a39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3a3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x500
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x3a7
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1325
	.uleb128 0x33
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x3aa
	.4byte	.LLST49
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x3af
	.4byte	.LLST50
	.uleb128 0x29
	.4byte	.LVL126
	.4byte	0x2a39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3b1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x500
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x3b5
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x137b
	.uleb128 0x33
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x3b5
	.4byte	0x3aa
	.4byte	.LLST51
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.2byte	0x3b5
	.4byte	0x3af
	.4byte	.LLST52
	.uleb128 0x29
	.4byte	.LVL130
	.4byte	0x2a39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3bd
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x500
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x3c1
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13d1
	.uleb128 0x33
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x3c1
	.4byte	0x3aa
	.4byte	.LLST53
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.2byte	0x3c1
	.4byte	0x3af
	.4byte	.LLST54
	.uleb128 0x29
	.4byte	.LVL134
	.4byte	0x2a39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3cf
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x500
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x3d3
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1427
	.uleb128 0x33
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x3d3
	.4byte	0x3aa
	.4byte	.LLST55
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.2byte	0x3d3
	.4byte	0x3af
	.4byte	.LLST56
	.uleb128 0x29
	.4byte	.LVL138
	.4byte	0x2a39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3df
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x500
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	0x9ee
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x145a
	.uleb128 0x3b
	.4byte	0x9fb
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x3f
	.uleb128 0x3b
	.4byte	0xa07
	.uleb128 0x1
	.byte	0x6f
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x3e
	.4byte	0x9fb
	.uleb128 0x3e
	.4byte	0xa07
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x3f5
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14f1
	.uleb128 0x33
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x3f5
	.4byte	0x329
	.4byte	.LLST57
	.uleb128 0x33
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x3f5
	.4byte	0x367
	.4byte	.LLST58
	.uleb128 0x3f
	.4byte	.LVL147
	.4byte	0x9a6
	.uleb128 0x3f
	.4byte	.LVL151
	.4byte	0x137b
	.uleb128 0x3f
	.4byte	.LVL155
	.4byte	0x13d1
	.uleb128 0x3f
	.4byte	.LVL163
	.4byte	0x9ca
	.uleb128 0x3f
	.4byte	.LVL191
	.4byte	0x12cf
	.uleb128 0x3f
	.4byte	.LVL203
	.4byte	0x1325
	.uleb128 0x3f
	.4byte	.LVL204
	.4byte	0x9ee
	.uleb128 0x29
	.4byte	.LVL206
	.4byte	0x2a39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x40b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x500
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x410
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1588
	.uleb128 0x33
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x410
	.4byte	0x329
	.4byte	.LLST59
	.uleb128 0x33
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x410
	.4byte	0x346
	.4byte	.LLST60
	.uleb128 0x3f
	.4byte	.LVL223
	.4byte	0x9a6
	.uleb128 0x3f
	.4byte	.LVL225
	.4byte	0x137b
	.uleb128 0x3f
	.4byte	.LVL227
	.4byte	0x13d1
	.uleb128 0x3f
	.4byte	.LVL231
	.4byte	0x9ca
	.uleb128 0x3f
	.4byte	.LVL239
	.4byte	0x12cf
	.uleb128 0x3f
	.4byte	.LVL243
	.4byte	0x1325
	.uleb128 0x3f
	.4byte	.LVL244
	.4byte	0x9ee
	.uleb128 0x29
	.4byte	.LVL246
	.4byte	0x2a39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x426
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x500
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0xa12
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15fe
	.uleb128 0x2c
	.4byte	0xa1f
	.4byte	.LLST61
	.uleb128 0x2c
	.4byte	0xa2b
	.4byte	.LLST62
	.uleb128 0x2c
	.4byte	0xa37
	.4byte	.LLST63
	.uleb128 0x40
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.4byte	0x15df
	.uleb128 0x2c
	.4byte	0xa1f
	.4byte	.LLST64
	.uleb128 0x2c
	.4byte	0xa2b
	.4byte	.LLST65
	.uleb128 0x2c
	.4byte	0xa37
	.4byte	.LLST66
	.byte	0
	.uleb128 0x41
	.4byte	.LVL258
	.4byte	0x14f1
	.4byte	0x15f4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3f
	.4byte	.LVL262
	.4byte	0x2a39
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x42b
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1657
	.uleb128 0x33
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x42b
	.4byte	0x329
	.4byte	.LLST67
	.uleb128 0x33
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x42b
	.4byte	0x329
	.4byte	.LLST68
	.uleb128 0x33
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x42b
	.4byte	0x37d
	.4byte	.LLST69
	.uleb128 0x3f
	.4byte	.LVL272
	.4byte	0xa12
	.uleb128 0x3f
	.4byte	.LVL280
	.4byte	0x2a39
	.byte	0
	.uleb128 0x42
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x463
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1698
	.uleb128 0x31
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x463
	.4byte	0x329
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x31
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x463
	.4byte	0x329
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x31
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x463
	.4byte	0x388
	.uleb128 0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x4a8
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1704
	.uleb128 0x33
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x4a8
	.4byte	0x329
	.4byte	.LLST70
	.uleb128 0x33
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x4a8
	.4byte	0x329
	.4byte	.LLST71
	.uleb128 0x33
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x4a8
	.4byte	0x346
	.4byte	.LLST72
	.uleb128 0x41
	.4byte	.LVL294
	.4byte	0x14f1
	.4byte	0x16fa
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3f
	.4byte	.LVL298
	.4byte	0x2a39
	.byte	0
	.uleb128 0x32
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x4ff
	.4byte	0x1a3
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x179f
	.uleb128 0x33
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x4ff
	.4byte	0xa6e
	.4byte	.LLST73
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.2byte	0x4ff
	.4byte	0x2c
	.4byte	.LLST74
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.2byte	0x501
	.4byte	0x2c
	.4byte	.LLST75
	.uleb128 0x34
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x524
	.4byte	0x921
	.4byte	.LLST76
	.uleb128 0x34
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x52b
	.4byte	0x31d
	.4byte	.LLST77
	.uleb128 0x38
	.4byte	.LVL307
	.4byte	0x2b17
	.4byte	0x1781
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x8
	.byte	0x4c
	.byte	0x1e
	.byte	0
	.uleb128 0x38
	.4byte	.LVL311
	.4byte	0x2b17
	.4byte	0x1795
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL313
	.4byte	0x2a39
	.byte	0
	.uleb128 0x43
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x4c5
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x182f
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.2byte	0x4cc
	.4byte	0x2c
	.4byte	.LLST78
	.uleb128 0x35
	.string	"j"
	.byte	0x1
	.2byte	0x4cd
	.4byte	0x2c
	.4byte	.LLST79
	.uleb128 0x38
	.4byte	.LVL319
	.4byte	0x2b31
	.4byte	0x17f0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x89
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL320
	.4byte	0x1704
	.4byte	0x180b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfa0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL323
	.4byte	0x2b31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.byte	0x8d
	.sleb128 0
	.byte	0x8
	.byte	0x6c
	.byte	0x1e
	.byte	0x85
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x542
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1897
	.uleb128 0x33
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x542
	.4byte	0xa6e
	.4byte	.LLST80
	.uleb128 0x33
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x542
	.4byte	0x351
	.4byte	.LLST81
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.2byte	0x544
	.4byte	0x2c
	.4byte	.LLST82
	.uleb128 0x35
	.string	"j"
	.byte	0x1
	.2byte	0x552
	.4byte	0x63
	.4byte	.LLST83
	.uleb128 0x3a
	.4byte	.LVL337
	.4byte	0x2b31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x4c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x55b
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1901
	.uleb128 0x33
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x55b
	.4byte	0xa6e
	.4byte	.LLST84
	.uleb128 0x33
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x55b
	.4byte	0x351
	.4byte	.LLST85
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.2byte	0x55d
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x6d
	.uleb128 0x35
	.string	"tex"
	.byte	0x1
	.2byte	0x562
	.4byte	0x921
	.4byte	.LLST86
	.uleb128 0x35
	.string	"j"
	.byte	0x1
	.2byte	0x56e
	.4byte	0x63
	.4byte	.LLST87
	.uleb128 0x39
	.4byte	.LVL347
	.4byte	0x2b4e
	.byte	0
	.uleb128 0x32
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x57a
	.4byte	0xe8
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x193c
	.uleb128 0x33
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x57a
	.4byte	0xa6e
	.4byte	.LLST88
	.uleb128 0x33
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x57a
	.4byte	0x351
	.4byte	.LLST89
	.byte	0
	.uleb128 0x2b
	.4byte	0xa44
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1962
	.uleb128 0x2c
	.4byte	0xa55
	.4byte	.LLST90
	.uleb128 0x2c
	.4byte	0xa61
	.4byte	.LLST91
	.byte	0
	.uleb128 0x32
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x58a
	.4byte	0x921
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19a3
	.uleb128 0x33
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x58a
	.4byte	0xa6e
	.4byte	.LLST92
	.uleb128 0x3a
	.4byte	.LVL361
	.4byte	0x1901
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF192
	.byte	0x1
	.byte	0xdf
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19ed
	.uleb128 0x26
	.4byte	.LASF117
	.byte	0x1
	.byte	0xdf
	.4byte	0x329
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF116
	.byte	0x1
	.byte	0xdf
	.4byte	0x346
	.uleb128 0x1
	.byte	0x6e
	.uleb128 0x26
	.4byte	.LASF138
	.byte	0x1
	.byte	0xe0
	.4byte	0x329
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x26
	.4byte	.LASF150
	.byte	0x1
	.byte	0xe0
	.4byte	0x393
	.uleb128 0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x42
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x287
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a4a
	.uleb128 0x31
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x287
	.4byte	0xe8
	.uleb128 0x1
	.byte	0x6f
	.uleb128 0x31
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x287
	.4byte	0x323
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x37
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x292
	.4byte	0xe8
	.uleb128 0x1
	.byte	0x6e
	.uleb128 0x37
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x293
	.4byte	0xe8
	.uleb128 0x1
	.byte	0x6c
	.uleb128 0x36
	.string	"tex"
	.byte	0x1
	.2byte	0x29a
	.4byte	0x921
	.uleb128 0x1
	.byte	0x6d
	.byte	0
	.uleb128 0x42
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x330
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a8b
	.uleb128 0x31
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x330
	.4byte	0x329
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x330
	.4byte	0x329
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x330
	.4byte	0x346
	.uleb128 0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x42
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x34e
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1acd
	.uleb128 0x31
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x34e
	.4byte	0x329
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x34e
	.4byte	0x329
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x31
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x34e
	.4byte	0x367
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x3f
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x369
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b26
	.uleb128 0x33
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x369
	.4byte	0x329
	.4byte	.LLST93
	.uleb128 0x33
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x369
	.4byte	0x329
	.4byte	.LLST94
	.uleb128 0x33
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x369
	.4byte	0x37d
	.4byte	.LLST95
	.uleb128 0x3f
	.4byte	.LVL367
	.4byte	0x1a8b
	.uleb128 0x3f
	.4byte	.LVL371
	.4byte	0x2a39
	.byte	0
	.uleb128 0x32
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x593
	.4byte	0x351
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b8c
	.uleb128 0x33
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x593
	.4byte	0xa6e
	.4byte	.LLST96
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.2byte	0x595
	.4byte	0x2c
	.4byte	.LLST97
	.uleb128 0x38
	.4byte	.LVL375
	.4byte	0x182f
	.4byte	0x1b79
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL377
	.4byte	0x1704
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x8f
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x5ab
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bde
	.uleb128 0x30
	.string	"n"
	.byte	0x1
	.2byte	0x5ab
	.4byte	0x35c
	.uleb128 0x1
	.byte	0x6e
	.uleb128 0x30
	.string	"tex"
	.byte	0x1
	.2byte	0x5ab
	.4byte	0x3a4
	.uleb128 0x1
	.byte	0x6c
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.2byte	0x5b5
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x6f
	.uleb128 0x3c
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.uleb128 0x21
	.string	"nt"
	.byte	0x1
	.2byte	0x5ba
	.4byte	0x351
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x5c0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c11
	.uleb128 0x31
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x5c0
	.4byte	0x329
	.uleb128 0x1
	.byte	0x6d
	.uleb128 0x31
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x5c0
	.4byte	0x351
	.uleb128 0x1
	.byte	0x6e
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x5cb
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c36
	.uleb128 0x30
	.string	"val"
	.byte	0x1
	.2byte	0x5cb
	.4byte	0x1a3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x32
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x5cf
	.4byte	0x1a3
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c61
	.uleb128 0x24
	.string	"tex"
	.byte	0x1
	.2byte	0x5cf
	.4byte	0x63
	.4byte	.LLST98
	.byte	0
	.uleb128 0x32
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x5d4
	.4byte	0xe8
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d72
	.uleb128 0x33
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x5d4
	.4byte	0xe8
	.4byte	.LLST99
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.2byte	0x5d6
	.4byte	0x63
	.4byte	.LLST100
	.uleb128 0x36
	.string	"inc"
	.byte	0x1
	.2byte	0x5d7
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x5d8
	.4byte	0x63
	.4byte	.LLST101
	.uleb128 0x40
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.4byte	0x1d61
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.2byte	0x5e5
	.4byte	0x921
	.uleb128 0x44
	.4byte	0xa44
	.4byte	.LBB65
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.2byte	0x5e5
	.4byte	0x1cf6
	.uleb128 0x2c
	.4byte	0xa61
	.4byte	.LLST102
	.uleb128 0x2c
	.4byte	0xa55
	.4byte	.LLST103
	.byte	0
	.uleb128 0x40
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.4byte	0x1d22
	.uleb128 0x35
	.string	"j"
	.byte	0x1
	.2byte	0x5f6
	.4byte	0x63
	.4byte	.LLST104
	.uleb128 0x34
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x5f7
	.4byte	0x63
	.4byte	.LLST105
	.byte	0
	.uleb128 0x38
	.4byte	.LVL391
	.4byte	0xed2
	.4byte	0x1d36
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL392
	.4byte	0x2b65
	.4byte	0x1d4a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 36
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL393
	.4byte	0x19ed
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL397
	.4byte	0x2b7c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8b
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x615
	.4byte	0xfd
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dab
	.uleb128 0x33
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x615
	.4byte	0x346
	.4byte	.LLST106
	.uleb128 0x31
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x615
	.4byte	0x1dab
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x63
	.uleb128 0x32
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x64b
	.4byte	0x53
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e73
	.uleb128 0x33
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x64b
	.4byte	0xfd
	.4byte	.LLST107
	.uleb128 0x33
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x64b
	.4byte	0x35c
	.4byte	.LLST108
	.uleb128 0x33
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x64b
	.4byte	0x35c
	.4byte	.LLST109
	.uleb128 0x33
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x64b
	.4byte	0x1e73
	.4byte	.LLST110
	.uleb128 0x33
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x64b
	.4byte	0xe8
	.4byte	.LLST111
	.uleb128 0x35
	.string	"ptr"
	.byte	0x1
	.2byte	0x64f
	.4byte	0x53
	.4byte	.LLST112
	.uleb128 0x38
	.4byte	.LVL405
	.4byte	0x2b8e
	.4byte	0x1e53
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x39
	.4byte	.LVL406
	.4byte	0x2bb8
	.uleb128 0x3a
	.4byte	.LVL407
	.4byte	0x2bce
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x7f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x2b
	.4byte	0xb18
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e96
	.uleb128 0x2c
	.4byte	0xb29
	.4byte	.LLST113
	.byte	0
	.uleb128 0x2b
	.4byte	0xaae
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f41
	.uleb128 0x2c
	.4byte	0xabf
	.4byte	.LLST114
	.uleb128 0x2c
	.4byte	0xacb
	.4byte	.LLST115
	.uleb128 0x45
	.4byte	0xad7
	.uleb128 0x45
	.4byte	0xae3
	.uleb128 0x3c
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.uleb128 0x2c
	.4byte	0xacb
	.4byte	.LLST116
	.uleb128 0x2c
	.4byte	0xabf
	.4byte	.LLST117
	.uleb128 0x3c
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.uleb128 0x46
	.4byte	0xad7
	.4byte	.LLST118
	.uleb128 0x46
	.4byte	0xae3
	.4byte	.LLST119
	.uleb128 0x47
	.4byte	0xa74
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.byte	0x1
	.2byte	0x672
	.4byte	0x1f35
	.uleb128 0x2c
	.4byte	0xa8d
	.4byte	.LLST120
	.uleb128 0x2c
	.4byte	0xa81
	.4byte	.LLST121
	.uleb128 0x3c
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.uleb128 0x46
	.4byte	0xa97
	.4byte	.LLST121
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL416
	.4byte	0x2b8e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0xaee
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f90
	.uleb128 0x2c
	.4byte	0xaff
	.4byte	.LLST123
	.uleb128 0x2c
	.4byte	0xb0b
	.4byte	.LLST124
	.uleb128 0x40
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.4byte	0x1f86
	.uleb128 0x2c
	.4byte	0xaff
	.4byte	.LLST125
	.uleb128 0x2c
	.4byte	0xb0b
	.4byte	.LLST126
	.byte	0
	.uleb128 0x39
	.4byte	.LVL431
	.4byte	0x2a39
	.byte	0
	.uleb128 0x42
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x6c1
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x206e
	.uleb128 0x31
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x6c1
	.4byte	0x329
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x6c1
	.4byte	0x346
	.uleb128 0x1
	.byte	0x6e
	.uleb128 0x31
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x6c2
	.4byte	0x346
	.uleb128 0x1
	.byte	0x6c
	.uleb128 0x31
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x6c2
	.4byte	0x346
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x31
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x6c3
	.4byte	0x35c
	.uleb128 0x1
	.byte	0x69
	.uleb128 0x31
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x6c3
	.4byte	0x35c
	.uleb128 0x1
	.byte	0x6a
	.uleb128 0x31
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x6c4
	.4byte	0x329
	.uleb128 0x1
	.byte	0x6d
	.uleb128 0x31
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x6c4
	.4byte	0x329
	.uleb128 0x1
	.byte	0x6b
	.uleb128 0x31
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x6c5
	.4byte	0x372
	.uleb128 0x1
	.byte	0x67
	.uleb128 0x22
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x6de
	.4byte	0x63
	.uleb128 0x36
	.string	"tex"
	.byte	0x1
	.2byte	0x6e5
	.4byte	0x921
	.uleb128 0x1
	.byte	0x6f
	.uleb128 0x21
	.string	"b"
	.byte	0x1
	.2byte	0x6ed
	.4byte	0x367
	.uleb128 0x36
	.string	"w"
	.byte	0x1
	.2byte	0x6ee
	.4byte	0x367
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x2c
	.uleb128 0x21
	.string	"h"
	.byte	0x1
	.2byte	0x6ef
	.4byte	0x367
	.uleb128 0x37
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x706
	.4byte	0x53
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x72d
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x239c
	.uleb128 0x33
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x72d
	.4byte	0x329
	.4byte	.LLST127
	.uleb128 0x33
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x72d
	.4byte	0x346
	.4byte	.LLST128
	.uleb128 0x33
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x72e
	.4byte	0x346
	.4byte	.LLST129
	.uleb128 0x33
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x72f
	.4byte	0x35c
	.4byte	.LLST130
	.uleb128 0x33
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x72f
	.4byte	0x35c
	.4byte	.LLST131
	.uleb128 0x33
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x730
	.4byte	0x346
	.4byte	.LLST132
	.uleb128 0x33
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x730
	.4byte	0x329
	.4byte	.LLST133
	.uleb128 0x33
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x730
	.4byte	0x329
	.4byte	.LLST134
	.uleb128 0x33
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x731
	.4byte	0x372
	.4byte	.LLST135
	.uleb128 0x34
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x737
	.4byte	0x1a3
	.4byte	.LLST136
	.uleb128 0x37
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x764
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x76b
	.4byte	0xfd
	.4byte	.LLST137
	.uleb128 0x37
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x775
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"tex"
	.byte	0x1
	.2byte	0x777
	.4byte	0x921
	.4byte	.LLST138
	.uleb128 0x34
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x779
	.4byte	0x35c
	.4byte	.LLST139
	.uleb128 0x34
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x77a
	.4byte	0x35c
	.4byte	.LLST140
	.uleb128 0x34
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x77f
	.4byte	0x1a3
	.4byte	.LLST141
	.uleb128 0x34
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x782
	.4byte	0x1a3
	.4byte	.LLST142
	.uleb128 0x47
	.4byte	0xb18
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.byte	0x1
	.2byte	0x737
	.4byte	0x21c0
	.uleb128 0x2c
	.4byte	0xb29
	.4byte	.LLST143
	.byte	0
	.uleb128 0x47
	.4byte	0xb18
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.byte	0x1
	.2byte	0x737
	.4byte	0x21de
	.uleb128 0x2c
	.4byte	0xb29
	.4byte	.LLST144
	.byte	0
	.uleb128 0x40
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.4byte	0x2205
	.uleb128 0x35
	.string	"tex"
	.byte	0x1
	.2byte	0x73d
	.4byte	0x921
	.4byte	.LLST145
	.uleb128 0x39
	.4byte	.LVL446
	.4byte	0x1962
	.byte	0
	.uleb128 0x40
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.4byte	0x222c
	.uleb128 0x35
	.string	"tex"
	.byte	0x1
	.2byte	0x743
	.4byte	0x921
	.4byte	.LLST146
	.uleb128 0x39
	.4byte	.LVL448
	.4byte	0x1962
	.byte	0
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0x90
	.4byte	0x2292
	.uleb128 0x35
	.string	"j"
	.byte	0x1
	.2byte	0x792
	.4byte	0x63
	.4byte	.LLST147
	.uleb128 0x40
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.4byte	0x2261
	.uleb128 0x34
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x7ac
	.4byte	0x63
	.4byte	.LLST148
	.byte	0
	.uleb128 0x39
	.4byte	.LVL487
	.4byte	0x2b4e
	.uleb128 0x3a
	.4byte	.LVL491
	.4byte	0x1db1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.4byte	0x234b
	.uleb128 0x34
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x7c2
	.4byte	0x53
	.4byte	.LLST149
	.uleb128 0x38
	.4byte	.LVL497
	.4byte	0xaae
	.4byte	0x22c9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL501
	.4byte	0x2bed
	.4byte	0x2314
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x87
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x86
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x89
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL504
	.4byte	0x2c31
	.4byte	0x232d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL505
	.4byte	0x2c66
	.4byte	0x2341
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL506
	.4byte	0x2ca0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL455
	.4byte	0x2a39
	.uleb128 0x38
	.4byte	.LVL471
	.4byte	0xaee
	.4byte	0x236e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x89
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x87
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL472
	.4byte	0x1d72
	.4byte	0x2388
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL477
	.4byte	0x1962
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	texMan
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x715
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x247c
	.uleb128 0x33
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x715
	.4byte	0x329
	.4byte	.LLST150
	.uleb128 0x33
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x716
	.4byte	0x346
	.4byte	.LLST151
	.uleb128 0x33
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x717
	.4byte	0x346
	.4byte	.LLST152
	.uleb128 0x33
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x718
	.4byte	0x35c
	.4byte	.LLST153
	.uleb128 0x33
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x719
	.4byte	0x346
	.4byte	.LLST154
	.uleb128 0x33
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x71a
	.4byte	0x329
	.4byte	.LLST155
	.uleb128 0x33
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x71b
	.4byte	0x329
	.4byte	.LLST156
	.uleb128 0x33
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x71c
	.4byte	0x372
	.4byte	.LLST157
	.uleb128 0x41
	.4byte	.LVL515
	.4byte	0x2a39
	.4byte	0x2457
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x71e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL521
	.4byte	0x206e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x7d4
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24b9
	.uleb128 0x30
	.string	"n"
	.byte	0x1
	.2byte	0x7d4
	.4byte	0x35c
	.uleb128 0x1
	.byte	0x6e
	.uleb128 0x31
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x7d4
	.4byte	0x399
	.uleb128 0x1
	.byte	0x6d
	.uleb128 0x36
	.string	"i"
	.byte	0x1
	.2byte	0x7d8
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x32
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x7ec
	.4byte	0x334
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2523
	.uleb128 0x33
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x7ec
	.4byte	0x351
	.4byte	.LLST158
	.uleb128 0x41
	.4byte	.LVL524
	.4byte	0x1901
	.4byte	0x2501
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	texMan
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL526
	.4byte	0x2a39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7ed
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF228
	.byte	0x7
	.2byte	0x548
	.4byte	0x252f
	.uleb128 0x7
	.4byte	0x2534
	.uleb128 0x6
	.byte	0x4
	.4byte	0x257
	.uleb128 0x4a
	.4byte	.LASF229
	.byte	0x2
	.byte	0x3c
	.4byte	0x441
	.uleb128 0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x4a
	.4byte	.LASF230
	.byte	0x2
	.byte	0x3d
	.4byte	0x3b5
	.uleb128 0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xa
	.4byte	0x405
	.4byte	0x256c
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x7
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF231
	.byte	0x2
	.byte	0x3e
	.4byte	0x255c
	.uleb128 0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x4a
	.4byte	.LASF232
	.byte	0x2
	.byte	0x4a
	.4byte	0x493
	.uleb128 0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x4a
	.4byte	.LASF233
	.byte	0x2
	.byte	0x4b
	.4byte	0x493
	.uleb128 0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xa
	.4byte	0x493
	.4byte	0x25af
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x7
	.byte	0
	.uleb128 0x4b
	.string	"tex"
	.byte	0x2
	.byte	0x4c
	.4byte	0x259f
	.uleb128 0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x4a
	.4byte	.LASF109
	.byte	0x2
	.byte	0x4d
	.4byte	0x493
	.uleb128 0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xa
	.4byte	0x3b5
	.4byte	0x25e2
	.uleb128 0x4c
	.4byte	0x3e
	.2byte	0x3e7
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF234
	.byte	0x2
	.byte	0x4f
	.4byte	0x25d1
	.uleb128 0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x4a
	.4byte	.LASF235
	.byte	0x2
	.byte	0x50
	.4byte	0x25d1
	.uleb128 0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xa
	.4byte	0x405
	.4byte	0x261b
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x7
	.uleb128 0x4c
	.4byte	0x3e
	.2byte	0x3e7
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF236
	.byte	0x2
	.byte	0x51
	.4byte	0x2604
	.uleb128 0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xa
	.4byte	0x441
	.4byte	0x263d
	.uleb128 0x4c
	.4byte	0x3e
	.2byte	0x3e7
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF237
	.byte	0x2
	.byte	0x52
	.4byte	0x262c
	.uleb128 0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x4a
	.4byte	.LASF238
	.byte	0x2
	.byte	0x5c
	.4byte	0x63
	.uleb128 0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x4a
	.4byte	.LASF239
	.byte	0x2
	.byte	0x5d
	.4byte	0x63
	.uleb128 0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x4a
	.4byte	.LASF240
	.byte	0x2
	.byte	0x5e
	.4byte	0x329
	.uleb128 0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x4a
	.4byte	.LASF241
	.byte	0x2
	.byte	0x60
	.4byte	0x63
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x4a
	.4byte	.LASF242
	.byte	0x2
	.byte	0x61
	.4byte	0x63
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x4a
	.4byte	.LASF243
	.byte	0x2
	.byte	0x65
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x4a
	.4byte	.LASF244
	.byte	0x2
	.byte	0x66
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x4a
	.4byte	.LASF245
	.byte	0x2
	.byte	0x67
	.4byte	0x329
	.uleb128 0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x4a
	.4byte	.LASF246
	.byte	0x2
	.byte	0x68
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x4a
	.4byte	.LASF247
	.byte	0x2
	.byte	0x74
	.4byte	0x4db
	.uleb128 0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x4a
	.4byte	.LASF248
	.byte	0x2
	.byte	0x75
	.4byte	0x4db
	.uleb128 0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xa
	.4byte	0x4db
	.4byte	0x2719
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x7
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF249
	.byte	0x2
	.byte	0x76
	.4byte	0x2709
	.uleb128 0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x4a
	.4byte	.LASF250
	.byte	0x2
	.byte	0x77
	.4byte	0x273b
	.uleb128 0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4db
	.uleb128 0x4a
	.4byte	.LASF251
	.byte	0x2
	.byte	0x78
	.4byte	0x329
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xa
	.4byte	0x583
	.4byte	0x2762
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x7
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF252
	.byte	0x2
	.byte	0x93
	.4byte	0x2752
	.uleb128 0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x4a
	.4byte	.LASF253
	.byte	0x2
	.byte	0x96
	.4byte	0x441
	.uleb128 0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x4a
	.4byte	.LASF254
	.byte	0x2
	.byte	0xa3
	.4byte	0x5d7
	.uleb128 0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x4a
	.4byte	.LASF255
	.byte	0x2
	.byte	0xa6
	.4byte	0x1a3
	.uleb128 0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x4a
	.4byte	.LASF256
	.byte	0x2
	.byte	0xa7
	.4byte	0x329
	.uleb128 0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x4a
	.4byte	.LASF257
	.byte	0x2
	.byte	0xab
	.4byte	0x1a3
	.uleb128 0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x4a
	.4byte	.LASF258
	.byte	0x2
	.byte	0xb2
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x4a
	.4byte	.LASF259
	.byte	0x2
	.byte	0xb3
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x4a
	.4byte	.LASF260
	.byte	0x2
	.byte	0xb4
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x4a
	.4byte	.LASF261
	.byte	0x2
	.byte	0xb5
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x4a
	.4byte	.LASF262
	.byte	0x2
	.byte	0xb7
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x4a
	.4byte	.LASF263
	.byte	0x2
	.byte	0xc0
	.4byte	0x601
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x4a
	.4byte	.LASF264
	.byte	0x2
	.byte	0xea
	.4byte	0x63
	.uleb128 0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x4a
	.4byte	.LASF265
	.byte	0x2
	.byte	0xeb
	.4byte	0x63
	.uleb128 0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x4a
	.4byte	.LASF266
	.byte	0x2
	.byte	0xec
	.4byte	0x334
	.uleb128 0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x4a
	.4byte	.LASF267
	.byte	0x2
	.byte	0xed
	.4byte	0x645
	.uleb128 0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x4a
	.4byte	.LASF268
	.byte	0x2
	.byte	0xee
	.4byte	0x645
	.uleb128 0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x4a
	.4byte	.LASF269
	.byte	0x2
	.byte	0xef
	.4byte	0x188
	.uleb128 0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x4a
	.4byte	.LASF270
	.byte	0x2
	.byte	0xf0
	.4byte	0x188
	.uleb128 0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x4a
	.4byte	.LASF271
	.byte	0x2
	.byte	0xf2
	.4byte	0x188
	.uleb128 0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x4a
	.4byte	.LASF272
	.byte	0x2
	.byte	0xf3
	.4byte	0x188
	.uleb128 0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x4a
	.4byte	.LASF273
	.byte	0x2
	.byte	0xff
	.4byte	0x6a5
	.uleb128 0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x4d
	.4byte	.LASF274
	.byte	0x2
	.2byte	0x100
	.4byte	0x6a5
	.uleb128 0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xa
	.4byte	0x1a3
	.4byte	0x28fa
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x3
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF275
	.byte	0x2
	.2byte	0x101
	.4byte	0x28ea
	.uleb128 0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x4d
	.4byte	.LASF276
	.byte	0x2
	.2byte	0x107
	.4byte	0x1a3
	.uleb128 0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x4d
	.4byte	.LASF277
	.byte	0x2
	.2byte	0x108
	.4byte	0x329
	.uleb128 0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x4d
	.4byte	.LASF278
	.byte	0x2
	.2byte	0x10b
	.4byte	0x29d
	.uleb128 0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xa
	.4byte	0x6d8
	.4byte	0x2952
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x3
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF279
	.byte	0x2
	.2byte	0x11e
	.4byte	0x2942
	.uleb128 0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x4d
	.4byte	.LASF280
	.byte	0x2
	.2byte	0x143
	.4byte	0x1a3
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x4d
	.4byte	.LASF281
	.byte	0x2
	.2byte	0x144
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x4d
	.4byte	.LASF282
	.byte	0x2
	.2byte	0x145
	.4byte	0x188
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x4d
	.4byte	.LASF283
	.byte	0x2
	.2byte	0x146
	.4byte	0x188
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x4d
	.4byte	.LASF284
	.byte	0x2
	.2byte	0x147
	.4byte	0x188
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x4d
	.4byte	.LASF285
	.byte	0x2
	.2byte	0x148
	.4byte	0x29d
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xa
	.4byte	0x820
	.4byte	0x29e0
	.uleb128 0xb
	.4byte	0x3e
	.byte	0x7
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF286
	.byte	0x2
	.2byte	0x14a
	.4byte	0x29d0
	.uleb128 0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x4d
	.4byte	.LASF287
	.byte	0x2
	.2byte	0x14f
	.4byte	0x329
	.uleb128 0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x4d
	.4byte	.LASF288
	.byte	0x2
	.2byte	0x152
	.4byte	0x351
	.uleb128 0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x4a
	.4byte	.LASF139
	.byte	0x1
	.byte	0xc2
	.4byte	0x927
	.uleb128 0x5
	.byte	0x3
	.4byte	texMan
	.uleb128 0x4d
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x367
	.4byte	0x441
	.uleb128 0x5
	.byte	0x3
	.4byte	border_color
	.uleb128 0x4e
	.4byte	.LASF290
	.byte	0x2
	.byte	0xc7
	.4byte	0x2a54
	.uleb128 0x4f
	.4byte	0x329
	.uleb128 0x4f
	.4byte	0x86
	.uleb128 0x4f
	.4byte	0x63
	.byte	0
	.uleb128 0x50
	.4byte	.LASF291
	.byte	0x7
	.2byte	0xa18
	.4byte	0x2a7a
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.byte	0
	.uleb128 0x50
	.4byte	.LASF292
	.byte	0x7
	.2byte	0xa42
	.4byte	0x2aa5
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.byte	0
	.uleb128 0x50
	.4byte	.LASF293
	.byte	0x7
	.2byte	0xa2a
	.4byte	0x2acb
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.byte	0
	.uleb128 0x50
	.4byte	.LASF294
	.byte	0x7
	.2byte	0xa5a
	.4byte	0x2af6
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.byte	0
	.uleb128 0x50
	.4byte	.LASF295
	.byte	0x7
	.2byte	0xbd1
	.4byte	0x2b17
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xfd
	.uleb128 0x4f
	.4byte	0xe8
	.byte	0
	.uleb128 0x51
	.4byte	.LASF296
	.byte	0xa
	.byte	0x35
	.4byte	0x53
	.4byte	0x2b31
	.uleb128 0x4f
	.4byte	0x53
	.uleb128 0x4f
	.4byte	0x2c
	.byte	0
	.uleb128 0x52
	.4byte	.LASF297
	.4byte	0x53
	.4byte	0x2b4e
	.uleb128 0x4f
	.4byte	0x53
	.uleb128 0x4f
	.4byte	0x63
	.uleb128 0x4f
	.4byte	0x3e
	.byte	0
	.uleb128 0x50
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x15f
	.4byte	0x2b65
	.uleb128 0x4f
	.4byte	0x53
	.uleb128 0x4f
	.4byte	0x2c
	.byte	0
	.uleb128 0x50
	.4byte	.LASF299
	.byte	0x7
	.2byte	0x1125
	.4byte	0x2b7c
	.uleb128 0x4f
	.4byte	0x307
	.uleb128 0x4f
	.4byte	0xe8
	.byte	0
	.uleb128 0x50
	.4byte	.LASF300
	.byte	0x7
	.2byte	0xa6a
	.4byte	0x2b8e
	.uleb128 0x4f
	.4byte	0xfd
	.byte	0
	.uleb128 0x53
	.4byte	.LASF301
	.byte	0x7
	.2byte	0xffc
	.4byte	0xfd
	.4byte	0x2bb8
	.uleb128 0x4f
	.4byte	0xf2
	.uleb128 0x4f
	.4byte	0xf2
	.uleb128 0x4f
	.4byte	0xfd
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.byte	0
	.uleb128 0x53
	.4byte	.LASF302
	.byte	0x2
	.2byte	0x15e
	.4byte	0x53
	.4byte	0x2bce
	.uleb128 0x4f
	.4byte	0x2c
	.byte	0
	.uleb128 0x51
	.4byte	.LASF297
	.byte	0xb
	.byte	0x19
	.4byte	0x53
	.4byte	0x2bed
	.uleb128 0x4f
	.4byte	0x53
	.uleb128 0x4f
	.4byte	0x63
	.uleb128 0x4f
	.4byte	0x2c
	.byte	0
	.uleb128 0x50
	.4byte	.LASF303
	.byte	0x2
	.2byte	0x15b
	.4byte	0x2c31
	.uleb128 0x4f
	.4byte	0x329
	.uleb128 0x4f
	.4byte	0x53
	.uleb128 0x4f
	.4byte	0xfd
	.uleb128 0x4f
	.4byte	0x372
	.uleb128 0x4f
	.4byte	0x329
	.uleb128 0x4f
	.4byte	0x2c
	.uleb128 0x4f
	.4byte	0x2c
	.uleb128 0x4f
	.4byte	0x2c
	.uleb128 0x4f
	.4byte	0x2c
	.uleb128 0x4f
	.4byte	0x2c
	.uleb128 0x4f
	.4byte	0x2c
	.byte	0
	.uleb128 0x50
	.4byte	.LASF304
	.byte	0x7
	.2byte	0x106a
	.4byte	0x2c66
	.uleb128 0x4f
	.4byte	0x307
	.uleb128 0x4f
	.4byte	0x53
	.uleb128 0x4f
	.4byte	0xf2
	.uleb128 0x4f
	.4byte	0xf2
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.byte	0
	.uleb128 0x50
	.4byte	.LASF305
	.byte	0x7
	.2byte	0x11a2
	.4byte	0x2ca0
	.uleb128 0x4f
	.4byte	0x307
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.uleb128 0x4f
	.4byte	0xe8
	.byte	0
	.uleb128 0x54
	.4byte	.LASF314
	.byte	0xc
	.byte	0x83
	.uleb128 0x4f
	.4byte	0x53
	.uleb128 0x4f
	.4byte	0xfd
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x52
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
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
	.4byte	.LFE96-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-1-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x4
	.byte	0x73
	.sleb128 3312
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-1-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL14-1-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-1-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL14-1-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x1702
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x1702
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL69-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL112-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL115-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL115-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-1-.Ltext0
	.2byte	0x5
	.byte	0x7a
	.sleb128 33984
	.byte	0x9f
	.4byte	.LVL122-1-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-1-.Ltext0
	.2byte	0x5
	.byte	0x7a
	.sleb128 33984
	.byte	0x9f
	.4byte	.LVL122-1-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125-.Ltext0
	.4byte	.LFE88-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL124-.Ltext0
	.4byte	.LFE88-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL129-.Ltext0
	.4byte	.LFE89-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE89-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL133-.Ltext0
	.4byte	.LFE90-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL132-.Ltext0
	.4byte	.LFE90-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL137-.Ltext0
	.4byte	.LFE91-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL136-.Ltext0
	.4byte	.LFE91-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL205-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL147-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL147-1-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL151-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL151-1-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL155-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL155-1-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL163-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL163-1-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL191-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL191-1-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL203-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL203-1-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL204-1-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL206-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL206-1-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-1-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL225-1-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL246-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL246-1-.Ltext0
	.4byte	.LFE94-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL223-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL223-1-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL225-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL225-1-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL227-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL227-1-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL231-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL231-1-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL239-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL239-1-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL243-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL243-1-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL244-1-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL245-.Ltext0
	.4byte	.LFE94-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL258-1-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL258-1-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL261-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL258-1-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL259-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL262-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL262-1-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x8500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL272-1-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL279-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL272-1-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL277-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL270-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL272-1-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL279-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL292-.Ltext0
	.4byte	.LVL294-1-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL294-1-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL297-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL294-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL294-1-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL295-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL294-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL294-1-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL297-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL305-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL306-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL330-.Ltext0
	.4byte	.LVL331-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL332-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL325-.Ltext0
	.4byte	.LVL326-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL329-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL336-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL336-.Ltext0
	.4byte	.LFE102-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL335-.Ltext0
	.4byte	.LFE102-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL335-.Ltext0
	.4byte	.LFE102-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL345-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL345-.Ltext0
	.4byte	.LFE103-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL346-.Ltext0
	.4byte	.LFE103-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL355-.Ltext0
	.4byte	.LVL356-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL356-.Ltext0
	.4byte	.LFE104-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL353-.Ltext0
	.4byte	.LFE104-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL357-.Ltext0
	.4byte	.LVL359-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL359-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL357-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL358-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL361-1-.Ltext0
	.4byte	.LFE106-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL364-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL367-1-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL369-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL369-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL363-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL367-1-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL368-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL368-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL367-1-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL370-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL375-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL375-1-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL377-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL377-1-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL373-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL373-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL374-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL378-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL380-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL381-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL383-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL394-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL395-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL383-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL395-.Ltext0
	.4byte	.LVL396-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL396-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL383-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL390-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x3
	.byte	0x8b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL393-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL391-1-.Ltext0
	.2byte	0x2
	.byte	0x8c
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	texMan
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL387-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL387-.Ltext0
	.4byte	.LVL388-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL388-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL398-.Ltext0
	.4byte	.LVL399-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL399-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL400-.Ltext0
	.4byte	.LVL401-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL401-.Ltext0
	.4byte	.LVL405-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL405-1-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL400-.Ltext0
	.4byte	.LVL402-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL402-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL400-.Ltext0
	.4byte	.LVL403-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL403-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL400-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL404-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL400-.Ltext0
	.4byte	.LVL405-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL405-1-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL406-.Ltext0
	.4byte	.LVL407-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL407-1-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL408-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL409-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL411-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL411-.Ltext0
	.4byte	.LVL412-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL412-.Ltext0
	.4byte	.LVL413-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL413-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL414-.Ltext0
	.4byte	.LVL415-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL415-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL412-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL414-.Ltext0
	.4byte	.LVL415-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL415-.Ltext0
	.4byte	.LVL418-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL412-.Ltext0
	.4byte	.LVL413-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL413-.Ltext0
	.4byte	.LVL418-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL418-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL418-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL418-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL418-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7922
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL421-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL421-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL422-.Ltext0
	.4byte	.LVL424-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL424-.Ltext0
	.4byte	.LVL425-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL425-.Ltext0
	.4byte	.LVL427-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL427-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL428-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL430-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL420-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL420-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL422-.Ltext0
	.4byte	.LVL423-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL423-.Ltext0
	.4byte	.LVL425-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL425-.Ltext0
	.4byte	.LVL426-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL428-.Ltext0
	.4byte	.LVL429-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL429-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL425-.Ltext0
	.4byte	.LVL427-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL427-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL425-.Ltext0
	.4byte	.LVL426-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL437-.Ltext0
	.4byte	.LVL439-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL439-.Ltext0
	.4byte	.LVL444-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL445-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL445-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL451-.Ltext0
	.4byte	.LVL453-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL453-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL456-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL458-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL458-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL460-.Ltext0
	.4byte	.LVL462-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL462-.Ltext0
	.4byte	.LVL464-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL464-.Ltext0
	.4byte	.LVL466-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL466-.Ltext0
	.4byte	.LVL468-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL468-.Ltext0
	.4byte	.LVL469-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL469-.Ltext0
	.4byte	.LVL471-1-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL471-1-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL436-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL436-.Ltext0
	.4byte	.LVL439-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL439-.Ltext0
	.4byte	.LVL446-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL446-1-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL448-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL448-1-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL451-.Ltext0
	.4byte	.LVL452-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL456-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL457-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL457-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL460-.Ltext0
	.4byte	.LVL461-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL461-.Ltext0
	.4byte	.LVL464-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL464-.Ltext0
	.4byte	.LVL465-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL465-.Ltext0
	.4byte	.LVL468-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL468-.Ltext0
	.4byte	.LVL470-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL470-.Ltext0
	.4byte	.LVL500-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL500-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL438-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL439-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL439-.Ltext0
	.4byte	.LVL446-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL446-1-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL448-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL448-1-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL451-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL456-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL459-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL459-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL460-.Ltext0
	.4byte	.LVL463-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL463-.Ltext0
	.4byte	.LVL464-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL464-.Ltext0
	.4byte	.LVL467-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL467-.Ltext0
	.4byte	.LVL468-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL468-.Ltext0
	.4byte	.LVL471-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL471-1-.Ltext0
	.4byte	.LVL478-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL478-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL446-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL446-1-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL448-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL448-1-.Ltext0
	.4byte	.LVL449-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL449-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL451-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL456-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL471-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL471-1-.Ltext0
	.4byte	.LVL502-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL502-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL446-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL446-1-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL448-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL448-1-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL451-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL456-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL471-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL471-1-.Ltext0
	.4byte	.LVL503-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL503-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL441-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL441-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL434-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL434-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL435-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL435-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL433-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL433-.Ltext0
	.4byte	.LVL446-1-.Ltext0
	.2byte	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.4byte	.LVL446-1-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL456-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL506-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL506-.Ltext0
	.4byte	.LVL507-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL507-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL443-.Ltext0
	.4byte	.LVL446-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL448-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL451-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL471-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL473-.Ltext0
	.4byte	.LVL474-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL474-.Ltext0
	.4byte	.LVL475-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL475-.Ltext0
	.4byte	.LVL476-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL476-.Ltext0
	.4byte	.LVL506-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL478-.Ltext0
	.4byte	.LVL484-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL484-.Ltext0
	.4byte	.LVL485-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL485-.Ltext0
	.4byte	.LVL486-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL506-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL478-.Ltext0
	.4byte	.LVL506-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL478-.Ltext0
	.4byte	.LVL492-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL492-.Ltext0
	.4byte	.LVL493-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL493-.Ltext0
	.4byte	.LVL506-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL479-.Ltext0
	.4byte	.LVL480-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL480-.Ltext0
	.4byte	.LVL481-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL481-.Ltext0
	.4byte	.LVL482-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL482-.Ltext0
	.4byte	.LVL487-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL495-.Ltext0
	.4byte	.LVL496-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL483-.Ltext0
	.4byte	.LVL487-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL495-.Ltext0
	.4byte	.LVL496-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL440-.Ltext0
	.4byte	.LVL442-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL442-.Ltext0
	.4byte	.LVL446-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL446-1-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL448-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL448-1-.Ltext0
	.4byte	.LVL449-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL449-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL451-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL471-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL471-1-.Ltext0
	.4byte	.LVL502-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL502-.Ltext0
	.4byte	.LVL506-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL442-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL488-.Ltext0
	.4byte	.LVL489-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL489-.Ltext0
	.4byte	.LVL491-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL493-.Ltext0
	.4byte	.LVL495-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL498-.Ltext0
	.4byte	.LVL499-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL499-.Ltext0
	.4byte	.LVL501-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL508-.Ltext0
	.4byte	.LVL513-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL513-.Ltext0
	.4byte	.LVL515-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL516-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL516-.Ltext0
	.4byte	.LVL517-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL517-.Ltext0
	.4byte	.LVL518-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL518-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL508-.Ltext0
	.4byte	.LVL512-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL512-.Ltext0
	.4byte	.LVL515-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL521-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL521-1-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL508-.Ltext0
	.4byte	.LVL514-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL514-.Ltext0
	.4byte	.LVL515-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL521-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL521-1-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL508-.Ltext0
	.4byte	.LVL515-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL515-1-.Ltext0
	.4byte	.LVL515-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL521-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL521-1-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LVL508-.Ltext0
	.4byte	.LVL515-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL515-1-.Ltext0
	.4byte	.LVL515-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL519-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL519-.Ltext0
	.4byte	.LVL521-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL521-1-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL508-.Ltext0
	.4byte	.LVL510-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL510-.Ltext0
	.4byte	.LVL511-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL511-.Ltext0
	.4byte	.LVL515-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL521-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL521-1-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL508-.Ltext0
	.4byte	.LVL509-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL509-.Ltext0
	.4byte	.LVL515-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL515-1-.Ltext0
	.4byte	.LVL515-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL521-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL521-1-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL508-.Ltext0
	.4byte	.LVL515-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL515-1-.Ltext0
	.4byte	.LVL515-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL520-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL520-.Ltext0
	.4byte	.LVL521-1-.Ltext0
	.2byte	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.4byte	.LVL521-1-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL522-.Ltext0
	.4byte	.LVL523-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL523-.Ltext0
	.4byte	.LVL524-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL524-1-.Ltext0
	.4byte	.LVL524-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL524-.Ltext0
	.4byte	.LVL525-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL525-.Ltext0
	.4byte	.LFE122-.Ltext0
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB88-.Ltext0
	.4byte	.LBE88-.Ltext0
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF150:
	.string	"params"
.LASF197:
	.string	"getNextTexID"
.LASF164:
	.string	"stage"
.LASF55:
	.string	"Stack"
.LASF120:
	.string	"base_level"
.LASF143:
	.string	"computeStart"
.LASF156:
	.string	"GX_SetTevAIn"
.LASF184:
	.string	"resizeMan"
.LASF10:
	.string	"char"
.LASF130:
	.string	"GL2GX_Filter"
.LASF38:
	.string	"GLint"
.LASF114:
	.string	"format"
.LASF66:
	.string	"quad_t"
.LASF76:
	.string	"boxInfo"
.LASF253:
	.string	"globAmbient"
.LASF249:
	.string	"texture_stack"
.LASF105:
	.string	"Carg"
.LASF264:
	.string	"fb_max_height"
.LASF127:
	.string	"usedTexs"
.LASF234:
	.string	"_normalelements"
.LASF225:
	.string	"internalformat"
.LASF144:
	.string	"byteOffset"
.LASF68:
	.string	"_mat"
.LASF313:
	.string	"scale_s32"
.LASF210:
	.string	"xoffset"
.LASF149:
	.string	"_glGetPixelStore"
.LASF61:
	.string	"specular"
.LASF52:
	.string	"_stack"
.LASF310:
	.string	"GLvoid"
.LASF116:
	.string	"level"
.LASF126:
	.string	"nTexs"
.LASF236:
	.string	"_texcoordelements"
.LASF87:
	.string	"_trans"
.LASF63:
	.string	"spotCutoff"
.LASF91:
	.string	"_tex_env"
.LASF254:
	.string	"curmat"
.LASF53:
	.string	"begin"
.LASF102:
	.string	"mode"
.LASF278:
	.string	"_clearcolor"
.LASF154:
	.string	"defcolor"
.LASF97:
	.string	"maxlod"
.LASF72:
	.string	"GL_STATE_NONE"
.LASF118:
	.string	"gxObj"
.LASF34:
	.string	"_gx_litobj"
.LASF70:
	.string	"shininess"
.LASF121:
	.string	"max_level"
.LASF168:
	.string	"Alphabias"
.LASF235:
	.string	"_vertexelements"
.LASF45:
	.string	"GXColorf"
.LASF106:
	.string	"CargOp"
.LASF246:
	.string	"_cleardepth"
.LASF60:
	.string	"diffuse"
.LASF263:
	.string	"cur_state"
.LASF173:
	.string	"max_src"
.LASF230:
	.string	"_tempnormalelement"
.LASF5:
	.string	"signed char"
.LASF226:
	.string	"glDeleteTextures"
.LASF242:
	.string	"cur_tex_client"
.LASF233:
	.string	"vert"
.LASF20:
	.string	"uint32_t"
.LASF15:
	.string	"int8_t"
.LASF281:
	.string	"fog_mode"
.LASF136:
	.string	"glSetScale"
.LASF180:
	.string	"glTexEnvfv"
.LASF103:
	.string	"comRGB"
.LASF290:
	.string	"_glSetErrorEx"
.LASF283:
	.string	"fog_endz"
.LASF239:
	.string	"_type"
.LASF21:
	.string	"vu16"
.LASF0:
	.string	"float"
.LASF302:
	.string	"getTextureSlot"
.LASF303:
	.string	"TransferPixels"
.LASF46:
	.string	"_array"
.LASF214:
	.string	"internalFormat"
.LASF89:
	.string	"bias"
.LASF17:
	.string	"int16_t"
.LASF31:
	.string	"GXColor"
.LASF145:
	.string	"CorrectGLtype"
.LASF51:
	.string	"VertexArray"
.LASF271:
	.string	"line_width"
.LASF8:
	.string	"long long unsigned int"
.LASF279:
	.string	"Trans"
.LASF273:
	.string	"pack"
.LASF69:
	.string	"emissive"
.LASF220:
	.string	"base_width"
.LASF132:
	.string	"setMaxLod"
.LASF268:
	.string	"viewPort"
.LASF33:
	.string	"GXTexObj"
.LASF92:
	.string	"min_filter"
.LASF137:
	.string	"glTexEnvf"
.LASF247:
	.string	"model_stack"
.LASF275:
	.string	"color_write_mask"
.LASF183:
	.string	"glTexEnvi"
.LASF215:
	.string	"border"
.LASF47:
	.string	"enable"
.LASF286:
	.string	"glTexEnvs"
.LASF258:
	.string	"blend_type"
.LASF147:
	.string	"value"
.LASF227:
	.string	"glIsTexture"
.LASF125:
	.string	"used"
.LASF119:
	.string	"glFormat"
.LASF217:
	.string	"iFor"
.LASF285:
	.string	"fog_color"
.LASF117:
	.string	"target"
.LASF77:
	.string	"width"
.LASF193:
	.string	"GX_SetTevStage"
.LASF276:
	.string	"copy_mat_enabled"
.LASF241:
	.string	"cur_tex"
.LASF309:
	.string	"_wgpipe"
.LASF104:
	.string	"comAlpha"
.LASF26:
	.string	"_Bool"
.LASF22:
	.string	"vu32"
.LASF188:
	.string	"activateTex"
.LASF266:
	.string	"scissor_test"
.LASF304:
	.string	"GX_InitTexObj"
.LASF190:
	.string	"isUsed"
.LASF294:
	.string	"GX_SetTevAlphaOp"
.LASF218:
	.string	"bytes"
.LASF148:
	.string	"glPixelStoref"
.LASF181:
	.string	"glPixelStorei"
.LASF272:
	.string	"point_size"
.LASF185:
	.string	"new_arr"
.LASF172:
	.string	"max_Asrc"
.LASF41:
	.string	"GLfloat"
.LASF308:
	.string	"D:\\\\devkitPro\\\\portlibs\\\\thirdparty\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF277:
	.string	"copy_material"
.LASF177:
	.string	"glSetComAlpha"
.LASF140:
	.string	"texture"
.LASF74:
	.string	"GL_STATE_NEWLIST"
.LASF255:
	.string	"gxcullfaceanabled"
.LASF250:
	.string	"curmtx"
.LASF25:
	.string	"vf32"
.LASF153:
	.string	"texN"
.LASF59:
	.string	"ambient"
.LASF267:
	.string	"scissorInfo"
.LASF182:
	.string	"glTexEnviv"
.LASF256:
	.string	"gxwinding"
.LASF23:
	.string	"vs16"
.LASF35:
	.string	"GXLightObj"
.LASF122:
	.string	"glTex"
.LASF203:
	.string	"texs"
.LASF161:
	.string	"GX_IncTexMap"
.LASF90:
	.string	"ColorTrans"
.LASF259:
	.string	"blend_src"
.LASF71:
	.string	"Material"
.LASF115:
	.string	"pixels"
.LASF245:
	.string	"depthfunction"
.LASF112:
	.string	"glTexEnvSet"
.LASF16:
	.string	"uint8_t"
.LASF113:
	.string	"_glTex"
.LASF248:
	.string	"projection_stack"
.LASF300:
	.string	"GX_SetNumTexGens"
.LASF292:
	.string	"GX_SetTevColorOp"
.LASF237:
	.string	"_colorelements"
.LASF204:
	.string	"maxlod_in_tex"
.LASF80:
	.string	"swap"
.LASF27:
	.string	"guVector"
.LASF7:
	.string	"long long int"
.LASF151:
	.string	"_glGetSize"
.LASF205:
	.string	"convertInternalFormat"
.LASF270:
	.string	"normFar"
.LASF314:
	.string	"DCFlushRange"
.LASF135:
	.string	"glSetSrc"
.LASF39:
	.string	"GLuint"
.LASF206:
	.string	"valid"
.LASF73:
	.string	"GL_STATE_BEGIN"
.LASF287:
	.string	"read_mode"
.LASF54:
	.string	"elem_size"
.LASF75:
	.string	"glState"
.LASF186:
	.string	"new_used"
.LASF64:
	.string	"constant"
.LASF280:
	.string	"fog_enable"
.LASF291:
	.string	"GX_SetTevColorIn"
.LASF142:
	.string	"getTex"
.LASF171:
	.string	"max_Csrc"
.LASF29:
	.string	"_vecf"
.LASF43:
	.string	"VertexElement"
.LASF88:
	.string	"scale"
.LASF297:
	.string	"memset"
.LASF99:
	.string	"biasclamp"
.LASF157:
	.string	"GX_IncReg"
.LASF24:
	.string	"vs32"
.LASF82:
	.string	"row_length"
.LASF244:
	.string	"depthupdate"
.LASF289:
	.string	"border_color"
.LASF165:
	.string	"nstages"
.LASF49:
	.string	"size"
.LASF67:
	.string	"LightObj"
.LASF134:
	.string	"param"
.LASF162:
	.string	"GX_IncTexCoord"
.LASF95:
	.string	"wrap_t"
.LASF298:
	.string	"releaseTextureSlot"
.LASF199:
	.string	"glBindTexture"
.LASF260:
	.string	"blend_dst"
.LASF78:
	.string	"height"
.LASF231:
	.string	"_temptexcoordelement"
.LASF124:
	.string	"textures"
.LASF189:
	.string	"deleteTex"
.LASF196:
	.string	"glTexParameterfv"
.LASF251:
	.string	"cur_mode"
.LASF299:
	.string	"GX_LoadTexObj"
.LASF160:
	.string	"GX_IncAAReg"
.LASF202:
	.string	"GX_SetTextures"
.LASF219:
	.string	"base_height"
.LASF79:
	.string	"_pixelStore"
.LASF128:
	.string	"TextManager"
.LASF13:
	.string	"long double"
.LASF94:
	.string	"wrap_s"
.LASF18:
	.string	"uint16_t"
.LASF306:
	.string	"GNU C 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF187:
	.string	"initTextures"
.LASF201:
	.string	"_glGetEnableTex"
.LASF295:
	.string	"GX_SetTevOrder"
.LASF232:
	.string	"norm"
.LASF274:
	.string	"unpack"
.LASF44:
	.string	"TexCoordElement"
.LASF58:
	.string	"spotDir"
.LASF223:
	.string	"max_dim"
.LASF32:
	.string	"_gx_texobj"
.LASF155:
	.string	"defalpha"
.LASF62:
	.string	"spotExponent"
.LASF301:
	.string	"GX_GetTexBufferSize"
.LASF98:
	.string	"lodbias"
.LASF252:
	.string	"lights"
.LASF6:
	.string	"short int"
.LASF96:
	.string	"minlod"
.LASF93:
	.string	"max_filter"
.LASF11:
	.string	"long int"
.LASF224:
	.string	"glTexImage1D"
.LASF221:
	.string	"case1"
.LASF222:
	.string	"case2"
.LASF28:
	.string	"WGPipe"
.LASF36:
	.string	"GLenum"
.LASF216:
	.string	"powerOf2"
.LASF56:
	.string	"_light"
.LASF109:
	.string	"color"
.LASF40:
	.string	"GLsizei"
.LASF288:
	.string	"call_offset"
.LASF229:
	.string	"_tempcolorelement"
.LASF209:
	.string	"glTexSubImage2D"
.LASF84:
	.string	"skip_pixels"
.LASF107:
	.string	"Aarg"
.LASF101:
	.string	"maxaniso"
.LASF129:
	.string	"GL2GX_Wrap"
.LASF213:
	.string	"glTexImage2D"
.LASF1:
	.string	"unsigned int"
.LASF305:
	.string	"GX_InitTexObjLOD"
.LASF284:
	.string	"fog_density"
.LASF48:
	.string	"stride"
.LASF257:
	.string	"lighting"
.LASF163:
	.string	"GX_SetTevCombineStage"
.LASF176:
	.string	"glSetComRGB"
.LASF2:
	.string	"sizetype"
.LASF9:
	.string	"long unsigned int"
.LASF175:
	.string	"glSetAlphaOp"
.LASF261:
	.string	"blend_op"
.LASF192:
	.string	"glGetTexLevelParameteriv"
.LASF282:
	.string	"fog_startz"
.LASF19:
	.string	"int32_t"
.LASF86:
	.string	"pixelStore"
.LASF139:
	.string	"texMan"
.LASF212:
	.string	"correct_type"
.LASF158:
	.string	"GX_IncCCReg"
.LASF307:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl_textures.c"
.LASF312:
	.string	"OffsetN"
.LASF152:
	.string	"GX_SetTevCIn"
.LASF170:
	.string	"Atex"
.LASF50:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF174:
	.string	"glSetRGBOp"
.LASF57:
	.string	"enabled"
.LASF146:
	.string	"IsPowerOfTwo"
.LASF83:
	.string	"skip_rows"
.LASF211:
	.string	"yoffset"
.LASF238:
	.string	"vert_i"
.LASF81:
	.string	"lsb_first"
.LASF111:
	.string	"alpha_scale"
.LASF131:
	.string	"setAniso"
.LASF123:
	.string	"_textMan"
.LASF195:
	.string	"glTexParameterf"
.LASF42:
	.string	"Vector"
.LASF208:
	.string	"byte_size"
.LASF194:
	.string	"glTexParameteri"
.LASF265:
	.string	"fb_max_width"
.LASF65:
	.string	"linear"
.LASF198:
	.string	"glGenTextures"
.LASF269:
	.string	"normNear"
.LASF240:
	.string	"_GLtype"
.LASF243:
	.string	"depthtestenabled"
.LASF296:
	.string	"realloc"
.LASF30:
	.string	"_gx_color"
.LASF133:
	.string	"glSetTexEnvMode"
.LASF100:
	.string	"edgelod"
.LASF167:
	.string	"RGBbias"
.LASF200:
	.string	"_glSetEnableTex"
.LASF166:
	.string	"RGBop"
.LASF159:
	.string	"GX_IncCAReg"
.LASF4:
	.string	"short unsigned int"
.LASF228:
	.string	"wgPipe"
.LASF12:
	.string	"double"
.LASF85:
	.string	"alignment"
.LASF14:
	.string	"size_t"
.LASF293:
	.string	"GX_SetTevAlphaIn"
.LASF37:
	.string	"GLboolean"
.LASF110:
	.string	"rgb_scale"
.LASF207:
	.string	"GenArray"
.LASF191:
	.string	"getCur"
.LASF311:
	.string	"_glState"
.LASF178:
	.string	"_glTexEnvf"
.LASF179:
	.string	"_glTexEnvi"
.LASF169:
	.string	"Ctex"
.LASF138:
	.string	"pname"
.LASF141:
	.string	"dest"
.LASF262:
	.string	"cull_mode"
.LASF108:
	.string	"AargOp"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
	.gnu_attribute 4, 1
