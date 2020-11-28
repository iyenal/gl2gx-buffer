	.file	"gl_stacks.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	pushAccum, @function
pushAccum:
.LFB64:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl_stacks.c"
	.loc 1 18 0
	.cfi_startproc
.LVL0:
	.loc 1 21 0
	lwz 9,0(3)
	addi 9,9,16
	cmplw 7,9,4
	bgt- 7,.L3
	.loc 1 23 0
	stw 9,0(3)
	.loc 1 25 0
	li 3,1
.LVL1:
	blr
.LVL2:
.L3:
	.loc 1 21 0
	li 3,0
.LVL3:
	.loc 1 26 0
	blr
	.cfi_endproc
.LFE64:
	.size	pushAccum, .-pushAccum
	.align 2
	.type	popAccum, @function
popAccum:
.LFB65:
	.loc 1 29 0
	.cfi_startproc
.LVL4:
	.loc 1 32 0
	lwz 9,0(3)
	addi 9,9,-16
	stw 9,0(3)
	blr
	.cfi_endproc
.LFE65:
	.size	popAccum, .-popAccum
	.align 2
	.type	pushColorBuffer, @function
pushColorBuffer:
.LFB66:
	.loc 1 77 0
	.cfi_startproc
.LVL5:
	.loc 1 80 0
	lwz 9,0(3)
	addi 10,9,44
	cmplw 7,10,4
	bgt- 7,.L8
	.loc 1 82 0
	lis 10,blend_type@ha
	.loc 1 88 0
	lis 8,color_write_mask@ha
	.loc 1 82 0
	lbz 10,blend_type@l(10)
	.loc 1 88 0
	lbz 7,color_write_mask@l(8)
	.loc 1 82 0
	stb 10,16(9)
	.loc 1 83 0
	lis 10,blend_src@ha
	lbz 10,blend_src@l(10)
	.loc 1 88 0
	rlwinm 7,7,3,28,28
	.loc 1 83 0
	lwz 9,0(3)
	stb 10,17(9)
	.loc 1 84 0
	lis 10,blend_dst@ha
	lbz 10,blend_dst@l(10)
	lwz 9,0(3)
	stb 10,18(9)
	.loc 1 85 0
	lis 10,blend_op@ha
	lbz 10,blend_op@l(10)
	lwz 9,0(3)
	stb 10,19(9)
	.loc 1 87 0
	lis 10,_clearcolor@ha
	lwz 10,_clearcolor@l(10)
	lwz 9,0(3)
	stw 10,40(9)
	.loc 1 88 0
	la 10,color_write_mask@l(8)
	lwz 9,0(3)
	lbz 8,0(9)
	rlwinm 8,8,0,29,27
	or 8,8,7
	stb 8,0(9)
	.loc 1 89 0
	lwz 9,0(3)
	lbz 7,1(10)
	lbz 8,0(9)
	rlwinm 7,7,2,29,29
	rlwinm 8,8,0,30,28
	or 8,8,7
	stb 8,0(9)
	.loc 1 90 0
	lwz 9,0(3)
	lbz 7,2(10)
	lbz 8,0(9)
	rlwinm 7,7,1,30,30
	rlwinm 8,8,0,31,29
	or 8,8,7
	stb 8,0(9)
	.loc 1 91 0
	lwz 9,0(3)
	addi 8,9,44
	stw 8,0(3)
	.loc 1 93 0
	li 3,1
.LVL6:
	.loc 1 91 0
	lbz 8,3(10)
	lbz 10,0(9)
	rlwinm 8,8,0,31,31
	rlwinm 10,10,0,0,30
	or 10,10,8
	stb 10,0(9)
	.loc 1 93 0
	blr
.LVL7:
.L8:
	.loc 1 80 0
	li 3,0
.LVL8:
	.loc 1 94 0
	blr
	.cfi_endproc
.LFE66:
	.size	pushColorBuffer, .-pushColorBuffer
	.align 2
	.type	popColorBuffer, @function
popColorBuffer:
.LFB67:
	.loc 1 97 0
	.cfi_startproc
.LVL9:
	.loc 1 100 0
	lwz 9,0(3)
	addi 10,9,-44
	stw 10,0(3)
	.loc 1 102 0
	lbz 10,-28(9)
	lis 9,blend_type@ha
	stb 10,blend_type@l(9)
	.loc 1 103 0
	lwz 9,0(3)
	lbz 10,17(9)
	lis 9,blend_src@ha
	stb 10,blend_src@l(9)
	.loc 1 104 0
	lwz 9,0(3)
	lbz 10,18(9)
	lis 9,blend_dst@ha
	stb 10,blend_dst@l(9)
	.loc 1 105 0
	lwz 9,0(3)
	lbz 10,19(9)
	lis 9,blend_op@ha
	stb 10,blend_op@l(9)
	.loc 1 107 0
	lwz 9,0(3)
	lwz 10,40(9)
	lis 9,_clearcolor@ha
	stw 10,_clearcolor@l(9)
	.loc 1 108 0
	lis 10,color_write_mask@ha
	la 9,color_write_mask@l(10)
	lwz 8,0(3)
	lwz 8,0(8)
	rlwinm 8,8,5,31,31
	stb 8,color_write_mask@l(10)
	.loc 1 109 0
	lwz 10,0(3)
	lwz 10,0(10)
	rlwinm 10,10,6,31,31
	stb 10,1(9)
	.loc 1 110 0
	lwz 10,0(3)
	lwz 10,0(10)
	rlwinm 10,10,7,31,31
	stb 10,2(9)
	.loc 1 111 0
	lwz 10,0(3)
	lbz 10,0(10)
	rlwinm 10,10,0,31,31
	stb 10,3(9)
	blr
	.cfi_endproc
.LFE67:
	.size	popColorBuffer, .-popColorBuffer
	.align 2
	.type	popCurrent, @function
popCurrent:
.LFB69:
	.loc 1 162 0
	.cfi_startproc
.LVL10:
	.loc 1 165 0
	lwz 5,0(3)
	addi 9,5,-200
	.loc 1 167 0
	addi 10,5,-192
	.loc 1 165 0
	stw 9,0(3)
	.loc 1 167 0
	lis 9,_tempcolorelement@ha
	la 9,_tempcolorelement@l(9)
	lswi 5,10,16
	stswi 5,9,16
	.loc 1 168 0
	lis 9,_tempnormalelement@ha
	la 9,_tempnormalelement@l(9)
	lwz 10,0(3)
	addi 10,10,24
	lswi 5,10,12
	stswi 5,9,12
.LVL11:
	.loc 1 171 0
	li 10,8
	lis 8,_temptexcoordelement-8@ha
	mtctr 10
	la 8,_temptexcoordelement-8@l(8)
	li 9,0
.LVL12:
.L12:
	.loc 1 173 0 discriminator 2
	lwz 10,0(3)
	addi 7,9,4
	slwi 7,7,3
	.loc 1 171 0 discriminator 2
	addi 9,9,1
.LVL13:
	.loc 1 173 0 discriminator 2
	add 10,10,7
	lwz 11,8(10)
	lwz 10,4(10)
	stwu 10,8(8)
	stw 11,4(8)
	.loc 1 171 0 discriminator 2
	bdnz .L12
	.loc 1 175 0
	blr
	.cfi_endproc
.LFE69:
	.size	popCurrent, .-popCurrent
	.align 2
	.type	pushDepthBuffer, @function
pushDepthBuffer:
.LFB70:
	.loc 1 191 0
	.cfi_startproc
.LVL14:
	.loc 1 194 0
	lwz 10,0(3)
	addi 9,10,8
	cmplw 7,9,4
	bgt- 7,.L16
	.loc 1 196 0
	lis 9,depthtestenabled@ha
	lbz 8,0(10)
	lbz 9,depthtestenabled@l(9)
	rlwinm 8,8,0,25,31
	xori 9,9,1
	cntlzw 9,9
	srwi 9,9,5
	slwi 9,9,7
	or 9,8,9
	stb 9,0(10)
	.loc 1 197 0
	lis 9,depthupdate@ha
	lbz 9,depthupdate@l(9)
	lwz 10,0(3)
	xori 9,9,1
	lbz 8,0(10)
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 8,8,0,26,24
	slwi 9,9,6
	or 9,8,9
	stb 9,0(10)
	.loc 1 198 0
	lis 10,depthfunction@ha
	lwz 9,0(3)
	lwz 10,depthfunction@l(10)
	stb 10,1(9)
	.loc 1 199 0
	lwz 9,0(3)
	addi 10,9,8
	stw 10,0(3)
	lis 10,_cleardepth@ha
	.loc 1 201 0
	li 3,1
.LVL15:
	.loc 1 199 0
	lfs 0,_cleardepth@l(10)
	stfs 0,4(9)
	.loc 1 201 0
	blr
.LVL16:
.L16:
	.loc 1 194 0
	li 3,0
.LVL17:
	.loc 1 202 0
	blr
	.cfi_endproc
.LFE70:
	.size	pushDepthBuffer, .-pushDepthBuffer
	.align 2
	.type	popDepthBuffer, @function
popDepthBuffer:
.LFB71:
	.loc 1 205 0
	.cfi_startproc
.LVL18:
	.loc 1 208 0
	lwz 9,0(3)
	addi 10,9,-8
	stw 10,0(3)
	.loc 1 210 0
	lwz 10,-8(9)
	lis 9,depthtestenabled@ha
	srwi 10,10,31
	stb 10,depthtestenabled@l(9)
	.loc 1 211 0
	lwz 9,0(3)
	lwz 10,0(9)
	lis 9,depthupdate@ha
	rlwinm 10,10,2,31,31
	stb 10,depthupdate@l(9)
	.loc 1 212 0
	lwz 9,0(3)
	lbz 10,1(9)
	lis 9,depthfunction@ha
	stw 10,depthfunction@l(9)
	.loc 1 213 0
	lwz 9,0(3)
	lfs 0,4(9)
	lis 9,_cleardepth@ha
	stfs 0,_cleardepth@l(9)
	blr
	.cfi_endproc
.LFE71:
	.size	popDepthBuffer, .-popDepthBuffer
	.align 2
	.type	pushEval, @function
pushEval:
.LFB74:
	.loc 1 343 0
	.cfi_startproc
.LVL19:
	.loc 1 346 0
	lwz 3,0(3)
.LVL20:
	.loc 1 351 0
	subfc 3,3,4
	li 3,0
	adde 3,3,3
	blr
	.cfi_endproc
.LFE74:
	.size	pushEval, .-pushEval
	.align 2
	.type	popEval, @function
popEval:
.LFB75:
	.loc 1 354 0
	.cfi_startproc
.LVL21:
	blr
	.cfi_endproc
.LFE75:
	.size	popEval, .-popEval
	.align 2
	.type	pushFog, @function
pushFog:
.LFB76:
	.loc 1 386 0
	.cfi_startproc
.LVL22:
	.loc 1 389 0
	lwz 9,0(3)
	addi 10,9,24
	cmplw 7,10,4
	bgt- 7,.L22
	.loc 1 391 0
	lis 10,fog_enable@ha
	lbz 8,fog_enable@l(10)
	lbz 10,0(9)
	slwi 8,8,7
	rlwinm 10,10,0,25,31
	or 10,10,8
	stb 10,0(9)
	.loc 1 392 0
	lis 10,fog_mode@ha
	lwz 9,0(3)
	lbz 10,fog_mode@l(10)
	stb 10,1(9)
	.loc 1 394 0
	lis 10,fog_startz@ha
	lwz 9,0(3)
	lfs 0,fog_startz@l(10)
	.loc 1 395 0
	lis 10,fog_endz@ha
	.loc 1 394 0
	stfs 0,8(9)
	.loc 1 395 0
	lfs 0,fog_endz@l(10)
	lwz 9,0(3)
	stfs 0,12(9)
	.loc 1 397 0
	lwz 9,0(3)
	addi 10,9,24
	stw 10,0(3)
	lis 10,fog_color@ha
	.loc 1 399 0
	li 3,1
.LVL23:
	.loc 1 397 0
	lwz 10,fog_color@l(10)
	stw 10,20(9)
	.loc 1 399 0
	blr
.LVL24:
.L22:
	.loc 1 389 0
	li 3,0
.LVL25:
	.loc 1 400 0
	blr
	.cfi_endproc
.LFE76:
	.size	pushFog, .-pushFog
	.align 2
	.type	popFog, @function
popFog:
.LFB77:
	.loc 1 403 0
	.cfi_startproc
.LVL26:
	.loc 1 406 0
	lwz 9,0(3)
	addi 10,9,-24
	stw 10,0(3)
	.loc 1 408 0
	lwz 10,-24(9)
	lis 9,fog_enable@ha
	srwi 10,10,31
	stb 10,fog_enable@l(9)
	.loc 1 409 0
	lwz 9,0(3)
	lbz 10,1(9)
	lis 9,fog_mode@ha
	stb 10,fog_mode@l(9)
	.loc 1 411 0
	lwz 9,0(3)
	lfs 0,8(9)
	lis 9,fog_startz@ha
	stfs 0,fog_startz@l(9)
	.loc 1 412 0
	lwz 9,0(3)
	lfs 0,12(9)
	lis 9,fog_endz@ha
	stfs 0,fog_endz@l(9)
	.loc 1 414 0
	lwz 9,0(3)
	lwz 10,20(9)
	lis 9,fog_color@ha
	stw 10,fog_color@l(9)
	blr
	.cfi_endproc
.LFE77:
	.size	popFog, .-popFog
	.align 2
	.type	pushHint, @function
pushHint:
.LFB78:
	.loc 1 427 0
	.cfi_startproc
.LVL27:
	.loc 1 430 0
	lwz 3,0(3)
.LVL28:
	.loc 1 435 0
	subfc 3,3,4
	li 3,0
	adde 3,3,3
	blr
	.cfi_endproc
.LFE78:
	.size	pushHint, .-pushHint
	.align 2
	.type	popHint, @function
popHint:
.LFB79:
	.loc 1 438 0
	.cfi_startproc
.LVL29:
	blr
	.cfi_endproc
.LFE79:
	.size	popHint, .-popHint
	.align 2
	.type	popLighting, @function
popLighting:
.LFB81:
	.loc 1 497 0
	.cfi_startproc
.LVL30:
	.loc 1 497 0
	mflr 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stmw 29,12(1)
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.loc 1 511 0
	lis 29,lights@ha
	.loc 1 497 0
	stw 0,28(1)
	.cfi_offset 65, 4
	.loc 1 497 0
	mr 31,3
	.loc 1 509 0
	li 30,0
	.loc 1 511 0
	la 29,lights@l(29)
	.loc 1 500 0
	lwz 9,0(3)
	addi 10,9,-1412
	stw 10,0(3)
	.loc 1 502 0
	lwz 10,-1412(9)
	lis 9,copy_mat_enabled@ha
	srwi 10,10,31
	stb 10,copy_mat_enabled@l(9)
	.loc 1 503 0
	lwz 9,0(3)
	lwz 10,0(9)
	lis 9,lighting@ha
	rlwinm 10,10,2,31,31
	stb 10,lighting@l(9)
	.loc 1 504 0
	lwz 9,0(3)
	lwz 10,8(9)
	lis 9,copy_material@ha
	stw 10,copy_material@l(9)
	.loc 1 505 0
	lis 9,globAmbient@ha
	la 9,globAmbient@l(9)
	lwz 10,0(3)
	addi 10,10,12
	lswi 5,10,16
	stswi 5,9,16
.LVL31:
.L28:
	mulli 3,30,164
	.loc 1 511 0 discriminator 2
	lwz 4,0(31)
	li 5,164
	add 4,4,3
	add 3,29,3
	addi 4,4,28
	bl memcpy
.LVL32:
	.loc 1 509 0 discriminator 2
	cmpwi 7,30,7
	addi 30,30,1
.LVL33:
	bne+ 7,.L28
	.loc 1 514 0
	lwz 4,0(31)
	lis 3,curmat@ha
	la 3,curmat@l(3)
	li 5,68
	addi 4,4,1340
	bl memcpy
.LVL34:
	.loc 1 515 0
	addi 11,1,24
	b _restgpr_29_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 65
	.cfi_endproc
.LFE81:
	.size	popLighting, .-popLighting
	.align 2
	.type	pushLine, @function
pushLine:
.LFB82:
	.loc 1 531 0
	.cfi_startproc
.LVL35:
	.loc 1 534 0
	lwz 9,0(3)
	addi 10,9,16
	cmplw 7,10,4
	bgt- 7,.L32
	.loc 1 536 0
	stw 10,0(3)
	lis 10,line_width@ha
	.loc 1 538 0
	li 3,1
.LVL36:
	.loc 1 536 0
	lfs 0,line_width@l(10)
	stfs 0,12(9)
	.loc 1 538 0
	blr
.LVL37:
.L32:
	.loc 1 534 0
	li 3,0
.LVL38:
	.loc 1 539 0
	blr
	.cfi_endproc
.LFE82:
	.size	pushLine, .-pushLine
	.align 2
	.type	popLine, @function
popLine:
.LFB83:
	.loc 1 542 0
	.cfi_startproc
.LVL39:
	.loc 1 545 0
	lwz 9,0(3)
	addi 10,9,-16
	stw 10,0(3)
	.loc 1 547 0
	lfs 0,-4(9)
	lis 9,line_width@ha
	stfs 0,line_width@l(9)
	blr
	.cfi_endproc
.LFE83:
	.size	popLine, .-popLine
	.align 2
	.type	pushListBase, @function
pushListBase:
.LFB84:
	.loc 1 557 0
	.cfi_startproc
.LVL40:
	.loc 1 560 0
	lwz 9,0(3)
	addi 10,9,4
	cmplw 7,10,4
	bgt- 7,.L36
	.loc 1 562 0
	stw 10,0(3)
	lis 10,call_offset@ha
	.loc 1 564 0
	li 3,1
.LVL41:
	.loc 1 562 0
	lwz 10,call_offset@l(10)
	stw 10,0(9)
	.loc 1 564 0
	blr
.LVL42:
.L36:
	.loc 1 560 0
	li 3,0
.LVL43:
	.loc 1 565 0
	blr
	.cfi_endproc
.LFE84:
	.size	pushListBase, .-pushListBase
	.align 2
	.type	popListBase, @function
popListBase:
.LFB85:
	.loc 1 568 0
	.cfi_startproc
.LVL44:
	.loc 1 571 0
	lwz 9,0(3)
	addi 10,9,-4
	stw 10,0(3)
	.loc 1 573 0
	lwz 10,-4(9)
	lis 9,call_offset@ha
	stw 10,call_offset@l(9)
	blr
	.cfi_endproc
.LFE85:
	.size	popListBase, .-popListBase
	.align 2
	.type	pushPixelMode, @function
pushPixelMode:
.LFB86:
	.loc 1 605 0
	.cfi_startproc
.LVL45:
	.loc 1 608 0
	lwz 10,0(3)
	addi 9,10,64
	cmplw 7,9,4
	bgt- 7,.L40
	.loc 1 610 0
	lis 9,Trans@ha
	la 9,Trans@l(9)
	lwz 8,4(9)
	lwz 7,0(9)
	stw 8,8(10)
	stw 7,4(10)
	.loc 1 611 0
	lwz 10,0(3)
	lwz 7,8(9)
	lwz 8,12(9)
	stw 7,12(10)
	stw 8,16(10)
	.loc 1 612 0
	lwz 10,0(3)
	lwz 8,20(9)
	lwz 7,16(9)
	stw 8,24(10)
	stw 7,20(10)
	.loc 1 613 0
	lwz 8,0(3)
	lwz 10,24(9)
	lwz 11,28(9)
	stw 10,28(8)
	stw 11,32(8)
	.loc 1 614 0
	lwz 9,0(3)
	addi 10,9,64
	stw 10,0(3)
	lis 10,read_mode@ha
	.loc 1 616 0
	li 3,1
.LVL46:
	.loc 1 614 0
	lwz 10,read_mode@l(10)
	stw 10,60(9)
	.loc 1 616 0
	blr
.LVL47:
.L40:
	.loc 1 608 0
	li 3,0
.LVL48:
	.loc 1 617 0
	blr
	.cfi_endproc
.LFE86:
	.size	pushPixelMode, .-pushPixelMode
	.align 2
	.type	popPixelMode, @function
popPixelMode:
.LFB87:
	.loc 1 620 0
	.cfi_startproc
.LVL49:
	.loc 1 623 0
	lwz 10,0(3)
	addi 9,10,-64
	stw 9,0(3)
	.loc 1 625 0
	lis 9,Trans@ha
	la 9,Trans@l(9)
	lwz 7,-60(10)
	lwz 8,-56(10)
	stw 7,0(9)
	stw 8,4(9)
	.loc 1 626 0
	lwz 10,0(3)
	lwz 7,12(10)
	lwz 8,16(10)
	stw 7,8(9)
	stw 8,12(9)
	.loc 1 627 0
	lwz 10,0(3)
	lwz 7,20(10)
	lwz 8,24(10)
	stw 7,16(9)
	stw 8,20(9)
	.loc 1 628 0
	lwz 10,0(3)
	lwz 7,28(10)
	lwz 8,32(10)
	stw 7,24(9)
	stw 8,28(9)
	.loc 1 629 0
	lwz 9,0(3)
	lwz 10,60(9)
	lis 9,read_mode@ha
	stw 10,read_mode@l(9)
	blr
	.cfi_endproc
.LFE87:
	.size	popPixelMode, .-popPixelMode
	.align 2
	.type	pushPoint, @function
pushPoint:
.LFB88:
	.loc 1 642 0
	.cfi_startproc
.LVL50:
	.loc 1 645 0
	lwz 9,0(3)
	addi 10,9,8
	cmplw 7,10,4
	bgt- 7,.L44
	.loc 1 647 0
	stw 10,0(3)
	lis 10,point_size@ha
	.loc 1 649 0
	li 3,1
.LVL51:
	.loc 1 647 0
	lfs 0,point_size@l(10)
	stfs 0,4(9)
	.loc 1 649 0
	blr
.LVL52:
.L44:
	.loc 1 645 0
	li 3,0
.LVL53:
	.loc 1 650 0
	blr
	.cfi_endproc
.LFE88:
	.size	pushPoint, .-pushPoint
	.align 2
	.type	popPoint, @function
popPoint:
.LFB89:
	.loc 1 653 0
	.cfi_startproc
.LVL54:
	.loc 1 656 0
	lwz 9,0(3)
	addi 10,9,-8
	stw 10,0(3)
	.loc 1 658 0
	lfs 0,-4(9)
	lis 9,point_size@ha
	stfs 0,point_size@l(9)
	blr
	.cfi_endproc
.LFE89:
	.size	popPoint, .-popPoint
	.align 2
	.type	pushPolyStipple, @function
pushPolyStipple:
.LFB92:
	.loc 1 735 0
	.cfi_startproc
.LVL55:
	.loc 1 738 0
	lwz 9,0(3)
	addi 9,9,4
	cmplw 7,9,4
	bgt- 7,.L48
	.loc 1 740 0
	stw 9,0(3)
	.loc 1 742 0
	li 3,1
.LVL56:
	blr
.LVL57:
.L48:
	.loc 1 738 0
	li 3,0
.LVL58:
	.loc 1 743 0
	blr
	.cfi_endproc
.LFE92:
	.size	pushPolyStipple, .-pushPolyStipple
	.align 2
	.type	popPolyStipple, @function
popPolyStipple:
.LFB93:
	.loc 1 746 0
	.cfi_startproc
.LVL59:
	.loc 1 749 0
	lwz 9,0(3)
	addi 9,9,-4
	stw 9,0(3)
	blr
	.cfi_endproc
.LFE93:
	.size	popPolyStipple, .-popPolyStipple
	.align 2
	.type	pushScissor, @function
pushScissor:
.LFB94:
	.loc 1 761 0
	.cfi_startproc
.LVL60:
	.loc 1 764 0
	lwz 10,0(3)
	addi 9,10,20
	cmplw 7,9,4
	bgt- 7,.L52
	.loc 1 766 0
	lis 9,scissor_test@ha
	lbz 8,0(10)
	lbz 9,scissor_test@l(9)
	rlwinm 8,8,0,25,31
	xori 9,9,1
	cntlzw 9,9
	srwi 9,9,5
	slwi 9,9,7
	or 9,8,9
	stb 9,0(10)
	.loc 1 767 0
	lis 10,scissorInfo@ha
	la 10,scissorInfo@l(10)
	lwz 5,0(3)
	addi 9,5,20
	stw 9,0(3)
	addi 9,5,4
	.loc 1 769 0
	li 3,1
.LVL61:
	.loc 1 767 0
	lswi 5,10,16
	stswi 5,9,16
	.loc 1 769 0
	blr
.LVL62:
.L52:
	.loc 1 764 0
	li 3,0
.LVL63:
	.loc 1 770 0
	blr
	.cfi_endproc
.LFE94:
	.size	pushScissor, .-pushScissor
	.align 2
	.type	popScissor, @function
popScissor:
.LFB95:
	.loc 1 773 0
	.cfi_startproc
.LVL64:
	.loc 1 776 0
	lwz 9,0(3)
	addi 10,9,-20
	stw 10,0(3)
	.loc 1 778 0
	lwz 10,-20(9)
	lis 9,scissor_test@ha
	srwi 10,10,31
	stb 10,scissor_test@l(9)
	.loc 1 779 0
	lis 9,scissorInfo@ha
	la 9,scissorInfo@l(9)
	lwz 10,0(3)
	addi 10,10,4
	lswi 5,10,16
	stswi 5,9,16
	blr
	.cfi_endproc
.LFE95:
	.size	popScissor, .-popScissor
	.align 2
	.type	pushStencil, @function
pushStencil:
.LFB96:
	.loc 1 800 0
	.cfi_startproc
.LVL65:
	.loc 1 803 0
	lwz 9,0(3)
	addi 9,9,32
	cmplw 7,9,4
	bgt- 7,.L56
	.loc 1 805 0
	stw 9,0(3)
	.loc 1 807 0
	li 3,1
.LVL66:
	blr
.LVL67:
.L56:
	.loc 1 803 0
	li 3,0
.LVL68:
	.loc 1 808 0
	blr
	.cfi_endproc
.LFE96:
	.size	pushStencil, .-pushStencil
	.align 2
	.type	popStencil, @function
popStencil:
.LFB97:
	.loc 1 811 0
	.cfi_startproc
.LVL69:
	.loc 1 814 0
	lwz 9,0(3)
	addi 9,9,-32
	stw 9,0(3)
	blr
	.cfi_endproc
.LFE97:
	.size	popStencil, .-popStencil
	.align 2
	.type	popTexture, @function
popTexture:
.LFB99:
	.loc 1 853 0
	.cfi_startproc
.LVL70:
	mflr 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stmw 28,8(1)
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	lis 29,_temptexcoordelement-8@ha
	stw 0,28(1)
	.cfi_offset 65, 4
	.loc 1 863 0
	lis 28,glTexEnvs@ha
	.loc 1 853 0
	mr 30,3
	la 29,_temptexcoordelement-8@l(29)
	.loc 1 856 0
	lwz 9,0(3)
	.loc 1 860 0
	li 31,0
	.loc 1 863 0
	la 28,glTexEnvs@l(28)
	.loc 1 856 0
	addi 9,9,-928
	stw 9,0(3)
.LVL71:
.L60:
	.loc 1 862 0 discriminator 2
	lwz 9,0(30)
	slwi 10,31,3
	mulli 3,31,108
	.loc 1 863 0 discriminator 2
	li 5,108
	.loc 1 862 0 discriminator 2
	add 9,9,10
	lwz 10,0(9)
	lwz 11,4(9)
	stwu 10,8(29)
	stw 11,4(29)
	.loc 1 863 0 discriminator 2
	lwz 4,0(30)
	add 4,4,3
	add 3,28,3
	addi 4,4,64
	bl memcpy
.LVL72:
	.loc 1 860 0 discriminator 2
	cmpwi 7,31,7
	addi 31,31,1
.LVL73:
	bne+ 7,.L60
	.loc 1 865 0
	addi 11,1,24
	b _restgpr_28_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 65
	.cfi_endproc
.LFE99:
	.size	popTexture, .-popTexture
	.align 2
	.type	pushTransform, @function
pushTransform:
.LFB100:
	.loc 1 886 0
	.cfi_startproc
.LVL74:
	.loc 1 889 0
	lwz 9,0(3)
	addi 10,9,104
	cmplw 7,10,4
	bgt- 7,.L64
	.loc 1 891 0
	stw 10,0(3)
	lis 10,cur_mode@ha
	.loc 1 893 0
	li 3,1
.LVL75:
	.loc 1 891 0
	lwz 10,cur_mode@l(10)
	stw 10,100(9)
	.loc 1 893 0
	blr
.LVL76:
.L64:
	.loc 1 889 0
	li 3,0
.LVL77:
	.loc 1 894 0
	blr
	.cfi_endproc
.LFE100:
	.size	pushTransform, .-pushTransform
	.align 2
	.type	popTransform, @function
popTransform:
.LFB101:
	.loc 1 897 0
	.cfi_startproc
.LVL78:
	.loc 1 900 0
	lwz 9,0(3)
	addi 10,9,-104
	stw 10,0(3)
	.loc 1 902 0
	lwz 10,-4(9)
	lis 9,cur_mode@ha
	stw 10,cur_mode@l(9)
	blr
	.cfi_endproc
.LFE101:
	.size	popTransform, .-popTransform
	.align 2
	.type	pushViewport, @function
pushViewport:
.LFB102:
	.loc 1 914 0
	.cfi_startproc
.LVL79:
	.loc 1 917 0
	lwz 9,0(3)
	addi 10,9,24
	cmplw 7,10,4
	bgt- 7,.L68
	.loc 1 919 0
	lis 10,normNear@ha
	lfs 0,normNear@l(10)
	.loc 1 920 0
	lis 10,normFar@ha
	.loc 1 919 0
	stfs 0,0(9)
	.loc 1 920 0
	lwz 9,0(3)
	lfs 0,normFar@l(10)
	.loc 1 921 0
	lis 10,viewPort@ha
	la 10,viewPort@l(10)
	.loc 1 920 0
	stfs 0,4(9)
	.loc 1 921 0
	lwz 5,0(3)
	addi 9,5,24
	stw 9,0(3)
	addi 9,5,8
	.loc 1 923 0
	li 3,1
.LVL80:
	.loc 1 921 0
	lswi 5,10,16
	stswi 5,9,16
	.loc 1 923 0
	blr
.LVL81:
.L68:
	.loc 1 917 0
	li 3,0
.LVL82:
	.loc 1 924 0
	blr
	.cfi_endproc
.LFE102:
	.size	pushViewport, .-pushViewport
	.align 2
	.type	popViewport, @function
popViewport:
.LFB103:
	.loc 1 927 0
	.cfi_startproc
.LVL83:
	.loc 1 930 0
	lwz 9,0(3)
	addi 10,9,-24
	stw 10,0(3)
	.loc 1 932 0
	lfs 0,-24(9)
	lis 9,normNear@ha
	stfs 0,normNear@l(9)
	.loc 1 933 0
	lwz 9,0(3)
	lfs 0,4(9)
	lis 9,normFar@ha
	stfs 0,normFar@l(9)
	.loc 1 934 0
	lis 9,viewPort@ha
	la 9,viewPort@l(9)
	lwz 10,0(3)
	addi 10,10,8
	lswi 5,10,16
	stswi 5,9,16
	blr
	.cfi_endproc
.LFE103:
	.size	popViewport, .-popViewport
	.align 2
	.type	pushPixelStore, @function
pushPixelStore:
.LFB112:
	.loc 1 1127 0
	.cfi_startproc
.LVL84:
	.loc 1 1130 0
	lwz 11,0(3)
	addi 9,11,40
	cmplw 7,9,4
	bgt- 7,.L72
	.loc 1 1132 0
	lis 4,pack@ha
.LVL85:
	la 4,pack@l(4)
	lswi 5,4,20
	stswi 5,11,20
	.loc 1 1133 0
	lwz 5,0(3)
	addi 9,5,40
	addi 4,5,20
	stw 9,0(3)
	lis 3,unpack@ha
.LVL86:
	la 3,unpack@l(3)
	lswi 5,3,20
	stswi 5,4,20
	.loc 1 1135 0
	li 3,1
	blr
.LVL87:
.L72:
	.loc 1 1130 0
	li 3,0
.LVL88:
	.loc 1 1136 0
	blr
	.cfi_endproc
.LFE112:
	.size	pushPixelStore, .-pushPixelStore
	.align 2
	.type	popPixelStore, @function
popPixelStore:
.LFB113:
	.loc 1 1139 0
	.cfi_startproc
.LVL89:
	.loc 1 1142 0
	lwz 4,0(3)
	.loc 1 1144 0
	lis 11,pack@ha
	la 11,pack@l(11)
	.loc 1 1142 0
	addi 4,4,-40
	stw 4,0(3)
	.loc 1 1144 0
	lswi 5,4,20
	stswi 5,11,20
	.loc 1 1145 0
	lis 4,unpack@ha
	la 4,unpack@l(4)
	lwz 3,0(3)
.LVL90:
	addi 3,3,20
	lswi 5,3,20
	stswi 5,4,20
	blr
	.cfi_endproc
.LFE113:
	.size	popPixelStore, .-popPixelStore
	.align 2
	.type	popVertexArray, @function
popVertexArray:
.LFB115:
	.loc 1 1179 0
	.cfi_startproc
.LVL91:
	.loc 1 1182 0
	lwz 4,0(3)
	.loc 1 1184 0
	lis 11,norm@ha
	la 11,norm@l(11)
	.loc 1 1182 0
	addi 4,4,-220
	stw 4,0(3)
	.loc 1 1184 0
	lswi 5,4,20
	stswi 5,11,20
	.loc 1 1185 0
	lis 4,vert@ha
	la 4,vert@l(4)
	lwz 11,0(3)
	addi 11,11,20
	lswi 5,11,20
	stswi 5,4,20
	.loc 1 1186 0
	lis 4,color@ha
	la 4,color@l(4)
	lwz 11,0(3)
	addi 11,11,200
	lswi 5,11,20
	stswi 5,4,20
.LVL92:
	.loc 1 1191 0
	lis 9,tex@ha
	la 0,tex@l(9)
	li 9,8
	mtctr 9
	.loc 1 1189 0
	li 4,0
.LVL93:
.L76:
	mulli 9,4,20
	.loc 1 1191 0 discriminator 2
	lwz 12,0(3)
	.loc 1 1189 0 discriminator 2
	addi 4,4,1
.LVL94:
	.loc 1 1191 0 discriminator 2
	add 12,12,9
	add 11,0,9
	addi 12,12,40
	lswi 5,12,20
	stswi 5,11,20
	.loc 1 1189 0 discriminator 2
	bdnz .L76
	.loc 1 1193 0
	blr
	.cfi_endproc
.LFE115:
	.size	popVertexArray, .-popVertexArray
	.align 2
	.type	popPolygon, @function
popPolygon:
.LFB91:
	.loc 1 717 0
	.cfi_startproc
.LVL95:
	mflr 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	.cfi_offset 31, -4
	mr 31,3
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 720 0
	lwz 9,0(3)
	addi 10,9,-24
	stw 10,0(3)
	.loc 1 722 0
	lwz 3,-20(9)
.LVL96:
	bl glCullFace
.LVL97:
	.loc 1 724 0
	lwz 9,0(31)
	.loc 1 726 0
	addi 11,1,16
	.loc 1 724 0
	lwz 10,0(9)
	andis. 9,10,16384
	lis 9,gxwinding@ha
	mfcr 10
	rlwinm 10,10,3,1
	subfic 10,10,2305
	stw 10,gxwinding@l(9)
	.loc 1 725 0
	lwz 9,0(31)
	lwz 10,0(9)
	lis 9,gxcullfaceanabled@ha
	.loc 1 726 0
	.loc 1 725 0
	srwi 10,10,31
	stb 10,gxcullfaceanabled@l(9)
	.loc 1 726 0
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
	.cfi_endproc
.LFE91:
	.size	popPolygon, .-popPolygon
	.align 2
	.type	popEnable, @function
popEnable:
.LFB73:
	.loc 1 305 0
	.cfi_startproc
.LVL98:
	.loc 1 308 0
	lwz 9,0(3)
	.loc 1 322 0
	li 5,8
	mtctr 5
	lis 6,lights@ha
	.loc 1 308 0
	addi 10,9,-8
	stw 10,0(3)
	.loc 1 310 0
	lwz 10,-8(9)
	lis 9,blend_type@ha
	rlwinm 10,10,3,31,31
	stb 10,blend_type@l(9)
	.loc 1 311 0
	lwz 9,0(3)
	lwz 10,0(9)
	lis 9,copy_mat_enabled@ha
	rlwinm 10,10,4,31,31
	stb 10,copy_mat_enabled@l(9)
	.loc 1 312 0
	lwz 9,0(3)
	lwz 10,0(9)
	lis 9,gxcullfaceanabled@ha
	rlwinm 10,10,5,31,31
	stb 10,gxcullfaceanabled@l(9)
	.loc 1 313 0
	lwz 9,0(3)
	lwz 10,0(9)
	lis 9,depthtestenabled@ha
	rlwinm 10,10,6,31,31
	stb 10,depthtestenabled@l(9)
	.loc 1 314 0
	lwz 9,0(3)
	lbz 10,0(9)
	lis 9,fog_enable@ha
	rlwinm 10,10,0,31,31
	stb 10,fog_enable@l(9)
	.loc 1 317 0
	li 10,0
	lwz 9,0(3)
	stb 10,2(9)
.LVL99:
	.loc 1 318 0
	li 9,0
	.loc 1 320 0
	li 10,1
.LVL100:
.L85:
	lwz 8,0(3)
	slw 7,10,9
	lbz 8,2(8)
	and. 5,7,8
	beq- 0,.L83
	mulli 8,9,164
	.loc 1 322 0
	la 7,lights@l(6)
	stbx 10,7,8
.L83:
	.loc 1 318 0
	addi 9,9,1
.LVL101:
	bdnz .L85
	.loc 1 326 0
	lwz 9,0(3)
.LVL102:
	lwz 10,0(9)
	lis 9,lighting@ha
	rlwinm 10,10,25,31,31
	stb 10,lighting@l(9)
	.loc 1 327 0
	lwz 9,0(3)
	lwz 10,4(9)
	lis 9,scissor_test@ha
	rlwinm 10,10,5,31,31
	stb 10,scissor_test@l(9)
.LVL103:
	.loc 1 329 0
	lwz 9,0(3)
	lbz 3,4(9)
.LVL104:
	.loc 1 331 0
	.loc 1 330 0
	rlwinm 3,3,0,31,31
	b _glSetEnableTex
.LVL105:
	.cfi_endproc
.LFE73:
	.size	popEnable, .-popEnable
	.align 2
	.type	resizeStack, @function
resizeStack:
.LFB105:
	.loc 1 990 0
	.cfi_startproc
.LVL106:
	mflr 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stmw 30,8(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,3
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 995 0
	li 30,1024
	.loc 1 993 0
	lwz 9,76(3)
	cmpwi 7,9,0
	beq- 7,.L91
	.loc 1 999 0
	slwi 30,9,1
.LVL107:
.L91:
	.loc 1 1002 0
	lwz 3,68(31)
.LVL108:
	li 4,1024
	bl realloc
.LVL109:
	.loc 1 1004 0
	cmpwi 0,3,0
	beq- 0,.L94
.LBB4:
	.loc 1 1006 0
	lwz 8,72(31)
	lwz 10,68(31)
	.loc 1 1008 0
	stw 30,76(31)
	.loc 1 1006 0
	subf 10,10,8
.LVL110:
	.loc 1 1007 0
	stw 3,68(31)
	.loc 1 1011 0
	add 9,3,10
	.loc 1 1014 0
	li 3,1
.LVL111:
	.loc 1 1011 0
	stw 9,72(31)
	.loc 1 1014 0
	b .L92
.LVL112:
.L94:
.LBE4:
	.loc 1 1018 0
	li 3,0
.LVL113:
.L92:
	.loc 1 1020 0
	addi 11,1,16
	b _restgpr_30_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 65
	.cfi_endproc
.LFE105:
	.size	resizeStack, .-resizeStack
	.align 2
	.type	push, @function
push:
.LFB108:
	.loc 1 1038 0
	.cfi_startproc
.LVL114:
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
	mr 31,3
	stw 0,52(1)
	.cfi_offset 65, 4
	.loc 1 1041 0
	lwz 9,64(3)
	cmpwi 7,9,15
	ble+ 7,.L98
	.loc 1 1043 0
	lis 4,.LC0@ha
.LVL115:
	li 3,1283
.LVL116:
	la 4,.LC0@l(4)
	li 5,1043
.LVL117:
	b .L111
.LVL118:
.L98:
	.loc 1 1047 0
	lwz 9,72(3)
	mr 28,1
	mr 26,5
	mr 27,6
	stwu 9,8(28)
.LVL119:
	mr 30,4
	.loc 1 1052 0
	li 29,0
	b .L100
.LVL120:
.L102:
	addi 29,29,1
.LVL121:
	addi 30,30,12
.LVL122:
.L100:
	.loc 1 1052 0 is_stmt 0 discriminator 1
	cmplw 7,29,26
	beq- 7,.L112
	.loc 1 1054 0 is_stmt 1
	lwz 9,0(30)
	and 10,9,27
	cmplw 7,10,9
	bne+ 7,.L102
.L104:
.LVL123:
.LBB5:
.LBB6:
	.loc 1 986 0
	lwz 4,68(31)
.LBE6:
.LBE5:
	.loc 1 1056 0
	mr 3,28
.LBB8:
.LBB7:
	.loc 1 986 0
	lwz 10,76(31)
.LBE7:
.LBE8:
	.loc 1 1056 0
	lwz 9,4(30)
	add 4,4,10
	mtctr 9
	bctrl
.LVL124:
	cmpwi 7,3,0
	bne- 7,.L102
	.loc 1 1059 0
	mr 3,31
	bl resizeStack
.LVL125:
	cmpwi 7,3,0
	bne+ 7,.L104
	.loc 1 1062 0
	lis 4,.LC0@ha
	li 3,1283
	la 4,.LC0@l(4)
	li 5,1062
.LVL126:
.L111:
	bl _glSetErrorEx
.LVL127:
	.loc 1 1063 0
	b .L97
.LVL128:
.L112:
	.loc 1 1072 0
	lwz 9,8(1)
	stw 9,72(31)
	.loc 1 1073 0
	lwz 9,64(31)
	addi 10,9,1
	slwi 9,9,2
	stw 10,64(31)
	stwx 27,31,9
.LVL129:
.L97:
	.loc 1 1074 0
	addi 11,1,48
	b _restgpr_26_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 65
	.cfi_endproc
.LFE108:
	.size	push, .-push
	.align 2
	.type	pushCurrent, @function
pushCurrent:
.LFB68:
	.loc 1 142 0
	.cfi_startproc
.LVL130:
	.loc 1 145 0
	lwz 5,0(3)
	addi 9,5,200
	cmplw 7,9,4
	bgt- 7,.L117
	.loc 1 147 0
	lis 10,_tempcolorelement@ha
	addi 9,5,8
	la 10,_tempcolorelement@l(10)
	lswi 5,10,16
	stswi 5,9,16
	.loc 1 148 0
	lis 10,_tempnormalelement@ha
	la 10,_tempnormalelement@l(10)
	lwz 9,0(3)
	addi 9,9,24
	lswi 5,10,12
	stswi 5,9,12
.LVL131:
.LBB11:
.LBB12:
	.loc 1 151 0
	li 6,8
	lis 10,_temptexcoordelement-8@ha
	mtctr 6
	la 10,_temptexcoordelement-8@l(10)
	li 9,0
.LVL132:
.L116:
	.loc 1 153 0
	lwz 8,0(3)
	addi 7,9,4
	slwi 7,7,3
	addi 10,10,8
	add 8,8,7
	lwz 6,0(10)
	lwz 7,4(10)
	.loc 1 151 0
	addi 9,9,1
.LVL133:
	.loc 1 153 0
	stw 6,4(8)
	stw 7,8(8)
	.loc 1 151 0
	bdnz .L116
	.loc 1 156 0
	lwz 9,0(3)
.LVL134:
	addi 9,9,200
	stw 9,0(3)
	li 3,1
.LVL135:
	blr
.LVL136:
.L117:
.LBE12:
.LBE11:
	.loc 1 145 0
	li 3,0
.LVL137:
	.loc 1 159 0
	blr
	.cfi_endproc
.LFE68:
	.size	pushCurrent, .-pushCurrent
	.align 2
	.type	pushLighting, @function
pushLighting:
.LFB80:
	.loc 1 474 0
	.cfi_startproc
.LVL138:
	mflr 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stmw 29,12(1)
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,3
.LVL139:
	stw 0,28(1)
	.cfi_offset 65, 4
	.loc 1 477 0
	lwz 9,0(3)
	li 3,0
.LVL140:
	addi 10,9,1412
	cmplw 7,10,4
	bgt- 7,.L120
	.loc 1 479 0
	lis 10,copy_mat_enabled@ha
	.loc 1 488 0
	lis 29,lights@ha
	.loc 1 479 0
	lbz 8,copy_mat_enabled@l(10)
	.loc 1 486 0
	li 30,0
	.loc 1 479 0
	lbz 10,0(9)
	.loc 1 488 0
	la 29,lights@l(29)
	.loc 1 479 0
	slwi 8,8,7
	rlwinm 10,10,0,25,31
	or 10,10,8
	stb 10,0(9)
	.loc 1 480 0
	lis 10,lighting@ha
	lwz 9,0(31)
	lbz 8,lighting@l(10)
	lbz 10,0(9)
	rlwinm 8,8,6,25,25
	rlwinm 10,10,0,26,24
	or 10,10,8
	stb 10,0(9)
	.loc 1 481 0
	lis 10,copy_material@ha
	lwz 9,0(31)
	lwz 10,copy_material@l(10)
	stw 10,8(9)
	.loc 1 482 0
	lis 10,globAmbient@ha
	la 10,globAmbient@l(10)
	lwz 9,0(31)
	addi 9,9,12
	lswi 5,10,16
	stswi 5,9,16
.LVL141:
.L122:
	.loc 1 488 0 discriminator 2
	mulli 4,30,164
	lwz 3,0(31)
	li 5,164
	add 3,3,4
	add 4,29,4
	addi 3,3,28
	bl memcpy
.LVL142:
	.loc 1 486 0 discriminator 2
	cmpwi 7,30,7
	addi 30,30,1
.LVL143:
	bne+ 7,.L122
.LVL144:
.LBB15:
.LBB16:
	.loc 1 491 0
	lwz 3,0(31)
	lis 4,curmat@ha
	la 4,curmat@l(4)
	li 5,68
	addi 9,3,1412
	addi 3,3,1340
	stw 9,0(31)
	bl memcpy
.LVL145:
	li 3,1
.LVL146:
.L120:
.LBE16:
.LBE15:
	.loc 1 494 0
	addi 11,1,24
	b _restgpr_29_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 65
	.cfi_endproc
.LFE80:
	.size	pushLighting, .-pushLighting
	.align 2
	.type	pushPolygon, @function
pushPolygon:
.LFB90:
	.loc 1 691 0
	.cfi_startproc
.LVL147:
	.loc 1 694 0
	lwz 9,0(3)
	addi 10,9,24
	cmplw 7,10,4
	bgt- 7,.L131
	.loc 1 696 0
	lis 10,cull_mode@ha
	lbz 10,cull_mode@l(10)
	cmpwi 7,10,2
	beq- 7,.L128
	cmpwi 7,10,3
	beq- 7,.L129
	cmpwi 7,10,1
	bne+ 7,.L127
	.loc 1 699 0
	li 10,1028
	b .L132
.L128:
	.loc 1 702 0
	li 10,1029
	b .L132
.L129:
	.loc 1 705 0
	li 10,1032
.L132:
	stw 10,4(9)
.L127:
.LVL148:
.LBB19:
.LBB20:
	.loc 1 710 0
	lis 9,gxwinding@ha
	lwz 10,0(3)
	lwz 9,gxwinding@l(9)
	lbz 8,0(10)
	xori 9,9,2305
	cntlzw 9,9
	rlwinm 8,8,0,26,24
	srwi 9,9,5
	slwi 9,9,6
	or 9,8,9
	stb 9,0(10)
	.loc 1 711 0
	lwz 9,0(3)
	addi 10,9,24
	stw 10,0(3)
	lis 10,gxcullfaceanabled@ha
	li 3,1
.LVL149:
	lbz 8,gxcullfaceanabled@l(10)
	lbz 10,0(9)
	slwi 8,8,7
	rlwinm 10,10,0,25,31
	or 10,10,8
	stb 10,0(9)
	blr
.LVL150:
.L131:
.LBE20:
.LBE19:
	.loc 1 694 0
	li 3,0
.LVL151:
	.loc 1 714 0
	blr
	.cfi_endproc
.LFE90:
	.size	pushPolygon, .-pushPolygon
	.align 2
	.type	pushTexture, @function
pushTexture:
.LFB98:
	.loc 1 834 0
	.cfi_startproc
.LVL152:
	mflr 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stmw 28,8(1)
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 31,3
	stw 0,28(1)
	.cfi_offset 65, 4
	.loc 1 837 0
	lwz 9,0(3)
	li 3,0
.LVL153:
	addi 9,9,928
	cmplw 7,9,4
	bgt- 7,.L134
	lis 29,_temptexcoordelement-8@ha
.LBB23:
.LBB24:
	.loc 1 844 0
	lis 28,glTexEnvs@ha
	la 29,_temptexcoordelement-8@l(29)
.LBE24:
.LBE23:
	.loc 1 837 0
	li 30,0
.LBB26:
.LBB25:
	.loc 1 844 0
	la 28,glTexEnvs@l(28)
.LVL154:
.L136:
	.loc 1 843 0
	lwz 9,0(31)
	slwi 10,30,3
	addi 29,29,8
	lwz 11,4(29)
	add 9,9,10
	lwz 10,0(29)
	stw 11,4(9)
	.loc 1 844 0
	mulli 4,30,108
	.loc 1 843 0
	stw 10,0(9)
	.loc 1 844 0
	li 5,108
	lwz 3,0(31)
	add 3,3,4
	add 4,28,4
	addi 3,3,64
	bl memcpy
.LVL155:
	.loc 1 841 0
	cmpwi 7,30,7
	addi 30,30,1
.LVL156:
	bne+ 7,.L136
	.loc 1 847 0
	lwz 9,0(31)
	li 3,1
	addi 9,9,928
	stw 9,0(31)
.LVL157:
.L134:
.LBE25:
.LBE26:
	.loc 1 850 0
	addi 11,1,24
	b _restgpr_28_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 65
	.cfi_endproc
.LFE98:
	.size	pushTexture, .-pushTexture
	.align 2
	.type	pushVertexArray, @function
pushVertexArray:
.LFB114:
	.loc 1 1158 0
	.cfi_startproc
.LVL158:
	.loc 1 1161 0
	lwz 11,0(3)
	addi 9,11,220
	cmplw 7,9,4
	bgt- 7,.L143
	.loc 1 1163 0
	lis 4,norm@ha
.LVL159:
	la 4,norm@l(4)
	lswi 5,4,20
	stswi 5,11,20
	.loc 1 1164 0
	lis 11,vert@ha
	la 11,vert@l(11)
	lwz 4,0(3)
	addi 4,4,20
	lswi 5,11,20
	stswi 5,4,20
	.loc 1 1165 0
	lis 11,color@ha
	la 11,color@l(11)
	lwz 4,0(3)
	addi 4,4,200
	lswi 5,11,20
	stswi 5,4,20
.LVL160:
.LBB29:
.LBB30:
	.loc 1 1170 0
	lis 9,tex@ha
	la 0,tex@l(9)
	li 9,8
	mtctr 9
	.loc 1 1168 0
	li 4,0
.LVL161:
.L142:
	.loc 1 1170 0
	mulli 9,4,20
	lwz 11,0(3)
	.loc 1 1168 0
	addi 4,4,1
.LVL162:
	.loc 1 1170 0
	add 11,11,9
	add 12,0,9
	addi 11,11,40
	lswi 5,12,20
	stswi 5,11,20
	.loc 1 1168 0
	bdnz .L142
	.loc 1 1173 0
	lwz 9,0(3)
	addi 9,9,220
	stw 9,0(3)
	li 3,1
.LVL163:
	blr
.LVL164:
.L143:
.LBE30:
.LBE29:
	.loc 1 1161 0
	li 3,0
.LVL165:
	.loc 1 1176 0
	blr
	.cfi_endproc
.LFE114:
	.size	pushVertexArray, .-pushVertexArray
	.align 2
	.type	pushEnable, @function
pushEnable:
.LFB72:
	.loc 1 276 0
	.cfi_startproc
	.loc 1 279 0
	lwz 10,0(3)
	addi 9,10,8
	cmplw 7,9,4
	bgt- 7,.L150
	.loc 1 281 0
	lis 9,blend_type@ha
	lbz 8,0(10)
	lbz 9,blend_type@l(9)
	.loc 1 291 0
	lis 7,lights@ha
	.loc 1 281 0
	rlwinm 8,8,0,27,25
	.loc 1 293 0
	li 6,1
	.loc 1 281 0
	xori 9,9,1
	cntlzw 9,9
	srwi 9,9,5
	slwi 9,9,5
	or 9,8,9
	stb 9,0(10)
	.loc 1 282 0
	lis 10,copy_mat_enabled@ha
	lwz 9,0(3)
	lbz 8,copy_mat_enabled@l(10)
	lbz 10,0(9)
	rlwinm 8,8,4,27,27
	rlwinm 10,10,0,28,26
	or 10,10,8
	stb 10,0(9)
	.loc 1 283 0
	lis 10,gxcullfaceanabled@ha
	lwz 9,0(3)
	lbz 8,gxcullfaceanabled@l(10)
	lbz 10,0(9)
	rlwinm 8,8,3,28,28
	rlwinm 10,10,0,29,27
	or 10,10,8
	stb 10,0(9)
	.loc 1 284 0
	lis 9,depthtestenabled@ha
	lbz 9,depthtestenabled@l(9)
	lwz 10,0(3)
	xori 9,9,1
	lbz 8,0(10)
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 8,8,0,30,28
	slwi 9,9,2
	or 9,8,9
	stb 9,0(10)
	.loc 1 285 0
	lis 10,fog_enable@ha
	lwz 9,0(3)
	lbz 8,fog_enable@l(10)
	lbz 10,0(9)
	rlwinm 8,8,0,31,31
	rlwinm 10,10,0,0,30
	or 10,10,8
	stb 10,0(9)
	.loc 1 288 0
	li 10,0
	lwz 9,0(3)
	stb 10,2(9)
	.loc 1 293 0
	li 10,8
	mtctr 10
	.loc 1 289 0
	li 9,0
.L149:
	mulli 10,9,164
	.loc 1 291 0
	la 8,lights@l(7)
	lbzx 10,8,10
	cmpwi 7,10,0
	beq- 7,.L147
	.loc 1 293 0
	lwz 10,0(3)
	slw 8,6,9
	lbz 5,2(10)
	or 8,8,5
	stb 8,2(10)
.L147:
	.loc 1 289 0
	addi 9,9,1
	bdnz .L149
	.loc 1 276 0
	mflr 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB33:
.LBB34:
	.loc 1 297 0
	lis 10,lighting@ha
.LBE34:
.LBE33:
	.loc 1 276 0
	stw 31,12(1)
	stw 0,20(1)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
.LBB38:
.LBB35:
	.loc 1 297 0
	lbz 8,lighting@l(10)
	lwz 9,0(3)
	slwi 8,8,7
	lbz 10,3(9)
	rlwinm 10,10,0,25,31
	or 10,10,8
	stb 10,3(9)
	.loc 1 298 0
	lis 9,scissor_test@ha
	lbz 9,scissor_test@l(9)
	lwz 10,0(3)
	xori 9,9,1
	lbz 8,4(10)
	cntlzw 9,9
	srwi 9,9,5
	rlwinm 8,8,0,29,27
	slwi 9,9,3
	or 9,8,9
	stb 9,4(10)
	.loc 1 299 0
	lwz 31,0(3)
	addi 9,31,8
	stw 9,0(3)
	lis 9,cur_tex@ha
	lwz 3,cur_tex@l(9)
	bl _glGetEnableTex
	lbz 9,4(31)
	rlwinm 3,3,0,31,31
.LBE35:
.LBE38:
	.loc 1 302 0
	addi 11,1,16
.LBB39:
.LBB36:
	.loc 1 299 0
	rlwinm 9,9,0,0,30
	or 3,9,3
	stb 3,4(31)
.LBE36:
.LBE39:
	.loc 1 302 0
.LBB40:
.LBB37:
	.loc 1 299 0
	li 3,1
.LBE37:
.LBE40:
	.loc 1 302 0
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
.L150:
	.cfi_def_cfa_offset 0
	.loc 1 279 0
	li 3,0
	blr
	.cfi_endproc
.LFE72:
	.size	pushEnable, .-pushEnable
	.align 2
	.type	pop, @function
pop:
.LFB109:
	.loc 1 1077 0
	.cfi_startproc
	.loc 1 1080 0
	lwz 9,64(3)
	cmpwi 7,9,0
	bne+ 7,.L158
.LBB43:
.LBB44:
	.loc 1 1082 0
	lis 4,.LC0@ha
	li 3,1284
	la 4,.LC0@l(4)
	li 5,1082
	b _glSetErrorEx
.L158:
.LBE44:
.LBE43:
	.loc 1 1077 0
	mflr 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 1086 0
	addi 9,9,-1
	.loc 1 1077 0
	stmw 28,8(1)
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mulli 31,5,12
	stw 0,28(1)
	.cfi_offset 65, 4
	.loc 1 1093 0
	addi 30,5,-1
	.loc 1 1086 0
	stw 9,64(3)
	.loc 1 1088 0
	slwi 9,9,2
	add 31,4,31
	.loc 1 1097 0
	addi 28,3,72
	.loc 1 1088 0
	lwzx 29,3,9
.L159:
	.loc 1 1093 0 discriminator 1
	cmpwi 7,30,0
	blt- 7,.L163
	.loc 1 1095 0
	lwz 9,-12(31)
	and 10,9,29
	cmplw 7,10,9
	bne+ 7,.L160
	.loc 1 1097 0
	lwz 9,-4(31)
	mr 3,28
	mtctr 9
	bctrl
.L160:
	.loc 1 1093 0
	addi 30,30,-1
	addi 31,31,-12
	b .L159
.L163:
	.loc 1 1103 0
	addi 11,1,24
	b _restgpr_28_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 65
	.cfi_endproc
.LFE109:
	.size	pop, .-pop
	.align 2
	.globl _glInitStacks
	.type	_glInitStacks, @function
_glInitStacks:
.LFB107:
	.loc 1 1032 0
	.cfi_startproc
.LVL166:
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	mflr 0
.LBB49:
.LBB50:
	.loc 1 1024 0
	li 4,0
	li 5,80
.LBE50:
.LBE49:
	.loc 1 1032 0
	stmw 29,12(1)
	.cfi_register 65, 0
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
.LBB55:
.LBB51:
	.loc 1 1024 0
	lis 31,.LANCHOR0@ha
	la 31,.LANCHOR0@l(31)
.LBE51:
.LBE55:
	.loc 1 1032 0
	stw 0,28(1)
	.cfi_offset 65, 4
.LBB56:
.LBB52:
	.loc 1 1024 0
	mr 3,31
.LBE52:
.LBE56:
.LBB57:
.LBB58:
	addi 29,31,80
.LBE58:
.LBE57:
.LBB62:
.LBB53:
	bl memset
.LVL167:
	.loc 1 1025 0
	mr 3,31
	bl resizeStack
.LVL168:
	.loc 1 1028 0
	lwz 9,68(31)
	.loc 1 1027 0
	li 30,0
.LBE53:
.LBE62:
.LBB63:
.LBB59:
	.loc 1 1024 0
	li 4,0
	li 5,80
	mr 3,29
.LBE59:
.LBE63:
.LBB64:
.LBB54:
	.loc 1 1028 0
	stw 9,72(31)
.LVL169:
	.loc 1 1027 0
	stw 30,64(31)
.LBE54:
.LBE64:
.LBB65:
.LBB60:
	.loc 1 1024 0
	bl memset
.LVL170:
	.loc 1 1025 0
	mr 3,29
	bl resizeStack
.LVL171:
	.loc 1 1028 0
	lwz 9,148(31)
	.loc 1 1027 0
	stw 30,144(31)
.LBE60:
.LBE65:
	.loc 1 1035 0
	addi 11,1,24
.LBB66:
.LBB61:
	.loc 1 1028 0
	stw 9,152(31)
.LBE61:
.LBE66:
	.loc 1 1035 0
	b _restgpr_29_x
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 65
	.cfi_endproc
.LFE107:
	.size	_glInitStacks, .-_glInitStacks
	.align 2
	.globl glPushAttrib
	.type	glPushAttrib, @function
glPushAttrib:
.LFB110:
	.loc 1 1106 0
	.cfi_startproc
.LVL172:
	.loc 1 1107 0
	lis 9,cur_state@ha
	.loc 1 1106 0
	mr 6,3
	.loc 1 1107 0
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L167
	.loc 1 1107 0 is_stmt 0 discriminator 1
	lis 4,.LC0@ha
	li 3,1282
.LVL173:
	la 4,.LC0@l(4)
	li 5,1107
	.loc 1 1110 0 is_stmt 1 discriminator 1
	.loc 1 1107 0 discriminator 1
	b _glSetErrorEx
.LVL174:
.L167:
	.loc 1 1109 0
	lis 3,.LANCHOR0@ha
.LVL175:
	lis 4,.LANCHOR1@ha
	la 3,.LANCHOR0@l(3)
	la 4,.LANCHOR1@l(4)
	li 5,20
	.loc 1 1110 0
	.loc 1 1109 0
	b push
.LVL176:
	.cfi_endproc
.LFE110:
	.size	glPushAttrib, .-glPushAttrib
	.align 2
	.globl glPopAttrib
	.type	glPopAttrib, @function
glPopAttrib:
.LFB111:
	.loc 1 1113 0
	.cfi_startproc
	.loc 1 1114 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L169
	.loc 1 1114 0 is_stmt 0 discriminator 1
	lis 4,.LC0@ha
	li 3,1282
	la 4,.LC0@l(4)
	li 5,1114
	.loc 1 1117 0 is_stmt 1 discriminator 1
	.loc 1 1114 0 discriminator 1
	b _glSetErrorEx
.LVL177:
.L169:
	.loc 1 1116 0
	lis 3,.LANCHOR0@ha
	lis 4,.LANCHOR1@ha
	la 3,.LANCHOR0@l(3)
	la 4,.LANCHOR1@l(4)
	li 5,20
	.loc 1 1117 0
	.loc 1 1116 0
	b pop
.LVL178:
	.cfi_endproc
.LFE111:
	.size	glPopAttrib, .-glPopAttrib
	.align 2
	.globl glPushClientAttrib
	.type	glPushClientAttrib, @function
glPushClientAttrib:
.LFB116:
	.loc 1 1201 0
	.cfi_startproc
.LVL179:
	.loc 1 1202 0
	lis 9,cur_state@ha
	.loc 1 1201 0
	mr 6,3
	.loc 1 1202 0
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L171
	.loc 1 1202 0 is_stmt 0 discriminator 1
	lis 4,.LC0@ha
	li 3,1282
.LVL180:
	la 4,.LC0@l(4)
	li 5,1202
	.loc 1 1205 0 is_stmt 1 discriminator 1
	.loc 1 1202 0 discriminator 1
	b _glSetErrorEx
.LVL181:
.L171:
	.loc 1 1204 0
	lis 3,.LANCHOR0@ha
.LVL182:
	lis 4,.LANCHOR1@ha
	la 3,.LANCHOR0@l(3)
	la 4,.LANCHOR1@l(4)
	addi 3,3,80
	addi 4,4,240
	li 5,2
	.loc 1 1205 0
	.loc 1 1204 0
	b push
.LVL183:
	.cfi_endproc
.LFE116:
	.size	glPushClientAttrib, .-glPushClientAttrib
	.align 2
	.globl glPopClientAttrib
	.type	glPopClientAttrib, @function
glPopClientAttrib:
.LFB117:
	.loc 1 1208 0
	.cfi_startproc
	.loc 1 1209 0
	lis 9,cur_state@ha
	lwz 9,cur_state@l(9)
	andi. 10,9,1
	beq+ 0,.L173
	.loc 1 1209 0 is_stmt 0 discriminator 1
	lis 4,.LC0@ha
	li 3,1282
	la 4,.LC0@l(4)
	li 5,1209
	.loc 1 1212 0 is_stmt 1 discriminator 1
	.loc 1 1209 0 discriminator 1
	b _glSetErrorEx
.LVL184:
.L173:
	.loc 1 1211 0
	lis 3,.LANCHOR0@ha
	lis 4,.LANCHOR1@ha
	la 3,.LANCHOR0@l(3)
	la 4,.LANCHOR1@l(4)
	addi 3,3,80
	addi 4,4,240
	li 5,2
	.loc 1 1212 0
	.loc 1 1211 0
	b pop
.LVL185:
	.cfi_endproc
.LFE117:
	.size	glPopClientAttrib, .-glPopClientAttrib
	.globl clientAttribs
	.globl attribs
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
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl_stacks.c"
	.section	".data"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	attribs, @object
	.size	attribs, 240
attribs:
	.long	512
	.long	pushAccum
	.long	popAccum
	.long	16384
	.long	pushColorBuffer
	.long	popColorBuffer
	.long	1
	.long	pushCurrent
	.long	popCurrent
	.long	256
	.long	pushDepthBuffer
	.long	popDepthBuffer
	.long	8192
	.long	pushEnable
	.long	popEnable
	.long	65536
	.long	pushEval
	.long	popEval
	.long	128
	.long	pushFog
	.long	popFog
	.long	32768
	.long	pushHint
	.long	popHint
	.long	64
	.long	pushLighting
	.long	popLighting
	.long	4
	.long	pushLine
	.long	popLine
	.long	131072
	.long	pushListBase
	.long	popListBase
	.long	32
	.long	pushPixelMode
	.long	popPixelMode
	.long	2
	.long	pushPoint
	.long	popPoint
	.long	8
	.long	pushPolygon
	.long	popPolygon
	.long	16
	.long	pushPolyStipple
	.long	popPolyStipple
	.long	524288
	.long	pushScissor
	.long	popScissor
	.long	1024
	.long	pushStencil
	.long	popStencil
	.long	262144
	.long	pushTexture
	.long	popTexture
	.long	4096
	.long	pushTransform
	.long	popTransform
	.long	2048
	.long	pushViewport
	.long	popViewport
	.type	clientAttribs, @object
	.size	clientAttribs, 24
clientAttribs:
	.long	1
	.long	pushPixelStore
	.long	popPixelStore
	.long	2
	.long	pushVertexArray
	.long	popVertexArray
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	attribStack, @object
	.size	attribStack, 80
attribStack:
	.zero	80
	.type	clientAttribStack, @object
	.size	clientAttribStack, 80
clientAttribStack:
	.zero	80
	.section	".text"
.Letext0:
	.file 2 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h"
	.file 3 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/include/GL/gl.h"
	.file 4 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\stdint.h"
	.file 5 "D:\\devkitPro\\/libogc/include/gctypes.h"
	.file 6 "D:\\devkitPro\\/libogc/include/ogc/gu.h"
	.file 7 "D:\\devkitPro\\/libogc/include/ogc/gx.h"
	.file 8 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/include/glint.h"
	.file 9 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/include/mat_stack.h"
	.file 10 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2b4f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF355
	.byte	0x1
	.4byte	.LASF356
	.4byte	.LASF357
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x2
	.byte	0xd4
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
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
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x85
	.uleb128 0x7
	.4byte	0x78
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x92
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x93
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x94
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x98
	.4byte	0x5c
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x3
	.byte	0x9a
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x3
	.byte	0x9b
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x3
	.byte	0x9c
	.4byte	0x5c
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x3
	.byte	0x9d
	.4byte	0x98
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x3
	.byte	0x9e
	.4byte	0x98
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x4
	.byte	0x29
	.4byte	0x4e
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x4
	.byte	0x2a
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x4
	.byte	0x35
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x4
	.byte	0x36
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x4
	.byte	0x4f
	.4byte	0x5c
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x4
	.byte	0x50
	.4byte	0x30
	.uleb128 0x8
	.string	"u8"
	.byte	0x5
	.byte	0x11
	.4byte	0x114
	.uleb128 0x8
	.string	"u16"
	.byte	0x5
	.byte	0x12
	.4byte	0x12a
	.uleb128 0x8
	.string	"u32"
	.byte	0x5
	.byte	0x13
	.4byte	0x140
	.uleb128 0x8
	.string	"s8"
	.byte	0x5
	.byte	0x16
	.4byte	0x109
	.uleb128 0x8
	.string	"s16"
	.byte	0x5
	.byte	0x17
	.4byte	0x11f
	.uleb128 0x8
	.string	"s32"
	.byte	0x5
	.byte	0x18
	.4byte	0x135
	.uleb128 0x8
	.string	"vu8"
	.byte	0x5
	.byte	0x1b
	.4byte	0x196
	.uleb128 0x9
	.4byte	0x14b
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x5
	.byte	0x1c
	.4byte	0x1a6
	.uleb128 0x9
	.4byte	0x155
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x5
	.byte	0x1d
	.4byte	0x1b6
	.uleb128 0x9
	.4byte	0x160
	.uleb128 0x8
	.string	"vs8"
	.byte	0x5
	.byte	0x20
	.4byte	0x1c6
	.uleb128 0x9
	.4byte	0x16b
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x5
	.byte	0x21
	.4byte	0x1d6
	.uleb128 0x9
	.4byte	0x175
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x5
	.byte	0x22
	.4byte	0x1e6
	.uleb128 0x9
	.4byte	0x180
	.uleb128 0x8
	.string	"f32"
	.byte	0x5
	.byte	0x2b
	.4byte	0x98
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x5
	.byte	0x2e
	.4byte	0x201
	.uleb128 0x9
	.4byte	0x98
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF35
	.uleb128 0x6
	.byte	0x4
	.4byte	0x213
	.uleb128 0xa
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0xc
	.byte	0x6
	.byte	0x5e
	.4byte	0x23f
	.uleb128 0xc
	.string	"x"
	.byte	0x6
	.byte	0x5f
	.4byte	0x1eb
	.byte	0
	.uleb128 0xc
	.string	"y"
	.byte	0x6
	.byte	0x5f
	.4byte	0x1eb
	.byte	0x4
	.uleb128 0xc
	.string	"z"
	.byte	0x6
	.byte	0x5f
	.4byte	0x1eb
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x6
	.byte	0x60
	.4byte	0x214
	.uleb128 0xd
	.4byte	0x1eb
	.4byte	0x25a
	.uleb128 0xe
	.4byte	0x37
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF358
	.byte	0x4
	.byte	0x7
	.2byte	0x490
	.4byte	0x2ba
	.uleb128 0x10
	.string	"U8"
	.byte	0x7
	.2byte	0x492
	.4byte	0x18b
	.uleb128 0x10
	.string	"S8"
	.byte	0x7
	.2byte	0x493
	.4byte	0x1bb
	.uleb128 0x10
	.string	"U16"
	.byte	0x7
	.2byte	0x494
	.4byte	0x19b
	.uleb128 0x10
	.string	"S16"
	.byte	0x7
	.2byte	0x495
	.4byte	0x1cb
	.uleb128 0x10
	.string	"U32"
	.byte	0x7
	.2byte	0x496
	.4byte	0x1ab
	.uleb128 0x10
	.string	"S32"
	.byte	0x7
	.2byte	0x497
	.4byte	0x1db
	.uleb128 0x10
	.string	"F32"
	.byte	0x7
	.2byte	0x498
	.4byte	0x1f6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x7
	.2byte	0x499
	.4byte	0x25a
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x4
	.byte	0x7
	.2byte	0x49e
	.4byte	0x300
	.uleb128 0x13
	.string	"r"
	.byte	0x7
	.2byte	0x49f
	.4byte	0x14b
	.byte	0
	.uleb128 0x13
	.string	"g"
	.byte	0x7
	.2byte	0x4a0
	.4byte	0x14b
	.byte	0x1
	.uleb128 0x13
	.string	"b"
	.byte	0x7
	.2byte	0x4a1
	.4byte	0x14b
	.byte	0x2
	.uleb128 0x13
	.string	"a"
	.byte	0x7
	.2byte	0x4a2
	.4byte	0x14b
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x7
	.2byte	0x4a3
	.4byte	0x2c6
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x40
	.byte	0x7
	.2byte	0x4f1
	.4byte	0x327
	.uleb128 0x13
	.string	"val"
	.byte	0x7
	.2byte	0x4f2
	.4byte	0x327
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x160
	.4byte	0x337
	.uleb128 0xe
	.4byte	0x37
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x7
	.2byte	0x4f3
	.4byte	0x30c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14b
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x8
	.byte	0xa
	.4byte	0x23f
	.uleb128 0x14
	.byte	0x10
	.byte	0x8
	.byte	0x15
	.4byte	0x371
	.uleb128 0xc
	.string	"v"
	.byte	0x8
	.byte	0x17
	.4byte	0x349
	.byte	0
	.uleb128 0xc
	.string	"w"
	.byte	0x8
	.byte	0x18
	.4byte	0x98
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x8
	.byte	0x19
	.4byte	0x354
	.uleb128 0x14
	.byte	0x8
	.byte	0x8
	.byte	0x1b
	.4byte	0x399
	.uleb128 0xc
	.string	"s"
	.byte	0x8
	.byte	0x1d
	.4byte	0x98
	.byte	0
	.uleb128 0xc
	.string	"t"
	.byte	0x8
	.byte	0x1e
	.4byte	0x98
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x8
	.byte	0x1f
	.4byte	0x37c
	.uleb128 0x14
	.byte	0x10
	.byte	0x8
	.byte	0x21
	.4byte	0x3d5
	.uleb128 0xc
	.string	"r"
	.byte	0x8
	.byte	0x23
	.4byte	0x98
	.byte	0
	.uleb128 0xc
	.string	"g"
	.byte	0x8
	.byte	0x24
	.4byte	0x98
	.byte	0x4
	.uleb128 0xc
	.string	"b"
	.byte	0x8
	.byte	0x25
	.4byte	0x98
	.byte	0x8
	.uleb128 0xc
	.string	"a"
	.byte	0x8
	.byte	0x26
	.4byte	0x98
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x8
	.byte	0x27
	.4byte	0x3a4
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x14
	.byte	0x8
	.byte	0x41
	.4byte	0x427
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x8
	.byte	0x43
	.4byte	0x206
	.byte	0
	.uleb128 0xc
	.string	"p"
	.byte	0x8
	.byte	0x44
	.4byte	0x20d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x8
	.byte	0x45
	.4byte	0x14b
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x8
	.byte	0x46
	.4byte	0xc7
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x8
	.byte	0x47
	.4byte	0xa6
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x8
	.byte	0x48
	.4byte	0x3e0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x10
	.byte	0x9
	.byte	0xc
	.4byte	0x46f
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x9
	.byte	0xe
	.4byte	0x4c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x9
	.byte	0xf
	.4byte	0x25
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x9
	.byte	0x10
	.4byte	0x25
	.byte	0x8
	.uleb128 0xc
	.string	"cur"
	.byte	0x9
	.byte	0x11
	.4byte	0x25
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x9
	.byte	0x12
	.4byte	0x432
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0xa4
	.byte	0x8
	.byte	0x7d
	.4byte	0x517
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x8
	.byte	0x7f
	.4byte	0x206
	.byte	0
	.uleb128 0xc
	.string	"obj"
	.byte	0x8
	.byte	0x81
	.4byte	0x337
	.byte	0x4
	.uleb128 0xc
	.string	"pos"
	.byte	0x8
	.byte	0x83
	.4byte	0x371
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x8
	.byte	0x85
	.4byte	0x349
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x8
	.byte	0x87
	.4byte	0x3d5
	.byte	0x60
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x8
	.byte	0x88
	.4byte	0x3d5
	.byte	0x70
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x8
	.byte	0x89
	.4byte	0x3d5
	.byte	0x80
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x8
	.byte	0x8b
	.4byte	0x98
	.byte	0x90
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x8
	.byte	0x8c
	.4byte	0x98
	.byte	0x94
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x8
	.byte	0x8d
	.4byte	0x98
	.byte	0x98
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x8
	.byte	0x8e
	.4byte	0x98
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x8
	.byte	0x8f
	.4byte	0x98
	.byte	0xa0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x8
	.byte	0x90
	.4byte	0x47a
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x44
	.byte	0x8
	.byte	0x9a
	.4byte	0x56b
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x8
	.byte	0x9c
	.4byte	0x3d5
	.byte	0
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x8
	.byte	0x9d
	.4byte	0x3d5
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x8
	.byte	0x9e
	.4byte	0x3d5
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x8
	.byte	0x9f
	.4byte	0x3d5
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x8
	.byte	0xa0
	.4byte	0x98
	.byte	0x40
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x8
	.byte	0xa1
	.4byte	0x522
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x4
	.byte	0x8
	.byte	0xb9
	.4byte	0x595
	.uleb128 0x17
	.4byte	.LASF73
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF74
	.sleb128 1
	.uleb128 0x17
	.4byte	.LASF75
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0x8
	.byte	0xbe
	.4byte	0x576
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x10
	.byte	0x8
	.byte	0xe2
	.4byte	0x5d9
	.uleb128 0xc
	.string	"x"
	.byte	0x8
	.byte	0xe4
	.4byte	0xc7
	.byte	0
	.uleb128 0xc
	.string	"y"
	.byte	0x8
	.byte	0xe5
	.4byte	0xc7
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x8
	.byte	0xe6
	.4byte	0xe8
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x8
	.byte	0xe7
	.4byte	0xe8
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x8
	.byte	0xe8
	.4byte	0x5a0
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x14
	.byte	0x8
	.byte	0xf5
	.4byte	0x639
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x8
	.byte	0xf7
	.4byte	0x206
	.byte	0
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x8
	.byte	0xf8
	.4byte	0x206
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x8
	.byte	0xf9
	.4byte	0x5c
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x8
	.byte	0xfa
	.4byte	0x5c
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x8
	.byte	0xfb
	.4byte	0x5c
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x8
	.byte	0xfc
	.4byte	0x5c
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x8
	.byte	0xfd
	.4byte	0x5e4
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x8
	.byte	0x8
	.2byte	0x110
	.4byte	0x66c
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x112
	.4byte	0x1eb
	.byte	0
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x113
	.4byte	0x1eb
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x114
	.4byte	0x644
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0x4
	.byte	0x8
	.2byte	0x116
	.4byte	0x69e
	.uleb128 0x17
	.4byte	.LASF94
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF95
	.sleb128 1
	.uleb128 0x17
	.4byte	.LASF96
	.sleb128 2
	.uleb128 0x17
	.4byte	.LASF97
	.sleb128 3
	.byte	0
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x6c
	.byte	0x8
	.2byte	0x120
	.4byte	0x7ca
	.uleb128 0x18
	.4byte	.LASF58
	.byte	0x8
	.2byte	0x122
	.4byte	0x206
	.byte	0
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x124
	.4byte	0x14b
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x125
	.4byte	0x14b
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x126
	.4byte	0x14b
	.byte	0x3
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x127
	.4byte	0x14b
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x128
	.4byte	0x1eb
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x129
	.4byte	0x1eb
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x12a
	.4byte	0x1eb
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x12b
	.4byte	0x14b
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x12c
	.4byte	0x14b
	.byte	0x15
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x12d
	.4byte	0x14b
	.byte	0x16
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x12f
	.4byte	0xa6
	.byte	0x18
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x131
	.4byte	0xa6
	.byte	0x1c
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x132
	.4byte	0xa6
	.byte	0x20
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x134
	.4byte	0x7ca
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x135
	.4byte	0x7ca
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x136
	.4byte	0x7ca
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x137
	.4byte	0x7ca
	.byte	0x48
	.uleb128 0x13
	.string	"tex"
	.byte	0x8
	.2byte	0x139
	.4byte	0xc7
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x13b
	.4byte	0x3d5
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x13d
	.4byte	0x14b
	.byte	0x68
	.uleb128 0x18
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x13e
	.4byte	0x14b
	.byte	0x69
	.byte	0
	.uleb128 0xd
	.4byte	0xa6
	.4byte	0x7da
	.uleb128 0xe
	.4byte	0x37
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x13f
	.4byte	0x69e
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x10
	.byte	0x1
	.byte	0xc
	.4byte	0x7ff
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x1
	.byte	0xe
	.4byte	0x3d5
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x1
	.byte	0xf
	.4byte	0x7e6
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x2c
	.byte	0x1
	.byte	0x30
	.4byte	0x907
	.uleb128 0x1a
	.4byte	.LASF123
	.byte	0x1
	.byte	0x32
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF124
	.byte	0x1
	.byte	0x33
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF125
	.byte	0x1
	.byte	0x34
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF126
	.byte	0x1
	.byte	0x35
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF127
	.byte	0x1
	.byte	0x36
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF128
	.byte	0x1
	.byte	0x37
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF129
	.byte	0x1
	.byte	0x38
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF130
	.byte	0x1
	.byte	0x39
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF131
	.byte	0x1
	.byte	0x3b
	.4byte	0xa6
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF132
	.byte	0x1
	.byte	0x3d
	.4byte	0xa6
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF133
	.byte	0x1
	.byte	0x3e
	.4byte	0xfe
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF134
	.byte	0x1
	.byte	0x41
	.4byte	0x14b
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x1
	.byte	0x42
	.4byte	0x14b
	.byte	0x11
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0x1
	.byte	0x43
	.4byte	0x14b
	.byte	0x12
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0x1
	.byte	0x44
	.4byte	0x14b
	.byte	0x13
	.uleb128 0x15
	.4byte	.LASF138
	.byte	0x1
	.byte	0x46
	.4byte	0x3d5
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF139
	.byte	0x1
	.byte	0x47
	.4byte	0xa6
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF140
	.byte	0x1
	.byte	0x49
	.4byte	0x300
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x1
	.byte	0x4a
	.4byte	0x80a
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0xc8
	.byte	0x1
	.byte	0x7d
	.4byte	0x99d
	.uleb128 0x1a
	.4byte	.LASF142
	.byte	0x1
	.byte	0x7f
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF143
	.byte	0x1
	.byte	0x80
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF144
	.byte	0x1
	.byte	0x82
	.4byte	0x98
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x1
	.byte	0x83
	.4byte	0x3d5
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0x1
	.byte	0x84
	.4byte	0x349
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF146
	.byte	0x1
	.byte	0x85
	.4byte	0x99d
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF147
	.byte	0x1
	.byte	0x87
	.4byte	0x371
	.byte	0x64
	.uleb128 0x15
	.4byte	.LASF148
	.byte	0x1
	.byte	0x88
	.4byte	0x98
	.byte	0x74
	.uleb128 0x15
	.4byte	.LASF149
	.byte	0x1
	.byte	0x89
	.4byte	0x3d5
	.byte	0x78
	.uleb128 0x15
	.4byte	.LASF150
	.byte	0x1
	.byte	0x8a
	.4byte	0x99d
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.4byte	0x399
	.4byte	0x9ad
	.uleb128 0xe
	.4byte	0x37
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0x1
	.byte	0x8b
	.4byte	0x912
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x8
	.byte	0x1
	.byte	0xb5
	.4byte	0x9fb
	.uleb128 0x1a
	.4byte	.LASF152
	.byte	0x1
	.byte	0xb7
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF153
	.byte	0x1
	.byte	0xb8
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF154
	.byte	0x1
	.byte	0xba
	.4byte	0x14b
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF155
	.byte	0x1
	.byte	0xbb
	.4byte	0x98
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF151
	.byte	0x1
	.byte	0xbc
	.4byte	0x9b8
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x8
	.byte	0x1
	.byte	0xf5
	.4byte	0xba4
	.uleb128 0x1a
	.4byte	.LASF123
	.byte	0x1
	.byte	0xf7
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF156
	.byte	0x1
	.byte	0xf8
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF157
	.byte	0x1
	.byte	0xf9
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF158
	.byte	0x1
	.byte	0xfa
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF159
	.byte	0x1
	.byte	0xfb
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF152
	.byte	0x1
	.byte	0xfc
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF124
	.byte	0x1
	.byte	0xfd
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.string	"fog"
	.byte	0x1
	.byte	0xfe
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF160
	.byte	0x1
	.byte	0xff
	.4byte	0x14b
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x100
	.4byte	0x14b
	.byte	0x2
	.uleb128 0x1c
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x101
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x102
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x103
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x104
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x105
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x106
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x107
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x108
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x109
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x10a
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x10b
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x10c
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x10d
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x10e
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x10f
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x110
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x111
	.4byte	0xa06
	.uleb128 0x1d
	.4byte	.LASF176
	.byte	0
	.byte	0x1
	.2byte	0x152
	.uleb128 0x11
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x154
	.4byte	0xbb0
	.uleb128 0x1e
	.string	"fog"
	.byte	0x18
	.byte	0x1
	.2byte	0x172
	.4byte	0xc31
	.uleb128 0x1c
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x174
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x176
	.4byte	0x14b
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x178
	.4byte	0x1eb
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x17a
	.4byte	0x1eb
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x17b
	.4byte	0x1eb
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x17d
	.4byte	0x98
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x17e
	.4byte	0x300
	.byte	0x14
	.byte	0
	.uleb128 0x1f
	.string	"fog"
	.byte	0x1
	.2byte	0x17f
	.4byte	0xbc5
	.uleb128 0x1d
	.4byte	.LASF184
	.byte	0
	.byte	0x1
	.2byte	0x1a6
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x1a8
	.4byte	0xc3d
	.uleb128 0x20
	.4byte	.LASF185
	.2byte	0x584
	.byte	0x1
	.2byte	0x1cd
	.4byte	0xcd1
	.uleb128 0x1c
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x1d1
	.4byte	0xa6
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x1d2
	.4byte	0xa6
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x3d5
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x1d4
	.4byte	0xcd1
	.byte	0x1c
	.uleb128 0x21
	.string	"mat"
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x56b
	.2byte	0x53c
	.uleb128 0x22
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x1d6
	.4byte	0xa6
	.2byte	0x580
	.byte	0
	.uleb128 0xd
	.4byte	0x517
	.4byte	0xce1
	.uleb128 0xe
	.4byte	0x37
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x1d7
	.4byte	0xc52
	.uleb128 0x12
	.4byte	.LASF190
	.byte	0x10
	.byte	0x1
	.2byte	0x209
	.4byte	0xd42
	.uleb128 0x1c
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x20b
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x20c
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x20d
	.4byte	0xc7
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x20e
	.4byte	0xd2
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x20f
	.4byte	0xf3
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x210
	.4byte	0xced
	.uleb128 0x12
	.4byte	.LASF193
	.byte	0x4
	.byte	0x1
	.2byte	0x227
	.4byte	0xd69
	.uleb128 0x18
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x229
	.4byte	0xdd
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x22a
	.4byte	0xd4e
	.uleb128 0x12
	.4byte	.LASF195
	.byte	0x40
	.byte	0x1
	.2byte	0x249
	.4byte	0xe25
	.uleb128 0x1c
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x24b
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x24c
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.string	"red"
	.byte	0x1
	.2byte	0x24e
	.4byte	0x66c
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x24f
	.4byte	0x66c
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x250
	.4byte	0x66c
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x251
	.4byte	0x66c
	.byte	0x1c
	.uleb128 0x18
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x252
	.4byte	0x66c
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x254
	.4byte	0xc7
	.byte	0x2c
	.uleb128 0x18
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x255
	.4byte	0xc7
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x257
	.4byte	0xf3
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x257
	.4byte	0xf3
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x259
	.4byte	0xa6
	.byte	0x3c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x25a
	.4byte	0xd75
	.uleb128 0x12
	.4byte	.LASF207
	.byte	0x8
	.byte	0x1
	.2byte	0x27b
	.4byte	0xe5c
	.uleb128 0x1c
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x27d
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x27e
	.4byte	0xf3
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x27f
	.4byte	0xe31
	.uleb128 0x12
	.4byte	.LASF209
	.byte	0x18
	.byte	0x1
	.2byte	0x2a2
	.4byte	0xf17
	.uleb128 0x1c
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x2a6
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x2a8
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x2a9
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x18
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x2ab
	.4byte	0xa6
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x2ac
	.4byte	0xa6
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x2ad
	.4byte	0xa6
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x2ae
	.4byte	0xf3
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x2af
	.4byte	0xf3
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x2b0
	.4byte	0xe68
	.uleb128 0x12
	.4byte	.LASF211
	.byte	0x4
	.byte	0x1
	.2byte	0x2d9
	.4byte	0xf41
	.uleb128 0x1c
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x2db
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x2dc
	.4byte	0xf23
	.uleb128 0x12
	.4byte	.LASF217
	.byte	0x14
	.byte	0x1
	.2byte	0x2f2
	.4byte	0xf78
	.uleb128 0x1c
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x2f4
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x2f5
	.4byte	0x5d9
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x2f6
	.4byte	0xf4d
	.uleb128 0x12
	.4byte	.LASF219
	.byte	0x20
	.byte	0x1
	.2byte	0x314
	.4byte	0x100d
	.uleb128 0x1c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x316
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x317
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x318
	.4byte	0xa6
	.byte	0x4
	.uleb128 0x13
	.string	"ref"
	.byte	0x1
	.2byte	0x319
	.4byte	0xc7
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x31a
	.4byte	0xdd
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x31b
	.4byte	0xa6
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x31b
	.4byte	0xa6
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x31b
	.4byte	0xa6
	.byte	0x18
	.uleb128 0x18
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x31c
	.4byte	0xc7
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x31d
	.4byte	0xf84
	.uleb128 0x20
	.4byte	.LASF227
	.2byte	0x3a0
	.byte	0x1
	.2byte	0x33b
	.4byte	0x1042
	.uleb128 0x18
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x33d
	.4byte	0x99d
	.byte	0
	.uleb128 0x18
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x33e
	.4byte	0x1042
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.4byte	0x7da
	.4byte	0x1052
	.uleb128 0xe
	.4byte	0x37
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x33f
	.4byte	0x1019
	.uleb128 0x12
	.4byte	.LASF229
	.byte	0x10
	.byte	0x1
	.2byte	0x367
	.4byte	0x1079
	.uleb128 0x13
	.string	"equ"
	.byte	0x1
	.2byte	0x369
	.4byte	0x24a
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x36a
	.4byte	0x105e
	.uleb128 0x12
	.4byte	.LASF230
	.byte	0x68
	.byte	0x1
	.2byte	0x36c
	.4byte	0x10ca
	.uleb128 0x1c
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x36e
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x36f
	.4byte	0x14b
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x370
	.4byte	0x10ca
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x371
	.4byte	0xa6
	.byte	0x64
	.byte	0
	.uleb128 0xd
	.4byte	0x1079
	.4byte	0x10da
	.uleb128 0xe
	.4byte	0x37
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x373
	.4byte	0x1085
	.uleb128 0x12
	.4byte	.LASF233
	.byte	0x18
	.byte	0x1
	.2byte	0x38b
	.4byte	0x111b
	.uleb128 0x18
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x38d
	.4byte	0x1eb
	.byte	0
	.uleb128 0x13
	.string	"far"
	.byte	0x1
	.2byte	0x38d
	.4byte	0x1eb
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x38e
	.4byte	0x5d9
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x38f
	.4byte	0x10e6
	.uleb128 0x11
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x3a9
	.4byte	0x1133
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1139
	.uleb128 0x23
	.4byte	0x206
	.4byte	0x114d
	.uleb128 0x24
	.4byte	0x114d
	.uleb128 0x24
	.4byte	0x4c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x11
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x3aa
	.4byte	0x115f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1165
	.uleb128 0x25
	.4byte	0x1170
	.uleb128 0x24
	.4byte	0x114d
	.byte	0
	.uleb128 0x12
	.4byte	.LASF238
	.byte	0xc
	.byte	0x1
	.2byte	0x3ac
	.4byte	0x11a5
	.uleb128 0x18
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x3ae
	.4byte	0xa6
	.byte	0
	.uleb128 0x18
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x3af
	.4byte	0x1127
	.byte	0x4
	.uleb128 0x13
	.string	"pop"
	.byte	0x1
	.2byte	0x3b0
	.4byte	0x1153
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x3b1
	.4byte	0x1170
	.uleb128 0x12
	.4byte	.LASF240
	.byte	0x50
	.byte	0x1
	.2byte	0x3ca
	.4byte	0x1200
	.uleb128 0x18
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x3cc
	.4byte	0x1200
	.byte	0
	.uleb128 0x18
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x3cd
	.4byte	0x5c
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x3ce
	.4byte	0x4c
	.byte	0x44
	.uleb128 0x13
	.string	"cur"
	.byte	0x1
	.2byte	0x3cf
	.4byte	0x4c
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x3d0
	.4byte	0x25
	.byte	0x4c
	.byte	0
	.uleb128 0xd
	.4byte	0xa6
	.4byte	0x1210
	.uleb128 0xe
	.4byte	0x37
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x3d1
	.4byte	0x11b1
	.uleb128 0x12
	.4byte	.LASF243
	.byte	0x28
	.byte	0x1
	.2byte	0x460
	.4byte	0x1244
	.uleb128 0x18
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x462
	.4byte	0x639
	.byte	0
	.uleb128 0x18
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x463
	.4byte	0x639
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x464
	.4byte	0x121c
	.uleb128 0x12
	.4byte	.LASF246
	.byte	0xdc
	.byte	0x1
	.2byte	0x47d
	.4byte	0x1292
	.uleb128 0x18
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x47f
	.4byte	0x427
	.byte	0
	.uleb128 0x18
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x480
	.4byte	0x427
	.byte	0x14
	.uleb128 0x13
	.string	"tex"
	.byte	0x1
	.2byte	0x481
	.4byte	0x1292
	.byte	0x28
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x482
	.4byte	0x427
	.byte	0xc8
	.byte	0
	.uleb128 0xd
	.4byte	0x427
	.4byte	0x12a2
	.uleb128 0xe
	.4byte	0x37
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x483
	.4byte	0x1250
	.uleb128 0x26
	.4byte	.LASF249
	.byte	0x1
	.byte	0x8d
	.4byte	0x206
	.byte	0x1
	.4byte	0x12e7
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.byte	0x8d
	.4byte	0x114d
	.uleb128 0x27
	.string	"end"
	.byte	0x1
	.byte	0x8d
	.4byte	0x4c
	.uleb128 0x28
	.string	"ptr"
	.byte	0x1
	.byte	0x8f
	.4byte	0x12e7
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0x96
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12ed
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9ad
	.uleb128 0x29
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x206
	.byte	0x1
	.4byte	0x1331
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x114d
	.uleb128 0x2a
	.string	"end"
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x4c
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.2byte	0x1db
	.4byte	0x1331
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1337
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce1
	.uleb128 0x29
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x206
	.byte	0x1
	.4byte	0x1371
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x114d
	.uleb128 0x2a
	.string	"end"
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x4c
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x1371
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1377
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf17
	.uleb128 0x29
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x341
	.4byte	0x206
	.byte	0x1
	.4byte	0x13bb
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.2byte	0x341
	.4byte	0x114d
	.uleb128 0x2a
	.string	"end"
	.byte	0x1
	.2byte	0x341
	.4byte	0x4c
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.2byte	0x343
	.4byte	0x13bb
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x347
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x13c1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1052
	.uleb128 0x29
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x485
	.4byte	0x206
	.byte	0x1
	.4byte	0x1405
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.2byte	0x485
	.4byte	0x114d
	.uleb128 0x2a
	.string	"end"
	.byte	0x1
	.2byte	0x485
	.4byte	0x4c
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.2byte	0x487
	.4byte	0x1405
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x48f
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x140b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12a2
	.uleb128 0x29
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x113
	.4byte	0x206
	.byte	0x1
	.4byte	0x144f
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.2byte	0x113
	.4byte	0x114d
	.uleb128 0x2a
	.string	"end"
	.byte	0x1
	.2byte	0x113
	.4byte	0x4c
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.2byte	0x115
	.4byte	0x144f
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x11f
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1455
	.uleb128 0x6
	.byte	0x4
	.4byte	0xba4
	.uleb128 0x29
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x3d7
	.4byte	0x4c
	.byte	0x3
	.4byte	0x1483
	.uleb128 0x2a
	.string	"ptr"
	.byte	0x1
	.2byte	0x3d7
	.4byte	0x1483
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.2byte	0x3d9
	.4byte	0x343
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1210
	.uleb128 0x2c
	.string	"pop"
	.byte	0x1
	.2byte	0x434
	.byte	0x1
	.4byte	0x14d1
	.uleb128 0x2a
	.string	"ptr"
	.byte	0x1
	.2byte	0x434
	.4byte	0x1483
	.uleb128 0x2d
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x434
	.4byte	0x14d1
	.uleb128 0x2d
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x434
	.4byte	0x25
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x436
	.4byte	0x5c
	.uleb128 0x2e
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x440
	.4byte	0xa6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11a5
	.uleb128 0x2f
	.4byte	.LASF258
	.byte	0x1
	.byte	0x11
	.4byte	0x206
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x151a
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.byte	0x11
	.4byte	0x114d
	.4byte	.LLST0
	.uleb128 0x31
	.string	"end"
	.byte	0x1
	.byte	0x11
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.byte	0x13
	.4byte	0x151a
	.4byte	.LLST0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1520
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7ff
	.uleb128 0x33
	.4byte	.LASF260
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1554
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.byte	0x1c
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.string	"ptr"
	.byte	0x1
	.byte	0x1e
	.4byte	0x151a
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF259
	.byte	0x1
	.byte	0x4c
	.4byte	0x206
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1597
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.byte	0x4c
	.4byte	0x114d
	.4byte	.LLST2
	.uleb128 0x31
	.string	"end"
	.byte	0x1
	.byte	0x4c
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.byte	0x4e
	.4byte	0x1597
	.4byte	.LLST2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x159d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x907
	.uleb128 0x33
	.4byte	.LASF261
	.byte	0x1
	.byte	0x60
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15d1
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.byte	0x60
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.string	"ptr"
	.byte	0x1
	.byte	0x62
	.4byte	0x1597
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x33
	.4byte	.LASF262
	.byte	0x1
	.byte	0xa1
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x160c
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.byte	0xa1
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.string	"ptr"
	.byte	0x1
	.byte	0xa3
	.4byte	0x12e7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.byte	0xaa
	.4byte	0x25
	.4byte	.LLST4
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF263
	.byte	0x1
	.byte	0xbe
	.4byte	0x206
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x164f
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.byte	0xbe
	.4byte	0x114d
	.4byte	.LLST5
	.uleb128 0x31
	.string	"end"
	.byte	0x1
	.byte	0xbe
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.byte	0xc0
	.4byte	0x164f
	.4byte	.LLST5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1655
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9fb
	.uleb128 0x33
	.4byte	.LASF264
	.byte	0x1
	.byte	0xcc
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1689
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.byte	0xcc
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.string	"ptr"
	.byte	0x1
	.byte	0xce
	.4byte	0x164f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x156
	.4byte	0x206
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16d0
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x156
	.4byte	0x114d
	.4byte	.LLST7
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.2byte	0x156
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x158
	.4byte	0x16d0
	.4byte	.LLST7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x16d6
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbb9
	.uleb128 0x39
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x161
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x170d
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x161
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.2byte	0x163
	.4byte	0x16d0
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x181
	.4byte	0x206
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1754
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x181
	.4byte	0x114d
	.4byte	.LLST9
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.2byte	0x181
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x183
	.4byte	0x1754
	.4byte	.LLST9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x175a
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc31
	.uleb128 0x39
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x192
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1791
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x192
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.2byte	0x194
	.4byte	0x1754
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x206
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17d8
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x114d
	.4byte	.LLST11
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x17d8
	.4byte	.LLST11
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x17de
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc46
	.uleb128 0x39
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x1b5
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1815
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x17d8
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x39
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x1f0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1891
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x114d
	.4byte	.LLST13
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x1331
	.4byte	.LLST13
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x3b
	.4byte	.LVL32
	.4byte	0x2ac4
	.4byte	0x1877
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0xa4
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.byte	0x8e
	.sleb128 0
	.byte	0x8
	.byte	0xa4
	.byte	0x1e
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL34
	.4byte	0x2ac4
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	curmat
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x212
	.4byte	0x206
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18d8
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x212
	.4byte	0x114d
	.4byte	.LLST16
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.2byte	0x212
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x214
	.4byte	0x18d8
	.4byte	.LLST16
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x18de
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd42
	.uleb128 0x39
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x21d
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1915
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x21d
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.2byte	0x21f
	.4byte	0x18d8
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x22c
	.4byte	0x206
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x195c
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x22c
	.4byte	0x114d
	.4byte	.LLST18
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.2byte	0x22c
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x22e
	.4byte	0x195c
	.4byte	.LLST18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1962
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd69
	.uleb128 0x39
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x237
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1999
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x237
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.2byte	0x239
	.4byte	0x195c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x25c
	.4byte	0x206
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19e0
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x25c
	.4byte	0x114d
	.4byte	.LLST20
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.2byte	0x25c
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x25e
	.4byte	0x19e0
	.4byte	.LLST20
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x19e6
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe25
	.uleb128 0x39
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x26b
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a1d
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x26b
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.2byte	0x26d
	.4byte	0x19e0
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x281
	.4byte	0x206
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a64
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x281
	.4byte	0x114d
	.4byte	.LLST22
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.2byte	0x281
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x283
	.4byte	0x1a64
	.4byte	.LLST22
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a6a
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe5c
	.uleb128 0x39
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x28c
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aa1
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x28c
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.2byte	0x28e
	.4byte	0x1a64
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x2de
	.4byte	0x206
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ae8
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x114d
	.4byte	.LLST24
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x1ae8
	.4byte	.LLST24
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1aee
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf41
	.uleb128 0x39
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x2e9
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b25
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x2e9
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.2byte	0x2eb
	.4byte	0x1ae8
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x2f8
	.4byte	0x206
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b6c
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x2f8
	.4byte	0x114d
	.4byte	.LLST26
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.2byte	0x2f8
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x2fa
	.4byte	0x1b6c
	.4byte	.LLST26
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b72
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf78
	.uleb128 0x39
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x304
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ba9
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x304
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.2byte	0x306
	.4byte	0x1b6c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x31f
	.4byte	0x206
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bf0
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x31f
	.4byte	0x114d
	.4byte	.LLST28
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.2byte	0x31f
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x321
	.4byte	0x1bf0
	.4byte	.LLST28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1bf6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x100d
	.uleb128 0x39
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x32a
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c2d
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x32a
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.2byte	0x32c
	.4byte	0x1bf0
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x39
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x354
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c8c
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x354
	.4byte	0x114d
	.4byte	.LLST30
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x356
	.4byte	0x13bb
	.4byte	.LLST30
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x35a
	.4byte	0x25
	.4byte	.LLST32
	.uleb128 0x3d
	.4byte	.LVL72
	.4byte	0x2ac4
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x6c
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x8
	.byte	0x6c
	.byte	0x1e
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x375
	.4byte	0x206
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cd3
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x375
	.4byte	0x114d
	.4byte	.LLST33
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.2byte	0x375
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x377
	.4byte	0x1cd3
	.4byte	.LLST33
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1cd9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10da
	.uleb128 0x39
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x380
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d10
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x380
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.2byte	0x382
	.4byte	0x1cd3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x391
	.4byte	0x206
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d57
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x391
	.4byte	0x114d
	.4byte	.LLST35
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.2byte	0x391
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x393
	.4byte	0x1d57
	.4byte	.LLST35
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d5d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x111b
	.uleb128 0x39
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x39e
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d94
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x39e
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x1d57
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x466
	.4byte	0x206
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ddd
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x466
	.4byte	0x114d
	.4byte	.LLST37
	.uleb128 0x36
	.string	"end"
	.byte	0x1
	.2byte	0x466
	.4byte	0x4c
	.4byte	.LLST38
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x468
	.4byte	0x1ddd
	.4byte	.LLST37
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1de3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1244
	.uleb128 0x39
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x472
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e1e
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x472
	.4byte	0x114d
	.4byte	.LLST40
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x474
	.4byte	0x1ddd
	.4byte	.LLST40
	.byte	0
	.uleb128 0x39
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x49a
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e5d
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x49a
	.4byte	0x114d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.2byte	0x49c
	.4byte	0x1405
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x4a4
	.4byte	0x25
	.4byte	.LLST42
	.byte	0
	.uleb128 0x39
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x2cc
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e9b
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x2cc
	.4byte	0x114d
	.4byte	.LLST43
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x2ce
	.4byte	0x1371
	.4byte	.LLST43
	.uleb128 0x3e
	.4byte	.LVL97
	.4byte	0x2ae1
	.byte	0
	.uleb128 0x39
	.4byte	.LASF295
	.byte	0x1
	.2byte	0x130
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ef7
	.uleb128 0x36
	.string	"p"
	.byte	0x1
	.2byte	0x130
	.4byte	0x114d
	.4byte	.LLST45
	.uleb128 0x38
	.string	"ptr"
	.byte	0x1
	.2byte	0x132
	.4byte	0x144f
	.4byte	.LLST45
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x25
	.4byte	.LLST47
	.uleb128 0x3f
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x149
	.4byte	0x206
	.4byte	.LLST48
	.uleb128 0x40
	.4byte	.LVL105
	.4byte	0x2af3
	.byte	0
	.uleb128 0x35
	.4byte	.LASF297
	.byte	0x1
	.2byte	0x3dd
	.4byte	0x206
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f71
	.uleb128 0x36
	.string	"ptr"
	.byte	0x1
	.2byte	0x3dd
	.4byte	0x1483
	.4byte	.LLST49
	.uleb128 0x3f
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x3df
	.4byte	0x4c
	.4byte	.LLST50
	.uleb128 0x3f
	.4byte	.LASF298
	.byte	0x1
	.2byte	0x3e0
	.4byte	0x25
	.4byte	.LLST51
	.uleb128 0x41
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x1f5f
	.uleb128 0x38
	.string	"cur"
	.byte	0x1
	.2byte	0x3ee
	.4byte	0x25
	.4byte	.LLST52
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL109
	.4byte	0x2b04
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x40d
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x203f
	.uleb128 0x36
	.string	"ptr"
	.byte	0x1
	.2byte	0x40d
	.4byte	0x1483
	.4byte	.LLST53
	.uleb128 0x42
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x40d
	.4byte	0x14d1
	.4byte	.LLST54
	.uleb128 0x42
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x40d
	.4byte	0x25
	.4byte	.LLST55
	.uleb128 0x42
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x40d
	.4byte	0xa6
	.4byte	.LLST56
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x40f
	.4byte	0x25
	.4byte	.LLST57
	.uleb128 0x3a
	.string	"cur"
	.byte	0x1
	.2byte	0x417
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x43
	.4byte	0x145b
	.4byte	.LBB5
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x420
	.4byte	0x2011
	.uleb128 0x44
	.4byte	0x146c
	.4byte	.LLST58
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x46
	.4byte	0x1478
	.4byte	.LLST59
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LVL124
	.4byte	0x2021
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.4byte	.LVL125
	.4byte	0x1ef7
	.4byte	0x2035
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL127
	.4byte	0x2b1e
	.byte	0
	.uleb128 0x48
	.4byte	0x12ae
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20a9
	.uleb128 0x44
	.4byte	0x12be
	.4byte	.LLST60
	.uleb128 0x49
	.4byte	0x12c7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x46
	.4byte	0x12d2
	.4byte	.LLST60
	.uleb128 0x46
	.4byte	0x12dd
	.4byte	.LLST62
	.uleb128 0x4a
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x44
	.4byte	0x12c7
	.4byte	.LLST63
	.uleb128 0x44
	.4byte	0x12be
	.4byte	.LLST64
	.uleb128 0x4a
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x4b
	.4byte	0x12d2
	.uleb128 0x46
	.4byte	0x12dd
	.4byte	.LLST65
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	0x12f3
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x214a
	.uleb128 0x44
	.4byte	0x1304
	.4byte	.LLST66
	.uleb128 0x44
	.4byte	0x130e
	.4byte	.LLST67
	.uleb128 0x46
	.4byte	0x131a
	.4byte	.LLST68
	.uleb128 0x46
	.4byte	0x1326
	.4byte	.LLST69
	.uleb128 0x41
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x212d
	.uleb128 0x44
	.4byte	0x130e
	.4byte	.LLST70
	.uleb128 0x44
	.4byte	0x1304
	.4byte	.LLST71
	.uleb128 0x4a
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x4b
	.4byte	0x131a
	.uleb128 0x4b
	.4byte	0x1326
	.uleb128 0x3d
	.4byte	.LVL145
	.4byte	0x2ac4
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	curmat
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL142
	.4byte	0x2ac4
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0xa4
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x8e
	.sleb128 0
	.byte	0x8
	.byte	0xa4
	.byte	0x1e
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	0x133d
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21a2
	.uleb128 0x44
	.4byte	0x134e
	.4byte	.LLST72
	.uleb128 0x49
	.4byte	0x1358
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x46
	.4byte	0x1364
	.4byte	.LLST72
	.uleb128 0x4a
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x44
	.4byte	0x1358
	.4byte	.LLST74
	.uleb128 0x44
	.4byte	0x134e
	.4byte	.LLST75
	.uleb128 0x4a
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x4b
	.4byte	0x1364
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	0x137d
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2216
	.uleb128 0x44
	.4byte	0x138e
	.4byte	.LLST76
	.uleb128 0x44
	.4byte	0x1398
	.4byte	.LLST77
	.uleb128 0x46
	.4byte	0x13a4
	.4byte	.LLST76
	.uleb128 0x4b
	.4byte	0x13b0
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x4c
	.4byte	0x1398
	.uleb128 0x4c
	.4byte	0x138e
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x4b
	.4byte	0x13a4
	.uleb128 0x46
	.4byte	0x13b0
	.4byte	.LLST79
	.uleb128 0x3d
	.4byte	.LVL155
	.4byte	0x2ac4
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x6c
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x8e
	.sleb128 0
	.byte	0x8
	.byte	0x6c
	.byte	0x1e
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
	.4byte	0x13c7
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2282
	.uleb128 0x44
	.4byte	0x13d8
	.4byte	.LLST80
	.uleb128 0x44
	.4byte	0x13e2
	.4byte	.LLST81
	.uleb128 0x46
	.4byte	0x13ee
	.4byte	.LLST80
	.uleb128 0x46
	.4byte	0x13fa
	.4byte	.LLST83
	.uleb128 0x4a
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x44
	.4byte	0x13e2
	.4byte	.LLST84
	.uleb128 0x44
	.4byte	0x13d8
	.4byte	.LLST85
	.uleb128 0x4a
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x4b
	.4byte	0x13ee
	.uleb128 0x46
	.4byte	0x13fa
	.4byte	.LLST86
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.4byte	0x1411
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22d0
	.uleb128 0x49
	.4byte	0x1422
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x49
	.4byte	0x142c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4b
	.4byte	0x1438
	.uleb128 0x4e
	.4byte	0x1444
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x4c
	.4byte	0x142c
	.uleb128 0x4c
	.4byte	0x1422
	.uleb128 0x45
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x4b
	.4byte	0x1438
	.uleb128 0x4b
	.4byte	0x1444
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4f
	.4byte	0x1489
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2334
	.uleb128 0x49
	.4byte	0x1496
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x49
	.4byte	0x14a2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x49
	.4byte	0x14ae
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4e
	.4byte	0x14ba
	.uleb128 0x1
	.byte	0x6e
	.uleb128 0x4e
	.4byte	0x14c4
	.uleb128 0x1
	.byte	0x6d
	.uleb128 0x4a
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.uleb128 0x4c
	.4byte	0x1496
	.uleb128 0x4c
	.4byte	0x14a2
	.uleb128 0x4c
	.4byte	0x14ae
	.uleb128 0x4a
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.uleb128 0x4b
	.4byte	0x14ba
	.uleb128 0x4b
	.4byte	0x14c4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x50
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x3fe
	.byte	0x1
	.4byte	0x234e
	.uleb128 0x2a
	.string	"ptr"
	.byte	0x1
	.2byte	0x3fe
	.4byte	0x1483
	.byte	0
	.uleb128 0x51
	.4byte	.LASF359
	.byte	0x1
	.2byte	0x407
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2402
	.uleb128 0x43
	.4byte	0x2334
	.4byte	.LBB49
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x409
	.4byte	0x23b4
	.uleb128 0x49
	.4byte	0x2341
	.uleb128 0x6
	.byte	0x3
	.4byte	attribStack
	.byte	0x9f
	.uleb128 0x3b
	.4byte	.LVL167
	.4byte	0x2b39
	.4byte	0x23a3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL168
	.4byte	0x1ef7
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x52
	.4byte	0x2334
	.4byte	.LBB57
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.2byte	0x40a
	.uleb128 0x49
	.4byte	0x2341
	.uleb128 0x6
	.byte	0x3
	.4byte	clientAttribStack
	.byte	0x9f
	.uleb128 0x3b
	.4byte	.LVL170
	.4byte	0x2b39
	.4byte	0x23f0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL171
	.4byte	0x1ef7
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x451
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x246f
	.uleb128 0x42
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x451
	.4byte	0xbc
	.4byte	.LLST87
	.uleb128 0x54
	.4byte	.LVL174
	.4byte	0x2b1e
	.4byte	0x244d
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x453
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.uleb128 0x55
	.4byte	.LVL176
	.4byte	0x1f71
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x458
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24cc
	.uleb128 0x54
	.4byte	.LVL177
	.4byte	0x2b1e
	.4byte	0x24aa
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x45a
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.uleb128 0x55
	.4byte	.LVL178
	.4byte	0x1489
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x4b0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2539
	.uleb128 0x42
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x4b0
	.4byte	0xbc
	.4byte	.LLST88
	.uleb128 0x54
	.4byte	.LVL181
	.4byte	0x2b1e
	.4byte	0x2517
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4b2
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.uleb128 0x55
	.4byte	.LVL183
	.4byte	0x1f71
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+240
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+80
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x4b7
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2596
	.uleb128 0x54
	.4byte	.LVL184
	.4byte	0x2b1e
	.4byte	0x2574
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4b9
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x502
	.byte	0
	.uleb128 0x55
	.4byte	.LVL185
	.4byte	0x1489
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1+240
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+80
	.byte	0
	.byte	0
	.uleb128 0x56
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x3d3
	.4byte	0x1210
	.uleb128 0x5
	.byte	0x3
	.4byte	attribStack
	.uleb128 0x56
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x3d4
	.4byte	0x1210
	.uleb128 0x5
	.byte	0x3
	.4byte	clientAttribStack
	.uleb128 0x57
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x3d5
	.4byte	0x25c8
	.2byte	0x400
	.uleb128 0x7
	.4byte	0x25
	.uleb128 0x58
	.4byte	.LASF307
	.byte	0x7
	.2byte	0x548
	.4byte	0x25d9
	.uleb128 0x7
	.4byte	0x25de
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2ba
	.uleb128 0x59
	.4byte	.LASF308
	.byte	0x8
	.byte	0x3c
	.4byte	0x3d5
	.uleb128 0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x59
	.4byte	.LASF309
	.byte	0x8
	.byte	0x3d
	.4byte	0x349
	.uleb128 0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0x59
	.4byte	.LASF310
	.byte	0x8
	.byte	0x3e
	.4byte	0x99d
	.uleb128 0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x59
	.4byte	.LASF247
	.byte	0x8
	.byte	0x4a
	.4byte	0x427
	.uleb128 0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x59
	.4byte	.LASF248
	.byte	0x8
	.byte	0x4b
	.4byte	0x427
	.uleb128 0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0x5a
	.string	"tex"
	.byte	0x8
	.byte	0x4c
	.4byte	0x1292
	.uleb128 0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x59
	.4byte	.LASF116
	.byte	0x8
	.byte	0x4d
	.4byte	0x427
	.uleb128 0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xd
	.4byte	0x349
	.4byte	0x266c
	.uleb128 0x5b
	.4byte	0x37
	.2byte	0x3e7
	.byte	0
	.uleb128 0x59
	.4byte	.LASF311
	.byte	0x8
	.byte	0x4f
	.4byte	0x265b
	.uleb128 0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x59
	.4byte	.LASF312
	.byte	0x8
	.byte	0x50
	.4byte	0x265b
	.uleb128 0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xd
	.4byte	0x399
	.4byte	0x26a5
	.uleb128 0xe
	.4byte	0x37
	.byte	0x7
	.uleb128 0x5b
	.4byte	0x37
	.2byte	0x3e7
	.byte	0
	.uleb128 0x59
	.4byte	.LASF313
	.byte	0x8
	.byte	0x51
	.4byte	0x268e
	.uleb128 0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xd
	.4byte	0x3d5
	.4byte	0x26c7
	.uleb128 0x5b
	.4byte	0x37
	.2byte	0x3e7
	.byte	0
	.uleb128 0x59
	.4byte	.LASF314
	.byte	0x8
	.byte	0x52
	.4byte	0x26b6
	.uleb128 0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x59
	.4byte	.LASF315
	.byte	0x8
	.byte	0x5c
	.4byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x59
	.4byte	.LASF316
	.byte	0x8
	.byte	0x5d
	.4byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x59
	.4byte	.LASF317
	.byte	0x8
	.byte	0x5e
	.4byte	0xa6
	.uleb128 0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x59
	.4byte	.LASF318
	.byte	0x8
	.byte	0x60
	.4byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x59
	.4byte	.LASF319
	.byte	0x8
	.byte	0x61
	.4byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x59
	.4byte	.LASF320
	.byte	0x8
	.byte	0x65
	.4byte	0x14b
	.uleb128 0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x59
	.4byte	.LASF321
	.byte	0x8
	.byte	0x66
	.4byte	0x14b
	.uleb128 0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x59
	.4byte	.LASF322
	.byte	0x8
	.byte	0x67
	.4byte	0xa6
	.uleb128 0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x59
	.4byte	.LASF323
	.byte	0x8
	.byte	0x68
	.4byte	0x98
	.uleb128 0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x59
	.4byte	.LASF324
	.byte	0x8
	.byte	0x74
	.4byte	0x46f
	.uleb128 0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x59
	.4byte	.LASF325
	.byte	0x8
	.byte	0x75
	.4byte	0x46f
	.uleb128 0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xd
	.4byte	0x46f
	.4byte	0x27a3
	.uleb128 0xe
	.4byte	0x37
	.byte	0x7
	.byte	0
	.uleb128 0x59
	.4byte	.LASF326
	.byte	0x8
	.byte	0x76
	.4byte	0x2793
	.uleb128 0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x59
	.4byte	.LASF327
	.byte	0x8
	.byte	0x77
	.4byte	0x27c5
	.uleb128 0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x6
	.byte	0x4
	.4byte	0x46f
	.uleb128 0x59
	.4byte	.LASF328
	.byte	0x8
	.byte	0x78
	.4byte	0xa6
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0x59
	.4byte	.LASF161
	.byte	0x8
	.byte	0x93
	.4byte	0xcd1
	.uleb128 0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x59
	.4byte	.LASF329
	.byte	0x8
	.byte	0x96
	.4byte	0x3d5
	.uleb128 0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x59
	.4byte	.LASF330
	.byte	0x8
	.byte	0xa3
	.4byte	0x56b
	.uleb128 0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x59
	.4byte	.LASF331
	.byte	0x8
	.byte	0xa6
	.4byte	0x206
	.uleb128 0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x59
	.4byte	.LASF332
	.byte	0x8
	.byte	0xa7
	.4byte	0xa6
	.uleb128 0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x59
	.4byte	.LASF162
	.byte	0x8
	.byte	0xab
	.4byte	0x206
	.uleb128 0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x59
	.4byte	.LASF134
	.byte	0x8
	.byte	0xb2
	.4byte	0x14b
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x59
	.4byte	.LASF135
	.byte	0x8
	.byte	0xb3
	.4byte	0x14b
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x59
	.4byte	.LASF136
	.byte	0x8
	.byte	0xb4
	.4byte	0x14b
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x59
	.4byte	.LASF137
	.byte	0x8
	.byte	0xb5
	.4byte	0x14b
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x59
	.4byte	.LASF212
	.byte	0x8
	.byte	0xb7
	.4byte	0x14b
	.uleb128 0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x59
	.4byte	.LASF333
	.byte	0x8
	.byte	0xc0
	.4byte	0x595
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x59
	.4byte	.LASF334
	.byte	0x8
	.byte	0xea
	.4byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x59
	.4byte	.LASF335
	.byte	0x8
	.byte	0xeb
	.4byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x59
	.4byte	.LASF172
	.byte	0x8
	.byte	0xec
	.4byte	0xb1
	.uleb128 0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x59
	.4byte	.LASF336
	.byte	0x8
	.byte	0xed
	.4byte	0x5d9
	.uleb128 0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x59
	.4byte	.LASF337
	.byte	0x8
	.byte	0xee
	.4byte	0x5d9
	.uleb128 0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x59
	.4byte	.LASF338
	.byte	0x8
	.byte	0xef
	.4byte	0x1eb
	.uleb128 0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x59
	.4byte	.LASF339
	.byte	0x8
	.byte	0xf0
	.4byte	0x1eb
	.uleb128 0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x59
	.4byte	.LASF340
	.byte	0x8
	.byte	0xf2
	.4byte	0x1eb
	.uleb128 0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x59
	.4byte	.LASF208
	.byte	0x8
	.byte	0xf3
	.4byte	0x1eb
	.uleb128 0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x59
	.4byte	.LASF244
	.byte	0x8
	.byte	0xff
	.4byte	0x639
	.uleb128 0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x5c
	.4byte	.LASF245
	.byte	0x8
	.2byte	0x100
	.4byte	0x639
	.uleb128 0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xd
	.4byte	0x206
	.4byte	0x2974
	.uleb128 0xe
	.4byte	0x37
	.byte	0x3
	.byte	0
	.uleb128 0x5c
	.4byte	.LASF341
	.byte	0x8
	.2byte	0x101
	.4byte	0x2964
	.uleb128 0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x5c
	.4byte	.LASF342
	.byte	0x8
	.2byte	0x107
	.4byte	0x206
	.uleb128 0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x5c
	.4byte	.LASF343
	.byte	0x8
	.2byte	0x108
	.4byte	0xa6
	.uleb128 0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x5c
	.4byte	.LASF344
	.byte	0x8
	.2byte	0x10b
	.4byte	0x300
	.uleb128 0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xd
	.4byte	0x66c
	.4byte	0x29cc
	.uleb128 0xe
	.4byte	0x37
	.byte	0x3
	.byte	0
	.uleb128 0x5c
	.4byte	.LASF345
	.byte	0x8
	.2byte	0x11e
	.4byte	0x29bc
	.uleb128 0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x5c
	.4byte	.LASF177
	.byte	0x8
	.2byte	0x143
	.4byte	0x206
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x5c
	.4byte	.LASF178
	.byte	0x8
	.2byte	0x144
	.4byte	0x14b
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x5c
	.4byte	.LASF180
	.byte	0x8
	.2byte	0x145
	.4byte	0x1eb
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x5c
	.4byte	.LASF181
	.byte	0x8
	.2byte	0x146
	.4byte	0x1eb
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x5c
	.4byte	.LASF179
	.byte	0x8
	.2byte	0x147
	.4byte	0x1eb
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x5c
	.4byte	.LASF183
	.byte	0x8
	.2byte	0x148
	.4byte	0x300
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0x5c
	.4byte	.LASF346
	.byte	0x8
	.2byte	0x14a
	.4byte	0x1042
	.uleb128 0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x5c
	.4byte	.LASF347
	.byte	0x8
	.2byte	0x14f
	.4byte	0xa6
	.uleb128 0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x5c
	.4byte	.LASF348
	.byte	0x8
	.2byte	0x152
	.4byte	0xdd
	.uleb128 0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0xd
	.4byte	0x11a5
	.4byte	0x2a90
	.uleb128 0xe
	.4byte	0x37
	.byte	0x13
	.byte	0
	.uleb128 0x5c
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x3b3
	.4byte	0x2a80
	.uleb128 0x5
	.byte	0x3
	.4byte	attribs
	.uleb128 0xd
	.4byte	0x11a5
	.4byte	0x2ab2
	.uleb128 0xe
	.4byte	0x37
	.byte	0x1
	.byte	0
	.uleb128 0x5c
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x4ab
	.4byte	0x2aa2
	.uleb128 0x5
	.byte	0x3
	.4byte	clientAttribs
	.uleb128 0x5d
	.4byte	.LASF351
	.4byte	0x4c
	.4byte	0x2ae1
	.uleb128 0x24
	.4byte	0x4c
	.uleb128 0x24
	.4byte	0x20d
	.uleb128 0x24
	.4byte	0x37
	.byte	0
	.uleb128 0x5e
	.4byte	.LASF352
	.byte	0x3
	.2byte	0x315
	.4byte	0x2af3
	.uleb128 0x24
	.4byte	0xa6
	.byte	0
	.uleb128 0x5f
	.4byte	.LASF353
	.byte	0x8
	.byte	0xca
	.4byte	0x2b04
	.uleb128 0x24
	.4byte	0x206
	.byte	0
	.uleb128 0x60
	.4byte	.LASF360
	.byte	0xa
	.byte	0x76
	.4byte	0x4c
	.4byte	0x2b1e
	.uleb128 0x24
	.4byte	0x4c
	.uleb128 0x24
	.4byte	0x25
	.byte	0
	.uleb128 0x5f
	.4byte	.LASF354
	.byte	0x8
	.byte	0xc7
	.4byte	0x2b39
	.uleb128 0x24
	.4byte	0xa6
	.uleb128 0x24
	.4byte	0x7f
	.uleb128 0x24
	.4byte	0x5c
	.byte	0
	.uleb128 0x61
	.4byte	.LASF361
	.4byte	0x4c
	.uleb128 0x24
	.4byte	0x4c
	.uleb128 0x24
	.4byte	0x5c
	.uleb128 0x24
	.4byte	0x37
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
	.uleb128 0x4
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
	.uleb128 0x1a
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1f
	.uleb128 0x16
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
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x52
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
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x57
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x5b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x5c
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
	.uleb128 0x5d
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x60
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
	.uleb128 0x61
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
	.4byte	.LFE64-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
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
	.4byte	.LFE66-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
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
	.4byte	.LFE86-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE88-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58-.Ltext0
	.4byte	.LFE92-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63-.Ltext0
	.4byte	.LFE94-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL73-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE102-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL87-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96-.Ltext0
	.4byte	.LFE91-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x40
	.byte	0x44
	.byte	0x24
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-1-.Ltext0
	.2byte	0xa
	.byte	0x79
	.sleb128 4
	.byte	0x6
	.byte	0x40
	.byte	0x44
	.byte	0x24
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 68
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL129-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL129-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-1-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 68
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL137-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL140-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL141-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL140-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE90-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL153-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL154-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL165-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL164-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL174-1-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL176-1-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL181-1-.Ltext0
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
	.4byte	.LVL183-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL183-1-.Ltext0
	.4byte	.LFE116-.Ltext0
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
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	.LBB56-.Ltext0
	.4byte	.LBE56-.Ltext0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB57-.Ltext0
	.4byte	.LBE57-.Ltext0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF193:
	.string	"list_base"
.LASF289:
	.string	"pushViewport"
.LASF203:
	.string	"index_shift"
.LASF9:
	.string	"char"
.LASF231:
	.string	"planes"
.LASF290:
	.string	"popViewport"
.LASF329:
	.string	"globAmbient"
.LASF18:
	.string	"GLint"
.LASF342:
	.string	"copy_mat_enabled"
.LASF77:
	.string	"boxInfo"
.LASF281:
	.string	"popPolyStipple"
.LASF19:
	.string	"GLushort"
.LASF121:
	.string	"accum_clear"
.LASF326:
	.string	"texture_stack"
.LASF226:
	.string	"clear_val"
.LASF271:
	.string	"popLighting"
.LASF287:
	.string	"pushTransform"
.LASF334:
	.string	"fb_max_height"
.LASF225:
	.string	"zpass"
.LASF311:
	.string	"_normalelements"
.LASF202:
	.string	"index_offset"
.LASF186:
	.string	"color_material_face"
.LASF69:
	.string	"_mat"
.LASF211:
	.string	"poly_stipple"
.LASF156:
	.string	"auto_normal"
.LASF132:
	.string	"alpha_func"
.LASF167:
	.string	"polygon_offset_line"
.LASF62:
	.string	"specular"
.LASF146:
	.string	"tex_coords"
.LASF199:
	.string	"blue"
.LASF53:
	.string	"_stack"
.LASF276:
	.string	"pushPixelMode"
.LASF114:
	.string	"Aarg"
.LASF126:
	.string	"index_logic_op"
.LASF210:
	.string	"cull_ccw"
.LASF356:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl_stacks.c"
.LASF64:
	.string	"spotCutoff"
.LASF83:
	.string	"row_length"
.LASF98:
	.string	"_tex_env"
.LASF330:
	.string	"curmat"
.LASF54:
	.string	"begin"
.LASF122:
	.string	"color_buffer"
.LASF251:
	.string	"pushPolygon"
.LASF344:
	.string	"_clearcolor"
.LASF104:
	.string	"maxlod"
.LASF73:
	.string	"GL_STATE_NONE"
.LASF298:
	.string	"new_size"
.LASF139:
	.string	"draw_buffer"
.LASF166:
	.string	"point_smooth"
.LASF266:
	.string	"popEval"
.LASF41:
	.string	"_gx_litobj"
.LASF71:
	.string	"shininess"
.LASF304:
	.string	"attribStack"
.LASF312:
	.string	"_vertexelements"
.LASF46:
	.string	"GXColorf"
.LASF113:
	.string	"CargOp"
.LASF123:
	.string	"alpha_test"
.LASF248:
	.string	"vert"
.LASF305:
	.string	"clientAttribStack"
.LASF323:
	.string	"_cleardepth"
.LASF61:
	.string	"diffuse"
.LASF333:
	.string	"cur_state"
.LASF309:
	.string	"_tempnormalelement"
.LASF214:
	.string	"back_poly_mode"
.LASF319:
	.string	"cur_tex_client"
.LASF264:
	.string	"popDepthBuffer"
.LASF29:
	.string	"uint32_t"
.LASF24:
	.string	"int8_t"
.LASF236:
	.string	"pushFun"
.LASF178:
	.string	"fog_mode"
.LASF354:
	.string	"_glSetErrorEx"
.LASF181:
	.string	"fog_endz"
.LASF316:
	.string	"_type"
.LASF213:
	.string	"front_poly_mode"
.LASF30:
	.string	"vu16"
.LASF12:
	.string	"float"
.LASF150:
	.string	"raster_tex_coords"
.LASF257:
	.string	"n_opts"
.LASF169:
	.string	"polygon_offset_point"
.LASF194:
	.string	"base"
.LASF144:
	.string	"index"
.LASF90:
	.string	"bias"
.LASF26:
	.string	"int16_t"
.LASF40:
	.string	"GXColor"
.LASF239:
	.string	"push"
.LASF340:
	.string	"line_width"
.LASF7:
	.string	"long long unsigned int"
.LASF293:
	.string	"popVertexArray"
.LASF196:
	.string	"map_color"
.LASF345:
	.string	"Trans"
.LASF229:
	.string	"plane_equ"
.LASF244:
	.string	"pack"
.LASF70:
	.string	"emissive"
.LASF238:
	.string	"AttribOpt"
.LASF292:
	.string	"popPixelStore"
.LASF174:
	.string	"texture_1d"
.LASF324:
	.string	"model_stack"
.LASF258:
	.string	"pushAccum"
.LASF112:
	.string	"Carg"
.LASF124:
	.string	"dither"
.LASF200:
	.string	"alpha"
.LASF48:
	.string	"enable"
.LASF346:
	.string	"glTexEnvs"
.LASF138:
	.string	"blend_const_color"
.LASF285:
	.string	"popStencil"
.LASF120:
	.string	"accum_buffer"
.LASF134:
	.string	"blend_type"
.LASF263:
	.string	"pushDepthBuffer"
.LASF280:
	.string	"pushPolyStipple"
.LASF242:
	.string	"typeCur"
.LASF283:
	.string	"popScissor"
.LASF219:
	.string	"stencil"
.LASF183:
	.string	"fog_color"
.LASF204:
	.string	"zoom_x"
.LASF205:
	.string	"zoom_y"
.LASF14:
	.string	"size_t"
.LASF217:
	.string	"scissor"
.LASF78:
	.string	"width"
.LASF246:
	.string	"vertex_array"
.LASF99:
	.string	"min_filter"
.LASF260:
	.string	"popAccum"
.LASF261:
	.string	"popColorBuffer"
.LASF221:
	.string	"func"
.LASF318:
	.string	"cur_tex"
.LASF109:
	.string	"mode"
.LASF91:
	.string	"ColorTrans"
.LASF358:
	.string	"_wgpipe"
.LASF230:
	.string	"transform"
.LASF111:
	.string	"comAlpha"
.LASF35:
	.string	"_Bool"
.LASF240:
	.string	"attribStack_t"
.LASF31:
	.string	"vu32"
.LASF140:
	.string	"clear_color"
.LASF172:
	.string	"scissor_test"
.LASF253:
	.string	"pushVertexArray"
.LASF297:
	.string	"resizeStack"
.LASF208:
	.string	"point_size"
.LASF286:
	.string	"popTexture"
.LASF192:
	.string	"stipple_pattern"
.LASF349:
	.string	"attribs"
.LASF339:
	.string	"normFar"
.LASF22:
	.string	"GLfloat"
.LASF343:
	.string	"copy_material"
.LASF227:
	.string	"texture"
.LASF220:
	.string	"stencil_write"
.LASF187:
	.string	"color_material_param"
.LASF75:
	.string	"GL_STATE_NEWLIST"
.LASF277:
	.string	"popPixelMode"
.LASF173:
	.string	"stencil_test"
.LASF301:
	.string	"glPopAttrib"
.LASF268:
	.string	"popFog"
.LASF34:
	.string	"vf32"
.LASF352:
	.string	"glCullFace"
.LASF60:
	.string	"ambient"
.LASF336:
	.string	"scissorInfo"
.LASF332:
	.string	"gxwinding"
.LASF295:
	.string	"popEnable"
.LASF300:
	.string	"glPushAttrib"
.LASF32:
	.string	"vs16"
.LASF125:
	.string	"color_logic_op"
.LASF42:
	.string	"GXLightObj"
.LASF275:
	.string	"popListBase"
.LASF250:
	.string	"pushLighting"
.LASF259:
	.string	"pushColorBuffer"
.LASF317:
	.string	"_GLtype"
.LASF133:
	.string	"alpha_ref"
.LASF164:
	.string	"line_stipple"
.LASF135:
	.string	"blend_src"
.LASF72:
	.string	"Material"
.LASF322:
	.string	"depthfunction"
.LASF119:
	.string	"glTexEnvSet"
.LASF25:
	.string	"uint8_t"
.LASF149:
	.string	"raster_color"
.LASF325:
	.string	"projection_stack"
.LASF96:
	.string	"TRAN_B"
.LASF314:
	.string	"_colorelements"
.LASF131:
	.string	"logic_op"
.LASF38:
	.string	"_vecf"
.LASF157:
	.string	"blend"
.LASF81:
	.string	"swap"
.LASF36:
	.string	"guVector"
.LASF6:
	.string	"long long int"
.LASF52:
	.string	"VertexArray"
.LASF13:
	.string	"long double"
.LASF20:
	.string	"GLuint"
.LASF294:
	.string	"popPolygon"
.LASF74:
	.string	"GL_STATE_BEGIN"
.LASF201:
	.string	"depth"
.LASF347:
	.string	"read_mode"
.LASF55:
	.string	"elem_size"
.LASF291:
	.string	"pushPixelStore"
.LASF255:
	.string	"stackEnd"
.LASF76:
	.string	"glState"
.LASF155:
	.string	"depth_clear"
.LASF65:
	.string	"constant"
.LASF197:
	.string	"map_stencil"
.LASF177:
	.string	"fog_enable"
.LASF17:
	.string	"GLbitfield"
.LASF130:
	.string	"alpha_mask"
.LASF44:
	.string	"VertexElement"
.LASF89:
	.string	"scale"
.LASF361:
	.string	"memset"
.LASF106:
	.string	"biasclamp"
.LASF97:
	.string	"TRAN_A"
.LASF184:
	.string	"hint"
.LASF33:
	.string	"vs32"
.LASF249:
	.string	"pushCurrent"
.LASF23:
	.string	"GLclampf"
.LASF95:
	.string	"TRAN_G"
.LASF321:
	.string	"depthupdate"
.LASF188:
	.string	"Ambient"
.LASF50:
	.string	"size"
.LASF94:
	.string	"TRAN_R"
.LASF151:
	.string	"depth_buffer"
.LASF68:
	.string	"LightObj"
.LASF234:
	.string	"near"
.LASF272:
	.string	"pushLine"
.LASF101:
	.string	"wrap_s"
.LASF102:
	.string	"wrap_t"
.LASF66:
	.string	"linear"
.LASF222:
	.string	"mask"
.LASF136:
	.string	"blend_dst"
.LASF127:
	.string	"red_mask"
.LASF313:
	.string	"_texcoordelements"
.LASF79:
	.string	"height"
.LASF302:
	.string	"glPushClientAttrib"
.LASF341:
	.string	"color_write_mask"
.LASF270:
	.string	"popHint"
.LASF163:
	.string	"line_smooth"
.LASF328:
	.string	"cur_mode"
.LASF254:
	.string	"pushEnable"
.LASF327:
	.string	"curmtx"
.LASF359:
	.string	"_glInitStacks"
.LASF310:
	.string	"_temptexcoordelement"
.LASF198:
	.string	"green"
.LASF27:
	.string	"uint16_t"
.LASF355:
	.string	"GNU C 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF288:
	.string	"popTransform"
.LASF224:
	.string	"zfail"
.LASF247:
	.string	"norm"
.LASF245:
	.string	"unpack"
.LASF45:
	.string	"TexCoordElement"
.LASF59:
	.string	"spotDir"
.LASF47:
	.string	"_array"
.LASF243:
	.string	"pixel_store"
.LASF252:
	.string	"pushTexture"
.LASF63:
	.string	"spotExponent"
.LASF350:
	.string	"clientAttribs"
.LASF296:
	.string	"tex2d"
.LASF195:
	.string	"pixel_mode"
.LASF67:
	.string	"quad_t"
.LASF105:
	.string	"lodbias"
.LASF161:
	.string	"lights"
.LASF5:
	.string	"short int"
.LASF103:
	.string	"minlod"
.LASF100:
	.string	"max_filter"
.LASF10:
	.string	"long int"
.LASF129:
	.string	"blue_mask"
.LASF154:
	.string	"depth_func"
.LASF303:
	.string	"glPopClientAttrib"
.LASF299:
	.string	"initStack"
.LASF37:
	.string	"WGPipe"
.LASF15:
	.string	"GLenum"
.LASF165:
	.string	"normalize"
.LASF176:
	.string	"eval"
.LASF57:
	.string	"_light"
.LASF116:
	.string	"color"
.LASF21:
	.string	"GLsizei"
.LASF233:
	.string	"viewport"
.LASF348:
	.string	"call_offset"
.LASF308:
	.string	"_tempcolorelement"
.LASF85:
	.string	"skip_pixels"
.LASF39:
	.string	"_gx_color"
.LASF108:
	.string	"maxaniso"
.LASF159:
	.string	"cull_face"
.LASF256:
	.string	"opts"
.LASF0:
	.string	"unsigned int"
.LASF152:
	.string	"depth_test"
.LASF179:
	.string	"fog_density"
.LASF49:
	.string	"stride"
.LASF162:
	.string	"lighting"
.LASF191:
	.string	"stipple_factor"
.LASF170:
	.string	"polygon_smooth"
.LASF171:
	.string	"polygon_stipple"
.LASF206:
	.string	"read_buffer"
.LASF269:
	.string	"pushHint"
.LASF1:
	.string	"sizetype"
.LASF8:
	.string	"long unsigned int"
.LASF237:
	.string	"popFun"
.LASF274:
	.string	"pushListBase"
.LASF147:
	.string	"raster_pos"
.LASF267:
	.string	"pushFog"
.LASF137:
	.string	"blend_op"
.LASF357:
	.string	"D:\\\\devkitPro\\\\portlibs\\\\thirdparty\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF180:
	.string	"fog_startz"
.LASF28:
	.string	"int32_t"
.LASF87:
	.string	"pixelStore"
.LASF232:
	.string	"mat_mode"
.LASF306:
	.string	"init_size"
.LASF182:
	.string	"fog_index"
.LASF153:
	.string	"depth_write"
.LASF145:
	.string	"normal"
.LASF51:
	.string	"type"
.LASF2:
	.string	"unsigned char"
.LASF228:
	.string	"glTexEnv"
.LASF58:
	.string	"enabled"
.LASF84:
	.string	"skip_rows"
.LASF190:
	.string	"line"
.LASF265:
	.string	"pushEval"
.LASF315:
	.string	"vert_i"
.LASF82:
	.string	"lsb_first"
.LASF118:
	.string	"alpha_scale"
.LASF209:
	.string	"polygon"
.LASF93:
	.string	"transfer_enum"
.LASF160:
	.string	"clip_planes"
.LASF43:
	.string	"Vector"
.LASF110:
	.string	"comRGB"
.LASF335:
	.string	"fb_max_width"
.LASF223:
	.string	"fail"
.LASF338:
	.string	"normNear"
.LASF273:
	.string	"popLine"
.LASF320:
	.string	"depthtestenabled"
.LASF360:
	.string	"realloc"
.LASF128:
	.string	"green_mask"
.LASF107:
	.string	"edgelod"
.LASF331:
	.string	"gxcullfaceanabled"
.LASF278:
	.string	"pushPoint"
.LASF216:
	.string	"units"
.LASF353:
	.string	"_glSetEnableTex"
.LASF235:
	.string	"viewBox"
.LASF4:
	.string	"signed char"
.LASF56:
	.string	"Stack"
.LASF262:
	.string	"popCurrent"
.LASF3:
	.string	"short unsigned int"
.LASF168:
	.string	"polygon_offset_fill"
.LASF351:
	.string	"memcpy"
.LASF307:
	.string	"wgPipe"
.LASF284:
	.string	"pushStencil"
.LASF218:
	.string	"scissor_box"
.LASF141:
	.string	"current"
.LASF207:
	.string	"point"
.LASF282:
	.string	"pushScissor"
.LASF11:
	.string	"double"
.LASF86:
	.string	"alignment"
.LASF279:
	.string	"popPoint"
.LASF88:
	.string	"_trans"
.LASF215:
	.string	"factor"
.LASF16:
	.string	"GLboolean"
.LASF117:
	.string	"rgb_scale"
.LASF148:
	.string	"raster_index"
.LASF92:
	.string	"_glState"
.LASF189:
	.string	"shade_model"
.LASF158:
	.string	"color_material"
.LASF80:
	.string	"_pixelStore"
.LASF241:
	.string	"typeStack"
.LASF143:
	.string	"edge_flag"
.LASF337:
	.string	"viewPort"
.LASF142:
	.string	"raster_valid"
.LASF175:
	.string	"texture_2d"
.LASF212:
	.string	"cull_mode"
.LASF185:
	.string	"lighting_stuff"
.LASF115:
	.string	"AargOp"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
