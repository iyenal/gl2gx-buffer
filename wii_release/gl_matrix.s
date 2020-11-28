	.file	"gl_matrix.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	computeZplanes, @function
computeZplanes:
.LFB67:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl_matrix.c"
	.loc 1 54 0
	.cfi_startproc
.LVL0:
.LBB6:
.LBB7:
	.loc 1 41 0
	lis 9,.LC1@ha
	lfs 11,12(3)
	lfs 12,.LC1@l(9)
.LBE7:
.LBE6:
	.loc 1 55 0
	lfs 0,40(3)
.LVL1:
.LBB10:
.LBB8:
	.loc 1 41 0
	fcmpu 7,11,12
.LBE8:
.LBE10:
	.loc 1 56 0
	lfs 13,44(3)
.LVL2:
.LBB11:
.LBB9:
	.loc 1 41 0
	bne- 7,.L2
	lfs 11,28(3)
	.loc 1 49 0
	li 9,0
	.loc 1 41 0
	fcmpu 7,11,12
	beq+ 7,.L7
.L2:
	.loc 1 44 0
	li 9,1
.L7:
	.loc 1 49 0
	stb 9,64(3)
.LBE9:
.LBE11:
	.loc 1 61 0
	lbz 9,64(3)
	cmpwi 7,9,0
	lis 9,.LC0@ha
	.loc 1 63 0
	lfs 12,.LC0@l(9)
	.loc 1 61 0
	bne+ 7,.L5
	.loc 1 63 0
	fadds 11,0,12
	.loc 1 64 0
	fsubs 0,0,12
.LVL3:
	.loc 1 63 0
	fdivs 11,13,11
	.loc 1 64 0
	fdivs 13,13,0
.LVL4:
	.loc 1 63 0
	stfs 11,72(3)
	.loc 1 64 0
	stfs 13,68(3)
	blr
.LVL5:
.L5:
	.loc 1 68 0
	fadds 11,13,12
	.loc 1 69 0
	fsubs 13,13,12
.LVL6:
	.loc 1 68 0
	fdivs 11,11,0
	.loc 1 69 0
	fdivs 0,13,0
.LVL7:
	.loc 1 68 0
	stfs 11,68(3)
	.loc 1 69 0
	stfs 0,72(3)
	blr
	.cfi_endproc
.LFE67:
	.size	computeZplanes, .-computeZplanes
	.align 2
	.globl CopyMtxToMtx44
	.type	CopyMtxToMtx44, @function
CopyMtxToMtx44:
.LFB64:
	.loc 1 13 0
	.cfi_startproc
.LVL8:
	.loc 1 13 0
	li 10,3
	mr 9,4
	mtctr 10
.LVL9:
.L10:
	.loc 1 19 0 discriminator 1
	lfs 0,0(3)
	addi 9,9,16
	addi 3,3,16
	stfs 0,-16(9)
.LVL10:
	lfs 0,-12(3)
	stfs 0,-12(9)
.LVL11:
	lfs 0,-8(3)
	stfs 0,-8(9)
.LVL12:
	lfs 0,-4(3)
	stfs 0,-4(9)
.LVL13:
	.loc 1 15 0 discriminator 1
	bdnz .L10
.LVL14:
	.loc 1 24 0 discriminator 1
	li 9,0
	stw 9,48(4)
.LVL15:
	stw 9,52(4)
.LVL16:
	stw 9,56(4)
.LVL17:
	stw 9,60(4)
.LVL18:
	blr
	.cfi_endproc
.LFE64:
	.size	CopyMtxToMtx44, .-CopyMtxToMtx44
	.align 2
	.globl CopyMtx44ToMtx
	.type	CopyMtx44ToMtx, @function
CopyMtx44ToMtx:
.LFB65:
	.loc 1 28 0
	.cfi_startproc
.LVL19:
	.loc 1 28 0
	li 9,3
	mtctr 9
.LVL20:
.L13:
	.loc 1 34 0 discriminator 1
	lfs 0,0(3)
	addi 4,4,16
	addi 3,3,16
	stfs 0,-16(4)
.LVL21:
	lfs 0,-12(3)
	stfs 0,-12(4)
.LVL22:
	lfs 0,-8(3)
	stfs 0,-8(4)
.LVL23:
	lfs 0,-4(3)
	stfs 0,-4(4)
.LVL24:
	.loc 1 30 0 discriminator 1
	bdnz .L13
.LVL25:
	.loc 1 37 0
	blr
	.cfi_endproc
.LFE65:
	.size	CopyMtx44ToMtx, .-CopyMtx44ToMtx
	.align 2
	.globl glFrustum
	.type	glFrustum, @function
glFrustum:
.LFB68:
	.loc 1 79 0
	.cfi_startproc
.LVL26:
	stwu 1,-136(1)
	.cfi_def_cfa_offset 136
	mflr 0
	.loc 1 80 0
	lis 9,cur_state@ha
	.loc 1 79 0
	addi 11,1,136
	stw 0,140(1)
	.cfi_offset 65, 4
	bl _savefpr_26
	.loc 1 80 0
	lwz 9,cur_state@l(9)
	.loc 1 79 0
	stmw 29,76(1)
	.cfi_offset 58, -48
	.cfi_offset 59, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 29, -60
	.cfi_offset 30, -56
	.cfi_offset 31, -52
	.loc 1 80 0
	andi. 29,9,1
	beq+ 0,.L16
	.loc 1 80 0 is_stmt 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,80
	bl _glSetErrorEx
.LVL27:
	b .L15
.LVL28:
.L16:
	.loc 1 82 0 is_stmt 1
	lis 9,cur_mode@ha
	fmr 30,1
	lwz 9,cur_mode@l(9)
	fmr 31,2
	fmr 27,3
	cmpwi 7,9,5889
	fmr 26,4
	fmr 28,5
	fmr 29,6
	bne+ 7,.L18
.LBB12:
	.loc 1 84 0
	lis 30,projection_stack@ha
	la 30,projection_stack@l(30)
	mr 3,30
	bl TopPrjMtx
.LVL29:
	mr 31,3
.LVL30:
	.loc 1 85 0
	mr 3,30
.LVL31:
	bl TopMtx44
.LVL32:
	.loc 1 87 0
	cmpwi 7,3,0
	beq- 7,.L15
	.loc 1 92 0
	frsp 28,28
.LVL33:
	frsp 29,29
.LVL34:
	frsp 1,26
	frsp 2,27
	frsp 3,30
	frsp 4,31
	fmr 5,28
	fmr 6,29
	bl guFrustum
.LVL35:
	.loc 1 93 0
	stb 29,64(31)
	.loc 1 95 0
	stfs 28,68(31)
	.loc 1 96 0
	stfs 29,72(31)
.LBE12:
	b .L15
.LVL36:
.L18:
.LBB13:
	.loc 1 101 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL37:
	.loc 1 103 0
	frsp 1,26
	frsp 2,27
	.loc 1 101 0
	mr 31,3
.LVL38:
	.loc 1 103 0
	frsp 3,30
	addi 3,1,8
.LVL39:
	frsp 4,31
	frsp 5,28
	frsp 6,29
	bl guFrustum
.LVL40:
	.loc 1 105 0
	addi 3,1,8
	mr 4,31
	bl CopyMtx44ToMtx
.LVL41:
.L15:
.LBE13:
	.loc 1 107 0
	lmw 29,76(1)
	addi 11,1,136
	b _restfpr_26_x
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 65
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_endproc
.LFE68:
	.size	glFrustum, .-glFrustum
	.align 2
	.globl glOrtho
	.type	glOrtho, @function
glOrtho:
.LFB69:
	.loc 1 115 0
	.cfi_startproc
.LVL42:
	stwu 1,-128(1)
	.cfi_def_cfa_offset 128
	mflr 0
	.loc 1 116 0
	lis 9,cur_state@ha
	.loc 1 115 0
	addi 11,1,128
	stw 0,132(1)
	.cfi_offset 65, 4
	bl _savefpr_26
	.loc 1 116 0
	lwz 9,cur_state@l(9)
	.loc 1 115 0
	stw 31,76(1)
	.cfi_offset 58, -48
	.cfi_offset 59, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 31, -52
	.loc 1 116 0
	andi. 10,9,1
	beq+ 0,.L24
	.loc 1 116 0 is_stmt 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,116
	b .L37
.L24:
	.loc 1 118 0 is_stmt 1
	fcmpu 7,1,2
	fmr 30,1
	fmr 31,2
	beq- 7,.L26
	.loc 1 118 0 is_stmt 0 discriminator 1
	fcmpu 7,3,4
	fmr 29,3
	fmr 28,4
	bne+ 7,.L27
.L26:
	.loc 1 120 0 is_stmt 1
	lis 4,.LC2@ha
	li 3,1281
	la 4,.LC2@l(4)
	li 5,120
.L37:
	bl _glSetErrorEx
.LVL43:
	.loc 1 121 0
	b .L23
.LVL44:
.L27:
	.loc 1 124 0
	lis 9,cur_mode@ha
	fmr 26,5
	lwz 9,cur_mode@l(9)
	fmr 27,6
	cmpwi 7,9,5889
	bne+ 7,.L28
.LBB14:
	.loc 1 126 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopPrjMtx
.LVL45:
	.loc 1 128 0
	mr. 31,3
	beq- 0,.L23
	.loc 1 134 0
	frsp 26,26
.LVL46:
	frsp 27,27
.LVL47:
	frsp 1,28
	frsp 2,29
	frsp 3,30
	frsp 4,31
	fmr 5,26
	fmr 6,27
	bl guOrtho
.LVL48:
	.loc 1 135 0
	li 9,1
	stb 9,64(31)
	.loc 1 137 0
	stfs 26,68(31)
	.loc 1 138 0
	stfs 27,72(31)
.LBE14:
	b .L23
.LVL49:
.L28:
.LBB15:
	.loc 1 143 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL50:
	.loc 1 145 0
	mr. 31,3
	beq- 0,.L23
	.loc 1 150 0
	frsp 1,28
	addi 3,1,8
.LVL51:
	frsp 2,29
	frsp 3,30
	frsp 4,31
	frsp 5,26
	frsp 6,27
	bl guOrtho
.LVL52:
	.loc 1 152 0
	addi 3,1,8
	mr 4,31
	bl CopyMtx44ToMtx
.LVL53:
.L23:
.LBE15:
	.loc 1 154 0
	lwz 31,76(1)
	addi 11,1,128
	b _restfpr_26_x
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 65
	.cfi_restore 31
	.cfi_endproc
.LFE69:
	.size	glOrtho, .-glOrtho
	.align 2
	.globl glMatrixMode
	.type	glMatrixMode, @function
glMatrixMode:
.LFB70:
	.loc 1 157 0
	.cfi_startproc
.LVL54:
	.loc 1 158 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L39
	.loc 1 158 0 is_stmt 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
.LVL55:
	la 4,.LC2@l(4)
	li 5,158
	b .L47
.LVL56:
.L39:
	.loc 1 160 0 is_stmt 1
	cmplwi 7,3,5889
	beq- 7,.L41
	cmplwi 7,3,5890
	beq- 7,.L42
	cmplwi 7,3,5888
	bne+ 7,.L45
	.loc 1 163 0
	lis 10,model_stack@ha
	la 10,model_stack@l(10)
	b .L46
.L41:
	.loc 1 166 0
	lis 10,projection_stack@ha
	la 10,projection_stack@l(10)
	b .L46
.L42:
	.loc 1 169 0
	lis 9,cur_tex@ha
	lwz 10,cur_tex@l(9)
	lis 9,texture_stack@ha
	la 9,texture_stack@l(9)
	slwi 10,10,4
	add 10,10,9
.L46:
	lis 9,curmtx@ha
	stw 10,curmtx@l(9)
	.loc 1 177 0
	lis 9,cur_mode@ha
	stw 3,cur_mode@l(9)
	blr
.L45:
	.loc 1 172 0
	lis 4,.LC2@ha
	li 3,1280
.LVL57:
	la 4,.LC2@l(4)
	li 5,172
.L47:
	.loc 1 178 0
	.loc 1 172 0
	b _glSetErrorEx
.LVL58:
	.cfi_endproc
.LFE70:
	.size	glMatrixMode, .-glMatrixMode
	.align 2
	.globl glLoadIdentity
	.type	glLoadIdentity, @function
glLoadIdentity:
.LFB71:
	.loc 1 180 0
	.cfi_startproc
	.loc 1 181 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L49
	.loc 1 181 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,181
	b _glSetErrorEx
.L49:
	.loc 1 183 0
	lis 9,cur_mode@ha
	.loc 1 180 0
	mflr 0
	.loc 1 183 0
	lwz 9,cur_mode@l(9)
	.loc 1 180 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 183 0
	cmpwi 7,9,5889
	.loc 1 180 0
	stw 0,20(1)
	stw 31,12(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	.loc 1 183 0
	bne+ 7,.L50
.LBB16:
	.loc 1 185 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopPrjMtx
	.loc 1 187 0
	mr. 31,3
	beq- 0,.L48
	.loc 1 196 0
	li 4,0
	li 5,64
	bl memset
	.loc 1 200 0
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	.loc 1 203 0
	li 9,1
	stb 9,64(31)
	.loc 1 205 0
	lis 9,.LC3@ha
	.loc 1 200 0
	stfs 0,0(31)
	stfs 0,20(31)
	stfs 0,40(31)
	stfs 0,60(31)
	.loc 1 204 0
	stfs 0,68(31)
	.loc 1 205 0
	lfs 0,.LC3@l(9)
	stfs 0,72(31)
.LBE16:
	b .L48
.L50:
.LBB17:
	.loc 1 209 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 211 0
	cmpwi 7,3,0
	beq- 7,.L48
.LBE17:
	.loc 1 218 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
.LBB18:
	.loc 1 216 0
	b ps_guMtxIdentity
.L48:
	.cfi_restore_state
.LBE18:
	.loc 1 218 0
	addi 11,1,16
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
	.cfi_endproc
.LFE71:
	.size	glLoadIdentity, .-glLoadIdentity
	.align 2
	.globl glLoadMatrixf
	.type	glLoadMatrixf, @function
glLoadMatrixf:
.LFB72:
	.loc 1 221 0
	.cfi_startproc
	.loc 1 222 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 8,9,1
	beq+ 0,.L59
	.loc 1 222 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,222
	b _glSetErrorEx
.L59:
	.loc 1 226 0
	lis 9,cur_mode@ha
	.loc 1 221 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.loc 1 226 0
	lwz 9,cur_mode@l(9)
	.loc 1 221 0
	mflr 0
	stmw 30,8(1)
	.cfi_register 65, 0
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	lis 30,curmtx@ha
	.loc 1 226 0
	cmpwi 7,9,5889
	mr 31,3
	.loc 1 221 0
	stw 0,20(1)
	.cfi_offset 65, 4
.LBB19:
	.loc 1 228 0
	lwz 3,curmtx@l(30)
.LBE19:
	.loc 1 226 0
	bne+ 7,.L60
.LBB20:
	.loc 1 228 0
	bl TopMtx44
	.loc 1 230 0
	cmpwi 0,3,0
	beq- 0,.L58
	li 9,0
.L62:
.LBE20:
	.loc 1 221 0 discriminator 1
	li 8,4
	slwi 7,9,2
	mtctr 8
	add 7,31,7
	li 10,0
.L65:
.LBB21:
	.loc 1 239 0 discriminator 2
	lfsx 0,7,10
	slwi 5,10,2
	add 8,3,9
	addi 10,10,4
	stfsx 0,8,5
	.loc 1 237 0 discriminator 2
	bdnz .L65
	.loc 1 235 0
	cmpwi 7,9,12
	addi 9,9,4
	bne+ 7,.L62
	.loc 1 243 0
	lwz 3,curmtx@l(30)
	bl TopPrjMtx
.LBE21:
	.loc 1 266 0
	lwz 0,20(1)
	lmw 30,8(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
.LBB22:
	.loc 1 243 0
	b computeZplanes
.L60:
	.cfi_restore_state
.LBE22:
.LBB23:
	.loc 1 247 0
	bl TopMtx
	.loc 1 249 0
	cmpwi 0,3,0
	beq- 0,.L58
	li 9,4
	addi 3,3,-4
	mtctr 9
.L66:
	.loc 1 261 0 discriminator 1
	lfs 0,0(31)
	addi 31,31,16
	stfsu 0,4(3)
	lfs 0,-12(31)
	stfs 0,16(3)
	lfs 0,-8(31)
	stfs 0,32(3)
	.loc 1 257 0 discriminator 1
	bdnz .L66
.L58:
.LBE23:
	.loc 1 266 0
	addi 11,1,16
	b _restgpr_30_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 65
	.cfi_endproc
.LFE72:
	.size	glLoadMatrixf, .-glLoadMatrixf
	.align 2
	.globl glLoadMatrixd
	.type	glLoadMatrixd, @function
glLoadMatrixd:
.LFB73:
	.loc 1 269 0
	.cfi_startproc
	.loc 1 270 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 7,9,1
	beq+ 0,.L77
	.loc 1 270 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,270
	b _glSetErrorEx
.L77:
	.loc 1 274 0
	lis 9,cur_mode@ha
	.loc 1 269 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.loc 1 274 0
	lwz 9,cur_mode@l(9)
	.loc 1 269 0
	mflr 0
	stmw 30,8(1)
	.cfi_register 65, 0
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	lis 31,curmtx@ha
	.loc 1 274 0
	cmpwi 7,9,5889
	mr 30,3
	.loc 1 269 0
	stw 0,20(1)
	.cfi_offset 65, 4
.LBB24:
	.loc 1 276 0
	lwz 3,curmtx@l(31)
.LBE24:
	.loc 1 274 0
	bne+ 7,.L78
.LBB25:
	.loc 1 276 0
	bl TopMtx44
	.loc 1 278 0
	cmpwi 0,3,0
	beq- 0,.L76
	li 9,0
.L80:
.LBE25:
	.loc 1 269 0 discriminator 1
	li 7,4
	slwi 8,9,3
	mtctr 7
	add 8,30,8
	li 10,0
.L83:
.LBB26:
	.loc 1 287 0 discriminator 2
	lfdx 13,8,10
	slwi 6,10,1
	add 5,3,9
	addi 10,10,8
	frsp 0,13
	stfsx 0,5,6
	.loc 1 285 0 discriminator 2
	bdnz .L83
	.loc 1 283 0
	cmpwi 7,9,12
	addi 9,9,4
	bne+ 7,.L80
	.loc 1 291 0
	lwz 3,curmtx@l(31)
	bl TopPrjMtx
.LBE26:
	.loc 1 311 0
	lwz 0,20(1)
	lmw 30,8(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
.LBB27:
	.loc 1 291 0
	b computeZplanes
.L78:
	.cfi_restore_state
.LBE27:
.LBB28:
	.loc 1 295 0
	bl TopMtx
	.loc 1 297 0
	cmpwi 0,3,0
	beq- 0,.L76
	li 10,0
.L84:
	slwi 8,10,3
.LBE28:
.LBB29:
	.loc 1 278 0 discriminator 1
	li 9,0
	add 8,30,8
.L86:
.LBE29:
.LBB30:
	.loc 1 306 0 discriminator 2
	lfdx 13,8,9
	.loc 1 304 0 discriminator 2
	cmpwi 7,9,16
	slwi 6,9,1
	add 5,3,10
	.loc 1 306 0 discriminator 2
	frsp 0,13
	.loc 1 304 0 discriminator 2
	addi 9,9,8
	.loc 1 306 0 discriminator 2
	stfsx 0,5,6
	.loc 1 304 0 discriminator 2
	bne+ 7,.L86
	.loc 1 302 0
	cmpwi 7,10,12
	addi 10,10,4
	bne+ 7,.L84
.L76:
.LBE30:
	.loc 1 311 0
	addi 11,1,16
	b _restgpr_30_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 65
	.cfi_endproc
.LFE73:
	.size	glLoadMatrixd, .-glLoadMatrixd
	.align 2
	.globl glPopMatrix
	.type	glPopMatrix, @function
glPopMatrix:
.LFB79:
	.loc 1 493 0
	.cfi_startproc
	.loc 1 494 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L100
	.loc 1 494 0 is_stmt 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,494
	.loc 1 497 0 is_stmt 1 discriminator 1
	.loc 1 494 0 discriminator 1
	b _glSetErrorEx
.LVL59:
.L100:
	.loc 1 496 0
	lis 9,curmtx@ha
	.loc 1 497 0
	.loc 1 496 0
	lwz 3,curmtx@l(9)
	b Pop
.LVL60:
	.cfi_endproc
.LFE79:
	.size	glPopMatrix, .-glPopMatrix
	.align 2
	.globl glPushMatrix
	.type	glPushMatrix, @function
glPushMatrix:
.LFB80:
	.loc 1 499 0
	.cfi_startproc
	.loc 1 501 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L102
	.loc 1 501 0 is_stmt 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,501
	.loc 1 504 0 is_stmt 1 discriminator 1
	.loc 1 501 0 discriminator 1
	b _glSetErrorEx
.LVL61:
.L102:
	.loc 1 503 0
	lis 9,curmtx@ha
	.loc 1 504 0
	.loc 1 503 0
	lwz 3,curmtx@l(9)
	b Push
.LVL62:
	.cfi_endproc
.LFE80:
	.size	glPushMatrix, .-glPushMatrix
	.align 2
	.globl _glGetMatrixf
	.type	_glGetMatrixf, @function
_glGetMatrixf:
.LFB81:
	.loc 1 509 0
	.cfi_startproc
.LVL63:
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.cfi_register 65, 0
	.cfi_offset 31, -4
	.loc 1 512 0
	mr. 31,4
	.loc 1 509 0
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 512 0
	beq- 0,.L103
	.loc 1 515 0
	cmplwi 7,3,2982
	bne+ 7,.L103
.LBB31:
	.loc 1 519 0
	lis 3,model_stack@ha
.LVL64:
	la 3,model_stack@l(3)
	bl TopMtx
.LVL65:
	.loc 1 526 0
	li 10,4
	mtctr 10
	addi 3,3,-4
.LVL66:
	li 9,0
.LVL67:
.L107:
	.loc 1 524 0 discriminator 1
	lfsu 0,4(3)
	addi 31,31,16
.LVL68:
	stfs 0,-16(31)
.LVL69:
	lfs 0,16(3)
	stfs 0,-12(31)
.LVL70:
	lfs 0,32(3)
	stfs 0,-8(31)
.LVL71:
	.loc 1 526 0 discriminator 1
	stw 9,-4(31)
	.loc 1 520 0 discriminator 1
	bdnz .L107
.LVL72:
.L103:
.LBE31:
	.loc 1 531 0
	addi 11,1,16
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
	.cfi_endproc
.LFE81:
	.size	_glGetMatrixf, .-_glGetMatrixf
	.align 2
	.globl CopyGLfloatToMtx
	.type	CopyGLfloatToMtx, @function
CopyGLfloatToMtx:
.LFB82:
	.loc 1 534 0
	.cfi_startproc
.LVL73:
	li 9,4
	addi 4,4,-4
.LVL74:
	mtctr 9
.LVL75:
.L114:
	.loc 1 541 0 discriminator 1
	lfs 0,0(3)
	addi 3,3,16
.LVL76:
	stfsu 0,4(4)
.LVL77:
	lfs 0,-12(3)
	stfs 0,16(4)
.LVL78:
	lfs 0,-8(3)
	stfs 0,32(4)
.LVL79:
	.loc 1 537 0 discriminator 1
	bdnz .L114
	.loc 1 545 0
	blr
	.cfi_endproc
.LFE82:
	.size	CopyGLfloatToMtx, .-CopyGLfloatToMtx
	.align 2
	.globl CopyGLfloatToMtx44
	.type	CopyGLfloatToMtx44, @function
CopyGLfloatToMtx44:
.LFB83:
	.loc 1 548 0
	.cfi_startproc
.LVL80:
	.loc 1 548 0
	li 9,0
.LVL81:
.L117:
	.loc 1 548 0 is_stmt 0 discriminator 1
	li 8,4
	slwi 7,9,2
	mtctr 8
	add 7,3,7
.LVL82:
	li 10,0
.LVL83:
.L120:
	.loc 1 555 0 is_stmt 1 discriminator 2
	lfsx 0,7,10
	slwi 6,10,2
	add 8,4,9
	addi 10,10,4
.LVL84:
	stfsx 0,8,6
	.loc 1 553 0 discriminator 2
	bdnz .L120
.LVL85:
	.loc 1 551 0
	cmpwi 7,9,12
	addi 9,9,4
	bne+ 7,.L117
	blr
	.cfi_endproc
.LFE83:
	.size	CopyGLfloatToMtx44, .-CopyGLfloatToMtx44
	.align 2
	.globl glMultMatrixf
	.type	glMultMatrixf, @function
glMultMatrixf:
.LFB78:
	.loc 1 430 0
	.cfi_startproc
.LVL86:
	.loc 1 431 0
	lis 9,cur_state@ha
	.loc 1 430 0
	mflr 0
	.loc 1 431 0
	lwz 9,cur_state@l(9)
	.loc 1 430 0
	stwu 1,-152(1)
	.cfi_def_cfa_offset 152
	.cfi_register 65, 0
	.loc 1 431 0
	andi. 5,9,1
	.loc 1 430 0
	stw 0,156(1)
	stmw 28,136(1)
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.loc 1 431 0
	beq+ 0,.L123
	.loc 1 431 0 is_stmt 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
.LVL87:
	la 4,.LC2@l(4)
	li 5,431
	bl _glSetErrorEx
.LVL88:
	b .L122
.LVL89:
.L123:
	.loc 1 434 0 is_stmt 1
	lis 9,cur_mode@ha
	lis 31,curmtx@ha
	lwz 9,cur_mode@l(9)
	mr 29,3
.LBB37:
.LBB38:
.LBB39:
	.loc 1 436 0
	lwz 3,curmtx@l(31)
.LVL90:
.LBE39:
.LBE38:
.LBE37:
	.loc 1 434 0
	cmpwi 7,9,5889
	bne+ 7,.L125
.LVL91:
.LBB42:
.LBB41:
.LBB40:
	.loc 1 436 0
	bl TopMtx44
.LVL92:
	.loc 1 438 0
	mr. 28,3
	beq- 0,.L122
.LVL93:
	.loc 1 448 0
	addi 30,1,72
	mr 3,29
.LVL94:
	mr 4,30
	bl CopyGLfloatToMtx44
.LVL95:
	addi 8,1,8
	mr 6,28
	mr 9,8
.LVL96:
.L127:
	.loc 1 459 0
	li 10,0
.LVL97:
.L133:
	lis 5,.LC1@ha
	li 7,0
	lfs 0,.LC1@l(5)
	li 5,4
	mtctr 5
.LVL98:
.L129:
	slwi 4,7,2
	add 5,30,10
	lfsx 12,6,7
	addi 7,7,4
	lfsx 13,5,4
	fmadds 0,12,13,0
	.loc 1 457 0
	bdnz .L129
	.loc 1 454 0
	cmpwi 7,10,12
	stfsx 0,8,10
	addi 10,10,4
	bne+ 7,.L133
	addi 8,8,16
	addi 6,6,16
	.loc 1 452 0
	cmplw 7,8,30
	bne+ 7,.L127
	li 10,4
	mr 3,28
	mtctr 10
.L132:
.LVL99:
	.loc 1 468 0
	lfs 0,0(9)
	addi 3,3,16
	addi 9,9,16
	stfs 0,-16(3)
.LVL100:
	lfs 0,-12(9)
	stfs 0,-12(3)
.LVL101:
	lfs 0,-8(9)
	stfs 0,-8(3)
.LVL102:
	lfs 0,-4(9)
	stfs 0,-4(3)
.LVL103:
	.loc 1 464 0
	bdnz .L132
	.loc 1 472 0
	lwz 3,curmtx@l(31)
	bl TopPrjMtx
.LVL104:
	bl computeZplanes
.LVL105:
	b .L122
.LVL106:
.L125:
.LBE40:
.LBE41:
.LBE42:
.LBB43:
	.loc 1 476 0
	bl TopMtx
.LVL107:
	.loc 1 479 0
	mr. 31,3
	beq- 0,.L122
	.loc 1 487 0
	mr 3,29
.LVL108:
	addi 4,1,8
	bl CopyGLfloatToMtx
.LVL109:
	.loc 1 489 0
	mr 3,31
	addi 4,1,8
	mr 5,31
	bl ps_guMtxConcat
.LVL110:
.L122:
.LBE43:
	.loc 1 491 0
	addi 11,1,152
	b _restgpr_28_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 65
	.cfi_endproc
.LFE78:
	.size	glMultMatrixf, .-glMultMatrixf
	.align 2
	.globl glTranslatef
	.type	glTranslatef, @function
glTranslatef:
.LFB74:
	.loc 1 313 0
	.cfi_startproc
.LVL111:
	stwu 1,-104(1)
	.cfi_def_cfa_offset 104
	mflr 0
	.loc 1 314 0
	lis 9,cur_state@ha
	.loc 1 313 0
	addi 11,1,104
	stw 0,108(1)
	.cfi_offset 65, 4
	bl _savefpr_29
	.loc 1 314 0
	lwz 9,cur_state@l(9)
	.loc 1 313 0
	stw 31,76(1)
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 31, -28
	.loc 1 314 0
	andi. 10,9,1
	beq+ 0,.L146
	.loc 1 314 0 is_stmt 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,314
	bl _glSetErrorEx
.LVL112:
	b .L145
.LVL113:
.L146:
	.loc 1 316 0 is_stmt 1
	lis 9,cur_mode@ha
	fmr 29,1
	lwz 9,cur_mode@l(9)
	fmr 30,2
	fmr 31,3
	cmpwi 7,9,5889
	bne+ 7,.L148
.LBB44:
	.loc 1 321 0
	lis 9,.LC0@ha
	.loc 1 326 0
	addi 3,1,8
	.loc 1 321 0
	lfs 0,.LC0@l(9)
	li 9,0
	stw 9,24(1)
	stfs 0,8(1)
	stw 9,40(1)
	stfs 1,56(1)
	.loc 1 322 0
	stw 9,12(1)
	stfs 0,28(1)
	stw 9,44(1)
	stfs 2,60(1)
	.loc 1 323 0
	stw 9,16(1)
	stw 9,32(1)
	stfs 0,48(1)
	stfs 3,64(1)
	.loc 1 324 0
	stw 9,20(1)
	stw 9,36(1)
	stw 9,52(1)
	stfs 0,68(1)
	.loc 1 326 0
	bl glMultMatrixf
.LVL114:
.LBE44:
	b .L145
.LVL115:
.L148:
.LBB45:
	.loc 1 332 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL116:
	.loc 1 334 0
	mr. 31,3
	beq- 0,.L145
	.loc 1 339 0
	addi 3,1,8
.LVL117:
	bl ps_guMtxIdentity
.LVL118:
	.loc 1 340 0
	fmr 1,29
	fmr 2,30
	addi 3,1,8
	fmr 3,31
	bl ps_guMtxTrans
.LVL119:
	.loc 1 341 0
	mr 3,31
	addi 4,1,8
	mr 5,31
	bl ps_guMtxConcat
.LVL120:
.L145:
.LBE45:
	.loc 1 343 0
	lwz 31,76(1)
	addi 11,1,104
	b _restfpr_29_x
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 65
	.cfi_restore 31
	.cfi_endproc
.LFE74:
	.size	glTranslatef, .-glTranslatef
	.align 2
	.globl glTranslated
	.type	glTranslated, @function
glTranslated:
.LFB75:
	.loc 1 346 0
	.cfi_startproc
.LVL121:
	.loc 1 347 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L155
	.loc 1 347 0 is_stmt 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,347
	.loc 1 350 0 is_stmt 1 discriminator 1
	.loc 1 347 0 discriminator 1
	b _glSetErrorEx
.LVL122:
.L155:
	.loc 1 349 0
	frsp 1,1
.LVL123:
	.loc 1 350 0
	.loc 1 349 0
	frsp 2,2
.LVL124:
	frsp 3,3
.LVL125:
	b glTranslatef
.LVL126:
	.cfi_endproc
.LFE75:
	.size	glTranslated, .-glTranslated
	.align 2
	.globl glRotatef
	.type	glRotatef, @function
glRotatef:
.LFB76:
	.loc 1 352 0
	.cfi_startproc
.LVL127:
	stwu 1,-136(1)
	.cfi_def_cfa_offset 136
	mflr 0
	.loc 1 353 0
	lis 9,cur_state@ha
	.loc 1 352 0
	addi 11,1,136
	stw 0,140(1)
	.cfi_offset 65, 4
	bl _savefpr_27
	.loc 1 353 0
	lwz 9,cur_state@l(9)
	.loc 1 352 0
	stw 31,92(1)
	.cfi_offset 59, -40
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 31, -44
	.loc 1 353 0
	andi. 10,9,1
	beq+ 0,.L157
	.loc 1 353 0 is_stmt 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,353
	bl _glSetErrorEx
.LVL128:
	b .L156
.LVL129:
.L157:
	.loc 1 355 0 is_stmt 1
	lis 9,cur_mode@ha
	fmr 28,1
	lwz 9,cur_mode@l(9)
	fmr 31,2
	fmr 30,3
	cmpwi 7,9,5889
	fmr 29,4
	bne+ 7,.L159
.LBB46:
	.loc 1 358 0
	lis 9,.LC4@ha
	lfs 27,.LC4@l(9)
	fmuls 27,1,27
	fmr 1,27
.LVL130:
	bl sinf
.LVL131:
	fmr 28,1
.LVL132:
	.loc 1 359 0
	fmr 1,27
.LVL133:
	bl cosf
.LVL134:
	.loc 1 368 0
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	fmuls 12,31,31
	fmuls 9,30,31
	li 9,0
	fsubs 0,0,1
	.loc 1 372 0
	addi 3,1,8
	.loc 1 368 0
	fmuls 10,29,28
	stw 9,56(1)
	fmuls 11,31,29
	.loc 1 369 0
	stw 9,60(1)
	.loc 1 368 0
	fmadds 12,12,0,1
	.loc 1 370 0
	stw 9,64(1)
	.loc 1 369 0
	fmuls 31,31,28
.LVL135:
	.loc 1 371 0
	stw 9,20(1)
	stw 9,36(1)
	.loc 1 368 0
	stfs 12,8(1)
	fmadds 12,9,0,10
	.loc 1 369 0
	fmsubs 10,9,0,10
	.loc 1 371 0
	stw 9,52(1)
	stw 9,68(1)
	.loc 1 368 0
	stfs 12,24(1)
	fmuls 12,30,28
	.loc 1 369 0
	stfs 10,12(1)
	fmuls 10,30,30
	fmuls 30,30,29
.LVL136:
	.loc 1 370 0
	fmuls 29,29,29
.LVL137:
	.loc 1 369 0
	fmadds 10,10,0,1
	.loc 1 368 0
	fmsubs 8,11,0,12
	.loc 1 370 0
	fmadds 12,11,0,12
	.loc 1 369 0
	stfs 10,28(1)
	fmadds 10,30,0,31
	.loc 1 370 0
	fmsubs 31,30,0,31
	.loc 1 368 0
	stfs 8,40(1)
	.loc 1 370 0
	fmadds 0,29,0,1
	stfs 12,16(1)
	.loc 1 369 0
	stfs 10,44(1)
	.loc 1 370 0
	stfs 31,32(1)
	stfs 0,48(1)
	.loc 1 372 0
	bl glMultMatrixf
.LVL138:
.LBE46:
	b .L156
.LVL139:
.L159:
.LBB47:
	.loc 1 379 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL140:
	.loc 1 381 0
	mr. 31,3
	beq- 0,.L156
	.loc 1 391 0
	addi 3,1,8
.LVL141:
	.loc 1 388 0
	stfs 31,72(1)
	.loc 1 389 0
	stfs 30,76(1)
	.loc 1 390 0
	stfs 29,80(1)
	.loc 1 391 0
	bl ps_guMtxIdentity
.LVL142:
	.loc 1 392 0
	lis 9,.LC4@ha
	addi 3,1,8
	lfs 1,.LC4@l(9)
	addi 4,1,72
	fmuls 1,28,1
	bl ps_guMtxRotAxisRad
.LVL143:
	.loc 1 393 0
	mr 3,31
	addi 4,1,8
	mr 5,31
	bl ps_guMtxConcat
.LVL144:
.L156:
.LBE47:
	.loc 1 395 0
	lwz 31,92(1)
	addi 11,1,136
	b _restfpr_27_x
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 65
	.cfi_restore 31
	.cfi_endproc
.LFE76:
	.size	glRotatef, .-glRotatef
	.align 2
	.globl glScalef
	.type	glScalef, @function
glScalef:
.LFB77:
	.loc 1 397 0
	.cfi_startproc
.LVL145:
	stwu 1,-104(1)
	.cfi_def_cfa_offset 104
	mflr 0
	.loc 1 398 0
	lis 9,cur_state@ha
	.loc 1 397 0
	addi 11,1,104
	stw 0,108(1)
	.cfi_offset 65, 4
	bl _savefpr_29
	.loc 1 398 0
	lwz 9,cur_state@l(9)
	.loc 1 397 0
	stw 31,76(1)
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 31, -28
	.loc 1 398 0
	andi. 10,9,1
	beq+ 0,.L166
	.loc 1 398 0 is_stmt 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,398
	bl _glSetErrorEx
.LVL146:
	b .L165
.LVL147:
.L166:
	.loc 1 400 0 is_stmt 1
	lis 9,cur_mode@ha
	fmr 29,1
	lwz 9,cur_mode@l(9)
	fmr 30,2
	fmr 31,3
	cmpwi 7,9,5889
	bne+ 7,.L168
.LBB48:
	.loc 1 405 0
	li 9,0
	.loc 1 410 0
	addi 3,1,8
	.loc 1 405 0
	stw 9,24(1)
	stw 9,40(1)
	stw 9,56(1)
	.loc 1 406 0
	stw 9,12(1)
	stw 9,44(1)
	stw 9,60(1)
	.loc 1 407 0
	stw 9,16(1)
	stw 9,32(1)
	stw 9,64(1)
	.loc 1 408 0
	stw 9,20(1)
	stw 9,36(1)
	stw 9,52(1)
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	.loc 1 405 0
	stfs 1,8(1)
	.loc 1 406 0
	stfs 2,28(1)
	.loc 1 407 0
	stfs 3,48(1)
	.loc 1 408 0
	stfs 0,68(1)
	.loc 1 410 0
	bl glMultMatrixf
.LVL148:
.LBE48:
	b .L165
.LVL149:
.L168:
.LBB49:
	.loc 1 416 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL150:
	.loc 1 418 0
	mr. 31,3
	beq- 0,.L165
	.loc 1 423 0
	addi 3,1,8
.LVL151:
	bl ps_guMtxIdentity
.LVL152:
	.loc 1 424 0
	fmr 1,29
	fmr 2,30
	addi 3,1,8
	fmr 3,31
	bl ps_guMtxScale
.LVL153:
	.loc 1 425 0
	mr 3,31
	addi 4,1,8
	mr 5,31
	bl ps_guMtxConcat
.LVL154:
.L165:
.LBE49:
	.loc 1 427 0
	lwz 31,76(1)
	addi 11,1,104
	b _restfpr_29_x
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 65
	.cfi_restore 31
	.cfi_endproc
.LFE77:
	.size	glScalef, .-glScalef
	.align 2
	.globl gluLookAt
	.type	gluLookAt, @function
gluLookAt:
.LFB84:
	.loc 1 571 0
	.cfi_startproc
.LVL155:
	.loc 1 573 0
	lis 9,cur_state@ha
	.loc 1 571 0
	mflr 0
	.loc 1 573 0
	lwz 9,cur_state@l(9)
	.loc 1 571 0
	stwu 1,-112(1)
	.cfi_def_cfa_offset 112
	.cfi_register 65, 0
.LVL156:
	.loc 1 573 0
	andi. 10,9,1
	.loc 1 571 0
	stw 0,116(1)
	stw 31,108(1)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	.loc 1 573 0
	beq+ 0,.L175
	.loc 1 573 0 is_stmt 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,573
	bl _glSetErrorEx
.LVL157:
	b .L174
.LVL158:
.L175:
	.loc 1 579 0 is_stmt 1
	lis 9,cur_mode@ha
	.loc 1 576 0
	lfd 13,120(1)
	.loc 1 579 0
	lwz 9,cur_mode@l(9)
	.loc 1 575 0
	frsp 1,1
.LVL159:
	frsp 2,2
.LVL160:
	.loc 1 579 0
	cmpwi 7,9,5889
	.loc 1 575 0
	frsp 3,3
.LVL161:
	.loc 1 576 0
	frsp 7,7
.LVL162:
	.loc 1 575 0
	stfs 1,80(1)
	.loc 1 576 0
	frsp 8,8
.LVL163:
	.loc 1 575 0
	stfs 2,84(1)
	.loc 1 576 0
	frsp 0,13
	.loc 1 575 0
	stfs 3,88(1)
	.loc 1 577 0
	frsp 4,4
.LVL164:
	.loc 1 576 0
	stfs 7,68(1)
	.loc 1 577 0
	frsp 5,5
.LVL165:
	.loc 1 576 0
	stfs 8,72(1)
	.loc 1 577 0
	frsp 6,6
.LVL166:
	.loc 1 576 0
	stfs 0,76(1)
	.loc 1 577 0
	stfs 4,56(1)
	stfs 5,60(1)
	stfs 6,64(1)
	.loc 1 579 0
	bne+ 7,.L177
.LBB50:
	.loc 1 581 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopMtx44
.LVL167:
	.loc 1 584 0
	mr. 31,3
	beq- 0,.L174
	.loc 1 589 0
	addi 5,1,68
	addi 6,1,56
	addi 3,1,8
.LVL168:
	addi 4,1,80
	bl guLookAt
.LVL169:
	.loc 1 591 0
	addi 3,1,8
	mr 4,31
	bl CopyMtxToMtx44
.LVL170:
	.loc 1 593 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopPrjMtx
.LVL171:
	bl computeZplanes
.LVL172:
.LBE50:
	b .L174
.LVL173:
.L177:
.LBB51:
	.loc 1 597 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL174:
	.loc 1 599 0
	cmpwi 7,3,0
	beq- 7,.L174
	.loc 1 604 0
	addi 4,1,80
	addi 5,1,68
	addi 6,1,56
	bl guLookAt
.LVL175:
.L174:
.LBE51:
	.loc 1 606 0
	addi 11,1,112
.LVL176:
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
	.cfi_endproc
.LFE84:
	.size	gluLookAt, .-gluLookAt
	.align 2
	.globl gluPerspective
	.type	gluPerspective, @function
gluPerspective:
.LFB85:
	.loc 1 611 0
	.cfi_startproc
.LVL177:
	stwu 1,-112(1)
	.cfi_def_cfa_offset 112
	mflr 0
	.loc 1 612 0
	lis 9,cur_state@ha
	.loc 1 611 0
	addi 11,1,112
	stw 0,116(1)
	.cfi_offset 65, 4
	bl _savefpr_28
	.loc 1 612 0
	lwz 9,cur_state@l(9)
	.loc 1 611 0
	stmw 30,72(1)
	.cfi_offset 60, -32
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.cfi_offset 30, -40
	.cfi_offset 31, -36
	.loc 1 612 0
	andi. 30,9,1
	beq+ 0,.L189
	.loc 1 612 0 is_stmt 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,612
	bl _glSetErrorEx
.LVL178:
	b .L188
.LVL179:
.L189:
	.loc 1 614 0 is_stmt 1
	lis 9,cur_mode@ha
	fmr 28,1
	lwz 9,cur_mode@l(9)
	fmr 29,2
	fmr 30,3
	cmpwi 7,9,5889
	fmr 31,4
	bne+ 7,.L191
.LBB52:
	.loc 1 616 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopPrjMtx
.LVL180:
	.loc 1 618 0
	mr. 31,3
	beq- 0,.L188
	.loc 1 623 0
	frsp 30,30
.LVL181:
	frsp 31,31
.LVL182:
	frsp 1,28
	frsp 2,29
	fmr 3,30
	fmr 4,31
	bl guPerspective
.LVL183:
	.loc 1 624 0
	stb 30,64(31)
	.loc 1 626 0
	stfs 30,68(31)
	.loc 1 627 0
	stfs 31,72(31)
.LBE52:
	b .L188
.LVL184:
.L191:
.LBB53:
	.loc 1 632 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL185:
	.loc 1 634 0
	frsp 1,28
	frsp 2,29
	.loc 1 632 0
	mr 31,3
.LVL186:
	.loc 1 634 0
	frsp 3,30
	addi 3,1,8
.LVL187:
	frsp 4,31
	bl guPerspective
.LVL188:
	.loc 1 636 0
	addi 3,1,8
	mr 4,31
	bl CopyMtx44ToMtx
.LVL189:
.L188:
.LBE53:
	.loc 1 638 0
	lmw 30,72(1)
	addi 11,1,112
	b _restfpr_28_x
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 65
	.cfi_restore 31
	.cfi_restore 30
	.cfi_endproc
.LFE85:
	.size	gluPerspective, .-gluPerspective
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1065353216
.LC1:
	.4byte	0
.LC3:
	.4byte	-1082130432
.LC4:
	.4byte	1016003125
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl_matrix.c"
	.section	".text"
.Letext0:
	.file 2 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h"
	.file 3 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\stdint.h"
	.file 4 "D:\\devkitPro\\/libogc/include/gctypes.h"
	.file 5 "D:\\devkitPro\\/libogc/include/ogc/gu.h"
	.file 6 "D:\\devkitPro\\/libogc/include/ogc/gx.h"
	.file 7 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/include/GL/gl.h"
	.file 8 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/include/glint.h"
	.file 9 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/include/mat_stack.h"
	.file 10 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\math.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2007
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF239
	.byte	0x1
	.4byte	.LASF240
	.4byte	.LASF241
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0xd4
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x4
	.4byte	0x93
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x29
	.4byte	0x5c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2a
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x35
	.4byte	0x63
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x36
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x4f
	.4byte	0x6a
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x50
	.4byte	0x3e
	.uleb128 0x8
	.string	"u8"
	.byte	0x4
	.byte	0x11
	.4byte	0xb1
	.uleb128 0x8
	.string	"u16"
	.byte	0x4
	.byte	0x12
	.4byte	0xc7
	.uleb128 0x8
	.string	"u32"
	.byte	0x4
	.byte	0x13
	.4byte	0xdd
	.uleb128 0x8
	.string	"s8"
	.byte	0x4
	.byte	0x16
	.4byte	0xa6
	.uleb128 0x8
	.string	"s16"
	.byte	0x4
	.byte	0x17
	.4byte	0xbc
	.uleb128 0x8
	.string	"s32"
	.byte	0x4
	.byte	0x18
	.4byte	0xd2
	.uleb128 0x8
	.string	"vu8"
	.byte	0x4
	.byte	0x1b
	.4byte	0x133
	.uleb128 0x9
	.4byte	0xe8
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x1c
	.4byte	0x143
	.uleb128 0x9
	.4byte	0xf2
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x1d
	.4byte	0x153
	.uleb128 0x9
	.4byte	0xfd
	.uleb128 0x8
	.string	"vs8"
	.byte	0x4
	.byte	0x20
	.4byte	0x163
	.uleb128 0x9
	.4byte	0x108
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x21
	.4byte	0x173
	.uleb128 0x9
	.4byte	0x112
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x22
	.4byte	0x183
	.uleb128 0x9
	.4byte	0x11d
	.uleb128 0x8
	.string	"f32"
	.byte	0x4
	.byte	0x2b
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x2e
	.4byte	0x19e
	.uleb128 0x9
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b0
	.uleb128 0xa
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0xc
	.byte	0x5
	.byte	0x5e
	.4byte	0x1dc
	.uleb128 0xc
	.string	"x"
	.byte	0x5
	.byte	0x5f
	.4byte	0x188
	.byte	0
	.uleb128 0xc
	.string	"y"
	.byte	0x5
	.byte	0x5f
	.4byte	0x188
	.byte	0x4
	.uleb128 0xc
	.string	"z"
	.byte	0x5
	.byte	0x5f
	.4byte	0x188
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x60
	.4byte	0x1b1
	.uleb128 0x8
	.string	"Mtx"
	.byte	0x5
	.byte	0x73
	.4byte	0x1f2
	.uleb128 0xd
	.4byte	0x188
	.4byte	0x208
	.uleb128 0xe
	.4byte	0x45
	.byte	0x2
	.uleb128 0xe
	.4byte	0x45
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x74
	.4byte	0x213
	.uleb128 0x6
	.byte	0x4
	.4byte	0x219
	.uleb128 0xd
	.4byte	0x188
	.4byte	0x229
	.uleb128 0xe
	.4byte	0x45
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0x89
	.4byte	0x234
	.uleb128 0xd
	.4byte	0x188
	.4byte	0x24a
	.uleb128 0xe
	.4byte	0x45
	.byte	0x3
	.uleb128 0xe
	.4byte	0x45
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x8a
	.4byte	0x213
	.uleb128 0xf
	.4byte	.LASF242
	.byte	0x4
	.byte	0x6
	.2byte	0x490
	.4byte	0x2b5
	.uleb128 0x10
	.string	"U8"
	.byte	0x6
	.2byte	0x492
	.4byte	0x128
	.uleb128 0x10
	.string	"S8"
	.byte	0x6
	.2byte	0x493
	.4byte	0x158
	.uleb128 0x10
	.string	"U16"
	.byte	0x6
	.2byte	0x494
	.4byte	0x138
	.uleb128 0x10
	.string	"S16"
	.byte	0x6
	.2byte	0x495
	.4byte	0x168
	.uleb128 0x10
	.string	"U32"
	.byte	0x6
	.2byte	0x496
	.4byte	0x148
	.uleb128 0x10
	.string	"S32"
	.byte	0x6
	.2byte	0x497
	.4byte	0x178
	.uleb128 0x10
	.string	"F32"
	.byte	0x6
	.2byte	0x498
	.4byte	0x193
	.byte	0
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x499
	.4byte	0x255
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x4
	.byte	0x6
	.2byte	0x49e
	.4byte	0x2fb
	.uleb128 0x13
	.string	"r"
	.byte	0x6
	.2byte	0x49f
	.4byte	0xe8
	.byte	0
	.uleb128 0x13
	.string	"g"
	.byte	0x6
	.2byte	0x4a0
	.4byte	0xe8
	.byte	0x1
	.uleb128 0x13
	.string	"b"
	.byte	0x6
	.2byte	0x4a1
	.4byte	0xe8
	.byte	0x2
	.uleb128 0x13
	.string	"a"
	.byte	0x6
	.2byte	0x4a2
	.4byte	0xe8
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x4a3
	.4byte	0x2c1
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x40
	.byte	0x6
	.2byte	0x4f1
	.4byte	0x322
	.uleb128 0x13
	.string	"val"
	.byte	0x6
	.2byte	0x4f2
	.4byte	0x322
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xfd
	.4byte	0x332
	.uleb128 0xe
	.4byte	0x45
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x4f3
	.4byte	0x307
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x7
	.byte	0x92
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0x93
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0x98
	.4byte	0x6a
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x7
	.byte	0x9b
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x7
	.byte	0x9c
	.4byte	0x6a
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x7
	.byte	0x9d
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x7
	.byte	0x9f
	.4byte	0x25
	.uleb128 0x6
	.byte	0x4
	.4byte	0x391
	.uleb128 0x7
	.4byte	0x380
	.uleb128 0x6
	.byte	0x4
	.4byte	0x39c
	.uleb128 0x7
	.4byte	0x375
	.uleb128 0x6
	.byte	0x4
	.4byte	0x375
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x8
	.byte	0xa
	.4byte	0x1dc
	.uleb128 0x14
	.byte	0x10
	.byte	0x8
	.byte	0x15
	.4byte	0x3cf
	.uleb128 0xc
	.string	"v"
	.byte	0x8
	.byte	0x17
	.4byte	0x3a7
	.byte	0
	.uleb128 0xc
	.string	"w"
	.byte	0x8
	.byte	0x18
	.4byte	0x2c
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x8
	.byte	0x19
	.4byte	0x3b2
	.uleb128 0x14
	.byte	0x8
	.byte	0x8
	.byte	0x1b
	.4byte	0x3f7
	.uleb128 0xc
	.string	"s"
	.byte	0x8
	.byte	0x1d
	.4byte	0x2c
	.byte	0
	.uleb128 0xc
	.string	"t"
	.byte	0x8
	.byte	0x1e
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x8
	.byte	0x1f
	.4byte	0x3da
	.uleb128 0x14
	.byte	0x10
	.byte	0x8
	.byte	0x21
	.4byte	0x433
	.uleb128 0xc
	.string	"r"
	.byte	0x8
	.byte	0x23
	.4byte	0x2c
	.byte	0
	.uleb128 0xc
	.string	"g"
	.byte	0x8
	.byte	0x24
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xc
	.string	"b"
	.byte	0x8
	.byte	0x25
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xc
	.string	"a"
	.byte	0x8
	.byte	0x26
	.4byte	0x2c
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x8
	.byte	0x27
	.4byte	0x402
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x14
	.byte	0x8
	.byte	0x41
	.4byte	0x485
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x8
	.byte	0x43
	.4byte	0x1a3
	.byte	0
	.uleb128 0xc
	.string	"p"
	.byte	0x8
	.byte	0x44
	.4byte	0x1aa
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x8
	.byte	0x45
	.4byte	0xe8
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x8
	.byte	0x46
	.4byte	0x354
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x8
	.byte	0x47
	.4byte	0x33e
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x8
	.byte	0x48
	.4byte	0x43e
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x4c
	.byte	0x8
	.byte	0x6a
	.4byte	0x4cd
	.uleb128 0xc
	.string	"mat"
	.byte	0x8
	.byte	0x6c
	.4byte	0x229
	.byte	0
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x8
	.byte	0x6d
	.4byte	0xe8
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x8
	.byte	0x6e
	.4byte	0x188
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x8
	.byte	0x6f
	.4byte	0x188
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0x70
	.4byte	0x490
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x10
	.byte	0x9
	.byte	0xc
	.4byte	0x515
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x9
	.byte	0xe
	.4byte	0x5a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x9
	.byte	0xf
	.4byte	0x33
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x9
	.byte	0x10
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.string	"cur"
	.byte	0x9
	.byte	0x11
	.4byte	0x33
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x9
	.byte	0x12
	.4byte	0x4d8
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0xa4
	.byte	0x8
	.byte	0x7d
	.4byte	0x5bd
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x8
	.byte	0x7f
	.4byte	0x1a3
	.byte	0
	.uleb128 0xc
	.string	"obj"
	.byte	0x8
	.byte	0x81
	.4byte	0x332
	.byte	0x4
	.uleb128 0xc
	.string	"pos"
	.byte	0x8
	.byte	0x83
	.4byte	0x3cf
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x8
	.byte	0x85
	.4byte	0x3a7
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x8
	.byte	0x87
	.4byte	0x433
	.byte	0x60
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x8
	.byte	0x88
	.4byte	0x433
	.byte	0x70
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x8
	.byte	0x89
	.4byte	0x433
	.byte	0x80
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x8
	.byte	0x8b
	.4byte	0x2c
	.byte	0x90
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x8
	.byte	0x8c
	.4byte	0x2c
	.byte	0x94
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x8
	.byte	0x8d
	.4byte	0x2c
	.byte	0x98
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x8
	.byte	0x8e
	.4byte	0x2c
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x8
	.byte	0x8f
	.4byte	0x2c
	.byte	0xa0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x8
	.byte	0x90
	.4byte	0x520
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x44
	.byte	0x8
	.byte	0x9a
	.4byte	0x611
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x8
	.byte	0x9c
	.4byte	0x433
	.byte	0
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x8
	.byte	0x9d
	.4byte	0x433
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x8
	.byte	0x9e
	.4byte	0x433
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x8
	.byte	0x9f
	.4byte	0x433
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x8
	.byte	0xa0
	.4byte	0x2c
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x8
	.byte	0xa1
	.4byte	0x5c8
	.uleb128 0x16
	.4byte	.LASF243
	.byte	0x4
	.byte	0x8
	.byte	0xb9
	.4byte	0x63b
	.uleb128 0x17
	.4byte	.LASF79
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF80
	.sleb128 1
	.uleb128 0x17
	.4byte	.LASF81
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x8
	.byte	0xbe
	.4byte	0x61c
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x10
	.byte	0x8
	.byte	0xe2
	.4byte	0x67f
	.uleb128 0xc
	.string	"x"
	.byte	0x8
	.byte	0xe4
	.4byte	0x354
	.byte	0
	.uleb128 0xc
	.string	"y"
	.byte	0x8
	.byte	0xe5
	.4byte	0x354
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x8
	.byte	0xe6
	.4byte	0x36a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x8
	.byte	0xe7
	.4byte	0x36a
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x8
	.byte	0xe8
	.4byte	0x646
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x14
	.byte	0x8
	.byte	0xf5
	.4byte	0x6df
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x8
	.byte	0xf7
	.4byte	0x1a3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x8
	.byte	0xf8
	.4byte	0x1a3
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x8
	.byte	0xf9
	.4byte	0x6a
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x8
	.byte	0xfa
	.4byte	0x6a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x8
	.byte	0xfb
	.4byte	0x6a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x8
	.byte	0xfc
	.4byte	0x6a
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x8
	.byte	0xfd
	.4byte	0x68a
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x8
	.byte	0x8
	.2byte	0x110
	.4byte	0x712
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x112
	.4byte	0x188
	.byte	0
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x113
	.4byte	0x188
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x114
	.4byte	0x6ea
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x6c
	.byte	0x8
	.2byte	0x120
	.4byte	0x84a
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x122
	.4byte	0x1a3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x124
	.4byte	0xe8
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x125
	.4byte	0xe8
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x126
	.4byte	0xe8
	.byte	0x3
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x127
	.4byte	0xe8
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x128
	.4byte	0x188
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x129
	.4byte	0x188
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x12a
	.4byte	0x188
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x12b
	.4byte	0xe8
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x12c
	.4byte	0xe8
	.byte	0x15
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x12d
	.4byte	0xe8
	.byte	0x16
	.uleb128 0x18
	.4byte	.LASF55
	.byte	0x8
	.2byte	0x12f
	.4byte	0x33e
	.byte	0x18
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x131
	.4byte	0x33e
	.byte	0x1c
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x132
	.4byte	0x33e
	.byte	0x20
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x134
	.4byte	0x84a
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x135
	.4byte	0x84a
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x136
	.4byte	0x84a
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x137
	.4byte	0x84a
	.byte	0x48
	.uleb128 0x13
	.string	"tex"
	.byte	0x8
	.2byte	0x139
	.4byte	0x354
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x13b
	.4byte	0x433
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x13d
	.4byte	0xe8
	.byte	0x68
	.uleb128 0x18
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x13e
	.4byte	0xe8
	.byte	0x69
	.byte	0
	.uleb128 0xd
	.4byte	0x33e
	.4byte	0x85a
	.uleb128 0xe
	.4byte	0x45
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x13f
	.4byte	0x71e
	.uleb128 0x19
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x1ad
	.byte	0x1
	.4byte	0x8ea
	.uleb128 0x1a
	.string	"m"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x396
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x33
	.uleb128 0x1b
	.string	"j"
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x33
	.uleb128 0x1c
	.4byte	0x8cf
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x8ea
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x24a
	.uleb128 0x1b
	.string	"mat"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x229
	.uleb128 0x1b
	.string	"tmp"
	.byte	0x1
	.2byte	0x1be
	.4byte	0x229
	.uleb128 0x1b
	.string	"k"
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x33
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x8f0
	.uleb128 0x1b
	.string	"mat"
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x1e7
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x229
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e7
	.uleb128 0x1f
	.4byte	.LASF244
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.4byte	0x90c
	.uleb128 0x20
	.string	"m"
	.byte	0x1
	.byte	0x27
	.4byte	0x90c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4cd
	.uleb128 0x21
	.4byte	.LASF245
	.byte	0x1
	.byte	0x35
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x964
	.uleb128 0x22
	.string	"m"
	.byte	0x1
	.byte	0x35
	.4byte	0x90c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.byte	0x37
	.4byte	0x188
	.4byte	.LLST0
	.uleb128 0x23
	.string	"d"
	.byte	0x1
	.byte	0x38
	.4byte	0x188
	.4byte	.LLST1
	.uleb128 0x24
	.4byte	0x8f6
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3a
	.uleb128 0x25
	.4byte	0x902
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF121
	.byte	0x1
	.byte	0xc
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b0
	.uleb128 0x27
	.string	"src"
	.byte	0x1
	.byte	0xc
	.4byte	0x9b0
	.4byte	.LLST2
	.uleb128 0x28
	.4byte	.LASF120
	.byte	0x1
	.byte	0xc
	.4byte	0x24a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xe
	.4byte	0x33
	.4byte	.LLST3
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.byte	0xe
	.4byte	0x33
	.4byte	.LLST4
	.byte	0
	.uleb128 0x7
	.4byte	0x208
	.uleb128 0x26
	.4byte	.LASF122
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa03
	.uleb128 0x27
	.string	"src"
	.byte	0x1
	.byte	0x1b
	.4byte	0xa03
	.4byte	.LLST5
	.uleb128 0x29
	.4byte	.LASF120
	.byte	0x1
	.byte	0x1b
	.4byte	0x208
	.4byte	.LLST6
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x1d
	.4byte	0x33
	.4byte	.LLST7
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.byte	0x1d
	.4byte	0x33
	.4byte	.LLST8
	.byte	0
	.uleb128 0x7
	.4byte	0x24a
	.uleb128 0x26
	.4byte	.LASF123
	.byte	0x1
	.byte	0x49
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc9
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.byte	0x49
	.4byte	0x380
	.4byte	.LLST9
	.uleb128 0x29
	.4byte	.LASF125
	.byte	0x1
	.byte	0x4a
	.4byte	0x380
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	.LASF126
	.byte	0x1
	.byte	0x4b
	.4byte	0x380
	.4byte	.LLST11
	.uleb128 0x27
	.string	"top"
	.byte	0x1
	.byte	0x4c
	.4byte	0x380
	.4byte	.LLST12
	.uleb128 0x29
	.4byte	.LASF127
	.byte	0x1
	.byte	0x4d
	.4byte	0x380
	.4byte	.LLST13
	.uleb128 0x29
	.4byte	.LASF128
	.byte	0x1
	.byte	0x4e
	.4byte	0x380
	.4byte	.LLST14
	.uleb128 0x2a
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0xb0b
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0x54
	.4byte	0x90c
	.4byte	.LLST15
	.uleb128 0x23
	.string	"tmp"
	.byte	0x1
	.byte	0x55
	.4byte	0x8ea
	.4byte	.LLST16
	.uleb128 0x2b
	.4byte	.LVL29
	.4byte	0x1e30
	.4byte	0xab4
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL32
	.4byte	0x1e45
	.4byte	0xac8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL35
	.4byte	0x1e5a
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x26
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3d
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x25
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3c
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3e
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3b
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3a
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0xba8
	.uleb128 0x2e
	.string	"tmp"
	.byte	0x1
	.byte	0x64
	.4byte	0x229
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.4byte	.LASF119
	.byte	0x1
	.byte	0x65
	.4byte	0x8f0
	.4byte	.LLST17
	.uleb128 0x30
	.4byte	.LVL37
	.4byte	0x1e89
	.uleb128 0x2b
	.4byte	.LVL40
	.4byte	0x1e5a
	.4byte	0xb90
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x26
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3d
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x25
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3c
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3e
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3b
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3a
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL41
	.4byte	0x9b5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL27
	.4byte	0x1e9e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF129
	.byte	0x1
	.byte	0x6d
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd59
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.byte	0x6d
	.4byte	0x380
	.4byte	.LLST18
	.uleb128 0x29
	.4byte	.LASF125
	.byte	0x1
	.byte	0x6e
	.4byte	0x380
	.4byte	.LLST19
	.uleb128 0x29
	.4byte	.LASF126
	.byte	0x1
	.byte	0x6f
	.4byte	0x380
	.4byte	.LLST20
	.uleb128 0x27
	.string	"top"
	.byte	0x1
	.byte	0x70
	.4byte	0x380
	.4byte	.LLST21
	.uleb128 0x29
	.4byte	.LASF130
	.byte	0x1
	.byte	0x71
	.4byte	0x380
	.4byte	.LLST22
	.uleb128 0x29
	.4byte	.LASF131
	.byte	0x1
	.byte	0x72
	.4byte	0x380
	.4byte	.LLST23
	.uleb128 0x2a
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0xcb2
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0x7e
	.4byte	0x90c
	.4byte	.LLST24
	.uleb128 0x2b
	.4byte	.LVL45
	.4byte	0x1e30
	.4byte	0xc69
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	projection_stack
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL48
	.4byte	0x1eb9
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x26
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3b
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x25
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3a
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3e
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3d
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3c
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0xd4f
	.uleb128 0x2e
	.string	"tmp"
	.byte	0x1
	.byte	0x8e
	.4byte	0x229
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.4byte	.LASF119
	.byte	0x1
	.byte	0x8f
	.4byte	0x8f0
	.4byte	.LLST25
	.uleb128 0x30
	.4byte	.LVL50
	.4byte	0x1e89
	.uleb128 0x2b
	.4byte	.LVL52
	.4byte	0x1eb9
	.4byte	0xd37
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x26
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3b
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x25
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3a
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3e
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3d
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3c
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL53
	.4byte	0x9b5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL43
	.4byte	0x1e9e
	.byte	0
	.uleb128 0x26
	.4byte	.LASF132
	.byte	0x1
	.byte	0x9c
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd87
	.uleb128 0x29
	.4byte	.LASF55
	.byte	0x1
	.byte	0x9c
	.4byte	0x33e
	.4byte	.LLST26
	.uleb128 0x31
	.4byte	.LVL58
	.4byte	0x1e9e
	.byte	0
	.uleb128 0x32
	.4byte	.LASF133
	.byte	0x1
	.byte	0xb4
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xddb
	.uleb128 0x2a
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0xdc9
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.byte	0xb9
	.4byte	0x90c
	.uleb128 0x1
	.byte	0x6f
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.byte	0xc0
	.4byte	0x6a
	.uleb128 0x34
	.4byte	.LASF119
	.byte	0x1
	.byte	0xc2
	.4byte	0x24a
	.byte	0
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x34
	.4byte	.LASF119
	.byte	0x1
	.byte	0xd1
	.4byte	0x8f0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF134
	.byte	0x1
	.byte	0xdc
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3c
	.uleb128 0x22
	.string	"m"
	.byte	0x1
	.byte	0xdc
	.4byte	0x396
	.uleb128 0x1
	.byte	0x6f
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.byte	0xe0
	.4byte	0x33
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.byte	0xe0
	.4byte	0x33
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0xe24
	.uleb128 0x37
	.4byte	.LASF119
	.byte	0x1
	.byte	0xe4
	.4byte	0x8ea
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x38
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x37
	.4byte	.LASF119
	.byte	0x1
	.byte	0xf7
	.4byte	0x8f0
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x10c
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe9f
	.uleb128 0x3a
	.string	"m"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x38b
	.uleb128 0x1
	.byte	0x6e
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.2byte	0x110
	.4byte	0x33
	.uleb128 0x1b
	.string	"j"
	.byte	0x1
	.2byte	0x110
	.4byte	0x33
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0xe8a
	.uleb128 0x3b
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x114
	.4byte	0x8ea
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x3b
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x127
	.4byte	0x8f0
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1ed
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee4
	.uleb128 0x3d
	.4byte	.LVL59
	.4byte	0x1e9e
	.4byte	0xeda
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ee
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.uleb128 0x31
	.4byte	.LVL60
	.4byte	0x1ee8
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x1f3
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf29
	.uleb128 0x3d
	.4byte	.LVL61
	.4byte	0x1e9e
	.4byte	0xf1f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.uleb128 0x31
	.4byte	.LVL62
	.4byte	0x1ef9
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x1fc
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa9
	.uleb128 0x3e
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x33e
	.4byte	.LLST27
	.uleb128 0x3e
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x3a1
	.4byte	.LLST28
	.uleb128 0x3f
	.string	"i"
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x33
	.4byte	.LLST29
	.uleb128 0x3f
	.string	"j"
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x33
	.4byte	.LLST30
	.uleb128 0x38
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x40
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x207
	.4byte	0x208
	.4byte	.LLST31
	.uleb128 0x2d
	.4byte	.LVL65
	.4byte	0x1e89
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	model_stack
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x215
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xffa
	.uleb128 0x41
	.string	"m"
	.byte	0x1
	.2byte	0x215
	.4byte	0x396
	.4byte	.LLST32
	.uleb128 0x41
	.string	"mat"
	.byte	0x1
	.2byte	0x215
	.4byte	0x208
	.4byte	.LLST33
	.uleb128 0x3f
	.string	"i"
	.byte	0x1
	.2byte	0x217
	.4byte	0x33
	.4byte	.LLST34
	.uleb128 0x3f
	.string	"j"
	.byte	0x1
	.2byte	0x217
	.4byte	0x33
	.4byte	.LLST35
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x223
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1049
	.uleb128 0x41
	.string	"m"
	.byte	0x1
	.2byte	0x223
	.4byte	0x396
	.4byte	.LLST36
	.uleb128 0x3a
	.string	"mat"
	.byte	0x1
	.2byte	0x223
	.4byte	0x24a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3f
	.string	"i"
	.byte	0x1
	.2byte	0x225
	.4byte	0x33
	.4byte	.LLST37
	.uleb128 0x3f
	.string	"j"
	.byte	0x1
	.2byte	0x225
	.4byte	0x33
	.4byte	.LLST38
	.byte	0
	.uleb128 0x42
	.4byte	0x866
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1185
	.uleb128 0x43
	.4byte	0x873
	.4byte	.LLST39
	.uleb128 0x44
	.4byte	0x87d
	.uleb128 0x44
	.4byte	0x887
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0x1102
	.uleb128 0x43
	.4byte	0x873
	.4byte	.LLST40
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0xa8
	.uleb128 0x45
	.4byte	0x87d
	.4byte	.LLST41
	.uleb128 0x45
	.4byte	0x887
	.4byte	.LLST42
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0xa8
	.uleb128 0x45
	.4byte	0x896
	.4byte	.LLST43
	.uleb128 0x45
	.4byte	0x8a0
	.4byte	.LLST44
	.uleb128 0x46
	.4byte	0x8ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x46
	.4byte	0x8b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x45
	.4byte	0x8c4
	.4byte	.LLST45
	.uleb128 0x30
	.4byte	.LVL92
	.4byte	0x1e45
	.uleb128 0x2b
	.4byte	.LVL95
	.4byte	0xffa
	.4byte	0x10ed
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL104
	.4byte	0x1e30
	.uleb128 0x30
	.4byte	.LVL105
	.4byte	0x912
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0x1163
	.uleb128 0x45
	.4byte	0x8d0
	.4byte	.LLST46
	.uleb128 0x46
	.4byte	0x8dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x30
	.4byte	.LVL107
	.4byte	0x1e89
	.uleb128 0x2b
	.4byte	.LVL109
	.4byte	0xfa9
	.4byte	0x1145
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL110
	.4byte	0x1f0a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL88
	.4byte	0x1e9e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1af
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x139
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12ac
	.uleb128 0x41
	.string	"x"
	.byte	0x1
	.2byte	0x139
	.4byte	0x375
	.4byte	.LLST47
	.uleb128 0x41
	.string	"y"
	.byte	0x1
	.2byte	0x139
	.4byte	0x375
	.4byte	.LLST48
	.uleb128 0x41
	.string	"z"
	.byte	0x1
	.2byte	0x139
	.4byte	0x375
	.4byte	.LLST49
	.uleb128 0x2a
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.4byte	0x11f4
	.uleb128 0x47
	.string	"arr"
	.byte	0x1
	.2byte	0x13f
	.4byte	0x12ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.4byte	.LVL114
	.4byte	0x866
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.4byte	0x128a
	.uleb128 0x3b
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x14a
	.4byte	0x1e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x40
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x14c
	.4byte	0x8f0
	.4byte	.LLST50
	.uleb128 0x30
	.4byte	.LVL116
	.4byte	0x1e89
	.uleb128 0x2b
	.4byte	.LVL118
	.4byte	0x1f26
	.4byte	0x123f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL119
	.4byte	0x1f38
	.4byte	0x126c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3e
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3d
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL120
	.4byte	0x1f0a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL112
	.4byte	0x1e9e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x13a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x375
	.4byte	0x12bc
	.uleb128 0xe
	.4byte	0x45
	.byte	0xf
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x159
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1350
	.uleb128 0x41
	.string	"x"
	.byte	0x1
	.2byte	0x159
	.4byte	0x380
	.4byte	.LLST51
	.uleb128 0x41
	.string	"y"
	.byte	0x1
	.2byte	0x159
	.4byte	0x380
	.4byte	.LLST52
	.uleb128 0x41
	.string	"z"
	.byte	0x1
	.2byte	0x159
	.4byte	0x380
	.4byte	.LLST53
	.uleb128 0x3d
	.4byte	.LVL122
	.4byte	0x1e9e
	.4byte	0x1321
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x15b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.uleb128 0x48
	.4byte	.LVL126
	.4byte	0x1185
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x7
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x7
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x7
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x160
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14dc
	.uleb128 0x3e
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x160
	.4byte	0x375
	.4byte	.LLST54
	.uleb128 0x41
	.string	"x"
	.byte	0x1
	.2byte	0x160
	.4byte	0x375
	.4byte	.LLST55
	.uleb128 0x41
	.string	"y"
	.byte	0x1
	.2byte	0x160
	.4byte	0x375
	.4byte	.LLST56
	.uleb128 0x41
	.string	"z"
	.byte	0x1
	.2byte	0x160
	.4byte	0x375
	.4byte	.LLST57
	.uleb128 0x2a
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.4byte	0x1417
	.uleb128 0x3f
	.string	"s"
	.byte	0x1
	.2byte	0x166
	.4byte	0x375
	.4byte	.LLST58
	.uleb128 0x3f
	.string	"c"
	.byte	0x1
	.2byte	0x167
	.4byte	0x375
	.4byte	.LLST59
	.uleb128 0x47
	.string	"arr"
	.byte	0x1
	.2byte	0x16e
	.4byte	0x12ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.4byte	.LVL131
	.4byte	0x1f59
	.4byte	0x13ef
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3b
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL134
	.4byte	0x1f6f
	.4byte	0x1405
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3b
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL138
	.4byte	0x866
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.4byte	0x14ba
	.uleb128 0x3b
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x179
	.4byte	0x1e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x40
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x17b
	.4byte	0x8f0
	.4byte	.LLST60
	.uleb128 0x3b
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x182
	.4byte	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.4byte	.LVL140
	.4byte	0x1e89
	.uleb128 0x2b
	.4byte	.LVL142
	.4byte	0x1f26
	.4byte	0x1471
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL143
	.4byte	0x1f85
	.4byte	0x149c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0xb
	.byte	0xf5
	.uleb128 0x3c
	.uleb128 0x2c
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x4
	.4byte	0x3c8efa35
	.byte	0x1e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL144
	.4byte	0x1f0a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL128
	.4byte	0x1e9e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x161
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x18d
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1603
	.uleb128 0x41
	.string	"x"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x375
	.4byte	.LLST61
	.uleb128 0x41
	.string	"y"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x375
	.4byte	.LLST62
	.uleb128 0x41
	.string	"z"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x375
	.4byte	.LLST63
	.uleb128 0x2a
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.4byte	0x154b
	.uleb128 0x47
	.string	"arr"
	.byte	0x1
	.2byte	0x193
	.4byte	0x12ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.4byte	.LVL148
	.4byte	0x866
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.4byte	0x15e1
	.uleb128 0x3b
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x19e
	.4byte	0x1e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x40
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x8f0
	.4byte	.LLST64
	.uleb128 0x30
	.4byte	.LVL150
	.4byte	0x1e89
	.uleb128 0x2b
	.4byte	.LVL152
	.4byte	0x1f26
	.4byte	0x1596
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL153
	.4byte	0x1fa7
	.4byte	0x15c3
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3e
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3d
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL154
	.4byte	0x1f0a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL146
	.4byte	0x1e9e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x18e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x233
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17d3
	.uleb128 0x3e
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x233
	.4byte	0x380
	.4byte	.LLST65
	.uleb128 0x3e
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x234
	.4byte	0x380
	.4byte	.LLST66
	.uleb128 0x3e
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x235
	.4byte	0x380
	.4byte	.LLST67
	.uleb128 0x3e
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x236
	.4byte	0x380
	.4byte	.LLST68
	.uleb128 0x3e
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x237
	.4byte	0x380
	.4byte	.LLST69
	.uleb128 0x3e
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x238
	.4byte	0x380
	.4byte	.LLST70
	.uleb128 0x41
	.string	"upX"
	.byte	0x1
	.2byte	0x239
	.4byte	0x380
	.4byte	.LLST71
	.uleb128 0x41
	.string	"upY"
	.byte	0x1
	.2byte	0x23a
	.4byte	0x380
	.4byte	.LLST72
	.uleb128 0x41
	.string	"upZ"
	.byte	0x1
	.2byte	0x23b
	.4byte	0x380
	.4byte	.LLST73
	.uleb128 0x47
	.string	"cam"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x47
	.string	"up"
	.byte	0x1
	.2byte	0x240
	.4byte	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3b
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x241
	.4byte	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.4byte	0x176e
	.uleb128 0x3f
	.string	"tmp"
	.byte	0x1
	.2byte	0x245
	.4byte	0x8ea
	.4byte	.LLST74
	.uleb128 0x47
	.string	"mat"
	.byte	0x1
	.2byte	0x246
	.4byte	0x1e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.4byte	.LVL167
	.4byte	0x1e45
	.4byte	0x1719
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	projection_stack
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL169
	.4byte	0x1fc8
	.4byte	0x1740
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL170
	.4byte	0x964
	.4byte	0x175b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x30
	.4byte	.LVL171
	.4byte	0x1e30
	.uleb128 0x30
	.4byte	.LVL172
	.4byte	0x912
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.4byte	0x17b1
	.uleb128 0x40
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x255
	.4byte	0x8f0
	.4byte	.LLST75
	.uleb128 0x30
	.4byte	.LVL174
	.4byte	0x1e89
	.uleb128 0x2d
	.4byte	.LVL175
	.4byte	0x1fc8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL157
	.4byte	0x1e9e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x23d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x260
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x193d
	.uleb128 0x3e
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x260
	.4byte	0x380
	.4byte	.LLST76
	.uleb128 0x3e
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x261
	.4byte	0x380
	.4byte	.LLST77
	.uleb128 0x3e
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x262
	.4byte	0x380
	.4byte	.LLST78
	.uleb128 0x3e
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x263
	.4byte	0x380
	.4byte	.LLST79
	.uleb128 0x2a
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.4byte	0x1890
	.uleb128 0x3f
	.string	"p"
	.byte	0x1
	.2byte	0x268
	.4byte	0x90c
	.4byte	.LLST80
	.uleb128 0x2b
	.4byte	.LVL180
	.4byte	0x1e30
	.4byte	0x185b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	projection_stack
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL183
	.4byte	0x1fe9
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3e
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3d
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3c
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.4byte	0x191b
	.uleb128 0x47
	.string	"tmp"
	.byte	0x1
	.2byte	0x277
	.4byte	0x229
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x40
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x278
	.4byte	0x8f0
	.4byte	.LLST81
	.uleb128 0x30
	.4byte	.LVL185
	.4byte	0x1e89
	.uleb128 0x2b
	.4byte	.LVL188
	.4byte	0x1fe9
	.4byte	0x1903
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3e
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3d
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3c
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL189
	.4byte	0x9b5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL178
	.4byte	0x1e9e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x264
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x49
	.4byte	.LASF162
	.byte	0x6
	.2byte	0x548
	.4byte	0x1949
	.uleb128 0x7
	.4byte	0x194e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2b5
	.uleb128 0x4a
	.4byte	.LASF163
	.byte	0x8
	.byte	0x3c
	.4byte	0x433
	.uleb128 0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x4a
	.4byte	.LASF164
	.byte	0x8
	.byte	0x3d
	.4byte	0x3a7
	.uleb128 0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xd
	.4byte	0x3f7
	.4byte	0x1986
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF165
	.byte	0x8
	.byte	0x3e
	.4byte	0x1976
	.uleb128 0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x4a
	.4byte	.LASF166
	.byte	0x8
	.byte	0x4a
	.4byte	0x485
	.uleb128 0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x4a
	.4byte	.LASF167
	.byte	0x8
	.byte	0x4b
	.4byte	0x485
	.uleb128 0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xd
	.4byte	0x485
	.4byte	0x19c9
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.byte	0
	.uleb128 0x4b
	.string	"tex"
	.byte	0x8
	.byte	0x4c
	.4byte	0x19b9
	.uleb128 0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x4a
	.4byte	.LASF115
	.byte	0x8
	.byte	0x4d
	.4byte	0x485
	.uleb128 0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xd
	.4byte	0x3a7
	.4byte	0x19fc
	.uleb128 0x4c
	.4byte	0x45
	.2byte	0x3e7
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF168
	.byte	0x8
	.byte	0x4f
	.4byte	0x19eb
	.uleb128 0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x4a
	.4byte	.LASF169
	.byte	0x8
	.byte	0x50
	.4byte	0x19eb
	.uleb128 0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xd
	.4byte	0x3f7
	.4byte	0x1a35
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.uleb128 0x4c
	.4byte	0x45
	.2byte	0x3e7
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF170
	.byte	0x8
	.byte	0x51
	.4byte	0x1a1e
	.uleb128 0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xd
	.4byte	0x433
	.4byte	0x1a57
	.uleb128 0x4c
	.4byte	0x45
	.2byte	0x3e7
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF171
	.byte	0x8
	.byte	0x52
	.4byte	0x1a46
	.uleb128 0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x4a
	.4byte	.LASF172
	.byte	0x8
	.byte	0x5c
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x4a
	.4byte	.LASF173
	.byte	0x8
	.byte	0x5d
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x4a
	.4byte	.LASF174
	.byte	0x8
	.byte	0x5e
	.4byte	0x33e
	.uleb128 0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x4a
	.4byte	.LASF175
	.byte	0x8
	.byte	0x60
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x4a
	.4byte	.LASF176
	.byte	0x8
	.byte	0x61
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x4a
	.4byte	.LASF177
	.byte	0x8
	.byte	0x65
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x4a
	.4byte	.LASF178
	.byte	0x8
	.byte	0x66
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x4a
	.4byte	.LASF179
	.byte	0x8
	.byte	0x67
	.4byte	0x33e
	.uleb128 0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x4a
	.4byte	.LASF180
	.byte	0x8
	.byte	0x68
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x4a
	.4byte	.LASF181
	.byte	0x8
	.byte	0x74
	.4byte	0x515
	.uleb128 0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x4a
	.4byte	.LASF182
	.byte	0x8
	.byte	0x75
	.4byte	0x515
	.uleb128 0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xd
	.4byte	0x515
	.4byte	0x1b33
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF183
	.byte	0x8
	.byte	0x76
	.4byte	0x1b23
	.uleb128 0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x4a
	.4byte	.LASF184
	.byte	0x8
	.byte	0x77
	.4byte	0x1b55
	.uleb128 0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x6
	.byte	0x4
	.4byte	0x515
	.uleb128 0x4a
	.4byte	.LASF185
	.byte	0x8
	.byte	0x78
	.4byte	0x33e
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xd
	.4byte	0x5bd
	.4byte	0x1b7c
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF186
	.byte	0x8
	.byte	0x93
	.4byte	0x1b6c
	.uleb128 0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x4a
	.4byte	.LASF187
	.byte	0x8
	.byte	0x96
	.4byte	0x433
	.uleb128 0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x4a
	.4byte	.LASF188
	.byte	0x8
	.byte	0xa3
	.4byte	0x611
	.uleb128 0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x4a
	.4byte	.LASF189
	.byte	0x8
	.byte	0xa6
	.4byte	0x1a3
	.uleb128 0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x4a
	.4byte	.LASF190
	.byte	0x8
	.byte	0xa7
	.4byte	0x33e
	.uleb128 0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x4a
	.4byte	.LASF191
	.byte	0x8
	.byte	0xab
	.4byte	0x1a3
	.uleb128 0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x4a
	.4byte	.LASF192
	.byte	0x8
	.byte	0xb2
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x4a
	.4byte	.LASF193
	.byte	0x8
	.byte	0xb3
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x4a
	.4byte	.LASF194
	.byte	0x8
	.byte	0xb4
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x4a
	.4byte	.LASF195
	.byte	0x8
	.byte	0xb5
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x4a
	.4byte	.LASF196
	.byte	0x8
	.byte	0xb7
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x4a
	.4byte	.LASF197
	.byte	0x8
	.byte	0xc0
	.4byte	0x63b
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x4a
	.4byte	.LASF198
	.byte	0x8
	.byte	0xea
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x4a
	.4byte	.LASF199
	.byte	0x8
	.byte	0xeb
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x4a
	.4byte	.LASF200
	.byte	0x8
	.byte	0xec
	.4byte	0x349
	.uleb128 0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x4a
	.4byte	.LASF201
	.byte	0x8
	.byte	0xed
	.4byte	0x67f
	.uleb128 0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x4a
	.4byte	.LASF202
	.byte	0x8
	.byte	0xee
	.4byte	0x67f
	.uleb128 0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x4a
	.4byte	.LASF203
	.byte	0x8
	.byte	0xef
	.4byte	0x188
	.uleb128 0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x4a
	.4byte	.LASF204
	.byte	0x8
	.byte	0xf0
	.4byte	0x188
	.uleb128 0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x4a
	.4byte	.LASF205
	.byte	0x8
	.byte	0xf2
	.4byte	0x188
	.uleb128 0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x4a
	.4byte	.LASF206
	.byte	0x8
	.byte	0xf3
	.4byte	0x188
	.uleb128 0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x4a
	.4byte	.LASF207
	.byte	0x8
	.byte	0xff
	.4byte	0x6df
	.uleb128 0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x4d
	.4byte	.LASF208
	.byte	0x8
	.2byte	0x100
	.4byte	0x6df
	.uleb128 0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xd
	.4byte	0x1a3
	.4byte	0x1d14
	.uleb128 0xe
	.4byte	0x45
	.byte	0x3
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF209
	.byte	0x8
	.2byte	0x101
	.4byte	0x1d04
	.uleb128 0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x4d
	.4byte	.LASF210
	.byte	0x8
	.2byte	0x107
	.4byte	0x1a3
	.uleb128 0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x4d
	.4byte	.LASF211
	.byte	0x8
	.2byte	0x108
	.4byte	0x33e
	.uleb128 0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x4d
	.4byte	.LASF212
	.byte	0x8
	.2byte	0x10b
	.4byte	0x2fb
	.uleb128 0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xd
	.4byte	0x712
	.4byte	0x1d6c
	.uleb128 0xe
	.4byte	0x45
	.byte	0x3
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF213
	.byte	0x8
	.2byte	0x11e
	.4byte	0x1d5c
	.uleb128 0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x4d
	.4byte	.LASF214
	.byte	0x8
	.2byte	0x143
	.4byte	0x1a3
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x4d
	.4byte	.LASF215
	.byte	0x8
	.2byte	0x144
	.4byte	0xe8
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x4d
	.4byte	.LASF216
	.byte	0x8
	.2byte	0x145
	.4byte	0x188
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x4d
	.4byte	.LASF217
	.byte	0x8
	.2byte	0x146
	.4byte	0x188
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x4d
	.4byte	.LASF218
	.byte	0x8
	.2byte	0x147
	.4byte	0x188
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x4d
	.4byte	.LASF219
	.byte	0x8
	.2byte	0x148
	.4byte	0x2fb
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xd
	.4byte	0x85a
	.4byte	0x1dfa
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF220
	.byte	0x8
	.2byte	0x14a
	.4byte	0x1dea
	.uleb128 0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x4d
	.4byte	.LASF221
	.byte	0x8
	.2byte	0x14f
	.4byte	0x33e
	.uleb128 0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x4d
	.4byte	.LASF222
	.byte	0x8
	.2byte	0x152
	.4byte	0x35f
	.uleb128 0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x4e
	.4byte	.LASF223
	.byte	0x9
	.byte	0x1f
	.4byte	0x90c
	.4byte	0x1e45
	.uleb128 0x4f
	.4byte	0x1b55
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF224
	.byte	0x9
	.byte	0x1e
	.4byte	0x8ea
	.4byte	0x1e5a
	.uleb128 0x4f
	.4byte	0x1b55
	.byte	0
	.uleb128 0x50
	.4byte	.LASF226
	.byte	0x5
	.byte	0xa2
	.4byte	0x1e89
	.uleb128 0x4f
	.4byte	0x213
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF227
	.byte	0x9
	.byte	0x1d
	.4byte	0x8f0
	.4byte	0x1e9e
	.uleb128 0x4f
	.4byte	0x1b55
	.byte	0
	.uleb128 0x50
	.4byte	.LASF228
	.byte	0x8
	.byte	0xc7
	.4byte	0x1eb9
	.uleb128 0x4f
	.4byte	0x33e
	.uleb128 0x4f
	.4byte	0x8d
	.uleb128 0x4f
	.4byte	0x6a
	.byte	0
	.uleb128 0x50
	.4byte	.LASF229
	.byte	0x5
	.byte	0xd3
	.4byte	0x1ee8
	.uleb128 0x4f
	.4byte	0x213
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.byte	0
	.uleb128 0x51
	.string	"Pop"
	.byte	0x9
	.byte	0x1a
	.4byte	0x1ef9
	.uleb128 0x4f
	.4byte	0x1b55
	.byte	0
	.uleb128 0x50
	.4byte	.LASF230
	.byte	0x9
	.byte	0x1b
	.4byte	0x1f0a
	.uleb128 0x4f
	.4byte	0x1b55
	.byte	0
	.uleb128 0x52
	.4byte	.LASF231
	.byte	0x5
	.2byte	0x194
	.4byte	0x1f26
	.uleb128 0x4f
	.4byte	0x213
	.uleb128 0x4f
	.4byte	0x213
	.uleb128 0x4f
	.4byte	0x213
	.byte	0
	.uleb128 0x52
	.4byte	.LASF232
	.byte	0x5
	.2byte	0x192
	.4byte	0x1f38
	.uleb128 0x4f
	.4byte	0x213
	.byte	0
	.uleb128 0x52
	.4byte	.LASF233
	.byte	0x5
	.2byte	0x19b
	.4byte	0x1f59
	.uleb128 0x4f
	.4byte	0x213
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.byte	0
	.uleb128 0x53
	.4byte	.LASF234
	.byte	0xa
	.2byte	0x13b
	.4byte	0x2c
	.4byte	0x1f6f
	.uleb128 0x4f
	.4byte	0x2c
	.byte	0
	.uleb128 0x53
	.4byte	.LASF235
	.byte	0xa
	.2byte	0x13a
	.4byte	0x2c
	.4byte	0x1f85
	.uleb128 0x4f
	.4byte	0x2c
	.byte	0
	.uleb128 0x52
	.4byte	.LASF236
	.byte	0x5
	.2byte	0x1a0
	.4byte	0x1fa1
	.uleb128 0x4f
	.4byte	0x213
	.uleb128 0x4f
	.4byte	0x1fa1
	.uleb128 0x4f
	.4byte	0x188
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1dc
	.uleb128 0x52
	.4byte	.LASF237
	.byte	0x5
	.2byte	0x198
	.4byte	0x1fc8
	.uleb128 0x4f
	.4byte	0x213
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.byte	0
	.uleb128 0x52
	.4byte	.LASF238
	.byte	0x5
	.2byte	0x145
	.4byte	0x1fe9
	.uleb128 0x4f
	.4byte	0x213
	.uleb128 0x4f
	.4byte	0x1fa1
	.uleb128 0x4f
	.4byte	0x1fa1
	.uleb128 0x4f
	.4byte	0x1fa1
	.byte	0
	.uleb128 0x54
	.4byte	.LASF246
	.byte	0x5
	.byte	0xbb
	.uleb128 0x4f
	.4byte	0x213
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
	.uleb128 0x4f
	.4byte	0x188
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x8
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
	.uleb128 0x52
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
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 40
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 44
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 44
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x6
	.byte	0x33
	.byte	0x92
	.uleb128 0x42
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x6
	.byte	0x34
	.byte	0x92
	.uleb128 0x42
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x6
	.byte	0x33
	.byte	0x92
	.uleb128 0x42
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x6
	.byte	0x33
	.byte	0x92
	.uleb128 0x42
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x6
	.byte	0x34
	.byte	0x92
	.uleb128 0x42
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x6
	.byte	0x33
	.byte	0x92
	.uleb128 0x42
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL27-1-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL29-1-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL37-1-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL27-1-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL29-1-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL37-1-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL27-1-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL29-1-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL37-1-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL27-1-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x24
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL29-1-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL37-1-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x24
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL27-1-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x25
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL29-1-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x25
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL37-1-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x25
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL27-1-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x26
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL29-1-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x26
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL37-1-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x26
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL45-1-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL50-1-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL45-1-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL50-1-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL45-1-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL50-1-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x24
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL45-1-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL50-1-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x24
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x25
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL45-1-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x25
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL50-1-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x25
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x26
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL45-1-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x26
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL50-1-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x26
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48-1-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL65-1-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL79-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL75-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL79-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL110-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL112-1-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL114-1-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL116-1-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL112-1-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL114-1-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL116-1-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL112-1-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL114-1-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL116-1-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL122-1-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL123-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL122-1-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL124-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL122-1-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL125-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL128-1-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL140-1-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL144-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL128-1-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL131-1-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL140-1-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL144-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL128-1-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL131-1-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL140-1-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL144-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL128-1-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x24
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL131-1-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x24
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL140-1-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL144-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x24
	.uleb128 0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL138-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL146-1-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL148-1-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL150-1-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL154-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL146-1-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL148-1-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL150-1-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL154-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL146-1-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL148-1-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL150-1-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL154-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL157-1-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL159-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL157-1-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL160-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL157-1-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL161-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL157-1-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x24
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL164-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x24
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL157-1-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x25
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL165-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x25
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL157-1-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x26
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL166-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x26
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x27
	.4byte	.LVL157-1-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x27
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x27
	.4byte	.LVL162-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x27
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x28
	.4byte	.LVL157-1-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x28
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x28
	.4byte	.LVL163-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x28
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-1-.Ltext0
	.2byte	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.4byte	.LVL157-1-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL167-1-.Ltext0
	.2byte	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.4byte	.LVL167-1-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-1-.Ltext0
	.2byte	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.4byte	.LVL174-1-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL176-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL178-1-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL180-1-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL185-1-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL189-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL178-1-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL180-1-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL185-1-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL189-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL178-1-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL180-1-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL185-1-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL189-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL178-1-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x24
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL180-1-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x24
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL185-1-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL189-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x24
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL183-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL183-1-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x6f
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
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF143:
	.string	"CopyGLfloatToMtx44"
.LASF159:
	.string	"gluPerspective"
.LASF140:
	.string	"params"
.LASF127:
	.string	"zNear"
.LASF155:
	.string	"centerX"
.LASF156:
	.string	"centerY"
.LASF157:
	.string	"centerZ"
.LASF11:
	.string	"char"
.LASF39:
	.string	"GLint"
.LASF30:
	.string	"Mtx44P"
.LASF83:
	.string	"boxInfo"
.LASF187:
	.string	"globAmbient"
.LASF183:
	.string	"texture_stack"
.LASF135:
	.string	"glLoadMatrixd"
.LASF134:
	.string	"glLoadMatrixf"
.LASF198:
	.string	"fb_max_height"
.LASF168:
	.string	"_normalelements"
.LASF128:
	.string	"zFar"
.LASF75:
	.string	"_mat"
.LASF68:
	.string	"specular"
.LASF170:
	.string	"_texcoordelements"
.LASF149:
	.string	"axis"
.LASF70:
	.string	"spotCutoff"
.LASF98:
	.string	"_tex_env"
.LASF188:
	.string	"curmat"
.LASF60:
	.string	"begin"
.LASF55:
	.string	"mode"
.LASF212:
	.string	"_clearcolor"
.LASF104:
	.string	"maxlod"
.LASF79:
	.string	"GL_STATE_NONE"
.LASF123:
	.string	"glFrustum"
.LASF35:
	.string	"_gx_litobj"
.LASF77:
	.string	"shininess"
.LASF185:
	.string	"cur_mode"
.LASF169:
	.string	"_vertexelements"
.LASF47:
	.string	"GXColorf"
.LASF112:
	.string	"CargOp"
.LASF151:
	.string	"gluLookAt"
.LASF180:
	.string	"_cleardepth"
.LASF67:
	.string	"diffuse"
.LASF197:
	.string	"cur_state"
.LASF164:
	.string	"_tempnormalelement"
.LASF176:
	.string	"cur_tex_client"
.LASF167:
	.string	"vert"
.LASF233:
	.string	"ps_guMtxTrans"
.LASF20:
	.string	"uint32_t"
.LASF15:
	.string	"int8_t"
.LASF215:
	.string	"fog_mode"
.LASF228:
	.string	"_glSetErrorEx"
.LASF217:
	.string	"fog_endz"
.LASF173:
	.string	"_type"
.LASF21:
	.string	"vu16"
.LASF1:
	.string	"float"
.LASF96:
	.string	"bias"
.LASF225:
	.string	"glMultMatrixf"
.LASF17:
	.string	"int16_t"
.LASF34:
	.string	"GXColor"
.LASF57:
	.string	"farZclip"
.LASF53:
	.string	"VertexArray"
.LASF205:
	.string	"line_width"
.LASF9:
	.string	"long long unsigned int"
.LASF236:
	.string	"ps_guMtxRotAxisRad"
.LASF132:
	.string	"glMatrixMode"
.LASF213:
	.string	"Trans"
.LASF207:
	.string	"pack"
.LASF202:
	.string	"viewPort"
.LASF238:
	.string	"guLookAt"
.LASF232:
	.string	"ps_guMtxIdentity"
.LASF99:
	.string	"min_filter"
.LASF136:
	.string	"glPopMatrix"
.LASF181:
	.string	"model_stack"
.LASF209:
	.string	"color_write_mask"
.LASF111:
	.string	"Carg"
.LASF130:
	.string	"nearVal"
.LASF49:
	.string	"enable"
.LASF220:
	.string	"glTexEnvs"
.LASF119:
	.string	"cur_mat"
.LASF158:
	.string	"look"
.LASF192:
	.string	"blend_type"
.LASF160:
	.string	"fovy"
.LASF150:
	.string	"glScalef"
.LASF219:
	.string	"fog_color"
.LASF14:
	.string	"size_t"
.LASF84:
	.string	"width"
.LASF210:
	.string	"copy_mat_enabled"
.LASF175:
	.string	"cur_tex"
.LASF64:
	.string	"enabled"
.LASF242:
	.string	"_wgpipe"
.LASF110:
	.string	"comAlpha"
.LASF26:
	.string	"_Bool"
.LASF46:
	.string	"TexCoordElement"
.LASF22:
	.string	"vu32"
.LASF43:
	.string	"GLdouble"
.LASF200:
	.string	"scissor_test"
.LASF138:
	.string	"_glGetMatrixf"
.LASF235:
	.string	"cosf"
.LASF206:
	.string	"point_size"
.LASF133:
	.string	"glLoadIdentity"
.LASF42:
	.string	"GLfloat"
.LASF211:
	.string	"copy_material"
.LASF81:
	.string	"GL_STATE_NEWLIST"
.LASF184:
	.string	"curmtx"
.LASF25:
	.string	"vf32"
.LASF66:
	.string	"ambient"
.LASF201:
	.string	"scissorInfo"
.LASF190:
	.string	"gxwinding"
.LASF246:
	.string	"guPerspective"
.LASF129:
	.string	"glOrtho"
.LASF23:
	.string	"vs16"
.LASF36:
	.string	"GXLightObj"
.LASF142:
	.string	"CopyGLfloatToMtx"
.LASF226:
	.string	"guFrustum"
.LASF126:
	.string	"bottom"
.LASF97:
	.string	"ColorTrans"
.LASF8:
	.string	"long long int"
.LASF193:
	.string	"blend_src"
.LASF78:
	.string	"Material"
.LASF179:
	.string	"depthfunction"
.LASF118:
	.string	"glTexEnvSet"
.LASF16:
	.string	"uint8_t"
.LASF182:
	.string	"projection_stack"
.LASF161:
	.string	"aspect"
.LASF240:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl_matrix.c"
.LASF171:
	.string	"_colorelements"
.LASF125:
	.string	"right"
.LASF87:
	.string	"swap"
.LASF27:
	.string	"guVector"
.LASF147:
	.string	"glRotatef"
.LASF146:
	.string	"glTranslated"
.LASF144:
	.string	"glTranslatef"
.LASF40:
	.string	"GLuint"
.LASF80:
	.string	"GL_STATE_BEGIN"
.LASF28:
	.string	"MtxP"
.LASF221:
	.string	"read_mode"
.LASF61:
	.string	"elem_size"
.LASF82:
	.string	"glState"
.LASF71:
	.string	"constant"
.LASF214:
	.string	"fog_enable"
.LASF224:
	.string	"TopMtx44"
.LASF45:
	.string	"VertexElement"
.LASF95:
	.string	"scale"
.LASF106:
	.string	"biasclamp"
.LASF152:
	.string	"eyeX"
.LASF153:
	.string	"eyeY"
.LASF154:
	.string	"eyeZ"
.LASF24:
	.string	"vs32"
.LASF89:
	.string	"row_length"
.LASF178:
	.string	"depthupdate"
.LASF51:
	.string	"size"
.LASF74:
	.string	"LightObj"
.LASF101:
	.string	"wrap_s"
.LASF102:
	.string	"wrap_t"
.LASF72:
	.string	"linear"
.LASF32:
	.string	"_vecf"
.LASF194:
	.string	"blend_dst"
.LASF227:
	.string	"TopMtx"
.LASF245:
	.string	"computeZplanes"
.LASF85:
	.string	"height"
.LASF165:
	.string	"_temptexcoordelement"
.LASF121:
	.string	"CopyMtxToMtx44"
.LASF56:
	.string	"nearZclip"
.LASF231:
	.string	"ps_guMtxConcat"
.LASF204:
	.string	"normFar"
.LASF13:
	.string	"long double"
.LASF58:
	.string	"PrjMtx"
.LASF18:
	.string	"uint16_t"
.LASF239:
	.string	"GNU C 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF166:
	.string	"norm"
.LASF208:
	.string	"unpack"
.LASF148:
	.string	"angle"
.LASF65:
	.string	"spotDir"
.LASF48:
	.string	"_array"
.LASF69:
	.string	"spotExponent"
.LASF73:
	.string	"quad_t"
.LASF105:
	.string	"lodbias"
.LASF186:
	.string	"lights"
.LASF7:
	.string	"short int"
.LASF103:
	.string	"minlod"
.LASF100:
	.string	"max_filter"
.LASF12:
	.string	"long int"
.LASF31:
	.string	"WGPipe"
.LASF145:
	.string	"temp"
.LASF229:
	.string	"guOrtho"
.LASF63:
	.string	"_light"
.LASF115:
	.string	"color"
.LASF41:
	.string	"GLsizei"
.LASF222:
	.string	"call_offset"
.LASF163:
	.string	"_tempcolorelement"
.LASF91:
	.string	"skip_pixels"
.LASF124:
	.string	"left"
.LASF113:
	.string	"Aarg"
.LASF237:
	.string	"ps_guMtxScale"
.LASF108:
	.string	"maxaniso"
.LASF2:
	.string	"unsigned int"
.LASF218:
	.string	"fog_density"
.LASF50:
	.string	"stride"
.LASF191:
	.string	"lighting"
.LASF234:
	.string	"sinf"
.LASF230:
	.string	"Push"
.LASF3:
	.string	"sizetype"
.LASF10:
	.string	"long unsigned int"
.LASF131:
	.string	"farVal"
.LASF195:
	.string	"blend_op"
.LASF241:
	.string	"D:\\\\devkitPro\\\\portlibs\\\\thirdparty\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF216:
	.string	"fog_startz"
.LASF19:
	.string	"int32_t"
.LASF93:
	.string	"pixelStore"
.LASF37:
	.string	"GLenum"
.LASF52:
	.string	"type"
.LASF4:
	.string	"unsigned char"
.LASF29:
	.string	"Mtx44"
.LASF90:
	.string	"skip_rows"
.LASF172:
	.string	"vert_i"
.LASF88:
	.string	"lsb_first"
.LASF117:
	.string	"alpha_scale"
.LASF122:
	.string	"CopyMtx44ToMtx"
.LASF76:
	.string	"emissive"
.LASF44:
	.string	"Vector"
.LASF109:
	.string	"comRGB"
.LASF199:
	.string	"fb_max_width"
.LASF203:
	.string	"normNear"
.LASF174:
	.string	"_GLtype"
.LASF137:
	.string	"glPushMatrix"
.LASF177:
	.string	"depthtestenabled"
.LASF244:
	.string	"guessProjection"
.LASF33:
	.string	"_gx_color"
.LASF107:
	.string	"edgelod"
.LASF189:
	.string	"gxcullfaceanabled"
.LASF59:
	.string	"_stack"
.LASF6:
	.string	"signed char"
.LASF62:
	.string	"Stack"
.LASF5:
	.string	"short unsigned int"
.LASF162:
	.string	"wgPipe"
.LASF0:
	.string	"double"
.LASF92:
	.string	"alignment"
.LASF94:
	.string	"_trans"
.LASF54:
	.string	"_prj_mat"
.LASF141:
	.string	"model"
.LASF38:
	.string	"GLboolean"
.LASF116:
	.string	"rgb_scale"
.LASF243:
	.string	"_glState"
.LASF86:
	.string	"_pixelStore"
.LASF139:
	.string	"pname"
.LASF120:
	.string	"dest"
.LASF223:
	.string	"TopPrjMtx"
.LASF196:
	.string	"cull_mode"
.LASF114:
	.string	"AargOp"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
	.gnu_attribute 4, 1
