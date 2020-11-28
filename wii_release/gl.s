	.file	"gl.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	draw_axis_align_blanker_quad, @function
draw_axis_align_blanker_quad:
.LFB98:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl.c"
	.loc 1 480 0
	.cfi_startproc
	mflr 0
	stwu 1,-128(1)
	.cfi_def_cfa_offset 128
	.cfi_register 65, 0
	stmw 30,120(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.loc 1 492 0
	lis 30,.LC0@ha
	.loc 1 480 0
	stw 0,132(1)
	.cfi_offset 65, 4
	.loc 1 481 0
	bl GX_SetCurrentGXThread
.LVL0:
	.loc 1 490 0
	addi 3,1,72
	.loc 1 492 0
	lis 31,.LC1@ha
	.loc 1 490 0
	bl ps_guMtxIdentity
.LVL1:
	.loc 1 491 0
	li 4,3
	addi 3,1,72
	bl GX_LoadPosMtxImm
.LVL2:
	.loc 1 492 0
	lis 9,.LC3@ha
	lfs 2,.LC3@l(9)
	lis 9,.LC2@ha
	lfs 6,.LC2@l(9)
	addi 3,1,8
	fmr 3,2
	lfs 1,.LC0@l(30)
	fmr 5,2
	lfs 4,.LC1@l(31)
	bl guOrtho
.LVL3:
	.loc 1 493 0
	li 4,1
	addi 3,1,8
	bl GX_LoadProjectionMtx
.LVL4:
	.loc 1 494 0
	li 3,3
	bl GX_SetCurrentMtx
.LVL5:
	.loc 1 497 0
	bl GX_ClearVtxDesc
.LVL6:
	.loc 1 498 0
	li 3,9
	li 4,1
	bl GX_SetVtxDesc
.LVL7:
	.loc 1 499 0
	li 4,1
	li 3,11
	bl GX_SetVtxDesc
.LVL8:
	.loc 1 502 0
	li 3,1
	bl GX_SetNumChans
.LVL9:
	.loc 1 503 0
	li 3,0
	bl GX_SetNumTexGens
.LVL10:
	.loc 1 504 0
	li 3,1
	bl GX_SetNumTevStages
.LVL11:
	.loc 1 505 0
	li 3,0
	bl GX_SetNumIndStages
.LVL12:
	.loc 1 507 0
	li 5,255
	li 6,4
	li 3,0
	li 4,255
	bl GX_SetTevOrder
.LVL13:
	.loc 1 508 0
	li 3,0
	li 4,4
	bl GX_SetTevOp
.LVL14:
	.loc 1 511 0
	li 3,0
	li 4,1
	li 5,0
	li 6,0
	bl GX_SetBlendMode
.LVL15:
	.loc 1 515 0
	li 3,0
	bl GX_SetCullMode
.LVL16:
	.loc 1 517 0
	lis 9,scissor_test@ha
	lbz 9,scissor_test@l(9)
	cmpwi 7,9,0
	beq+ 7,.L2
	.loc 1 519 0
	lis 10,scissorInfo@ha
	la 9,scissorInfo@l(10)
	lwz 3,scissorInfo@l(10)
	lwz 4,4(9)
	lwz 5,8(9)
	lwz 6,12(9)
	bl GX_SetModScissor
.LVL17:
	b .L3
.L2:
	.loc 1 523 0
	bl GX_SetMaxScissor
.LVL18:
.L3:
	.loc 1 527 0
	bl GX_DrawDone
.LVL19:
	.loc 1 529 0
	li 3,128
	li 4,0
	li 5,4
	bl GX_Begin
.LVL20:
	.loc 1 531 0
	lis 6,_cleardepth@ha
	lfs 0,_cleardepth@l(6)
.LBB170:
.LBB171:
	.file 2 "D:\\devkitPro\\/libogc/include/ogc/gx.h"
	.loc 2 2123 0
	lis 9,wgPipe@ha
	lwz 9,wgPipe@l(9)
	li 7,0
.LBE171:
.LBE170:
	.loc 1 531 0
	fneg 0,0
.LVL21:
	.loc 1 532 0
	lis 8,_clearcolor@ha
.LBB174:
.LBB172:
	.loc 2 2123 0
	stw 7,0(9)
.LBE172:
.LBE174:
	.loc 1 532 0
	la 10,_clearcolor@l(8)
.LBB175:
.LBB173:
	.loc 2 2124 0
	stw 7,0(9)
	.loc 2 2125 0
	stfs 0,0(9)
.LBE173:
.LBE175:
.LBB176:
.LBB177:
	.loc 2 2123 0
	lfs 0,.LC1@l(31)
.LVL22:
.LBE177:
.LBE176:
	.loc 1 532 0
	lbz 11,_clearcolor@l(8)
	lbz 3,1(10)
	lbz 4,2(10)
	lbz 5,3(10)
.LVL23:
.LBB180:
.LBB181:
	.loc 2 2229 0
	stb 11,0(9)
.LVL24:
	.loc 2 2230 0
	stb 3,0(9)
	.loc 2 2231 0
	stb 4,0(9)
	.loc 2 2232 0
	stb 5,0(9)
.LBE181:
.LBE180:
	.loc 1 533 0
	lfs 13,_cleardepth@l(6)
.LBB182:
.LBB178:
	.loc 2 2123 0
	stfs 0,0(9)
.LBE178:
.LBE182:
	.loc 1 533 0
	fneg 13,13
.LVL25:
.LBB183:
.LBB179:
	.loc 2 2124 0
	stw 7,0(9)
	.loc 2 2125 0
	stfs 13,0(9)
.LBE179:
.LBE183:
	.loc 1 534 0
	lbz 11,_clearcolor@l(8)
.LVL26:
	lbz 3,1(10)
.LVL27:
	lbz 4,2(10)
.LVL28:
	lbz 5,3(10)
.LVL29:
.LBB184:
.LBB185:
	.loc 2 2229 0
	stb 11,0(9)
.LVL30:
	.loc 2 2230 0
	stb 3,0(9)
	.loc 2 2231 0
	stb 4,0(9)
	.loc 2 2232 0
	stb 5,0(9)
.LBE185:
.LBE184:
	.loc 1 535 0
	lfs 13,_cleardepth@l(6)
.LVL31:
.LBB186:
.LBB187:
	.loc 2 2123 0
	stfs 0,0(9)
.LBE187:
.LBE186:
	.loc 1 535 0
	fneg 13,13
.LVL32:
.LBB189:
.LBB188:
	.loc 2 2124 0
	lfs 0,.LC0@l(30)
	stfs 0,0(9)
	.loc 2 2125 0
	stfs 13,0(9)
.LBE188:
.LBE189:
	.loc 1 536 0
	lbz 11,_clearcolor@l(8)
.LVL33:
	lbz 3,1(10)
.LVL34:
	lbz 4,2(10)
.LVL35:
	lbz 5,3(10)
.LVL36:
.LBB190:
.LBB191:
	.loc 2 2229 0
	stb 11,0(9)
.LVL37:
	.loc 2 2230 0
	stb 3,0(9)
	.loc 2 2231 0
	stb 4,0(9)
	.loc 2 2232 0
	stb 5,0(9)
.LBE191:
.LBE190:
	.loc 1 537 0
	lfs 13,_cleardepth@l(6)
.LVL38:
.LBB192:
.LBB193:
	.loc 2 2123 0
	stw 7,0(9)
.LBE193:
.LBE192:
	.loc 1 537 0
	fneg 13,13
.LVL39:
.LBB195:
.LBB194:
	.loc 2 2124 0
	stfs 0,0(9)
	.loc 2 2125 0
	stfs 13,0(9)
.LBE194:
.LBE195:
	.loc 1 538 0
	lbz 6,_clearcolor@l(8)
	lbz 7,1(10)
	lbz 8,2(10)
	lbz 10,3(10)
.LVL40:
.LBB196:
.LBB197:
	.loc 2 2229 0
	stb 6,0(9)
.LVL41:
	.loc 2 2230 0
	stb 7,0(9)
	.loc 2 2231 0
	stb 8,0(9)
	.loc 2 2232 0
	stb 10,0(9)
.LBE197:
.LBE196:
	.loc 1 541 0
	bl GX_DrawDone
.LVL42:
	.loc 1 542 0
	addi 11,1,128
	b _restgpr_30_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 65
	.cfi_endproc
.LFE98:
	.size	draw_axis_align_blanker_quad, .-draw_axis_align_blanker_quad
	.align 2
	.globl glHint
	.type	glHint, @function
glHint:
.LFB64:
	.loc 1 14 0
	.cfi_startproc
.LVL43:
	.loc 1 14 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beqlr- 0
.LVL44:
.LBB198:
.LBB199:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,14
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LBE199:
.LBE198:
	.cfi_endproc
.LFE64:
	.size	glHint, .-glHint
	.align 2
	.globl glPolygonOffset
	.type	glPolygonOffset, @function
glPolygonOffset:
.LFB65:
	.loc 1 16 0
	.cfi_startproc
.LVL45:
	.loc 1 16 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beqlr- 0
.LVL46:
.LBB200:
.LBB201:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,16
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LBE201:
.LBE200:
	.cfi_endproc
.LFE65:
	.size	glPolygonOffset, .-glPolygonOffset
	.align 2
	.globl glLightModeli
	.type	glLightModeli, @function
glLightModeli:
.LFB66:
	.loc 1 18 0
	.cfi_startproc
.LVL47:
	.loc 1 18 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beqlr- 0
.LVL48:
.LBB202:
.LBB203:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,18
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LBE203:
.LBE202:
	.cfi_endproc
.LFE66:
	.size	glLightModeli, .-glLightModeli
	.align 2
	.globl glTexGeni
	.type	glTexGeni, @function
glTexGeni:
.LFB67:
	.loc 1 22 0
	.cfi_startproc
.LVL49:
	blr
	.cfi_endproc
.LFE67:
	.size	glTexGeni, .-glTexGeni
	.align 2
	.globl glPolygonMode
	.type	glPolygonMode, @function
glPolygonMode:
.LFB68:
	.loc 1 24 0
	.cfi_startproc
.LVL50:
	.loc 1 24 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beqlr- 0
.LVL51:
.LBB204:
.LBB205:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,24
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LBE205:
.LBE204:
	.cfi_endproc
.LFE68:
	.size	glPolygonMode, .-glPolygonMode
	.align 2
	.globl glShadeModel
	.type	glShadeModel, @function
glShadeModel:
.LFB69:
	.loc 1 28 0
	.cfi_startproc
.LVL52:
	.loc 1 28 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beqlr- 0
.LVL53:
.LBB206:
.LBB207:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,28
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LBE207:
.LBE206:
	.cfi_endproc
.LFE69:
	.size	glShadeModel, .-glShadeModel
	.align 2
	.globl glClipPlane
	.type	glClipPlane, @function
glClipPlane:
.LFB70:
	.loc 1 30 0
	.cfi_startproc
.LVL54:
	.loc 1 30 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beqlr- 0
.LVL55:
.LBB208:
.LBB209:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,30
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LBE209:
.LBE208:
	.cfi_endproc
.LFE70:
	.size	glClipPlane, .-glClipPlane
	.align 2
	.globl glColorMaterial
	.type	glColorMaterial, @function
glColorMaterial:
.LFB71:
	.loc 1 35 0
	.cfi_startproc
.LVL56:
	.loc 1 36 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L38
.LVL57:
.LBB210:
.LBB211:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,36
	b .L49
.LVL58:
.L38:
.LBE211:
.LBE210:
	.loc 1 38 0
	cmplwi 7,4,5632
	beq- 7,.L41
	bgt- 7,.L42
	addi 9,4,-4608
	cmplwi 7,9,2
	bgt+ 7,.L40
	b .L41
.L42:
	cmplwi 7,4,5634
	bne+ 7,.L40
.L41:
	.loc 1 44 0
	lis 9,copy_material@ha
	stw 4,copy_material@l(9)
	blr
.L40:
.LVL59:
.LBB212:
.LBB213:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,45
.LVL60:
.L49:
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LBE213:
.LBE212:
	.cfi_endproc
.LFE71:
	.size	glColorMaterial, .-glColorMaterial
	.align 2
	.globl glBlendFunc
	.type	glBlendFunc, @function
glBlendFunc:
.LFB72:
	.loc 1 50 0
	.cfi_startproc
.LVL61:
	.loc 1 51 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 8,9,1
	beq+ 0,.L51
.LVL62:
.LBB214:
.LBB215:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,51
	b .L76
.LVL63:
.L51:
.LBE215:
.LBE214:
	.loc 1 53 0
	cmplwi 7,3,771
	beq- 7,.L54
	bgt+ 7,.L55
	cmplwi 7,3,1
	beq- 7,.L56
	blt- 7,.L57
	cmplwi 7,3,770
	.loc 1 59 0
	li 10,4
	.loc 1 53 0
	beq+ 7,.L74
	b .L53
.L55:
	cmplwi 7,3,773
	beq- 7,.L59
	blt- 7,.L60
	cmplwi 7,3,774
	beq- 7,.L61
	cmplwi 7,3,775
	.loc 1 58 0
	li 10,3
	.loc 1 53 0
	beq+ 7,.L74
	b .L53
.L57:
	.loc 1 55 0
	lis 10,blend_src@ha
	stb 8,blend_src@l(10)
	b .L63
.L56:
	.loc 1 56 0
	lis 9,blend_src@ha
	stb 3,blend_src@l(9)
	b .L63
.L61:
	.loc 1 57 0
	li 10,2
.L74:
	.loc 1 58 0
	lis 9,blend_src@ha
	stb 10,blend_src@l(9)
	b .L63
.L54:
	.loc 1 60 0
	li 10,5
	b .L74
.L60:
	.loc 1 61 0
	li 10,6
	b .L74
.L59:
	.loc 1 62 0
	li 10,7
	b .L74
.L53:
.LVL64:
.LBB216:
.LBB217:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,64
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
.LVL65:
.L63:
.LBE217:
.LBE216:
	.loc 1 67 0
	cmplwi 7,4,769
	beq- 7,.L65
	bgt+ 7,.L66
	cmplwi 7,4,1
	beq- 7,.L67
	blt- 7,.L68
	cmplwi 7,4,768
	.loc 1 71 0
	li 10,2
	.loc 1 67 0
	beq+ 7,.L75
	b .L64
.L66:
	cmplwi 7,4,771
	beq- 7,.L70
	blt- 7,.L71
	cmplwi 7,4,772
	beq- 7,.L72
	cmplwi 7,4,773
	.loc 1 76 0
	li 10,7
	.loc 1 67 0
	beq+ 7,.L75
	b .L64
.L68:
	.loc 1 69 0
	li 10,0
	b .L75
.L67:
	.loc 1 70 0
	lis 9,blend_dst@ha
	stb 4,blend_dst@l(9)
	blr
.L65:
	.loc 1 72 0
	li 10,3
	b .L75
.L71:
	.loc 1 73 0
	li 10,4
	b .L75
.L70:
	.loc 1 74 0
	li 10,5
	b .L75
.L72:
	.loc 1 75 0
	li 10,6
.L75:
	.loc 1 76 0
	lis 9,blend_dst@ha
	stb 10,blend_dst@l(9)
	blr
.L64:
.LVL66:
.LBB218:
.LBB219:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,77
.LVL67:
.L76:
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LBE219:
.LBE218:
	.cfi_endproc
.LFE72:
	.size	glBlendFunc, .-glBlendFunc
	.align 2
	.globl glScissor
	.type	glScissor, @function
glScissor:
.LFB73:
	.loc 1 82 0
	.cfi_startproc
.LVL68:
	.loc 1 83 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L78
.LVL69:
.LBB220:
.LBB221:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,83
	b .L82
.LVL70:
.L78:
.LBE221:
.LBE220:
	.loc 1 85 0
	cmpwi 7,5,0
	blt- 7,.L80
	.loc 1 85 0 is_stmt 0 discriminator 1
	cmpwi 7,6,0
	bge+ 7,.L81
.L80:
.LVL71:
.LBB222:
.LBB223:
	.loc 1 1195 0 is_stmt 1
	li 10,1281
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,87
.LVL72:
.L82:
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.L81:
.LBE223:
.LBE222:
	.loc 1 91 0
	lis 10,scissorInfo@ha
	la 9,scissorInfo@l(10)
	stw 3,scissorInfo@l(10)
	stw 4,4(9)
	stw 5,8(9)
	stw 6,12(9)
	blr
	.cfi_endproc
.LFE73:
	.size	glScissor, .-glScissor
	.align 2
	.globl glCullFace
	.type	glCullFace, @function
glCullFace:
.LFB74:
	.loc 1 98 0
	.cfi_startproc
.LVL73:
	.loc 1 99 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L84
.LVL74:
.LBB224:
.LBB225:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,99
	b .L92
.LVL75:
.L84:
.LBE225:
.LBE224:
	.loc 1 101 0
	cmplwi 7,3,1029
	beq- 7,.L87
	cmplwi 7,3,1032
	beq- 7,.L88
	cmplwi 7,3,1028
	.loc 1 104 0
	li 10,1
	.loc 1 101 0
	bne+ 7,.L93
	b .L91
.L87:
	.loc 1 107 0
	li 10,2
	b .L91
.L88:
	.loc 1 110 0
	li 10,3
.L91:
	lis 9,cull_mode@ha
	stb 10,cull_mode@l(9)
	.loc 1 111 0
	blr
.L93:
.LVL76:
.LBB226:
.LBB227:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,113
.LVL77:
.L92:
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LBE227:
.LBE226:
	.cfi_endproc
.LFE74:
	.size	glCullFace, .-glCullFace
	.align 2
	.globl glFrontFace
	.type	glFrontFace, @function
glFrontFace:
.LFB75:
	.loc 1 118 0
	.cfi_startproc
.LVL78:
	.loc 1 120 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L95
.LVL79:
.LBB228:
.LBB229:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,120
	b .L99
.LVL80:
.L95:
.LBE229:
.LBE228:
	.loc 1 122 0
	addi 9,3,-2304
	cmplwi 7,9,1
	bgt+ 7,.L97
	.loc 1 126 0
	lis 9,gxwinding@ha
	stw 3,gxwinding@l(9)
	blr
.L97:
.LVL81:
.LBB230:
.LBB231:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,128
.LVL82:
.L99:
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LBE231:
.LBE230:
	.cfi_endproc
.LFE75:
	.size	glFrontFace, .-glFrontFace
	.align 2
	.globl glDepthRange
	.type	glDepthRange, @function
glDepthRange:
.LFB76:
	.loc 1 138 0
	.cfi_startproc
.LVL83:
	.loc 1 139 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L101
.LVL84:
.LBB232:
.LBB233:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,139
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LVL85:
.L101:
.LBE233:
.LBE232:
	.loc 1 141 0
	frsp 1,1
.LVL86:
	lis 9,normNear@ha
	.loc 1 142 0
	frsp 2,2
.LVL87:
	.loc 1 141 0
	stfs 1,normNear@l(9)
	.loc 1 142 0
	lis 9,normFar@ha
	stfs 2,normFar@l(9)
	blr
	.cfi_endproc
.LFE76:
	.size	glDepthRange, .-glDepthRange
	.align 2
	.globl glViewport
	.type	glViewport, @function
glViewport:
.LFB77:
	.loc 1 149 0
	.cfi_startproc
.LVL88:
	.loc 1 150 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L104
.LVL89:
.LBB234:
.LBB235:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,150
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LVL90:
.L104:
.LBE235:
.LBE234:
	.loc 1 151 0
	lis 10,viewPort@ha
	la 9,viewPort@l(10)
	stw 3,viewPort@l(10)
	stw 4,4(9)
	stw 5,8(9)
	stw 6,12(9)
	blr
	.cfi_endproc
.LFE77:
	.size	glViewport, .-glViewport
	.align 2
	.globl glVertex3f
	.type	glVertex3f, @function
glVertex3f:
.LFB82:
	.loc 1 173 0
	.cfi_startproc
.LVL91:
	.loc 1 174 0
	lis 10,vert_i@ha
	lwz 9,vert_i@l(10)
	mr 4,10
	cmpwi 7,9,1000
	ble+ 7,.L107
.LVL92:
.LBB240:
.LBB241:
.LBB242:
.LBB243:
	.loc 1 1195 0
	li 10,1285
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,176
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LVL93:
.L107:
.LBE243:
.LBE242:
.LBE241:
.LBE240:
	.loc 1 180 0
	mulli 10,9,12
	lis 7,_vertexelements@ha
	la 7,_vertexelements@l(7)
	.loc 1 185 0
	slwi 3,9,4
	.loc 1 180 0
	add 8,7,10
	stfsx 1,7,10
	.loc 1 181 0
	stfs 2,4(8)
	.loc 1 185 0
	lis 11,_tempcolorelement@ha
	.loc 1 182 0
	stfs 3,8(8)
	.loc 1 185 0
	lis 8,_colorelements@ha
	la 8,_colorelements@l(8)
	la 11,_tempcolorelement@l(11)
	add 3,8,3
	lswi 5,11,16
	stswi 5,3,16
	.loc 1 187 0
	lis 8,_normalelements@ha
	la 8,_normalelements@l(8)
	lis 3,_tempnormalelement@ha
	add 10,8,10
	la 3,_tempnormalelement@l(3)
	lswi 5,3,12
	stswi 5,10,12
.LVL94:
	lis 5,_texcoordelements@ha
	li 8,8
	slwi 10,9,3
	la 5,_texcoordelements@l(5)
	lis 6,_temptexcoordelement@ha
	mtctr 8
	add 5,10,5
	la 6,_temptexcoordelement@l(6)
	li 10,0
.LVL95:
.L110:
	mulli 8,10,1000
	add 7,10,6
	.loc 1 192 0 discriminator 2
	lwz 11,0(7)
	addi 10,10,8
	lwz 12,4(7)
	add 8,5,8
	stw 11,0(8)
	stw 12,4(8)
	.loc 1 190 0 discriminator 2
	bdnz .L110
	.loc 1 195 0
	addi 9,9,1
	stw 9,vert_i@l(4)
	blr
	.cfi_endproc
.LFE82:
	.size	glVertex3f, .-glVertex3f
	.align 2
	.globl glVertex2i
	.type	glVertex2i, @function
glVertex2i:
.LFB78:
	.loc 1 156 0
	.cfi_startproc
.LVL96:
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.loc 1 157 0
	lis 9,0x4330
	xoris 3,3,0x8000
.LVL97:
	lis 10,.LC6@ha
	stw 9,8(1)
	xoris 4,4,0x8000
.LVL98:
	stw 3,12(1)
	stw 9,16(1)
	lis 9,.LC3@ha
	lfd 0,8(1)
	stw 4,20(1)
	lfs 2,.LC6@l(10)
	lfs 3,.LC3@l(9)
	fsub 1,0,2
	lfd 0,16(1)
	.loc 1 158 0
	addi 1,1,24
	.cfi_def_cfa_offset 0
	.loc 1 157 0
	fsub 2,0,2
	frsp 1,1
	frsp 2,2
	b glVertex3f
.LVL99:
	.cfi_endproc
.LFE78:
	.size	glVertex2i, .-glVertex2i
	.align 2
	.globl glVertex2f
	.type	glVertex2f, @function
glVertex2f:
.LFB79:
	.loc 1 160 0
	.cfi_startproc
.LVL100:
	.loc 1 161 0
	lis 9,.LC3@ha
	.loc 1 162 0
	.loc 1 161 0
	lfs 3,.LC3@l(9)
	b glVertex3f
.LVL101:
	.cfi_endproc
.LFE79:
	.size	glVertex2f, .-glVertex2f
	.align 2
	.globl glVertex3fv
	.type	glVertex3fv, @function
glVertex3fv:
.LFB80:
	.loc 1 165 0
	.cfi_startproc
.LVL102:
	.loc 1 166 0
	lfs 1,0(3)
	.loc 1 167 0
	.loc 1 166 0
	lfs 2,4(3)
	lfs 3,8(3)
	b glVertex3f
.LVL103:
	.cfi_endproc
.LFE80:
	.size	glVertex3fv, .-glVertex3fv
	.align 2
	.globl glVertex4f
	.type	glVertex4f, @function
glVertex4f:
.LFB81:
	.loc 1 169 0
	.cfi_startproc
.LVL104:
	.loc 1 171 0
	.loc 1 170 0
	b glVertex3f
.LVL105:
	.cfi_endproc
.LFE81:
	.size	glVertex4f, .-glVertex4f
	.align 2
	.globl glNormal3f
	.type	glNormal3f, @function
glNormal3f:
.LFB83:
	.loc 1 198 0
	.cfi_startproc
.LVL106:
	.loc 1 199 0
	lis 10,_tempnormalelement@ha
	la 9,_tempnormalelement@l(10)
	stfs 1,_tempnormalelement@l(10)
	.loc 1 200 0
	stfs 2,4(9)
	.loc 1 201 0
	stfs 3,8(9)
	blr
	.cfi_endproc
.LFE83:
	.size	glNormal3f, .-glNormal3f
	.align 2
	.globl glNormal3fv
	.type	glNormal3fv, @function
glNormal3fv:
.LFB84:
	.loc 1 204 0
	.cfi_startproc
.LVL107:
	.loc 1 205 0
	lfs 12,0(3)
.LBB244:
.LBB245:
	.loc 1 199 0
	lis 10,_tempnormalelement@ha
.LBE245:
.LBE244:
	.loc 1 205 0
	lfs 13,4(3)
.LBB248:
.LBB246:
	.loc 1 199 0
	la 9,_tempnormalelement@l(10)
.LBE246:
.LBE248:
	.loc 1 205 0
	lfs 0,8(3)
.LVL108:
.LBB249:
.LBB247:
	.loc 1 199 0
	stfs 12,_tempnormalelement@l(10)
	.loc 1 200 0
	stfs 13,4(9)
	.loc 1 201 0
	stfs 0,8(9)
	blr
.LBE247:
.LBE249:
	.cfi_endproc
.LFE84:
	.size	glNormal3fv, .-glNormal3fv
	.align 2
	.globl glColor4f
	.type	glColor4f, @function
glColor4f:
.LFB86:
	.loc 1 212 0
	.cfi_startproc
.LVL109:
	.loc 1 214 0
	lis 10,_tempcolorelement@ha
	la 9,_tempcolorelement@l(10)
	stfs 1,_tempcolorelement@l(10)
	.loc 1 218 0
	lis 10,copy_mat_enabled@ha
	.loc 1 215 0
	stfs 2,4(9)
	.loc 1 218 0
	lbz 10,copy_mat_enabled@l(10)
	.loc 1 216 0
	stfs 3,8(9)
	.loc 1 218 0
	cmpwi 7,10,0
	.loc 1 217 0
	stfs 4,12(9)
	.loc 1 218 0
	beqlr- 7
.LVL110:
.LBB252:
.LBB253:
	.loc 1 220 0
	lis 10,copy_material@ha
	lwz 10,copy_material@l(10)
	cmplwi 7,10,4610
	beq- 7,.L121
	bgt- 7,.L122
	cmplwi 7,10,4608
	beq- 7,.L123
	cmplwi 7,10,4609
	bnelr- 7
	.loc 1 224 0
	lis 10,curmat@ha
	la 10,curmat@l(10)
	b .L130
.L122:
	.loc 1 220 0
	cmplwi 7,10,5632
	beq- 7,.L125
	cmplwi 7,10,5634
	bnelr- 7
	.loc 1 227 0
	lis 10,curmat@ha
	la 10,curmat@l(10)
	addi 4,10,16
	lswi 5,9,16
	stswi 5,4,16
	b .L130
.L125:
	.loc 1 222 0
	lis 10,curmat@ha
	la 10,curmat@l(10)
	b .L131
.L123:
	.loc 1 223 0
	lis 10,curmat@ha
	la 10,curmat@l(10)
	addi 10,10,16
	b .L131
.L121:
	.loc 1 225 0
	lis 10,curmat@ha
	la 10,curmat@l(10)
	addi 10,10,48
	b .L131
.L130:
	.loc 1 228 0
	addi 10,10,32
.L131:
	lswi 5,9,16
	stswi 5,10,16
	blr
.LBE253:
.LBE252:
	.cfi_endproc
.LFE86:
	.size	glColor4f, .-glColor4f
	.align 2
	.globl glColor3f
	.type	glColor3f, @function
glColor3f:
.LFB85:
	.loc 1 208 0
	.cfi_startproc
.LVL111:
	.loc 1 209 0
	lis 9,.LC7@ha
	.loc 1 210 0
	.loc 1 209 0
	lfs 4,.LC7@l(9)
	b glColor4f
.LVL112:
	.cfi_endproc
.LFE85:
	.size	glColor3f, .-glColor3f
	.align 2
	.globl glColor3ub
	.type	glColor3ub, @function
glColor3ub:
.LFB87:
	.loc 1 237 0
	.cfi_startproc
.LVL113:
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	.loc 1 238 0
	lis 9,0x4330
	lis 10,.LC9@ha
	stw 9,16(1)
	stw 4,20(1)
	lfs 13,.LC9@l(10)
	lis 10,.LC10@ha
	stw 9,8(1)
	lfd 12,16(1)
	stw 9,24(1)
	lis 9,.LC7@ha
	stw 3,12(1)
	fsub 2,12,13
	stw 5,28(1)
	lfd 0,8(1)
	lfd 12,24(1)
	frsp 2,2
	fsub 1,0,13
	lfs 0,.LC10@l(10)
	fsub 13,12,13
	lfs 4,.LC7@l(9)
	fdivs 2,2,0
	.loc 1 239 0
	addi 1,1,32
	.cfi_def_cfa_offset 0
	.loc 1 238 0
	frsp 1,1
	frsp 3,13
	fdivs 1,1,0
	fdivs 3,3,0
	b glColor4f
.LVL114:
	.cfi_endproc
.LFE87:
	.size	glColor3ub, .-glColor3ub
	.align 2
	.globl glColor4ub
	.type	glColor4ub, @function
glColor4ub:
.LFB88:
	.loc 1 245 0
	.cfi_startproc
.LVL115:
	stwu 1,-40(1)
	.cfi_def_cfa_offset 40
	.loc 1 246 0
	lis 9,0x4330
	lis 10,.LC9@ha
	stw 4,20(1)
	stw 9,16(1)
	lfs 13,.LC9@l(10)
	lis 10,.LC10@ha
	lfd 12,16(1)
	stw 5,28(1)
	stw 9,24(1)
	fsub 2,12,13
	stw 3,12(1)
	lfd 12,24(1)
	stw 9,8(1)
	frsp 2,2
	stw 6,36(1)
	fsub 3,12,13
	stw 9,32(1)
	lfd 0,8(1)
	lfd 12,32(1)
	frsp 3,3
	fsub 1,0,13
	lfs 0,.LC10@l(10)
	fsub 13,12,13
	.loc 1 247 0
	.loc 1 246 0
	fdivs 2,2,0
	.loc 1 247 0
	addi 1,1,40
	.cfi_def_cfa_offset 0
	.loc 1 246 0
	frsp 1,1
	frsp 4,13
	fdivs 3,3,0
	fdivs 1,1,0
	fdivs 4,4,0
	b glColor4f
.LVL116:
	.cfi_endproc
.LFE88:
	.size	glColor4ub, .-glColor4ub
	.align 2
	.globl glColor3fv
	.type	glColor3fv, @function
glColor3fv:
.LFB89:
	.loc 1 250 0
	.cfi_startproc
.LVL117:
	.loc 1 251 0
	lfs 1,0(3)
	.loc 1 252 0
	.loc 1 251 0
	lfs 2,4(3)
	lfs 3,8(3)
	b glColor3f
.LVL118:
	.cfi_endproc
.LFE89:
	.size	glColor3fv, .-glColor3fv
	.align 2
	.globl glTexCoord2f
	.type	glTexCoord2f, @function
glTexCoord2f:
.LFB90:
	.loc 1 255 0
	.cfi_startproc
.LVL119:
	.loc 1 256 0
	lis 9,cur_tex@ha
	lis 10,_temptexcoordelement@ha
	lwz 9,cur_tex@l(9)
	la 10,_temptexcoordelement@l(10)
	slwi 9,9,3
	add 8,10,9
	stfsx 1,10,9
	.loc 1 257 0
	stfs 2,4(8)
	blr
	.cfi_endproc
.LFE90:
	.size	glTexCoord2f, .-glTexCoord2f
	.align 2
	.globl glLightModelfv
	.type	glLightModelfv, @function
glLightModelfv:
.LFB91:
	.loc 1 262 0
	.cfi_startproc
.LVL120:
	.loc 1 263 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L140
.LVL121:
.LBB254:
.LBB255:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,263
	b .L145
.LVL122:
.L140:
.LBE255:
.LBE254:
	.loc 1 265 0
	cmplwi 7,3,2899
	bne+ 7,.L144
	.loc 1 268 0
	lfs 0,0(4)
	lis 10,globAmbient@ha
	la 9,globAmbient@l(10)
	stfs 0,globAmbient@l(10)
	.loc 1 269 0
	lfs 0,4(4)
	stfs 0,4(9)
	.loc 1 270 0
	lfs 0,8(4)
	stfs 0,8(9)
	.loc 1 271 0
	lfs 0,12(4)
	stfs 0,12(9)
	.loc 1 272 0
	blr
.L144:
.LVL123:
.LBB256:
.LBB257:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,274
.LVL124:
.L145:
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LBE257:
.LBE256:
	.cfi_endproc
.LFE91:
	.size	glLightModelfv, .-glLightModelfv
	.align 2
	.globl glLightN
	.type	glLightN, @function
glLightN:
.LFB92:
	.loc 1 280 0
	.cfi_startproc
.LVL125:
	.loc 1 282 0
	addi 3,3,-16384
.LVL126:
	cmplwi 7,3,7
	bgt- 7,.L147
	lis 9,.L149@ha
	slwi 3,3,2
.LVL127:
	la 9,.L149@l(9)
	lwzx 10,9,3
	add 9,10,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L149:
	.long .L148-.L149
	.long .L157-.L149
	.long .L151-.L149
	.long .L152-.L149
	.long .L153-.L149
	.long .L154-.L149
	.long .L155-.L149
	.long .L156-.L149
	.section	".text"
.L148:
	.loc 1 284 0
	li 3,0
	blr
.L151:
.LVL128:
	.loc 1 286 0
	li 3,2
	blr
.LVL129:
.L152:
	.loc 1 287 0
	li 3,3
	blr
.LVL130:
.L153:
	.loc 1 288 0
	li 3,4
	blr
.LVL131:
.L154:
	.loc 1 289 0
	li 3,5
	blr
.LVL132:
.L155:
	.loc 1 290 0
	li 3,6
	blr
.LVL133:
.L156:
	.loc 1 291 0
	li 3,7
	blr
.LVL134:
.L147:
.LBB262:
.LBB263:
.LBB264:
.LBB265:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,293
	lis 9,glErrLine@ha
	li 3,-1
	stw 10,glErrLine@l(9)
	blr
.LVL135:
.L157:
.LBE265:
.LBE264:
.LBE263:
.LBE262:
	.loc 1 285 0
	li 3,1
	.loc 1 298 0
	blr
	.cfi_endproc
.LFE92:
	.size	glLightN, .-glLightN
	.align 2
	.globl glLightf
	.type	glLightf, @function
glLightf:
.LFB93:
	.loc 1 300 0
	.cfi_startproc
	.loc 1 301 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq- 0,.L159
.LBB266:
.LBB267:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,301
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.L159:
.LBE267:
.LBE266:
	.loc 1 300 0
	mflr 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stfd 31,16(1)
	.cfi_offset 63, -8
	fmr 31,1
	stw 31,12(1)
	.cfi_offset 31, -12
	mr 31,4
	stw 0,28(1)
	.cfi_offset 65, 4
	.loc 1 303 0
	bl glLightN
	.loc 1 305 0
	cmpwi 0,3,0
	blt- 0,.L158
	.loc 1 308 0
	addi 4,31,-4613
	cmplwi 7,4,4
	bgt- 7,.L161
	lis 9,.L163@ha
	slwi 4,4,2
	la 9,.L163@l(9)
	mulli 3,3,164
	lwzx 10,9,4
	add 10,10,9
	lis 9,lights@ha
	mtctr 10
	la 9,lights@l(9)
	.loc 1 314 0
	add 3,9,3
	.loc 1 308 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L163:
	.long .L162-.L163
	.long .L164-.L163
	.long .L165-.L163
	.long .L166-.L163
	.long .L167-.L163
	.section	".text"
.L164:
	.loc 1 310 0
	stfs 31,148(3)
	b .L158
.L162:
	.loc 1 311 0
	stfs 31,144(3)
	b .L158
.L165:
	.loc 1 312 0
	stfs 31,152(3)
	b .L158
.L166:
	.loc 1 313 0
	stfs 31,156(3)
	b .L158
.L167:
	.loc 1 314 0
	stfs 31,160(3)
	b .L158
.L161:
.LBB268:
.LBB269:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,316
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
.L158:
.LBE269:
.LBE268:
	.loc 1 319 0
	lwz 31,12(1)
	addi 11,1,24
	b _restfpr_31_x
	.cfi_restore 63
	.cfi_restore 65
	.cfi_restore 31
	.cfi_endproc
.LFE93:
	.size	glLightf, .-glLightf
	.align 2
	.globl glLightfv
	.type	glLightfv, @function
glLightfv:
.LFB94:
	.loc 1 321 0
	.cfi_startproc
	.loc 1 322 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq- 0,.L170
.LBB270:
.LBB271:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,322
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.L170:
.LBE271:
.LBE270:
	.loc 1 321 0
	mflr 0
	stwu 1,-88(1)
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	stmw 29,76(1)
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 29,4
	stw 0,92(1)
	.cfi_offset 65, 4
	mr 31,5
	.loc 1 324 0
	bl glLightN
	.loc 1 326 0
	cmpwi 0,3,0
	blt- 0,.L169
	.loc 1 331 0
	addi 4,29,-4608
	.loc 1 329 0
	li 9,0
	.loc 1 331 0
	cmplwi 7,4,4
	.loc 1 329 0
	stw 9,56(1)
	stw 9,60(1)
	stw 9,64(1)
	.loc 1 331 0
	bgt- 7,.L172
	lis 9,.L174@ha
	slwi 4,4,2
	la 9,.L174@l(9)
	lis 29,lights@ha
	lwzx 10,9,4
	mulli 30,3,164
	lfs 0,0(31)
	la 29,lights@l(29)
	add 9,10,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L174:
	.long .L173-.L174
	.long .L175-.L174
	.long .L176-.L174
	.long .L177-.L174
	.long .L178-.L174
	.section	".text"
.L177:
	.loc 1 335 0
	stfs 0,56(1)
	.loc 1 340 0
	lis 3,model_stack@ha
	.loc 1 336 0
	lfs 0,4(31)
	.loc 1 340 0
	la 3,model_stack@l(3)
	.loc 1 336 0
	stfs 0,60(1)
	.loc 1 337 0
	lfs 0,8(31)
	stfs 0,64(1)
	.loc 1 340 0
	bl TopMtx
	add 5,29,30
	addi 4,1,56
	addi 5,5,68
	.loc 1 342 0
	add 30,29,30
	.loc 1 340 0
	bl ps_guVecMultiply
	.loc 1 342 0
	lfs 0,12(31)
	stfs 0,80(30)
	.loc 1 343 0
	b .L169
.L175:
	.loc 1 346 0
	add 30,29,30
	stfs 0,112(30)
	.loc 1 347 0
	lfs 0,4(31)
	stfs 0,116(30)
	.loc 1 348 0
	lfs 0,8(31)
	stfs 0,120(30)
	.loc 1 349 0
	lfs 0,12(31)
	stfs 0,124(30)
	.loc 1 350 0
	b .L169
.L173:
	.loc 1 352 0
	add 30,29,30
	stfs 0,96(30)
	.loc 1 353 0
	lfs 0,4(31)
	stfs 0,100(30)
	.loc 1 354 0
	lfs 0,8(31)
	stfs 0,104(30)
	.loc 1 355 0
	lfs 0,12(31)
	stfs 0,108(30)
	.loc 1 356 0
	b .L169
.L176:
	.loc 1 358 0
	add 30,29,30
	stfs 0,128(30)
	.loc 1 359 0
	lfs 0,4(31)
	stfs 0,132(30)
	.loc 1 360 0
	lfs 0,8(31)
	stfs 0,136(30)
	.loc 1 361 0
	lfs 0,12(31)
	stfs 0,140(30)
	.loc 1 362 0
	b .L169
.L178:
.LBB272:
	.loc 1 365 0
	add 9,29,30
	.loc 1 372 0
	lis 3,model_stack@ha
	.loc 1 365 0
	stfs 0,84(9)
	.loc 1 372 0
	la 3,model_stack@l(3)
	.loc 1 374 0
	add 30,29,30
	.loc 1 366 0
	lfs 0,4(31)
	stfs 0,88(9)
	.loc 1 367 0
	lfs 0,8(31)
	stfs 0,92(9)
	.loc 1 372 0
	bl TopMtx
	addi 4,1,8
	bl ps_guMtxTranspose
	.loc 1 374 0
	addi 4,30,84
	addi 3,1,8
	mr 5,4
	bl ps_guVecMultiply
	b .L169
.L172:
.LBB273:
.LBB274:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,377
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
.L169:
.LBE274:
.LBE273:
.LBE272:
	.loc 1 381 0
	addi 11,1,88
	b _restgpr_29_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 65
	.cfi_endproc
.LFE94:
	.size	glLightfv, .-glLightfv
	.align 2
	.globl glMaterialf
	.type	glMaterialf, @function
glMaterialf:
.LFB95:
	.loc 1 385 0
	.cfi_startproc
.LVL136:
	.loc 1 386 0
	cmpwi 7,4,5633
	bne+ 7,.L186
	.loc 1 389 0
	lis 9,curmat+64@ha
	stfs 1,curmat+64@l(9)
	blr
.L186:
.LVL137:
.LBB275:
.LBB276:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,391
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LBE276:
.LBE275:
	.cfi_endproc
.LFE95:
	.size	glMaterialf, .-glMaterialf
	.align 2
	.globl glMaterialfv
	.type	glMaterialfv, @function
glMaterialfv:
.LFB96:
	.loc 1 396 0
	.cfi_startproc
.LVL138:
	.loc 1 397 0
	cmplwi 7,4,4610
	.loc 1 396 0
	mflr 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,5
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 397 0
	beq- 7,.L189
	bgt+ 7,.L190
	cmplwi 7,4,4608
	beq+ 7,.L191
	cmplwi 7,4,4609
	bne+ 7,.L188
	b .L192
.L190:
	cmplwi 7,4,5633
	beq- 7,.L193
	cmplwi 7,4,5634
	beq- 7,.L194
	cmplwi 7,4,5632
	bne+ 7,.L188
	.loc 1 404 0
	lfs 0,0(5)
	lis 10,curmat@ha
	la 9,curmat@l(10)
	stfs 0,curmat@l(10)
	.loc 1 405 0
	lfs 0,4(5)
	stfs 0,4(9)
	.loc 1 406 0
	lfs 0,8(5)
	stfs 0,8(9)
	.loc 1 407 0
	lfs 0,12(5)
	stfs 0,12(9)
	.loc 1 408 0
	b .L187
.L194:
	.loc 1 400 0
	li 4,4608
.LVL139:
	bl glMaterialfv
.LVL140:
.L192:
	.loc 1 410 0
	lfs 0,0(31)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	stfs 0,32(9)
	.loc 1 411 0
	lfs 0,4(31)
	stfs 0,36(9)
	.loc 1 412 0
	lfs 0,8(31)
	stfs 0,40(9)
	.loc 1 413 0
	lfs 0,12(31)
	stfs 0,44(9)
	.loc 1 414 0
	b .L187
.LVL141:
.L191:
	.loc 1 416 0
	lfs 0,0(5)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	stfs 0,16(9)
	.loc 1 417 0
	lfs 0,4(5)
	stfs 0,20(9)
	.loc 1 418 0
	lfs 0,8(5)
	stfs 0,24(9)
	.loc 1 419 0
	lfs 0,12(5)
	stfs 0,28(9)
	.loc 1 420 0
	b .L187
.L189:
	.loc 1 422 0
	lfs 0,0(5)
	lis 9,curmat@ha
	la 9,curmat@l(9)
	stfs 0,48(9)
	.loc 1 423 0
	lfs 0,4(5)
	stfs 0,52(9)
	.loc 1 424 0
	lfs 0,8(5)
	stfs 0,56(9)
	.loc 1 425 0
	lfs 0,12(5)
	stfs 0,60(9)
	.loc 1 426 0
	b .L187
.L193:
	.loc 1 428 0
	lfs 0,0(5)
	lis 9,curmat+64@ha
	stfs 0,curmat+64@l(9)
	.loc 1 429 0
	b .L187
.L188:
.LVL142:
.LBB277:
.LBB278:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,431
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
.LVL143:
.L187:
.LBE278:
.LBE277:
	.loc 1 434 0
	addi 11,1,16
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
	.cfi_endproc
.LFE96:
	.size	glMaterialfv, .-glMaterialfv
	.align 2
	.globl glGetMaterialfv
	.type	glGetMaterialfv, @function
glGetMaterialfv:
.LFB97:
	.loc 1 439 0
	.cfi_startproc
.LVL144:
	.loc 1 440 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L202
.LVL145:
.LBB279:
.LBB280:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,440
	b .L212
.LVL146:
.L202:
.LBE280:
.LBE279:
	.loc 1 444 0
	cmplwi 7,4,4610
	beq- 7,.L205
	bgt- 7,.L206
	cmplwi 7,4,4608
	beq- 7,.L207
	cmplwi 7,4,4609
	bne- 7,.L204
.LVL147:
	.loc 1 452 0
	lis 9,curmat@ha
	la 9,curmat@l(9)
	lfs 11,32(9)
.LVL148:
	lfs 12,36(9)
.LVL149:
	lfs 13,40(9)
.LVL150:
	lfs 0,44(9)
.LVL151:
	.loc 1 453 0
	b .L211
.LVL152:
.L206:
	.loc 1 444 0
	cmplwi 7,4,5632
	beq- 7,.L209
	cmplwi 7,4,5633
	bne- 7,.L204
	.loc 1 463 0
	lis 9,curmat+64@ha
	lfs 0,curmat+64@l(9)
	stfs 0,0(5)
	blr
.L209:
.LVL153:
	.loc 1 448 0
	lis 10,curmat@ha
	la 9,curmat@l(10)
	lfs 11,curmat@l(10)
.LVL154:
	lfs 12,4(9)
.LVL155:
	lfs 13,8(9)
.LVL156:
	lfs 0,12(9)
.LVL157:
	.loc 1 449 0
	b .L211
.LVL158:
.L207:
	.loc 1 456 0
	lis 9,curmat@ha
	la 9,curmat@l(9)
	lfs 11,16(9)
.LVL159:
	lfs 12,20(9)
.LVL160:
	lfs 13,24(9)
.LVL161:
	lfs 0,28(9)
.LVL162:
	.loc 1 457 0
	b .L211
.LVL163:
.L205:
	.loc 1 460 0
	lis 9,curmat@ha
	la 9,curmat@l(9)
	lfs 11,48(9)
.LVL164:
	lfs 12,52(9)
.LVL165:
	lfs 13,56(9)
.LVL166:
	lfs 0,60(9)
.LVL167:
	.loc 1 461 0
	b .L211
.LVL168:
.L204:
.LBB281:
.LBB282:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,466
.LVL169:
.L212:
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LVL170:
.L211:
.LBE282:
.LBE281:
	.loc 1 472 0
	stfs 11,0(5)
	.loc 1 473 0
	stfs 12,4(5)
	.loc 1 474 0
	stfs 13,8(5)
	.loc 1 475 0
	stfs 0,12(5)
	blr
	.cfi_endproc
.LFE97:
	.size	glGetMaterialfv, .-glGetMaterialfv
	.align 2
	.globl glClear
	.type	glClear, @function
glClear:
.LFB99:
	.loc 1 546 0
	.cfi_startproc
.LVL171:
	.loc 1 547 0
	lis 9,cur_state@ha
	.loc 1 546 0
	mflr 0
	.loc 1 547 0
	lwz 9,cur_state@l(9)
	.loc 1 546 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 547 0
	andi. 10,9,1
	.loc 1 546 0
	stw 0,28(1)
	.cfi_offset 65, 4
	.loc 1 547 0
	beq+ 0,.L214
.LVL172:
.LBB283:
.LBB284:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,547
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	b .L213
.LVL173:
.L214:
.LBE284:
.LBE283:
	.loc 1 562 0
	andi. 9,3,16384
	rlwinm 10,3,24,31,31
	cmpwi 7,10,0
	beq- 0,.L216
	.loc 1 562 0 is_stmt 0 discriminator 1
	beq+ 7,.L217
	.loc 1 571 0 is_stmt 1
	lis 9,_clearcolor@ha
	lwz 9,_clearcolor@l(9)
	stw 9,8(1)
	lis 9,_cleardepth@ha
	lfs 13,_cleardepth@l(9)
	lis 9,.LC11@ha
	lfs 0,.LC11@l(9)
	lis 9,.LC12@ha
	fmuls 0,13,0
	lfs 13,.LC12@l(9)
	fcmpu 7,0,13
	cror 30,29,30
	beq- 7,.L218
	fctiwz 0,0
	addi 9,1,16
	stfiwx 0,0,9
	lwz 4,16(1)
	b .L219
.L218:
	fsubs 0,0,13
	addi 10,1,12
	fctiwz 0,0
	stfiwx 0,0,10
	lwz 4,12(1)
	addis 4,4,0x8000
.L219:
	addi 3,1,8
.LVL174:
	bl GX_SetCopyClear
.LVL175:
	.loc 1 572 0
	bl getBackFramebuffer
.LVL176:
	li 4,1
	bl GX_CopyDisp
.LVL177:
	.loc 1 599 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	.loc 1 573 0
	b GX_DrawDone
.LVL178:
.L217:
	.cfi_restore_state
	.loc 1 580 0
	li 3,0
.LVL179:
	li 4,0
	li 5,0
	bl GX_SetZMode
.LVL180:
	.loc 1 581 0
	li 3,1
	bl GX_SetColorUpdate
.LVL181:
	.loc 1 582 0
	li 3,1
	b .L222
.LVL182:
.L216:
	.loc 1 586 0
	beq+ 7,.L213
	.loc 1 593 0
	li 3,1
.LVL183:
	li 4,7
	li 5,1
	bl GX_SetZMode
.LVL184:
	.loc 1 594 0
	li 3,0
	bl GX_SetColorUpdate
.LVL185:
	.loc 1 595 0
	li 3,0
.L222:
	bl GX_SetAlphaUpdate
.LVL186:
	.loc 1 599 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	.loc 1 597 0
	b draw_axis_align_blanker_quad
.LVL187:
.L213:
	.cfi_restore_state
	.loc 1 599 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE99:
	.size	glClear, .-glClear
	.align 2
	.globl glClearColor
	.type	glClearColor, @function
glClearColor:
.LFB100:
	.loc 1 604 0
	.cfi_startproc
.LVL188:
	.loc 1 606 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 8,9,1
	beq+ 0,.L224
.LVL189:
.LBB285:
.LBB286:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,606
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LVL190:
.L224:
.LBE286:
.LBE285:
	.loc 1 608 0
	lis 8,.LC10@ha
	.loc 1 604 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.loc 1 608 0
	lfs 0,.LC10@l(8)
	lis 10,_clearcolor@ha
	addi 8,1,8
	la 9,_clearcolor@l(10)
	fmuls 1,1,0
.LVL191:
	.loc 1 609 0
	fmuls 2,2,0
.LVL192:
	.loc 1 610 0
	fmuls 3,3,0
.LVL193:
	.loc 1 608 0
	fctiwz 1,1
	.loc 1 609 0
	fctiwz 2,2
	.loc 1 610 0
	fctiwz 3,3
	.loc 1 608 0
	stfiwx 1,0,8
	.loc 1 611 0
	fmuls 0,4,0
	.loc 1 608 0
	lwz 8,8(1)
	.loc 1 611 0
	fctiwz 0,0
	.loc 1 608 0
	stb 8,_clearcolor@l(10)
	.loc 1 609 0
	addi 10,1,12
	stfiwx 2,0,10
	.loc 1 610 0
	addi 8,1,16
	.loc 1 609 0
	lwz 10,12(1)
	stb 10,1(9)
	.loc 1 610 0
	stfiwx 3,0,8
	lwz 10,16(1)
	stb 10,2(9)
	.loc 1 611 0
	addi 10,1,20
	stfiwx 0,0,10
	lwz 10,20(1)
	stb 10,3(9)
	.loc 1 612 0
	addi 1,1,24
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE100:
	.size	glClearColor, .-glClearColor
	.align 2
	.globl glClearDepth
	.type	glClearDepth, @function
glClearDepth:
.LFB101:
	.loc 1 614 0
	.cfi_startproc
.LVL194:
	.loc 1 616 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L228
.LVL195:
.LBB287:
.LBB288:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,616
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LVL196:
.L228:
.LBE288:
.LBE287:
	.loc 1 618 0
	lis 9,.LC7@ha
	lfs 0,.LC7@l(9)
	fmr 13,0
	fcmpu 7,1,13
	bgt+ 7,.L231
	.loc 1 622 0
	lis 9,.LC13@ha
	lfd 0,.LC13@l(9)
	fcmpu 7,1,0
	bnl- 7,.L230
	.loc 1 624 0
	fmr 1,0
.LVL197:
	b .L230
.LVL198:
.L231:
	.loc 1 620 0
	fmr 1,0
.LVL199:
.L230:
	.loc 1 627 0
	frsp 1,1
.LVL200:
	lis 9,_cleardepth@ha
	stfs 1,_cleardepth@l(9)
	blr
	.cfi_endproc
.LFE101:
	.size	glClearDepth, .-glClearDepth
	.align 2
	.globl glFlush
	.type	glFlush, @function
glFlush:
.LFB102:
	.loc 1 632 0
	.cfi_startproc
	.loc 1 634 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq- 0,.L234
.LVL201:
.LBB289:
.LBB290:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,634
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LVL202:
.L234:
.LBE290:
.LBE289:
	.loc 1 637 0
	.loc 1 636 0
	b GX_DrawDone
.LVL203:
	.cfi_endproc
.LFE102:
	.size	glFlush, .-glFlush
	.align 2
	.globl updateFog
	.type	updateFog, @function
updateFog:
.LFB103:
	.loc 1 644 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 645 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	.loc 1 644 0
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 645 0
	bl TopPrjMtx
.LVL204:
	.loc 1 646 0
	lis 10,fog_enable@ha
	.loc 1 645 0
	mr 9,3
.LVL205:
	.loc 1 646 0
	lbz 10,fog_enable@l(10)
	cmpwi 7,10,0
	lis 10,fog_color@ha
	beq- 7,.L238
	.loc 1 648 0
	lis 8,fog_mode@ha
	.loc 1 650 0
	lwz 10,fog_color@l(10)
	.loc 1 648 0
	lbz 3,fog_mode@l(8)
.LVL206:
	.loc 1 650 0
	stw 10,8(1)
	.loc 1 648 0
	andi. 8,3,2
	bne- 0,.L242
	.loc 1 654 0
	lis 10,.LC3@ha
	lfs 1,.LC3@l(10)
	lis 10,fog_density@ha
	lfs 2,fog_density@l(10)
	b .L243
.LVL207:
.L238:
	.loc 1 659 0
	lwz 10,fog_color@l(10)
	li 3,0
.LVL208:
	stw 10,8(1)
.L242:
	lis 10,fog_startz@ha
	lfs 1,fog_startz@l(10)
	lis 10,fog_endz@ha
	lfs 2,fog_endz@l(10)
.L243:
	lfs 3,68(9)
	addi 4,1,8
	lfs 4,72(9)
	bl GX_SetFog
.LVL209:
	.loc 1 661 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE103:
	.size	updateFog, .-updateFog
	.align 2
	.globl glFogf
	.type	glFogf, @function
glFogf:
.LFB106:
	.loc 1 679 0
	.cfi_startproc
.LVL210:
	.loc 1 680 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L245
.LVL211:
.LBB311:
.LBB312:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,680
	b .L267
.LVL212:
.L245:
.LBE312:
.LBE311:
	.loc 1 682 0
	cmplwi 7,3,2915
	beq- 7,.L248
	bgt+ 7,.L249
	cmplwi 7,3,2914
	beq+ 7,.L250
	b .L247
.L249:
	cmplwi 7,3,2916
	beq- 7,.L251
	cmplwi 7,3,2917
	bne- 7,.L247
.LVL213:
.LBB313:
.LBB314:
	.loc 1 685 0
	lis 9,.LC12@ha
.LBE314:
.LBE313:
	.loc 1 679 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
.LBB318:
.LBB317:
	.loc 1 685 0
	lfs 0,.LC12@l(9)
	fcmpu 7,1,0
	cror 30,29,30
	beq- 7,.L254
	fctiwz 1,1
.LVL214:
	addi 9,1,12
	stfiwx 1,0,9
	lwz 9,12(1)
	b .L255
.LVL215:
.L254:
	fsubs 0,1,0
	addi 10,1,8
	fctiwz 0,0
	stfiwx 0,0,10
	lwz 9,8(1)
	addis 9,9,0x8000
.LVL216:
.L255:
	cmplwi 7,9,2049
	beq- 7,.L256
	cmplwi 7,9,9729
	beq- 7,.L257
	cmplwi 7,9,2048
	bne+ 7,.L262
	.loc 1 691 0
	li 10,4
	b .L266
.L257:
	.loc 1 688 0
	li 10,2
	b .L266
.L256:
	.loc 1 694 0
	li 10,5
.L266:
	lis 9,fog_mode@ha
	stb 10,fog_mode@l(9)
	b .L244
.L262:
.LVL217:
.LBB315:
.LBB316:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,697
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	b .L244
.LVL218:
.L248:
	.cfi_def_cfa_offset 0
.LBE316:
.LBE315:
.LBE317:
.LBE318:
	.loc 1 702 0
	lis 9,fog_startz@ha
	stfs 1,fog_startz@l(9)
	.loc 1 703 0
	blr
.L251:
	.loc 1 705 0
	lis 9,fog_endz@ha
	stfs 1,fog_endz@l(9)
	.loc 1 706 0
	blr
.L250:
	.loc 1 708 0
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	fcmpu 7,1,0
	bnl+ 7,.L263
.LVL219:
.LBB319:
.LBB320:
	.loc 1 1195 0
	li 10,1281
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,710
	b .L267
.LVL220:
.L263:
.LBE320:
.LBE319:
.LBB321:
.LBB322:
	.loc 1 668 0
	lis 9,.LC15@ha
	lfd 0,.LC15@l(9)
	lis 9,fog_density@ha
	fdiv 1,0,1
.LVL221:
	frsp 1,1
	stfs 1,fog_density@l(9)
.LBE322:
.LBE321:
	.loc 1 714 0
	blr
.LVL222:
.L247:
.LBB323:
.LBB324:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,716
.LVL223:
.L267:
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LVL224:
.L244:
	.cfi_def_cfa_offset 16
.LBE324:
.LBE323:
	.loc 1 719 0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE106:
	.size	glFogf, .-glFogf
	.align 2
	.globl glFogi
	.type	glFogi, @function
glFogi:
.LFB105:
	.loc 1 674 0
	.cfi_startproc
.LVL225:
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.loc 1 675 0
	lis 9,0x4330
	xoris 4,4,0x8000
.LVL226:
	stw 9,8(1)
	lis 9,.LC6@ha
	stw 4,12(1)
	lfs 1,.LC6@l(9)
	lfd 0,8(1)
	.loc 1 676 0
	addi 1,1,16
	.cfi_def_cfa_offset 0
	.loc 1 675 0
	fsub 1,0,1
	frsp 1,1
	b glFogf
.LVL227:
	.cfi_endproc
.LFE105:
	.size	glFogi, .-glFogi
	.align 2
	.globl glFogfv
	.type	glFogfv, @function
glFogfv:
.LFB107:
	.loc 1 722 0
	.cfi_startproc
.LVL228:
	.loc 1 723 0
	lis 10,cur_state@ha
	lwz 10,cur_state@l(10)
	andi. 8,10,1
	beq+ 0,.L271
.LVL229:
.LBB325:
.LBB326:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,723
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LVL230:
.L271:
.LBE326:
.LBE325:
	.loc 1 725 0
	cmplwi 7,3,2918
	lfs 1,0(4)
	bne- 7,.L275
	.loc 1 728 0
	lis 8,.LC10@ha
	.loc 1 722 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.loc 1 728 0
	lfs 0,.LC10@l(8)
	lis 10,fog_color@ha
	addi 8,1,8
	la 9,fog_color@l(10)
	fmuls 1,1,0
	fctiwz 1,1
	stfiwx 1,0,8
	.loc 1 729 0
	lfs 13,4(4)
	.loc 1 728 0
	lwz 8,8(1)
	.loc 1 729 0
	fmuls 13,13,0
	.loc 1 728 0
	stb 8,fog_color@l(10)
	.loc 1 729 0
	addi 10,1,12
	.loc 1 730 0
	addi 8,1,16
	.loc 1 729 0
	fctiwz 13,13
	stfiwx 13,0,10
	.loc 1 730 0
	lfs 13,8(4)
	.loc 1 729 0
	lwz 10,12(1)
	.loc 1 730 0
	fmuls 13,13,0
	.loc 1 729 0
	stb 10,1(9)
	.loc 1 730 0
	fctiwz 13,13
	stfiwx 13,0,8
	.loc 1 731 0
	lfs 13,12(4)
	.loc 1 730 0
	lwz 10,16(1)
	.loc 1 731 0
	fmuls 0,13,0
	.loc 1 730 0
	stb 10,2(9)
	.loc 1 731 0
	addi 10,1,20
	fctiwz 0,0
	stfiwx 0,0,10
	lwz 10,20(1)
	stb 10,3(9)
	.loc 1 737 0
	addi 1,1,24
	.cfi_def_cfa_offset 0
	blr
.L275:
	.loc 1 734 0
	b glFogf
.LVL231:
	.cfi_endproc
.LFE107:
	.size	glFogfv, .-glFogfv
	.align 2
	.globl glDepthMask
	.type	glDepthMask, @function
glDepthMask:
.LFB108:
	.loc 1 740 0
	.cfi_startproc
.LVL232:
	.loc 1 741 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L278
.LVL233:
.LBB327:
.LBB328:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,741
	b .L284
.LVL234:
.L278:
.LBE328:
.LBE327:
	.loc 1 743 0
	cmpwi 7,3,0
	beq- 7,.L281
	cmplwi 7,3,1
	bne- 7,.L283
.L281:
	.loc 1 746 0
	lis 9,depthupdate@ha
	stb 3,depthupdate@l(9)
	blr
.L283:
.LVL235:
.LBB329:
.LBB330:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,748
.LVL236:
.L284:
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LBE330:
.LBE329:
	.cfi_endproc
.LFE108:
	.size	glDepthMask, .-glDepthMask
	.align 2
	.globl glEnable
	.type	glEnable, @function
glEnable:
.LFB109:
	.loc 1 755 0
	.cfi_startproc
.LVL237:
	.loc 1 756 0
	lis 10,cur_state@ha
	lwz 10,cur_state@l(10)
	andi. 8,10,1
	beq+ 0,.L286
.LVL238:
.LBB331:
.LBB332:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,756
	b .L305
.LVL239:
.L286:
.LBE332:
.LBE331:
	.loc 1 758 0
	cmplwi 7,3,2929
	beq- 7,.L289
	bgt- 7,.L290
	cmplwi 7,3,2896
	beq- 7,.L291
	bgt+ 7,.L292
	cmplwi 7,3,2884
	bne- 7,.L288
	.loc 1 782 0
	li 10,1
	lis 9,gxcullfaceanabled@ha
	stb 10,gxcullfaceanabled@l(9)
	blr
.L292:
	.loc 1 758 0
	cmplwi 7,3,2903
	beq- 7,.L294
	cmplwi 7,3,2912
	bne- 7,.L288
	.loc 1 783 0
	li 10,1
	lis 9,fog_enable@ha
	stb 10,fog_enable@l(9)
	blr
.L290:
	.loc 1 758 0
	cmplwi 7,3,3553
	beq- 7,.L296
	bgt- 7,.L297
	cmplwi 7,3,3042
	beq- 7,.L298
	cmplwi 7,3,3089
	bne- 7,.L288
	.loc 1 785 0
	li 10,1
	lis 9,scissor_test@ha
	stb 10,scissor_test@l(9)
	blr
.L297:
	.loc 1 758 0
	addi 9,3,-16384
	cmplwi 7,9,7
	ble+ 7,.L302
	b .L288
.L298:
	.loc 1 760 0
	li 10,1
	lis 9,blend_type@ha
	stb 10,blend_type@l(9)
	blr
.L289:
	.loc 1 761 0
	li 10,1
	lis 9,depthtestenabled@ha
	stb 10,depthtestenabled@l(9)
	blr
.L291:
	.loc 1 762 0
	li 10,1
	lis 9,lighting@ha
	stb 10,lighting@l(9)
	blr
.L296:
	.loc 1 763 0
	li 3,1
.LVL240:
	b _glSetEnableTex
.LVL241:
.L302:
	.loc 1 755 0
	mflr 0
	stwu 1,-8(1)
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.cfi_offset 65, 4
.LBB333:
	.loc 1 773 0
	bl glLightN
.LVL242:
	.loc 1 774 0
	cmpwi 0,3,0
	bge+ 0,.L301
.LVL243:
.LBB334:
.LBB335:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,776
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	b .L285
.LVL244:
.L301:
.LBE335:
.LBE334:
	.loc 1 779 0
	mulli 3,3,164
.LVL245:
	lis 9,lights@ha
	li 10,1
	la 9,lights@l(9)
	stbx 10,9,3
	.loc 1 780 0
	b .L285
.LVL246:
.L294:
	.cfi_def_cfa_offset 0
	.cfi_restore 65
.LBE333:
	.loc 1 784 0
	li 10,1
	lis 9,copy_mat_enabled@ha
	stb 10,copy_mat_enabled@l(9)
	blr
.L288:
.LVL247:
.LBB336:
.LBB337:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,788
.LVL248:
.L305:
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LVL249:
.L285:
	.cfi_def_cfa_offset 8
	.cfi_offset 65, 4
.LBE337:
.LBE336:
	.loc 1 791 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE109:
	.size	glEnable, .-glEnable
	.align 2
	.globl glIsEnabled
	.type	glIsEnabled, @function
glIsEnabled:
.LFB110:
	.loc 1 794 0
	.cfi_startproc
.LVL250:
	.loc 1 796 0
	lis 10,cur_state@ha
	lwz 10,cur_state@l(10)
	andi. 8,10,1
	beq+ 0,.L307
.LVL251:
.LBB338:
.LBB339:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,796
	b .L372
.LVL252:
.L307:
.LBE339:
.LBE338:
	.loc 1 798 0
	cmplwi 7,3,3089
	beq- 7,.L310
	bgt- 7,.L311
	cmplwi 7,3,2912
	beq- 7,.L312
	bgt- 7,.L313
	cmplwi 7,3,2882
	bgt+ 7,.L314
	cmplwi 7,3,2881
	bge- 7,.L329
	cmplwi 7,3,2848
	beq- 7,.L329
	cmplwi 7,3,2852
	beq- 7,.L329
	cmplwi 7,3,2832
	b .L369
.L314:
	cmplwi 7,3,2896
	beq- 7,.L315
	cmplwi 7,3,2903
	beq- 7,.L316
	cmplwi 7,3,2884
	bne- 7,.L309
	.loc 1 802 0
	lis 9,gxcullfaceanabled@ha
	lbz 3,gxcullfaceanabled@l(9)
.LVL253:
	blr
.LVL254:
.L313:
	.loc 1 798 0
	cmplwi 7,3,3008
	beq- 7,.L329
	bgt+ 7,.L318
	cmplwi 7,3,2960
	beq- 7,.L329
	cmplwi 7,3,2977
	beq- 7,.L329
	cmplwi 7,3,2929
	bne- 7,.L309
	.loc 1 803 0
	lis 9,depthtestenabled@ha
	lbz 3,depthtestenabled@l(9)
.LVL255:
	b .L371
.LVL256:
.L318:
	.loc 1 798 0
	cmplwi 7,3,3042
	beq+ 7,.L320
	bgt+ 7,.L321
	cmplwi 7,3,3024
	b .L369
.L321:
	cmplwi 7,3,3057
	beq+ 7,.L322
	cmplwi 7,3,3058
	b .L369
.L311:
	cmplwi 7,3,10754
	bgt+ 7,.L323
	cmplwi 7,3,10753
	bge- 7,.L329
	cmplwi 7,3,3472
	beq- 7,.L329
	bgt+ 7,.L324
	cmplwi 7,3,3168
	blt- 7,.L309
	cmplwi 7,3,3171
	ble- 7,.L329
	cmplwi 7,3,3456
.L369:
	bne+ 7,.L309
	b .L329
.L324:
	cmplwi 7,3,3508
	blt- 7,.L309
	cmplwi 7,3,3512
	ble- 7,.L329
	addi 9,3,-3552
	cmplwi 7,9,1
	ble+ 7,.L322
	b .L309
.L323:
	cmplwi 7,3,16391
	bgt- 7,.L325
	cmplwi 7,3,16384
	bge- 7,.L326
	addi 9,3,-12288
	cmplwi 7,9,5
	bgt+ 7,.L309
	b .L329
.L325:
	xoris 10,3,0xffff
	cmpwi 7,10,-32713
	beq 7,.L329
	cmplwi 7,3,32823
	blt- 7,.L309
	addis 9,3,0xffff
	addi 9,9,32652
	cmplwi 7,9,5
	bgt- 7,.L309
	.loc 1 811 0
	b _glIsArrayEnabled
.LVL257:
.L320:
	.loc 1 800 0
	lis 9,blend_type@ha
	lbz 3,blend_type@l(9)
.LVL258:
	b .L371
.LVL259:
.L316:
	.loc 1 801 0
	lis 9,copy_mat_enabled@ha
	lbz 3,copy_mat_enabled@l(9)
.LVL260:
	blr
.L371:
	.loc 1 803 0
	xori 3,3,1
	cntlzw 3,3
	srwi 3,3,5
	blr
.LVL261:
.L312:
	.loc 1 804 0
	lis 9,fog_enable@ha
	lbz 3,fog_enable@l(9)
.LVL262:
	blr
.LVL263:
.L322:
	.loc 1 815 0
	lis 9,cur_tex@ha
	lwz 3,cur_tex@l(9)
.LVL264:
	b _glGetEnableTex
.LVL265:
.L326:
	.loc 1 794 0
	mflr 0
	stwu 1,-8(1)
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.cfi_offset 65, 4
.LBB340:
	.loc 1 825 0
	bl glLightN
.LVL266:
	.loc 1 826 0
	cmpwi 0,3,0
	bge+ 0,.L328
.LVL267:
.LBB341:
.LBB342:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,828
	lis 9,glErrLine@ha
.LBE342:
.LBE341:
	.loc 1 829 0
	li 3,0
.LVL268:
.LBB344:
.LBB343:
	.loc 1 1197 0
	stw 10,glErrLine@l(9)
.LBE343:
.LBE344:
	.loc 1 829 0
	b .L308
.LVL269:
.L328:
	.loc 1 831 0
	mulli 3,3,164
.LVL270:
	lis 9,lights@ha
	la 9,lights@l(9)
	lbzx 3,9,3
	b .L308
.LVL271:
.L315:
	.cfi_def_cfa_offset 0
	.cfi_restore 65
.LBE340:
	.loc 1 834 0
	lis 9,lighting@ha
	lbz 3,lighting@l(9)
.LVL272:
	blr
.LVL273:
.L310:
	.loc 1 835 0
	lis 9,scissor_test@ha
	lbz 3,scissor_test@l(9)
.LVL274:
	.loc 1 872 0
	blr
.LVL275:
.L309:
.LBB345:
.LBB346:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,869
.LVL276:
.L372:
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
.L329:
.LBE346:
.LBE345:
	.loc 1 866 0
	li 3,0
.LVL277:
	blr
.L308:
	.cfi_def_cfa_offset 8
	.cfi_offset 65, 4
	.loc 1 872 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE110:
	.size	glIsEnabled, .-glIsEnabled
	.align 2
	.globl glDisable
	.type	glDisable, @function
glDisable:
.LFB111:
	.loc 1 875 0
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.loc 1 876 0
	lis 10,cur_state@ha
	.loc 1 875 0
	mflr 0
	stw 31,12(1)
	.cfi_register 65, 0
	.cfi_offset 31, -4
	.loc 1 876 0
	lwz 31,cur_state@l(10)
	.loc 1 875 0
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 876 0
	andi. 31,31,1
	beq+ 0,.L374
.LBB347:
.LBB348:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,876
	b .L425
.L374:
.LBE348:
.LBE347:
	.loc 1 878 0
	cmplwi 7,3,3058
	beq- 7,.L373
	bgt- 7,.L377
	cmplwi 7,3,2903
	beq- 7,.L378
	bgt+ 7,.L379
	cmplwi 7,3,2882
	bgt+ 7,.L380
	cmplwi 7,3,2881
	bge- 7,.L373
	cmplwi 7,3,2848
	beq- 7,.L373
	cmplwi 7,3,2852
	beq- 7,.L373
	cmplwi 7,3,2832
	b .L427
.L380:
	cmplwi 7,3,2884
	beq- 7,.L381
	cmplwi 7,3,2896
	bne- 7,.L376
	.loc 1 882 0
	lis 9,lighting@ha
	stb 31,lighting@l(9)
	b .L373
.L379:
	.loc 1 878 0
	cmplwi 7,3,2977
	beq- 7,.L373
	bgt- 7,.L383
	cmplwi 7,3,2929
	beq- 7,.L384
	cmplwi 7,3,2960
	beq- 7,.L373
	cmplwi 7,3,2912
	bne- 7,.L376
	.loc 1 900 0
	li 10,0
	lis 9,fog_enable@ha
	stb 10,fog_enable@l(9)
	b .L373
.L383:
	.loc 1 878 0
	cmplwi 7,3,3024
	beq- 7,.L373
	cmplwi 7,3,3042
	beq+ 7,.L386
	cmplwi 7,3,3008
.L427:
	bne+ 7,.L376
	b .L373
.L377:
	cmplwi 7,3,3553
	beq- 7,.L387
	bgt- 7,.L388
	cmplwi 7,3,3456
	beq- 7,.L373
	bgt- 7,.L389
	cmplwi 7,3,3089
	beq+ 7,.L390
	blt- 7,.L376
	addi 9,3,-3168
	cmplwi 7,9,3
	b .L424
.L389:
	cmplwi 7,3,3472
	beq- 7,.L373
	blt- 7,.L376
	addi 9,3,-3508
	cmplwi 7,9,4
	b .L424
.L388:
	cmplwi 7,3,12293
	bgt+ 7,.L391
	cmplwi 7,3,12288
	bge- 7,.L373
	addi 9,3,-10753
	cmplwi 7,9,1
.L424:
	bgt+ 7,.L376
	b .L373
.L391:
	cmplwi 7,3,16384
	blt- 7,.L376
	cmplwi 7,3,16391
	ble+ 7,.L392
	xoris 10,3,0xffff
	cmpwi 7,10,-32713
	beq 7,.L373
	b .L376
.L386:
	.loc 1 880 0
	lis 9,blend_type@ha
	stb 31,blend_type@l(9)
	b .L373
.L384:
	.loc 1 881 0
	lis 9,depthtestenabled@ha
	stb 31,depthtestenabled@l(9)
	b .L373
.L387:
	.loc 1 939 0
	lwz 0,20(1)
	.loc 1 883 0
	li 3,0
	.loc 1 939 0
	lwz 31,12(1)
	mtlr 0
	.cfi_remember_state
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	.loc 1 883 0
	b _glSetEnableTex
.L392:
	.cfi_restore_state
.LBB349:
	.loc 1 893 0
	bl glLightN
	.loc 1 894 0
	cmpwi 0,3,0
	blt- 0,.L373
	.loc 1 896 0
	mulli 3,3,164
	lis 9,lights@ha
	la 9,lights@l(9)
	stbx 31,9,3
	.loc 1 897 0
	b .L373
.L381:
.LBE349:
	.loc 1 899 0
	lis 9,gxcullfaceanabled@ha
	stb 31,gxcullfaceanabled@l(9)
	b .L373
.L378:
	.loc 1 901 0
	lis 9,copy_mat_enabled@ha
	stb 31,copy_mat_enabled@l(9)
	b .L373
.L390:
	.loc 1 902 0
	lis 9,scissor_test@ha
	stb 31,scissor_test@l(9)
	b .L373
.L376:
.LBB350:
.LBB351:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,936
.L425:
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
.L373:
.LBE351:
.LBE350:
	.loc 1 939 0
	addi 11,1,16
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
	.cfi_endproc
.LFE111:
	.size	glDisable, .-glDisable
	.align 2
	.globl glDepthFunc
	.type	glDepthFunc, @function
glDepthFunc:
.LFB112:
	.loc 1 943 0
	.cfi_startproc
.LVL278:
	.loc 1 944 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L429
.LVL279:
.LBB352:
.LBB353:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,944
	b .L442
.LVL280:
.L429:
.LBE353:
.LBE352:
	.loc 1 946 0
	addi 3,3,-512
.LVL281:
	cmplwi 7,3,7
	bgt- 7,.L431
	lis 9,.L433@ha
	slwi 3,3,2
.LVL282:
	la 9,.L433@l(9)
	lwzx 10,9,3
	add 10,10,9
	lis 9,depthfunction@ha
	mtctr 10
	bctr
	.section	.rodata
	.align 2
	.align 2
.L433:
	.long .L432-.L433
	.long .L434-.L433
	.long .L435-.L433
	.long .L436-.L433
	.long .L437-.L433
	.long .L438-.L433
	.long .L439-.L433
	.long .L440-.L433
	.section	".text"
.L432:
	.loc 1 948 0
	li 10,0
	b .L441
.L434:
	.loc 1 949 0
	li 10,1
	b .L441
.L435:
	.loc 1 950 0
	li 10,2
	b .L441
.L436:
	.loc 1 951 0
	li 10,3
	b .L441
.L437:
	.loc 1 952 0
	li 10,4
	b .L441
.L438:
	.loc 1 953 0
	li 10,5
	b .L441
.L439:
	.loc 1 954 0
	li 10,6
	b .L441
.L440:
	.loc 1 955 0
	li 10,7
.L441:
	stw 10,depthfunction@l(9)
	blr
.L431:
.LVL283:
.LBB354:
.LBB355:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,957
.LVL284:
.L442:
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LBE355:
.LBE354:
	.cfi_endproc
.LFE112:
	.size	glDepthFunc, .-glDepthFunc
	.align 2
	.globl glMultiTexCoord2fARB
	.type	glMultiTexCoord2fARB, @function
glMultiTexCoord2fARB:
.LFB114:
	.loc 1 1040 0
	.cfi_startproc
.LVL285:
	.loc 1 1041 0
	addis 3,3,0xffff
.LVL286:
	addi 9,3,31552
	cmplwi 7,9,8
	ble+ 7,.L444
.LVL287:
.LBB356:
.LBB357:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,1043
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LVL288:
.L444:
.LBE357:
.LBE356:
	.loc 1 1050 0
	lis 10,_temptexcoordelement@ha
	slwi 9,9,3
.LVL289:
	la 10,_temptexcoordelement@l(10)
	add 8,10,9
	stfsx 1,10,9
	stfs 2,4(8)
	blr
	.cfi_endproc
.LFE114:
	.size	glMultiTexCoord2fARB, .-glMultiTexCoord2fARB
	.align 2
	.globl glClientActiveTextureARB
	.type	glClientActiveTextureARB, @function
glClientActiveTextureARB:
.LFB115:
	.loc 1 1054 0
	.cfi_startproc
.LVL290:
	.loc 1 1055 0
	addis 3,3,0xffff
.LVL291:
	addi 3,3,31552
.LVL292:
	cmplwi 7,3,8
	ble+ 7,.L447
.LVL293:
.LBB358:
.LBB359:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,1057
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LVL294:
.L447:
.LBE359:
.LBE358:
	.loc 1 1061 0
	lis 9,cur_tex_client@ha
	stw 3,cur_tex_client@l(9)
	blr
	.cfi_endproc
.LFE115:
	.size	glClientActiveTextureARB, .-glClientActiveTextureARB
	.align 2
	.globl glActiveTextureARB
	.type	glActiveTextureARB, @function
glActiveTextureARB:
.LFB116:
	.loc 1 1065 0
	.cfi_startproc
.LVL295:
	.loc 1 1066 0
	addis 3,3,0xffff
.LVL296:
	addi 3,3,31552
.LVL297:
	cmplwi 7,3,8
	ble+ 7,.L450
.LVL298:
.LBB360:
.LBB361:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,1068
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LVL299:
.L450:
.LBE361:
.LBE360:
	.loc 1 1072 0
	lis 9,cur_tex@ha
	stw 3,cur_tex@l(9)
	.loc 1 1074 0
	lis 9,cur_mode@ha
	lwz 9,cur_mode@l(9)
	cmpwi 7,9,5890
	bnelr+ 7
	.loc 1 1076 0
	li 3,5890
.LVL300:
	.loc 1 1078 0
	.loc 1 1076 0
	b glMatrixMode
.LVL301:
	.cfi_endproc
.LFE116:
	.size	glActiveTextureARB, .-glActiveTextureARB
	.align 2
	.globl glGetIntegerv
	.type	glGetIntegerv, @function
glGetIntegerv:
.LFB117:
	.loc 1 1080 0
	.cfi_startproc
	.loc 1 1081 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L453
.LBB362:
.LBB363:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,1081
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.L453:
.LBE363:
.LBE362:
	.loc 1 1083 0
	cmpwi 7,4,0
	.loc 1 1080 0
	mflr 0
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 31,28(1)
	.cfi_offset 31, -4
	mr 31,4
	stw 0,36(1)
	.cfi_offset 65, 4
	.loc 1 1083 0
	beq- 7,.L452
	.loc 1 1085 0
	cmplwi 7,3,3359
	bgt+ 7,.L456
	cmplwi 7,3,3352
	bge- 7,.L457
	cmplwi 7,3,3317
	bgt- 7,.L458
	cmplwi 7,3,3312
	bge- 7,.L459
	cmplwi 7,3,2979
	beq- 7,.L460
	bgt+ 7,.L461
	cmplwi 7,3,2976
	.loc 1 1088 0
	lis 9,cur_mode@ha
	lwz 9,cur_mode@l(9)
	.loc 1 1085 0
	beq+ 7,.L487
	b .L455
.L461:
	cmplwi 7,3,2980
	beq- 7,.L463
	cmplwi 7,3,2981
	bne- 7,.L455
	.loc 1 1105 0
	lis 3,texture_stack@ha
	la 3,texture_stack@l(3)
	b .L490
.L458:
	.loc 1 1085 0
	cmplwi 7,3,3328
	blt- 7,.L455
	cmplwi 7,3,3333
	ble- 7,.L459
	addi 9,3,-3344
	cmplwi 7,9,5
	ble+ 7,.L457
	b .L455
.L456:
	cmplwi 7,3,3385
	beq- 7,.L465
	bgt- 7,.L466
	cmplwi 7,3,3381
	beq- 7,.L467
	bgt- 7,.L468
	cmplwi 7,3,3377
	beq- 7,.L475
	cmplwi 7,3,3379
	.loc 1 1094 0
	li 9,1024
	.loc 1 1085 0
	beq+ 7,.L487
	b .L455
.L468:
	cmplwi 7,3,3382
	beq- 7,.L471
	cmplwi 7,3,3384
	bne- 7,.L455
	.loc 1 1117 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	b .L488
.L466:
	.loc 1 1085 0
	cmplwi 7,3,32878
	bgt+ 7,.L473
	cmplwi 7,3,32875
	bge- 7,.L459
	cmplwi 7,3,3387
	beq+ 7,.L467
	b .L455
.L473:
	xoris 9,3,0xffff
	cmpwi 7,9,-32535
	beq 7,.L474
	xoris 9,3,0xffff
	cmpwi 7,9,-31518
	beq 7,.L475
	xoris 9,3,0xffff
	cmpwi 7,9,-32536
	bne 7,.L455
	b .L474
.L475:
	.loc 1 1099 0
	li 9,8
	b .L487
.L460:
	.loc 1 1102 0
	lis 3,model_stack@ha
	la 3,model_stack@l(3)
	b .L490
.L463:
	.loc 1 1108 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
.L490:
	bl StackSize
	b .L489
.L471:
	.loc 1 1111 0
	lis 3,model_stack@ha
	la 3,model_stack@l(3)
	b .L488
.L465:
	.loc 1 1114 0
	lis 3,texture_stack@ha
	la 3,texture_stack@l(3)
.L488:
	.loc 1 1117 0
	bl MaxStackSize
.L489:
	stw 3,0(31)
	.loc 1 1118 0
	b .L452
.L474:
	.loc 1 1123 0
	li 9,32000
	b .L487
.L467:
	.loc 1 1127 0
	li 9,16
	b .L487
.L459:
	.loc 1 1145 0
	mr 4,31
	bl _glGetPixelStore
	.loc 1 1146 0
	b .L452
.L457:
.LBB364:
	.loc 1 1163 0
	addi 4,1,8
	bl _glGetPixelTransferf
	.loc 1 1164 0
	lfs 0,8(1)
	fctiwz 0,0
	stfiwx 0,0,31
.LBE364:
	.loc 1 1166 0
	b .L452
.L455:
.LBB365:
.LBB366:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	lis 9,glErrLine@ha
	li 10,1168
	stw 10,glErrLine@l(9)
.LBE366:
.LBE365:
	.loc 1 1169 0
	li 9,0
.L487:
	stw 9,0(31)
.L452:
	.loc 1 1172 0
	addi 11,1,32
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
	.cfi_endproc
.LFE117:
	.size	glGetIntegerv, .-glGetIntegerv
	.align 2
	.globl glGetFloatv
	.type	glGetFloatv, @function
glGetFloatv:
.LFB113:
	.loc 1 966 0
	.cfi_startproc
	.loc 1 967 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L492
.LBB367:
.LBB368:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,967
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.L492:
.LBE368:
.LBE367:
	.loc 1 969 0
	cmpwi 7,4,0
	.loc 1 966 0
	mflr 0
	stwu 1,-40(1)
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 31,36(1)
	.cfi_offset 31, -4
	mr 31,4
	stw 0,44(1)
	.cfi_offset 65, 4
	.loc 1 969 0
	bne+ 7,.L494
.LBB369:
.LBB370:
	.loc 1 1195 0
	li 10,1281
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,971
	b .L523
.L494:
.LBE370:
.LBE369:
	.loc 1 975 0
	cmplwi 7,3,3359
	bgt- 7,.L496
	cmplwi 7,3,3352
	bge- 7,.L497
	cmplwi 7,3,3317
	bgt- 7,.L498
	cmplwi 7,3,3312
	bge- 7,.L499
	cmplwi 7,3,2981
	bgt+ 7,.L500
	cmplwi 7,3,2979
	bge- 7,.L499
	cmplwi 7,3,2976
	b .L522
.L500:
	cmplwi 7,3,2984
	ble+ 7,.L501
	b .L495
.L498:
	cmplwi 7,3,3328
	blt- 7,.L495
	cmplwi 7,3,3333
	ble- 7,.L499
	addi 9,3,-3344
	cmplwi 7,9,5
	ble+ 7,.L497
	b .L495
.L496:
	cmplwi 7,3,32878
	bgt+ 7,.L502
	cmplwi 7,3,32875
	bge- 7,.L499
	cmplwi 7,3,3382
	beq- 7,.L499
	bgt- 7,.L503
	cmplwi 7,3,3377
	beq- 7,.L499
	cmplwi 7,3,3379
.L522:
	bne+ 7,.L495
	b .L499
.L503:
	addi 9,3,-3384
	b .L520
.L502:
	xoris 9,3,0xffff
	cmpwi 7,9,-31518
	beq 7,.L499
	cmplwi 7,3,34018
	bgt+ 7,.L504
	addis 9,3,0xffff
	addi 9,9,32536
.L520:
	cmplwi 7,9,1
	bgt+ 7,.L495
	b .L499
.L504:
	xoris 9,3,0xffff
	cmpwi 7,9,-31489
	bne 7,.L495
	.loc 1 978 0
	lis 9,.LC16@ha
	lfs 0,.LC16@l(9)
	stfs 0,0(4)
.L501:
	.loc 1 982 0
	mr 4,31
	bl _glGetMatrixf
	.loc 1 983 0
	b .L491
.L497:
	.loc 1 998 0
	mr 4,31
	bl _glGetPixelTransferf
	.loc 1 999 0
	b .L491
.L499:
.LBB371:
	.loc 1 1030 0
	addi 4,1,8
	bl glGetIntegerv
	.loc 1 1031 0
	lwz 9,8(1)
	xoris 9,9,0x8000
	stw 9,28(1)
	lis 9,0x4330
	stw 9,24(1)
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	lfd 13,24(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,0(31)
.L495:
.LBE371:
.LBB372:
.LBB373:
	.loc 1 1195 0
	li 10,1280
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,1034
.L523:
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
.L491:
.LBE373:
.LBE372:
	.loc 1 1037 0
	addi 11,1,40
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
	.cfi_endproc
.LFE113:
	.size	glGetFloatv, .-glGetFloatv
	.align 2
	.globl glLineWidth
	.type	glLineWidth, @function
glLineWidth:
.LFB118:
	.loc 1 1175 0
	.cfi_startproc
.LVL302:
	.loc 1 1176 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L525
.LVL303:
.LBB374:
.LBB375:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,1176
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LVL304:
.L525:
.LBE375:
.LBE374:
	.loc 1 1178 0
	lis 9,line_width@ha
	stfs 1,line_width@l(9)
	blr
	.cfi_endproc
.LFE118:
	.size	glLineWidth, .-glLineWidth
	.align 2
	.globl glPointSize
	.type	glPointSize, @function
glPointSize:
.LFB119:
	.loc 1 1182 0
	.cfi_startproc
.LVL305:
	.loc 1 1183 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L528
.LVL306:
.LBB376:
.LBB377:
	.loc 1 1195 0
	li 10,1282
	lis 9,glErrCode@ha
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,1183
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
	blr
.LVL307:
.L528:
.LBE377:
.LBE376:
	.loc 1 1185 0
	lis 9,point_size@ha
	stfs 1,point_size@l(9)
	blr
	.cfi_endproc
.LFE119:
	.size	glPointSize, .-glPointSize
	.align 2
	.globl _glSetErrorEx
	.type	_glSetErrorEx, @function
_glSetErrorEx:
.LFB120:
	.loc 1 1194 0
	.cfi_startproc
.LVL308:
	.loc 1 1195 0
	lis 9,glErrCode@ha
	stw 3,glErrCode@l(9)
	.loc 1 1196 0
	lis 9,glErrFile@ha
	stw 4,glErrFile@l(9)
	.loc 1 1197 0
	lis 9,glErrLine@ha
	stw 5,glErrLine@l(9)
	blr
	.cfi_endproc
.LFE120:
	.size	_glSetErrorEx, .-_glSetErrorEx
	.align 2
	.globl glGetError
	.type	glGetError, @function
glGetError:
.LFB121:
	.loc 1 1200 0
	.cfi_startproc
	.loc 1 1201 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	lis 9,glErrCode@ha
	beq+ 0,.L532
.LVL309:
.LBB378:
.LBB379:
	.loc 1 1195 0
	li 10,1282
.LBE379:
.LBE378:
	.loc 1 1201 0
	li 3,0
.LBB381:
.LBB380:
	.loc 1 1195 0
	stw 10,glErrCode@l(9)
	.loc 1 1196 0
	lis 10,.LC4@ha
	la 10,.LC4@l(10)
	lis 9,glErrFile@ha
	stw 10,glErrFile@l(9)
	.loc 1 1197 0
	li 10,1201
	lis 9,glErrLine@ha
	stw 10,glErrLine@l(9)
.LBE380:
.LBE381:
	.loc 1 1201 0
	blr
.LVL310:
.L532:
	.loc 1 1203 0
	lwz 3,glErrCode@l(9)
.LVL311:
	.loc 1 1204 0
	stw 10,glErrCode@l(9)
	.loc 1 1206 0
	blr
	.cfi_endproc
.LFE121:
	.size	glGetError, .-glGetError
	.align 2
	.globl glColorMask
	.type	glColorMask, @function
glColorMask:
.LFB122:
	.loc 1 1212 0
	.cfi_startproc
.LVL312:
	.loc 1 1213 0
	xori 3,3,1
.LVL313:
	.loc 1 1214 0
	xori 4,4,1
.LVL314:
	.loc 1 1215 0
	xori 5,5,1
.LVL315:
	.loc 1 1216 0
	xori 6,6,1
.LVL316:
	.loc 1 1213 0
	lis 10,color_write_mask@ha
	cntlzw 3,3
	.loc 1 1214 0
	cntlzw 4,4
	.loc 1 1215 0
	cntlzw 5,5
	.loc 1 1216 0
	cntlzw 6,6
	.loc 1 1213 0
	la 9,color_write_mask@l(10)
	srwi 3,3,5
	.loc 1 1214 0
	srwi 4,4,5
	.loc 1 1215 0
	srwi 5,5,5
	.loc 1 1216 0
	srwi 6,6,5
	.loc 1 1213 0
	stb 3,color_write_mask@l(10)
	.loc 1 1214 0
	stb 4,1(9)
	.loc 1 1215 0
	stb 5,2(9)
	.loc 1 1216 0
	stb 6,3(9)
	blr
	.cfi_endproc
.LFE122:
	.size	glColorMask, .-glColorMask
	.globl glErrLine
	.globl glErrFile
	.globl glErrCode
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
	.4byte	1139802112
.LC1:
	.4byte	1142947840
.LC2:
	.4byte	1065353217
.LC3:
	.4byte	0
.LC6:
	.4byte	1501560836
.LC7:
	.4byte	1065353216
.LC9:
	.4byte	1501560832
.LC10:
	.4byte	1132396544
.LC11:
	.4byte	1266679807
.LC12:
	.4byte	1325400064
.LC16:
	.4byte	1082130432
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC13:
	.4byte	0
	.4byte	0
.LC15:
	.4byte	1075195458
	.4byte	-17155559
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl.c"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	glErrLine, @object
	.size	glErrLine, 4
glErrLine:
	.zero	4
	.type	glErrFile, @object
	.size	glErrFile, 4
glErrFile:
	.zero	4
	.type	glErrCode, @object
	.size	glErrCode, 4
glErrCode:
	.zero	4
	.section	".text"
.Letext0:
	.file 3 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h"
	.file 4 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/include/GL/gl.h"
	.file 5 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\stdint.h"
	.file 6 "D:\\devkitPro\\/libogc/include/gctypes.h"
	.file 7 "D:\\devkitPro\\/libogc/include/ogc/gu.h"
	.file 8 "D:\\devkitPro\\/libogc/include/ogc/lwp.h"
	.file 9 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/include/glint.h"
	.file 10 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/include/mat_stack.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3018
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF308
	.byte	0x1
	.4byte	.LASF309
	.4byte	.LASF310
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
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
	.byte	0x4
	.byte	0x92
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x93
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x94
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x98
	.4byte	0x6a
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x99
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x9b
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x9c
	.4byte	0x6a
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x9d
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x9e
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x9f
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0xa0
	.4byte	0x2c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x125
	.uleb128 0x7
	.4byte	0x109
	.uleb128 0x6
	.byte	0x4
	.4byte	0x130
	.uleb128 0x7
	.4byte	0xf3
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0x29
	.4byte	0x5c
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x2a
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x35
	.4byte	0x63
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0x36
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x4f
	.4byte	0x6a
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x5
	.byte	0x50
	.4byte	0x3e
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf3
	.uleb128 0x8
	.string	"u8"
	.byte	0x6
	.byte	0x11
	.4byte	0x140
	.uleb128 0x8
	.string	"u16"
	.byte	0x6
	.byte	0x12
	.4byte	0x156
	.uleb128 0x8
	.string	"u32"
	.byte	0x6
	.byte	0x13
	.4byte	0x16c
	.uleb128 0x8
	.string	"s8"
	.byte	0x6
	.byte	0x16
	.4byte	0x135
	.uleb128 0x8
	.string	"s16"
	.byte	0x6
	.byte	0x17
	.4byte	0x14b
	.uleb128 0x8
	.string	"s32"
	.byte	0x6
	.byte	0x18
	.4byte	0x161
	.uleb128 0x8
	.string	"vu8"
	.byte	0x6
	.byte	0x1b
	.4byte	0x1ce
	.uleb128 0x9
	.4byte	0x183
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0x1c
	.4byte	0x1de
	.uleb128 0x9
	.4byte	0x18d
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0x1d
	.4byte	0x1ee
	.uleb128 0x9
	.4byte	0x198
	.uleb128 0x8
	.string	"vs8"
	.byte	0x6
	.byte	0x20
	.4byte	0x1fe
	.uleb128 0x9
	.4byte	0x1a3
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x21
	.4byte	0x20e
	.uleb128 0x9
	.4byte	0x1ad
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0x22
	.4byte	0x21e
	.uleb128 0x9
	.4byte	0x1b8
	.uleb128 0x8
	.string	"f32"
	.byte	0x6
	.byte	0x2b
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x6
	.byte	0x2e
	.4byte	0x239
	.uleb128 0x9
	.4byte	0x25
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF37
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24b
	.uleb128 0xa
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0xc
	.byte	0x7
	.byte	0x5e
	.4byte	0x277
	.uleb128 0xc
	.string	"x"
	.byte	0x7
	.byte	0x5f
	.4byte	0x223
	.byte	0
	.uleb128 0xc
	.string	"y"
	.byte	0x7
	.byte	0x5f
	.4byte	0x223
	.byte	0x4
	.uleb128 0xc
	.string	"z"
	.byte	0x7
	.byte	0x5f
	.4byte	0x223
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0x60
	.4byte	0x24c
	.uleb128 0x8
	.string	"Mtx"
	.byte	0x7
	.byte	0x73
	.4byte	0x28d
	.uleb128 0xd
	.4byte	0x223
	.4byte	0x2a3
	.uleb128 0xe
	.4byte	0x45
	.byte	0x2
	.uleb128 0xe
	.4byte	0x45
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2a9
	.uleb128 0xd
	.4byte	0x223
	.4byte	0x2b9
	.uleb128 0xe
	.4byte	0x45
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0x89
	.4byte	0x2c4
	.uleb128 0xd
	.4byte	0x223
	.4byte	0x2da
	.uleb128 0xe
	.4byte	0x45
	.byte	0x3
	.uleb128 0xe
	.4byte	0x45
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x8
	.byte	0x3e
	.4byte	0x198
	.uleb128 0xf
	.4byte	.LASF311
	.byte	0x4
	.byte	0x2
	.2byte	0x490
	.4byte	0x345
	.uleb128 0x10
	.string	"U8"
	.byte	0x2
	.2byte	0x492
	.4byte	0x1c3
	.uleb128 0x10
	.string	"S8"
	.byte	0x2
	.2byte	0x493
	.4byte	0x1f3
	.uleb128 0x10
	.string	"U16"
	.byte	0x2
	.2byte	0x494
	.4byte	0x1d3
	.uleb128 0x10
	.string	"S16"
	.byte	0x2
	.2byte	0x495
	.4byte	0x203
	.uleb128 0x10
	.string	"U32"
	.byte	0x2
	.2byte	0x496
	.4byte	0x1e3
	.uleb128 0x10
	.string	"S32"
	.byte	0x2
	.2byte	0x497
	.4byte	0x213
	.uleb128 0x10
	.string	"F32"
	.byte	0x2
	.2byte	0x498
	.4byte	0x22e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x499
	.4byte	0x2e5
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x4
	.byte	0x2
	.2byte	0x49e
	.4byte	0x38b
	.uleb128 0x13
	.string	"r"
	.byte	0x2
	.2byte	0x49f
	.4byte	0x183
	.byte	0
	.uleb128 0x13
	.string	"g"
	.byte	0x2
	.2byte	0x4a0
	.4byte	0x183
	.byte	0x1
	.uleb128 0x13
	.string	"b"
	.byte	0x2
	.2byte	0x4a1
	.4byte	0x183
	.byte	0x2
	.uleb128 0x13
	.string	"a"
	.byte	0x2
	.2byte	0x4a2
	.4byte	0x183
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x2
	.2byte	0x4a3
	.4byte	0x351
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x40
	.byte	0x2
	.2byte	0x4f1
	.4byte	0x3b2
	.uleb128 0x13
	.string	"val"
	.byte	0x2
	.2byte	0x4f2
	.4byte	0x3b2
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x198
	.4byte	0x3c2
	.uleb128 0xe
	.4byte	0x45
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x2
	.2byte	0x4f3
	.4byte	0x397
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x9
	.byte	0xa
	.4byte	0x277
	.uleb128 0x14
	.byte	0x10
	.byte	0x9
	.byte	0x15
	.4byte	0x3f6
	.uleb128 0xc
	.string	"v"
	.byte	0x9
	.byte	0x17
	.4byte	0x3ce
	.byte	0
	.uleb128 0xc
	.string	"w"
	.byte	0x9
	.byte	0x18
	.4byte	0x25
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x9
	.byte	0x19
	.4byte	0x3d9
	.uleb128 0x14
	.byte	0x8
	.byte	0x9
	.byte	0x1b
	.4byte	0x41e
	.uleb128 0xc
	.string	"s"
	.byte	0x9
	.byte	0x1d
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.string	"t"
	.byte	0x9
	.byte	0x1e
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x9
	.byte	0x1f
	.4byte	0x401
	.uleb128 0x14
	.byte	0x10
	.byte	0x9
	.byte	0x21
	.4byte	0x45a
	.uleb128 0xc
	.string	"r"
	.byte	0x9
	.byte	0x23
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.string	"g"
	.byte	0x9
	.byte	0x24
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.string	"b"
	.byte	0x9
	.byte	0x25
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.string	"a"
	.byte	0x9
	.byte	0x26
	.4byte	0x25
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x9
	.byte	0x27
	.4byte	0x429
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x14
	.byte	0x9
	.byte	0x41
	.4byte	0x4ac
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x9
	.byte	0x43
	.4byte	0x23e
	.byte	0
	.uleb128 0xc
	.string	"p"
	.byte	0x9
	.byte	0x44
	.4byte	0x245
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x9
	.byte	0x45
	.4byte	0x183
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x9
	.byte	0x46
	.4byte	0xc7
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x9
	.byte	0x47
	.4byte	0xa6
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x9
	.byte	0x48
	.4byte	0x465
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x4c
	.byte	0x9
	.byte	0x6a
	.4byte	0x4f4
	.uleb128 0xc
	.string	"mat"
	.byte	0x9
	.byte	0x6c
	.4byte	0x2b9
	.byte	0
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x9
	.byte	0x6d
	.4byte	0x183
	.byte	0x40
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x9
	.byte	0x6e
	.4byte	0x223
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x9
	.byte	0x6f
	.4byte	0x223
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x9
	.byte	0x70
	.4byte	0x4b7
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x10
	.byte	0xa
	.byte	0xc
	.4byte	0x53c
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0xa
	.byte	0xe
	.4byte	0x5a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0xa
	.byte	0xf
	.4byte	0x33
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0xa
	.byte	0x10
	.4byte	0x33
	.byte	0x8
	.uleb128 0xc
	.string	"cur"
	.byte	0xa
	.byte	0x11
	.4byte	0x33
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xa
	.byte	0x12
	.4byte	0x4ff
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0xa4
	.byte	0x9
	.byte	0x7d
	.4byte	0x5e4
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x9
	.byte	0x7f
	.4byte	0x23e
	.byte	0
	.uleb128 0xc
	.string	"obj"
	.byte	0x9
	.byte	0x81
	.4byte	0x3c2
	.byte	0x4
	.uleb128 0xc
	.string	"pos"
	.byte	0x9
	.byte	0x83
	.4byte	0x3f6
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x9
	.byte	0x85
	.4byte	0x3ce
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x9
	.byte	0x87
	.4byte	0x45a
	.byte	0x60
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x9
	.byte	0x88
	.4byte	0x45a
	.byte	0x70
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x9
	.byte	0x89
	.4byte	0x45a
	.byte	0x80
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x9
	.byte	0x8b
	.4byte	0x25
	.byte	0x90
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x9
	.byte	0x8c
	.4byte	0x25
	.byte	0x94
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x9
	.byte	0x8d
	.4byte	0x25
	.byte	0x98
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x9
	.byte	0x8e
	.4byte	0x25
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x9
	.byte	0x8f
	.4byte	0x25
	.byte	0xa0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x9
	.byte	0x90
	.4byte	0x547
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x44
	.byte	0x9
	.byte	0x9a
	.4byte	0x638
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x9
	.byte	0x9c
	.4byte	0x45a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x9
	.byte	0x9d
	.4byte	0x45a
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x9
	.byte	0x9e
	.4byte	0x45a
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x9
	.byte	0x9f
	.4byte	0x45a
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x9
	.byte	0xa0
	.4byte	0x25
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x9
	.byte	0xa1
	.4byte	0x5ef
	.uleb128 0x16
	.4byte	.LASF312
	.byte	0x4
	.byte	0x9
	.byte	0xb9
	.4byte	0x662
	.uleb128 0x17
	.4byte	.LASF82
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF83
	.sleb128 1
	.uleb128 0x17
	.4byte	.LASF84
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x9
	.byte	0xbe
	.4byte	0x643
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x10
	.byte	0x9
	.byte	0xe2
	.4byte	0x6a6
	.uleb128 0xc
	.string	"x"
	.byte	0x9
	.byte	0xe4
	.4byte	0xc7
	.byte	0
	.uleb128 0xc
	.string	"y"
	.byte	0x9
	.byte	0xe5
	.4byte	0xc7
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x9
	.byte	0xe6
	.4byte	0xe8
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x9
	.byte	0xe7
	.4byte	0xe8
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x9
	.byte	0xe8
	.4byte	0x66d
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x14
	.byte	0x9
	.byte	0xf5
	.4byte	0x706
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x9
	.byte	0xf7
	.4byte	0x23e
	.byte	0
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x9
	.byte	0xf8
	.4byte	0x23e
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x9
	.byte	0xf9
	.4byte	0x6a
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x9
	.byte	0xfa
	.4byte	0x6a
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x9
	.byte	0xfb
	.4byte	0x6a
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x9
	.byte	0xfc
	.4byte	0x6a
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0x9
	.byte	0xfd
	.4byte	0x6b1
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x8
	.byte	0x9
	.2byte	0x110
	.4byte	0x739
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x112
	.4byte	0x223
	.byte	0
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x113
	.4byte	0x223
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x114
	.4byte	0x711
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x6c
	.byte	0x9
	.2byte	0x120
	.4byte	0x871
	.uleb128 0x18
	.4byte	.LASF67
	.byte	0x9
	.2byte	0x122
	.4byte	0x23e
	.byte	0
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x124
	.4byte	0x183
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x125
	.4byte	0x183
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x126
	.4byte	0x183
	.byte	0x3
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x127
	.4byte	0x183
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x128
	.4byte	0x223
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x129
	.4byte	0x223
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x12a
	.4byte	0x223
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x12b
	.4byte	0x183
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x12c
	.4byte	0x183
	.byte	0x15
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x12d
	.4byte	0x183
	.byte	0x16
	.uleb128 0x18
	.4byte	.LASF58
	.byte	0x9
	.2byte	0x12f
	.4byte	0xa6
	.byte	0x18
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x131
	.4byte	0xa6
	.byte	0x1c
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x132
	.4byte	0xa6
	.byte	0x20
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x134
	.4byte	0x871
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x135
	.4byte	0x871
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x136
	.4byte	0x871
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x137
	.4byte	0x871
	.byte	0x48
	.uleb128 0x13
	.string	"tex"
	.byte	0x9
	.2byte	0x139
	.4byte	0xc7
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x13b
	.4byte	0x45a
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x13d
	.4byte	0x183
	.byte	0x68
	.uleb128 0x18
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x13e
	.4byte	0x183
	.byte	0x69
	.byte	0
	.uleb128 0xd
	.4byte	0xa6
	.4byte	0x881
	.uleb128 0xe
	.4byte	0x45
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x13f
	.4byte	0x745
	.uleb128 0x19
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x849
	.byte	0x3
	.4byte	0x8b9
	.uleb128 0x1a
	.string	"x"
	.byte	0x2
	.2byte	0x849
	.4byte	0x223
	.uleb128 0x1a
	.string	"y"
	.byte	0x2
	.2byte	0x849
	.4byte	0x223
	.uleb128 0x1a
	.string	"z"
	.byte	0x2
	.2byte	0x849
	.4byte	0x223
	.byte	0
	.uleb128 0x19
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x8b3
	.byte	0x3
	.4byte	0x8ef
	.uleb128 0x1a
	.string	"r"
	.byte	0x2
	.2byte	0x8b3
	.4byte	0x183
	.uleb128 0x1a
	.string	"g"
	.byte	0x2
	.2byte	0x8b3
	.4byte	0x183
	.uleb128 0x1a
	.string	"b"
	.byte	0x2
	.2byte	0x8b3
	.4byte	0x183
	.uleb128 0x1a
	.string	"a"
	.byte	0x2
	.2byte	0x8b3
	.4byte	0x183
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF313
	.byte	0x2
	.2byte	0x845
	.byte	0x3
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.4byte	0x920
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.byte	0xc6
	.4byte	0xf3
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.byte	0xc6
	.4byte	0xf3
	.uleb128 0x1d
	.string	"z"
	.byte	0x1
	.byte	0xc6
	.4byte	0xf3
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.4byte	0x951
	.uleb128 0x1d
	.string	"r"
	.byte	0x1
	.byte	0xd4
	.4byte	0xf3
	.uleb128 0x1d
	.string	"g"
	.byte	0x1
	.byte	0xd4
	.4byte	0xf3
	.uleb128 0x1d
	.string	"b"
	.byte	0x1
	.byte	0xd4
	.4byte	0xf3
	.uleb128 0x1d
	.string	"a"
	.byte	0x1
	.byte	0xd4
	.4byte	0xf3
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x4a9
	.byte	0x1
	.4byte	0x981
	.uleb128 0x1a
	.string	"e"
	.byte	0x1
	.2byte	0x4a9
	.4byte	0xa6
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x4a9
	.4byte	0x8d
	.uleb128 0x1f
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x4a9
	.4byte	0x6a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.4byte	0x9b2
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.byte	0xad
	.4byte	0xf3
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.byte	0xad
	.4byte	0xf3
	.uleb128 0x1d
	.string	"z"
	.byte	0x1
	.byte	0xad
	.4byte	0xf3
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0xbd
	.4byte	0x6a
	.byte	0
	.uleb128 0x21
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x117
	.4byte	0x6a
	.byte	0x1
	.4byte	0x9dc
	.uleb128 0x1f
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x117
	.4byte	0xa6
	.uleb128 0x22
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x119
	.4byte	0x6a
	.byte	0
	.uleb128 0x23
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x297
	.4byte	0xf3
	.byte	0x1
	.4byte	0x9f8
	.uleb128 0x1a
	.string	"d"
	.byte	0x1
	.2byte	0x297
	.4byte	0xf3
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x2a6
	.byte	0x1
	.4byte	0xa1e
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x2a6
	.4byte	0xa6
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x2a6
	.4byte	0xf3
	.byte	0
	.uleb128 0x24
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x1df
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe38
	.uleb128 0x25
	.string	"x1"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x25
	.byte	0x4
	.4byte	0
	.uleb128 0x25
	.string	"y1"
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x25
	.byte	0x4
	.4byte	0
	.uleb128 0x25
	.string	"x2"
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x25
	.byte	0x4
	.4byte	0x44200000
	.uleb128 0x25
	.string	"y2"
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x25
	.byte	0x4
	.4byte	0x43f00000
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.4byte	0x88d
	.4byte	.LBB170
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x213
	.4byte	0xac5
	.uleb128 0x28
	.4byte	0x8ae
	.4byte	.LLST0
	.uleb128 0x29
	.4byte	0x8a4
	.byte	0x4
	.4byte	0
	.uleb128 0x29
	.4byte	0x89a
	.byte	0x4
	.4byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x88d
	.4byte	.LBB176
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x215
	.4byte	0xaf7
	.uleb128 0x28
	.4byte	0x8ae
	.4byte	.LLST1
	.uleb128 0x29
	.4byte	0x8a4
	.byte	0x4
	.4byte	0
	.uleb128 0x29
	.4byte	0x89a
	.byte	0x4
	.4byte	0x44200000
	.byte	0
	.uleb128 0x2a
	.4byte	0x8b9
	.4byte	.LBB180
	.4byte	.LBE180-.LBB180
	.byte	0x1
	.2byte	0x214
	.4byte	0xb30
	.uleb128 0x28
	.4byte	0x8e4
	.4byte	.LLST2
	.uleb128 0x28
	.4byte	0x8da
	.4byte	.LLST3
	.uleb128 0x28
	.4byte	0x8d0
	.4byte	.LLST4
	.uleb128 0x28
	.4byte	0x8c6
	.4byte	.LLST5
	.byte	0
	.uleb128 0x2a
	.4byte	0x8b9
	.4byte	.LBB184
	.4byte	.LBE184-.LBB184
	.byte	0x1
	.2byte	0x216
	.4byte	0xb69
	.uleb128 0x28
	.4byte	0x8e4
	.4byte	.LLST6
	.uleb128 0x28
	.4byte	0x8da
	.4byte	.LLST7
	.uleb128 0x28
	.4byte	0x8d0
	.4byte	.LLST8
	.uleb128 0x28
	.4byte	0x8c6
	.4byte	.LLST9
	.byte	0
	.uleb128 0x27
	.4byte	0x88d
	.4byte	.LBB186
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.2byte	0x217
	.4byte	0xb9b
	.uleb128 0x28
	.4byte	0x8ae
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	0x8a4
	.byte	0x4
	.4byte	0x43f00000
	.uleb128 0x29
	.4byte	0x89a
	.byte	0x4
	.4byte	0x44200000
	.byte	0
	.uleb128 0x2a
	.4byte	0x8b9
	.4byte	.LBB190
	.4byte	.LBE190-.LBB190
	.byte	0x1
	.2byte	0x218
	.4byte	0xbd4
	.uleb128 0x28
	.4byte	0x8e4
	.4byte	.LLST11
	.uleb128 0x28
	.4byte	0x8da
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	0x8d0
	.4byte	.LLST13
	.uleb128 0x28
	.4byte	0x8c6
	.4byte	.LLST14
	.byte	0
	.uleb128 0x27
	.4byte	0x88d
	.4byte	.LBB192
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x219
	.4byte	0xc06
	.uleb128 0x28
	.4byte	0x8ae
	.4byte	.LLST15
	.uleb128 0x29
	.4byte	0x8a4
	.byte	0x4
	.4byte	0x43f00000
	.uleb128 0x29
	.4byte	0x89a
	.byte	0x4
	.4byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0x8b9
	.4byte	.LBB196
	.4byte	.LBE196-.LBB196
	.byte	0x1
	.2byte	0x21a
	.4byte	0xc3f
	.uleb128 0x28
	.4byte	0x8e4
	.4byte	.LLST16
	.uleb128 0x28
	.4byte	0x8da
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	0x8d0
	.4byte	.LLST18
	.uleb128 0x28
	.4byte	0x8c6
	.4byte	.LLST19
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL0
	.4byte	0x2d4f
	.uleb128 0x2c
	.4byte	.LVL1
	.4byte	0x2d61
	.4byte	0xc5c
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL2
	.4byte	0x2d73
	.4byte	0xc75
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL3
	.4byte	0x2d8a
	.4byte	0xcd2
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x26
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3f800001
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x25
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x44200000
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x43f00000
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL4
	.4byte	0x2db9
	.4byte	0xcec
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL5
	.4byte	0x2dd0
	.4byte	0xcff
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL6
	.4byte	0x2de2
	.uleb128 0x2c
	.4byte	.LVL7
	.4byte	0x2df0
	.4byte	0xd20
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL8
	.4byte	0x2df0
	.4byte	0xd38
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL9
	.4byte	0x2e07
	.4byte	0xd4b
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL10
	.4byte	0x2e19
	.4byte	0xd5e
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL11
	.4byte	0x2e2b
	.4byte	0xd71
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL12
	.4byte	0x2e3d
	.4byte	0xd84
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL13
	.4byte	0x2e4f
	.4byte	0xda8
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL14
	.4byte	0x2e70
	.4byte	0xdc0
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL15
	.4byte	0x2e87
	.4byte	0xde2
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL16
	.4byte	0x2ea8
	.4byte	0xdf5
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL17
	.4byte	0x2eba
	.uleb128 0x2b
	.4byte	.LVL18
	.4byte	0x2edb
	.uleb128 0x2b
	.4byte	.LVL19
	.4byte	0x2ee9
	.uleb128 0x2c
	.4byte	.LVL20
	.4byte	0x2ef7
	.4byte	0xe2e
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL42
	.4byte	0x2ee9
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF138
	.byte	0x1
	.byte	0xe
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe91
	.uleb128 0x2f
	.4byte	.LASF137
	.byte	0x1
	.byte	0xe
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF58
	.byte	0x1
	.byte	0xe
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.4byte	0x951
	.4byte	.LBB198
	.4byte	.LBE198-.LBB198
	.byte	0x1
	.byte	0xe
	.uleb128 0x31
	.4byte	0x974
	.byte	0xe
	.uleb128 0x32
	.4byte	0x968
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.uleb128 0x33
	.4byte	0x95e
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF139
	.byte	0x1
	.byte	0x10
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeec
	.uleb128 0x2f
	.4byte	.LASF140
	.byte	0x1
	.byte	0x10
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x2f
	.4byte	.LASF141
	.byte	0x1
	.byte	0x10
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x30
	.4byte	0x951
	.4byte	.LBB200
	.4byte	.LBE200-.LBB200
	.byte	0x1
	.byte	0x10
	.uleb128 0x31
	.4byte	0x974
	.byte	0x10
	.uleb128 0x32
	.4byte	0x968
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.uleb128 0x33
	.4byte	0x95e
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF142
	.byte	0x1
	.byte	0x12
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf45
	.uleb128 0x2f
	.4byte	.LASF133
	.byte	0x1
	.byte	0x12
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF134
	.byte	0x1
	.byte	0x12
	.4byte	0xc7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.4byte	0x951
	.4byte	.LBB202
	.4byte	.LBE202-.LBB202
	.byte	0x1
	.byte	0x12
	.uleb128 0x31
	.4byte	0x974
	.byte	0x12
	.uleb128 0x32
	.4byte	0x968
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.uleb128 0x33
	.4byte	0x95e
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF143
	.byte	0x1
	.byte	0x16
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf82
	.uleb128 0x2f
	.4byte	.LASF144
	.byte	0x1
	.byte	0x16
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF133
	.byte	0x1
	.byte	0x16
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.4byte	.LASF134
	.byte	0x1
	.byte	0x16
	.4byte	0xc7
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF145
	.byte	0x1
	.byte	0x18
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfdb
	.uleb128 0x2f
	.4byte	.LASF146
	.byte	0x1
	.byte	0x18
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF58
	.byte	0x1
	.byte	0x18
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.4byte	0x951
	.4byte	.LBB204
	.4byte	.LBE204-.LBB204
	.byte	0x1
	.byte	0x18
	.uleb128 0x31
	.4byte	0x974
	.byte	0x18
	.uleb128 0x32
	.4byte	0x968
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.uleb128 0x33
	.4byte	0x95e
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF147
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1027
	.uleb128 0x2f
	.4byte	.LASF58
	.byte	0x1
	.byte	0x1c
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	0x951
	.4byte	.LBB206
	.4byte	.LBE206-.LBB206
	.byte	0x1
	.byte	0x1c
	.uleb128 0x31
	.4byte	0x974
	.byte	0x1c
	.uleb128 0x32
	.4byte	0x968
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.uleb128 0x33
	.4byte	0x95e
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x1e
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1080
	.uleb128 0x2f
	.4byte	.LASF149
	.byte	0x1
	.byte	0x1e
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF150
	.byte	0x1
	.byte	0x1e
	.4byte	0x11f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.4byte	0x951
	.4byte	.LBB208
	.4byte	.LBE208-.LBB208
	.byte	0x1
	.byte	0x1e
	.uleb128 0x31
	.4byte	0x974
	.byte	0x1e
	.uleb128 0x32
	.4byte	0x968
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.uleb128 0x33
	.4byte	0x95e
	.2byte	0x502
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF151
	.byte	0x1
	.byte	0x22
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x110a
	.uleb128 0x2f
	.4byte	.LASF146
	.byte	0x1
	.byte	0x22
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF58
	.byte	0x1
	.byte	0x22
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x34
	.4byte	0x951
	.4byte	.LBB210
	.4byte	.LBE210-.LBB210
	.byte	0x1
	.byte	0x24
	.4byte	0x10de
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST20
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST21
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST22
	.byte	0
	.uleb128 0x30
	.4byte	0x951
	.4byte	.LBB212
	.4byte	.LBE212-.LBB212
	.byte	0x1
	.byte	0x2d
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST23
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST24
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF152
	.byte	0x1
	.byte	0x31
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11c3
	.uleb128 0x2f
	.4byte	.LASF153
	.byte	0x1
	.byte	0x31
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF154
	.byte	0x1
	.byte	0x31
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x34
	.4byte	0x951
	.4byte	.LBB214
	.4byte	.LBE214-.LBB214
	.byte	0x1
	.byte	0x33
	.4byte	0x1168
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST26
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST27
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST28
	.byte	0
	.uleb128 0x34
	.4byte	0x951
	.4byte	.LBB216
	.4byte	.LBE216-.LBB216
	.byte	0x1
	.byte	0x40
	.4byte	0x1197
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST29
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST30
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST31
	.byte	0
	.uleb128 0x30
	.4byte	0x951
	.4byte	.LBB218
	.4byte	.LBE218-.LBB218
	.byte	0x1
	.byte	0x4d
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST32
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST33
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST34
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF155
	.byte	0x1
	.byte	0x51
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1263
	.uleb128 0x35
	.string	"x"
	.byte	0x1
	.byte	0x51
	.4byte	0xc7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x35
	.string	"y"
	.byte	0x1
	.byte	0x51
	.4byte	0xc7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.4byte	.LASF87
	.byte	0x1
	.byte	0x51
	.4byte	0xe8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2f
	.4byte	.LASF88
	.byte	0x1
	.byte	0x51
	.4byte	0xe8
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x34
	.4byte	0x951
	.4byte	.LBB220
	.4byte	.LBE220-.LBB220
	.byte	0x1
	.byte	0x53
	.4byte	0x1237
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST35
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST36
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST37
	.byte	0
	.uleb128 0x30
	.4byte	0x951
	.4byte	.LBB222
	.4byte	.LBE222-.LBB222
	.byte	0x1
	.byte	0x57
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST38
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST39
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST40
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF156
	.byte	0x1
	.byte	0x61
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e0
	.uleb128 0x2f
	.4byte	.LASF58
	.byte	0x1
	.byte	0x61
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.4byte	0x951
	.4byte	.LBB224
	.4byte	.LBE224-.LBB224
	.byte	0x1
	.byte	0x63
	.4byte	0x12b4
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST41
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST42
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST43
	.byte	0
	.uleb128 0x30
	.4byte	0x951
	.4byte	.LBB226
	.4byte	.LBE226-.LBB226
	.byte	0x1
	.byte	0x71
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST44
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST45
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST46
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF157
	.byte	0x1
	.byte	0x76
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x135d
	.uleb128 0x2f
	.4byte	.LASF58
	.byte	0x1
	.byte	0x76
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.4byte	0x951
	.4byte	.LBB228
	.4byte	.LBE228-.LBB228
	.byte	0x1
	.byte	0x78
	.4byte	0x1331
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST47
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST48
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST49
	.byte	0
	.uleb128 0x30
	.4byte	0x951
	.4byte	.LBB230
	.4byte	.LBE230-.LBB230
	.byte	0x1
	.byte	0x80
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST50
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST51
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST52
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF158
	.byte	0x1
	.byte	0x89
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13bc
	.uleb128 0x36
	.4byte	.LASF159
	.byte	0x1
	.byte	0x89
	.4byte	0x114
	.4byte	.LLST53
	.uleb128 0x36
	.4byte	.LASF160
	.byte	0x1
	.byte	0x89
	.4byte	0x114
	.4byte	.LLST54
	.uleb128 0x30
	.4byte	0x951
	.4byte	.LBB232
	.4byte	.LBE232-.LBB232
	.byte	0x1
	.byte	0x8b
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST55
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST56
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST57
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF161
	.byte	0x1
	.byte	0x91
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x142d
	.uleb128 0x35
	.string	"x"
	.byte	0x1
	.byte	0x91
	.4byte	0xc7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x35
	.string	"y"
	.byte	0x1
	.byte	0x92
	.4byte	0xc7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.4byte	.LASF87
	.byte	0x1
	.byte	0x93
	.4byte	0xe8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2f
	.4byte	.LASF88
	.byte	0x1
	.byte	0x94
	.4byte	0xe8
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x30
	.4byte	0x951
	.4byte	.LBB234
	.4byte	.LBE234-.LBB234
	.byte	0x1
	.byte	0x96
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST58
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST59
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST60
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0x981
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14c1
	.uleb128 0x32
	.4byte	0x98d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x32
	.4byte	0x996
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x32
	.4byte	0x99f
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x38
	.4byte	0x9a8
	.4byte	.LLST61
	.uleb128 0x39
	.4byte	.LBB240
	.4byte	.LBE240-.LBB240
	.uleb128 0x28
	.4byte	0x98d
	.4byte	.LLST62
	.uleb128 0x28
	.4byte	0x996
	.4byte	.LLST63
	.uleb128 0x28
	.4byte	0x99f
	.4byte	.LLST64
	.uleb128 0x39
	.4byte	.LBB241
	.4byte	.LBE241-.LBB241
	.uleb128 0x3a
	.4byte	0x9a8
	.uleb128 0x30
	.4byte	0x951
	.4byte	.LBB242
	.4byte	.LBE242-.LBB242
	.byte	0x1
	.byte	0xb0
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST65
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST66
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST67
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF162
	.byte	0x1
	.byte	0x9c
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1507
	.uleb128 0x3b
	.string	"x"
	.byte	0x1
	.byte	0x9c
	.4byte	0xc7
	.4byte	.LLST68
	.uleb128 0x3b
	.string	"y"
	.byte	0x1
	.byte	0x9c
	.4byte	0xc7
	.4byte	.LLST69
	.uleb128 0x3c
	.4byte	.LVL99
	.4byte	0x981
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF163
	.byte	0x1
	.byte	0xa0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1561
	.uleb128 0x3b
	.string	"x"
	.byte	0x1
	.byte	0xa0
	.4byte	0xf3
	.4byte	.LLST70
	.uleb128 0x3b
	.string	"y"
	.byte	0x1
	.byte	0xa0
	.4byte	0xf3
	.4byte	.LLST71
	.uleb128 0x3c
	.4byte	.LVL101
	.4byte	0x981
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF164
	.byte	0x1
	.byte	0xa4
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x158d
	.uleb128 0x3b
	.string	"v"
	.byte	0x1
	.byte	0xa4
	.4byte	0x12a
	.4byte	.LLST72
	.uleb128 0x3d
	.4byte	.LVL103
	.4byte	0x981
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF165
	.byte	0x1
	.byte	0xa9
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15ff
	.uleb128 0x3b
	.string	"x"
	.byte	0x1
	.byte	0xa9
	.4byte	0xf3
	.4byte	.LLST73
	.uleb128 0x3b
	.string	"y"
	.byte	0x1
	.byte	0xa9
	.4byte	0xf3
	.4byte	.LLST74
	.uleb128 0x3b
	.string	"z"
	.byte	0x1
	.byte	0xa9
	.4byte	0xf3
	.4byte	.LLST75
	.uleb128 0x3b
	.string	"w"
	.byte	0x1
	.byte	0xa9
	.4byte	0xf3
	.4byte	.LLST76
	.uleb128 0x3c
	.4byte	.LVL105
	.4byte	0x981
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0x8f8
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x162b
	.uleb128 0x32
	.4byte	0x904
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x32
	.4byte	0x90d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x32
	.4byte	0x916
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF166
	.byte	0x1
	.byte	0xcc
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1674
	.uleb128 0x35
	.string	"v"
	.byte	0x1
	.byte	0xcc
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3e
	.4byte	0x8f8
	.4byte	.LBB244
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xcd
	.uleb128 0x32
	.4byte	0x916
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x32
	.4byte	0x90d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x2d
	.uleb128 0x32
	.4byte	0x904
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x2c
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0x920
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16d2
	.uleb128 0x32
	.4byte	0x92c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x32
	.4byte	0x935
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x32
	.4byte	0x93e
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x32
	.4byte	0x947
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x39
	.4byte	.LBB252
	.4byte	.LBE252-.LBB252
	.uleb128 0x32
	.4byte	0x92c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x32
	.4byte	0x935
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x32
	.4byte	0x93e
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x32
	.4byte	0x947
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF167
	.byte	0x1
	.byte	0xd0
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1743
	.uleb128 0x3b
	.string	"r"
	.byte	0x1
	.byte	0xd0
	.4byte	0xf3
	.4byte	.LLST77
	.uleb128 0x3b
	.string	"g"
	.byte	0x1
	.byte	0xd0
	.4byte	0xf3
	.4byte	.LLST78
	.uleb128 0x3b
	.string	"b"
	.byte	0x1
	.byte	0xd0
	.4byte	0xf3
	.4byte	.LLST79
	.uleb128 0x3c
	.4byte	.LVL112
	.4byte	0x920
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3f800000
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF168
	.byte	0x1
	.byte	0xea
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x179c
	.uleb128 0x3b
	.string	"red"
	.byte	0x1
	.byte	0xea
	.4byte	0xd2
	.4byte	.LLST80
	.uleb128 0x36
	.4byte	.LASF169
	.byte	0x1
	.byte	0xeb
	.4byte	0xd2
	.4byte	.LLST81
	.uleb128 0x36
	.4byte	.LASF170
	.byte	0x1
	.byte	0xec
	.4byte	0xd2
	.4byte	.LLST82
	.uleb128 0x3c
	.4byte	.LVL114
	.4byte	0x920
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3f800000
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF171
	.byte	0x1
	.byte	0xf1
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17f7
	.uleb128 0x3b
	.string	"red"
	.byte	0x1
	.byte	0xf1
	.4byte	0xd2
	.4byte	.LLST83
	.uleb128 0x36
	.4byte	.LASF169
	.byte	0x1
	.byte	0xf2
	.4byte	0xd2
	.4byte	.LLST84
	.uleb128 0x36
	.4byte	.LASF170
	.byte	0x1
	.byte	0xf3
	.4byte	0xd2
	.4byte	.LLST85
	.uleb128 0x36
	.4byte	.LASF172
	.byte	0x1
	.byte	0xf4
	.4byte	0xd2
	.4byte	.LLST86
	.uleb128 0x3d
	.4byte	.LVL116
	.4byte	0x920
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF173
	.byte	0x1
	.byte	0xf9
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1823
	.uleb128 0x3b
	.string	"v"
	.byte	0x1
	.byte	0xf9
	.4byte	0x12a
	.4byte	.LLST87
	.uleb128 0x3d
	.4byte	.LVL118
	.4byte	0x16d2
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF174
	.byte	0x1
	.byte	0xff
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1851
	.uleb128 0x35
	.string	"s"
	.byte	0x1
	.byte	0xff
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.byte	0xff
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x106
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18e0
	.uleb128 0x40
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x106
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x106
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB254
	.4byte	.LBE254-.LBB254
	.byte	0x1
	.2byte	0x107
	.4byte	0x18b3
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST88
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST89
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST90
	.byte	0
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB256
	.4byte	.LBE256-.LBB256
	.byte	0x1
	.2byte	0x112
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST91
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST92
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST93
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0x9b2
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1954
	.uleb128 0x28
	.4byte	0x9c3
	.4byte	.LLST94
	.uleb128 0x38
	.4byte	0x9cf
	.4byte	.LLST95
	.uleb128 0x39
	.4byte	.LBB262
	.4byte	.LBE262-.LBB262
	.uleb128 0x28
	.4byte	0x9c3
	.4byte	.LLST96
	.uleb128 0x39
	.4byte	.LBB263
	.4byte	.LBE263-.LBB263
	.uleb128 0x3a
	.4byte	0x9cf
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB264
	.4byte	.LBE264-.LBB264
	.byte	0x1
	.2byte	0x125
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST97
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST98
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST99
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x12c
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19e8
	.uleb128 0x40
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x12c
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x12c
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x6f
	.uleb128 0x40
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x12c
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x3f
	.uleb128 0x26
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x12f
	.4byte	0x6a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB266
	.4byte	.LBE266-.LBB266
	.byte	0x1
	.2byte	0x12d
	.4byte	0x19c7
	.uleb128 0x43
	.4byte	0x974
	.uleb128 0x43
	.4byte	0x968
	.uleb128 0x43
	.4byte	0x95e
	.byte	0
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB268
	.4byte	.LBE268-.LBB268
	.byte	0x1
	.2byte	0x13c
	.uleb128 0x43
	.4byte	0x974
	.uleb128 0x43
	.4byte	0x968
	.uleb128 0x43
	.4byte	0x95e
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x141
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aa4
	.uleb128 0x40
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x141
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x141
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x6d
	.uleb128 0x40
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x141
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x6f
	.uleb128 0x26
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x144
	.4byte	0x6a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x149
	.4byte	0x3ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB270
	.4byte	.LBE270-.LBB270
	.byte	0x1
	.2byte	0x142
	.4byte	0x1a69
	.uleb128 0x43
	.4byte	0x974
	.uleb128 0x43
	.4byte	0x968
	.uleb128 0x43
	.4byte	0x95e
	.byte	0
	.uleb128 0x39
	.4byte	.LBB272
	.4byte	.LBE272-.LBB272
	.uleb128 0x44
	.string	"mvi"
	.byte	0x1
	.2byte	0x173
	.4byte	0x282
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB273
	.4byte	.LBE273-.LBB273
	.byte	0x1
	.2byte	0x179
	.uleb128 0x43
	.4byte	0x974
	.uleb128 0x43
	.4byte	0x968
	.uleb128 0x43
	.4byte	0x95e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x181
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b11
	.uleb128 0x40
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x181
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x181
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x40
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x181
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB275
	.4byte	.LBE275-.LBB275
	.byte	0x1
	.2byte	0x187
	.uleb128 0x33
	.4byte	0x974
	.2byte	0x187
	.uleb128 0x32
	.4byte	0x968
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.uleb128 0x33
	.4byte	0x95e
	.2byte	0x500
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x18c
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b99
	.uleb128 0x45
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x18c
	.4byte	0xa6
	.4byte	.LLST100
	.uleb128 0x45
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x18c
	.4byte	0xa6
	.4byte	.LLST101
	.uleb128 0x45
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x18c
	.4byte	0x12a
	.4byte	.LLST102
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB277
	.4byte	.LBE277-.LBB277
	.byte	0x1
	.2byte	0x1af
	.4byte	0x1b87
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST103
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST104
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST105
	.byte	0
	.uleb128 0x46
	.4byte	.LVL140
	.4byte	0x1b11
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1200
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x1b6
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c54
	.uleb128 0x40
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x40
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x17d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x47
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x6a
	.4byte	.LLST106
	.uleb128 0x48
	.string	"t"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x45a
	.4byte	.LLST107
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB279
	.4byte	.LBE279-.LBB279
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x1c27
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST108
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST109
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST110
	.byte	0
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB281
	.4byte	.LBE281-.LBB281
	.byte	0x1
	.2byte	0x1d2
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST111
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST112
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST113
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x222
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d76
	.uleb128 0x45
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x222
	.4byte	0xbc
	.4byte	.LLST114
	.uleb128 0x47
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x225
	.4byte	0x23e
	.4byte	.LLST115
	.uleb128 0x47
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x226
	.4byte	0x23e
	.4byte	.LLST116
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB283
	.4byte	.LBE283-.LBB283
	.byte	0x1
	.2byte	0x223
	.4byte	0x1cca
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST117
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST118
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST119
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL175
	.4byte	0x2f13
	.4byte	0x1cde
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL176
	.4byte	0x2f2a
	.uleb128 0x2c
	.4byte	.LVL177
	.4byte	0x2f3b
	.4byte	0x1cfa
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL178
	.4byte	0x2ee9
	.uleb128 0x2c
	.4byte	.LVL180
	.4byte	0x2f52
	.4byte	0x1d20
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL181
	.4byte	0x2f6e
	.4byte	0x1d33
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL184
	.4byte	0x2f52
	.4byte	0x1d50
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL185
	.4byte	0x2f6e
	.4byte	0x1d63
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL186
	.4byte	0x2f80
	.uleb128 0x3d
	.4byte	.LVL187
	.4byte	0xa1e
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x259
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1df8
	.uleb128 0x49
	.string	"red"
	.byte	0x1
	.2byte	0x259
	.4byte	0xfe
	.4byte	.LLST120
	.uleb128 0x45
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x25a
	.4byte	0xfe
	.4byte	.LLST121
	.uleb128 0x45
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x25b
	.4byte	0xfe
	.4byte	.LLST122
	.uleb128 0x40
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x25c
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB285
	.4byte	.LBE285-.LBB285
	.byte	0x1
	.2byte	0x25e
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST123
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST124
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST125
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x266
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e4b
	.uleb128 0x45
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x266
	.4byte	0x114
	.4byte	.LLST126
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB287
	.4byte	.LBE287-.LBB287
	.byte	0x1
	.2byte	0x268
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST127
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST128
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST129
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x278
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e9b
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB289
	.4byte	.LBE289-.LBB289
	.byte	0x1
	.2byte	0x27a
	.4byte	0x1e91
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST130
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST131
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST132
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL203
	.4byte	0x2ee9
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x283
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ee7
	.uleb128 0x48
	.string	"p"
	.byte	0x1
	.2byte	0x285
	.4byte	0x1ee7
	.4byte	.LLST133
	.uleb128 0x2c
	.4byte	.LVL204
	.4byte	0x2f92
	.4byte	0x1ed6
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	projection_stack
	.byte	0
	.uleb128 0x46
	.4byte	.LVL209
	.4byte	0x2fa7
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4f4
	.uleb128 0x37
	.4byte	0x9f8
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2003
	.uleb128 0x32
	.4byte	0xa05
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	0xa11
	.4byte	.LLST134
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB311
	.4byte	.LBE311-.LBB311
	.byte	0x1
	.2byte	0x2a8
	.4byte	0x1f40
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST135
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST136
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST137
	.byte	0
	.uleb128 0x4b
	.4byte	.Ldebug_ranges0+0x90
	.4byte	0x1f88
	.uleb128 0x28
	.4byte	0xa05
	.4byte	.LLST138
	.uleb128 0x28
	.4byte	0xa11
	.4byte	.LLST139
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB315
	.4byte	.LBE315-.LBB315
	.byte	0x1
	.2byte	0x2b9
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST140
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST141
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST142
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB319
	.4byte	.LBE319-.LBB319
	.byte	0x1
	.2byte	0x2c6
	.4byte	0x1fb8
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST143
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST144
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST145
	.byte	0
	.uleb128 0x2a
	.4byte	0x9dc
	.4byte	.LBB321
	.4byte	.LBE321-.LBB321
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x1fd6
	.uleb128 0x28
	.4byte	0x9ed
	.4byte	.LLST146
	.byte	0
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB323
	.4byte	.LBE323-.LBB323
	.byte	0x1
	.2byte	0x2cc
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST147
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST148
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST149
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x2a1
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x204b
	.uleb128 0x45
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x2a1
	.4byte	0xa6
	.4byte	.LLST150
	.uleb128 0x45
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x2a1
	.4byte	0xc7
	.4byte	.LLST151
	.uleb128 0x3c
	.4byte	.LVL227
	.4byte	0x9f8
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x2d1
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20bb
	.uleb128 0x45
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x2d1
	.4byte	0xa6
	.4byte	.LLST152
	.uleb128 0x45
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x2d1
	.4byte	0x12a
	.4byte	.LLST153
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB325
	.4byte	.LBE325-.LBB325
	.byte	0x1
	.2byte	0x2d3
	.4byte	0x20b1
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST154
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST155
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST156
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL231
	.4byte	0x9f8
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x2e3
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x213c
	.uleb128 0x40
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x2e3
	.4byte	0xb1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB327
	.4byte	.LBE327-.LBB327
	.byte	0x1
	.2byte	0x2e5
	.4byte	0x210f
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST157
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST158
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST159
	.byte	0
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB329
	.4byte	.LBE329-.LBB329
	.byte	0x1
	.2byte	0x2ec
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST160
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST161
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST162
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x2f2
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2227
	.uleb128 0x45
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x2f2
	.4byte	0xa6
	.4byte	.LLST163
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB331
	.4byte	.LBE331-.LBB331
	.byte	0x1
	.2byte	0x2f4
	.4byte	0x2192
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST164
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST165
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST166
	.byte	0
	.uleb128 0x4c
	.4byte	.LBB333
	.4byte	.LBE333-.LBB333
	.4byte	0x21e7
	.uleb128 0x48
	.string	"n"
	.byte	0x1
	.2byte	0x305
	.4byte	0x6a
	.4byte	.LLST167
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB334
	.4byte	.LBE334-.LBB334
	.byte	0x1
	.2byte	0x308
	.4byte	0x21dd
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST168
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST169
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST170
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL242
	.4byte	0x9b2
	.byte	0
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB336
	.4byte	.LBE336-.LBB336
	.byte	0x1
	.2byte	0x314
	.4byte	0x2217
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST171
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST172
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST173
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL241
	.4byte	0x2fd2
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x319
	.4byte	0xb1
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2325
	.uleb128 0x49
	.string	"cap"
	.byte	0x1
	.2byte	0x319
	.4byte	0xa6
	.4byte	.LLST174
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB338
	.4byte	.LBE338-.LBB338
	.byte	0x1
	.2byte	0x31c
	.4byte	0x2281
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST175
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST176
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST177
	.byte	0
	.uleb128 0x4c
	.4byte	.LBB340
	.4byte	.LBE340-.LBB340
	.4byte	0x22d6
	.uleb128 0x48
	.string	"n"
	.byte	0x1
	.2byte	0x339
	.4byte	0x6a
	.4byte	.LLST178
	.uleb128 0x27
	.4byte	0x951
	.4byte	.LBB341
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.2byte	0x33c
	.4byte	0x22cc
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST179
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST180
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST181
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL266
	.4byte	0x9b2
	.byte	0
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB345
	.4byte	.LBE345-.LBB345
	.byte	0x1
	.2byte	0x365
	.4byte	0x2306
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST182
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST183
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST184
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL257
	.4byte	0x2fe3
	.4byte	0x231b
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL265
	.4byte	0x2ff8
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x36b
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23a8
	.uleb128 0x40
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x36b
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB347
	.4byte	.LBE347-.LBB347
	.byte	0x1
	.2byte	0x36c
	.4byte	0x236d
	.uleb128 0x43
	.4byte	0x974
	.uleb128 0x43
	.4byte	0x968
	.uleb128 0x43
	.4byte	0x95e
	.byte	0
	.uleb128 0x4c
	.4byte	.LBB349
	.4byte	.LBE349-.LBB349
	.4byte	0x2387
	.uleb128 0x44
	.string	"n"
	.byte	0x1
	.2byte	0x37d
	.4byte	0x6a
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB350
	.4byte	.LBE350-.LBB350
	.byte	0x1
	.2byte	0x3a8
	.uleb128 0x43
	.4byte	0x974
	.uleb128 0x43
	.4byte	0x968
	.uleb128 0x43
	.4byte	0x95e
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x3af
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x242b
	.uleb128 0x45
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x3af
	.4byte	0xa6
	.4byte	.LLST185
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB352
	.4byte	.LBE352-.LBB352
	.byte	0x1
	.2byte	0x3b0
	.4byte	0x23fe
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST186
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST187
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST188
	.byte	0
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB354
	.4byte	.LBE354-.LBB354
	.byte	0x1
	.2byte	0x3bd
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST189
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST190
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST191
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x40f
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24a8
	.uleb128 0x45
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x40f
	.4byte	0xa6
	.4byte	.LLST192
	.uleb128 0x50
	.string	"s"
	.byte	0x1
	.2byte	0x40f
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x50
	.string	"t"
	.byte	0x1
	.2byte	0x40f
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x47
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x418
	.4byte	0x6a
	.4byte	.LLST193
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB356
	.4byte	.LBE356-.LBB356
	.byte	0x1
	.2byte	0x413
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST194
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST195
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST196
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x41d
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24fb
	.uleb128 0x45
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x41d
	.4byte	0xa6
	.4byte	.LLST197
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB358
	.4byte	.LBE358-.LBB358
	.byte	0x1
	.2byte	0x421
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST198
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST199
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST200
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x428
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2563
	.uleb128 0x45
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x428
	.4byte	0xa6
	.4byte	.LLST201
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB360
	.4byte	.LBE360-.LBB360
	.byte	0x1
	.2byte	0x42c
	.4byte	0x2551
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST202
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST203
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST204
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL301
	.4byte	0x300d
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1702
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x438
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25f7
	.uleb128 0x40
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x438
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x438
	.4byte	0x177
	.uleb128 0x1
	.byte	0x6f
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB362
	.4byte	.LBE362-.LBB362
	.byte	0x1
	.2byte	0x439
	.4byte	0x25b9
	.uleb128 0x43
	.4byte	0x974
	.uleb128 0x43
	.4byte	0x968
	.uleb128 0x43
	.4byte	0x95e
	.byte	0
	.uleb128 0x4c
	.4byte	.LBB364
	.4byte	.LBE364-.LBB364
	.4byte	0x25d6
	.uleb128 0x44
	.string	"val"
	.byte	0x1
	.2byte	0x48a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB365
	.4byte	.LBE365-.LBB365
	.byte	0x1
	.2byte	0x490
	.uleb128 0x43
	.4byte	0x974
	.uleb128 0x43
	.4byte	0x968
	.uleb128 0x43
	.4byte	0x95e
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x3c5
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26af
	.uleb128 0x40
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x3c5
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x3c5
	.4byte	0x17d
	.uleb128 0x1
	.byte	0x6f
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB367
	.4byte	.LBE367-.LBB367
	.byte	0x1
	.2byte	0x3c7
	.4byte	0x264d
	.uleb128 0x43
	.4byte	0x974
	.uleb128 0x43
	.4byte	0x968
	.uleb128 0x43
	.4byte	0x95e
	.byte	0
	.uleb128 0x2a
	.4byte	0x951
	.4byte	.LBB369
	.4byte	.LBE369-.LBB369
	.byte	0x1
	.2byte	0x3cb
	.4byte	0x2671
	.uleb128 0x43
	.4byte	0x974
	.uleb128 0x43
	.4byte	0x968
	.uleb128 0x43
	.4byte	0x95e
	.byte	0
	.uleb128 0x4c
	.4byte	.LBB371
	.4byte	.LBE371-.LBB371
	.4byte	0x268e
	.uleb128 0x44
	.string	"val"
	.byte	0x1
	.2byte	0x405
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB372
	.4byte	.LBE372-.LBB372
	.byte	0x1
	.2byte	0x40a
	.uleb128 0x43
	.4byte	0x974
	.uleb128 0x43
	.4byte	0x968
	.uleb128 0x43
	.4byte	0x95e
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x496
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2701
	.uleb128 0x40
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x496
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB374
	.4byte	.LBE374-.LBB374
	.byte	0x1
	.2byte	0x498
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST205
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST206
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST207
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x49d
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2753
	.uleb128 0x40
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x49d
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x41
	.4byte	0x951
	.4byte	.LBB376
	.4byte	.LBE376-.LBB376
	.byte	0x1
	.2byte	0x49f
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST208
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST209
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST210
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0x951
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x277c
	.uleb128 0x32
	.4byte	0x95e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	0x968
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.4byte	0x974
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x4b0
	.4byte	0xa6
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27cf
	.uleb128 0x44
	.string	"e"
	.byte	0x1
	.2byte	0x4b3
	.4byte	0xa6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x51
	.4byte	0x951
	.4byte	.LBB378
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.2byte	0x4b1
	.uleb128 0x28
	.4byte	0x974
	.4byte	.LLST211
	.uleb128 0x28
	.4byte	0x968
	.4byte	.LLST212
	.uleb128 0x28
	.4byte	0x95e
	.4byte	.LLST213
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x4b8
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2826
	.uleb128 0x49
	.string	"red"
	.byte	0x1
	.2byte	0x4b8
	.4byte	0xb1
	.4byte	.LLST214
	.uleb128 0x45
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x4b9
	.4byte	0xb1
	.4byte	.LLST215
	.uleb128 0x45
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x4ba
	.4byte	0xb1
	.4byte	.LLST216
	.uleb128 0x45
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x4bb
	.4byte	0xb1
	.4byte	.LLST217
	.byte	0
	.uleb128 0x52
	.4byte	.LASF211
	.byte	0x2
	.2byte	0x548
	.4byte	0x2832
	.uleb128 0x7
	.4byte	0x2837
	.uleb128 0x6
	.byte	0x4
	.4byte	0x345
	.uleb128 0x53
	.4byte	.LASF212
	.byte	0x9
	.byte	0x3c
	.4byte	0x45a
	.uleb128 0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x53
	.4byte	.LASF213
	.byte	0x9
	.byte	0x3d
	.4byte	0x3ce
	.uleb128 0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xd
	.4byte	0x41e
	.4byte	0x286f
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.byte	0
	.uleb128 0x53
	.4byte	.LASF214
	.byte	0x9
	.byte	0x3e
	.4byte	0x285f
	.uleb128 0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x53
	.4byte	.LASF215
	.byte	0x9
	.byte	0x4a
	.4byte	0x4ac
	.uleb128 0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x53
	.4byte	.LASF216
	.byte	0x9
	.byte	0x4b
	.4byte	0x4ac
	.uleb128 0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xd
	.4byte	0x4ac
	.4byte	0x28b2
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.byte	0
	.uleb128 0x54
	.string	"tex"
	.byte	0x9
	.byte	0x4c
	.4byte	0x28a2
	.uleb128 0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x53
	.4byte	.LASF118
	.byte	0x9
	.byte	0x4d
	.4byte	0x4ac
	.uleb128 0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xd
	.4byte	0x3ce
	.4byte	0x28e5
	.uleb128 0x55
	.4byte	0x45
	.2byte	0x3e7
	.byte	0
	.uleb128 0x53
	.4byte	.LASF217
	.byte	0x9
	.byte	0x4f
	.4byte	0x28d4
	.uleb128 0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x53
	.4byte	.LASF218
	.byte	0x9
	.byte	0x50
	.4byte	0x28d4
	.uleb128 0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xd
	.4byte	0x41e
	.4byte	0x291e
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.uleb128 0x55
	.4byte	0x45
	.2byte	0x3e7
	.byte	0
	.uleb128 0x53
	.4byte	.LASF219
	.byte	0x9
	.byte	0x51
	.4byte	0x2907
	.uleb128 0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xd
	.4byte	0x45a
	.4byte	0x2940
	.uleb128 0x55
	.4byte	0x45
	.2byte	0x3e7
	.byte	0
	.uleb128 0x53
	.4byte	.LASF220
	.byte	0x9
	.byte	0x52
	.4byte	0x292f
	.uleb128 0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x53
	.4byte	.LASF221
	.byte	0x9
	.byte	0x5c
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x53
	.4byte	.LASF222
	.byte	0x9
	.byte	0x5d
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x53
	.4byte	.LASF223
	.byte	0x9
	.byte	0x5e
	.4byte	0xa6
	.uleb128 0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x53
	.4byte	.LASF224
	.byte	0x9
	.byte	0x60
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x53
	.4byte	.LASF225
	.byte	0x9
	.byte	0x61
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x53
	.4byte	.LASF226
	.byte	0x9
	.byte	0x65
	.4byte	0x183
	.uleb128 0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x53
	.4byte	.LASF227
	.byte	0x9
	.byte	0x66
	.4byte	0x183
	.uleb128 0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x53
	.4byte	.LASF228
	.byte	0x9
	.byte	0x67
	.4byte	0xa6
	.uleb128 0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x53
	.4byte	.LASF229
	.byte	0x9
	.byte	0x68
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x53
	.4byte	.LASF230
	.byte	0x9
	.byte	0x74
	.4byte	0x53c
	.uleb128 0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x53
	.4byte	.LASF231
	.byte	0x9
	.byte	0x75
	.4byte	0x53c
	.uleb128 0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xd
	.4byte	0x53c
	.4byte	0x2a1c
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.byte	0
	.uleb128 0x53
	.4byte	.LASF232
	.byte	0x9
	.byte	0x76
	.4byte	0x2a0c
	.uleb128 0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x53
	.4byte	.LASF233
	.byte	0x9
	.byte	0x77
	.4byte	0x2a3e
	.uleb128 0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x6
	.byte	0x4
	.4byte	0x53c
	.uleb128 0x53
	.4byte	.LASF234
	.byte	0x9
	.byte	0x78
	.4byte	0xa6
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xd
	.4byte	0x5e4
	.4byte	0x2a65
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.byte	0
	.uleb128 0x53
	.4byte	.LASF235
	.byte	0x9
	.byte	0x93
	.4byte	0x2a55
	.uleb128 0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x53
	.4byte	.LASF236
	.byte	0x9
	.byte	0x96
	.4byte	0x45a
	.uleb128 0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x53
	.4byte	.LASF237
	.byte	0x9
	.byte	0xa3
	.4byte	0x638
	.uleb128 0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x53
	.4byte	.LASF238
	.byte	0x9
	.byte	0xa6
	.4byte	0x23e
	.uleb128 0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x53
	.4byte	.LASF239
	.byte	0x9
	.byte	0xa7
	.4byte	0xa6
	.uleb128 0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x53
	.4byte	.LASF240
	.byte	0x9
	.byte	0xab
	.4byte	0x23e
	.uleb128 0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x53
	.4byte	.LASF241
	.byte	0x9
	.byte	0xb2
	.4byte	0x183
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x53
	.4byte	.LASF242
	.byte	0x9
	.byte	0xb3
	.4byte	0x183
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x53
	.4byte	.LASF243
	.byte	0x9
	.byte	0xb4
	.4byte	0x183
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x53
	.4byte	.LASF244
	.byte	0x9
	.byte	0xb5
	.4byte	0x183
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x53
	.4byte	.LASF245
	.byte	0x9
	.byte	0xb7
	.4byte	0x183
	.uleb128 0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x53
	.4byte	.LASF246
	.byte	0x9
	.byte	0xc0
	.4byte	0x662
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x53
	.4byte	.LASF247
	.byte	0x9
	.byte	0xea
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x53
	.4byte	.LASF248
	.byte	0x9
	.byte	0xeb
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x53
	.4byte	.LASF249
	.byte	0x9
	.byte	0xec
	.4byte	0xb1
	.uleb128 0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x53
	.4byte	.LASF250
	.byte	0x9
	.byte	0xed
	.4byte	0x6a6
	.uleb128 0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x53
	.4byte	.LASF251
	.byte	0x9
	.byte	0xee
	.4byte	0x6a6
	.uleb128 0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x53
	.4byte	.LASF252
	.byte	0x9
	.byte	0xef
	.4byte	0x223
	.uleb128 0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x53
	.4byte	.LASF253
	.byte	0x9
	.byte	0xf0
	.4byte	0x223
	.uleb128 0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x53
	.4byte	.LASF254
	.byte	0x9
	.byte	0xf2
	.4byte	0x223
	.uleb128 0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x53
	.4byte	.LASF255
	.byte	0x9
	.byte	0xf3
	.4byte	0x223
	.uleb128 0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x53
	.4byte	.LASF256
	.byte	0x9
	.byte	0xff
	.4byte	0x706
	.uleb128 0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x56
	.4byte	.LASF257
	.byte	0x9
	.2byte	0x100
	.4byte	0x706
	.uleb128 0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xd
	.4byte	0x23e
	.4byte	0x2bfd
	.uleb128 0xe
	.4byte	0x45
	.byte	0x3
	.byte	0
	.uleb128 0x56
	.4byte	.LASF258
	.byte	0x9
	.2byte	0x101
	.4byte	0x2bed
	.uleb128 0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x56
	.4byte	.LASF259
	.byte	0x9
	.2byte	0x107
	.4byte	0x23e
	.uleb128 0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x56
	.4byte	.LASF260
	.byte	0x9
	.2byte	0x108
	.4byte	0xa6
	.uleb128 0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x56
	.4byte	.LASF261
	.byte	0x9
	.2byte	0x10b
	.4byte	0x38b
	.uleb128 0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xd
	.4byte	0x739
	.4byte	0x2c55
	.uleb128 0xe
	.4byte	0x45
	.byte	0x3
	.byte	0
	.uleb128 0x56
	.4byte	.LASF262
	.byte	0x9
	.2byte	0x11e
	.4byte	0x2c45
	.uleb128 0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x56
	.4byte	.LASF263
	.byte	0x9
	.2byte	0x143
	.4byte	0x23e
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x56
	.4byte	.LASF264
	.byte	0x9
	.2byte	0x144
	.4byte	0x183
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x56
	.4byte	.LASF265
	.byte	0x9
	.2byte	0x145
	.4byte	0x223
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x56
	.4byte	.LASF266
	.byte	0x9
	.2byte	0x146
	.4byte	0x223
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x56
	.4byte	.LASF267
	.byte	0x9
	.2byte	0x147
	.4byte	0x223
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x56
	.4byte	.LASF268
	.byte	0x9
	.2byte	0x148
	.4byte	0x38b
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xd
	.4byte	0x881
	.4byte	0x2ce3
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.byte	0
	.uleb128 0x56
	.4byte	.LASF269
	.byte	0x9
	.2byte	0x14a
	.4byte	0x2cd3
	.uleb128 0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x56
	.4byte	.LASF270
	.byte	0x9
	.2byte	0x14f
	.4byte	0xa6
	.uleb128 0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x56
	.4byte	.LASF271
	.byte	0x9
	.2byte	0x152
	.4byte	0xdd
	.uleb128 0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x56
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x4a5
	.4byte	0xa6
	.uleb128 0x5
	.byte	0x3
	.4byte	glErrCode
	.uleb128 0x56
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x4a6
	.4byte	0x8d
	.uleb128 0x5
	.byte	0x3
	.4byte	glErrFile
	.uleb128 0x56
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x4a7
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	glErrLine
	.uleb128 0x57
	.4byte	.LASF275
	.byte	0x2
	.2byte	0x133c
	.4byte	0x2da
	.4byte	0x2d61
	.uleb128 0x58
	.byte	0
	.uleb128 0x59
	.4byte	.LASF276
	.byte	0x7
	.2byte	0x192
	.4byte	0x2d73
	.uleb128 0x5a
	.4byte	0x2a3
	.byte	0
	.uleb128 0x59
	.4byte	.LASF277
	.byte	0x2
	.2byte	0x94d
	.4byte	0x2d8a
	.uleb128 0x5a
	.4byte	0x2a3
	.uleb128 0x5a
	.4byte	0x198
	.byte	0
	.uleb128 0x5b
	.4byte	.LASF278
	.byte	0x7
	.byte	0xd3
	.4byte	0x2db9
	.uleb128 0x5a
	.4byte	0x2a3
	.uleb128 0x5a
	.4byte	0x223
	.uleb128 0x5a
	.4byte	0x223
	.uleb128 0x5a
	.4byte	0x223
	.uleb128 0x5a
	.4byte	0x223
	.uleb128 0x5a
	.4byte	0x223
	.uleb128 0x5a
	.4byte	0x223
	.byte	0
	.uleb128 0x59
	.4byte	.LASF279
	.byte	0x2
	.2byte	0x701
	.4byte	0x2dd0
	.uleb128 0x5a
	.4byte	0x2a3
	.uleb128 0x5a
	.4byte	0x183
	.byte	0
	.uleb128 0x59
	.4byte	.LASF280
	.byte	0x2
	.2byte	0x9d4
	.4byte	0x2de2
	.uleb128 0x5a
	.4byte	0x198
	.byte	0
	.uleb128 0x5c
	.4byte	.LASF291
	.byte	0x2
	.2byte	0x6f4
	.4byte	0x2df0
	.uleb128 0x58
	.byte	0
	.uleb128 0x59
	.4byte	.LASF281
	.byte	0x2
	.2byte	0x7c0
	.4byte	0x2e07
	.uleb128 0x5a
	.4byte	0x183
	.uleb128 0x5a
	.4byte	0x183
	.byte	0
	.uleb128 0x59
	.4byte	.LASF282
	.byte	0x2
	.2byte	0xba9
	.4byte	0x2e19
	.uleb128 0x5a
	.4byte	0x183
	.byte	0
	.uleb128 0x59
	.4byte	.LASF283
	.byte	0x2
	.2byte	0xa6a
	.4byte	0x2e2b
	.uleb128 0x5a
	.4byte	0x198
	.byte	0
	.uleb128 0x59
	.4byte	.LASF284
	.byte	0x2
	.2byte	0xbe4
	.4byte	0x2e3d
	.uleb128 0x5a
	.4byte	0x183
	.byte	0
	.uleb128 0x59
	.4byte	.LASF285
	.byte	0x2
	.2byte	0xc8d
	.4byte	0x2e4f
	.uleb128 0x5a
	.4byte	0x183
	.byte	0
	.uleb128 0x59
	.4byte	.LASF286
	.byte	0x2
	.2byte	0xbd1
	.4byte	0x2e70
	.uleb128 0x5a
	.4byte	0x183
	.uleb128 0x5a
	.4byte	0x183
	.uleb128 0x5a
	.4byte	0x198
	.uleb128 0x5a
	.4byte	0x183
	.byte	0
	.uleb128 0x59
	.4byte	.LASF287
	.byte	0x2
	.2byte	0x9e5
	.4byte	0x2e87
	.uleb128 0x5a
	.4byte	0x183
	.uleb128 0x5a
	.4byte	0x183
	.byte	0
	.uleb128 0x59
	.4byte	.LASF288
	.byte	0x2
	.2byte	0xb28
	.4byte	0x2ea8
	.uleb128 0x5a
	.4byte	0x183
	.uleb128 0x5a
	.4byte	0x183
	.uleb128 0x5a
	.4byte	0x183
	.uleb128 0x5a
	.4byte	0x183
	.byte	0
	.uleb128 0x59
	.4byte	.LASF289
	.byte	0x2
	.2byte	0xb36
	.4byte	0x2eba
	.uleb128 0x5a
	.4byte	0x183
	.byte	0
	.uleb128 0x59
	.4byte	.LASF290
	.byte	0x9
	.2byte	0x104
	.4byte	0x2edb
	.uleb128 0x5a
	.4byte	0x198
	.uleb128 0x5a
	.4byte	0x198
	.uleb128 0x5a
	.4byte	0x198
	.uleb128 0x5a
	.4byte	0x198
	.byte	0
	.uleb128 0x5c
	.4byte	.LASF292
	.byte	0x9
	.2byte	0x105
	.4byte	0x2ee9
	.uleb128 0x58
	.byte	0
	.uleb128 0x5c
	.4byte	.LASF293
	.byte	0x2
	.2byte	0x6cb
	.4byte	0x2ef7
	.uleb128 0x58
	.byte	0
	.uleb128 0x59
	.4byte	.LASF294
	.byte	0x2
	.2byte	0x806
	.4byte	0x2f13
	.uleb128 0x5a
	.4byte	0x183
	.uleb128 0x5a
	.4byte	0x183
	.uleb128 0x5a
	.4byte	0x18d
	.byte	0
	.uleb128 0x59
	.4byte	.LASF295
	.byte	0x2
	.2byte	0xe4a
	.4byte	0x2f2a
	.uleb128 0x5a
	.4byte	0x38b
	.uleb128 0x5a
	.4byte	0x198
	.byte	0
	.uleb128 0x5d
	.4byte	.LASF296
	.byte	0x9
	.byte	0xd6
	.4byte	0x5a
	.4byte	0x2f3b
	.uleb128 0x58
	.byte	0
	.uleb128 0x59
	.4byte	.LASF297
	.byte	0x2
	.2byte	0xe5c
	.4byte	0x2f52
	.uleb128 0x5a
	.4byte	0x5a
	.uleb128 0x5a
	.4byte	0x183
	.byte	0
	.uleb128 0x59
	.4byte	.LASF298
	.byte	0x2
	.2byte	0xae0
	.4byte	0x2f6e
	.uleb128 0x5a
	.4byte	0x183
	.uleb128 0x5a
	.4byte	0x183
	.uleb128 0x5a
	.4byte	0x183
	.byte	0
	.uleb128 0x59
	.4byte	.LASF299
	.byte	0x2
	.2byte	0xd5a
	.4byte	0x2f80
	.uleb128 0x5a
	.4byte	0x183
	.byte	0
	.uleb128 0x59
	.4byte	.LASF300
	.byte	0x2
	.2byte	0xd69
	.4byte	0x2f92
	.uleb128 0x5a
	.4byte	0x183
	.byte	0
	.uleb128 0x5e
	.4byte	.LASF302
	.byte	0xa
	.byte	0x1f
	.4byte	0x1ee7
	.4byte	0x2fa7
	.uleb128 0x5a
	.4byte	0x2a3e
	.byte	0
	.uleb128 0x59
	.4byte	.LASF303
	.byte	0x2
	.2byte	0xcbe
	.4byte	0x2fd2
	.uleb128 0x5a
	.4byte	0x183
	.uleb128 0x5a
	.4byte	0x223
	.uleb128 0x5a
	.4byte	0x223
	.uleb128 0x5a
	.4byte	0x223
	.uleb128 0x5a
	.4byte	0x223
	.uleb128 0x5a
	.4byte	0x38b
	.byte	0
	.uleb128 0x5b
	.4byte	.LASF304
	.byte	0x9
	.byte	0xca
	.4byte	0x2fe3
	.uleb128 0x5a
	.4byte	0x23e
	.byte	0
	.uleb128 0x5e
	.4byte	.LASF305
	.byte	0x9
	.byte	0xcf
	.4byte	0xb1
	.4byte	0x2ff8
	.uleb128 0x5a
	.4byte	0xa6
	.byte	0
	.uleb128 0x5e
	.4byte	.LASF306
	.byte	0x9
	.byte	0xcb
	.4byte	0x23e
	.4byte	0x300d
	.uleb128 0x5a
	.4byte	0x6a
	.byte	0
	.uleb128 0x5f
	.4byte	.LASF307
	.byte	0x4
	.2byte	0x37b
	.uleb128 0x5a
	.4byte	0xa6
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x25
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x2116
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
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x58
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x59
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
	.uleb128 0x5a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0x5d
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
	.uleb128 0x5e
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
	.uleb128 0x5f
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor+3
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor+2
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor+1
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor+3
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor+2
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor+1
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor+3
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL42-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor+2
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL42-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor+1
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL42-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL42-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL42-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor+3
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor+2
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor+1
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x2d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x4d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x501
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x63
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x71
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x78
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL86-.Ltext0
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
.LLST54:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL87-.Ltext0
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
.LLST55:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x8b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0xb0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x505
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL99-1-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL99-1-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-1-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL99-1-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL101-1-.Ltext0
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
.LLST71:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL101-1-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103-1-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL105-1-.Ltext0
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
.LLST74:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL105-1-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL105-1-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL105-1-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x24
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL112-1-.Ltext0
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
.LLST78:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL112-1-.Ltext0
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
.LLST79:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL112-1-.Ltext0
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
.LLST80:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114-1-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL114-1-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL114-1-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116-1-.Ltext0
	.4byte	.LFE88-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL116-1-.Ltext0
	.4byte	.LFE88-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL116-1-.Ltext0
	.4byte	.LFE88-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL116-1-.Ltext0
	.4byte	.LFE88-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118-1-.Ltext0
	.4byte	.LFE89-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x107
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x112
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 16384
	.byte	0x9f
	.4byte	.LVL127-.Ltext0
	.4byte	.LFE92-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL134-.Ltext0
	.4byte	.LFE92-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x125
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL140-1-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL140-1-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x1af
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL170-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0xe
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0xe
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0xe
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0xe
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL170-.Ltext0
	.4byte	.LFE97-.Ltext0
	.2byte	0x10
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x1b8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x1d2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL187-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x4000
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0x4000
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x4000
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0x4000
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x4000
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0x4000
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0xc
	.4byte	0xfffffffb
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xc
	.4byte	0xfffffffb
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0xc
	.4byte	0xfffffffb
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xc
	.4byte	0xfffffffb
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0xc
	.4byte	0xfffffffb
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xc
	.4byte	0xfffffffb
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x223
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL191-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL192-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL193-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x25e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x268
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x27a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL224-.Ltext0
	.4byte	.LFE106-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x2a8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0xb65
	.byte	0x9f
	.4byte	.LVL224-.Ltext0
	.4byte	.LFE106-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0xb65
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL224-.Ltext0
	.4byte	.LFE106-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x2b9
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x2c6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x501
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x2cc
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL227-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL227-1-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL227-1-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL227-1-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL231-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL231-1-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL231-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL231-1-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x2d3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x2e5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x2ec
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL242-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL242-1-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL249-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x2f4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x308
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x314
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST173:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST174:
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL257-1-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL266-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL266-1-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL277-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST175:
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x31c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST176:
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST177:
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST178:
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST179:
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x33c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST180:
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST181:
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST182:
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x365
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST183:
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST184:
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST185:
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x4
	.byte	0x73
	.sleb128 512
	.byte	0x9f
	.4byte	.LVL282-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST186:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x3b0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST187:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST188:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST189:
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x3bd
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST190:
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST191:
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST192:
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL286-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 65536
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST193:
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL289-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 31552
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST194:
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x413
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST195:
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST196:
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST197:
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 65536
	.byte	0x9f
	.4byte	.LVL292-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 33984
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST198:
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x421
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST199:
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST200:
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST201:
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 65536
	.byte	0x9f
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 33984
	.byte	0x9f
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-1-.Ltext0
	.2byte	0xb
	.byte	0x3
	.4byte	cur_tex
	.byte	0x6
	.byte	0x23
	.uleb128 0x84c0
	.byte	0x9f
	.4byte	.LVL301-1-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST202:
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x42c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST203:
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST204:
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x500
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST205:
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x498
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST206:
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST207:
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST208:
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x49f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST209:
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST210:
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST211:
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x4b1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST212:
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST213:
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x502
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST214:
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL313-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST215:
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL314-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST216:
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL315-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL315-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST217:
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL316-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
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
	.4byte	.LBB170-.Ltext0
	.4byte	.LBE170-.Ltext0
	.4byte	.LBB174-.Ltext0
	.4byte	.LBE174-.Ltext0
	.4byte	.LBB175-.Ltext0
	.4byte	.LBE175-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB176-.Ltext0
	.4byte	.LBE176-.Ltext0
	.4byte	.LBB182-.Ltext0
	.4byte	.LBE182-.Ltext0
	.4byte	.LBB183-.Ltext0
	.4byte	.LBE183-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB186-.Ltext0
	.4byte	.LBE186-.Ltext0
	.4byte	.LBB189-.Ltext0
	.4byte	.LBE189-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB192-.Ltext0
	.4byte	.LBE192-.Ltext0
	.4byte	.LBB195-.Ltext0
	.4byte	.LBE195-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB244-.Ltext0
	.4byte	.LBE244-.Ltext0
	.4byte	.LBB248-.Ltext0
	.4byte	.LBE248-.Ltext0
	.4byte	.LBB249-.Ltext0
	.4byte	.LBE249-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB313-.Ltext0
	.4byte	.LBE313-.Ltext0
	.4byte	.LBB318-.Ltext0
	.4byte	.LBE318-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB341-.Ltext0
	.4byte	.LBE341-.Ltext0
	.4byte	.LBB344-.Ltext0
	.4byte	.LBE344-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB378-.Ltext0
	.4byte	.LBE378-.Ltext0
	.4byte	.LBB381-.Ltext0
	.4byte	.LBE381-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF283:
	.string	"GX_SetNumTexGens"
.LASF163:
	.string	"glVertex2f"
.LASF149:
	.string	"plane"
.LASF176:
	.string	"params"
.LASF162:
	.string	"glVertex2i"
.LASF295:
	.string	"GX_SetCopyClear"
.LASF65:
	.string	"Stack"
.LASF11:
	.string	"char"
.LASF182:
	.string	"glGetMaterialfv"
.LASF18:
	.string	"GLint"
.LASF259:
	.string	"copy_mat_enabled"
.LASF86:
	.string	"boxInfo"
.LASF281:
	.string	"GX_SetVtxDesc"
.LASF284:
	.string	"GX_SetNumTevStages"
.LASF19:
	.string	"GLubyte"
.LASF236:
	.string	"globAmbient"
.LASF232:
	.string	"texture_stack"
.LASF297:
	.string	"GX_CopyDisp"
.LASF204:
	.string	"glGetIntegerv"
.LASF247:
	.string	"fb_max_height"
.LASF70:
	.string	"diffuse"
.LASF129:
	.string	"glVertex3f"
.LASF217:
	.string	"_normalelements"
.LASF78:
	.string	"_mat"
.LASF153:
	.string	"sfactor"
.LASF144:
	.string	"coord"
.LASF71:
	.string	"specular"
.LASF128:
	.string	"line"
.LASF122:
	.string	"GX_Position3f32"
.LASF285:
	.string	"GX_SetNumIndStages"
.LASF62:
	.string	"_stack"
.LASF219:
	.string	"_texcoordelements"
.LASF139:
	.string	"glPolygonOffset"
.LASF97:
	.string	"_trans"
.LASF73:
	.string	"spotCutoff"
.LASF186:
	.string	"clear_depth"
.LASF101:
	.string	"_tex_env"
.LASF237:
	.string	"curmat"
.LASF63:
	.string	"begin"
.LASF58:
	.string	"mode"
.LASF226:
	.string	"depthtestenabled"
.LASF261:
	.string	"_clearcolor"
.LASF165:
	.string	"glVertex4f"
.LASF107:
	.string	"maxlod"
.LASF82:
	.string	"GL_STATE_NONE"
.LASF298:
	.string	"GX_SetZMode"
.LASF289:
	.string	"GX_SetCullMode"
.LASF121:
	.string	"glTexEnvSet"
.LASF45:
	.string	"_gx_litobj"
.LASF195:
	.string	"glEnable"
.LASF234:
	.string	"cur_mode"
.LASF218:
	.string	"_vertexelements"
.LASF50:
	.string	"GXColorf"
.LASF115:
	.string	"CargOp"
.LASF229:
	.string	"_cleardepth"
.LASF197:
	.string	"glDisable"
.LASF181:
	.string	"glMaterialfv"
.LASF246:
	.string	"cur_state"
.LASF213:
	.string	"_tempnormalelement"
.LASF225:
	.string	"cur_tex_client"
.LASF216:
	.string	"vert"
.LASF31:
	.string	"uint32_t"
.LASF26:
	.string	"int8_t"
.LASF187:
	.string	"glClearColor"
.LASF264:
	.string	"fog_mode"
.LASF126:
	.string	"_glSetErrorEx"
.LASF266:
	.string	"fog_endz"
.LASF222:
	.string	"_type"
.LASF309:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl.c"
.LASF32:
	.string	"vu16"
.LASF0:
	.string	"float"
.LASF146:
	.string	"face"
.LASF99:
	.string	"bias"
.LASF28:
	.string	"int16_t"
.LASF44:
	.string	"GXColor"
.LASF60:
	.string	"farZclip"
.LASF56:
	.string	"VertexArray"
.LASF254:
	.string	"line_width"
.LASF9:
	.string	"long long unsigned int"
.LASF127:
	.string	"file"
.LASF307:
	.string	"glMatrixMode"
.LASF25:
	.string	"GLclampd"
.LASF262:
	.string	"Trans"
.LASF256:
	.string	"pack"
.LASF79:
	.string	"emissive"
.LASF251:
	.string	"viewPort"
.LASF276:
	.string	"ps_guMtxIdentity"
.LASF180:
	.string	"glMaterialf"
.LASF230:
	.string	"model_stack"
.LASF258:
	.string	"color_write_mask"
.LASF114:
	.string	"Carg"
.LASF52:
	.string	"enable"
.LASF269:
	.string	"glTexEnvs"
.LASF241:
	.string	"blend_type"
.LASF207:
	.string	"glPointSize"
.LASF277:
	.string	"GX_LoadPosMtxImm"
.LASF190:
	.string	"glFlush"
.LASF205:
	.string	"glGetFloatv"
.LASF210:
	.string	"glColorMask"
.LASF268:
	.string	"fog_color"
.LASF274:
	.string	"glErrLine"
.LASF273:
	.string	"glErrFile"
.LASF315:
	.string	"draw_axis_align_blanker_quad"
.LASF137:
	.string	"target"
.LASF305:
	.string	"_glIsArrayEnabled"
.LASF87:
	.string	"width"
.LASF102:
	.string	"min_filter"
.LASF313:
	.string	"GX_End"
.LASF224:
	.string	"cur_tex"
.LASF67:
	.string	"enabled"
.LASF161:
	.string	"glViewport"
.LASF311:
	.string	"_wgpipe"
.LASF143:
	.string	"glTexGeni"
.LASF113:
	.string	"comAlpha"
.LASF37:
	.string	"_Bool"
.LASF33:
	.string	"vu32"
.LASF198:
	.string	"glDepthFunc"
.LASF185:
	.string	"clear_color"
.LASF249:
	.string	"scissor_test"
.LASF291:
	.string	"GX_ClearVtxDesc"
.LASF255:
	.string	"point_size"
.LASF80:
	.string	"shininess"
.LASF253:
	.string	"normFar"
.LASF22:
	.string	"GLfloat"
.LASF135:
	.string	"GXprojection2D"
.LASF260:
	.string	"copy_material"
.LASF151:
	.string	"glColorMaterial"
.LASF200:
	.string	"texture"
.LASF168:
	.string	"glColor3ub"
.LASF84:
	.string	"GL_STATE_NEWLIST"
.LASF233:
	.string	"curmtx"
.LASF36:
	.string	"vf32"
.LASF156:
	.string	"glCullFace"
.LASF250:
	.string	"scissorInfo"
.LASF166:
	.string	"glNormal3fv"
.LASF179:
	.string	"lightPos"
.LASF160:
	.string	"far_val"
.LASF239:
	.string	"gxwinding"
.LASF173:
	.string	"glColor3fv"
.LASF46:
	.string	"GXLightObj"
.LASF100:
	.string	"ColorTrans"
.LASF242:
	.string	"blend_src"
.LASF81:
	.string	"Material"
.LASF199:
	.string	"glMultiTexCoord2fARB"
.LASF228:
	.string	"depthfunction"
.LASF157:
	.string	"glFrontFace"
.LASF27:
	.string	"uint8_t"
.LASF303:
	.string	"GX_SetFog"
.LASF231:
	.string	"projection_stack"
.LASF167:
	.string	"glColor3f"
.LASF220:
	.string	"_colorelements"
.LASF196:
	.string	"updateFog"
.LASF90:
	.string	"swap"
.LASF69:
	.string	"ambient"
.LASF38:
	.string	"guVector"
.LASF8:
	.string	"long long int"
.LASF287:
	.string	"GX_SetTevOp"
.LASF170:
	.string	"blue"
.LASF202:
	.string	"glClientActiveTextureARB"
.LASF20:
	.string	"GLuint"
.LASF83:
	.string	"GL_STATE_BEGIN"
.LASF189:
	.string	"depth"
.LASF270:
	.string	"read_mode"
.LASF64:
	.string	"elem_size"
.LASF209:
	.string	"glGetError"
.LASF85:
	.string	"glState"
.LASF74:
	.string	"constant"
.LASF132:
	.string	"glFogf"
.LASF191:
	.string	"glFogi"
.LASF263:
	.string	"fog_enable"
.LASF17:
	.string	"GLbitfield"
.LASF201:
	.string	"mytex"
.LASF125:
	.string	"glColor4f"
.LASF42:
	.string	"_vecf"
.LASF48:
	.string	"VertexElement"
.LASF98:
	.string	"scale"
.LASF109:
	.string	"biasclamp"
.LASF35:
	.string	"vs32"
.LASF92:
	.string	"row_length"
.LASF23:
	.string	"GLclampf"
.LASF227:
	.string	"depthupdate"
.LASF54:
	.string	"size"
.LASF77:
	.string	"LightObj"
.LASF134:
	.string	"param"
.LASF104:
	.string	"wrap_s"
.LASF105:
	.string	"wrap_t"
.LASF75:
	.string	"linear"
.LASF184:
	.string	"mask"
.LASF243:
	.string	"blend_dst"
.LASF88:
	.string	"height"
.LASF214:
	.string	"_temptexcoordelement"
.LASF59:
	.string	"nearZclip"
.LASF169:
	.string	"green"
.LASF13:
	.string	"long double"
.LASF61:
	.string	"PrjMtx"
.LASF206:
	.string	"glLineWidth"
.LASF29:
	.string	"uint16_t"
.LASF24:
	.string	"GLdouble"
.LASF308:
	.string	"GNU C 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF290:
	.string	"GX_SetModScissor"
.LASF306:
	.string	"_glGetEnableTex"
.LASF286:
	.string	"GX_SetTevOrder"
.LASF192:
	.string	"glFogfv"
.LASF148:
	.string	"glClipPlane"
.LASF296:
	.string	"getBackFramebuffer"
.LASF257:
	.string	"unpack"
.LASF49:
	.string	"TexCoordElement"
.LASF68:
	.string	"spotDir"
.LASF51:
	.string	"_array"
.LASF72:
	.string	"spotExponent"
.LASF76:
	.string	"quad_t"
.LASF280:
	.string	"GX_SetCurrentMtx"
.LASF108:
	.string	"lodbias"
.LASF235:
	.string	"lights"
.LASF7:
	.string	"short int"
.LASF178:
	.string	"glLightfv"
.LASF106:
	.string	"minlod"
.LASF103:
	.string	"max_filter"
.LASF130:
	.string	"light"
.LASF12:
	.string	"long int"
.LASF208:
	.string	"glIsEnabled"
.LASF41:
	.string	"WGPipe"
.LASF15:
	.string	"GLenum"
.LASF301:
	.string	"glLightN"
.LASF203:
	.string	"glActiveTextureARB"
.LASF288:
	.string	"GX_SetBlendMode"
.LASF278:
	.string	"guOrtho"
.LASF66:
	.string	"_light"
.LASF194:
	.string	"flag"
.LASF118:
	.string	"color"
.LASF299:
	.string	"GX_SetColorUpdate"
.LASF21:
	.string	"GLsizei"
.LASF271:
	.string	"call_offset"
.LASF212:
	.string	"_tempcolorelement"
.LASF154:
	.string	"dfactor"
.LASF40:
	.string	"lwp_t"
.LASF155:
	.string	"glScissor"
.LASF94:
	.string	"skip_pixels"
.LASF34:
	.string	"vs16"
.LASF116:
	.string	"Aarg"
.LASF279:
	.string	"GX_LoadProjectionMtx"
.LASF111:
	.string	"maxaniso"
.LASF174:
	.string	"glTexCoord2f"
.LASF2:
	.string	"unsigned int"
.LASF138:
	.string	"glHint"
.LASF142:
	.string	"glLightModeli"
.LASF267:
	.string	"fog_density"
.LASF53:
	.string	"stride"
.LASF240:
	.string	"lighting"
.LASF300:
	.string	"GX_SetAlphaUpdate"
.LASF171:
	.string	"glColor4ub"
.LASF193:
	.string	"glDepthMask"
.LASF3:
	.string	"sizetype"
.LASF10:
	.string	"long unsigned int"
.LASF123:
	.string	"GX_Color4u8"
.LASF172:
	.string	"alpha"
.LASF244:
	.string	"blend_op"
.LASF310:
	.string	"D:\\\\devkitPro\\\\portlibs\\\\thirdparty\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF282:
	.string	"GX_SetNumChans"
.LASF30:
	.string	"int32_t"
.LASF96:
	.string	"pixelStore"
.LASF124:
	.string	"glNormal3f"
.LASF293:
	.string	"GX_DrawDone"
.LASF159:
	.string	"near_val"
.LASF55:
	.string	"type"
.LASF183:
	.string	"glClear"
.LASF4:
	.string	"unsigned char"
.LASF39:
	.string	"Mtx44"
.LASF93:
	.string	"skip_rows"
.LASF164:
	.string	"glVertex3fv"
.LASF272:
	.string	"glErrCode"
.LASF221:
	.string	"vert_i"
.LASF91:
	.string	"lsb_first"
.LASF120:
	.string	"alpha_scale"
.LASF152:
	.string	"glBlendFunc"
.LASF136:
	.string	"identity_matrix"
.LASF265:
	.string	"fog_startz"
.LASF47:
	.string	"Vector"
.LASF112:
	.string	"comRGB"
.LASF248:
	.string	"fb_max_width"
.LASF252:
	.string	"normNear"
.LASF223:
	.string	"_GLtype"
.LASF147:
	.string	"glShadeModel"
.LASF43:
	.string	"_gx_color"
.LASF110:
	.string	"edgelod"
.LASF238:
	.string	"gxcullfaceanabled"
.LASF145:
	.string	"glPolygonMode"
.LASF141:
	.string	"units"
.LASF304:
	.string	"_glSetEnableTex"
.LASF292:
	.string	"GX_SetMaxScissor"
.LASF6:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF177:
	.string	"glLightf"
.LASF215:
	.string	"norm"
.LASF211:
	.string	"wgPipe"
.LASF314:
	.string	"calc_density"
.LASF158:
	.string	"glDepthRange"
.LASF1:
	.string	"double"
.LASF275:
	.string	"GX_SetCurrentGXThread"
.LASF95:
	.string	"alignment"
.LASF175:
	.string	"glLightModelfv"
.LASF14:
	.string	"size_t"
.LASF57:
	.string	"_prj_mat"
.LASF140:
	.string	"factor"
.LASF16:
	.string	"GLboolean"
.LASF119:
	.string	"rgb_scale"
.LASF312:
	.string	"_glState"
.LASF89:
	.string	"_pixelStore"
.LASF133:
	.string	"pname"
.LASF188:
	.string	"glClearDepth"
.LASF302:
	.string	"TopPrjMtx"
.LASF245:
	.string	"cull_mode"
.LASF294:
	.string	"GX_Begin"
.LASF117:
	.string	"AargOp"
.LASF131:
	.string	"lightNum"
.LASF150:
	.string	"equation"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
	.gnu_attribute 4, 1
