	.file	"gl_outcopy.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	TransformC, @function
TransformC:
.LFB62:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/include/glint.h"
	.loc 1 357 0
	.cfi_startproc
.LVL0:
	.loc 1 358 0
	lfs 0,4(4)
	.loc 1 360 0
	lis 9,.LC0@ha
	.loc 1 358 0
	lfs 12,0(3)
	lfs 13,0(4)
	fmadds 13,12,13,0
	.loc 1 360 0
	lfs 0,.LC0@l(9)
	fcmpu 7,13,0
	bgt+ 7,.L2
	.loc 1 362 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fcmpu 7,13,0
	blt+ 7,.L2
	.loc 1 361 0
	fmr 0,13
.L2:
	stfs 0,0(3)
	blr
	.cfi_endproc
.LFE62:
	.size	TransformC, .-TransformC
	.align 2
	.type	put_UBYTE, @function
put_UBYTE:
.LFB77:
	.file 2 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl_outcopy.c"
	.loc 2 145 0
	.cfi_startproc
.LVL1:
	.loc 2 147 0
	lwz 9,0(3)
	.loc 2 145 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.loc 2 147 0
	addi 10,9,1
	stw 10,0(3)
	lis 10,.LC3@ha
	lfs 0,.LC3@l(10)
	addi 10,1,8
	fmul 0,1,0
	fctiwz 0,0
	stfiwx 0,0,10
	lwz 10,8(1)
	stb 10,0(9)
	.loc 2 148 0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE77:
	.size	put_UBYTE, .-put_UBYTE
	.align 2
	.type	put_BYTE, @function
put_BYTE:
.LFB78:
	.loc 2 150 0
	.cfi_startproc
.LVL2:
	.loc 2 152 0
	lwz 9,0(3)
	.loc 2 150 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.loc 2 152 0
	addi 10,9,1
	stw 10,0(3)
	lis 10,.LC5@ha
	lfs 0,.LC5@l(10)
	addi 10,1,8
	fmul 0,1,0
	fctiwz 0,0
	stfiwx 0,0,10
	lwz 10,8(1)
	stb 10,0(9)
	.loc 2 153 0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE78:
	.size	put_BYTE, .-put_BYTE
	.align 2
	.type	put_USHORT, @function
put_USHORT:
.LFB79:
	.loc 2 155 0
	.cfi_startproc
.LVL3:
	.loc 2 157 0
	lwz 9,0(3)
	.loc 2 155 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.loc 2 157 0
	addi 10,9,2
	stw 10,0(3)
	lis 10,.LC6@ha
	lfs 0,.LC6@l(10)
	addi 10,1,8
	fmuls 1,1,0
.LVL4:
	fctiwz 0,1
	stfiwx 0,0,10
	lwz 10,8(1)
	sth 10,0(9)
	.loc 2 158 0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE79:
	.size	put_USHORT, .-put_USHORT
	.align 2
	.type	put_SHORT, @function
put_SHORT:
.LFB80:
	.loc 2 160 0
	.cfi_startproc
.LVL5:
	.loc 2 162 0
	lwz 9,0(3)
	.loc 2 160 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.loc 2 162 0
	addi 10,9,2
	stw 10,0(3)
	lis 10,.LC7@ha
	lfs 0,.LC7@l(10)
	addi 10,1,8
	fmuls 1,1,0
.LVL6:
	fctiwz 0,1
	stfiwx 0,0,10
	lwz 10,8(1)
	sth 10,0(9)
	.loc 2 163 0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE80:
	.size	put_SHORT, .-put_SHORT
	.align 2
	.type	put_UINT, @function
put_UINT:
.LFB81:
	.loc 2 165 0
	.cfi_startproc
.LVL7:
	.loc 2 167 0
	lwz 9,0(3)
	addi 10,9,4
	stw 10,0(3)
	lis 10,.LC8@ha
	lfs 0,.LC8@l(10)
	lis 10,.LC9@ha
	fmuls 1,1,0
.LVL8:
	lfs 0,.LC9@l(10)
	fcmpu 7,1,0
	cror 30,29,30
	beq- 7,.L17
	.loc 2 167 0
	fctiwz 1,1
	stfiwx 1,0,9
	blr
.L17:
	fsubs 0,1,0
	.loc 2 165 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.loc 2 167 0
	addi 10,1,8
	fctiwz 0,0
	stfiwx 0,0,10
	lwz 10,8(1)
	addis 10,10,0x8000
	stw 10,0(9)
	.loc 2 168 0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE81:
	.size	put_UINT, .-put_UINT
	.align 2
	.type	put_INT, @function
put_INT:
.LFB82:
	.loc 2 170 0
	.cfi_startproc
.LVL9:
	.loc 2 172 0
	lwz 9,0(3)
	addi 10,9,4
	stw 10,0(3)
	lis 10,.LC9@ha
	lfs 0,.LC9@l(10)
	fmuls 1,1,0
.LVL10:
	fctiwz 0,1
	stfiwx 0,0,9
	blr
	.cfi_endproc
.LFE82:
	.size	put_INT, .-put_INT
	.align 2
	.type	put_FLOAT, @function
put_FLOAT:
.LFB83:
	.loc 2 175 0
	.cfi_startproc
.LVL11:
	.loc 2 177 0
	lwz 9,0(3)
	addi 10,9,4
	stw 10,0(3)
	stfs 1,0(9)
	blr
	.cfi_endproc
.LFE83:
	.size	put_FLOAT, .-put_FLOAT
	.align 2
	.type	write_rgb, @function
write_rgb:
.LFB93:
	.loc 2 224 0
	.cfi_startproc
.LVL12:
	.loc 2 225 0
	addis 9,4,0xffff
	.loc 2 224 0
	mflr 0
	.loc 2 225 0
	addi 9,9,32544
	.loc 2 224 0
	stwu 1,-208(1)
	.cfi_def_cfa_offset 208
	.cfi_register 65, 0
	.loc 2 225 0
	cmplwi 7,9,1
	.loc 2 224 0
	stmw 27,188(1)
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 30,3
	stw 0,212(1)
	.cfi_offset 65, 4
	.loc 2 224 0
	mr 29,4
	.loc 2 225 0
	bgt- 7,.L23
.LBB53:
	.loc 2 230 0
	lbz 10,0(6)
.LVL13:
	.loc 2 231 0
	lbz 9,2(6)
	.loc 2 232 0
	stb 10,2(6)
	.loc 2 231 0
	stb 9,0(6)
.LVL14:
.L23:
.LBE53:
	.loc 2 237 0
	li 9,0
	lbz 8,0(6)
	ori 9,9,32820
	lbz 10,1(6)
	cmpw 7,5,9
	lbz 9,2(6)
	beq- 7,.L26
	cmplwi 7,5,32820
	bgt- 7,.L27
	cmplwi 7,5,5124
	beq- 7,.L28
	bgt- 7,.L29
	cmplwi 7,5,5121
	beq- 7,.L69
	bgt+ 7,.L31
	cmplwi 7,5,5120
	beq+ 7,.L32
	b .L25
.L31:
	cmplwi 7,5,5122
	beq- 7,.L33
	cmplwi 7,5,5123
	beq+ 7,.L34
	b .L25
.L29:
	cmplwi 7,5,5126
	beq- 7,.L35
	blt- 7,.L36
	xoris 7,5,0xffff
	cmpwi 7,7,-32718
	beq 7,.L37
	xoris 7,5,0xffff
	cmpwi 7,7,-32717
	beq 7,.L38
	b .L25
.L27:
	xoris 7,5,0xffff
	cmpwi 7,7,-31900
	beq 7,.L39
	cmplwi 7,5,33636
	li 7,0
	bgt- 7,.L40
	ori 7,7,32822
	cmpw 7,5,7
	beq- 7,.L41
	cmplwi 7,5,32822
	blt- 7,.L42
	xoris 7,5,0xffff
	cmpwi 7,7,-31902
	beq 7,.L43
	xoris 7,5,0xffff
	cmpwi 7,7,-31901
	beq 7,.L44
	b .L25
.L40:
	ori 7,7,33638
	cmpw 7,5,7
	beq- 7,.L45
	cmplwi 7,5,33638
	blt- 7,.L46
	xoris 7,5,0xffff
	cmpwi 7,7,-31897
	beq 7,.L47
	xoris 7,5,0xffff
	cmpwi 7,7,-31896
	beq 7,.L48
.L25:
	.loc 2 236 0
	li 31,0
	b .L30
.L37:
.LVL15:
.LBB54:
.LBB55:
	.loc 2 36 0
	rlwinm 9,9,26,30,31
	rlwinm 8,8,0,0,26
	or 9,9,8
	rlwinm 10,10,29,27,29
	b .L80
.LVL16:
.L43:
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	.loc 2 42 0
	rlwinm 8,8,27,29,31
	rlwinm 9,9,0,0,25
	or 9,8,9
	rlwinm 10,10,2,22,24
.LVL17:
.L80:
	or 10,9,10
	stb 10,0(30)
	b .L22
.L44:
.LVL18:
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	.loc 2 48 0
	rlwinm 8,8,8,16,20
	rlwinm 10,10,3,21,26
	or 10,8,10
	rlwinm 9,9,29,27,31
	b .L81
.LVL19:
.L39:
.LBE59:
.LBE58:
.LBB60:
.LBB61:
	.loc 2 54 0
	rlwinm 9,9,8,16,20
	rlwinm 10,10,3,21,26
	or 9,9,10
	rlwinm 8,8,29,27,31
	or 8,8,9
	sth 8,0(30)
	b .L22
.LVL20:
.L38:
.LBE61:
.LBE60:
.LBB62:
.LBB63:
	.loc 2 60 0
	rlwinm 8,8,8,16,19
	rlwinm 10,10,4,20,23
	or 10,8,10
	lbz 8,3(6)
	rlwinm 9,9,0,24,27
	srwi 8,8,4
	or 9,9,8
.LVL21:
.L81:
	or 9,9,10
.L82:
	sth 9,0(30)
	b .L22
.L46:
.LVL22:
.LBE63:
.LBE62:
.LBB64:
.LBB65:
	.loc 2 66 0
	lbz 7,3(6)
	rlwinm 9,9,4,20,23
	rlwinm 8,8,28,28,31
	rlwinm 7,7,8,16,19
	or 7,7,9
	rlwinm 9,10,0,24,27
	or 9,9,8
	or 9,9,7
	b .L82
.LVL23:
.L26:
.LBE65:
.LBE64:
.LBB66:
.LBB67:
	.loc 2 72 0
	rlwinm 10,10,3,21,25
	rlwinm 8,8,8,16,20
	or 8,8,10
	lbz 10,3(6)
	rlwinm 9,9,30,26,30
	srwi 10,10,7
	or 10,10,8
	b .L81
.LVL24:
.L45:
.LBE67:
.LBE66:
.LBB68:
.LBB69:
	.loc 2 78 0
	lbz 7,3(6)
	rlwinm 9,9,7,17,21
	rlwinm 8,8,29,27,31
	rlwinm 10,10,2,22,26
	rlwinm 7,7,8,16,16
	or 9,7,9
	or 8,8,9
	or 10,8,10
	sth 10,0(30)
	b .L22
.LVL25:
.L42:
.LBE69:
.LBE68:
.LBB70:
.LBB71:
	.loc 2 84 0
	slwi 8,8,24
	rlwinm 10,10,16,8,15
	lbz 7,3(6)
	or 10,8,10
	rlwinm 9,9,8,16,23
	or 10,10,7
	b .L83
.LVL26:
.L47:
.LBE71:
.LBE70:
.LBB72:
.LBB73:
	.loc 2 90 0
	lbz 7,3(6)
	rlwinm 9,9,16,8,15
	rlwinm 8,8,0,0xff
	rlwinm 10,10,8,16,23
	slwi 7,7,24
	or 9,7,9
	or 8,9,8
	or 10,8,10
	stw 10,0(30)
	b .L22
.LVL27:
.L41:
.LBE73:
.LBE72:
.LBB74:
.LBB75:
	.loc 2 100 0
	rlwinm 8,8,0,0xff
	lis 7,0x4330
	xoris 8,8,0x8000
	stw 7,56(1)
	stw 8,60(1)
	lis 5,.LC11@ha
.LVL28:
	lfs 13,.LC11@l(5)
	lis 8,.LC12@ha
	lfd 0,56(1)
	.loc 2 105 0
	rlwinm 10,10,0,0xff
	xoris 10,10,0x8000
	.loc 2 110 0
	rlwinm 9,9,0,0xff
	.loc 2 100 0
	fsub 12,0,13
	lfd 0,.LC12@l(8)
	addi 8,1,172
	.loc 2 110 0
	xoris 9,9,0x8000
	.loc 2 100 0
	fmul 12,12,0
	fctiwz 12,12
	stfiwx 12,0,8
	.loc 2 105 0
	addi 8,1,176
	stw 10,68(1)
	stw 7,64(1)
	.loc 2 100 0
	lwz 5,172(1)
	.loc 2 105 0
	lfd 11,64(1)
	.loc 2 100 0
	rlwinm 5,5,0,0xffff
.LVL29:
	.loc 2 105 0
	fsub 12,11,13
	cmplwi 7,5,1023
	fmul 12,12,0
	fctiwz 12,12
	stfiwx 12,0,8
	.loc 2 110 0
	stw 9,76(1)
	addi 9,1,180
	stw 7,72(1)
	.loc 2 105 0
	lwz 8,176(1)
	.loc 2 110 0
	lfd 11,72(1)
	.loc 2 105 0
	rlwinm 8,8,0,0xffff
.LVL30:
	.loc 2 110 0
	fsub 13,11,13
	fmul 0,13,0
	fctiwz 0,0
	stfiwx 0,0,9
	mr 9,5
	lwz 10,180(1)
	rlwinm 10,10,0,0xffff
.LVL31:
	ble- 7,.L50
	li 9,1023
.L50:
	cmplwi 7,8,1023
	.loc 2 116 0
	slwi 7,9,22
	mr 9,8
	ble- 7,.L51
	li 9,1023
.L51:
	rlwinm 9,9,12,4,19
	cmplwi 7,10,1023
	or 8,7,9
.LVL32:
	lbz 7,3(6)
	mr 9,10
	srwi 7,7,6
	or 8,8,7
	ble- 7,.L52
	li 9,1023
.L52:
	rlwinm 9,9,2,14,29
	or 9,8,9
	b .L84
.LVL33:
.L48:
.LBE75:
.LBE74:
.LBB76:
.LBB77:
	.loc 2 123 0
	rlwinm 8,8,0,0xff
	lis 7,0x4330
	xoris 8,8,0x8000
	stw 7,80(1)
	stw 8,84(1)
	lis 6,.LC11@ha
.LVL34:
	lfs 13,.LC11@l(6)
	lis 8,.LC12@ha
	lfd 0,80(1)
	.loc 2 128 0
	rlwinm 10,10,0,0xff
	xoris 10,10,0x8000
	.loc 2 133 0
	rlwinm 9,9,0,0xff
	.loc 2 123 0
	fsub 12,0,13
	lfd 0,.LC12@l(8)
	addi 8,1,160
	.loc 2 133 0
	xoris 9,9,0x8000
	.loc 2 123 0
	fmul 12,12,0
	fctiwz 12,12
	stfiwx 12,0,8
	.loc 2 128 0
	stw 10,92(1)
	addi 10,1,164
	stw 7,88(1)
	.loc 2 123 0
	lwz 8,160(1)
	.loc 2 128 0
	lfd 11,88(1)
	.loc 2 123 0
	rlwinm 8,8,0,0xffff
.LVL35:
	.loc 2 128 0
	fsub 12,11,13
	fmul 12,12,0
	fctiwz 12,12
	stfiwx 12,0,10
	.loc 2 133 0
	stw 9,100(1)
	addi 9,1,168
	stw 7,96(1)
	.loc 2 128 0
	lwz 6,164(1)
	.loc 2 133 0
	lfd 11,96(1)
	.loc 2 128 0
	rlwinm 6,6,0,0xffff
.LVL36:
	.loc 2 133 0
	fsub 13,11,13
	fmul 0,13,0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 9,168(1)
	rlwinm 9,9,0,0xffff
.LVL37:
	cmplwi 7,9,1023
	mr 10,9
	ble- 7,.L53
	li 10,1023
.L53:
	cmplwi 7,6,1023
	.loc 2 139 0
	slwi 7,10,20
	mr 10,6
	ble- 7,.L54
	li 10,1023
.L54:
	cmplwi 7,8,1023
	rlwinm 9,10,10,6,21
.LVL38:
	or 10,7,9
	mr 9,8
	ble- 7,.L55
	li 9,1023
.L55:
	rlwinm 9,9,0,0xffff
.LVL39:
.L83:
	or 9,10,9
.LVL40:
.L84:
	stw 9,0(30)
	b .L22
.LVL41:
.L32:
.LBE77:
.LBE76:
	.loc 2 291 0
	lis 31,put_BYTE@ha
	la 31,put_BYTE@l(31)
	.loc 2 292 0
	b .L30
.LVL42:
.L34:
	.loc 2 294 0
	lis 31,put_USHORT@ha
	la 31,put_USHORT@l(31)
	.loc 2 295 0
	b .L30
.LVL43:
.L33:
	.loc 2 297 0
	lis 31,put_SHORT@ha
	la 31,put_SHORT@l(31)
	.loc 2 298 0
	b .L30
.LVL44:
.L36:
	.loc 2 300 0
	lis 31,put_UINT@ha
	la 31,put_UINT@l(31)
	.loc 2 301 0
	b .L30
.LVL45:
.L28:
	.loc 2 303 0
	lis 31,put_INT@ha
	la 31,put_INT@l(31)
	.loc 2 304 0
	b .L30
.LVL46:
.L35:
	.loc 2 306 0
	lis 31,put_FLOAT@ha
	la 31,put_FLOAT@l(31)
	.loc 2 307 0
	b .L30
.LVL47:
.L69:
	.loc 2 288 0
	lis 31,put_UBYTE@ha
	la 31,put_UBYTE@l(31)
.LVL48:
.L30:
	.loc 2 318 0
	rlwinm 8,8,0,0xff
	lis 28,0x4330
	xoris 8,8,0x8000
	stw 28,104(1)
	stw 8,108(1)
	lis 7,.LC11@ha
	lfs 13,.LC11@l(7)
	lis 8,.LC3@ha
	lfd 0,104(1)
	.loc 2 319 0
	rlwinm 10,10,0,0xff
	xoris 10,10,0x8000
	stw 28,112(1)
	.loc 2 318 0
	fsub 12,0,13
	lfs 0,.LC3@l(8)
	.loc 2 319 0
	stw 10,116(1)
	.loc 2 320 0
	rlwinm 9,9,0,0xff
	xoris 9,9,0x8000
	stw 28,120(1)
	.loc 2 318 0
	frsp 12,12
	.loc 2 319 0
	lfd 11,112(1)
	.loc 2 320 0
	stw 9,124(1)
.LBB78:
.LBB79:
	.loc 1 369 0
	lis 27,Trans@ha
	la 27,Trans@l(27)
	addi 3,1,8
.LVL49:
.LBE79:
.LBE78:
	.loc 2 318 0
	fdivs 12,12,0
	.loc 2 321 0
	lbz 9,3(6)
	stw 28,128(1)
.LBB82:
.LBB80:
	.loc 1 369 0
	mr 4,27
.LVL50:
.LBE80:
.LBE82:
	.loc 2 321 0
	xoris 9,9,0x8000
	stw 9,132(1)
	.loc 2 318 0
	stfs 12,8(1)
	.loc 2 319 0
	fsub 12,11,13
	.loc 2 320 0
	lfd 11,120(1)
	.loc 2 319 0
	frsp 12,12
	fdivs 12,12,0
	stfs 12,12(1)
	.loc 2 320 0
	fsub 12,11,13
	frsp 12,12
	fdivs 12,12,0
	stfs 12,16(1)
	.loc 2 321 0
	lfd 12,128(1)
	fsub 13,12,13
	frsp 13,13
	fdivs 0,13,0
	stfs 0,20(1)
.LVL51:
.LBB83:
.LBB81:
	.loc 1 369 0
	bl TransformC
.LVL52:
	.loc 1 370 0
	addi 3,1,12
.LVL53:
	addi 4,27,8
	bl TransformC
.LVL54:
	.loc 1 371 0
	addi 3,1,16
.LVL55:
	addi 4,27,16
	bl TransformC
.LVL56:
	.loc 1 372 0
	addi 3,1,20
.LVL57:
	addi 4,27,24
	bl TransformC
.LVL58:
.LBE81:
.LBE83:
	.loc 2 325 0
	cmplwi 7,29,6407
	beq- 7,.L57
	bgt- 7,.L58
	cmplwi 7,29,6404
	beq- 7,.L59
	bgt+ 7,.L60
	cmplwi 7,29,6403
	bne- 7,.L22
	mr 3,1
.LBB84:
.LBB85:
	.loc 2 182 0
	lfs 1,8(1)
	stwu 30,52(3)
.LVL59:
	b .L78
.LVL60:
.L60:
.LBE85:
.LBE84:
	.loc 2 325 0
	cmplwi 7,29,6405
	beq- 7,.L62
	cmplwi 7,29,6406
	bne- 7,.L22
	mr 3,1
	stwu 30,40(3)
.LVL61:
	b .L79
.LVL62:
.L58:
	cmplwi 7,29,6410
	beq- 7,.L64
	bgt- 7,.L65
	cmplwi 7,29,6408
	beq- 7,.L66
	cmplwi 7,29,6409
	bne- 7,.L22
.LBB86:
.LBB87:
.LBB88:
.LBB89:
	.loc 2 211 0
	lfs 13,8(1)
	lis 9,.LC13@ha
	lfs 0,12(1)
	mr 3,1
	addi 8,1,156
	stwu 30,28(3)
.LVL63:
	fadds 0,13,0
.LVL64:
	lfs 13,16(1)
.LVL65:
	fadds 0,0,13
	lfs 13,.LC13@l(9)
	fdivs 0,0,13
	fctiwz 0,0
	stfiwx 0,0,8
.LBE89:
.LBE88:
	.loc 2 215 0
	stw 28,136(1)
.LBB91:
.LBB90:
	.loc 2 211 0
	lwz 9,156(1)
.LBE90:
.LBE91:
	.loc 2 215 0
	rlwinm 9,9,0,0xff
	stw 9,140(1)
	lis 9,.LC15@ha
	lfs 1,.LC15@l(9)
	lfd 0,136(1)
	fsub 1,0,1
	frsp 1,1
	b .L78
.LVL66:
.L65:
.LBE87:
.LBE86:
	.loc 2 325 0
	xoris 9,29,0xffff
	cmpwi 7,9,-32544
	beq 7,.L57
	xoris 9,29,0xffff
	cmpwi 7,9,-32543
	beq 7,.L66
	b .L22
.L59:
	mr 3,1
.LBB92:
.LBB93:
	.loc 2 186 0
	lfs 1,12(1)
	stwu 30,48(3)
.LVL67:
	b .L78
.LVL68:
.L62:
	mr 3,1
	stwu 30,44(3)
.LVL69:
	b .L85
.LVL70:
.L57:
	mr 29,1
.LVL71:
.LBE93:
.LBE92:
.LBB94:
.LBB95:
	.loc 2 198 0
	lfs 1,8(1)
	stwu 30,36(29)
.LVL72:
	mtctr 31
	mr 3,29
	bctrl
.LVL73:
	.loc 2 199 0
	mr 3,29
	lfs 1,12(1)
	mtctr 31
	bctrl
.LVL74:
	.loc 2 200 0
	mr 3,29
.LVL75:
.L85:
	lfs 1,16(1)
	b .L78
.LVL76:
.L66:
	mr 29,1
.LVL77:
.LBE95:
.LBE94:
.LBB96:
.LBB97:
	.loc 2 204 0
	lfs 1,8(1)
	stwu 30,32(29)
.LVL78:
	mtctr 31
	mr 3,29
	bctrl
.LVL79:
	.loc 2 205 0
	mr 3,29
	lfs 1,12(1)
	mtctr 31
	bctrl
.LVL80:
	.loc 2 206 0
	mr 3,29
	lfs 1,16(1)
	b .L77
.LVL81:
.L64:
.LBE97:
.LBE96:
.LBB98:
.LBB99:
.LBB100:
.LBB101:
	.loc 2 211 0
	lfs 13,8(1)
	lis 9,.LC13@ha
	lfs 0,12(1)
	mr 29,1
.LVL82:
	addi 8,1,152
	stwu 30,24(29)
.LVL83:
	fadds 0,13,0
.LVL84:
	lfs 13,16(1)
.LVL85:
.LBE101:
.LBE100:
	.loc 2 219 0
	mr 3,29
.LBB104:
.LBB102:
	.loc 2 211 0
	fadds 0,0,13
	lfs 13,.LC13@l(9)
	fdivs 0,0,13
	fctiwz 0,0
	stfiwx 0,0,8
.LBE102:
.LBE104:
	.loc 2 219 0
	stw 28,144(1)
.LBB105:
.LBB103:
	.loc 2 211 0
	lwz 9,152(1)
.LBE103:
.LBE105:
	.loc 2 219 0
	rlwinm 9,9,0,0xff
	stw 9,148(1)
	lis 9,.LC15@ha
	lfs 1,.LC15@l(9)
	lfd 0,144(1)
	fsub 1,0,1
	frsp 1,1
.LVL86:
.L77:
	mtctr 31
	bctrl
.LVL87:
	.loc 2 220 0
	mr 3,29
.L79:
	lfs 1,20(1)
.L78:
	mtctr 31
	bctrl
.LVL88:
.L22:
.LBE99:
.LBE98:
	.loc 2 360 0
	addi 11,1,208
	b _restgpr_27_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 65
	.cfi_endproc
.LFE93:
	.size	write_rgb, .-write_rgb
	.align 2
	.type	YCbCr2RGB, @function
YCbCr2RGB:
.LFB95:
	.loc 2 379 0
	.cfi_startproc
.LVL89:
	.loc 2 380 0
	lis 9,.LC16@ha
	lis 8,.LC19@ha
	lfd 0,.LC16@l(9)
	lis 9,.LC17@ha
	lfd 13,.LC17@l(9)
	lis 9,.LC20@ha
	fmul 1,1,0
.LVL90:
	lfs 12,.LC19@l(8)
	lfd 0,.LC20@l(9)
.LBB112:
.LBB113:
	.loc 2 364 0
	lis 10,.LC3@ha
.LBE113:
.LBE112:
	.loc 2 379 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
.LBB117:
.LBB114:
	.loc 2 366 0
	li 9,255
.LBE114:
.LBE117:
	.loc 2 380 0
	fmadd 13,3,13,1
	fmadd 13,13,12,0
.LBB118:
.LBB115:
	.loc 2 364 0
	lfs 0,.LC3@l(10)
.LBE115:
.LBE118:
	.loc 2 380 0
	frsp 13,13
.LVL91:
.LBB119:
.LBB116:
	.loc 2 364 0
	fcmpu 7,13,0
	bgt+ 7,.L87
	.loc 2 368 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fcmpu 7,13,0
	blt- 7,.L91
	.loc 2 374 0
	fctiwz 13,13
.LVL92:
	addi 9,1,16
	stfiwx 13,0,9
	lwz 9,16(1)
	rlwinm 9,9,0,0xff
	b .L87
.LVL93:
.L91:
	.loc 2 370 0
	li 9,0
.LVL94:
.L87:
.LBE116:
.LBE119:
	.loc 2 380 0
	stb 9,0(3)
	fneg 13,2
	.loc 2 381 0
	lis 9,.LC21@ha
	fneg 3,3
.LVL95:
	lfd 0,.LC21@l(9)
	lis 9,.LC22@ha
	lfs 12,.LC19@l(8)
	fmadd 13,13,0,1
	lfd 0,.LC22@l(9)
	lis 9,.LC23@ha
	fmadd 0,3,0,13
	lfd 13,.LC23@l(9)
.LBB120:
.LBB121:
	.loc 2 366 0
	li 9,255
.LBE121:
.LBE120:
	.loc 2 381 0
	fmadd 0,0,12,13
.LBB124:
.LBB122:
	.loc 2 364 0
	lfs 13,.LC3@l(10)
.LBE122:
.LBE124:
	.loc 2 381 0
	frsp 0,0
.LVL96:
.LBB125:
.LBB123:
	.loc 2 364 0
	fcmpu 7,0,13
	bgt+ 7,.L88
	.loc 2 368 0
	lis 9,.LC1@ha
	lfs 13,.LC1@l(9)
	fcmpu 7,0,13
	blt- 7,.L93
	.loc 2 374 0
	fctiwz 0,0
.LVL97:
	addi 9,1,12
	stfiwx 0,0,9
	lwz 9,12(1)
	rlwinm 9,9,0,0xff
	b .L88
.LVL98:
.L93:
	.loc 2 370 0
	li 9,0
.LVL99:
.L88:
.LBE123:
.LBE125:
	.loc 2 381 0
	stb 9,1(3)
	.loc 2 382 0
	lis 9,.LC24@ha
	lfd 0,.LC24@l(9)
	lis 9,.LC25@ha
	lfs 13,.LC19@l(8)
	fmadd 1,2,0,1
.LVL100:
	lfd 0,.LC25@l(9)
.LBB126:
.LBB127:
	.loc 2 366 0
	li 9,255
.LBE127:
.LBE126:
	.loc 2 382 0
	fmadd 1,1,13,0
.LBB130:
.LBB128:
	.loc 2 364 0
	lfs 0,.LC3@l(10)
.LBE128:
.LBE130:
	.loc 2 382 0
	frsp 1,1
.LVL101:
.LBB131:
.LBB129:
	.loc 2 364 0
	fcmpu 7,1,0
	bgt+ 7,.L89
	.loc 2 368 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fcmpu 7,1,0
	blt- 7,.L95
	.loc 2 374 0
	fctiwz 1,1
.LVL102:
	addi 9,1,8
	stfiwx 1,0,9
	lwz 9,8(1)
	rlwinm 9,9,0,0xff
	b .L89
.LVL103:
.L95:
	.loc 2 370 0
	li 9,0
.LVL104:
.L89:
.LBE129:
.LBE131:
	.loc 2 383 0
	.loc 2 382 0
	stb 9,2(3)
	.loc 2 383 0
	addi 1,1,24
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE95:
	.size	YCbCr2RGB, .-YCbCr2RGB
	.align 2
	.globl glReadBuffer
	.type	glReadBuffer, @function
glReadBuffer:
.LFB64:
	.loc 2 6 0
	.cfi_startproc
.LVL105:
	.loc 2 7 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L98
	.loc 2 7 0 is_stmt 0 discriminator 1
	lis 4,.LC26@ha
	li 3,1282
.LVL106:
	la 4,.LC26@l(4)
	li 5,7
	b .L103
.LVL107:
.L98:
	addi 3,3,-1024
.LVL108:
	cmplwi 7,3,6
	bgt- 7,.L99
	li 9,1
	slw 3,9,3
.LVL109:
	andi. 9,3,81
	bne- 0,.L100
	andi. 10,3,36
	beq+ 0,.L99
	.loc 2 18 0 is_stmt 1
	li 10,1029
	b .L104
.L100:
	.loc 2 14 0
	li 10,1028
.L104:
	.loc 2 18 0
	lis 9,read_mode@ha
	stw 10,read_mode@l(9)
	.loc 2 19 0
	blr
.L99:
	.loc 2 21 0
	lis 4,.LC26@ha
	li 3,1282
	la 4,.LC26@l(4)
	li 5,21
.L103:
	.loc 2 24 0
	.loc 2 21 0
	b _glSetErrorEx
.LVL110:
	.cfi_endproc
.LFE64:
	.size	glReadBuffer, .-glReadBuffer
	.align 2
	.globl glReadPixels
	.type	glReadPixels, @function
glReadPixels:
.LFB96:
	.loc 2 389 0
	.cfi_startproc
.LVL111:
	stwu 1,-168(1)
	.cfi_def_cfa_offset 168
	mfcr 12
	mflr 0
	stmw 14,96(1)
	.cfi_register 70, 12
	.cfi_register 65, 0
	.cfi_offset 14, -72
	.cfi_offset 15, -68
	.cfi_offset 16, -64
	.cfi_offset 17, -60
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
	mr 20,9
	.loc 2 390 0
	lis 9,cur_state@ha
.LVL112:
	.loc 2 389 0
	stw 12,92(1)
	.loc 2 390 0
	lwz 9,cur_state@l(9)
	.loc 2 389 0
	stw 0,172(1)
	.cfi_offset 70, -76
	.cfi_offset 65, 4
	.loc 2 390 0
	andi. 10,9,1
	beq+ 0,.L106
	.loc 2 390 0 is_stmt 0 discriminator 1
	lis 4,.LC26@ha
.LVL113:
	li 3,1282
.LVL114:
	la 4,.LC26@l(4)
	li 5,390
.LVL115:
	b .L133
.LVL116:
.L106:
	.loc 2 392 0 is_stmt 1
	cmpwi 7,5,0
	mr 24,5
	blt- 7,.L108
	.loc 2 392 0 is_stmt 0 discriminator 1
	cmpwi 7,6,0
	mr 23,6
	bge+ 7,.L109
.L108:
	.loc 2 394 0 is_stmt 1
	lis 4,.LC26@ha
.LVL117:
	li 3,1281
.LVL118:
	la 4,.LC26@l(4)
	li 5,394
.LVL119:
.L133:
	bl _glSetErrorEx
.LVL120:
	.loc 2 395 0
	b .L105
.LVL121:
.L109:
	.loc 2 399 0
	cmplwi 7,7,6403
	mr 29,7
	blt- 7,.L110
	cmplwi 7,7,6410
	mr 25,3
	mr 21,4
	mr 31,8
	ble- 7,.L111
	addis 9,7,0xffff
	addi 9,9,32544
	cmplwi 7,9,1
	ble+ 7,.L111
.L110:
	.loc 2 416 0
	lis 4,.LC26@ha
.LVL122:
	li 3,1280
.LVL123:
	la 4,.LC26@l(4)
	li 5,416
.LVL124:
	b .L133
.LVL125:
.L111:
	.loc 2 422 0
	cmplwi 7,31,32822
	bgt- 7,.L113
	cmplwi 7,31,32818
	addi 9,31,-5120
	blt+ 7,.L132
	b .L114
.L113:
	addis 9,31,0xffff
	addi 9,9,31902
.L132:
	cmplwi 7,9,6
	ble+ 7,.L114
	.loc 2 446 0
	lis 4,.LC26@ha
.LVL126:
	li 3,1280
.LVL127:
	la 4,.LC26@l(4)
	li 5,446
.LVL128:
	b .L133
.LVL129:
.L114:
	.loc 2 453 0
	lis 9,read_mode@ha
	lwz 9,read_mode@l(9)
	cmplwi 7,9,1028
	beq- 7,.L115
	cmplwi 7,9,1029
	bne- 7,.L105
	.loc 2 461 0
	bl getBackFramebuffer
.LVL130:
	.loc 2 462 0
	li 4,0
	.loc 2 461 0
	mr 26,3
.LVL131:
	.loc 2 462 0
	bl GX_CopyDisp
.LVL132:
	.loc 2 463 0
	bl GX_DrawDone
.LVL133:
	b .L117
.LVL134:
.L115:
	.loc 2 457 0
	bl getFrontFramebuffer
.LVL135:
	mr 26,3
.LVL136:
.L117:
	.loc 2 466 0
	cmpwi 7,26,0
	beq- 7,.L105
	.loc 2 474 0
	addi 3,1,16
	addi 4,1,12
	bl getVImode
.LVL137:
	.loc 2 478 0
	lwz 28,12(1)
.LBB132:
	.loc 2 514 0
	lis 16,pack@ha
	.loc 2 489 0
	add 14,21,23
.LBE132:
	.loc 2 478 0
	addi 28,28,-1
.LVL138:
.LBB133:
	.loc 2 489 0
	add 19,25,24
	.loc 2 512 0
	lis 27,0x4330
	lis 18,.LC15@ha
	.loc 2 513 0
	li 17,-1
	.loc 2 514 0
	la 16,pack@l(16)
.L119:
.LBE133:
	.loc 2 478 0 discriminator 1
	cmpwi 7,28,0
	blt- 7,.L105
	.loc 2 480 0
	cmpw 7,28,21
	blt- 7,.L105
.LBB134:
	.loc 2 489 0
	cmpw 4,28,14
.LBE134:
	.loc 2 480 0
	li 30,0
	subf 15,21,28
.L121:
.LVL139:
	.loc 2 485 0 discriminator 1
	lwz 9,16(1)
	cmplw 7,30,9
	bge- 7,.L134
.LBB135:
	.loc 2 487 0
	addi 26,26,4
.LVL140:
	lwz 11,-4(26)
.LVL141:
	.loc 2 489 0
	bgt- 4,.L124
	.loc 2 489 0 is_stmt 0 discriminator 1
	addi 22,30,1
	cmpw 7,22,25
	blt- 7,.L124
	cmpw 7,30,19
	bgt- 7,.L124
.LVL142:
	.loc 2 501 0 is_stmt 1
	cmpw 7,30,25
	.loc 2 495 0
	rlwinm 12,11,16,24,31
.LVL143:
	.loc 2 497 0
	rlwinm 0,11,0,0xff
.LVL144:
	.loc 2 501 0
	blt+ 7,.L125
	.loc 2 503 0
	srwi 9,11,24
.LVL145:
	stw 27,24(1)
	stw 9,28(1)
	addi 3,1,8
	stw 12,36(1)
	lfs 3,.LC15@l(18)
	lfd 0,24(1)
	stw 27,32(1)
	stw 0,44(1)
	fsub 1,0,3
	stw 27,40(1)
	lfd 0,32(1)
	frsp 1,1
	stw 0,80(1)
	fsub 2,0,3
	lfd 0,40(1)
	stw 11,72(1)
	fsub 3,0,3
	stw 12,76(1)
	frsp 2,2
	frsp 3,3
	bl YCbCr2RGB
.LVL146:
	.loc 2 505 0
	mr 4,20
	mr 5,31
	mr 6,24
	mr 7,23
	subf 8,25,30
	mr 9,15
	mr 10,16
	mr 3,29
	.loc 2 504 0
	stb 17,11(1)
	.loc 2 505 0
	bl pixel_offset
.LVL147:
	mr 4,29
	mr 5,31
	addi 6,1,8
	bl write_rgb
.LVL148:
	lwz 12,76(1)
	lwz 11,72(1)
	lwz 0,80(1)
.L125:
.LVL149:
	.loc 2 510 0
	cmpw 7,22,19
	bge+ 7,.L126
	.loc 2 512 0
	rlwinm 11,11,24,24,31
	stw 27,48(1)
	stw 11,52(1)
	addi 3,1,8
	lfs 3,.LC15@l(18)
	lfd 0,48(1)
	stw 12,60(1)
	stw 27,56(1)
	fsub 1,0,3
	stw 0,68(1)
	lfd 0,56(1)
	stw 27,64(1)
	frsp 1,1
	fsub 2,0,3
	lfd 0,64(1)
	fsub 3,0,3
	frsp 2,2
	frsp 3,3
	bl YCbCr2RGB
.LVL150:
	.loc 2 514 0
	mr 4,20
	mr 5,31
	mr 6,24
	mr 3,29
	mr 7,23
	subf 8,25,22
	mr 9,15
	mr 10,16
	.loc 2 513 0
	stb 17,11(1)
	.loc 2 514 0
	bl pixel_offset
.LVL151:
	mr 4,29
	mr 5,31
	addi 6,1,8
	bl write_rgb
.LVL152:
.L126:
	mr 30,22
.LVL153:
.L124:
.LBE135:
	.loc 2 485 0
	addi 30,30,1
.LVL154:
	b .L121
.L134:
	.loc 2 478 0
	addi 28,28,-1
.LVL155:
	b .L119
.LVL156:
.L105:
	.loc 2 518 0
	lwz 12,92(1)
	addi 11,1,168
	mtcrf 8,12
	b _restgpr_14_x
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
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 65
	.cfi_restore 70
	.cfi_endproc
.LFE96:
	.size	glReadPixels, .-glReadPixels
	.align 2
	.globl glGetTexImage
	.type	glGetTexImage, @function
glGetTexImage:
.LFB97:
	.loc 2 523 0
	.cfi_startproc
.LVL157:
	.loc 2 524 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beqlr+ 0
	.loc 2 524 0 is_stmt 0 discriminator 1
	lis 4,.LC26@ha
.LVL158:
	li 3,1282
.LVL159:
	la 4,.LC26@l(4)
	li 5,524
.LVL160:
	.loc 2 525 0 is_stmt 1 discriminator 1
	.loc 2 524 0 discriminator 1
	b _glSetErrorEx
.LVL161:
	.cfi_endproc
.LFE97:
	.size	glGetTexImage, .-glGetTexImage
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
	.4byte	1132396544
.LC5:
	.4byte	1123942400
.LC6:
	.4byte	1199570688
.LC7:
	.4byte	1191181824
.LC8:
	.4byte	1333788672
.LC9:
	.4byte	1325400064
.LC11:
	.4byte	1501560836
.LC13:
	.4byte	1077936128
.LC15:
	.4byte	1501560832
.LC19:
	.4byte	998244352
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC12:
	.4byte	1074793484
	.4byte	202116108
.LC16:
	.4byte	1081254223
	.4byte	-549755814
.LC17:
	.4byte	1081706835
	.4byte	-137438953
.LC20:
	.4byte	-1066672776
	.4byte	-721554506
.LC21:
	.4byte	1079579295
	.4byte	-1099511628
.LC22:
	.4byte	1080689623
	.4byte	171798692
.LC23:
	.4byte	1080095342
	.4byte	-1752346657
.LC24:
	.4byte	1082139467
	.4byte	-962072674
.LC25:
	.4byte	-1066316448
	.4byte	1099511628
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC26:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl_outcopy.c"
	.section	".text"
.Letext0:
	.file 3 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/include/GL/gl.h"
	.file 4 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h"
	.file 5 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\stdint.h"
	.file 6 "D:\\devkitPro\\/libogc/include/gctypes.h"
	.file 7 "D:\\devkitPro\\/libogc/include/ogc/gu.h"
	.file 8 "D:\\devkitPro\\/libogc/include/ogc/gx.h"
	.file 9 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/include/mat_stack.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1d9d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF224
	.byte	0x1
	.4byte	.LASF225
	.4byte	.LASF226
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x3
	.byte	0x92
	.4byte	0x37
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x93
	.4byte	0x49
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF227
	.byte	0x3
	.byte	0x95
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x98
	.4byte	0x70
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x99
	.4byte	0x49
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x9b
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x9c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x9d
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb7
	.uleb128 0x7
	.4byte	0x50
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0xd4
	.4byte	0x37
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x7
	.4byte	0xec
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x29
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x2a
	.4byte	0x49
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x35
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x36
	.4byte	0x82
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x4f
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0x50
	.4byte	0x37
	.uleb128 0x6
	.byte	0x4
	.4byte	0x50
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x9
	.string	"u8"
	.byte	0x6
	.byte	0x11
	.4byte	0x109
	.uleb128 0x9
	.string	"u16"
	.byte	0x6
	.byte	0x12
	.4byte	0x11f
	.uleb128 0x9
	.string	"u32"
	.byte	0x6
	.byte	0x13
	.4byte	0x135
	.uleb128 0x9
	.string	"s8"
	.byte	0x6
	.byte	0x16
	.4byte	0xfe
	.uleb128 0x9
	.string	"s16"
	.byte	0x6
	.byte	0x17
	.4byte	0x114
	.uleb128 0x9
	.string	"s32"
	.byte	0x6
	.byte	0x18
	.4byte	0x12a
	.uleb128 0x9
	.string	"vu8"
	.byte	0x6
	.byte	0x1b
	.4byte	0x197
	.uleb128 0xa
	.4byte	0x14c
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x1c
	.4byte	0x1a7
	.uleb128 0xa
	.4byte	0x156
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x1d
	.4byte	0x1b7
	.uleb128 0xa
	.4byte	0x161
	.uleb128 0x9
	.string	"vs8"
	.byte	0x6
	.byte	0x20
	.4byte	0x1c7
	.uleb128 0xa
	.4byte	0x16c
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0x21
	.4byte	0x1d7
	.uleb128 0xa
	.4byte	0x176
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x22
	.4byte	0x1e7
	.uleb128 0xa
	.4byte	0x181
	.uleb128 0x9
	.string	"f32"
	.byte	0x6
	.byte	0x2b
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x2e
	.4byte	0x202
	.uleb128 0xa
	.4byte	0x25
	.uleb128 0xb
	.4byte	0x14c
	.4byte	0x217
	.uleb128 0xc
	.4byte	0xdc
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF32
	.uleb128 0x6
	.byte	0x4
	.4byte	0x224
	.uleb128 0xd
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0xc
	.byte	0x7
	.byte	0x5e
	.4byte	0x250
	.uleb128 0xf
	.string	"x"
	.byte	0x7
	.byte	0x5f
	.4byte	0x1ec
	.byte	0
	.uleb128 0xf
	.string	"y"
	.byte	0x7
	.byte	0x5f
	.4byte	0x1ec
	.byte	0x4
	.uleb128 0xf
	.string	"z"
	.byte	0x7
	.byte	0x5f
	.4byte	0x1ec
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x7
	.byte	0x60
	.4byte	0x225
	.uleb128 0x10
	.4byte	.LASF228
	.byte	0x4
	.byte	0x8
	.2byte	0x490
	.4byte	0x2bb
	.uleb128 0x11
	.string	"U8"
	.byte	0x8
	.2byte	0x492
	.4byte	0x18c
	.uleb128 0x11
	.string	"S8"
	.byte	0x8
	.2byte	0x493
	.4byte	0x1bc
	.uleb128 0x11
	.string	"U16"
	.byte	0x8
	.2byte	0x494
	.4byte	0x19c
	.uleb128 0x11
	.string	"S16"
	.byte	0x8
	.2byte	0x495
	.4byte	0x1cc
	.uleb128 0x11
	.string	"U32"
	.byte	0x8
	.2byte	0x496
	.4byte	0x1ac
	.uleb128 0x11
	.string	"S32"
	.byte	0x8
	.2byte	0x497
	.4byte	0x1dc
	.uleb128 0x11
	.string	"F32"
	.byte	0x8
	.2byte	0x498
	.4byte	0x1f7
	.byte	0
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x8
	.2byte	0x499
	.4byte	0x25b
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x4
	.byte	0x8
	.2byte	0x49e
	.4byte	0x301
	.uleb128 0x14
	.string	"r"
	.byte	0x8
	.2byte	0x49f
	.4byte	0x14c
	.byte	0
	.uleb128 0x14
	.string	"g"
	.byte	0x8
	.2byte	0x4a0
	.4byte	0x14c
	.byte	0x1
	.uleb128 0x14
	.string	"b"
	.byte	0x8
	.2byte	0x4a1
	.4byte	0x14c
	.byte	0x2
	.uleb128 0x14
	.string	"a"
	.byte	0x8
	.2byte	0x4a2
	.4byte	0x14c
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x8
	.2byte	0x4a3
	.4byte	0x2c7
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x40
	.byte	0x8
	.2byte	0x4f1
	.4byte	0x328
	.uleb128 0x14
	.string	"val"
	.byte	0x8
	.2byte	0x4f2
	.4byte	0x328
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x161
	.4byte	0x338
	.uleb128 0xc
	.4byte	0xdc
	.byte	0xf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x8
	.2byte	0x4f3
	.4byte	0x30d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x161
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa
	.4byte	0x250
	.uleb128 0x15
	.byte	0x10
	.byte	0x1
	.byte	0x15
	.4byte	0x378
	.uleb128 0xf
	.string	"v"
	.byte	0x1
	.byte	0x17
	.4byte	0x350
	.byte	0
	.uleb128 0xf
	.string	"w"
	.byte	0x1
	.byte	0x18
	.4byte	0x25
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x1
	.byte	0x19
	.4byte	0x35b
	.uleb128 0x15
	.byte	0x8
	.byte	0x1
	.byte	0x1b
	.4byte	0x3a0
	.uleb128 0xf
	.string	"s"
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.string	"t"
	.byte	0x1
	.byte	0x1e
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x1
	.byte	0x1f
	.4byte	0x383
	.uleb128 0x15
	.byte	0x10
	.byte	0x1
	.byte	0x21
	.4byte	0x3dc
	.uleb128 0xf
	.string	"r"
	.byte	0x1
	.byte	0x23
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.string	"g"
	.byte	0x1
	.byte	0x24
	.4byte	0x25
	.byte	0x4
	.uleb128 0xf
	.string	"b"
	.byte	0x1
	.byte	0x25
	.4byte	0x25
	.byte	0x8
	.uleb128 0xf
	.string	"a"
	.byte	0x1
	.byte	0x26
	.4byte	0x25
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x1
	.byte	0x27
	.4byte	0x3ab
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x14
	.byte	0x1
	.byte	0x41
	.4byte	0x42e
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0x1
	.byte	0x43
	.4byte	0x217
	.byte	0
	.uleb128 0xf
	.string	"p"
	.byte	0x1
	.byte	0x44
	.4byte	0x21e
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0x45
	.4byte	0x14c
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0x46
	.4byte	0x65
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x1
	.byte	0x47
	.4byte	0x2c
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x1
	.byte	0x48
	.4byte	0x3e7
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x10
	.byte	0x9
	.byte	0xc
	.4byte	0x476
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x9
	.byte	0xe
	.4byte	0xe3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x9
	.byte	0xf
	.4byte	0xbc
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x9
	.byte	0x10
	.4byte	0xbc
	.byte	0x8
	.uleb128 0xf
	.string	"cur"
	.byte	0x9
	.byte	0x11
	.4byte	0xbc
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x9
	.byte	0x12
	.4byte	0x439
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0xa4
	.byte	0x1
	.byte	0x7d
	.4byte	0x51e
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0x1
	.byte	0x7f
	.4byte	0x217
	.byte	0
	.uleb128 0xf
	.string	"obj"
	.byte	0x1
	.byte	0x81
	.4byte	0x338
	.byte	0x4
	.uleb128 0xf
	.string	"pos"
	.byte	0x1
	.byte	0x83
	.4byte	0x378
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF56
	.byte	0x1
	.byte	0x85
	.4byte	0x350
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x1
	.byte	0x87
	.4byte	0x3dc
	.byte	0x60
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0x1
	.byte	0x88
	.4byte	0x3dc
	.byte	0x70
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x1
	.byte	0x89
	.4byte	0x3dc
	.byte	0x80
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x1
	.byte	0x8b
	.4byte	0x25
	.byte	0x90
	.uleb128 0x16
	.4byte	.LASF61
	.byte	0x1
	.byte	0x8c
	.4byte	0x25
	.byte	0x94
	.uleb128 0x16
	.4byte	.LASF62
	.byte	0x1
	.byte	0x8d
	.4byte	0x25
	.byte	0x98
	.uleb128 0x16
	.4byte	.LASF63
	.byte	0x1
	.byte	0x8e
	.4byte	0x25
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0x1
	.byte	0x8f
	.4byte	0x25
	.byte	0xa0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x1
	.byte	0x90
	.4byte	0x481
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x44
	.byte	0x1
	.byte	0x9a
	.4byte	0x572
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x1
	.byte	0x9c
	.4byte	0x3dc
	.byte	0
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x1
	.byte	0x9d
	.4byte	0x3dc
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0x1
	.byte	0x9e
	.4byte	0x3dc
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x1
	.byte	0x9f
	.4byte	0x3dc
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x1
	.byte	0xa0
	.4byte	0x25
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x1
	.byte	0xa1
	.4byte	0x529
	.uleb128 0x17
	.4byte	.LASF229
	.byte	0x4
	.byte	0x1
	.byte	0xb9
	.4byte	0x59c
	.uleb128 0x18
	.4byte	.LASF70
	.sleb128 0
	.uleb128 0x18
	.4byte	.LASF71
	.sleb128 1
	.uleb128 0x18
	.4byte	.LASF72
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x1
	.byte	0xbe
	.4byte	0x57d
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x10
	.byte	0x1
	.byte	0xe2
	.4byte	0x5e0
	.uleb128 0xf
	.string	"x"
	.byte	0x1
	.byte	0xe4
	.4byte	0x65
	.byte	0
	.uleb128 0xf
	.string	"y"
	.byte	0x1
	.byte	0xe5
	.4byte	0x65
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x1
	.byte	0xe6
	.4byte	0x94
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x1
	.byte	0xe7
	.4byte	0x94
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x1
	.byte	0xe8
	.4byte	0x5a7
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x14
	.byte	0x1
	.byte	0xf5
	.4byte	0x640
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x1
	.byte	0xf7
	.4byte	0x217
	.byte	0
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x1
	.byte	0xf8
	.4byte	0x217
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x1
	.byte	0xf9
	.4byte	0x70
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x1
	.byte	0xfa
	.4byte	0x70
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x1
	.byte	0xfb
	.4byte	0x70
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x1
	.byte	0xfc
	.4byte	0x70
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x1
	.byte	0xfd
	.4byte	0x5eb
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x8
	.byte	0x1
	.2byte	0x110
	.4byte	0x673
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x112
	.4byte	0x1ec
	.byte	0
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x113
	.4byte	0x1ec
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x114
	.4byte	0x64b
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x6c
	.byte	0x1
	.2byte	0x120
	.4byte	0x7ab
	.uleb128 0x19
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x122
	.4byte	0x217
	.byte	0
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x124
	.4byte	0x14c
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x125
	.4byte	0x14c
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x126
	.4byte	0x14c
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x127
	.4byte	0x14c
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x128
	.4byte	0x1ec
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x129
	.4byte	0x1ec
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x12a
	.4byte	0x1ec
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x12b
	.4byte	0x14c
	.byte	0x14
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x12c
	.4byte	0x14c
	.byte	0x15
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x12d
	.4byte	0x14c
	.byte	0x16
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x12f
	.4byte	0x2c
	.byte	0x18
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x131
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x132
	.4byte	0x2c
	.byte	0x20
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x134
	.4byte	0x7ab
	.byte	0x24
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x135
	.4byte	0x7ab
	.byte	0x30
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x136
	.4byte	0x7ab
	.byte	0x3c
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x137
	.4byte	0x7ab
	.byte	0x48
	.uleb128 0x14
	.string	"tex"
	.byte	0x1
	.2byte	0x139
	.4byte	0x65
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x13b
	.4byte	0x3dc
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x13d
	.4byte	0x14c
	.byte	0x68
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x13e
	.4byte	0x14c
	.byte	0x69
	.byte	0
	.uleb128 0xb
	.4byte	0x2c
	.4byte	0x7bb
	.uleb128 0xc
	.4byte	0xdc
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x13f
	.4byte	0x67f
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0x2
	.byte	0x8e
	.4byte	0x7d2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7d8
	.uleb128 0x1a
	.4byte	0x7e8
	.uleb128 0x1b
	.4byte	0x7e8
	.uleb128 0x1b
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe3
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0x2
	.byte	0xb4
	.byte	0x3
	.4byte	0x81c
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0xb4
	.4byte	0xe3
	.uleb128 0x1e
	.string	"fun"
	.byte	0x2
	.byte	0xb4
	.4byte	0x7c7
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0xb4
	.4byte	0x81c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x2
	.byte	0xd1
	.4byte	0x77
	.byte	0x3
	.4byte	0x84e
	.uleb128 0x1e
	.string	"r"
	.byte	0x2
	.byte	0xd1
	.4byte	0x9f
	.uleb128 0x1e
	.string	"g"
	.byte	0x2
	.byte	0xd1
	.4byte	0x9f
	.uleb128 0x1e
	.string	"b"
	.byte	0x2
	.byte	0xd1
	.4byte	0x9f
	.byte	0
	.uleb128 0x20
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x164
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87d
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.2byte	0x164
	.4byte	0x146
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.2byte	0x164
	.4byte	0x87d
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x673
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x2
	.byte	0x90
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8bd
	.uleb128 0x23
	.4byte	.LASF116
	.byte	0x2
	.byte	0x90
	.4byte	0x7e8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"v"
	.byte	0x2
	.byte	0x90
	.4byte	0x25
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x25
	.string	"p"
	.byte	0x2
	.byte	0x92
	.4byte	0x8bd
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x344
	.uleb128 0x22
	.4byte	.LASF117
	.byte	0x2
	.byte	0x95
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8fd
	.uleb128 0x23
	.4byte	.LASF116
	.byte	0x2
	.byte	0x95
	.4byte	0x7e8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"v"
	.byte	0x2
	.byte	0x95
	.4byte	0x25
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x25
	.string	"p"
	.byte	0x2
	.byte	0x97
	.4byte	0x8fd
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x903
	.uleb128 0x6
	.byte	0x4
	.4byte	0x16c
	.uleb128 0x22
	.4byte	.LASF118
	.byte	0x2
	.byte	0x9a
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x944
	.uleb128 0x23
	.4byte	.LASF116
	.byte	0x2
	.byte	0x9a
	.4byte	0x7e8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"v"
	.byte	0x2
	.byte	0x9a
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x25
	.string	"p"
	.byte	0x2
	.byte	0x9c
	.4byte	0x944
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x94a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x156
	.uleb128 0x22
	.4byte	.LASF119
	.byte	0x2
	.byte	0x9f
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98b
	.uleb128 0x23
	.4byte	.LASF116
	.byte	0x2
	.byte	0x9f
	.4byte	0x7e8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"v"
	.byte	0x2
	.byte	0x9f
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x25
	.string	"p"
	.byte	0x2
	.byte	0xa1
	.4byte	0x98b
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x991
	.uleb128 0x6
	.byte	0x4
	.4byte	0x176
	.uleb128 0x22
	.4byte	.LASF120
	.byte	0x2
	.byte	0xa4
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d2
	.uleb128 0x23
	.4byte	.LASF116
	.byte	0x2
	.byte	0xa4
	.4byte	0x7e8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"v"
	.byte	0x2
	.byte	0xa4
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x25
	.string	"p"
	.byte	0x2
	.byte	0xa6
	.4byte	0x9d2
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x34a
	.uleb128 0x22
	.4byte	.LASF121
	.byte	0x2
	.byte	0xa9
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa13
	.uleb128 0x23
	.4byte	.LASF116
	.byte	0x2
	.byte	0xa9
	.4byte	0x7e8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"v"
	.byte	0x2
	.byte	0xa9
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x25
	.string	"p"
	.byte	0x2
	.byte	0xab
	.4byte	0xa13
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa19
	.uleb128 0x6
	.byte	0x4
	.4byte	0x181
	.uleb128 0x22
	.4byte	.LASF122
	.byte	0x2
	.byte	0xae
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa59
	.uleb128 0x23
	.4byte	.LASF116
	.byte	0x2
	.byte	0xae
	.4byte	0x7e8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"v"
	.byte	0x2
	.byte	0xae
	.4byte	0x25
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x25
	.string	"p"
	.byte	0x2
	.byte	0xb0
	.4byte	0xa59
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x146
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0x2
	.byte	0x20
	.byte	0x3
	.4byte	0xa8b
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0x20
	.4byte	0xe3
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0x20
	.4byte	0x344
	.uleb128 0x27
	.string	"p"
	.byte	0x2
	.byte	0x22
	.4byte	0x344
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0x2
	.byte	0x26
	.byte	0x3
	.4byte	0xab7
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0x26
	.4byte	0xe3
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0x26
	.4byte	0x344
	.uleb128 0x27
	.string	"p"
	.byte	0x2
	.byte	0x28
	.4byte	0x344
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF126
	.byte	0x2
	.byte	0x2c
	.byte	0x3
	.4byte	0xae3
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0x2c
	.4byte	0xe3
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0x2c
	.4byte	0x344
	.uleb128 0x27
	.string	"p"
	.byte	0x2
	.byte	0x2e
	.4byte	0x94a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0x2
	.byte	0x32
	.byte	0x3
	.4byte	0xb0f
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0x32
	.4byte	0xe3
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0x32
	.4byte	0x344
	.uleb128 0x27
	.string	"p"
	.byte	0x2
	.byte	0x34
	.4byte	0x94a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x2
	.byte	0x38
	.byte	0x3
	.4byte	0xb3b
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0x38
	.4byte	0xe3
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0x38
	.4byte	0x344
	.uleb128 0x27
	.string	"p"
	.byte	0x2
	.byte	0x3a
	.4byte	0x94a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0x2
	.byte	0x3e
	.byte	0x3
	.4byte	0xb67
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0x3e
	.4byte	0xe3
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0x3e
	.4byte	0x344
	.uleb128 0x27
	.string	"p"
	.byte	0x2
	.byte	0x40
	.4byte	0x94a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0x2
	.byte	0x44
	.byte	0x3
	.4byte	0xb93
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0x44
	.4byte	0xe3
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0x44
	.4byte	0x344
	.uleb128 0x27
	.string	"p"
	.byte	0x2
	.byte	0x46
	.4byte	0x94a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0x2
	.byte	0x4a
	.byte	0x3
	.4byte	0xbbf
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0x4a
	.4byte	0xe3
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0x4a
	.4byte	0x344
	.uleb128 0x27
	.string	"p"
	.byte	0x2
	.byte	0x4c
	.4byte	0x94a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x2
	.byte	0x50
	.byte	0x3
	.4byte	0xbeb
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0x50
	.4byte	0xe3
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0x50
	.4byte	0x344
	.uleb128 0x27
	.string	"p"
	.byte	0x2
	.byte	0x52
	.4byte	0x34a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x2
	.byte	0x56
	.byte	0x3
	.4byte	0xc17
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0x56
	.4byte	0xe3
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0x56
	.4byte	0x344
	.uleb128 0x27
	.string	"p"
	.byte	0x2
	.byte	0x58
	.4byte	0x34a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF134
	.byte	0x2
	.byte	0x5f
	.byte	0x3
	.4byte	0xc5e
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0x5f
	.4byte	0xe3
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0x5f
	.4byte	0x344
	.uleb128 0x27
	.string	"p"
	.byte	0x2
	.byte	0x61
	.4byte	0x34a
	.uleb128 0x27
	.string	"r"
	.byte	0x2
	.byte	0x62
	.4byte	0x156
	.uleb128 0x27
	.string	"g"
	.byte	0x2
	.byte	0x62
	.4byte	0x156
	.uleb128 0x27
	.string	"b"
	.byte	0x2
	.byte	0x62
	.4byte	0x156
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF135
	.byte	0x2
	.byte	0x76
	.byte	0x3
	.4byte	0xca5
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0x76
	.4byte	0xe3
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0x76
	.4byte	0x344
	.uleb128 0x27
	.string	"p"
	.byte	0x2
	.byte	0x78
	.4byte	0x34a
	.uleb128 0x27
	.string	"r"
	.byte	0x2
	.byte	0x79
	.4byte	0x156
	.uleb128 0x27
	.string	"g"
	.byte	0x2
	.byte	0x79
	.4byte	0x156
	.uleb128 0x27
	.string	"b"
	.byte	0x2
	.byte	0x79
	.4byte	0x156
	.byte	0
	.uleb128 0x28
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x16f
	.byte	0x3
	.4byte	0xcdb
	.uleb128 0x29
	.string	"r"
	.byte	0x1
	.2byte	0x16f
	.4byte	0x146
	.uleb128 0x29
	.string	"g"
	.byte	0x1
	.2byte	0x16f
	.4byte	0x146
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.2byte	0x16f
	.4byte	0x146
	.uleb128 0x29
	.string	"a"
	.byte	0x1
	.2byte	0x16f
	.4byte	0x146
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0x2
	.byte	0xb8
	.byte	0x3
	.4byte	0xd09
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0xb8
	.4byte	0xe3
	.uleb128 0x1e
	.string	"fun"
	.byte	0x2
	.byte	0xb8
	.4byte	0x7c7
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0xb8
	.4byte	0x81c
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0x2
	.byte	0xbc
	.byte	0x3
	.4byte	0xd37
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0xbc
	.4byte	0xe3
	.uleb128 0x1e
	.string	"fun"
	.byte	0x2
	.byte	0xbc
	.4byte	0x7c7
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0xbc
	.4byte	0x81c
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x2
	.byte	0xc0
	.byte	0x3
	.4byte	0xd65
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0xc0
	.4byte	0xe3
	.uleb128 0x1e
	.string	"fun"
	.byte	0x2
	.byte	0xc0
	.4byte	0x7c7
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0xc0
	.4byte	0x81c
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF140
	.byte	0x2
	.byte	0xc4
	.byte	0x3
	.4byte	0xd93
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0xc4
	.4byte	0xe3
	.uleb128 0x1e
	.string	"fun"
	.byte	0x2
	.byte	0xc4
	.4byte	0x7c7
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0xc4
	.4byte	0x81c
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x2
	.byte	0xca
	.byte	0x3
	.4byte	0xdc1
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0xca
	.4byte	0xe3
	.uleb128 0x1e
	.string	"fun"
	.byte	0x2
	.byte	0xca
	.4byte	0x7c7
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0xca
	.4byte	0x81c
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x2
	.byte	0xd5
	.byte	0x3
	.4byte	0xdef
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0xd5
	.4byte	0xe3
	.uleb128 0x1e
	.string	"fun"
	.byte	0x2
	.byte	0xd5
	.4byte	0x7c7
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0xd5
	.4byte	0x81c
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0x2
	.byte	0xd9
	.byte	0x3
	.4byte	0xe1d
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x2
	.byte	0xd9
	.4byte	0xe3
	.uleb128 0x1e
	.string	"fun"
	.byte	0x2
	.byte	0xd9
	.4byte	0x7c7
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x2
	.byte	0xd9
	.4byte	0x81c
	.byte	0
	.uleb128 0x22
	.4byte	.LASF144
	.byte	0x2
	.byte	0xdf
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13fe
	.uleb128 0x2a
	.4byte	.LASF112
	.byte	0x2
	.byte	0xdf
	.4byte	0xe3
	.4byte	.LLST4
	.uleb128 0x2a
	.4byte	.LASF145
	.byte	0x2
	.byte	0xdf
	.4byte	0x2c
	.4byte	.LLST5
	.uleb128 0x2a
	.4byte	.LASF48
	.byte	0x2
	.byte	0xdf
	.4byte	0x2c
	.4byte	.LLST6
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x2
	.byte	0xdf
	.4byte	0x344
	.4byte	.LLST7
	.uleb128 0x2b
	.string	"fun"
	.byte	0x2
	.byte	0xec
	.4byte	0x7c7
	.4byte	.LLST8
	.uleb128 0x2c
	.4byte	.LASF146
	.byte	0x2
	.2byte	0x13c
	.4byte	0x13fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.4byte	0xea8
	.uleb128 0x2b
	.string	"t"
	.byte	0x2
	.byte	0xe6
	.4byte	0x14c
	.4byte	.LLST9
	.byte	0
	.uleb128 0x2e
	.4byte	0xa5f
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x2
	.byte	0xf0
	.4byte	0xee1
	.uleb128 0x2f
	.4byte	0xa76
	.4byte	.LLST10
	.uleb128 0x2f
	.4byte	0xa6b
	.4byte	.LLST11
	.uleb128 0x30
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.uleb128 0x31
	.4byte	0xa81
	.4byte	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0xa8b
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x2
	.byte	0xf4
	.4byte	0xf1a
	.uleb128 0x2f
	.4byte	0xaa2
	.4byte	.LLST13
	.uleb128 0x2f
	.4byte	0xa97
	.4byte	.LLST14
	.uleb128 0x30
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x31
	.4byte	0xaad
	.4byte	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0xab7
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x2
	.byte	0xf8
	.4byte	0xf53
	.uleb128 0x2f
	.4byte	0xace
	.4byte	.LLST16
	.uleb128 0x2f
	.4byte	0xac3
	.4byte	.LLST17
	.uleb128 0x30
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.uleb128 0x31
	.4byte	0xad9
	.4byte	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0xae3
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.byte	0x2
	.byte	0xfc
	.4byte	0xf8c
	.uleb128 0x2f
	.4byte	0xafa
	.4byte	.LLST19
	.uleb128 0x2f
	.4byte	0xaef
	.4byte	.LLST20
	.uleb128 0x30
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.uleb128 0x31
	.4byte	0xb05
	.4byte	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xb0f
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0x2
	.2byte	0x100
	.4byte	0xfc6
	.uleb128 0x2f
	.4byte	0xb26
	.4byte	.LLST22
	.uleb128 0x2f
	.4byte	0xb1b
	.4byte	.LLST23
	.uleb128 0x30
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.uleb128 0x31
	.4byte	0xb31
	.4byte	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xb3b
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0x2
	.2byte	0x104
	.4byte	0x1000
	.uleb128 0x2f
	.4byte	0xb52
	.4byte	.LLST25
	.uleb128 0x2f
	.4byte	0xb47
	.4byte	.LLST26
	.uleb128 0x30
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.uleb128 0x31
	.4byte	0xb5d
	.4byte	.LLST26
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xb67
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x2
	.2byte	0x108
	.4byte	0x103a
	.uleb128 0x2f
	.4byte	0xb7e
	.4byte	.LLST28
	.uleb128 0x2f
	.4byte	0xb73
	.4byte	.LLST29
	.uleb128 0x30
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.uleb128 0x31
	.4byte	0xb89
	.4byte	.LLST29
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xb93
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x2
	.2byte	0x10c
	.4byte	0x1074
	.uleb128 0x2f
	.4byte	0xbaa
	.4byte	.LLST31
	.uleb128 0x2f
	.4byte	0xb9f
	.4byte	.LLST32
	.uleb128 0x30
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.uleb128 0x31
	.4byte	0xbb5
	.4byte	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xbbf
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x2
	.2byte	0x110
	.4byte	0x10ae
	.uleb128 0x2f
	.4byte	0xbd6
	.4byte	.LLST34
	.uleb128 0x2f
	.4byte	0xbcb
	.4byte	.LLST35
	.uleb128 0x30
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.uleb128 0x31
	.4byte	0xbe1
	.4byte	.LLST35
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xbeb
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x2
	.2byte	0x114
	.4byte	0x10e8
	.uleb128 0x2f
	.4byte	0xc02
	.4byte	.LLST37
	.uleb128 0x2f
	.4byte	0xbf7
	.4byte	.LLST38
	.uleb128 0x30
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.uleb128 0x31
	.4byte	0xc0d
	.4byte	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xc17
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x2
	.2byte	0x118
	.4byte	0x113d
	.uleb128 0x2f
	.4byte	0xc2e
	.4byte	.LLST40
	.uleb128 0x2f
	.4byte	0xc23
	.4byte	.LLST41
	.uleb128 0x30
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.uleb128 0x31
	.4byte	0xc39
	.4byte	.LLST41
	.uleb128 0x31
	.4byte	0xc42
	.4byte	.LLST43
	.uleb128 0x31
	.4byte	0xc4b
	.4byte	.LLST44
	.uleb128 0x31
	.4byte	0xc54
	.4byte	.LLST45
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xc5e
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.byte	0x2
	.2byte	0x11c
	.4byte	0x1192
	.uleb128 0x2f
	.4byte	0xc75
	.4byte	.LLST46
	.uleb128 0x2f
	.4byte	0xc6a
	.4byte	.LLST47
	.uleb128 0x30
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.uleb128 0x31
	.4byte	0xc80
	.4byte	.LLST47
	.uleb128 0x31
	.4byte	0xc89
	.4byte	.LLST49
	.uleb128 0x31
	.4byte	0xc92
	.4byte	.LLST50
	.uleb128 0x31
	.4byte	0xc9b
	.4byte	.LLST51
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	0xca5
	.4byte	.LBB78
	.4byte	.Ldebug_ranges0+0
	.byte	0x2
	.2byte	0x143
	.4byte	0x1233
	.uleb128 0x2f
	.4byte	0xcd0
	.4byte	.LLST52
	.uleb128 0x2f
	.4byte	0xcc6
	.4byte	.LLST53
	.uleb128 0x2f
	.4byte	0xcbc
	.4byte	.LLST54
	.uleb128 0x2f
	.4byte	0xcb2
	.4byte	.LLST55
	.uleb128 0x34
	.4byte	.LVL52
	.4byte	0x84e
	.4byte	0x11e5
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8b
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x34
	.4byte	.LVL54
	.4byte	0x84e
	.4byte	0x1200
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8b
	.sleb128 8
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.byte	0
	.uleb128 0x34
	.4byte	.LVL56
	.4byte	0x84e
	.4byte	0x121b
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8b
	.sleb128 16
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x36
	.4byte	.LVL58
	.4byte	0x84e
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8b
	.sleb128 24
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x7ee
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.byte	0x2
	.2byte	0x148
	.4byte	0x1263
	.uleb128 0x2f
	.4byte	0x810
	.4byte	.LLST56
	.uleb128 0x2f
	.4byte	0x805
	.4byte	.LLST57
	.uleb128 0x2f
	.4byte	0x7fa
	.4byte	.LLST58
	.byte	0
	.uleb128 0x32
	.4byte	0xdc1
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.byte	0x2
	.2byte	0x15c
	.4byte	0x12be
	.uleb128 0x2f
	.4byte	0xde3
	.4byte	.LLST59
	.uleb128 0x2f
	.4byte	0xdd8
	.4byte	.LLST60
	.uleb128 0x2f
	.4byte	0xdcd
	.4byte	.LLST61
	.uleb128 0x37
	.4byte	0x822
	.4byte	.LBB88
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x2
	.byte	0xd7
	.uleb128 0x2f
	.4byte	0x844
	.4byte	.LLST62
	.uleb128 0x2f
	.4byte	0x83b
	.4byte	.LLST63
	.uleb128 0x2f
	.4byte	0x832
	.4byte	.LLST64
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xcdb
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.byte	0x2
	.2byte	0x14b
	.4byte	0x12ee
	.uleb128 0x2f
	.4byte	0xcfd
	.4byte	.LLST65
	.uleb128 0x2f
	.4byte	0xcf2
	.4byte	.LLST66
	.uleb128 0x2f
	.4byte	0xce7
	.4byte	.LLST67
	.byte	0
	.uleb128 0x32
	.4byte	0xd65
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.byte	0x2
	.2byte	0x155
	.4byte	0x1340
	.uleb128 0x2f
	.4byte	0xd87
	.4byte	.LLST68
	.uleb128 0x2f
	.4byte	0xd7c
	.4byte	.LLST69
	.uleb128 0x2f
	.4byte	0xd71
	.4byte	.LLST70
	.uleb128 0x38
	.4byte	.LVL73
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.4byte	0x1330
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL74
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0xd93
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.byte	0x2
	.2byte	0x159
	.4byte	0x1392
	.uleb128 0x2f
	.4byte	0xdb5
	.4byte	.LLST71
	.uleb128 0x2f
	.4byte	0xdaa
	.4byte	.LLST72
	.uleb128 0x2f
	.4byte	0xd9f
	.4byte	.LLST73
	.uleb128 0x38
	.4byte	.LVL79
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.4byte	0x1382
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL80
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	0xdef
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.byte	0x2
	.2byte	0x15f
	.uleb128 0x2f
	.4byte	0xe11
	.4byte	.LLST74
	.uleb128 0x2f
	.4byte	0xe06
	.4byte	.LLST75
	.uleb128 0x2f
	.4byte	0xdfb
	.4byte	.LLST76
	.uleb128 0x3b
	.4byte	0x822
	.4byte	.LBB100
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x2
	.byte	0xdb
	.4byte	0x13ec
	.uleb128 0x2f
	.4byte	0x844
	.4byte	.LLST77
	.uleb128 0x2f
	.4byte	0x83b
	.4byte	.LLST78
	.uleb128 0x2f
	.4byte	0x832
	.4byte	.LLST79
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL87
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x3c
	.4byte	.LVL88
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x25
	.4byte	0x140e
	.uleb128 0xc
	.4byte	0xdc
	.byte	0x3
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF148
	.byte	0x2
	.2byte	0x16a
	.4byte	0x14c
	.byte	0x3
	.4byte	0x142a
	.uleb128 0x29
	.string	"c"
	.byte	0x2
	.2byte	0x16a
	.4byte	0x25
	.byte	0
	.uleb128 0x20
	.4byte	.LASF149
	.byte	0x2
	.2byte	0x17a
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14d0
	.uleb128 0x3e
	.string	"Y"
	.byte	0x2
	.2byte	0x17a
	.4byte	0x25
	.4byte	.LLST80
	.uleb128 0x21
	.string	"Cb"
	.byte	0x2
	.2byte	0x17a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x3e
	.string	"Cr"
	.byte	0x2
	.2byte	0x17a
	.4byte	0x25
	.4byte	.LLST81
	.uleb128 0x3f
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x17a
	.4byte	0x344
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	0x140e
	.4byte	.LBB112
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x2
	.2byte	0x17c
	.4byte	0x1497
	.uleb128 0x2f
	.4byte	0x141f
	.4byte	.LLST82
	.byte	0
	.uleb128 0x33
	.4byte	0x140e
	.4byte	.LBB120
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x2
	.2byte	0x17d
	.4byte	0x14b5
	.uleb128 0x2f
	.4byte	0x141f
	.4byte	.LLST83
	.byte	0
	.uleb128 0x40
	.4byte	0x140e
	.4byte	.LBB126
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x2
	.2byte	0x17e
	.uleb128 0x2f
	.4byte	0x141f
	.4byte	.LLST84
	.byte	0
	.byte	0
	.uleb128 0x41
	.4byte	.LASF150
	.byte	0x2
	.byte	0x5
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14fe
	.uleb128 0x2a
	.4byte	.LASF100
	.byte	0x2
	.byte	0x5
	.4byte	0x2c
	.4byte	.LLST85
	.uleb128 0x42
	.4byte	.LVL110
	.4byte	0x1ced
	.byte	0
	.uleb128 0x43
	.4byte	.LASF151
	.byte	0x2
	.2byte	0x181
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1772
	.uleb128 0x3e
	.string	"x"
	.byte	0x2
	.2byte	0x181
	.4byte	0x65
	.4byte	.LLST86
	.uleb128 0x3e
	.string	"y"
	.byte	0x2
	.2byte	0x181
	.4byte	0x65
	.4byte	.LLST87
	.uleb128 0x44
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x182
	.4byte	0x94
	.4byte	.LLST88
	.uleb128 0x44
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x182
	.4byte	0x94
	.4byte	.LLST89
	.uleb128 0x44
	.4byte	.LASF145
	.byte	0x2
	.2byte	0x183
	.4byte	0x2c
	.4byte	.LLST90
	.uleb128 0x44
	.4byte	.LASF48
	.byte	0x2
	.2byte	0x183
	.4byte	0x2c
	.4byte	.LLST91
	.uleb128 0x44
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x184
	.4byte	0x140
	.4byte	.LLST92
	.uleb128 0x45
	.4byte	.LASF152
	.byte	0x2
	.2byte	0x1c3
	.4byte	0x34a
	.4byte	.LLST93
	.uleb128 0x2c
	.4byte	.LASF153
	.byte	0x2
	.2byte	0x1d7
	.4byte	0x161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2c
	.4byte	.LASF154
	.byte	0x2
	.2byte	0x1d8
	.4byte	0x161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x46
	.string	"i"
	.byte	0x2
	.2byte	0x1dc
	.4byte	0x70
	.4byte	.LLST94
	.uleb128 0x46
	.string	"j"
	.byte	0x2
	.2byte	0x1dc
	.4byte	0x70
	.4byte	.LLST95
	.uleb128 0x47
	.4byte	.Ldebug_ranges0+0xc0
	.4byte	0x171c
	.uleb128 0x46
	.string	"val"
	.byte	0x2
	.2byte	0x1e7
	.4byte	0x161
	.4byte	.LLST96
	.uleb128 0x46
	.string	"Y1"
	.byte	0x2
	.2byte	0x1ee
	.4byte	0x14c
	.4byte	.LLST97
	.uleb128 0x46
	.string	"Cb"
	.byte	0x2
	.2byte	0x1ef
	.4byte	0x14c
	.4byte	.LLST98
	.uleb128 0x46
	.string	"Y2"
	.byte	0x2
	.2byte	0x1f0
	.4byte	0x14c
	.4byte	.LLST99
	.uleb128 0x46
	.string	"Cr"
	.byte	0x2
	.2byte	0x1f1
	.4byte	0x14c
	.4byte	.LLST100
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x1f3
	.4byte	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x34
	.4byte	.LVL146
	.4byte	0x142a
	.4byte	0x1646
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x34
	.4byte	.LVL147
	.4byte	0x1d08
	.4byte	0x1687
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x87
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x88
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x84
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL148
	.4byte	0xe1d
	.4byte	0x16a8
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL150
	.4byte	0x142a
	.4byte	0x16bd
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x34
	.4byte	.LVL151
	.4byte	0x1d08
	.4byte	0x16fe
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x5
	.byte	0x86
	.sleb128 0
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x87
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x88
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x84
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL152
	.4byte	0xe1d
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	.LVL120
	.4byte	0x1ced
	.uleb128 0x48
	.4byte	.LVL130
	.4byte	0x1d47
	.uleb128 0x34
	.4byte	.LVL132
	.4byte	0x1d58
	.4byte	0x1747
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x48
	.4byte	.LVL133
	.4byte	0x1d6f
	.uleb128 0x48
	.4byte	.LVL135
	.4byte	0x1d7d
	.uleb128 0x36
	.4byte	.LVL137
	.4byte	0x1d8e
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LASF155
	.byte	0x2
	.2byte	0x208
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17fa
	.uleb128 0x44
	.4byte	.LASF156
	.byte	0x2
	.2byte	0x208
	.4byte	0x2c
	.4byte	.LLST101
	.uleb128 0x44
	.4byte	.LASF157
	.byte	0x2
	.2byte	0x208
	.4byte	0x65
	.4byte	.LLST102
	.uleb128 0x44
	.4byte	.LASF145
	.byte	0x2
	.2byte	0x209
	.4byte	0x2c
	.4byte	.LLST103
	.uleb128 0x44
	.4byte	.LASF48
	.byte	0x2
	.2byte	0x209
	.4byte	0x2c
	.4byte	.LLST104
	.uleb128 0x44
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x20a
	.4byte	0x140
	.4byte	.LLST105
	.uleb128 0x49
	.4byte	.LVL161
	.4byte	0x1ced
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x20c
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF158
	.byte	0x8
	.2byte	0x548
	.4byte	0x1806
	.uleb128 0x7
	.4byte	0x180b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2bb
	.uleb128 0x4b
	.4byte	.LASF159
	.byte	0x1
	.byte	0x3c
	.4byte	0x3dc
	.uleb128 0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x4b
	.4byte	.LASF160
	.byte	0x1
	.byte	0x3d
	.4byte	0x350
	.uleb128 0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xb
	.4byte	0x3a0
	.4byte	0x1843
	.uleb128 0xc
	.4byte	0xdc
	.byte	0x7
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF161
	.byte	0x1
	.byte	0x3e
	.4byte	0x1833
	.uleb128 0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x4b
	.4byte	.LASF162
	.byte	0x1
	.byte	0x4a
	.4byte	0x42e
	.uleb128 0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x4b
	.4byte	.LASF163
	.byte	0x1
	.byte	0x4b
	.4byte	0x42e
	.uleb128 0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xb
	.4byte	0x42e
	.4byte	0x1886
	.uleb128 0xc
	.4byte	0xdc
	.byte	0x7
	.byte	0
	.uleb128 0x4c
	.string	"tex"
	.byte	0x1
	.byte	0x4c
	.4byte	0x1876
	.uleb128 0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x4b
	.4byte	.LASF107
	.byte	0x1
	.byte	0x4d
	.4byte	0x42e
	.uleb128 0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xb
	.4byte	0x350
	.4byte	0x18b9
	.uleb128 0x4d
	.4byte	0xdc
	.2byte	0x3e7
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF164
	.byte	0x1
	.byte	0x4f
	.4byte	0x18a8
	.uleb128 0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x4b
	.4byte	.LASF165
	.byte	0x1
	.byte	0x50
	.4byte	0x18a8
	.uleb128 0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xb
	.4byte	0x3a0
	.4byte	0x18f2
	.uleb128 0xc
	.4byte	0xdc
	.byte	0x7
	.uleb128 0x4d
	.4byte	0xdc
	.2byte	0x3e7
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF166
	.byte	0x1
	.byte	0x51
	.4byte	0x18db
	.uleb128 0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xb
	.4byte	0x3dc
	.4byte	0x1914
	.uleb128 0x4d
	.4byte	0xdc
	.2byte	0x3e7
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF167
	.byte	0x1
	.byte	0x52
	.4byte	0x1903
	.uleb128 0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x4b
	.4byte	.LASF168
	.byte	0x1
	.byte	0x5c
	.4byte	0x70
	.uleb128 0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x4b
	.4byte	.LASF169
	.byte	0x1
	.byte	0x5d
	.4byte	0x70
	.uleb128 0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x4b
	.4byte	.LASF170
	.byte	0x1
	.byte	0x5e
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x4b
	.4byte	.LASF171
	.byte	0x1
	.byte	0x60
	.4byte	0x70
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x4b
	.4byte	.LASF172
	.byte	0x1
	.byte	0x61
	.4byte	0x70
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x4b
	.4byte	.LASF173
	.byte	0x1
	.byte	0x65
	.4byte	0x14c
	.uleb128 0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x4b
	.4byte	.LASF174
	.byte	0x1
	.byte	0x66
	.4byte	0x14c
	.uleb128 0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x4b
	.4byte	.LASF175
	.byte	0x1
	.byte	0x67
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x4b
	.4byte	.LASF176
	.byte	0x1
	.byte	0x68
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x4b
	.4byte	.LASF177
	.byte	0x1
	.byte	0x74
	.4byte	0x476
	.uleb128 0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x4b
	.4byte	.LASF178
	.byte	0x1
	.byte	0x75
	.4byte	0x476
	.uleb128 0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xb
	.4byte	0x476
	.4byte	0x19f0
	.uleb128 0xc
	.4byte	0xdc
	.byte	0x7
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF179
	.byte	0x1
	.byte	0x76
	.4byte	0x19e0
	.uleb128 0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x4b
	.4byte	.LASF180
	.byte	0x1
	.byte	0x77
	.4byte	0x1a12
	.uleb128 0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x6
	.byte	0x4
	.4byte	0x476
	.uleb128 0x4b
	.4byte	.LASF181
	.byte	0x1
	.byte	0x78
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xb
	.4byte	0x51e
	.4byte	0x1a39
	.uleb128 0xc
	.4byte	0xdc
	.byte	0x7
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF182
	.byte	0x1
	.byte	0x93
	.4byte	0x1a29
	.uleb128 0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x4b
	.4byte	.LASF183
	.byte	0x1
	.byte	0x96
	.4byte	0x3dc
	.uleb128 0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x4b
	.4byte	.LASF184
	.byte	0x1
	.byte	0xa3
	.4byte	0x572
	.uleb128 0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x4b
	.4byte	.LASF185
	.byte	0x1
	.byte	0xa6
	.4byte	0x217
	.uleb128 0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x4b
	.4byte	.LASF186
	.byte	0x1
	.byte	0xa7
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x4b
	.4byte	.LASF187
	.byte	0x1
	.byte	0xab
	.4byte	0x217
	.uleb128 0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x4b
	.4byte	.LASF188
	.byte	0x1
	.byte	0xb2
	.4byte	0x14c
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x4b
	.4byte	.LASF189
	.byte	0x1
	.byte	0xb3
	.4byte	0x14c
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x4b
	.4byte	.LASF190
	.byte	0x1
	.byte	0xb4
	.4byte	0x14c
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x4b
	.4byte	.LASF191
	.byte	0x1
	.byte	0xb5
	.4byte	0x14c
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x4b
	.4byte	.LASF192
	.byte	0x1
	.byte	0xb7
	.4byte	0x14c
	.uleb128 0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x4b
	.4byte	.LASF193
	.byte	0x1
	.byte	0xc0
	.4byte	0x59c
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x4b
	.4byte	.LASF194
	.byte	0x1
	.byte	0xea
	.4byte	0x70
	.uleb128 0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x4b
	.4byte	.LASF195
	.byte	0x1
	.byte	0xeb
	.4byte	0x70
	.uleb128 0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x4b
	.4byte	.LASF196
	.byte	0x1
	.byte	0xec
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x4b
	.4byte	.LASF197
	.byte	0x1
	.byte	0xed
	.4byte	0x5e0
	.uleb128 0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x4b
	.4byte	.LASF198
	.byte	0x1
	.byte	0xee
	.4byte	0x5e0
	.uleb128 0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x4b
	.4byte	.LASF199
	.byte	0x1
	.byte	0xef
	.4byte	0x1ec
	.uleb128 0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x4b
	.4byte	.LASF200
	.byte	0x1
	.byte	0xf0
	.4byte	0x1ec
	.uleb128 0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x4b
	.4byte	.LASF153
	.byte	0x1
	.byte	0xf2
	.4byte	0x1ec
	.uleb128 0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x4b
	.4byte	.LASF201
	.byte	0x1
	.byte	0xf3
	.4byte	0x1ec
	.uleb128 0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x4b
	.4byte	.LASF202
	.byte	0x1
	.byte	0xff
	.4byte	0x640
	.uleb128 0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x4e
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x100
	.4byte	0x640
	.uleb128 0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xb
	.4byte	0x217
	.4byte	0x1bd1
	.uleb128 0xc
	.4byte	0xdc
	.byte	0x3
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x101
	.4byte	0x1bc1
	.uleb128 0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x4e
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x107
	.4byte	0x217
	.uleb128 0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x4e
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x108
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x4e
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x10b
	.4byte	0x301
	.uleb128 0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xb
	.4byte	0x673
	.4byte	0x1c29
	.uleb128 0xc
	.4byte	0xdc
	.byte	0x3
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x11e
	.4byte	0x1c19
	.uleb128 0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x4e
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x143
	.4byte	0x217
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x4e
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x144
	.4byte	0x14c
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x4e
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x145
	.4byte	0x1ec
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x4e
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x146
	.4byte	0x1ec
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x4e
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x147
	.4byte	0x1ec
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x4e
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x148
	.4byte	0x301
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xb
	.4byte	0x7bb
	.4byte	0x1cb7
	.uleb128 0xc
	.4byte	0xdc
	.byte	0x7
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x14a
	.4byte	0x1ca7
	.uleb128 0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x4e
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x14f
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x4e
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x152
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x4f
	.4byte	.LASF218
	.byte	0x1
	.byte	0xc7
	.4byte	0x1d08
	.uleb128 0x1b
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	0xf3
	.uleb128 0x1b
	.4byte	0x70
	.byte	0
	.uleb128 0x50
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x10e
	.4byte	0xb1
	.4byte	0x1d41
	.uleb128 0x1b
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	0xb1
	.uleb128 0x1b
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	0xbc
	.uleb128 0x1b
	.4byte	0xbc
	.uleb128 0x1b
	.4byte	0xbc
	.uleb128 0x1b
	.4byte	0xbc
	.uleb128 0x1b
	.4byte	0x1d41
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x640
	.uleb128 0x51
	.4byte	.LASF219
	.byte	0x1
	.byte	0xd6
	.4byte	0xe3
	.4byte	0x1d58
	.uleb128 0x52
	.byte	0
	.uleb128 0x53
	.4byte	.LASF220
	.byte	0x8
	.2byte	0xe5c
	.4byte	0x1d6f
	.uleb128 0x1b
	.4byte	0xe3
	.uleb128 0x1b
	.4byte	0x14c
	.byte	0
	.uleb128 0x54
	.4byte	.LASF222
	.byte	0x8
	.2byte	0x6cb
	.4byte	0x1d7d
	.uleb128 0x52
	.byte	0
	.uleb128 0x51
	.4byte	.LASF221
	.byte	0x1
	.byte	0xd5
	.4byte	0xe3
	.4byte	0x1d8e
	.uleb128 0x52
	.byte	0
	.uleb128 0x55
	.4byte	.LASF223
	.byte	0x1
	.byte	0xd8
	.uleb128 0x1b
	.4byte	0x34a
	.uleb128 0x1b
	.4byte	0x34a
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE81-.Ltext0
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
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL52-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL52-1-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL52-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52-1-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	put_BYTE
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	put_USHORT
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	put_SHORT
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	put_UINT
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	put_INT
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	put_FLOAT
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x17
	.byte	0x75
	.sleb128 0
	.byte	0x12
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xa
	.2byte	0x3ff
	.byte	0x16
	.byte	0x14
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x17
	.byte	0x78
	.sleb128 0
	.byte	0x12
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xa
	.2byte	0x3ff
	.byte	0x16
	.byte	0x14
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x19
	.byte	0x91
	.sleb128 -30
	.byte	0x94
	.byte	0x2
	.byte	0x12
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xa
	.2byte	0x3ff
	.byte	0x16
	.byte	0x14
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x17
	.byte	0x7a
	.sleb128 0
	.byte	0x12
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xa
	.2byte	0x3ff
	.byte	0x16
	.byte	0x14
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x17
	.byte	0x78
	.sleb128 0
	.byte	0x12
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xa
	.2byte	0x3ff
	.byte	0x16
	.byte	0x14
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x17
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xa
	.2byte	0x3ff
	.byte	0x16
	.byte	0x14
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x17
	.byte	0x79
	.sleb128 0
	.byte	0x12
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xa
	.2byte	0x3ff
	.byte	0x16
	.byte	0x14
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x19
	.byte	0x91
	.sleb128 -38
	.byte	0x94
	.byte	0x2
	.byte	0x12
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xa
	.2byte	0x3ff
	.byte	0x16
	.byte	0x14
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -188
	.byte	0x9f
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58-1-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -188
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -192
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56-1-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -192
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -196
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54-1-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -196
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52-1-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -180
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -192
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -200
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -160
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -172
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -176
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -184
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -192
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -200
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL90-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL95-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x4
	.byte	0x73
	.sleb128 1024
	.byte	0x9f
	.4byte	.LVL109-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL130-1-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135-1-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL156-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL130-1-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL135-1-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL156-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL130-1-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL135-1-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL156-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL120-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL120-1-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL130-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL130-1-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL135-1-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL156-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL120-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL120-1-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL130-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL130-1-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL135-1-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL156-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL120-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL120-1-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL130-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL130-1-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL135-1-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL156-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL112-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL132-1-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x9
	.byte	0x7b
	.sleb128 0
	.byte	0xa
	.2byte	0xff00
	.byte	0x1a
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL159-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL158-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL160-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL161-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL161-1-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL161-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL161-1-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
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
	.4byte	.LBB78-.Ltext0
	.4byte	.LBE78-.Ltext0
	.4byte	.LBB82-.Ltext0
	.4byte	.LBE82-.Ltext0
	.4byte	.LBB83-.Ltext0
	.4byte	.LBE83-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB88-.Ltext0
	.4byte	.LBE88-.Ltext0
	.4byte	.LBB91-.Ltext0
	.4byte	.LBE91-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB112-.Ltext0
	.4byte	.LBE112-.Ltext0
	.4byte	.LBB117-.Ltext0
	.4byte	.LBE117-.Ltext0
	.4byte	.LBB118-.Ltext0
	.4byte	.LBE118-.Ltext0
	.4byte	.LBB119-.Ltext0
	.4byte	.LBE119-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB120-.Ltext0
	.4byte	.LBE120-.Ltext0
	.4byte	.LBB124-.Ltext0
	.4byte	.LBE124-.Ltext0
	.4byte	.LBB125-.Ltext0
	.4byte	.LBE125-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB126-.Ltext0
	.4byte	.LBE126-.Ltext0
	.4byte	.LBB130-.Ltext0
	.4byte	.LBE130-.Ltext0
	.4byte	.LBB131-.Ltext0
	.4byte	.LBE131-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB132-.Ltext0
	.4byte	.LBE132-.Ltext0
	.4byte	.LBB133-.Ltext0
	.4byte	.LBE133-.Ltext0
	.4byte	.LBB134-.Ltext0
	.4byte	.LBE134-.Ltext0
	.4byte	.LBB135-.Ltext0
	.4byte	.LBE135-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF136:
	.string	"TransformRGBA"
.LASF144:
	.string	"write_rgb"
.LASF122:
	.string	"put_FLOAT"
.LASF20:
	.string	"char"
.LASF7:
	.string	"GLint"
.LASF145:
	.string	"format"
.LASF64:
	.string	"quad_t"
.LASF74:
	.string	"boxInfo"
.LASF114:
	.string	"TransformC"
.LASF183:
	.string	"globAmbient"
.LASF179:
	.string	"texture_stack"
.LASF152:
	.string	"buffer"
.LASF220:
	.string	"GX_CopyDisp"
.LASF194:
	.string	"fb_max_height"
.LASF164:
	.string	"_normalelements"
.LASF66:
	.string	"_mat"
.LASF86:
	.string	"scale"
.LASF59:
	.string	"specular"
.LASF227:
	.string	"GLvoid"
.LASF157:
	.string	"level"
.LASF223:
	.string	"getVImode"
.LASF166:
	.string	"_texcoordelements"
.LASF85:
	.string	"_trans"
.LASF61:
	.string	"spotCutoff"
.LASF89:
	.string	"_tex_env"
.LASF184:
	.string	"curmat"
.LASF51:
	.string	"begin"
.LASF100:
	.string	"mode"
.LASF207:
	.string	"_clearcolor"
.LASF95:
	.string	"maxlod"
.LASF70:
	.string	"GL_STATE_NONE"
.LASF38:
	.string	"_gx_litobj"
.LASF68:
	.string	"shininess"
.LASF181:
	.string	"cur_mode"
.LASF165:
	.string	"_vertexelements"
.LASF43:
	.string	"GXColorf"
.LASF104:
	.string	"CargOp"
.LASF176:
	.string	"_cleardepth"
.LASF58:
	.string	"diffuse"
.LASF193:
	.string	"cur_state"
.LASF160:
	.string	"_tempnormalelement"
.LASF172:
	.string	"cur_tex_client"
.LASF163:
	.string	"vert"
.LASF26:
	.string	"uint32_t"
.LASF21:
	.string	"int8_t"
.LASF210:
	.string	"fog_mode"
.LASF111:
	.string	"putType"
.LASF218:
	.string	"_glSetErrorEx"
.LASF212:
	.string	"fog_endz"
.LASF169:
	.string	"_type"
.LASF27:
	.string	"vu16"
.LASF0:
	.string	"float"
.LASF90:
	.string	"min_filter"
.LASF123:
	.string	"put_RED"
.LASF115:
	.string	"put_UBYTE"
.LASF87:
	.string	"bias"
.LASF23:
	.string	"int16_t"
.LASF37:
	.string	"GXColor"
.LASF153:
	.string	"line_width"
.LASF17:
	.string	"long long unsigned int"
.LASF208:
	.string	"Trans"
.LASF202:
	.string	"pack"
.LASF67:
	.string	"emissive"
.LASF121:
	.string	"put_INT"
.LASF126:
	.string	"put_USHORT_5_6_5"
.LASF198:
	.string	"viewPort"
.LASF150:
	.string	"glReadBuffer"
.LASF177:
	.string	"model_stack"
.LASF204:
	.string	"color_write_mask"
.LASF103:
	.string	"Carg"
.LASF45:
	.string	"enable"
.LASF215:
	.string	"glTexEnvs"
.LASF188:
	.string	"blend_type"
.LASF131:
	.string	"put_USHORT_1_5_5_5_REV"
.LASF119:
	.string	"put_SHORT"
.LASF225:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl_outcopy.c"
.LASF214:
	.string	"fog_color"
.LASF151:
	.string	"glReadPixels"
.LASF156:
	.string	"target"
.LASF75:
	.string	"width"
.LASF118:
	.string	"put_USHORT"
.LASF205:
	.string	"copy_mat_enabled"
.LASF171:
	.string	"cur_tex"
.LASF228:
	.string	"_wgpipe"
.LASF102:
	.string	"comAlpha"
.LASF32:
	.string	"_Bool"
.LASF28:
	.string	"vu32"
.LASF196:
	.string	"scissor_test"
.LASF140:
	.string	"put_RGB"
.LASF139:
	.string	"put_ALPHA"
.LASF201:
	.string	"point_size"
.LASF200:
	.string	"normFar"
.LASF12:
	.string	"GLfloat"
.LASF206:
	.string	"copy_material"
.LASF72:
	.string	"GL_STATE_NEWLIST"
.LASF180:
	.string	"curmtx"
.LASF31:
	.string	"vf32"
.LASF57:
	.string	"ambient"
.LASF141:
	.string	"put_RGBA"
.LASF138:
	.string	"put_BLUE"
.LASF186:
	.string	"gxwinding"
.LASF29:
	.string	"vs16"
.LASF39:
	.string	"GXLightObj"
.LASF137:
	.string	"put_GREEN"
.LASF88:
	.string	"ColorTrans"
.LASF16:
	.string	"long long int"
.LASF189:
	.string	"blend_src"
.LASF69:
	.string	"Material"
.LASF116:
	.string	"pixels"
.LASF149:
	.string	"YCbCr2RGB"
.LASF175:
	.string	"depthfunction"
.LASF110:
	.string	"glTexEnvSet"
.LASF22:
	.string	"uint8_t"
.LASF178:
	.string	"projection_stack"
.LASF125:
	.string	"put_UBYTE_2_3_3_REV"
.LASF167:
	.string	"_colorelements"
.LASF78:
	.string	"swap"
.LASF33:
	.string	"guVector"
.LASF117:
	.string	"put_BYTE"
.LASF49:
	.string	"VertexArray"
.LASF10:
	.string	"GLuint"
.LASF71:
	.string	"GL_STATE_BEGIN"
.LASF216:
	.string	"read_mode"
.LASF52:
	.string	"elem_size"
.LASF73:
	.string	"glState"
.LASF62:
	.string	"constant"
.LASF209:
	.string	"fog_enable"
.LASF8:
	.string	"GLubyte"
.LASF155:
	.string	"glGetTexImage"
.LASF147:
	.string	"GetIlum"
.LASF41:
	.string	"VertexElement"
.LASF127:
	.string	"put_USHORT_5_6_5_REV"
.LASF97:
	.string	"biasclamp"
.LASF30:
	.string	"vs32"
.LASF80:
	.string	"row_length"
.LASF197:
	.string	"scissorInfo"
.LASF174:
	.string	"depthupdate"
.LASF47:
	.string	"size"
.LASF65:
	.string	"LightObj"
.LASF92:
	.string	"wrap_s"
.LASF93:
	.string	"wrap_t"
.LASF63:
	.string	"linear"
.LASF35:
	.string	"_vecf"
.LASF190:
	.string	"blend_dst"
.LASF76:
	.string	"height"
.LASF161:
	.string	"_temptexcoordelement"
.LASF124:
	.string	"put_UBYTE_3_3_2"
.LASF128:
	.string	"put_USHORT_4_4_4_4"
.LASF154:
	.string	"n_lines"
.LASF113:
	.string	"rgba"
.LASF24:
	.string	"uint16_t"
.LASF224:
	.string	"GNU C 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF14:
	.string	"size_t"
.LASF219:
	.string	"getBackFramebuffer"
.LASF203:
	.string	"unpack"
.LASF56:
	.string	"spotDir"
.LASF44:
	.string	"_array"
.LASF60:
	.string	"spotExponent"
.LASF142:
	.string	"put_LUMINANCE"
.LASF96:
	.string	"lodbias"
.LASF182:
	.string	"lights"
.LASF6:
	.string	"short int"
.LASF94:
	.string	"minlod"
.LASF91:
	.string	"max_filter"
.LASF15:
	.string	"long int"
.LASF134:
	.string	"put_UINT_10_10_10_2"
.LASF34:
	.string	"WGPipe"
.LASF2:
	.string	"GLenum"
.LASF54:
	.string	"_light"
.LASF107:
	.string	"color"
.LASF79:
	.string	"lsb_first"
.LASF221:
	.string	"getFrontFramebuffer"
.LASF11:
	.string	"GLsizei"
.LASF132:
	.string	"put_UINT_8_8_8_8"
.LASF120:
	.string	"put_UINT"
.LASF217:
	.string	"call_offset"
.LASF159:
	.string	"_tempcolorelement"
.LASF82:
	.string	"skip_pixels"
.LASF105:
	.string	"Aarg"
.LASF99:
	.string	"maxaniso"
.LASF1:
	.string	"unsigned int"
.LASF213:
	.string	"fog_density"
.LASF129:
	.string	"put_USHORT_4_4_4_4_REV"
.LASF46:
	.string	"stride"
.LASF187:
	.string	"lighting"
.LASF230:
	.string	"pixel_offset"
.LASF143:
	.string	"put_LUMINANCE_ALPHA"
.LASF18:
	.string	"sizetype"
.LASF19:
	.string	"long unsigned int"
.LASF191:
	.string	"blend_op"
.LASF226:
	.string	"D:\\\\devkitPro\\\\portlibs\\\\thirdparty\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF211:
	.string	"fog_startz"
.LASF25:
	.string	"int32_t"
.LASF84:
	.string	"pixelStore"
.LASF222:
	.string	"GX_DrawDone"
.LASF148:
	.string	"clamp_255"
.LASF112:
	.string	"pixel"
.LASF48:
	.string	"type"
.LASF4:
	.string	"unsigned char"
.LASF55:
	.string	"enabled"
.LASF130:
	.string	"put_USHORT_5_5_5_1"
.LASF81:
	.string	"skip_rows"
.LASF168:
	.string	"vert_i"
.LASF133:
	.string	"put_UINT_8_8_8_8_REV"
.LASF109:
	.string	"alpha_scale"
.LASF40:
	.string	"Vector"
.LASF101:
	.string	"comRGB"
.LASF195:
	.string	"fb_max_width"
.LASF199:
	.string	"normNear"
.LASF170:
	.string	"_GLtype"
.LASF173:
	.string	"depthtestenabled"
.LASF36:
	.string	"_gx_color"
.LASF98:
	.string	"edgelod"
.LASF185:
	.string	"gxcullfaceanabled"
.LASF50:
	.string	"_stack"
.LASF5:
	.string	"signed char"
.LASF53:
	.string	"Stack"
.LASF9:
	.string	"short unsigned int"
.LASF162:
	.string	"norm"
.LASF158:
	.string	"wgPipe"
.LASF146:
	.string	"rgba_f"
.LASF13:
	.string	"double"
.LASF83:
	.string	"alignment"
.LASF135:
	.string	"put_UINT_2_10_10_10_REV"
.LASF42:
	.string	"TexCoordElement"
.LASF3:
	.string	"GLboolean"
.LASF108:
	.string	"rgb_scale"
.LASF229:
	.string	"_glState"
.LASF77:
	.string	"_pixelStore"
.LASF192:
	.string	"cull_mode"
.LASF106:
	.string	"AargOp"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
	.gnu_attribute 4, 1
