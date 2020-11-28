	.file	"glut.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl timercallback
	.type	timercallback, @function
timercallback:
.LFB79:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/glut.c"
	.loc 1 477 0
	.cfi_startproc
.LVL0:
	.loc 1 478 0
	lis 9,count@ha
	.loc 1 477 0
	mflr 0
	.loc 1 478 0
	lbz 10,count@l(9)
	.loc 1 477 0
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 478 0
	addi 10,10,1
	rlwinm 10,10,0,0xff
	.loc 1 477 0
	stw 31,12(1)
	.loc 1 478 0
	stb 10,count@l(9)
	.cfi_offset 31, -4
	mr 31,9
	.loc 1 477 0
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 479 0
	lbz 10,count@l(9)
	cmplwi 7,10,2
	ble+ 7,.L2
	.loc 1 481 0
	lis 3,.LC3@ha
.LVL1:
	lbz 4,count@l(9)
.LVL2:
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl printf
.LVL3:
	.loc 1 482 0
	bl GX_AbortFrame
.LVL4:
.L2:
	.loc 1 485 0
	lbz 9,count@l(31)
	cmplwi 7,9,10
	ble- 7,.L3
	.loc 1 487 0
	li 10,1
	lis 9,kill@ha
	stb 10,kill@l(9)
.L3:
	.loc 1 490 0
	lis 9,incFPS@ha
	lis 10,FPS@ha
	lbz 8,incFPS@l(9)
	.loc 1 492 0
	addi 11,1,16
	.loc 1 490 0
	stb 8,FPS@l(10)
	.loc 1 491 0
	li 10,0
	stb 10,incFPS@l(9)
	.loc 1 492 0
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
	.cfi_endproc
.LFE79:
	.size	timercallback, .-timercallback
	.align 2
	.globl glutThread
	.type	glutThread, @function
glutThread:
.LFB81:
	.loc 1 499 0
	.cfi_startproc
.LVL5:
	.loc 1 501 0
	lis 9,displayfunc@ha
	.loc 1 499 0
	mflr 0
	.loc 1 501 0
	lwz 9,displayfunc@l(9)
	.loc 1 499 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 501 0
	cmpwi 7,9,0
	.loc 1 499 0
	stw 0,28(1)
	stmw 29,12(1)
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.loc 1 501 0
	beq- 7,.L7
	.loc 1 501 0 is_stmt 0 discriminator 1
	mtctr 9
	bctrl
.LVL6:
.L7:
	.loc 1 504 0 is_stmt 1
	lis 31,count@ha
	li 30,0
	la 31,count@l(31)
	.loc 1 505 0
	lis 29,idlefunc@ha
.L9:
	lwz 9,idlefunc@l(29)
	.loc 1 504 0
	stb 30,0(31)
	.loc 1 505 0
	cmpwi 7,9,0
	beq- 7,.L8
	.loc 1 505 0 is_stmt 0 discriminator 1
	mtctr 9
	bctrl
.LVL7:
.L8:
	.loc 1 506 0 is_stmt 1
	bl LWP_YieldThread
.LVL8:
	.loc 1 507 0
	b .L9
	.cfi_endproc
.LFE81:
	.size	glutThread, .-glutThread
	.align 2
	.globl glutInit
	.type	glutInit, @function
glutInit:
.LFB64:
	.loc 1 65 0
	.cfi_startproc
.LVL9:
	mflr 0
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	.loc 1 75 0
	lis 10,.LC4@ha
	lis 9,__glutProgramName@ha
	la 10,.LC4@l(10)
	.loc 1 65 0
	stfd 31,40(1)
	.loc 1 75 0
	stw 10,__glutProgramName@l(9)
	.loc 1 65 0
	stw 0,52(1)
	stmw 25,12(1)
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.cfi_offset 25, -36
	.cfi_offset 26, -32
	.cfi_offset 27, -28
	.cfi_offset 28, -24
	.cfi_offset 29, -20
	.cfi_offset 30, -16
	.cfi_offset 31, -12
	.loc 1 78 0
	bl VIDEO_Init
.LVL10:
	.loc 1 83 0
	lis 28,.LC5@ha
	.loc 1 80 0
	li 3,0
	bl VIDEO_GetPreferredMode
.LVL11:
	.loc 1 83 0
	lfs 31,.LC5@l(28)
	.loc 1 80 0
	lis 9,rmode@ha
	.loc 1 83 0
	fmr 3,31
	.loc 1 80 0
	stw 3,rmode@l(9)
	.loc 1 83 0
	fmr 1,31
	fmr 2,31
	bl glColor3f
.LVL12:
	.loc 1 84 0
	lis 5,.LC9@ha
	lfs 1,.LC9@l(5)
	fmr 2,1
	bl glTexCoord2f
.LVL13:
	.loc 1 85 0
	lis 7,.LC9@ha
	lfs 1,.LC9@l(7)
	fmr 3,31
	fmr 2,1
	bl glNormal3f
.LVL14:
	.loc 1 97 0
	lis 7,.LC6@ha
	lis 9,lights@ha
	.loc 1 85 0
	li 4,8
	.loc 1 97 0
	lfs 12,.LC6@l(7)
	.loc 1 99 0
	lis 7,.LC7@ha
	la 9,lights@l(9)
	.loc 1 89 0
	lfs 0,.LC5@l(28)
	.loc 1 99 0
	lfs 13,.LC7@l(7)
	mtctr 4
	mr 11,9
	.loc 1 89 0
	li 10,0
	.loc 1 92 0
	li 8,0
.LVL15:
.L19:
	.loc 1 89 0 discriminator 2
	stw 10,68(9)
	.loc 1 92 0 discriminator 2
	li 3,0
	.loc 1 89 0 discriminator 2
	stw 10,72(9)
	addi 4,4,-1
.LVL16:
	stfs 0,76(9)
	li 30,0
	.loc 1 90 0 discriminator 2
	stw 10,80(9)
	addi 9,9,164
	.loc 1 92 0 discriminator 2
	stb 8,-164(9)
	.loc 1 93 0 discriminator 2
	stw 10,-68(9)
	stw 10,-64(9)
	stw 10,-60(9)
	stfs 0,-56(9)
	.loc 1 94 0 discriminator 2
	stw 10,-52(9)
	stw 10,-48(9)
	stw 10,-44(9)
	stfs 0,-40(9)
	.loc 1 95 0 discriminator 2
	stw 10,-36(9)
	stw 10,-32(9)
	stw 10,-28(9)
	stfs 0,-24(9)
	.loc 1 97 0 discriminator 2
	stfs 12,-16(9)
	.loc 1 98 0 discriminator 2
	stw 10,-20(9)
	.loc 1 99 0 discriminator 2
	stw 10,-80(9)
	stw 10,-76(9)
	stfs 13,-72(9)
	.loc 1 101 0 discriminator 2
	stfs 0,-12(9)
	.loc 1 102 0 discriminator 2
	stw 10,-8(9)
	.loc 1 103 0 discriminator 2
	stw 10,-4(9)
.LVL17:
	bdnz .L19
	.loc 1 106 0
	lis 9,.LANCHOR0@ha
	addi 10,11,112
	la 9,.LANCHOR0@l(9)
	.loc 1 107 0
	addi 11,11,128
	lswi 5,9,16
	stswi 5,11,16
	.loc 1 109 0
	lis 11,globAmbient@ha
	.loc 1 106 0
	lswi 5,9,16
	stswi 5,10,16
	.loc 1 109 0
	la 11,globAmbient@l(11)
	addi 10,9,16
	.loc 1 114 0
	addi 9,9,32
	.loc 1 109 0
	lswi 5,10,16
	stswi 5,11,16
	.loc 1 112 0
	lis 8,curmat@ha
	la 31,curmat@l(8)
	stw 30,curmat@l(8)
	.loc 1 113 0
	addi 11,31,16
	.loc 1 124 0
	lis 27,model_stack@ha
	.loc 1 113 0
	lswi 5,10,16
	stswi 5,11,16
	.loc 1 114 0
	addi 10,31,32
	lswi 5,9,16
	stswi 5,10,16
	.loc 1 117 0
	lis 9,blend_type@ha
	stb 4,blend_type@l(9)
	.loc 1 118 0
	li 10,1
	lis 9,blend_src@ha
	.loc 1 124 0
	la 27,model_stack@l(27)
	.loc 1 118 0
	stb 10,blend_src@l(9)
	.loc 1 119 0
	lis 9,blend_dst@ha
	stb 3,blend_dst@l(9)
	.loc 1 120 0
	lis 9,blend_op@ha
	.loc 1 122 0
	li 10,2
	.loc 1 124 0
	li 4,32
	.loc 1 120 0
	stb 3,blend_op@l(9)
	.loc 1 122 0
	lis 9,cull_mode@ha
	.loc 1 124 0
	mr 3,27
	.loc 1 112 0
	stfs 0,12(31)
	.loc 1 115 0
	stfs 0,60(31)
	lis 26,texture_stack@ha
	.loc 1 122 0
	stb 10,cull_mode@l(9)
	la 26,texture_stack@l(26)
	.loc 1 112 0
	stw 30,4(31)
	.loc 1 130 0
	li 29,0
	.loc 1 112 0
	stw 30,8(31)
	mr 25,31
	.loc 1 115 0
	stw 30,48(31)
	addis 26,26,0xfff8
	stw 30,52(31)
	.loc 1 130 0
	ori 29,29,33984
	.loc 1 115 0
	stw 30,56(31)
	.loc 1 124 0
	bl InitStackMtx
.LVL18:
	.loc 1 125 0
	li 3,5888
	.loc 1 132 0
	li 31,0
	.loc 1 125 0
	bl glMatrixMode
.LVL19:
	addi 26,26,-19456
	.loc 1 126 0
	bl glLoadIdentity
.LVL20:
	.loc 1 128 0
	lis 3,projection_stack@ha
	li 4,2
	la 3,projection_stack@l(3)
	bl InitStackPrjMtx
.LVL21:
	.loc 1 129 0
	li 3,5889
	bl glMatrixMode
.LVL22:
	.loc 1 132 0
	ori 31,31,33992
	.loc 1 130 0
	bl glLoadIdentity
.LVL23:
.L21:
	slwi 3,29,4
	.loc 1 134 0 discriminator 2
	li 4,2
	add 3,26,3
	bl InitStackMtx
.LVL24:
	.loc 1 135 0 discriminator 2
	li 3,5890
	bl glMatrixMode
.LVL25:
	.loc 1 136 0 discriminator 2
	mr 3,29
	addi 29,29,1
.LVL26:
	bl glActiveTextureARB
.LVL27:
	.loc 1 137 0 discriminator 2
	bl glLoadIdentity
.LVL28:
	.loc 1 132 0 discriminator 2
	cmpw 7,29,31
	bne+ 7,.L21
	.loc 1 140 0
	li 3,0
	ori 3,3,33984
	bl glActiveTextureARB
.LVL29:
	.loc 1 142 0
	lis 10,norm@ha
	li 5,0
	la 9,norm@l(10)
	stb 5,norm@l(10)
	.loc 1 143 0
	lis 10,_normalelements@ha
	la 10,_normalelements@l(10)
	.loc 1 144 0
	li 7,12
	.loc 1 143 0
	stw 10,4(9)
	.loc 1 146 0
	li 8,3
	.loc 1 145 0
	li 10,5126
	.loc 1 148 0
	lis 6,vert@ha
	.loc 1 144 0
	stb 7,8(9)
	.loc 1 145 0
	stw 10,16(9)
	.loc 1 146 0
	stw 8,12(9)
	.loc 1 148 0
	la 9,vert@l(6)
	stb 5,vert@l(6)
	.loc 1 149 0
	lis 6,_vertexelements@ha
	la 6,_vertexelements@l(6)
	.loc 1 160 0
	li 5,8
	.loc 1 149 0
	stw 6,4(9)
	.loc 1 160 0
	mtctr 5
	.loc 1 150 0
	stb 7,8(9)
	.loc 1 157 0
	li 6,8
	.loc 1 151 0
	stw 8,12(9)
	.loc 1 158 0
	li 7,2
	.loc 1 152 0
	stw 10,16(9)
.LVL30:
	lis 9,tex+4@ha
	la 9,tex+4@l(9)
	.loc 1 156 0
	li 10,0
	.loc 1 159 0
	li 8,5126
.LVL31:
.L23:
	.loc 1 156 0 discriminator 2
	stw 10,0(9)
	li 31,0
	.loc 1 157 0 discriminator 2
	stb 6,4(9)
	addi 9,9,20
	.loc 1 158 0 discriminator 2
	stw 7,-12(9)
	.loc 1 159 0 discriminator 2
	stw 8,-8(9)
	.loc 1 160 0 discriminator 2
	stb 10,-24(9)
	.loc 1 154 0 discriminator 2
	bdnz .L23
	.loc 1 166 0
	lis 10,color@ha
	.loc 1 169 0
	li 26,4
	.loc 1 166 0
	la 9,color@l(10)
	stb 31,color@l(10)
	.loc 1 167 0
	lis 10,_colorelements@ha
	.loc 1 169 0
	stw 26,12(9)
	.loc 1 167 0
	la 10,_colorelements@l(10)
	.loc 1 187 0
	li 29,1
	.loc 1 167 0
	stw 10,4(9)
	.loc 1 168 0
	li 10,16
	stb 10,8(9)
	.loc 1 170 0
	li 10,5126
	stw 10,16(9)
	.loc 1 172 0
	lis 9,curmtx@ha
	stw 27,curmtx@l(9)
	.loc 1 173 0
	li 10,5888
	lis 9,cur_mode@ha
	.loc 1 191 0
	lfs 31,.LC5@l(28)
	.loc 1 173 0
	stw 10,cur_mode@l(9)
	.loc 1 174 0
	lis 9,cur_tex@ha
	stw 31,cur_tex@l(9)
	.loc 1 175 0
	lis 9,cur_tex_client@ha
	stw 31,cur_tex_client@l(9)
	.loc 1 180 0
	lis 9,lighting@ha
	stb 31,lighting@l(9)
	.loc 1 183 0
	lis 9,gxcullfaceanabled@ha
	stb 31,gxcullfaceanabled@l(9)
	.loc 1 184 0
	li 10,2305
	lis 9,gxwinding@ha
	.loc 1 177 0
	stw 30,64(25)
	.loc 1 184 0
	stw 10,gxwinding@l(9)
	.loc 1 186 0
	lis 9,depthtestenabled@ha
	stb 31,depthtestenabled@l(9)
	.loc 1 187 0
	lis 9,depthfunction@ha
	stw 29,depthfunction@l(9)
	.loc 1 190 0
	lis 10,_clearcolor@ha
	.loc 1 188 0
	lis 9,depthupdate@ha
	.loc 1 190 0
	stb 31,_clearcolor@l(10)
	.loc 1 188 0
	stb 29,depthupdate@l(9)
	.loc 1 190 0
	la 9,_clearcolor@l(10)
	li 10,-1
	stb 31,1(9)
	stb 10,3(9)
	stb 31,2(9)
	.loc 1 191 0
	lis 9,_cleardepth@ha
	stfs 31,_cleardepth@l(9)
	.loc 1 193 0
	bl initTextures
.LVL32:
	.loc 1 194 0
	bl initCalllist
.LVL33:
	.loc 1 195 0
	bl initTextureSlots
.LVL34:
	.loc 1 197 0
	lis 9,cur_state@ha
	stw 31,cur_state@l(9)
	.loc 1 203 0
	lis 10,Trans@ha
	.loc 1 199 0
	lis 9,scissor_test@ha
	.loc 1 203 0
	stfs 31,Trans@l(10)
	.loc 1 199 0
	stb 31,scissor_test@l(9)
.LVL35:
	.loc 1 203 0
	la 9,Trans@l(10)
	stw 30,4(9)
.LVL36:
	.loc 1 209 0
	li 10,1029
	.loc 1 203 0
	stw 30,12(9)
.LVL37:
	stw 30,20(9)
.LVL38:
	stw 30,28(9)
.LVL39:
	stfs 31,8(9)
	stfs 31,16(9)
	stfs 31,24(9)
	.loc 1 206 0
	lis 9,normNear@ha
	stw 30,normNear@l(9)
	.loc 1 207 0
	lis 9,normFar@ha
	stfs 31,normFar@l(9)
	.loc 1 209 0
	lis 9,read_mode@ha
	stw 10,read_mode@l(9)
	.loc 1 211 0
	lis 9,copy_mat_enabled@ha
	stb 31,copy_mat_enabled@l(9)
	.loc 1 212 0
	li 10,5634
	lis 9,copy_material@ha
	stw 10,copy_material@l(9)
	.loc 1 214 0
	lis 9,fog_enable@ha
	stb 31,fog_enable@l(9)
	.loc 1 215 0
	lis 9,fog_mode@ha
	stb 26,fog_mode@l(9)
	.loc 1 216 0
	lis 9,fog_startz@ha
	stw 30,fog_startz@l(9)
	.loc 1 217 0
	lis 9,fog_endz@ha
	stfs 31,fog_endz@l(9)
	.loc 1 218 0
	lis 9,.LC8@ha
	lfs 0,.LC8@l(9)
	.loc 1 219 0
	lis 10,fog_color@ha
	.loc 1 218 0
	lis 9,fog_density@ha
	.loc 1 219 0
	stb 31,fog_color@l(10)
	.loc 1 218 0
	stfs 0,fog_density@l(9)
	.loc 1 219 0
	la 9,fog_color@l(10)
	stb 31,1(9)
	stb 31,2(9)
	stb 29,3(9)
	.loc 1 221 0
	bl _glInitStacks
.LVL40:
	.loc 1 225 0
	lis 10,color_write_mask@ha
	.loc 1 231 0
	addi 11,1,48
	.loc 1 225 0
	la 9,color_write_mask@l(10)
	stb 29,color_write_mask@l(10)
.LVL41:
	stb 29,1(9)
.LVL42:
	stb 29,2(9)
.LVL43:
	stb 29,3(9)
.LVL44:
	.loc 1 231 0
	lmw 25,12(1)
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
	.cfi_endproc
.LFE64:
	.size	glutInit, .-glutInit
	.align 2
	.globl ShowConsole
	.type	ShowConsole, @function
ShowConsole:
.LFB65:
	.loc 1 238 0
	.cfi_startproc
	.loc 1 239 0
	li 10,1
	lis 9,_console_enabled@ha
	stb 10,_console_enabled@l(9)
	blr
	.cfi_endproc
.LFE65:
	.size	ShowConsole, .-ShowConsole
	.align 2
	.globl HideConsole
	.type	HideConsole, @function
HideConsole:
.LFB66:
	.loc 1 244 0
	.cfi_startproc
	.loc 1 246 0
	li 10,0
	lis 9,_console_enabled@ha
	stb 10,_console_enabled@l(9)
	blr
	.cfi_endproc
.LFE66:
	.size	HideConsole, .-HideConsole
	.align 2
	.globl getVImode
	.type	getVImode, @function
getVImode:
.LFB67:
	.loc 1 250 0
	.cfi_startproc
.LVL45:
	.loc 1 251 0
	lis 9,rmode@ha
	lwz 10,rmode@l(9)
	lhz 10,14(10)
	stw 10,0(3)
	.loc 1 252 0
	lwz 9,rmode@l(9)
	lhz 9,16(9)
	stw 9,0(4)
	blr
	.cfi_endproc
.LFE67:
	.size	getVImode, .-getVImode
	.align 2
	.globl glutInitDisplayMode
	.type	glutInitDisplayMode, @function
glutInitDisplayMode:
.LFB68:
	.loc 1 255 0
	.cfi_startproc
.LVL46:
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stmw 28,32(1)
	.cfi_register 65, 0
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.loc 1 257 0
	lis 31,rmode@ha
	lwz 3,rmode@l(31)
.LVL47:
	lis 29,.LANCHOR1@ha
	.loc 1 255 0
	stw 0,52(1)
	.cfi_offset 65, 4
	.loc 1 257 0
	la 30,.LANCHOR1@l(29)
	bl SYS_AllocateFramebuffer
.LVL48:
	.loc 1 264 0
	lis 28,fb@ha
	.loc 1 257 0
	addis 3,3,0x4000
	stw 3,.LANCHOR1@l(29)
	.loc 1 258 0
	lwz 3,rmode@l(31)
	bl SYS_AllocateFramebuffer
.LVL49:
	.loc 1 260 0
	lwz 4,.LANCHOR1@l(29)
	.loc 1 258 0
	addis 3,3,0x4000
	.loc 1 260 0
	li 5,0
	.loc 1 258 0
	stw 3,4(30)
	.loc 1 260 0
	lwz 3,rmode@l(31)
	bl VIDEO_ClearFrameBuffer
.LVL50:
	.loc 1 261 0
	lwz 4,4(30)
	lwz 3,rmode@l(31)
	li 5,0
	bl VIDEO_ClearFrameBuffer
.LVL51:
	.loc 1 263 0
	lwz 3,rmode@l(31)
	bl VIDEO_Configure
.LVL52:
	.loc 1 264 0
	lwz 9,fb@l(28)
	slwi 9,9,2
	lwzx 3,30,9
	bl VIDEO_SetNextFramebuffer
.LVL53:
	.loc 1 265 0
	li 3,0
	bl VIDEO_SetBlack
.LVL54:
	.loc 1 266 0
	bl VIDEO_Flush
.LVL55:
	.loc 1 267 0
	bl VIDEO_WaitVSync
.LVL56:
	.loc 1 268 0
	lwz 9,rmode@l(31)
	lwz 9,0(9)
	andi. 10,9,1
	beq+ 0,.L31
	.loc 1 268 0 is_stmt 0 discriminator 1
	bl VIDEO_WaitVSync
.LVL57:
.L31:
	.loc 1 273 0 is_stmt 1
	lwz 3,rmode@l(31)
.LVL58:
	.loc 1 276 0
	li 7,300
	li 5,30
	li 4,30
	.loc 1 273 0
	lhz 6,4(3)
	.loc 1 276 0
	addi 6,6,-60
.LVL59:
	bl CON_InitEx
.LVL60:
	lis 9,_console_inited@ha
	cntlzw 3,3
	.loc 1 290 0
	lis 4,0x4
	.loc 1 276 0
	srwi 3,3,5
	stb 3,_console_inited@l(9)
.LVL61:
	.loc 1 290 0
	li 3,32
	bl memalign
.LVL62:
	.loc 1 291 0
	lis 5,0x4
	.loc 1 290 0
	mr 29,3
.LVL63:
	.loc 1 291 0
	li 4,0
	bl memset
.LVL64:
	.loc 1 293 0
	lis 4,0x4
	mr 3,29
	bl GX_Init
.LVL65:
	.loc 1 296 0
	lwz 9,rmode@l(31)
	lis 10,0x4330
	lis 7,.LC11@ha
	lhz 8,4(9)
	stw 10,8(1)
	stw 8,12(1)
	lfs 4,.LC11@l(7)
	lhz 9,6(9)
	lfd 0,8(1)
	stw 10,16(1)
	stw 9,20(1)
	fsub 3,0,4
	lis 9,.LC9@ha
	lfd 0,16(1)
	lfs 1,.LC9@l(9)
	frsp 3,3
	fsub 4,0,4
	lis 9,.LC5@ha
	fmr 2,1
	lfs 6,.LC5@l(9)
	fmr 5,1
	frsp 4,4
	bl GX_SetViewport
.LVL66:
	.loc 1 297 0
	lwz 9,rmode@l(31)
	lhz 4,8(9)
	lhz 3,6(9)
	bl GX_GetYScaleFactor
.LVL67:
	.loc 1 298 0
	bl GX_SetDispCopyYScale
.LVL68:
	.loc 1 300 0
	lwz 9,rmode@l(31)
	.loc 1 298 0
	mr 29,3
.LVL69:
	.loc 1 300 0
	li 4,0
	lhz 5,4(9)
	li 3,0
.LVL70:
	lhz 6,6(9)
	bl GX_SetScissor
.LVL71:
	.loc 1 301 0
	lwz 9,rmode@l(31)
	lis 10,fb_max_height@ha
	.loc 1 303 0
	lis 5,scissorInfo@ha
	.loc 1 301 0
	lhz 7,6(9)
	.loc 1 303 0
	la 8,scissorInfo@l(5)
	.loc 1 302 0
	lhz 6,4(9)
	.loc 1 306 0
	li 3,0
	.loc 1 301 0
	stw 7,fb_max_height@l(10)
	.loc 1 302 0
	lis 10,fb_max_width@ha
	stw 6,fb_max_width@l(10)
	.loc 1 303 0
	li 10,0
	stw 10,scissorInfo@l(5)
	.loc 1 304 0
	lis 5,viewPort@ha
	.loc 1 303 0
	stw 10,4(8)
	.loc 1 306 0
	li 4,0
	.loc 1 303 0
	stw 7,12(8)
	stw 6,8(8)
	.loc 1 304 0
	la 8,viewPort@l(5)
	stw 10,4(8)
	stw 6,8(8)
	stw 7,12(8)
	stw 10,viewPort@l(5)
	.loc 1 306 0
	lhz 6,6(9)
	lhz 5,4(9)
	bl GX_SetDispCopySrc
.LVL72:
	.loc 1 307 0
	lwz 9,rmode@l(31)
	rlwinm 4,29,0,0xffff
	lhz 3,4(9)
	bl GX_SetDispCopyDst
.LVL73:
	.loc 1 308 0
	lwz 6,rmode@l(31)
	li 5,1
	lbz 3,25(6)
	addi 4,6,26
	addi 6,6,50
	bl GX_SetCopyFilter
.LVL74:
	.loc 1 309 0
	lwz 9,rmode@l(31)
	lhz 10,8(9)
	lhz 4,16(9)
	slwi 10,10,1
	lbz 3,24(9)
	xor 4,4,10
	cntlzw 4,4
	srwi 4,4,5
	bl GX_SetFieldMode
.LVL75:
	.loc 1 311 0
	lwz 9,rmode@l(31)
	.loc 1 312 0
	li 3,2
	.loc 1 311 0
	lbz 9,25(9)
	cmpwi 7,9,0
	bne- 7,.L42
	.loc 1 314 0
	li 3,0
.L42:
	li 4,0
	.loc 1 316 0
	li 31,0
.LVL76:
	.loc 1 314 0
	bl GX_SetPixelFmt
.LVL77:
	.loc 1 316 0
	li 9,127
	rlwimi 31,9,24,0,7
.LVL78:
	.loc 1 318 0
	mr 29,1
.LVL79:
	.loc 1 316 0
	rlwimi 31,9,16,8,15
	.loc 1 318 0
	li 4,0
	.loc 1 316 0
	rlwimi 31,9,8,16,23
	li 9,-1
	rlwimi 31,9,0,24,31
	.loc 1 318 0
	stwu 31,24(29)
	mr 3,29
	bl GX_SetCopyClear
.LVL80:
	.loc 1 319 0
	lwz 9,fb@l(28)
	li 4,1
	slwi 9,9,2
	lwzx 3,30,9
	bl GX_CopyDisp
.LVL81:
	.loc 1 320 0
	lis 4,0xff
	mr 3,29
	ori 4,4,65535
	stw 31,24(1)
	bl GX_SetCopyClear
.LVL82:
	.loc 1 321 0
	lwz 9,fb@l(28)
	li 4,1
	.loc 1 347 0
	li 31,0
.LVL83:
	.loc 1 321 0
	slwi 9,9,2
	lwzx 3,30,9
	bl GX_CopyDisp
.LVL84:
	.loc 1 322 0
	lwz 9,fb@l(28)
	li 4,1
	slwi 9,9,2
	lwzx 3,30,9
	bl GX_CopyDisp
.LVL85:
	.loc 1 323 0
	li 3,0
	bl GX_SetDispCopyGamma
.LVL86:
	.loc 1 332 0
	li 3,0
	li 4,9
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
.LVL87:
	.loc 1 333 0
	li 3,0
	li 4,10
	li 5,0
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
.LVL88:
	.loc 1 334 0
	li 5,1
	li 6,5
	li 7,0
	li 3,0
	li 4,11
	bl GX_SetVtxAttrFmt
.LVL89:
	.loc 1 339 0
	bl GX_ClearVtxDesc
.LVL90:
	.loc 1 340 0
	li 3,9
	li 4,1
	bl GX_SetVtxDesc
.LVL91:
	.loc 1 341 0
	li 3,10
	li 4,1
	bl GX_SetVtxDesc
.LVL92:
	.loc 1 342 0
	li 3,11
	li 4,1
	bl GX_SetVtxDesc
.LVL93:
	.loc 1 343 0
	li 3,13
	li 4,1
	bl GX_SetVtxDesc
.LVL94:
.L35:
	.loc 1 349 0 discriminator 2
	rlwinm 3,31,0,0xff
	bl incTexDesc
.LVL95:
	li 5,1
	mr 4,3
	li 6,4
	li 3,0
	li 7,0
	bl GX_SetVtxAttrFmt
.LVL96:
	.loc 1 347 0 discriminator 2
	cmpwi 7,31,7
	addi 31,31,1
.LVL97:
	bne+ 7,.L35
	.loc 1 352 0
	li 3,9
	li 4,0
	li 5,0
	.loc 1 355 0
	li 31,0
.LVL98:
	.loc 1 352 0
	bl GX_SetArray
.LVL99:
	.loc 1 353 0
	li 3,10
	li 4,0
	li 5,0
	bl GX_SetArray
.LVL100:
	.loc 1 354 0
	li 3,11
	li 4,0
	li 5,0
	bl GX_SetArray
.LVL101:
.L37:
	.loc 1 357 0 discriminator 2
	rlwinm 3,31,0,0xff
	bl incTexDesc
.LVL102:
	li 4,0
	li 5,0
	bl GX_SetArray
.LVL103:
	.loc 1 355 0 discriminator 2
	cmpwi 7,31,7
	addi 31,31,1
.LVL104:
	bne+ 7,.L37
	.loc 1 362 0
	li 4,1
	li 5,4
	li 6,60
	li 3,0
	bl GX_SetTexCoordGen
.LVL105:
	.loc 1 364 0
	li 3,1
	bl GX_SetNumChans
.LVL106:
	.loc 1 366 0
	li 3,1
	bl GX_SetNumTexGens
.LVL107:
	.loc 1 367 0
	bl GX_InvalidateTexAll
.LVL108:
	.loc 1 369 0
	li 5,255
	li 6,4
	li 3,0
	li 4,255
	bl GX_SetTevOrder
.LVL109:
	.loc 1 370 0
	li 4,4
	li 3,0
	bl GX_SetTevOp
.LVL110:
	.loc 1 373 0
	li 3,1
	bl GX_SetAlphaUpdate
.LVL111:
	.loc 1 375 0
	li 3,0
	bl GX_SetCullMode
.LVL112:
	.loc 1 377 0
	bl GX_DrawDone
.LVL113:
	.loc 1 381 0
	lwz 0,52(1)
	lmw 28,32(1)
.LVL114:
	mtlr 0
	.cfi_restore 65
	addi 1,1,48
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_def_cfa_offset 0
	.loc 1 380 0
	b ResetArrays
.LVL115:
	.cfi_endproc
.LFE68:
	.size	glutInitDisplayMode, .-glutInitDisplayMode
	.align 2
	.globl computeFactor
	.type	computeFactor, @function
computeFactor:
.LFB70:
	.loc 1 395 0
	.cfi_startproc
	.loc 1 396 0
	lis 9,rmode@ha
	.loc 1 395 0
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.loc 1 396 0
	lwz 9,rmode@l(9)
	lhz 10,6(9)
	lis 9,0x4330
	stw 9,8(1)
	stw 10,12(1)
	lis 10,.LC11@ha
	lfs 0,.LC11@l(10)
	lis 10,offset@ha
	lwz 10,offset@l(10)
	lfd 13,8(1)
	slwi 10,10,1
	stw 9,16(1)
	xoris 10,10,0x8000
	lis 9,.LC13@ha
	stw 10,20(1)
	fsub 0,13,0
	lfs 1,.LC13@l(9)
	lfd 13,16(1)
	.loc 1 397 0
	.loc 1 396 0
	frsp 0,0
	.loc 1 397 0
	addi 1,1,24
	.cfi_def_cfa_offset 0
	.loc 1 396 0
	fsub 1,13,1
	frsp 1,1
	fsubs 1,0,1
	.loc 1 397 0
	fdivs 1,1,0
	blr
	.cfi_endproc
.LFE70:
	.size	computeFactor, .-computeFactor
	.align 2
	.globl GX_SetModViewport
	.type	GX_SetModViewport, @function
GX_SetModViewport:
.LFB71:
	.loc 1 400 0
	.cfi_startproc
.LVL116:
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	addi 11,1,64
	stw 0,68(1)
	.cfi_offset 65, 4
	bl _savefpr_29
	.cfi_offset 61, -24
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	.loc 1 400 0
	fmr 31,4
	.loc 1 401 0
	stfd 3,16(1)
	.loc 1 400 0
	fmr 30,1
	.loc 1 401 0
	stfd 5,24(1)
	.loc 1 400 0
	fmr 29,2
	.loc 1 401 0
	stfd 6,32(1)
	bl computeFactor
.LVL117:
	.loc 1 403 0
	lis 9,rmode@ha
	lwz 9,rmode@l(9)
	.loc 1 401 0
	fmr 4,1
.LVL118:
	.loc 1 403 0
	fadds 29,29,31
.LVL119:
	.loc 1 404 0
	lwz 0,68(1)
	.loc 1 403 0
	lhz 10,6(9)
	lis 9,offset@ha
	lwz 9,offset@l(9)
	fneg 2,1
	fmuls 4,31,4
	lfd 3,16(1)
	subf 9,9,10
	fmr 1,30
.LVL120:
	xoris 9,9,0x8000
	lfd 5,24(1)
	stw 9,12(1)
	lis 9,0x4330
	stw 9,8(1)
	lis 9,.LC13@ha
	lfs 0,.LC13@l(9)
	.loc 1 404 0
	mtlr 0
	.cfi_restore 65
	.loc 1 403 0
	lfd 13,8(1)
	lfd 6,32(1)
	fsub 0,13,0
	.loc 1 404 0
	lfd 30,48(1)
.LVL121:
	lfd 31,56(1)
.LVL122:
	.loc 1 403 0
	frsp 0,0
	fmadds 2,2,29,0
	.loc 1 404 0
	lfd 29,40(1)
	addi 1,1,64
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_def_cfa_offset 0
	.loc 1 403 0
	b GX_SetViewport
.LVL123:
	.cfi_endproc
.LFE71:
	.size	GX_SetModViewport, .-GX_SetModViewport
	.align 2
	.globl glutCreateWindow
	.type	glutCreateWindow, @function
glutCreateWindow:
.LFB69:
	.loc 1 383 0
	.cfi_startproc
.LVL124:
	mflr 0
	stwu 1,-40(1)
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 384 0
	lis 9,rmode@ha
	lis 7,.LC11@ha
	.loc 1 383 0
	stfd 31,32(1)
	stw 0,44(1)
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.loc 1 384 0
	lwz 10,rmode@l(9)
	lis 9,0x4330
	lfs 4,.LC11@l(7)
	lhz 8,4(10)
	stw 9,16(1)
	stw 8,20(1)
	lhz 10,6(10)
	lfd 0,16(1)
	stw 10,28(1)
	stw 9,24(1)
	fsub 3,0,4
	lis 9,.LC5@ha
	lfd 0,24(1)
	lfs 31,.LC5@l(9)
	lis 9,.LC9@ha
	fsub 4,0,4
	lfs 1,.LC9@l(9)
	frsp 3,3
	fmr 2,1
	fmr 5,1
	frsp 4,4
	fmr 6,31
	bl GX_SetModViewport
.LVL125:
	.loc 1 386 0
	li 3,5888
	bl glMatrixMode
.LVL126:
	.loc 1 387 0
	bl glLoadIdentity
.LVL127:
	.loc 1 388 0
	lis 9,.LC14@ha
	lfd 1,.LC14@l(9)
	fmr 8,31
	lis 9,.LC7@ha
	fmr 2,1
	stfd 1,8(1)
	fmr 3,1
	lfs 6,.LC7@l(9)
	fmr 4,1
	fmr 5,1
	fmr 7,1
	bl gluLookAt
.LVL128:
	.loc 1 390 0
	addi 11,1,40
	li 3,0
	b _restfpr_31_x
	.cfi_restore 63
	.cfi_restore 65
	.cfi_endproc
.LFE69:
	.size	glutCreateWindow, .-glutCreateWindow
	.align 2
	.globl GX_SetModScissor
	.type	GX_SetModScissor, @function
GX_SetModScissor:
.LFB72:
	.loc 1 407 0
	.cfi_startproc
.LVL129:
	mflr 0
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stmw 30,56(1)
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	mr 30,4
	mr 31,6
	.loc 1 408 0
	stw 3,48(1)
	stw 5,52(1)
	.loc 1 410 0
	add 30,30,31
	.loc 1 407 0
	stw 0,68(1)
	.cfi_offset 65, 4
	.loc 1 408 0
	bl computeFactor
.LVL130:
	.loc 1 410 0
	lis 9,rmode@ha
	fneg 12,1
	lwz 9,rmode@l(9)
	lwz 3,48(1)
.LVL131:
	lhz 10,6(9)
	lis 9,offset@ha
	lwz 9,offset@l(9)
	stw 30,20(1)
	subf 10,9,10
	lis 9,0x4330
	xoris 10,10,0x8000
	stw 9,8(1)
	stw 10,12(1)
	lis 10,.LC13@ha
	lfs 13,.LC13@l(10)
	lis 10,.LC11@ha
	lfd 0,8(1)
	stw 9,16(1)
	lis 9,.LC17@ha
	fsub 13,0,13
	lfs 0,.LC11@l(10)
	lfd 11,16(1)
	lwz 5,52(1)
.LVL132:
	fsub 0,11,0
	frsp 13,13
	frsp 0,0
	fmadds 0,12,0,13
	lfs 13,.LC17@l(9)
	fcmpu 7,0,13
	cror 30,29,30
	beq- 7,.L50
	fctiwz 0,0
	addi 8,1,44
	stfiwx 0,0,8
	lwz 4,44(1)
	b .L51
.L50:
	fsubs 0,0,13
	addi 8,1,40
	fctiwz 0,0
	stfiwx 0,0,8
	lwz 4,40(1)
	addis 4,4,0x8000
.L51:
	lfs 0,.LC11@l(10)
	lis 10,0x4330
	stw 31,28(1)
	stw 10,24(1)
	lfd 11,24(1)
	fsub 0,11,0
	frsp 0,0
	fmuls 1,1,0
.LVL133:
	lfs 0,.LC17@l(9)
	fcmpu 7,1,0
	cror 30,29,30
	beq- 7,.L52
	fctiwz 1,1
	addi 8,1,36
	stfiwx 1,0,8
	lwz 6,36(1)
	b .L53
.L52:
	fsubs 0,1,0
	addi 9,1,32
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 6,32(1)
	addis 6,6,0x8000
.L53:
	.loc 1 411 0
	lwz 0,68(1)
	lmw 30,56(1)
.LVL134:
	mtlr 0
	.cfi_restore 65
	addi 1,1,64
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
.LVL135:
	.loc 1 410 0
	b GX_SetScissor
.LVL136:
	.cfi_endproc
.LFE72:
	.size	GX_SetModScissor, .-GX_SetModScissor
	.align 2
	.globl GX_SetMaxScissor
	.type	GX_SetMaxScissor, @function
GX_SetMaxScissor:
.LFB73:
	.loc 1 414 0
	.cfi_startproc
	.loc 1 415 0
	lis 9,rmode@ha
	li 3,0
	lwz 9,rmode@l(9)
	li 4,0
	lhz 5,4(9)
	lhz 6,6(9)
	.loc 1 416 0
	.loc 1 415 0
	b GX_SetModScissor
.LVL137:
	.cfi_endproc
.LFE73:
	.size	GX_SetMaxScissor, .-GX_SetMaxScissor
	.align 2
	.globl glutSwapBuffers
	.type	glutSwapBuffers, @function
glutSwapBuffers:
.LFB74:
	.loc 1 421 0
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stmw 30,8(1)
	.cfi_register 65, 0
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.loc 1 424 0
	lis 31,fb@ha
	.loc 1 421 0
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 422 0
	bl glFlush
.LVL138:
	.loc 1 424 0
	lwz 9,fb@l(31)
	.loc 1 426 0
	lis 30,.LANCHOR1@ha
	la 30,.LANCHOR1@l(30)
	li 4,0
	.loc 1 424 0
	xori 9,9,1
	stw 9,fb@l(31)
	.loc 1 426 0
	slwi 9,9,2
	lwzx 3,30,9
	bl GX_CopyDisp
.LVL139:
	.loc 1 428 0
	bl GX_DrawDone
.LVL140:
	.loc 1 429 0
	lis 9,incFPS@ha
	lbz 10,incFPS@l(9)
	addi 10,10,1
	rlwinm 10,10,0,0xff
	stb 10,incFPS@l(9)
	.loc 1 437 0
	lwz 9,fb@l(31)
	slwi 9,9,2
	lwzx 3,30,9
	bl VIDEO_SetNextFramebuffer
.LVL141:
	.loc 1 439 0
	bl VIDEO_Flush
.LVL142:
	.loc 1 442 0
	lwz 0,20(1)
	lmw 30,8(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	.loc 1 441 0
	b VIDEO_WaitVSync
.LVL143:
	.cfi_endproc
.LFE74:
	.size	glutSwapBuffers, .-glutSwapBuffers
	.align 2
	.globl glutInitWindowSize
	.type	glutInitWindowSize, @function
glutInitWindowSize:
.LFB75:
	.loc 1 444 0
	.cfi_startproc
.LVL144:
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	.loc 1 445 0
	lis 9,0x4330
	xoris 3,3,0x8000
.LVL145:
	lis 10,.LC13@ha
	stw 9,8(1)
	xoris 4,4,0x8000
.LVL146:
	stw 3,12(1)
	stw 9,16(1)
	lis 9,.LC9@ha
	lfd 0,8(1)
	stw 4,20(1)
	lfs 4,.LC13@l(10)
	lfs 1,.LC9@l(9)
	lis 9,.LC5@ha
	fsub 3,0,4
	lfd 0,16(1)
	fmr 2,1
	lfs 6,.LC5@l(9)
	fsub 4,0,4
	.loc 1 446 0
	.loc 1 445 0
	frsp 3,3
	.loc 1 446 0
	addi 1,1,24
	.cfi_def_cfa_offset 0
	.loc 1 445 0
	fmr 5,1
	frsp 4,4
	b GX_SetModViewport
.LVL147:
	.cfi_endproc
.LFE75:
	.size	glutInitWindowSize, .-glutInitWindowSize
	.align 2
	.globl glutGet
	.type	glutGet, @function
glutGet:
.LFB76:
	.loc 1 448 0
	.cfi_startproc
.LVL148:
	.loc 1 450 0
	cmplwi 7,3,201
	.loc 1 453 0
	li 9,480
	.loc 1 450 0
	beq- 7,.L64
	cmplwi 7,3,504
	.loc 1 454 0
	li 9,18
	.loc 1 450 0
	beq- 7,.L64
	.loc 1 449 0
	xori 9,3,200
	addic 9,9,-1
	subfe 9,9,9
	andi. 9,9,640
.L64:
.LVL149:
	.loc 1 457 0
	mr 3,9
.LVL150:
	blr
	.cfi_endproc
.LFE76:
	.size	glutGet, .-glutGet
	.align 2
	.globl glutDisplayFunc
	.type	glutDisplayFunc, @function
glutDisplayFunc:
.LFB77:
	.loc 1 461 0
	.cfi_startproc
.LVL151:
	.loc 1 462 0
	lis 9,displayfunc@ha
	stw 3,displayfunc@l(9)
	blr
	.cfi_endproc
.LFE77:
	.size	glutDisplayFunc, .-glutDisplayFunc
	.align 2
	.globl glutIdleFunc
	.type	glutIdleFunc, @function
glutIdleFunc:
.LFB78:
	.loc 1 467 0
	.cfi_startproc
.LVL152:
	.loc 1 468 0
	lis 9,idlefunc@ha
	stw 3,idlefunc@l(9)
	blr
	.cfi_endproc
.LFE78:
	.size	glutIdleFunc, .-glutIdleFunc
	.align 2
	.globl getFPS
	.type	getFPS, @function
getFPS:
.LFB80:
	.loc 1 495 0
	.cfi_startproc
	.loc 1 497 0
	lis 9,FPS@ha
	lbz 3,FPS@l(9)
	blr
	.cfi_endproc
.LFE80:
	.size	getFPS, .-getFPS
	.align 2
	.globl glutMainLoop
	.type	glutMainLoop, @function
glutMainLoop:
.LFB82:
	.loc 1 511 0
	.cfi_startproc
.LVL153:
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stmw 30,40(1)
	.cfi_register 65, 0
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.loc 1 516 0
	lis 31,watchdog@ha
	la 3,watchdog@l(31)
	.loc 1 511 0
	stw 0,52(1)
	.cfi_offset 65, 4
	.loc 1 516 0
	bl SYS_CreateAlarm
.LVL154:
	.loc 1 518 0
	lis 10,kill@ha
	.loc 1 526 0
	cmpwi 0,3,0
	.loc 1 518 0
	li 9,0
	stb 9,kill@l(10)
	.loc 1 523 0
	li 8,1
	.loc 1 520 0
	li 9,0
	.loc 1 523 0
	stw 8,8(1)
	.loc 1 520 0
	stw 9,16(1)
	mr 30,10
	.loc 1 521 0
	stw 9,20(1)
	.loc 1 524 0
	stw 9,12(1)
	.loc 1 526 0
	bne+ 0,.L71
	.loc 1 528 0
	lis 9,count@ha
	.loc 1 530 0
	lis 6,timercallback@ha
	.loc 1 528 0
	stb 3,count@l(9)
	.loc 1 530 0
	addi 4,1,16
	lwz 3,watchdog@l(31)
.LVL155:
	addi 5,1,8
	la 6,timercallback@l(6)
	li 7,0
	bl SYS_SetPeriodicAlarm
.LVL156:
.L71:
	.loc 1 535 0
	lis 4,glutThread@ha
	addi 3,1,24
	la 4,glutThread@l(4)
	li 5,0
	li 6,0
	li 7,0
	li 8,67
	bl LWP_CreateThread
.LVL157:
.L73:
	.loc 1 539 0
	addi 3,1,8
	bl nanosleep
.LVL158:
	.loc 1 540 0
	lbz 9,kill@l(30)
	cmpwi 7,9,0
	beq+ 7,.L73
	.loc 1 542 0
	bl do_reset
.LVL159:
	b .L73
	.cfi_endproc
.LFE82:
	.size	glutMainLoop, .-glutMainLoop
	.align 2
	.globl getFrontFramebuffer
	.type	getFrontFramebuffer, @function
getFrontFramebuffer:
.LFB83:
	.loc 1 549 0
	.cfi_startproc
	.loc 1 550 0
	lis 9,fb@ha
	.loc 1 551 0
	lis 10,.LANCHOR1@ha
	.loc 1 550 0
	lwz 9,fb@l(9)
	.loc 1 551 0
	la 10,.LANCHOR1@l(10)
	.loc 1 550 0
	slwi 9,9,2
	.loc 1 551 0
	lwzx 3,10,9
	blr
	.cfi_endproc
.LFE83:
	.size	getFrontFramebuffer, .-getFrontFramebuffer
	.align 2
	.globl getBackFramebuffer
	.type	getBackFramebuffer, @function
getBackFramebuffer:
.LFB84:
	.loc 1 554 0
	.cfi_startproc
	.loc 1 555 0
	lis 9,fb@ha
	.loc 1 556 0
	lis 10,.LANCHOR1@ha
	.loc 1 555 0
	lwz 9,fb@l(9)
	.loc 1 556 0
	la 10,.LANCHOR1@l(10)
	.loc 1 555 0
	xori 9,9,1
	slwi 9,9,2
	.loc 1 556 0
	lwzx 3,10,9
	blr
	.cfi_endproc
.LFE84:
	.size	getBackFramebuffer, .-getBackFramebuffer
	.align 2
	.globl power_off
	.type	power_off, @function
power_off:
.LFB85:
	.loc 1 559 0
	.cfi_startproc
.LVL160:
	.loc 1 560 0
	li 10,1
	lis 9,kill@ha
	stb 10,kill@l(9)
	blr
	.cfi_endproc
.LFE85:
	.size	power_off, .-power_off
	.comm	kill,1,1
	.comm	count,1,1
	.globl idlefunc
	.globl displayfunc
	.globl incFPS
	.globl FPS
	.globl offset
	.globl _console_inited
	.globl _console_enabled
	.globl fb
	.comm	watchdog,4,4
	.comm	rmode,4,4
	.globl __glutProgramName
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
.LC0:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
.LC1:
	.long	1045220557
	.long	1045220557
	.long	1045220557
	.long	1065353216
.LC2:
	.long	1061997773
	.long	1061997773
	.long	1061997773
	.long	1065353216
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC5:
	.4byte	1065353216
.LC6:
	.4byte	1127481344
.LC7:
	.4byte	-1082130432
.LC8:
	.4byte	1085370904
.LC9:
	.4byte	0
.LC11:
	.4byte	1501560832
.LC13:
	.4byte	1501560836
.LC17:
	.4byte	1325400064
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC14:
	.4byte	0
	.4byte	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"%d\n"
.LC4:
	.string	"test"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	idlefunc, @object
	.size	idlefunc, 4
idlefunc:
	.zero	4
	.type	displayfunc, @object
	.size	displayfunc, 4
displayfunc:
	.zero	4
	.type	incFPS, @object
	.size	incFPS, 1
incFPS:
	.zero	1
	.type	FPS, @object
	.size	FPS, 1
FPS:
	.zero	1
	.type	_console_inited, @object
	.size	_console_inited, 1
_console_inited:
	.zero	1
	.type	_console_enabled, @object
	.size	_console_enabled, 1
_console_enabled:
	.zero	1
	.type	fb, @object
	.size	fb, 4
fb:
	.zero	4
	.type	__glutProgramName, @object
	.size	__glutProgramName, 4
__glutProgramName:
	.zero	4
	.section	.sdata,"aw",@progbits
	.align 2
	.type	offset, @object
	.size	offset, 4
offset:
	.long	10
	.section	".bss"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	frameBuffer, @object
	.size	frameBuffer, 8
frameBuffer:
	.zero	8
	.section	".text"
.Letext0:
	.file 2 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h"
	.file 3 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\types.h"
	.file 4 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\stdint.h"
	.file 5 "D:\\devkitPro\\/libogc/include/gctypes.h"
	.file 6 "D:\\devkitPro\\/libogc/include/ogc/gx_struct.h"
	.file 7 "D:\\devkitPro\\/libogc/include/ogc/gu.h"
	.file 8 "D:\\devkitPro\\/libogc/include/ogc/lwp.h"
	.file 9 "D:\\devkitPro\\/libogc/include/ogc/gx.h"
	.file 10 "D:\\devkitPro\\/libogc/include/ogc/system.h"
	.file 11 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/include/GL/gl.h"
	.file 12 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/include/glint.h"
	.file 13 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/include/mat_stack.h"
	.file 14 "D:\\devkitPro\\/libogc/include/ogc/video.h"
	.file 15 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\stdio.h"
	.file 16 "D:\\devkitPro\\/libogc/include/ogc/consol.h"
	.file 17 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\malloc.h"
	.file 18 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/include/GL/glu.h"
	.file 19 "D:\\devkitPro\\/libogc/include/ogcsys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x21f4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF310
	.byte	0x1
	.4byte	.LASF311
	.4byte	.LASF312
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
	.4byte	.LASF13
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x93
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x8
	.4byte	0x93
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x6e
	.4byte	0xa5
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x8
	.byte	0x3
	.byte	0x76
	.4byte	0xdc
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x3
	.byte	0x77
	.4byte	0xac
	.byte	0
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x3
	.byte	0x78
	.4byte	0xa5
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x29
	.4byte	0x5c
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2a
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x35
	.4byte	0x63
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x36
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x4f
	.4byte	0x6a
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x50
	.4byte	0x3e
	.uleb128 0xb
	.string	"u8"
	.byte	0x5
	.byte	0x11
	.4byte	0xee
	.uleb128 0xb
	.string	"u16"
	.byte	0x5
	.byte	0x12
	.4byte	0x104
	.uleb128 0xb
	.string	"u32"
	.byte	0x5
	.byte	0x13
	.4byte	0x11a
	.uleb128 0xb
	.string	"s8"
	.byte	0x5
	.byte	0x16
	.4byte	0xe3
	.uleb128 0xb
	.string	"s16"
	.byte	0x5
	.byte	0x17
	.4byte	0xf9
	.uleb128 0xb
	.string	"s32"
	.byte	0x5
	.byte	0x18
	.4byte	0x10f
	.uleb128 0xb
	.string	"vu8"
	.byte	0x5
	.byte	0x1b
	.4byte	0x170
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x1c
	.4byte	0x180
	.uleb128 0xc
	.4byte	0x12f
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x1d
	.4byte	0x190
	.uleb128 0xc
	.4byte	0x13a
	.uleb128 0xb
	.string	"vs8"
	.byte	0x5
	.byte	0x20
	.4byte	0x1a0
	.uleb128 0xc
	.4byte	0x145
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0x21
	.4byte	0x1b0
	.uleb128 0xc
	.4byte	0x14f
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x22
	.4byte	0x1c0
	.uleb128 0xc
	.4byte	0x15a
	.uleb128 0xb
	.string	"f32"
	.byte	0x5
	.byte	0x2b
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x2e
	.4byte	0x1db
	.uleb128 0xc
	.4byte	0x25
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8d
	.uleb128 0xd
	.4byte	0x125
	.4byte	0x1f6
	.uleb128 0xe
	.4byte	0x45
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF29
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x3c
	.byte	0x6
	.byte	0x3a
	.4byte	0x2a5
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3b
	.4byte	0x13a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3c
	.4byte	0x12f
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3d
	.4byte	0x12f
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3e
	.4byte	0x12f
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3f
	.4byte	0x12f
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x6
	.byte	0x40
	.4byte	0x12f
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x6
	.byte	0x41
	.4byte	0x12f
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x6
	.byte	0x42
	.4byte	0x12f
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x6
	.byte	0x43
	.4byte	0x13a
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x6
	.byte	0x44
	.4byte	0x125
	.byte	0x18
	.uleb128 0xf
	.string	"aa"
	.byte	0x6
	.byte	0x45
	.4byte	0x125
	.byte	0x19
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x6
	.byte	0x46
	.4byte	0x2a5
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x6
	.byte	0x47
	.4byte	0x2bb
	.byte	0x32
	.byte	0
	.uleb128 0xd
	.4byte	0x125
	.4byte	0x2bb
	.uleb128 0xe
	.4byte	0x45
	.byte	0xb
	.uleb128 0xe
	.4byte	0x45
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	0x125
	.4byte	0x2cb
	.uleb128 0xe
	.4byte	0x45
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x6
	.byte	0x48
	.4byte	0x1fd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2dc
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0xc
	.byte	0x7
	.byte	0x5e
	.4byte	0x308
	.uleb128 0xf
	.string	"x"
	.byte	0x7
	.byte	0x5f
	.4byte	0x1c5
	.byte	0
	.uleb128 0xf
	.string	"y"
	.byte	0x7
	.byte	0x5f
	.4byte	0x1c5
	.byte	0x4
	.uleb128 0xf
	.string	"z"
	.byte	0x7
	.byte	0x5f
	.4byte	0x1c5
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x7
	.byte	0x60
	.4byte	0x2dd
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x8
	.byte	0x3e
	.4byte	0x13a
	.uleb128 0x11
	.4byte	.LASF313
	.byte	0x4
	.byte	0x9
	.2byte	0x490
	.4byte	0x37e
	.uleb128 0x12
	.string	"U8"
	.byte	0x9
	.2byte	0x492
	.4byte	0x165
	.uleb128 0x12
	.string	"S8"
	.byte	0x9
	.2byte	0x493
	.4byte	0x195
	.uleb128 0x12
	.string	"U16"
	.byte	0x9
	.2byte	0x494
	.4byte	0x175
	.uleb128 0x12
	.string	"S16"
	.byte	0x9
	.2byte	0x495
	.4byte	0x1a5
	.uleb128 0x12
	.string	"U32"
	.byte	0x9
	.2byte	0x496
	.4byte	0x185
	.uleb128 0x12
	.string	"S32"
	.byte	0x9
	.2byte	0x497
	.4byte	0x1b5
	.uleb128 0x12
	.string	"F32"
	.byte	0x9
	.2byte	0x498
	.4byte	0x1d0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x9
	.2byte	0x499
	.4byte	0x31e
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x4
	.byte	0x9
	.2byte	0x49e
	.4byte	0x3c4
	.uleb128 0x15
	.string	"r"
	.byte	0x9
	.2byte	0x49f
	.4byte	0x125
	.byte	0
	.uleb128 0x15
	.string	"g"
	.byte	0x9
	.2byte	0x4a0
	.4byte	0x125
	.byte	0x1
	.uleb128 0x15
	.string	"b"
	.byte	0x9
	.2byte	0x4a1
	.4byte	0x125
	.byte	0x2
	.uleb128 0x15
	.string	"a"
	.byte	0x9
	.2byte	0x4a2
	.4byte	0x125
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x9
	.2byte	0x4a3
	.4byte	0x38a
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x40
	.byte	0x9
	.2byte	0x4f1
	.4byte	0x3eb
	.uleb128 0x15
	.string	"val"
	.byte	0x9
	.2byte	0x4f2
	.4byte	0x3eb
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x13a
	.4byte	0x3fb
	.uleb128 0xe
	.4byte	0x45
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x9
	.2byte	0x4f3
	.4byte	0x3d0
	.uleb128 0x16
	.byte	0x80
	.byte	0x9
	.2byte	0x51d
	.4byte	0x41e
	.uleb128 0x15
	.string	"pad"
	.byte	0x9
	.2byte	0x51e
	.4byte	0x41e
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x125
	.4byte	0x42e
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x9
	.2byte	0x51f
	.4byte	0x407
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0xa
	.byte	0x8a
	.4byte	0x13a
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0xa
	.byte	0xc0
	.4byte	0x450
	.uleb128 0x6
	.byte	0x4
	.4byte	0x456
	.uleb128 0x17
	.4byte	0x466
	.uleb128 0x18
	.4byte	0x43a
	.uleb128 0x18
	.4byte	0x5a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x125
	.uleb128 0x6
	.byte	0x4
	.4byte	0x13a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0xb
	.byte	0x92
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0xb
	.byte	0x93
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0xb
	.byte	0x98
	.4byte	0x6a
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xb
	.byte	0x9b
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xb
	.byte	0x9c
	.4byte	0x6a
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xb
	.byte	0x9d
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xb
	.byte	0x9f
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xc
	.byte	0xa
	.4byte	0x308
	.uleb128 0x19
	.byte	0x10
	.byte	0xc
	.byte	0x15
	.4byte	0x4ed
	.uleb128 0xf
	.string	"v"
	.byte	0xc
	.byte	0x17
	.4byte	0x4c5
	.byte	0
	.uleb128 0xf
	.string	"w"
	.byte	0xc
	.byte	0x18
	.4byte	0x25
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xc
	.byte	0x19
	.4byte	0x4d0
	.uleb128 0x19
	.byte	0x8
	.byte	0xc
	.byte	0x1b
	.4byte	0x515
	.uleb128 0xf
	.string	"s"
	.byte	0xc
	.byte	0x1d
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.string	"t"
	.byte	0xc
	.byte	0x1e
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xc
	.byte	0x1f
	.4byte	0x4f8
	.uleb128 0x19
	.byte	0x10
	.byte	0xc
	.byte	0x21
	.4byte	0x551
	.uleb128 0xf
	.string	"r"
	.byte	0xc
	.byte	0x23
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.string	"g"
	.byte	0xc
	.byte	0x24
	.4byte	0x25
	.byte	0x4
	.uleb128 0xf
	.string	"b"
	.byte	0xc
	.byte	0x25
	.4byte	0x25
	.byte	0x8
	.uleb128 0xf
	.string	"a"
	.byte	0xc
	.byte	0x26
	.4byte	0x25
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xc
	.byte	0x27
	.4byte	0x520
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x14
	.byte	0xc
	.byte	0x41
	.4byte	0x5a3
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0xc
	.byte	0x43
	.4byte	0x1f6
	.byte	0
	.uleb128 0xf
	.string	"p"
	.byte	0xc
	.byte	0x44
	.4byte	0x2d6
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0xc
	.byte	0x45
	.4byte	0x125
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0xc
	.byte	0x46
	.4byte	0x48e
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0xc
	.byte	0x47
	.4byte	0x478
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xc
	.byte	0x48
	.4byte	0x55c
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x10
	.byte	0xd
	.byte	0xc
	.4byte	0x5eb
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xd
	.byte	0xe
	.4byte	0x5a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0xd
	.byte	0xf
	.4byte	0x33
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0xd
	.byte	0x10
	.4byte	0x33
	.byte	0x8
	.uleb128 0xf
	.string	"cur"
	.byte	0xd
	.byte	0x11
	.4byte	0x33
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xd
	.byte	0x12
	.4byte	0x5ae
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0xa4
	.byte	0xc
	.byte	0x7d
	.4byte	0x693
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xc
	.byte	0x7f
	.4byte	0x1f6
	.byte	0
	.uleb128 0xf
	.string	"obj"
	.byte	0xc
	.byte	0x81
	.4byte	0x3fb
	.byte	0x4
	.uleb128 0xf
	.string	"pos"
	.byte	0xc
	.byte	0x83
	.4byte	0x4ed
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0xc
	.byte	0x85
	.4byte	0x4c5
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0xc
	.byte	0x87
	.4byte	0x551
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0xc
	.byte	0x88
	.4byte	0x551
	.byte	0x70
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xc
	.byte	0x89
	.4byte	0x551
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0xc
	.byte	0x8b
	.4byte	0x25
	.byte	0x90
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0xc
	.byte	0x8c
	.4byte	0x25
	.byte	0x94
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0xc
	.byte	0x8d
	.4byte	0x25
	.byte	0x98
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0xc
	.byte	0x8e
	.4byte	0x25
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xc
	.byte	0x8f
	.4byte	0x25
	.byte	0xa0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xc
	.byte	0x90
	.4byte	0x5f6
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x44
	.byte	0xc
	.byte	0x9a
	.4byte	0x6e7
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0xc
	.byte	0x9c
	.4byte	0x551
	.byte	0
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0xc
	.byte	0x9d
	.4byte	0x551
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0xc
	.byte	0x9e
	.4byte	0x551
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xc
	.byte	0x9f
	.4byte	0x551
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0xc
	.byte	0xa0
	.4byte	0x25
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0xc
	.byte	0xa1
	.4byte	0x69e
	.uleb128 0x1a
	.4byte	.LASF314
	.byte	0x4
	.byte	0xc
	.byte	0xb9
	.4byte	0x711
	.uleb128 0x1b
	.4byte	.LASF93
	.sleb128 0
	.uleb128 0x1b
	.4byte	.LASF94
	.sleb128 1
	.uleb128 0x1b
	.4byte	.LASF95
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xc
	.byte	0xbe
	.4byte	0x6f2
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x10
	.byte	0xc
	.byte	0xe2
	.4byte	0x755
	.uleb128 0xf
	.string	"x"
	.byte	0xc
	.byte	0xe4
	.4byte	0x48e
	.byte	0
	.uleb128 0xf
	.string	"y"
	.byte	0xc
	.byte	0xe5
	.4byte	0x48e
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0xc
	.byte	0xe6
	.4byte	0x4a4
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0xc
	.byte	0xe7
	.4byte	0x4a4
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0xc
	.byte	0xe8
	.4byte	0x71c
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x14
	.byte	0xc
	.byte	0xf5
	.4byte	0x7b5
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0xc
	.byte	0xf7
	.4byte	0x1f6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0xc
	.byte	0xf8
	.4byte	0x1f6
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0xc
	.byte	0xf9
	.4byte	0x6a
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0xc
	.byte	0xfa
	.4byte	0x6a
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0xc
	.byte	0xfb
	.4byte	0x6a
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0xc
	.byte	0xfc
	.4byte	0x6a
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0xc
	.byte	0xfd
	.4byte	0x760
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x8
	.byte	0xc
	.2byte	0x110
	.4byte	0x7e8
	.uleb128 0x1c
	.4byte	.LASF109
	.byte	0xc
	.2byte	0x112
	.4byte	0x1c5
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF110
	.byte	0xc
	.2byte	0x113
	.4byte	0x1c5
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0xc
	.2byte	0x114
	.4byte	0x7c0
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x6c
	.byte	0xc
	.2byte	0x120
	.4byte	0x920
	.uleb128 0x1c
	.4byte	.LASF78
	.byte	0xc
	.2byte	0x122
	.4byte	0x1f6
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF113
	.byte	0xc
	.2byte	0x124
	.4byte	0x125
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF114
	.byte	0xc
	.2byte	0x125
	.4byte	0x125
	.byte	0x2
	.uleb128 0x1c
	.4byte	.LASF115
	.byte	0xc
	.2byte	0x126
	.4byte	0x125
	.byte	0x3
	.uleb128 0x1c
	.4byte	.LASF116
	.byte	0xc
	.2byte	0x127
	.4byte	0x125
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF117
	.byte	0xc
	.2byte	0x128
	.4byte	0x1c5
	.byte	0x8
	.uleb128 0x1c
	.4byte	.LASF118
	.byte	0xc
	.2byte	0x129
	.4byte	0x1c5
	.byte	0xc
	.uleb128 0x1c
	.4byte	.LASF119
	.byte	0xc
	.2byte	0x12a
	.4byte	0x1c5
	.byte	0x10
	.uleb128 0x1c
	.4byte	.LASF120
	.byte	0xc
	.2byte	0x12b
	.4byte	0x125
	.byte	0x14
	.uleb128 0x1c
	.4byte	.LASF121
	.byte	0xc
	.2byte	0x12c
	.4byte	0x125
	.byte	0x15
	.uleb128 0x1c
	.4byte	.LASF122
	.byte	0xc
	.2byte	0x12d
	.4byte	0x125
	.byte	0x16
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0xc
	.2byte	0x12f
	.4byte	0x478
	.byte	0x18
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0xc
	.2byte	0x131
	.4byte	0x478
	.byte	0x1c
	.uleb128 0x1c
	.4byte	.LASF125
	.byte	0xc
	.2byte	0x132
	.4byte	0x478
	.byte	0x20
	.uleb128 0x1c
	.4byte	.LASF126
	.byte	0xc
	.2byte	0x134
	.4byte	0x920
	.byte	0x24
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0xc
	.2byte	0x135
	.4byte	0x920
	.byte	0x30
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0xc
	.2byte	0x136
	.4byte	0x920
	.byte	0x3c
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0xc
	.2byte	0x137
	.4byte	0x920
	.byte	0x48
	.uleb128 0x15
	.string	"tex"
	.byte	0xc
	.2byte	0x139
	.4byte	0x48e
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0xc
	.2byte	0x13b
	.4byte	0x551
	.byte	0x58
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0xc
	.2byte	0x13d
	.4byte	0x125
	.byte	0x68
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0xc
	.2byte	0x13e
	.4byte	0x125
	.byte	0x69
	.byte	0
	.uleb128 0xd
	.4byte	0x478
	.4byte	0x930
	.uleb128 0xe
	.4byte	0x45
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF133
	.byte	0xc
	.2byte	0x13f
	.4byte	0x7f4
	.uleb128 0x1d
	.4byte	.LASF315
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x1dc
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99a
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x43a
	.4byte	.LLST0
	.uleb128 0x20
	.string	"cb"
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x5a
	.4byte	.LLST1
	.uleb128 0x21
	.4byte	.LVL3
	.4byte	0x1c3e
	.4byte	0x990
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x23
	.4byte	.LVL4
	.4byte	0x1c54
	.byte	0
	.uleb128 0x24
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x5a
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9cc
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x5a
	.4byte	.LLST2
	.uleb128 0x23
	.4byte	.LVL8
	.4byte	0x1c62
	.byte	0
	.uleb128 0x25
	.4byte	.LASF136
	.byte	0x1
	.byte	0x41
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba1
	.uleb128 0x26
	.4byte	.LASF137
	.byte	0x1
	.byte	0x41
	.4byte	0x472
	.4byte	.LLST3
	.uleb128 0x26
	.4byte	.LASF138
	.byte	0x1
	.byte	0x41
	.4byte	0x1e0
	.4byte	.LLST4
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.byte	0x57
	.4byte	0x6a
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	.LVL10
	.4byte	0x1c6f
	.uleb128 0x21
	.4byte	.LVL11
	.4byte	0x1c7c
	.4byte	0xa28
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL12
	.4byte	0x1c91
	.4byte	0xa4e
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x25
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x25
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x25
	.byte	0
	.uleb128 0x21
	.4byte	.LVL13
	.4byte	0x1cad
	.4byte	0xa74
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL14
	.4byte	0x1cc4
	.4byte	0xaa2
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x25
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL18
	.4byte	0x1ce0
	.4byte	0xabc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8b
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL19
	.4byte	0x1cf6
	.4byte	0xad1
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1700
	.byte	0
	.uleb128 0x23
	.4byte	.LVL20
	.4byte	0x1d08
	.uleb128 0x21
	.4byte	.LVL21
	.4byte	0x1d10
	.4byte	0xaf6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	projection_stack
	.byte	0
	.uleb128 0x21
	.4byte	.LVL22
	.4byte	0x1cf6
	.4byte	0xb0b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1701
	.byte	0
	.uleb128 0x23
	.4byte	.LVL23
	.4byte	0x1d08
	.uleb128 0x21
	.4byte	.LVL24
	.4byte	0x1ce0
	.4byte	0xb32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.byte	0x8d
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x8a
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0x1cf6
	.4byte	0xb47
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1702
	.byte	0
	.uleb128 0x21
	.4byte	.LVL27
	.4byte	0x1d26
	.4byte	0xb5b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 -1
	.byte	0
	.uleb128 0x23
	.4byte	.LVL28
	.4byte	0x1d08
	.uleb128 0x21
	.4byte	.LVL29
	.4byte	0x1d26
	.4byte	0xb7c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x6
	.byte	0x8e
	.sleb128 0
	.byte	0xa
	.2byte	0x84c0
	.byte	0x21
	.byte	0
	.uleb128 0x23
	.4byte	.LVL32
	.4byte	0x1d38
	.uleb128 0x23
	.4byte	.LVL33
	.4byte	0x1d45
	.uleb128 0x23
	.4byte	.LVL34
	.4byte	0x1d52
	.uleb128 0x23
	.4byte	.LVL40
	.4byte	0x1d60
	.byte	0
	.uleb128 0x28
	.4byte	0x93c
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.4byte	.LASF316
	.byte	0x1
	.byte	0xf3
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.4byte	.LASF139
	.byte	0x1
	.byte	0xf9
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbed
	.uleb128 0x2a
	.string	"w"
	.byte	0x1
	.byte	0xf9
	.4byte	0x46c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"h"
	.byte	0x1
	.byte	0xf9
	.4byte	0x46c
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x25
	.4byte	.LASF140
	.byte	0x1
	.byte	0xff
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1134
	.uleb128 0x26
	.4byte	.LASF123
	.byte	0x1
	.byte	0xff
	.4byte	0x3e
	.4byte	.LLST6
	.uleb128 0x2b
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x10e
	.4byte	0x6a
	.byte	0x1e
	.uleb128 0x2b
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x10f
	.4byte	0x6a
	.byte	0x1e
	.uleb128 0x2c
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x110
	.4byte	0x6a
	.2byte	0x12c
	.uleb128 0x2d
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x111
	.4byte	0x6a
	.4byte	.LLST7
	.uleb128 0x2d
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x11c
	.4byte	0x1c5
	.4byte	.LLST8
	.uleb128 0x2d
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x11e
	.4byte	0x13a
	.4byte	.LLST9
	.uleb128 0x2d
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x121
	.4byte	0x5a
	.4byte	.LLST10
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x3c4
	.4byte	.LLST11
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x6a
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	.LVL48
	.4byte	0x1d6d
	.uleb128 0x23
	.4byte	.LVL49
	.4byte	0x1d6d
	.uleb128 0x21
	.4byte	.LVL50
	.4byte	0x1d82
	.4byte	0xcba
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL51
	.4byte	0x1d82
	.4byte	0xccd
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL52
	.4byte	0x1d9d
	.uleb128 0x23
	.4byte	.LVL53
	.4byte	0x1dae
	.uleb128 0x21
	.4byte	.LVL54
	.4byte	0x1dbf
	.4byte	0xcf2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL55
	.4byte	0x1dd0
	.uleb128 0x23
	.4byte	.LVL56
	.4byte	0x1ddd
	.uleb128 0x23
	.4byte	.LVL57
	.4byte	0x1ddd
	.uleb128 0x21
	.4byte	.LVL60
	.4byte	0x1de4
	.4byte	0xd2c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x3
	.byte	0xa
	.2byte	0x12c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x4e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x21
	.4byte	.LVL62
	.4byte	0x1e0d
	.4byte	0xd47
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x40
	.byte	0x3e
	.byte	0x24
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x21
	.4byte	.LVL64
	.4byte	0x1e27
	.4byte	0xd67
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x40
	.byte	0x3e
	.byte	0x24
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL65
	.4byte	0x1e44
	.4byte	0xd82
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x40
	.byte	0x3e
	.byte	0x24
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL66
	.4byte	0x1e65
	.4byte	0xdc0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x26
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3f800000
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x25
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL67
	.4byte	0x1e90
	.uleb128 0x23
	.4byte	.LVL68
	.4byte	0x1eab
	.uleb128 0x21
	.4byte	.LVL71
	.4byte	0x1ec1
	.4byte	0xdea
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL72
	.4byte	0x1ee2
	.4byte	0xe02
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL73
	.4byte	0x1f03
	.4byte	0xe16
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL74
	.4byte	0x1f1a
	.4byte	0xe29
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL75
	.4byte	0x1f41
	.uleb128 0x21
	.4byte	.LVL77
	.4byte	0x1f58
	.4byte	0xe46
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL80
	.4byte	0x1f6f
	.4byte	0xe5f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL81
	.4byte	0x1f86
	.4byte	0xe72
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x21
	.4byte	.LVL82
	.4byte	0x1f6f
	.4byte	0xe8f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0xc
	.4byte	0xffffff
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL84
	.4byte	0x1f86
	.4byte	0xea2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x21
	.4byte	.LVL85
	.4byte	0x1f86
	.4byte	0xeb5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x21
	.4byte	.LVL86
	.4byte	0x1f9d
	.4byte	0xec9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL87
	.4byte	0x1faf
	.4byte	0xef2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL88
	.4byte	0x1faf
	.4byte	0xf1c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL89
	.4byte	0x1faf
	.4byte	0xf45
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL90
	.4byte	0x1fd5
	.uleb128 0x21
	.4byte	.LVL91
	.4byte	0x1fe3
	.4byte	0xf66
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x21
	.4byte	.LVL92
	.4byte	0x1fe3
	.4byte	0xf7e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x21
	.4byte	.LVL93
	.4byte	0x1fe3
	.4byte	0xf96
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x21
	.4byte	.LVL94
	.4byte	0x1fe3
	.4byte	0xfae
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x21
	.4byte	.LVL95
	.4byte	0x1ffa
	.4byte	0xfc2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL96
	.4byte	0x1faf
	.4byte	0xfe4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL99
	.4byte	0x200f
	.4byte	0x1003
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x21
	.4byte	.LVL100
	.4byte	0x200f
	.4byte	0x1022
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x21
	.4byte	.LVL101
	.4byte	0x200f
	.4byte	0x1041
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x21
	.4byte	.LVL102
	.4byte	0x1ffa
	.4byte	0x1055
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL103
	.4byte	0x200f
	.4byte	0x106d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL105
	.4byte	0x202b
	.4byte	0x1090
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL106
	.4byte	0x204c
	.4byte	0x10a3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x21
	.4byte	.LVL107
	.4byte	0x205e
	.4byte	0x10b6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL108
	.4byte	0x2070
	.uleb128 0x21
	.4byte	.LVL109
	.4byte	0x207e
	.4byte	0x10e3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL110
	.4byte	0x209f
	.4byte	0x10fb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL111
	.4byte	0x20b6
	.4byte	0x110e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x21
	.4byte	.LVL112
	.4byte	0x20c8
	.4byte	0x1121
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL113
	.4byte	0x20da
	.uleb128 0x2f
	.4byte	.LVL115
	.4byte	0x20e8
	.byte	0
	.uleb128 0x30
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x18a
	.4byte	0x25
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x18f
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ea
	.uleb128 0x1f
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x18f
	.4byte	0x1c5
	.4byte	.LLST13
	.uleb128 0x1f
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x18f
	.4byte	0x1c5
	.4byte	.LLST14
	.uleb128 0x20
	.string	"wd"
	.byte	0x1
	.2byte	0x18f
	.4byte	0x1c5
	.4byte	.LLST15
	.uleb128 0x20
	.string	"ht"
	.byte	0x1
	.2byte	0x18f
	.4byte	0x1c5
	.4byte	.LLST16
	.uleb128 0x1f
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x18f
	.4byte	0x1c5
	.4byte	.LLST17
	.uleb128 0x1f
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x18f
	.4byte	0x1c5
	.4byte	.LLST18
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.2byte	0x191
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	.LVL117
	.4byte	0x1134
	.uleb128 0x31
	.4byte	.LVL123
	.4byte	0x1e65
	.uleb128 0x22
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
	.uleb128 0x32
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x17f
	.4byte	0x6a
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1301
	.uleb128 0x1f
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x17f
	.4byte	0x9a
	.4byte	.LLST20
	.uleb128 0x21
	.4byte	.LVL125
	.4byte	0x114a
	.4byte	0x124e
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x26
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x25
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x25
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL126
	.4byte	0x1cf6
	.4byte	0x1263
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1700
	.byte	0
	.uleb128 0x23
	.4byte	.LVL127
	.4byte	0x1d08
	.uleb128 0x33
	.4byte	.LVL128
	.4byte	0x20f6
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x28
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x27
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0
	.4byte	0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x26
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0xbff00000
	.4byte	0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x25
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0
	.4byte	0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0
	.4byte	0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x23
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0
	.4byte	0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0
	.4byte	0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0
	.4byte	0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x8
	.4byte	0
	.4byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x196
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1376
	.uleb128 0x1f
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x196
	.4byte	0x13a
	.4byte	.LLST21
	.uleb128 0x1f
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x196
	.4byte	0x13a
	.4byte	.LLST22
	.uleb128 0x20
	.string	"wd"
	.byte	0x1
	.2byte	0x196
	.4byte	0x13a
	.4byte	.LLST23
	.uleb128 0x20
	.string	"ht"
	.byte	0x1
	.2byte	0x196
	.4byte	0x13a
	.4byte	.LLST24
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.2byte	0x198
	.4byte	0x25
	.4byte	.LLST25
	.uleb128 0x23
	.4byte	.LVL130
	.4byte	0x1134
	.uleb128 0x2f
	.4byte	.LVL136
	.4byte	0x1ec1
	.byte	0
	.uleb128 0x34
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x19d
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13a1
	.uleb128 0x31
	.4byte	.LVL137
	.4byte	0x1301
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x1a5
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f8
	.uleb128 0x23
	.4byte	.LVL138
	.4byte	0x2130
	.uleb128 0x21
	.4byte	.LVL139
	.4byte	0x1f86
	.4byte	0x13d3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL140
	.4byte	0x20da
	.uleb128 0x23
	.4byte	.LVL141
	.4byte	0x1dae
	.uleb128 0x23
	.4byte	.LVL142
	.4byte	0x1dd0
	.uleb128 0x2f
	.4byte	.LVL143
	.4byte	0x1ddd
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x1bc
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1469
	.uleb128 0x1f
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x6a
	.4byte	.LLST26
	.uleb128 0x1f
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x6a
	.4byte	.LLST27
	.uleb128 0x31
	.4byte	.LVL147
	.4byte	0x114a
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x26
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3f800000
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x25
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x6a
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14a4
	.uleb128 0x1f
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x478
	.4byte	.LLST28
	.uleb128 0x2d
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x6a
	.4byte	.LLST29
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x1cd
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14c9
	.uleb128 0x35
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x86
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1d3
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ee
	.uleb128 0x35
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x86
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x4c
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x1ff
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15e6
	.uleb128 0x36
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x200
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x201
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x202
	.4byte	0x6a
	.4byte	.LLST30
	.uleb128 0x36
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x215
	.4byte	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.4byte	.LVL154
	.4byte	0x2138
	.4byte	0x156e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	watchdog
	.byte	0
	.uleb128 0x21
	.4byte	.LVL156
	.4byte	0x2154
	.4byte	0x1596
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x5
	.byte	0x3
	.4byte	timercallback
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.4byte	.LVL157
	.4byte	0x2189
	.4byte	0x15c8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x43
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	glutThread
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.4byte	.LVL158
	.4byte	0x21d2
	.4byte	0x15dc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x23
	.4byte	.LVL159
	.4byte	0x21ed
	.byte	0
	.uleb128 0x30
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x224
	.4byte	0x5a
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x229
	.4byte	0x5a
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x22e
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1637
	.uleb128 0x35
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x22e
	.4byte	0x15a
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0xd
	.4byte	0x5a
	.4byte	0x1647
	.uleb128 0xe
	.4byte	0x45
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.4byte	.LASF176
	.byte	0x1
	.byte	0x14
	.4byte	0x1637
	.uleb128 0x5
	.byte	0x3
	.4byte	frameBuffer
	.uleb128 0x38
	.4byte	.LASF177
	.byte	0x9
	.2byte	0x548
	.4byte	0x1664
	.uleb128 0x8
	.4byte	0x1669
	.uleb128 0x6
	.byte	0x4
	.4byte	0x37e
	.uleb128 0x39
	.4byte	.LASF178
	.byte	0xc
	.byte	0x3c
	.4byte	0x551
	.uleb128 0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x39
	.4byte	.LASF179
	.byte	0xc
	.byte	0x3d
	.4byte	0x4c5
	.uleb128 0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xd
	.4byte	0x515
	.4byte	0x16a1
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.byte	0
	.uleb128 0x39
	.4byte	.LASF180
	.byte	0xc
	.byte	0x3e
	.4byte	0x1691
	.uleb128 0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x39
	.4byte	.LASF181
	.byte	0xc
	.byte	0x4a
	.4byte	0x5a3
	.uleb128 0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x39
	.4byte	.LASF182
	.byte	0xc
	.byte	0x4b
	.4byte	0x5a3
	.uleb128 0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xd
	.4byte	0x5a3
	.4byte	0x16e4
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.byte	0
	.uleb128 0x3a
	.string	"tex"
	.byte	0xc
	.byte	0x4c
	.4byte	0x16d4
	.uleb128 0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x39
	.4byte	.LASF130
	.byte	0xc
	.byte	0x4d
	.4byte	0x5a3
	.uleb128 0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xd
	.4byte	0x4c5
	.4byte	0x1717
	.uleb128 0x3b
	.4byte	0x45
	.2byte	0x3e7
	.byte	0
	.uleb128 0x39
	.4byte	.LASF183
	.byte	0xc
	.byte	0x4f
	.4byte	0x1706
	.uleb128 0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x39
	.4byte	.LASF184
	.byte	0xc
	.byte	0x50
	.4byte	0x1706
	.uleb128 0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xd
	.4byte	0x515
	.4byte	0x1750
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.uleb128 0x3b
	.4byte	0x45
	.2byte	0x3e7
	.byte	0
	.uleb128 0x39
	.4byte	.LASF185
	.byte	0xc
	.byte	0x51
	.4byte	0x1739
	.uleb128 0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xd
	.4byte	0x551
	.4byte	0x1772
	.uleb128 0x3b
	.4byte	0x45
	.2byte	0x3e7
	.byte	0
	.uleb128 0x39
	.4byte	.LASF186
	.byte	0xc
	.byte	0x52
	.4byte	0x1761
	.uleb128 0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x39
	.4byte	.LASF187
	.byte	0xc
	.byte	0x5c
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x39
	.4byte	.LASF188
	.byte	0xc
	.byte	0x5d
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x39
	.4byte	.LASF189
	.byte	0xc
	.byte	0x5e
	.4byte	0x478
	.uleb128 0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x39
	.4byte	.LASF190
	.byte	0xc
	.byte	0x60
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x39
	.4byte	.LASF191
	.byte	0xc
	.byte	0x61
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x39
	.4byte	.LASF192
	.byte	0xc
	.byte	0x65
	.4byte	0x125
	.uleb128 0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x39
	.4byte	.LASF193
	.byte	0xc
	.byte	0x66
	.4byte	0x125
	.uleb128 0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x39
	.4byte	.LASF194
	.byte	0xc
	.byte	0x67
	.4byte	0x478
	.uleb128 0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x39
	.4byte	.LASF195
	.byte	0xc
	.byte	0x68
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x39
	.4byte	.LASF196
	.byte	0xc
	.byte	0x74
	.4byte	0x5eb
	.uleb128 0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x39
	.4byte	.LASF197
	.byte	0xc
	.byte	0x75
	.4byte	0x5eb
	.uleb128 0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xd
	.4byte	0x5eb
	.4byte	0x184e
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.byte	0
	.uleb128 0x39
	.4byte	.LASF198
	.byte	0xc
	.byte	0x76
	.4byte	0x183e
	.uleb128 0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x39
	.4byte	.LASF199
	.byte	0xc
	.byte	0x77
	.4byte	0x1870
	.uleb128 0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5eb
	.uleb128 0x39
	.4byte	.LASF200
	.byte	0xc
	.byte	0x78
	.4byte	0x478
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xd
	.4byte	0x693
	.4byte	0x1897
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.byte	0
	.uleb128 0x39
	.4byte	.LASF201
	.byte	0xc
	.byte	0x93
	.4byte	0x1887
	.uleb128 0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x39
	.4byte	.LASF202
	.byte	0xc
	.byte	0x96
	.4byte	0x551
	.uleb128 0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x39
	.4byte	.LASF203
	.byte	0xc
	.byte	0xa3
	.4byte	0x6e7
	.uleb128 0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x39
	.4byte	.LASF204
	.byte	0xc
	.byte	0xa6
	.4byte	0x1f6
	.uleb128 0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x39
	.4byte	.LASF205
	.byte	0xc
	.byte	0xa7
	.4byte	0x478
	.uleb128 0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x39
	.4byte	.LASF206
	.byte	0xc
	.byte	0xab
	.4byte	0x1f6
	.uleb128 0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x39
	.4byte	.LASF207
	.byte	0xc
	.byte	0xb2
	.4byte	0x125
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x39
	.4byte	.LASF208
	.byte	0xc
	.byte	0xb3
	.4byte	0x125
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x39
	.4byte	.LASF209
	.byte	0xc
	.byte	0xb4
	.4byte	0x125
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x39
	.4byte	.LASF210
	.byte	0xc
	.byte	0xb5
	.4byte	0x125
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x39
	.4byte	.LASF211
	.byte	0xc
	.byte	0xb7
	.4byte	0x125
	.uleb128 0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x39
	.4byte	.LASF212
	.byte	0xc
	.byte	0xc0
	.4byte	0x711
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x39
	.4byte	.LASF213
	.byte	0xc
	.byte	0xea
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x39
	.4byte	.LASF214
	.byte	0xc
	.byte	0xeb
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x39
	.4byte	.LASF215
	.byte	0xc
	.byte	0xec
	.4byte	0x483
	.uleb128 0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x39
	.4byte	.LASF216
	.byte	0xc
	.byte	0xed
	.4byte	0x755
	.uleb128 0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x39
	.4byte	.LASF217
	.byte	0xc
	.byte	0xee
	.4byte	0x755
	.uleb128 0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x39
	.4byte	.LASF218
	.byte	0xc
	.byte	0xef
	.4byte	0x1c5
	.uleb128 0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x39
	.4byte	.LASF219
	.byte	0xc
	.byte	0xf0
	.4byte	0x1c5
	.uleb128 0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x39
	.4byte	.LASF220
	.byte	0xc
	.byte	0xf2
	.4byte	0x1c5
	.uleb128 0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x39
	.4byte	.LASF221
	.byte	0xc
	.byte	0xf3
	.4byte	0x1c5
	.uleb128 0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x39
	.4byte	.LASF222
	.byte	0xc
	.byte	0xff
	.4byte	0x7b5
	.uleb128 0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x3c
	.4byte	.LASF223
	.byte	0xc
	.2byte	0x100
	.4byte	0x7b5
	.uleb128 0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xd
	.4byte	0x1f6
	.4byte	0x1a2f
	.uleb128 0xe
	.4byte	0x45
	.byte	0x3
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF224
	.byte	0xc
	.2byte	0x101
	.4byte	0x1a1f
	.uleb128 0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x3c
	.4byte	.LASF225
	.byte	0xc
	.2byte	0x107
	.4byte	0x1f6
	.uleb128 0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x3c
	.4byte	.LASF226
	.byte	0xc
	.2byte	0x108
	.4byte	0x478
	.uleb128 0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x3c
	.4byte	.LASF227
	.byte	0xc
	.2byte	0x10b
	.4byte	0x3c4
	.uleb128 0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xd
	.4byte	0x7e8
	.4byte	0x1a87
	.uleb128 0xe
	.4byte	0x45
	.byte	0x3
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF228
	.byte	0xc
	.2byte	0x11e
	.4byte	0x1a77
	.uleb128 0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x3c
	.4byte	.LASF229
	.byte	0xc
	.2byte	0x143
	.4byte	0x1f6
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x3c
	.4byte	.LASF230
	.byte	0xc
	.2byte	0x144
	.4byte	0x125
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x3c
	.4byte	.LASF231
	.byte	0xc
	.2byte	0x145
	.4byte	0x1c5
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x3c
	.4byte	.LASF232
	.byte	0xc
	.2byte	0x146
	.4byte	0x1c5
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x3c
	.4byte	.LASF233
	.byte	0xc
	.2byte	0x147
	.4byte	0x1c5
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x3c
	.4byte	.LASF234
	.byte	0xc
	.2byte	0x148
	.4byte	0x3c4
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xd
	.4byte	0x930
	.4byte	0x1b15
	.uleb128 0xe
	.4byte	0x45
	.byte	0x7
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF235
	.byte	0xc
	.2byte	0x14a
	.4byte	0x1b05
	.uleb128 0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x3c
	.4byte	.LASF236
	.byte	0xc
	.2byte	0x14f
	.4byte	0x478
	.uleb128 0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x3c
	.4byte	.LASF237
	.byte	0xc
	.2byte	0x152
	.4byte	0x499
	.uleb128 0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x39
	.4byte	.LASF238
	.byte	0x1
	.byte	0x13
	.4byte	0x8d
	.uleb128 0x5
	.byte	0x3
	.4byte	__glutProgramName
	.uleb128 0x39
	.4byte	.LASF239
	.byte	0x1
	.byte	0x15
	.4byte	0x1b6d
	.uleb128 0x5
	.byte	0x3
	.4byte	rmode
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2cb
	.uleb128 0x39
	.4byte	.LASF240
	.byte	0x1
	.byte	0x16
	.4byte	0x43a
	.uleb128 0x5
	.byte	0x3
	.4byte	watchdog
	.uleb128 0x3a
	.string	"fb"
	.byte	0x1
	.byte	0x18
	.4byte	0x13a
	.uleb128 0x5
	.byte	0x3
	.4byte	fb
	.uleb128 0x39
	.4byte	.LASF241
	.byte	0x1
	.byte	0xea
	.4byte	0x1f6
	.uleb128 0x5
	.byte	0x3
	.4byte	_console_enabled
	.uleb128 0x39
	.4byte	.LASF242
	.byte	0x1
	.byte	0xeb
	.4byte	0x1f6
	.uleb128 0x5
	.byte	0x3
	.4byte	_console_inited
	.uleb128 0x3c
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x188
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x3
	.4byte	offset
	.uleb128 0x3d
	.string	"FPS"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x1bda
	.uleb128 0x5
	.byte	0x3
	.4byte	FPS
	.uleb128 0xc
	.4byte	0x93
	.uleb128 0x3c
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x1bda
	.uleb128 0x5
	.byte	0x3
	.4byte	incFPS
	.uleb128 0x3c
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x86
	.uleb128 0x5
	.byte	0x3
	.4byte	displayfunc
	.uleb128 0x3c
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x86
	.uleb128 0x5
	.byte	0x3
	.4byte	idlefunc
	.uleb128 0x3c
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x1c27
	.uleb128 0x5
	.byte	0x3
	.4byte	count
	.uleb128 0xc
	.4byte	0x4c
	.uleb128 0x3c
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x1c27
	.uleb128 0x5
	.byte	0x3
	.4byte	kill
	.uleb128 0x3e
	.4byte	.LASF252
	.byte	0xf
	.byte	0xb3
	.4byte	0x6a
	.4byte	0x1c54
	.uleb128 0x18
	.4byte	0x9a
	.uleb128 0x3f
	.byte	0
	.uleb128 0x40
	.4byte	.LASF249
	.byte	0x9
	.2byte	0x644
	.4byte	0x1c62
	.uleb128 0x3f
	.byte	0
	.uleb128 0x41
	.4byte	.LASF250
	.byte	0x8
	.byte	0x86
	.4byte	0x1c6f
	.uleb128 0x3f
	.byte	0
	.uleb128 0x41
	.4byte	.LASF251
	.byte	0xe
	.byte	0x44
	.4byte	0x1c7c
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF253
	.byte	0xe
	.byte	0xc8
	.4byte	0x1b6d
	.4byte	0x1c91
	.uleb128 0x18
	.4byte	0x1b6d
	.byte	0
	.uleb128 0x42
	.4byte	.LASF254
	.byte	0xb
	.2byte	0x3f9
	.4byte	0x1cad
	.uleb128 0x18
	.4byte	0x4af
	.uleb128 0x18
	.4byte	0x4af
	.uleb128 0x18
	.4byte	0x4af
	.byte	0
	.uleb128 0x42
	.4byte	.LASF255
	.byte	0xb
	.2byte	0x42b
	.4byte	0x1cc4
	.uleb128 0x18
	.4byte	0x4af
	.uleb128 0x18
	.4byte	0x4af
	.byte	0
	.uleb128 0x42
	.4byte	.LASF256
	.byte	0xb
	.2byte	0x3e0
	.4byte	0x1ce0
	.uleb128 0x18
	.4byte	0x4af
	.uleb128 0x18
	.4byte	0x4af
	.uleb128 0x18
	.4byte	0x4af
	.byte	0
	.uleb128 0x43
	.4byte	.LASF257
	.byte	0xd
	.byte	0x14
	.4byte	0x1cf6
	.uleb128 0x18
	.4byte	0x1870
	.uleb128 0x18
	.4byte	0x33
	.byte	0
	.uleb128 0x42
	.4byte	.LASF258
	.byte	0xb
	.2byte	0x37b
	.4byte	0x1d08
	.uleb128 0x18
	.4byte	0x478
	.byte	0
	.uleb128 0x44
	.4byte	.LASF271
	.byte	0xb
	.2byte	0x38c
	.uleb128 0x43
	.4byte	.LASF259
	.byte	0xd
	.byte	0x16
	.4byte	0x1d26
	.uleb128 0x18
	.4byte	0x1870
	.uleb128 0x18
	.4byte	0x33
	.byte	0
	.uleb128 0x42
	.4byte	.LASF260
	.byte	0xb
	.2byte	0x634
	.4byte	0x1d38
	.uleb128 0x18
	.4byte	0x478
	.byte	0
	.uleb128 0x41
	.4byte	.LASF261
	.byte	0xc
	.byte	0xad
	.4byte	0x1d45
	.uleb128 0x3f
	.byte	0
	.uleb128 0x41
	.4byte	.LASF262
	.byte	0xc
	.byte	0xae
	.4byte	0x1d52
	.uleb128 0x3f
	.byte	0
	.uleb128 0x40
	.4byte	.LASF263
	.byte	0xc
	.2byte	0x15d
	.4byte	0x1d60
	.uleb128 0x3f
	.byte	0
	.uleb128 0x41
	.4byte	.LASF264
	.byte	0xc
	.byte	0xaf
	.4byte	0x1d6d
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF265
	.byte	0xa
	.byte	0xf8
	.4byte	0x5a
	.4byte	0x1d82
	.uleb128 0x18
	.4byte	0x1b6d
	.byte	0
	.uleb128 0x43
	.4byte	.LASF266
	.byte	0xe
	.byte	0x8c
	.4byte	0x1d9d
	.uleb128 0x18
	.4byte	0x1b6d
	.uleb128 0x18
	.4byte	0x5a
	.uleb128 0x18
	.4byte	0x13a
	.byte	0
	.uleb128 0x43
	.4byte	.LASF267
	.byte	0xe
	.byte	0x7e
	.4byte	0x1dae
	.uleb128 0x18
	.4byte	0x1b6d
	.byte	0
	.uleb128 0x43
	.4byte	.LASF268
	.byte	0xe
	.byte	0x9e
	.4byte	0x1dbf
	.uleb128 0x18
	.4byte	0x5a
	.byte	0
	.uleb128 0x43
	.4byte	.LASF269
	.byte	0xe
	.byte	0x58
	.4byte	0x1dd0
	.uleb128 0x18
	.4byte	0x1f6
	.byte	0
	.uleb128 0x41
	.4byte	.LASF270
	.byte	0xe
	.byte	0x4d
	.4byte	0x1ddd
	.uleb128 0x3f
	.byte	0
	.uleb128 0x45
	.4byte	.LASF272
	.byte	0xe
	.byte	0x95
	.uleb128 0x3e
	.4byte	.LASF273
	.byte	0x10
	.byte	0x2c
	.4byte	0x15a
	.4byte	0x1e0d
	.uleb128 0x18
	.4byte	0x1b6d
	.uleb128 0x18
	.4byte	0x15a
	.uleb128 0x18
	.4byte	0x15a
	.uleb128 0x18
	.4byte	0x15a
	.uleb128 0x18
	.4byte	0x15a
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF274
	.byte	0x11
	.byte	0x45
	.4byte	0x5a
	.4byte	0x1e27
	.uleb128 0x18
	.4byte	0x33
	.uleb128 0x18
	.4byte	0x33
	.byte	0
	.uleb128 0x46
	.4byte	.LASF275
	.4byte	0x5a
	.4byte	0x1e44
	.uleb128 0x18
	.4byte	0x5a
	.uleb128 0x18
	.4byte	0x6a
	.uleb128 0x18
	.4byte	0x45
	.byte	0
	.uleb128 0x47
	.4byte	.LASF276
	.byte	0x9
	.2byte	0x561
	.4byte	0x1e5f
	.4byte	0x1e5f
	.uleb128 0x18
	.4byte	0x5a
	.uleb128 0x18
	.4byte	0x13a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x42e
	.uleb128 0x42
	.4byte	.LASF277
	.byte	0x9
	.2byte	0x717
	.4byte	0x1e90
	.uleb128 0x18
	.4byte	0x1c5
	.uleb128 0x18
	.4byte	0x1c5
	.uleb128 0x18
	.4byte	0x1c5
	.uleb128 0x18
	.4byte	0x1c5
	.uleb128 0x18
	.4byte	0x1c5
	.uleb128 0x18
	.4byte	0x1c5
	.byte	0
	.uleb128 0x47
	.4byte	.LASF278
	.byte	0x9
	.2byte	0xddc
	.4byte	0x1c5
	.4byte	0x1eab
	.uleb128 0x18
	.4byte	0x12f
	.uleb128 0x18
	.4byte	0x12f
	.byte	0
	.uleb128 0x47
	.4byte	.LASF279
	.byte	0x9
	.2byte	0xde9
	.4byte	0x13a
	.4byte	0x1ec1
	.uleb128 0x18
	.4byte	0x1c5
	.byte	0
	.uleb128 0x42
	.4byte	.LASF280
	.byte	0x9
	.2byte	0xb7e
	.4byte	0x1ee2
	.uleb128 0x18
	.4byte	0x13a
	.uleb128 0x18
	.4byte	0x13a
	.uleb128 0x18
	.4byte	0x13a
	.uleb128 0x18
	.4byte	0x13a
	.byte	0
	.uleb128 0x42
	.4byte	.LASF281
	.byte	0x9
	.2byte	0xdf6
	.4byte	0x1f03
	.uleb128 0x18
	.4byte	0x12f
	.uleb128 0x18
	.4byte	0x12f
	.uleb128 0x18
	.4byte	0x12f
	.uleb128 0x18
	.4byte	0x12f
	.byte	0
	.uleb128 0x42
	.4byte	.LASF282
	.byte	0x9
	.2byte	0xe04
	.4byte	0x1f1a
	.uleb128 0x18
	.4byte	0x12f
	.uleb128 0x18
	.4byte	0x12f
	.byte	0
	.uleb128 0x42
	.4byte	.LASF283
	.byte	0x9
	.2byte	0xe2d
	.4byte	0x1f3b
	.uleb128 0x18
	.4byte	0x125
	.uleb128 0x18
	.4byte	0x1f3b
	.uleb128 0x18
	.4byte	0x125
	.uleb128 0x18
	.4byte	0x466
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e6
	.uleb128 0x42
	.4byte	.LASF284
	.byte	0x9
	.2byte	0xdd0
	.4byte	0x1f58
	.uleb128 0x18
	.4byte	0x125
	.uleb128 0x18
	.4byte	0x125
	.byte	0
	.uleb128 0x42
	.4byte	.LASF285
	.byte	0x9
	.2byte	0xd89
	.4byte	0x1f6f
	.uleb128 0x18
	.4byte	0x125
	.uleb128 0x18
	.4byte	0x125
	.byte	0
	.uleb128 0x42
	.4byte	.LASF286
	.byte	0x9
	.2byte	0xe4a
	.4byte	0x1f86
	.uleb128 0x18
	.4byte	0x3c4
	.uleb128 0x18
	.4byte	0x13a
	.byte	0
	.uleb128 0x42
	.4byte	.LASF287
	.byte	0x9
	.2byte	0xe5c
	.4byte	0x1f9d
	.uleb128 0x18
	.4byte	0x5a
	.uleb128 0x18
	.4byte	0x125
	.byte	0
	.uleb128 0x42
	.4byte	.LASF288
	.byte	0x9
	.2byte	0xe18
	.4byte	0x1faf
	.uleb128 0x18
	.4byte	0x125
	.byte	0
	.uleb128 0x42
	.4byte	.LASF289
	.byte	0x9
	.2byte	0x7a2
	.4byte	0x1fd5
	.uleb128 0x18
	.4byte	0x125
	.uleb128 0x18
	.4byte	0x13a
	.uleb128 0x18
	.4byte	0x13a
	.uleb128 0x18
	.4byte	0x13a
	.uleb128 0x18
	.4byte	0x13a
	.byte	0
	.uleb128 0x40
	.4byte	.LASF290
	.byte	0x9
	.2byte	0x6f4
	.4byte	0x1fe3
	.uleb128 0x3f
	.byte	0
	.uleb128 0x42
	.4byte	.LASF291
	.byte	0x9
	.2byte	0x7c0
	.4byte	0x1ffa
	.uleb128 0x18
	.4byte	0x125
	.uleb128 0x18
	.4byte	0x125
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF292
	.byte	0xc
	.byte	0x7a
	.4byte	0x125
	.4byte	0x200f
	.uleb128 0x18
	.4byte	0x125
	.byte	0
	.uleb128 0x42
	.4byte	.LASF293
	.byte	0x9
	.2byte	0x788
	.4byte	0x202b
	.uleb128 0x18
	.4byte	0x13a
	.uleb128 0x18
	.4byte	0x5a
	.uleb128 0x18
	.4byte	0x125
	.byte	0
	.uleb128 0x42
	.4byte	.LASF294
	.byte	0x9
	.2byte	0xa8c
	.4byte	0x204c
	.uleb128 0x18
	.4byte	0x12f
	.uleb128 0x18
	.4byte	0x13a
	.uleb128 0x18
	.4byte	0x13a
	.uleb128 0x18
	.4byte	0x13a
	.byte	0
	.uleb128 0x42
	.4byte	.LASF295
	.byte	0x9
	.2byte	0xba9
	.4byte	0x205e
	.uleb128 0x18
	.4byte	0x125
	.byte	0
	.uleb128 0x42
	.4byte	.LASF296
	.byte	0x9
	.2byte	0xa6a
	.4byte	0x2070
	.uleb128 0x18
	.4byte	0x13a
	.byte	0
	.uleb128 0x40
	.4byte	.LASF297
	.byte	0x9
	.2byte	0x1008
	.4byte	0x207e
	.uleb128 0x3f
	.byte	0
	.uleb128 0x42
	.4byte	.LASF298
	.byte	0x9
	.2byte	0xbd1
	.4byte	0x209f
	.uleb128 0x18
	.4byte	0x125
	.uleb128 0x18
	.4byte	0x125
	.uleb128 0x18
	.4byte	0x13a
	.uleb128 0x18
	.4byte	0x125
	.byte	0
	.uleb128 0x42
	.4byte	.LASF299
	.byte	0x9
	.2byte	0x9e5
	.4byte	0x20b6
	.uleb128 0x18
	.4byte	0x125
	.uleb128 0x18
	.4byte	0x125
	.byte	0
	.uleb128 0x42
	.4byte	.LASF300
	.byte	0x9
	.2byte	0xd69
	.4byte	0x20c8
	.uleb128 0x18
	.4byte	0x125
	.byte	0
	.uleb128 0x42
	.4byte	.LASF301
	.byte	0x9
	.2byte	0xb36
	.4byte	0x20da
	.uleb128 0x18
	.4byte	0x125
	.byte	0
	.uleb128 0x40
	.4byte	.LASF302
	.byte	0x9
	.2byte	0x6cb
	.4byte	0x20e8
	.uleb128 0x3f
	.byte	0
	.uleb128 0x40
	.4byte	.LASF303
	.byte	0xc
	.2byte	0x162
	.4byte	0x20f6
	.uleb128 0x3f
	.byte	0
	.uleb128 0x42
	.4byte	.LASF304
	.byte	0x12
	.2byte	0x135
	.4byte	0x2130
	.uleb128 0x18
	.4byte	0x4ba
	.uleb128 0x18
	.4byte	0x4ba
	.uleb128 0x18
	.4byte	0x4ba
	.uleb128 0x18
	.4byte	0x4ba
	.uleb128 0x18
	.4byte	0x4ba
	.uleb128 0x18
	.4byte	0x4ba
	.uleb128 0x18
	.4byte	0x4ba
	.uleb128 0x18
	.4byte	0x4ba
	.uleb128 0x18
	.4byte	0x4ba
	.byte	0
	.uleb128 0x44
	.4byte	.LASF305
	.byte	0xb
	.2byte	0x35c
	.uleb128 0x47
	.4byte	.LASF306
	.byte	0xa
	.2byte	0x107
	.4byte	0x15a
	.4byte	0x214e
	.uleb128 0x18
	.4byte	0x214e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x43a
	.uleb128 0x47
	.4byte	.LASF307
	.byte	0xa
	.2byte	0x11e
	.4byte	0x15a
	.4byte	0x217e
	.uleb128 0x18
	.4byte	0x43a
	.uleb128 0x18
	.4byte	0x217e
	.uleb128 0x18
	.4byte	0x217e
	.uleb128 0x18
	.4byte	0x445
	.uleb128 0x18
	.4byte	0x5a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2184
	.uleb128 0x8
	.4byte	0xb7
	.uleb128 0x3e
	.4byte	.LASF308
	.byte	0x8
	.byte	0x51
	.4byte	0x15a
	.4byte	0x21b7
	.uleb128 0x18
	.4byte	0x21b7
	.uleb128 0x18
	.4byte	0x21bd
	.uleb128 0x18
	.4byte	0x5a
	.uleb128 0x18
	.4byte	0x5a
	.uleb128 0x18
	.4byte	0x13a
	.uleb128 0x18
	.4byte	0x125
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x313
	.uleb128 0x6
	.byte	0x4
	.4byte	0x21c3
	.uleb128 0x48
	.4byte	0x5a
	.4byte	0x21d2
	.uleb128 0x18
	.4byte	0x5a
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF309
	.byte	0x13
	.byte	0x23
	.4byte	0x6a
	.4byte	0x21e7
	.uleb128 0x18
	.4byte	0x21e7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb7
	.uleb128 0x49
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x1da
	.uleb128 0x3f
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2117
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0xb
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x31
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x45
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.4byte	.LFE79-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-1-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-1-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x5
	.byte	0x38
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x5
	.byte	0x37
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x5
	.byte	0x8d
	.sleb128 -33984
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 -33984
	.byte	0x9f
	.4byte	.LVL27-1-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x5
	.byte	0x8d
	.sleb128 -33985
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0xc
	.byte	0x73
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x8
	.byte	0x3c
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64-1-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL117-1-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL123-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL123-1-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x21
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL117-1-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL119-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL117-1-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL117-1-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL122-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x24
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL117-1-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x25
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL117-1-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x26
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125-1-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL130-1-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL136-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL136-1-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL130-1-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL130-1-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL136-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL136-1-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL130-1-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 -36
	.4byte	.LVL136-1-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-1-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL147-1-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-1-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL147-1-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL150-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
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
.LASF296:
	.string	"GX_SetNumTexGens"
.LASF283:
	.string	"GX_SetCopyFilter"
.LASF140:
	.string	"glutInitDisplayMode"
.LASF141:
	.string	"conX"
.LASF142:
	.string	"conY"
.LASF169:
	.string	"interval"
.LASF263:
	.string	"initTextureSlots"
.LASF286:
	.string	"GX_SetCopyClear"
.LASF306:
	.string	"SYS_CreateAlarm"
.LASF76:
	.string	"Stack"
.LASF11:
	.string	"char"
.LASF285:
	.string	"GX_SetPixelFmt"
.LASF58:
	.string	"GLint"
.LASF55:
	.string	"alarmcallback"
.LASF97:
	.string	"boxInfo"
.LASF291:
	.string	"GX_SetVtxDesc"
.LASF202:
	.string	"globAmbient"
.LASF198:
	.string	"texture_stack"
.LASF153:
	.string	"glutCreateWindow"
.LASF287:
	.string	"GX_CopyDisp"
.LASF179:
	.string	"_tempnormalelement"
.LASF213:
	.string	"fb_max_height"
.LASF183:
	.string	"_normalelements"
.LASF318:
	.string	"do_reset"
.LASF89:
	.string	"_mat"
.LASF238:
	.string	"__glutProgramName"
.LASF82:
	.string	"specular"
.LASF246:
	.string	"idlefunc"
.LASF162:
	.string	"glutDisplayFunc"
.LASF139:
	.string	"getVImode"
.LASF7:
	.string	"short int"
.LASF250:
	.string	"LWP_YieldThread"
.LASF176:
	.string	"frameBuffer"
.LASF108:
	.string	"_trans"
.LASF84:
	.string	"spotCutoff"
.LASF112:
	.string	"_tex_env"
.LASF163:
	.string	"func"
.LASF203:
	.string	"curmat"
.LASF248:
	.string	"kill"
.LASF123:
	.string	"mode"
.LASF151:
	.string	"farZ"
.LASF118:
	.string	"maxlod"
.LASF93:
	.string	"GL_STATE_NONE"
.LASF40:
	.string	"xfbMode"
.LASF301:
	.string	"GX_SetCullMode"
.LASF133:
	.string	"glTexEnvSet"
.LASF51:
	.string	"_gx_litobj"
.LASF91:
	.string	"shininess"
.LASF200:
	.string	"cur_mode"
.LASF184:
	.string	"_vertexelements"
.LASF66:
	.string	"GXColorf"
.LASF127:
	.string	"CargOp"
.LASF304:
	.string	"gluLookAt"
.LASF101:
	.string	"swap"
.LASF195:
	.string	"_cleardepth"
.LASF81:
	.string	"diffuse"
.LASF288:
	.string	"GX_SetDispCopyGamma"
.LASF212:
	.string	"cur_state"
.LASF273:
	.string	"CON_InitEx"
.LASF154:
	.string	"title"
.LASF191:
	.string	"cur_tex_client"
.LASF182:
	.string	"vert"
.LASF23:
	.string	"uint32_t"
.LASF18:
	.string	"int8_t"
.LASF181:
	.string	"norm"
.LASF230:
	.string	"fog_mode"
.LASF37:
	.string	"viYOrigin"
.LASF232:
	.string	"fog_endz"
.LASF188:
	.string	"_type"
.LASF24:
	.string	"vu16"
.LASF0:
	.string	"float"
.LASF113:
	.string	"min_filter"
.LASF245:
	.string	"displayfunc"
.LASF293:
	.string	"GX_SetArray"
.LASF274:
	.string	"memalign"
.LASF247:
	.string	"count"
.LASF110:
	.string	"bias"
.LASF20:
	.string	"int16_t"
.LASF74:
	.string	"begin"
.LASF50:
	.string	"GXColor"
.LASF72:
	.string	"VertexArray"
.LASF220:
	.string	"line_width"
.LASF9:
	.string	"long long unsigned int"
.LASF308:
	.string	"LWP_CreateThread"
.LASF258:
	.string	"glMatrixMode"
.LASF228:
	.string	"Trans"
.LASF136:
	.string	"glutInit"
.LASF222:
	.string	"pack"
.LASF90:
	.string	"emissive"
.LASF217:
	.string	"viewPort"
.LASF147:
	.string	"GX_SetModViewport"
.LASF265:
	.string	"SYS_AllocateFramebuffer"
.LASF224:
	.string	"color_write_mask"
.LASF126:
	.string	"Carg"
.LASF68:
	.string	"enable"
.LASF235:
	.string	"glTexEnvs"
.LASF289:
	.string	"GX_SetVtxAttrFmt"
.LASF30:
	.string	"timespec"
.LASF279:
	.string	"GX_SetDispCopyYScale"
.LASF305:
	.string	"glFlush"
.LASF234:
	.string	"fog_color"
.LASF16:
	.string	"tv_nsec"
.LASF13:
	.string	"size_t"
.LASF170:
	.string	"watchdog_conf"
.LASF98:
	.string	"width"
.LASF243:
	.string	"offset"
.LASF225:
	.string	"copy_mat_enabled"
.LASF33:
	.string	"fbWidth"
.LASF190:
	.string	"cur_tex"
.LASF1:
	.string	"double"
.LASF313:
	.string	"_wgpipe"
.LASF125:
	.string	"comAlpha"
.LASF29:
	.string	"_Bool"
.LASF25:
	.string	"vu32"
.LASF62:
	.string	"GLdouble"
.LASF215:
	.string	"scissor_test"
.LASF284:
	.string	"GX_SetFieldMode"
.LASF131:
	.string	"rgb_scale"
.LASF309:
	.string	"nanosleep"
.LASF290:
	.string	"GX_ClearVtxDesc"
.LASF53:
	.string	"GXFifoObj"
.LASF221:
	.string	"point_size"
.LASF158:
	.string	"glutSwapBuffers"
.LASF160:
	.string	"glutGet"
.LASF61:
	.string	"GLfloat"
.LASF226:
	.string	"copy_material"
.LASF95:
	.string	"GL_STATE_NEWLIST"
.LASF199:
	.string	"curmtx"
.LASF28:
	.string	"vf32"
.LASF48:
	.string	"WGPipe"
.LASF80:
	.string	"ambient"
.LASF216:
	.string	"scissorInfo"
.LASF175:
	.string	"chan"
.LASF205:
	.string	"gxwinding"
.LASF164:
	.string	"glutIdleFunc"
.LASF26:
	.string	"vs16"
.LASF52:
	.string	"GXLightObj"
.LASF277:
	.string	"GX_SetViewport"
.LASF145:
	.string	"yscale"
.LASF111:
	.string	"ColorTrans"
.LASF159:
	.string	"glutInitWindowSize"
.LASF272:
	.string	"VIDEO_WaitVSync"
.LASF208:
	.string	"blend_src"
.LASF92:
	.string	"Material"
.LASF194:
	.string	"depthfunction"
.LASF270:
	.string	"VIDEO_Flush"
.LASF19:
	.string	"uint8_t"
.LASF54:
	.string	"syswd_t"
.LASF149:
	.string	"yOrig"
.LASF14:
	.string	"time_t"
.LASF197:
	.string	"projection_stack"
.LASF254:
	.string	"glColor3f"
.LASF300:
	.string	"GX_SetAlphaUpdate"
.LASF186:
	.string	"_colorelements"
.LASF237:
	.string	"call_offset"
.LASF281:
	.string	"GX_SetDispCopySrc"
.LASF46:
	.string	"guVector"
.LASF307:
	.string	"SYS_SetPeriodicAlarm"
.LASF34:
	.string	"efbHeight"
.LASF8:
	.string	"long long int"
.LASF299:
	.string	"GX_SetTevOp"
.LASF219:
	.string	"normFar"
.LASF252:
	.string	"printf"
.LASF59:
	.string	"GLuint"
.LASF144:
	.string	"conWidth"
.LASF157:
	.string	"yOrigin"
.LASF236:
	.string	"read_mode"
.LASF75:
	.string	"elem_size"
.LASF38:
	.string	"viWidth"
.LASF96:
	.string	"glState"
.LASF85:
	.string	"constant"
.LASF134:
	.string	"alarm"
.LASF229:
	.string	"fog_enable"
.LASF42:
	.string	"sample_pattern"
.LASF161:
	.string	"retval"
.LASF43:
	.string	"vfilter"
.LASF240:
	.string	"watchdog"
.LASF64:
	.string	"VertexElement"
.LASF242:
	.string	"_console_inited"
.LASF275:
	.string	"memset"
.LASF120:
	.string	"biasclamp"
.LASF27:
	.string	"vs32"
.LASF103:
	.string	"row_length"
.LASF193:
	.string	"depthupdate"
.LASF316:
	.string	"HideConsole"
.LASF268:
	.string	"VIDEO_SetNextFramebuffer"
.LASF70:
	.string	"size"
.LASF88:
	.string	"LightObj"
.LASF39:
	.string	"viHeight"
.LASF115:
	.string	"wrap_s"
.LASF116:
	.string	"wrap_t"
.LASF86:
	.string	"linear"
.LASF45:
	.string	"_vecf"
.LASF209:
	.string	"blend_dst"
.LASF185:
	.string	"_texcoordelements"
.LASF99:
	.string	"height"
.LASF180:
	.string	"_temptexcoordelement"
.LASF256:
	.string	"glNormal3f"
.LASF241:
	.string	"_console_enabled"
.LASF36:
	.string	"viXOrigin"
.LASF282:
	.string	"GX_SetDispCopyDst"
.LASF278:
	.string	"GX_GetYScaleFactor"
.LASF138:
	.string	"argv"
.LASF44:
	.string	"GXRModeObj"
.LASF17:
	.string	"long double"
.LASF264:
	.string	"_glInitStacks"
.LASF21:
	.string	"uint16_t"
.LASF310:
	.string	"GNU C 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF155:
	.string	"GX_SetModScissor"
.LASF261:
	.string	"initTextures"
.LASF298:
	.string	"GX_SetTevOrder"
.LASF267:
	.string	"VIDEO_Configure"
.LASF135:
	.string	"timercallback"
.LASF173:
	.string	"getBackFramebuffer"
.LASF223:
	.string	"unpack"
.LASF174:
	.string	"power_off"
.LASF79:
	.string	"spotDir"
.LASF67:
	.string	"_array"
.LASF83:
	.string	"spotExponent"
.LASF87:
	.string	"quad_t"
.LASF119:
	.string	"lodbias"
.LASF201:
	.string	"lights"
.LASF280:
	.string	"GX_SetScissor"
.LASF117:
	.string	"minlod"
.LASF114:
	.string	"max_filter"
.LASF12:
	.string	"long int"
.LASF31:
	.string	"_gx_rmodeobj"
.LASF239:
	.string	"rmode"
.LASF249:
	.string	"GX_AbortFrame"
.LASF166:
	.string	"getFPS"
.LASF297:
	.string	"GX_InvalidateTexAll"
.LASF152:
	.string	"glutThread"
.LASF56:
	.string	"GLenum"
.LASF260:
	.string	"glActiveTextureARB"
.LASF77:
	.string	"_light"
.LASF130:
	.string	"color"
.LASF172:
	.string	"getFrontFramebuffer"
.LASF60:
	.string	"GLsizei"
.LASF231:
	.string	"fog_startz"
.LASF178:
	.string	"_tempcolorelement"
.LASF47:
	.string	"lwp_t"
.LASF311:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/glut.c"
.LASF105:
	.string	"skip_pixels"
.LASF292:
	.string	"incTexDesc"
.LASF122:
	.string	"maxaniso"
.LASF255:
	.string	"glTexCoord2f"
.LASF168:
	.string	"start"
.LASF251:
	.string	"VIDEO_Init"
.LASF2:
	.string	"unsigned int"
.LASF233:
	.string	"fog_density"
.LASF69:
	.string	"stride"
.LASF206:
	.string	"lighting"
.LASF15:
	.string	"tv_sec"
.LASF3:
	.string	"sizetype"
.LASF10:
	.string	"long unsigned int"
.LASF271:
	.string	"glLoadIdentity"
.LASF207:
	.string	"blend_type"
.LASF171:
	.string	"draw_thread"
.LASF210:
	.string	"blend_op"
.LASF312:
	.string	"D:\\\\devkitPro\\\\portlibs\\\\thirdparty\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF295:
	.string	"GX_SetNumChans"
.LASF22:
	.string	"int32_t"
.LASF107:
	.string	"pixelStore"
.LASF148:
	.string	"xOrig"
.LASF303:
	.string	"ResetArrays"
.LASF94:
	.string	"GL_STATE_BEGIN"
.LASF266:
	.string	"VIDEO_ClearFrameBuffer"
.LASF302:
	.string	"GX_DrawDone"
.LASF71:
	.string	"type"
.LASF137:
	.string	"argcp"
.LASF4:
	.string	"unsigned char"
.LASF78:
	.string	"enabled"
.LASF57:
	.string	"GLboolean"
.LASF104:
	.string	"skip_rows"
.LASF187:
	.string	"vert_i"
.LASF102:
	.string	"lsb_first"
.LASF132:
	.string	"alpha_scale"
.LASF143:
	.string	"conHeight"
.LASF63:
	.string	"Vector"
.LASF124:
	.string	"comRGB"
.LASF214:
	.string	"fb_max_width"
.LASF109:
	.string	"scale"
.LASF218:
	.string	"normNear"
.LASF189:
	.string	"_GLtype"
.LASF192:
	.string	"depthtestenabled"
.LASF32:
	.string	"viTVMode"
.LASF49:
	.string	"_gx_color"
.LASF121:
	.string	"edgelod"
.LASF204:
	.string	"gxcullfaceanabled"
.LASF227:
	.string	"_clearcolor"
.LASF73:
	.string	"_stack"
.LASF317:
	.string	"GX_SetMaxScissor"
.LASF6:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF262:
	.string	"initCalllist"
.LASF269:
	.string	"VIDEO_SetBlack"
.LASF177:
	.string	"wgPipe"
.LASF150:
	.string	"nearZ"
.LASF244:
	.string	"incFPS"
.LASF167:
	.string	"glutMainLoop"
.LASF41:
	.string	"field_rendering"
.LASF156:
	.string	"xOrigin"
.LASF35:
	.string	"xfbHeight"
.LASF106:
	.string	"alignment"
.LASF253:
	.string	"VIDEO_GetPreferredMode"
.LASF65:
	.string	"TexCoordElement"
.LASF259:
	.string	"InitStackPrjMtx"
.LASF294:
	.string	"GX_SetTexCoordGen"
.LASF146:
	.string	"gp_fifo"
.LASF315:
	.string	"ShowConsole"
.LASF314:
	.string	"_glState"
.LASF257:
	.string	"InitStackMtx"
.LASF100:
	.string	"_pixelStore"
.LASF196:
	.string	"model_stack"
.LASF128:
	.string	"Aarg"
.LASF165:
	.string	"computeFactor"
.LASF211:
	.string	"cull_mode"
.LASF276:
	.string	"GX_Init"
.LASF129:
	.string	"AargOp"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
	.gnu_attribute 4, 1
