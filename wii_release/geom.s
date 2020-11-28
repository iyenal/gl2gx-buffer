	.file	"geom.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl __gl_vertLeq
	.type	__gl_vertLeq, @function
__gl_vertLeq:
.LFB0:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/geom.c"
	.loc 1 48 0
	.cfi_startproc
.LVL0:
	.loc 1 51 0
	lfd 0,40(3)
	lfd 13,40(4)
	fcmpu 7,0,13
	blt- 7,.L6
	.loc 1 51 0 is_stmt 0 discriminator 2
	beq- 7,.L3
.LVL1:
.L4:
	.loc 1 51 0
	li 3,0
	blr
.LVL2:
.L3:
	.loc 1 51 0 discriminator 3
	lfd 13,48(3)
	li 3,1
.LVL3:
	lfd 0,48(4)
	fcmpu 7,13,0
	cror 30,28,30
	bne+ 7,.L4
	blr
.LVL4:
.L6:
	.loc 1 51 0
	li 3,1
.LVL5:
	.loc 1 52 0 is_stmt 1
	blr
	.cfi_endproc
.LFE0:
	.size	__gl_vertLeq, .-__gl_vertLeq
	.align 2
	.globl __gl_edgeEval
	.type	__gl_edgeEval, @function
__gl_edgeEval:
.LFB1:
	.loc 1 55 0
	.cfi_startproc
.LVL6:
	.loc 1 70 0
	lfd 13,40(4)
	.loc 1 73 0
	lis 9,.LC0@ha
	.loc 1 70 0
	lfd 0,40(3)
	.loc 1 73 0
	lfd 1,.LC0@l(9)
	.loc 1 70 0
	fsub 10,13,0
.LVL7:
	.loc 1 71 0
	lfd 0,40(5)
	fsub 13,0,13
.LVL8:
	.loc 1 73 0
	fadd 0,10,13
	fcmpu 7,0,1
	bnglr- 7
	.loc 1 74 0
	fcmpu 7,10,13
	lfd 11,48(3)
	lfd 12,48(5)
	lfd 9,48(4)
	bnl+ 7,.L18
	.loc 1 75 0
	fdiv 0,10,0
	fsub 1,11,12
	fsub 11,9,11
	fmadd 1,1,0,11
	blr
.L18:
	.loc 1 77 0
	fdiv 0,13,0
	fsub 1,12,11
	fsub 12,9,12
	fmadd 1,1,0,12
	.loc 1 82 0
	blr
	.cfi_endproc
.LFE1:
	.size	__gl_edgeEval, .-__gl_edgeEval
	.align 2
	.globl __gl_edgeSign
	.type	__gl_edgeSign, @function
__gl_edgeSign:
.LFB2:
	.loc 1 85 0
	.cfi_startproc
.LVL9:
	.loc 1 94 0
	lfd 13,40(4)
	.loc 1 97 0
	lis 9,.LC0@ha
	.loc 1 94 0
	lfd 12,40(3)
	.loc 1 97 0
	lfd 1,.LC0@l(9)
	.loc 1 94 0
	fsub 0,13,12
.LVL10:
	.loc 1 95 0
	lfd 12,40(5)
	fsub 13,12,13
.LVL11:
	.loc 1 97 0
	fadd 12,0,13
	fcmpu 7,12,1
	bnglr- 7
	.loc 1 98 0
	lfd 12,48(4)
	lfd 1,48(5)
	lfd 11,48(3)
	fsub 1,12,1
	fsub 12,12,11
	fmul 13,12,13
.LVL12:
	fmadd 1,1,0,13
	.loc 1 102 0
	blr
	.cfi_endproc
.LFE2:
	.size	__gl_edgeSign, .-__gl_edgeSign
	.align 2
	.globl __gl_transEval
	.type	__gl_transEval, @function
__gl_transEval:
.LFB3:
	.loc 1 110 0
	.cfi_startproc
.LVL13:
	.loc 1 125 0
	lfd 13,48(4)
	.loc 1 128 0
	lis 9,.LC0@ha
	.loc 1 125 0
	lfd 0,48(3)
	.loc 1 128 0
	lfd 1,.LC0@l(9)
	.loc 1 125 0
	fsub 10,13,0
.LVL14:
	.loc 1 126 0
	lfd 0,48(5)
	fsub 13,0,13
.LVL15:
	.loc 1 128 0
	fadd 0,10,13
	fcmpu 7,0,1
	bnglr- 7
	.loc 1 129 0
	fcmpu 7,10,13
	lfd 11,40(3)
	lfd 12,40(5)
	lfd 9,40(4)
	bnl+ 7,.L34
	.loc 1 130 0
	fdiv 0,10,0
	fsub 1,11,12
	fsub 11,9,11
	fmadd 1,1,0,11
	blr
.L34:
	.loc 1 132 0
	fdiv 0,13,0
	fsub 1,12,11
	fsub 12,9,12
	fmadd 1,1,0,12
	.loc 1 137 0
	blr
	.cfi_endproc
.LFE3:
	.size	__gl_transEval, .-__gl_transEval
	.align 2
	.globl __gl_transSign
	.type	__gl_transSign, @function
__gl_transSign:
.LFB4:
	.loc 1 140 0
	.cfi_startproc
.LVL16:
	.loc 1 149 0
	lfd 13,48(4)
	.loc 1 152 0
	lis 9,.LC0@ha
	.loc 1 149 0
	lfd 12,48(3)
	.loc 1 152 0
	lfd 1,.LC0@l(9)
	.loc 1 149 0
	fsub 0,13,12
.LVL17:
	.loc 1 150 0
	lfd 12,48(5)
	fsub 13,12,13
.LVL18:
	.loc 1 152 0
	fadd 12,0,13
	fcmpu 7,12,1
	bnglr- 7
	.loc 1 153 0
	lfd 12,40(4)
	lfd 1,40(5)
	lfd 11,40(3)
	fsub 1,12,1
	fsub 12,12,11
	fmul 13,12,13
.LVL19:
	fmadd 1,1,0,13
	.loc 1 157 0
	blr
	.cfi_endproc
.LFE4:
	.size	__gl_transSign, .-__gl_transSign
	.align 2
	.globl __gl_vertCCW
	.type	__gl_vertCCW, @function
__gl_vertCCW:
.LFB5:
	.loc 1 161 0
	.cfi_startproc
.LVL20:
	.loc 1 168 0
	lfd 13,48(3)
	lis 9,.LC0@ha
	lfd 12,48(5)
	lfd 11,40(4)
	fsub 10,12,13
	lfd 0,48(4)
	fsub 12,0,12
	fmul 11,10,11
	lfd 10,40(3)
	fsub 0,13,0
	lfd 13,40(5)
	fmadd 12,10,12,11
	lfd 11,.LC0@l(9)
	fmadd 0,13,0,12
	fcmpu 7,0,11
	cror 30,29,30
	.loc 1 169 0
	mfcr 3
	rlwinm 3,3,31,1
.LVL21:
	blr
	.cfi_endproc
.LFE5:
	.size	__gl_vertCCW, .-__gl_vertCCW
	.align 2
	.globl __gl_edgeIntersect
	.type	__gl_edgeIntersect, @function
__gl_edgeIntersect:
.LFB6:
	.loc 1 217 0
	.cfi_startproc
.LVL22:
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	addi 11,1,64
	stw 0,68(1)
	.cfi_offset 65, 4
	bl _savefpr_28
	stmw 26,8(1)
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 26, -56
	.cfi_offset 27, -52
	.cfi_offset 28, -48
	.cfi_offset 29, -44
	.cfi_offset 30, -40
	.cfi_offset 31, -36
	.loc 1 217 0
	mr 29,3
	mr 31,4
	mr 30,5
	.loc 1 228 0
	lfd 0,40(3)
	.loc 1 217 0
	mr 28,6
	.loc 1 228 0
	lfd 13,40(4)
	.loc 1 217 0
	mr 27,7
	.loc 1 228 0
	fcmpu 7,0,13
	blt- 7,.L43
	.loc 1 228 0 is_stmt 0 discriminator 1
	beq- 7,.L44
.L45:
	.loc 1 217 0 is_stmt 1
	mr 9,29
	mr 29,31
	mr 31,9
	b .L43
.L44:
	.loc 1 228 0 discriminator 2
	lfd 0,48(3)
	lfd 13,48(4)
	fcmpu 7,0,13
	cror 30,28,30
	bne- 7,.L45
.L43:
.LVL23:
	.loc 1 229 0
	lfd 0,40(30)
	lfd 13,40(28)
	fcmpu 7,0,13
	blt- 7,.L47
	.loc 1 229 0 is_stmt 0 discriminator 1
	beq- 7,.L48
.L49:
	.loc 1 217 0 is_stmt 1
	mr 9,30
	mr 30,28
	mr 28,9
	b .L47
.L48:
	.loc 1 229 0 discriminator 2
	lfd 0,48(30)
	lfd 13,48(28)
	fcmpu 7,0,13
	cror 30,28,30
	bne- 7,.L49
.L47:
.LVL24:
	.loc 1 230 0
	lfd 0,40(29)
	lfd 13,40(30)
	fcmpu 7,0,13
	blt- 7,.L51
	.loc 1 230 0 is_stmt 0 discriminator 1
	bne- 7,.L125
	.loc 1 230 0 discriminator 2
	lfd 0,48(29)
	lfd 13,48(30)
	fcmpu 7,0,13
	cror 30,28,30
	beq- 7,.L51
.L125:
	mr 9,31
.LBB2:
	.loc 1 230 0
	mr 31,28
.LVL25:
	mr 28,9
.LVL26:
.LBE2:
	mr 9,29
.LVL27:
	mr 29,30
.LVL28:
	mr 30,9
.LVL29:
.L51:
	.loc 1 232 0 is_stmt 1
	lfd 31,40(30)
	lfd 29,40(31)
	fcmpu 7,31,29
	blt- 7,.L53
	.loc 1 232 0 is_stmt 0 discriminator 1
	bne- 7,.L103
	lfd 0,48(30)
	lfd 13,48(31)
	fcmpu 7,0,13
	cror 30,28,30
	bne- 7,.L103
.L53:
	.loc 1 235 0 is_stmt 1
	lfd 28,40(28)
	lis 26,.LC0@ha
	fcmpu 7,29,28
	blt- 7,.L56
	.loc 1 235 0 is_stmt 0 discriminator 1
	bne- 7,.L57
	lfd 0,48(31)
	lfd 13,48(28)
	fcmpu 7,0,13
	cror 30,28,30
	bne- 7,.L57
.L56:
	.loc 1 237 0 is_stmt 1
	mr 3,29
	mr 4,30
	mr 5,31
	bl __gl_edgeEval
.LVL30:
	.loc 1 238 0
	mr 3,30
	.loc 1 237 0
	fmr 30,1
.LVL31:
	.loc 1 238 0
	mr 4,31
	mr 5,28
	bl __gl_edgeEval
.LVL32:
	.loc 1 239 0
	lfd 0,.LC0@l(26)
	fadd 12,30,1
	fcmpu 7,12,0
	bnl+ 7,.L59
	.loc 1 239 0 is_stmt 0 discriminator 1
	fneg 30,30
.LVL33:
	fneg 1,1
.LVL34:
.L59:
	.loc 1 240 0 is_stmt 1
	lfd 0,.LC0@l(26)
	fcmpu 7,30,0
	blt- 7,.L61
	.loc 1 240 0 is_stmt 0 discriminator 3
	fcmpu 6,1,0
	blt- 6,.L62
.LVL35:
.L107:
	fcmpu 7,30,1
	cror 30,28,30
	bne- 7,.L63
	.loc 1 240 0 discriminator 1
	lfd 0,.LC0@l(26)
	fcmpu 7,1,0
	bne- 7,.L65
.LVL36:
.L103:
	fadd 31,31,29
	b .L130
.LVL37:
.L65:
	.loc 1 240 0 discriminator 2
	fadd 13,30,1
	fsub 29,29,31
	fdiv 30,30,13
	fmadd 31,29,30,31
	b .L74
.LVL38:
.L62:
	.loc 1 240 0
	cror 30,28,30
	beq- 7,.L103
	fmr 1,0
.LVL39:
.L63:
	.loc 1 240 0 discriminator 2
	fadd 30,30,1
	fsub 31,31,29
	fdiv 13,1,30
	fmadd 31,31,13,29
	b .L74
.LVL40:
.L57:
	.loc 1 243 0 is_stmt 1
	mr 3,29
	mr 4,30
	mr 5,31
	bl __gl_edgeSign
.LVL41:
	.loc 1 244 0
	mr 3,29
	.loc 1 243 0
	fmr 30,1
.LVL42:
	.loc 1 244 0
	mr 4,28
	mr 5,31
	bl __gl_edgeSign
.LVL43:
	.loc 1 245 0
	lfd 13,.LC0@l(26)
	fsub 12,30,1
	fcmpu 7,12,13
	blt- 7,.L67
	.loc 1 244 0
	fneg 1,1
.LVL44:
	b .L68
.LVL45:
.L67:
	.loc 1 245 0 discriminator 1
	fneg 30,30
.LVL46:
.L68:
	.loc 1 246 0
	lfd 13,.LC0@l(26)
	fcmpu 7,30,13
	blt- 7,.L69
	.loc 1 246 0 is_stmt 0 discriminator 3
	fcmpu 6,1,13
	blt- 6,.L70
.LVL47:
.L108:
	fcmpu 7,30,1
	cror 30,28,30
	bne- 7,.L71
	.loc 1 246 0 discriminator 1
	lfd 13,.LC0@l(26)
	fcmpu 7,1,13
	bne- 7,.L73
.LVL48:
.L104:
	fadd 31,31,28
.L130:
	lis 9,.LC2@ha
	lfs 12,.LC2@l(9)
	fmul 31,31,12
	b .L74
.LVL49:
.L73:
	.loc 1 246 0 discriminator 2
	fadd 0,30,1
	fsub 28,28,31
	fdiv 30,30,0
	fmadd 31,28,30,31
	b .L74
.LVL50:
.L70:
	.loc 1 246 0
	cror 30,28,30
	beq- 7,.L104
	fmr 1,13
.LVL51:
.L71:
	.loc 1 246 0 discriminator 2
	fadd 30,30,1
	fsub 31,31,28
	fdiv 0,1,30
	fmadd 31,31,0,28
.L74:
	.loc 1 246 0 discriminator 3
	stfd 31,40(27)
	.loc 1 251 0 is_stmt 1 discriminator 3
	lfd 0,48(29)
	lfd 13,48(31)
	fcmpu 7,0,13
	blt- 7,.L75
	.loc 1 251 0 is_stmt 0 discriminator 1
	bne- 7,.L126
	.loc 1 251 0 discriminator 2
	lfd 0,40(29)
	lfd 13,40(31)
	fcmpu 7,0,13
	cror 30,28,30
	beq- 7,.L75
.L126:
	mr 9,29
	mr 29,31
.LVL52:
	mr 31,9
.LVL53:
.L75:
	.loc 1 252 0 is_stmt 1
	lfd 0,48(30)
	lfd 13,48(28)
	fcmpu 7,0,13
	blt- 7,.L77
	.loc 1 252 0 is_stmt 0 discriminator 1
	bne- 7,.L127
	.loc 1 252 0 discriminator 2
	lfd 0,40(30)
	lfd 13,40(28)
	fcmpu 7,0,13
	cror 30,28,30
	beq- 7,.L77
.L127:
	mr 9,30
	mr 30,28
.LVL54:
	mr 28,9
.LVL55:
.L77:
	.loc 1 253 0 is_stmt 1
	lfd 0,48(29)
	lfd 13,48(30)
	fcmpu 7,0,13
	blt- 7,.L79
	.loc 1 253 0 is_stmt 0 discriminator 1
	bne- 7,.L128
	.loc 1 253 0 discriminator 2
	lfd 0,40(29)
	lfd 13,40(30)
	fcmpu 7,0,13
	cror 30,28,30
	beq- 7,.L79
.L128:
	mr 9,31
.LBB3:
	.loc 1 253 0
	mr 31,28
.LVL56:
	mr 28,9
.LVL57:
.LBE3:
	mr 9,29
.LVL58:
	mr 29,30
.LVL59:
	mr 30,9
.LVL60:
.L79:
	.loc 1 255 0 is_stmt 1
	lfd 31,48(30)
	lfd 29,48(31)
	fcmpu 7,31,29
	blt- 7,.L81
	.loc 1 255 0 is_stmt 0 discriminator 1
	bne- 7,.L105
	lfd 0,40(30)
	lfd 13,40(31)
	fcmpu 7,0,13
	cror 30,28,30
	bne- 7,.L105
.L81:
	.loc 1 258 0 is_stmt 1
	lfd 28,48(28)
	lis 26,.LC0@ha
	fcmpu 7,29,28
	blt- 7,.L84
	.loc 1 258 0 is_stmt 0 discriminator 1
	bne- 7,.L85
	lfd 0,40(31)
	lfd 13,40(28)
	fcmpu 7,0,13
	cror 30,28,30
	bne- 7,.L85
.L84:
	.loc 1 260 0 is_stmt 1
	mr 3,29
	mr 4,30
	mr 5,31
	bl __gl_transEval
.LVL61:
	.loc 1 261 0
	mr 3,30
	.loc 1 260 0
	fmr 30,1
.LVL62:
	.loc 1 261 0
	mr 4,31
	mr 5,28
	bl __gl_transEval
.LVL63:
	.loc 1 262 0
	lfd 0,.LC0@l(26)
	fadd 12,30,1
	fcmpu 7,12,0
	bnl+ 7,.L87
	.loc 1 262 0 is_stmt 0 discriminator 1
	fneg 30,30
.LVL64:
	fneg 1,1
.LVL65:
.L87:
	.loc 1 263 0 is_stmt 1
	lfd 0,.LC0@l(26)
	fcmpu 7,30,0
	blt- 7,.L89
	.loc 1 263 0 is_stmt 0 discriminator 3
	fcmpu 6,1,0
	blt- 6,.L90
.LVL66:
.L109:
	fcmpu 7,30,1
	cror 30,28,30
	bne- 7,.L91
	.loc 1 263 0 discriminator 1
	lfd 0,.LC0@l(26)
	fcmpu 7,1,0
	bne- 7,.L93
.LVL67:
.L105:
	fadd 31,31,29
	b .L131
.LVL68:
.L93:
	.loc 1 263 0 discriminator 2
	fadd 13,30,1
	fsub 29,29,31
	fdiv 30,30,13
	fmadd 31,29,30,31
	b .L102
.LVL69:
.L90:
	.loc 1 263 0
	cror 30,28,30
	beq- 7,.L105
	fmr 1,0
.LVL70:
.L91:
	.loc 1 263 0 discriminator 2
	fadd 30,30,1
	fsub 31,31,29
	fdiv 13,1,30
	fmadd 31,31,13,29
	b .L102
.L85:
	.loc 1 266 0 is_stmt 1
	mr 3,29
	mr 4,30
	mr 5,31
	bl __gl_transSign
.LVL71:
	.loc 1 267 0
	mr 3,29
	.loc 1 266 0
	fmr 30,1
.LVL72:
	.loc 1 267 0
	mr 4,28
	mr 5,31
	bl __gl_transSign
.LVL73:
	.loc 1 268 0
	lfd 13,.LC0@l(26)
	fsub 12,30,1
	fcmpu 7,12,13
	blt- 7,.L95
	.loc 1 267 0
	fneg 1,1
.LVL74:
	b .L96
.LVL75:
.L95:
	.loc 1 268 0 discriminator 1
	fneg 30,30
.LVL76:
.L96:
	.loc 1 269 0
	lfd 13,.LC0@l(26)
	fcmpu 7,30,13
	blt- 7,.L97
	.loc 1 269 0 is_stmt 0 discriminator 3
	fcmpu 6,1,13
	blt- 6,.L98
.LVL77:
.L110:
	fcmpu 7,30,1
	cror 30,28,30
	bne- 7,.L99
	.loc 1 269 0 discriminator 1
	lfd 13,.LC0@l(26)
	fcmpu 7,1,13
	bne- 7,.L101
.LVL78:
.L106:
	fadd 31,31,28
.L131:
	lis 9,.LC2@ha
	lfs 12,.LC2@l(9)
	fmul 31,31,12
	b .L102
.LVL79:
.L101:
	.loc 1 269 0 discriminator 2
	fadd 0,30,1
	fsub 28,28,31
	fdiv 30,30,0
	fmadd 31,28,30,31
	b .L102
.LVL80:
.L98:
	.loc 1 269 0
	cror 30,28,30
	beq- 7,.L106
	fmr 1,13
.LVL81:
.L99:
	.loc 1 269 0 discriminator 2
	fadd 30,30,1
	fsub 31,31,28
	fdiv 0,1,30
	fmadd 31,31,0,28
.L102:
	.loc 1 269 0 discriminator 3
	stfd 31,48(27)
	.loc 1 271 0 is_stmt 1 discriminator 3
	addi 11,1,64
	lmw 26,8(1)
.LVL82:
	b _restfpr_28_x
	.cfi_remember_state
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 65
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
.LVL83:
.L61:
	.cfi_restore_state
	.loc 1 240 0
	fcmpu 7,1,0
	fmr 30,0
	bnl+ 7,.L107
	b .L103
.LVL84:
.L69:
	.loc 1 246 0
	fcmpu 7,1,13
	fmr 30,13
	bnl+ 7,.L108
	b .L104
.LVL85:
.L89:
	.loc 1 263 0
	fcmpu 7,1,0
	fmr 30,0
	bnl+ 7,.L109
	b .L105
.LVL86:
.L97:
	.loc 1 269 0
	fcmpu 7,1,13
	fmr 30,13
	bnl+ 7,.L110
	b .L106
	.cfi_endproc
.LFE6:
	.size	__gl_edgeIntersect, .-__gl_edgeIntersect
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.4byte	1056964608
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.4byte	0
	.4byte	0
	.section	".text"
.Letext0:
	.file 2 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/include/GL/gl.h"
	.file 3 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/mesh.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x592
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x1
	.4byte	.LASF42
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x93
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x9f
	.4byte	0x21
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x31
	.4byte	0xa6
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x40
	.byte	0x3
	.byte	0x79
	.4byte	0x10f
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x7a
	.4byte	0x203
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7b
	.4byte	0x203
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7c
	.4byte	0x209
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x3
	.byte	0x7d
	.4byte	0x8b
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x3
	.byte	0x80
	.4byte	0x20f
	.byte	0x10
	.uleb128 0x8
	.string	"s"
	.byte	0x3
	.byte	0x81
	.4byte	0x64
	.byte	0x28
	.uleb128 0x8
	.string	"t"
	.byte	0x3
	.byte	0x81
	.4byte	0x64
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x3
	.byte	0x82
	.4byte	0x6f
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x3
	.byte	0x32
	.4byte	0x11a
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x18
	.byte	0x3
	.byte	0x85
	.4byte	0x17b
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x86
	.4byte	0x21f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x87
	.4byte	0x21f
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x3
	.byte	0x88
	.4byte	0x209
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x3
	.byte	0x89
	.4byte	0x8b
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x3
	.byte	0x8c
	.4byte	0x21f
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x3
	.byte	0x8d
	.4byte	0x2f
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x3
	.byte	0x8e
	.4byte	0x2f
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x3
	.byte	0x33
	.4byte	0x186
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x20
	.byte	0x3
	.byte	0x91
	.4byte	0x1f3
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x92
	.4byte	0x209
	.byte	0
	.uleb128 0x8
	.string	"Sym"
	.byte	0x3
	.byte	0x93
	.4byte	0x209
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x3
	.byte	0x94
	.4byte	0x209
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x3
	.byte	0x95
	.4byte	0x209
	.byte	0xc
	.uleb128 0x8
	.string	"Org"
	.byte	0x3
	.byte	0x96
	.4byte	0x203
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x3
	.byte	0x97
	.4byte	0x21f
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x3
	.byte	0x9a
	.4byte	0x225
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x3
	.byte	0x9b
	.4byte	0x4f
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x3
	.byte	0x35
	.4byte	0x1fe
	.uleb128 0x9
	.4byte	.LASF32
	.uleb128 0xa
	.byte	0x4
	.4byte	0x9b
	.uleb128 0xa
	.byte	0x4
	.4byte	0x17b
	.uleb128 0xb
	.4byte	0x64
	.4byte	0x21f
	.uleb128 0xc
	.4byte	0x84
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x10f
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1f3
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x2f
	.4byte	0x4f
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25d
	.uleb128 0xe
	.string	"u"
	.byte	0x1
	.byte	0x2f
	.4byte	0x203
	.4byte	.LLST0
	.uleb128 0xf
	.string	"v"
	.byte	0x1
	.byte	0x2f
	.4byte	0x203
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x36
	.4byte	0x64
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b4
	.uleb128 0xf
	.string	"u"
	.byte	0x1
	.byte	0x36
	.4byte	0x203
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"v"
	.byte	0x1
	.byte	0x36
	.4byte	0x203
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"w"
	.byte	0x1
	.byte	0x36
	.4byte	0x203
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x42
	.4byte	0x64
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x2a
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x42
	.4byte	0x64
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x2d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x54
	.4byte	0x64
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30c
	.uleb128 0xf
	.string	"u"
	.byte	0x1
	.byte	0x54
	.4byte	0x203
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"v"
	.byte	0x1
	.byte	0x54
	.4byte	0x203
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"w"
	.byte	0x1
	.byte	0x54
	.4byte	0x203
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5a
	.4byte	0x64
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x5a
	.4byte	0x64
	.4byte	.LLST1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0x6d
	.4byte	0x64
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x363
	.uleb128 0xf
	.string	"u"
	.byte	0x1
	.byte	0x6d
	.4byte	0x203
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"v"
	.byte	0x1
	.byte	0x6d
	.4byte	0x203
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"w"
	.byte	0x1
	.byte	0x6d
	.4byte	0x203
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x79
	.4byte	0x64
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x2a
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x79
	.4byte	0x64
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x2d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8b
	.4byte	0x64
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bb
	.uleb128 0xf
	.string	"u"
	.byte	0x1
	.byte	0x8b
	.4byte	0x203
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"v"
	.byte	0x1
	.byte	0x8b
	.4byte	0x203
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"w"
	.byte	0x1
	.byte	0x8b
	.4byte	0x203
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x91
	.4byte	0x64
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x91
	.4byte	0x64
	.4byte	.LLST2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa0
	.4byte	0x4f
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f8
	.uleb128 0xe
	.string	"u"
	.byte	0x1
	.byte	0xa0
	.4byte	0x203
	.4byte	.LLST3
	.uleb128 0xf
	.string	"v"
	.byte	0x1
	.byte	0xa0
	.4byte	0x203
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"w"
	.byte	0x1
	.byte	0xa0
	.4byte	0x203
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0xd2
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.string	"o1"
	.byte	0x1
	.byte	0xd2
	.4byte	0x203
	.4byte	.LLST4
	.uleb128 0xe
	.string	"d1"
	.byte	0x1
	.byte	0xd2
	.4byte	0x203
	.4byte	.LLST5
	.uleb128 0xe
	.string	"o2"
	.byte	0x1
	.byte	0xd3
	.4byte	0x203
	.4byte	.LLST6
	.uleb128 0xe
	.string	"d2"
	.byte	0x1
	.byte	0xd3
	.4byte	0x203
	.4byte	.LLST7
	.uleb128 0xe
	.string	"v"
	.byte	0x1
	.byte	0xd4
	.4byte	0x203
	.4byte	.LLST8
	.uleb128 0x13
	.string	"z1"
	.byte	0x1
	.byte	0xda
	.4byte	0x64
	.4byte	.LLST9
	.uleb128 0x13
	.string	"z2"
	.byte	0x1
	.byte	0xda
	.4byte	0x64
	.4byte	.LLST10
	.uleb128 0x14
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x481
	.uleb128 0x15
	.string	"t"
	.byte	0x1
	.byte	0xe6
	.4byte	0x203
	.byte	0
	.uleb128 0x14
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x498
	.uleb128 0x15
	.string	"t"
	.byte	0x1
	.byte	0xfd
	.4byte	0x203
	.byte	0
	.uleb128 0x16
	.4byte	.LVL30
	.4byte	0x25d
	.4byte	0x4b8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL32
	.4byte	0x25d
	.4byte	0x4d8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL41
	.4byte	0x2b4
	.4byte	0x4f8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL43
	.4byte	0x2b4
	.4byte	0x518
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL61
	.4byte	0x30c
	.4byte	0x538
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL63
	.4byte	0x30c
	.4byte	0x558
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL71
	.4byte	0x363
	.4byte	0x578
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL73
	.4byte	0x363
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
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
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0xc
	.byte	0x75
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x21
	.byte	0x74
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x21
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0xc
	.byte	0x75
	.sleb128 48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x21
	.byte	0x74
	.sleb128 48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x21
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL30-1-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL41-1-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL32-1-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL63-1-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL73-1-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.4byte	0
	.4byte	0
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.4byte	0
	.4byte	0
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x5
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x21
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x5
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x21
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.4byte	0
	.4byte	0
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.4byte	0
	.4byte	0
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x5
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x21
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x5
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x21
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.4byte	0
	.4byte	0
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
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
.LASF15:
	.string	"GLUvertex"
.LASF40:
	.string	"__gl_vertCCW"
.LASF28:
	.string	"Lnext"
.LASF26:
	.string	"GLUhalfEdge"
.LASF8:
	.string	"GLdouble"
.LASF18:
	.string	"anEdge"
.LASF23:
	.string	"trail"
.LASF30:
	.string	"activeRegion"
.LASF19:
	.string	"data"
.LASF31:
	.string	"winding"
.LASF21:
	.string	"pqHandle"
.LASF41:
	.string	"GNU C 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF20:
	.string	"coords"
.LASF6:
	.string	"float"
.LASF43:
	.string	"__gl_edgeIntersect"
.LASF11:
	.string	"long long unsigned int"
.LASF2:
	.string	"unsigned char"
.LASF13:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF39:
	.string	"__gl_transSign"
.LASF0:
	.string	"double"
.LASF25:
	.string	"inside"
.LASF1:
	.string	"unsigned int"
.LASF34:
	.string	"__gl_edgeEval"
.LASF14:
	.string	"char"
.LASF22:
	.string	"GLUface"
.LASF24:
	.string	"marked"
.LASF35:
	.string	"gapL"
.LASF7:
	.string	"GLboolean"
.LASF36:
	.string	"gapR"
.LASF12:
	.string	"sizetype"
.LASF10:
	.string	"long long int"
.LASF37:
	.string	"__gl_edgeSign"
.LASF29:
	.string	"Lface"
.LASF27:
	.string	"Onext"
.LASF38:
	.string	"__gl_transEval"
.LASF4:
	.string	"short int"
.LASF33:
	.string	"__gl_vertLeq"
.LASF42:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/geom.c"
.LASF9:
	.string	"long int"
.LASF3:
	.string	"signed char"
.LASF32:
	.string	"ActiveRegion"
.LASF16:
	.string	"next"
.LASF17:
	.string	"prev"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
	.gnu_attribute 4, 1
