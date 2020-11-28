	.file	"gl_extensions.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl glGetString
	.type	glGetString, @function
glGetString:
.LFB64:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl_extensions.c"
	.loc 1 13 0
	.cfi_startproc
.LVL0:
	.loc 1 14 0
	lis 9,cur_state@ha
	.loc 1 13 0
	mflr 0
	.loc 1 14 0
	lwz 9,cur_state@l(9)
	.loc 1 13 0
	stwu 1,-8(1)
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 14 0
	andi. 10,9,1
	.loc 1 13 0
	stw 0,12(1)
	.cfi_offset 65, 4
	.loc 1 14 0
	beq+ 0,.L2
.LVL1:
.LBB4:
.LBB5:
	lis 4,.LC0@ha
	li 3,1282
.LVL2:
	la 4,.LC0@l(4)
	li 5,14
	b .L11
.LVL3:
.L2:
.LBE5:
.LBE4:
	.loc 1 16 0
	cmplwi 7,3,7937
	beq- 7,.L9
	bgt+ 7,.L5
	cmplwi 7,3,7936
	bne- 7,.L4
	.loc 1 18 0
	lis 3,.LANCHOR0@ha
.LVL4:
	la 3,.LANCHOR0@l(3)
	b .L3
.LVL5:
.L5:
	.loc 1 16 0
	cmplwi 7,3,7938
	beq- 7,.L7
	cmplwi 7,3,7939
	bne- 7,.L4
	.loc 1 21 0
	lis 3,.LANCHOR0@ha
.LVL6:
	la 3,.LANCHOR0@l(3)
	addi 3,3,16
	b .L3
.LVL7:
.L7:
	.loc 1 20 0
	lis 3,.LANCHOR0@ha
.LVL8:
	la 3,.LANCHOR0@l(3)
	addi 3,3,12
	b .L3
.LVL9:
.L4:
	.loc 1 22 0
	lis 4,.LC0@ha
	li 3,1280
.LVL10:
	la 4,.LC0@l(4)
	li 5,22
.L11:
	bl _glSetErrorEx
.LVL11:
	li 3,0
	b .L3
.LVL12:
.L9:
	.loc 1 19 0
	lis 3,.LANCHOR0@ha
.LVL13:
	la 3,.LANCHOR0@l(3)
	addi 3,3,8
.L3:
	.loc 1 24 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE64:
	.size	glGetString, .-glGetString
	.align 2
	.globl _glGetProcAddress
	.type	_glGetProcAddress, @function
_glGetProcAddress:
.LFB65:
	.loc 1 29 0
	.cfi_startproc
.LVL14:
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.cfi_register 65, 0
	.cfi_offset 31, -4
	mr 31,3
	.loc 1 30 0
	lis 3,.LC1@ha
.LVL15:
	mr 4,31
	la 3,.LC1@l(3)
	.loc 1 29 0
	stw 0,20(1)
	.cfi_offset 65, 4
	.loc 1 30 0
	bl strcmp
.LVL16:
	cmpwi 7,3,0
	beq- 7,.L15
	.loc 1 31 0
	lis 3,.LC2@ha
	mr 4,31
	la 3,.LC2@l(3)
	bl strcmp
.LVL17:
	cmpwi 7,3,0
	beq- 7,.L16
	.loc 1 32 0
	lis 3,.LC3@ha
	mr 4,31
	la 3,.LC3@l(3)
	bl strcmp
.LVL18:
	cmpwi 7,3,0
	beq- 7,.L17
	.file 2 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/SDL_glfuncs.h"
	.loc 2 10 0
	lis 3,.LC4@ha
	mr 4,31
	la 3,.LC4@l(3)
	bl strcmp
.LVL19:
	cmpwi 7,3,0
	beq- 7,.L18
	.loc 2 11 0
	lis 3,.LC5@ha
	mr 4,31
	la 3,.LC5@l(3)
	bl strcmp
.LVL20:
	cmpwi 7,3,0
	beq- 7,.L19
	.loc 2 13 0
	lis 3,.LC6@ha
	mr 4,31
	la 3,.LC6@l(3)
	bl strcmp
.LVL21:
	cmpwi 7,3,0
	beq- 7,.L20
	.loc 2 43 0
	lis 3,.LC7@ha
	mr 4,31
	la 3,.LC7@l(3)
	bl strcmp
.LVL22:
	cmpwi 7,3,0
	beq- 7,.L21
	.loc 2 69 0
	lis 3,.LC8@ha
	mr 4,31
	la 3,.LC8@l(3)
	bl strcmp
.LVL23:
	cmpwi 7,3,0
	beq- 7,.L22
	.loc 2 78 0
	lis 3,.LC9@ha
	mr 4,31
	la 3,.LC9@l(3)
	bl strcmp
.LVL24:
	cmpwi 7,3,0
	beq- 7,.L23
	.loc 2 80 0
	lis 3,.LC10@ha
	mr 4,31
	la 3,.LC10@l(3)
	bl strcmp
.LVL25:
	cmpwi 7,3,0
	beq- 7,.L24
	.loc 2 96 0
	lis 3,.LC11@ha
	mr 4,31
	la 3,.LC11@l(3)
	bl strcmp
.LVL26:
	cmpwi 7,3,0
	beq- 7,.L25
	.loc 2 104 0
	lis 3,.LC12@ha
	mr 4,31
	la 3,.LC12@l(3)
	bl strcmp
.LVL27:
	cmpwi 7,3,0
	beq- 7,.L26
	.loc 2 123 0
	lis 3,.LC13@ha
	mr 4,31
	la 3,.LC13@l(3)
	bl strcmp
.LVL28:
	cmpwi 7,3,0
	beq- 7,.L27
	.loc 2 163 0
	lis 3,.LC14@ha
	mr 4,31
	la 3,.LC14@l(3)
	bl strcmp
.LVL29:
	cmpwi 7,3,0
	beq- 7,.L28
	.loc 2 180 0
	lis 3,.LC15@ha
	mr 4,31
	la 3,.LC15@l(3)
	bl strcmp
.LVL30:
	cmpwi 7,3,0
	beq- 7,.L29
	.loc 2 195 0
	lis 3,.LC16@ha
	mr 4,31
	la 3,.LC16@l(3)
	bl strcmp
.LVL31:
	cmpwi 7,3,0
	beq- 7,.L30
	.loc 2 201 0
	lis 3,.LC17@ha
	mr 4,31
	la 3,.LC17@l(3)
	bl strcmp
.LVL32:
	cmpwi 7,3,0
	beq- 7,.L31
	.loc 2 209 0
	lis 3,.LC18@ha
	mr 4,31
	la 3,.LC18@l(3)
	bl strcmp
.LVL33:
	cmpwi 7,3,0
	beq- 7,.L32
	.loc 2 210 0
	lis 3,.LC19@ha
	mr 4,31
	la 3,.LC19@l(3)
	bl strcmp
.LVL34:
	cmpwi 7,3,0
	beq- 7,.L33
	.loc 2 211 0
	lis 3,.LC20@ha
	mr 4,31
	la 3,.LC20@l(3)
	bl strcmp
.LVL35:
	cmpwi 7,3,0
	beq- 7,.L34
	.loc 2 214 0
	lis 3,.LC21@ha
	mr 4,31
	la 3,.LC21@l(3)
	bl strcmp
.LVL36:
	cmpwi 7,3,0
	beq- 7,.L35
	.loc 2 215 0
	lis 3,.LC22@ha
	mr 4,31
	la 3,.LC22@l(3)
	bl strcmp
.LVL37:
	cmpwi 7,3,0
	beq- 7,.L36
	.loc 2 216 0
	lis 3,.LC23@ha
	mr 4,31
	la 3,.LC23@l(3)
	bl strcmp
.LVL38:
	cmpwi 7,3,0
	beq- 7,.L37
	.loc 2 273 0
	lis 3,.LC24@ha
	mr 4,31
	la 3,.LC24@l(3)
	bl strcmp
.LVL39:
	cmpwi 7,3,0
	beq- 7,.L38
	.loc 2 296 0
	lis 3,.LC25@ha
	mr 4,31
	la 3,.LC25@l(3)
	bl strcmp
.LVL40:
	cmpwi 7,3,0
	beq- 7,.L39
	.loc 2 307 0
	lis 3,.LC26@ha
	mr 4,31
	la 3,.LC26@l(3)
	bl strcmp
.LVL41:
	cmpwi 7,3,0
	beq- 7,.L40
	.loc 2 310 0
	lis 3,.LC27@ha
	mr 4,31
	la 3,.LC27@l(3)
	bl strcmp
.LVL42:
	cmpwi 7,3,0
	beq- 7,.L41
	.loc 2 313 0
	lis 3,.LC28@ha
	mr 4,31
	la 3,.LC28@l(3)
	bl strcmp
.LVL43:
	cmpwi 7,3,0
	beq- 7,.L42
	.loc 2 320 0
	lis 3,.LC29@ha
	mr 4,31
	la 3,.LC29@l(3)
	bl strcmp
.LVL44:
	cmpwi 7,3,0
	beq- 7,.L43
	.loc 2 341 0
	lis 3,.LC30@ha
	mr 4,31
	la 3,.LC30@l(3)
	bl strcmp
.LVL45:
	cmpwi 7,3,0
	beq- 7,.L44
	.loc 1 34 0
	lis 3,.LC31@ha
	mr 4,31
	la 3,.LC31@l(3)
	bl strcmp
.LVL46:
	cmpwi 7,3,0
	beq- 7,.L45
	.loc 1 35 0
	lis 3,.LC32@ha
	mr 4,31
	la 3,.LC32@l(3)
	bl strcmp
.LVL47:
	cmpwi 7,3,0
	bne- 7,.L46
	lis 3,glDrawRangeElements@ha
	la 3,glDrawRangeElements@l(3)
	b .L14
.L15:
	.loc 1 30 0
	lis 3,glMultiTexCoord2fARB@ha
	la 3,glMultiTexCoord2fARB@l(3)
	b .L14
.L16:
	.loc 1 31 0
	lis 3,glActiveTextureARB@ha
	la 3,glActiveTextureARB@l(3)
	b .L14
.L17:
	.loc 1 32 0
	lis 3,glClientActiveTextureARB@ha
	la 3,glClientActiveTextureARB@l(3)
	b .L14
.L18:
	.loc 2 10 0
	lis 3,glBegin@ha
	la 3,glBegin@l(3)
	b .L14
.L19:
	.loc 2 11 0
	lis 3,glBindTexture@ha
	la 3,glBindTexture@l(3)
	b .L14
.L20:
	.loc 2 13 0
	lis 3,glBlendFunc@ha
	la 3,glBlendFunc@l(3)
	b .L14
.L21:
	.loc 2 43 0
	lis 3,glColor4f@ha
	la 3,glColor4f@l(3)
	b .L14
.L22:
	.loc 2 69 0
	lis 3,glDisable@ha
	la 3,glDisable@l(3)
	b .L14
.L23:
	.loc 2 78 0
	lis 3,glEnable@ha
	la 3,glEnable@l(3)
	b .L14
.L24:
	.loc 2 80 0
	lis 3,glEnd@ha
	la 3,glEnd@l(3)
	b .L14
.L25:
	.loc 2 96 0
	lis 3,glFlush@ha
	la 3,glFlush@l(3)
	b .L14
.L26:
	.loc 2 104 0
	lis 3,glGenTextures@ha
	la 3,glGenTextures@l(3)
	b .L14
.L27:
	.loc 2 123 0
	lis 3,glGetString@ha
	la 3,glGetString@l(3)
	b .L14
.L28:
	.loc 2 163 0
	lis 3,glLoadIdentity@ha
	la 3,glLoadIdentity@l(3)
	b .L14
.L29:
	.loc 2 180 0
	lis 3,glMatrixMode@ha
	la 3,glMatrixMode@l(3)
	b .L14
.L30:
	.loc 2 195 0
	lis 3,glOrtho@ha
	la 3,glOrtho@l(3)
	b .L14
.L31:
	.loc 2 201 0
	lis 3,glPixelStorei@ha
	la 3,glPixelStorei@l(3)
	b .L14
.L32:
	.loc 2 209 0
	lis 3,glPopAttrib@ha
	la 3,glPopAttrib@l(3)
	b .L14
.L33:
	.loc 2 210 0
	lis 3,glPopClientAttrib@ha
	la 3,glPopClientAttrib@l(3)
	b .L14
.L34:
	.loc 2 211 0
	lis 3,glPopMatrix@ha
	la 3,glPopMatrix@l(3)
	b .L14
.L35:
	.loc 2 214 0
	lis 3,glPushAttrib@ha
	la 3,glPushAttrib@l(3)
	b .L14
.L36:
	.loc 2 215 0
	lis 3,glPushClientAttrib@ha
	la 3,glPushClientAttrib@l(3)
	b .L14
.L37:
	.loc 2 216 0
	lis 3,glPushMatrix@ha
	la 3,glPushMatrix@l(3)
	b .L14
.L38:
	.loc 2 273 0
	lis 3,glTexCoord2f@ha
	la 3,glTexCoord2f@l(3)
	b .L14
.L39:
	.loc 2 296 0
	lis 3,glTexEnvf@ha
	la 3,glTexEnvf@l(3)
	b .L14
.L40:
	.loc 2 307 0
	lis 3,glTexImage2D@ha
	la 3,glTexImage2D@l(3)
	b .L14
.L41:
	.loc 2 310 0
	lis 3,glTexParameteri@ha
	la 3,glTexParameteri@l(3)
	b .L14
.L42:
	.loc 2 313 0
	lis 3,glTexSubImage2D@ha
	la 3,glTexSubImage2D@l(3)
	b .L14
.L43:
	.loc 2 320 0
	lis 3,glVertex2i@ha
	la 3,glVertex2i@l(3)
	b .L14
.L44:
	.loc 2 341 0
	lis 3,glViewport@ha
	la 3,glViewport@l(3)
	b .L14
.L45:
	.loc 1 34 0
	lis 3,glDrawRangeElementsEXT@ha
	la 3,glDrawRangeElementsEXT@l(3)
	b .L14
.L46:
	.loc 1 36 0
	li 3,0
.L14:
	.loc 1 37 0
	addi 11,1,16
	b _restgpr_31_x
	.cfi_restore 31
	.cfi_restore 65
	.cfi_endproc
.LFE65:
	.size	_glGetProcAddress, .-_glGetProcAddress
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
	.type	vender, @object
	.size	vender, 6
vender:
	.string	"gl2gx"
	.zero	2
	.type	renderer, @object
	.size	renderer, 3
renderer:
	.string	"gx"
	.zero	1
	.type	version, @object
	.size	version, 4
version:
	.string	"1.2"
	.type	extensions, @object
	.size	extensions, 167
extensions:
	.string	"GL_EXT_texture_lod_bias\nGL_EXT_texture_filter_anisotropic\nGL_ARB_multitexture\nGL_EXT_texture_env_add\nGL_EXT_texture_env_combine\nGL_EXT_draw_range_elements\nGL_EXT_bgra"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl_extensions.c"
.LC1:
	.string	"glMultiTexCoord2fARB"
.LC2:
	.string	"glActiveTextureARB"
.LC3:
	.string	"glClientActiveTextureARB"
.LC4:
	.string	"glBegin"
.LC5:
	.string	"glBindTexture"
.LC6:
	.string	"glBlendFunc"
.LC7:
	.string	"glColor4f"
.LC8:
	.string	"glDisable"
.LC9:
	.string	"glEnable"
.LC10:
	.string	"glEnd"
.LC11:
	.string	"glFlush"
.LC12:
	.string	"glGenTextures"
.LC13:
	.string	"glGetString"
.LC14:
	.string	"glLoadIdentity"
.LC15:
	.string	"glMatrixMode"
.LC16:
	.string	"glOrtho"
.LC17:
	.string	"glPixelStorei"
.LC18:
	.string	"glPopAttrib"
.LC19:
	.string	"glPopClientAttrib"
.LC20:
	.string	"glPopMatrix"
.LC21:
	.string	"glPushAttrib"
.LC22:
	.string	"glPushClientAttrib"
.LC23:
	.string	"glPushMatrix"
.LC24:
	.string	"glTexCoord2f"
.LC25:
	.string	"glTexEnvf"
.LC26:
	.string	"glTexImage2D"
.LC27:
	.string	"glTexParameteri"
.LC28:
	.string	"glTexSubImage2D"
.LC29:
	.string	"glVertex2i"
.LC30:
	.string	"glViewport"
.LC31:
	.string	"glDrawRangeElementsEXT"
.LC32:
	.string	"glDrawRangeElements"
	.section	".text"
.Letext0:
	.file 3 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/include/GL/gl.h"
	.file 4 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h"
	.file 5 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\stdint.h"
	.file 6 "D:\\devkitPro\\/libogc/include/gctypes.h"
	.file 7 "D:\\devkitPro\\/libogc/include/ogc/gu.h"
	.file 8 "D:\\devkitPro\\/libogc/include/ogc/gx.h"
	.file 9 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/include/glint.h"
	.file 10 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/include/mat_stack.h"
	.file 11 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1164
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF177
	.byte	0x1
	.4byte	.LASF178
	.4byte	.LASF179
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x3
	.byte	0x92
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x3
	.byte	0x93
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x98
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x99
	.4byte	0x42
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x9b
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x9c
	.4byte	0x62
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd4
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x6
	.byte	0x4
	.4byte	0xdc
	.uleb128 0x7
	.4byte	0xcf
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0x29
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2a
	.4byte	0x42
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x5
	.byte	0x35
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x5
	.byte	0x36
	.4byte	0x74
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x5
	.byte	0x4f
	.4byte	0x62
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x5
	.byte	0x50
	.4byte	0x30
	.uleb128 0x6
	.byte	0x4
	.4byte	0x129
	.uleb128 0x7
	.4byte	0x69
	.uleb128 0x8
	.string	"u8"
	.byte	0x6
	.byte	0x11
	.4byte	0xec
	.uleb128 0x8
	.string	"u16"
	.byte	0x6
	.byte	0x12
	.4byte	0x102
	.uleb128 0x8
	.string	"u32"
	.byte	0x6
	.byte	0x13
	.4byte	0x118
	.uleb128 0x8
	.string	"s8"
	.byte	0x6
	.byte	0x16
	.4byte	0xe1
	.uleb128 0x8
	.string	"s16"
	.byte	0x6
	.byte	0x17
	.4byte	0xf7
	.uleb128 0x8
	.string	"s32"
	.byte	0x6
	.byte	0x18
	.4byte	0x10d
	.uleb128 0x8
	.string	"vu8"
	.byte	0x6
	.byte	0x1b
	.4byte	0x179
	.uleb128 0x9
	.4byte	0x12e
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x6
	.byte	0x1c
	.4byte	0x189
	.uleb128 0x9
	.4byte	0x138
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x6
	.byte	0x1d
	.4byte	0x199
	.uleb128 0x9
	.4byte	0x143
	.uleb128 0x8
	.string	"vs8"
	.byte	0x6
	.byte	0x20
	.4byte	0x1a9
	.uleb128 0x9
	.4byte	0x14e
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x6
	.byte	0x21
	.4byte	0x1b9
	.uleb128 0x9
	.4byte	0x158
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x6
	.byte	0x22
	.4byte	0x1c9
	.uleb128 0x9
	.4byte	0x163
	.uleb128 0x8
	.string	"f32"
	.byte	0x6
	.byte	0x2b
	.4byte	0x91
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x6
	.byte	0x2e
	.4byte	0x1e4
	.uleb128 0x9
	.4byte	0x91
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF31
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f6
	.uleb128 0xa
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0xc
	.byte	0x7
	.byte	0x5e
	.4byte	0x222
	.uleb128 0xc
	.string	"x"
	.byte	0x7
	.byte	0x5f
	.4byte	0x1ce
	.byte	0
	.uleb128 0xc
	.string	"y"
	.byte	0x7
	.byte	0x5f
	.4byte	0x1ce
	.byte	0x4
	.uleb128 0xc
	.string	"z"
	.byte	0x7
	.byte	0x5f
	.4byte	0x1ce
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x7
	.byte	0x60
	.4byte	0x1f7
	.uleb128 0xd
	.4byte	.LASF180
	.byte	0x4
	.byte	0x8
	.2byte	0x490
	.4byte	0x28d
	.uleb128 0xe
	.string	"U8"
	.byte	0x8
	.2byte	0x492
	.4byte	0x16e
	.uleb128 0xe
	.string	"S8"
	.byte	0x8
	.2byte	0x493
	.4byte	0x19e
	.uleb128 0xe
	.string	"U16"
	.byte	0x8
	.2byte	0x494
	.4byte	0x17e
	.uleb128 0xe
	.string	"S16"
	.byte	0x8
	.2byte	0x495
	.4byte	0x1ae
	.uleb128 0xe
	.string	"U32"
	.byte	0x8
	.2byte	0x496
	.4byte	0x18e
	.uleb128 0xe
	.string	"S32"
	.byte	0x8
	.2byte	0x497
	.4byte	0x1be
	.uleb128 0xe
	.string	"F32"
	.byte	0x8
	.2byte	0x498
	.4byte	0x1d9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x8
	.2byte	0x499
	.4byte	0x22d
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x4
	.byte	0x8
	.2byte	0x49e
	.4byte	0x2d3
	.uleb128 0x11
	.string	"r"
	.byte	0x8
	.2byte	0x49f
	.4byte	0x12e
	.byte	0
	.uleb128 0x11
	.string	"g"
	.byte	0x8
	.2byte	0x4a0
	.4byte	0x12e
	.byte	0x1
	.uleb128 0x11
	.string	"b"
	.byte	0x8
	.2byte	0x4a1
	.4byte	0x12e
	.byte	0x2
	.uleb128 0x11
	.string	"a"
	.byte	0x8
	.2byte	0x4a2
	.4byte	0x12e
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x8
	.2byte	0x4a3
	.4byte	0x299
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x40
	.byte	0x8
	.2byte	0x4f1
	.4byte	0x2fa
	.uleb128 0x11
	.string	"val"
	.byte	0x8
	.2byte	0x4f2
	.4byte	0x2fa
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x143
	.4byte	0x30a
	.uleb128 0x13
	.4byte	0xbf
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x8
	.2byte	0x4f3
	.4byte	0x2df
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x9
	.byte	0xa
	.4byte	0x222
	.uleb128 0x14
	.byte	0x10
	.byte	0x9
	.byte	0x15
	.4byte	0x33e
	.uleb128 0xc
	.string	"v"
	.byte	0x9
	.byte	0x17
	.4byte	0x316
	.byte	0
	.uleb128 0xc
	.string	"w"
	.byte	0x9
	.byte	0x18
	.4byte	0x91
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x9
	.byte	0x19
	.4byte	0x321
	.uleb128 0x14
	.byte	0x8
	.byte	0x9
	.byte	0x1b
	.4byte	0x366
	.uleb128 0xc
	.string	"s"
	.byte	0x9
	.byte	0x1d
	.4byte	0x91
	.byte	0
	.uleb128 0xc
	.string	"t"
	.byte	0x9
	.byte	0x1e
	.4byte	0x91
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x9
	.byte	0x1f
	.4byte	0x349
	.uleb128 0x14
	.byte	0x10
	.byte	0x9
	.byte	0x21
	.4byte	0x3a2
	.uleb128 0xc
	.string	"r"
	.byte	0x9
	.byte	0x23
	.4byte	0x91
	.byte	0
	.uleb128 0xc
	.string	"g"
	.byte	0x9
	.byte	0x24
	.4byte	0x91
	.byte	0x4
	.uleb128 0xc
	.string	"b"
	.byte	0x9
	.byte	0x25
	.4byte	0x91
	.byte	0x8
	.uleb128 0xc
	.string	"a"
	.byte	0x9
	.byte	0x26
	.4byte	0x91
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x9
	.byte	0x27
	.4byte	0x371
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x14
	.byte	0x9
	.byte	0x41
	.4byte	0x3f4
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x9
	.byte	0x43
	.4byte	0x1e9
	.byte	0
	.uleb128 0xc
	.string	"p"
	.byte	0x9
	.byte	0x44
	.4byte	0x1f0
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x9
	.byte	0x45
	.4byte	0x12e
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x9
	.byte	0x46
	.4byte	0x57
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x9
	.byte	0x47
	.4byte	0x25
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x9
	.byte	0x48
	.4byte	0x3ad
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x10
	.byte	0xa
	.byte	0xc
	.4byte	0x43c
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0xa
	.byte	0xe
	.4byte	0xc6
	.byte	0
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0xa
	.byte	0xf
	.4byte	0x9f
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0xa
	.byte	0x10
	.4byte	0x9f
	.byte	0x8
	.uleb128 0xc
	.string	"cur"
	.byte	0xa
	.byte	0x11
	.4byte	0x9f
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xa
	.byte	0x12
	.4byte	0x3ff
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0xa4
	.byte	0x9
	.byte	0x7d
	.4byte	0x4e4
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x9
	.byte	0x7f
	.4byte	0x1e9
	.byte	0
	.uleb128 0xc
	.string	"obj"
	.byte	0x9
	.byte	0x81
	.4byte	0x30a
	.byte	0x4
	.uleb128 0xc
	.string	"pos"
	.byte	0x9
	.byte	0x83
	.4byte	0x33e
	.byte	0x44
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x9
	.byte	0x85
	.4byte	0x316
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x9
	.byte	0x87
	.4byte	0x3a2
	.byte	0x60
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x9
	.byte	0x88
	.4byte	0x3a2
	.byte	0x70
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x9
	.byte	0x89
	.4byte	0x3a2
	.byte	0x80
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x9
	.byte	0x8b
	.4byte	0x91
	.byte	0x90
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x9
	.byte	0x8c
	.4byte	0x91
	.byte	0x94
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x9
	.byte	0x8d
	.4byte	0x91
	.byte	0x98
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x9
	.byte	0x8e
	.4byte	0x91
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x9
	.byte	0x8f
	.4byte	0x91
	.byte	0xa0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x9
	.byte	0x90
	.4byte	0x447
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x44
	.byte	0x9
	.byte	0x9a
	.4byte	0x538
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x9
	.byte	0x9c
	.4byte	0x3a2
	.byte	0
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x9
	.byte	0x9d
	.4byte	0x3a2
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x9
	.byte	0x9e
	.4byte	0x3a2
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x9
	.byte	0x9f
	.4byte	0x3a2
	.byte	0x30
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x9
	.byte	0xa0
	.4byte	0x91
	.byte	0x40
	.byte	0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x9
	.byte	0xa1
	.4byte	0x4ef
	.uleb128 0x16
	.4byte	.LASF181
	.byte	0x4
	.byte	0x9
	.byte	0xb9
	.4byte	0x562
	.uleb128 0x17
	.4byte	.LASF69
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF70
	.sleb128 1
	.uleb128 0x17
	.4byte	.LASF71
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x9
	.byte	0xbe
	.4byte	0x543
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x10
	.byte	0x9
	.byte	0xe2
	.4byte	0x5a6
	.uleb128 0xc
	.string	"x"
	.byte	0x9
	.byte	0xe4
	.4byte	0x57
	.byte	0
	.uleb128 0xc
	.string	"y"
	.byte	0x9
	.byte	0xe5
	.4byte	0x57
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x9
	.byte	0xe6
	.4byte	0x86
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x9
	.byte	0xe7
	.4byte	0x86
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x9
	.byte	0xe8
	.4byte	0x56d
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x14
	.byte	0x9
	.byte	0xf5
	.4byte	0x606
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x9
	.byte	0xf7
	.4byte	0x1e9
	.byte	0
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x9
	.byte	0xf8
	.4byte	0x1e9
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x9
	.byte	0xf9
	.4byte	0x62
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x9
	.byte	0xfa
	.4byte	0x62
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x9
	.byte	0xfb
	.4byte	0x62
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x9
	.byte	0xfc
	.4byte	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x9
	.byte	0xfd
	.4byte	0x5b1
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x8
	.byte	0x9
	.2byte	0x110
	.4byte	0x639
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x9
	.2byte	0x112
	.4byte	0x1ce
	.byte	0
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x9
	.2byte	0x113
	.4byte	0x1ce
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF87
	.byte	0x9
	.2byte	0x114
	.4byte	0x611
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x6c
	.byte	0x9
	.2byte	0x120
	.4byte	0x771
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x9
	.2byte	0x122
	.4byte	0x1e9
	.byte	0
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x9
	.2byte	0x124
	.4byte	0x12e
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x9
	.2byte	0x125
	.4byte	0x12e
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x9
	.2byte	0x126
	.4byte	0x12e
	.byte	0x3
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x9
	.2byte	0x127
	.4byte	0x12e
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x9
	.2byte	0x128
	.4byte	0x1ce
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x129
	.4byte	0x1ce
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x12a
	.4byte	0x1ce
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x9
	.2byte	0x12b
	.4byte	0x12e
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x9
	.2byte	0x12c
	.4byte	0x12e
	.byte	0x15
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x12d
	.4byte	0x12e
	.byte	0x16
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x12f
	.4byte	0x25
	.byte	0x18
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x131
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x132
	.4byte	0x25
	.byte	0x20
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x134
	.4byte	0x771
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x135
	.4byte	0x771
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x136
	.4byte	0x771
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x137
	.4byte	0x771
	.byte	0x48
	.uleb128 0x11
	.string	"tex"
	.byte	0x9
	.2byte	0x139
	.4byte	0x57
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x13b
	.4byte	0x3a2
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x13d
	.4byte	0x12e
	.byte	0x68
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x13e
	.4byte	0x12e
	.byte	0x69
	.byte	0
	.uleb128 0x12
	.4byte	0x25
	.4byte	0x781
	.uleb128 0x13
	.4byte	0xbf
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x13f
	.4byte	0x645
	.uleb128 0x19
	.4byte	.LASF182
	.byte	0x1
	.byte	0xc
	.4byte	0x123
	.byte	0x1
	.4byte	0x7a9
	.uleb128 0x1a
	.4byte	.LASF183
	.byte	0x1
	.byte	0xc
	.4byte	0x25
	.byte	0
	.uleb128 0x1b
	.4byte	0x78d
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e6
	.uleb128 0x1c
	.4byte	0x79d
	.4byte	.LLST0
	.uleb128 0x1d
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x7dc
	.uleb128 0x1c
	.4byte	0x79d
	.4byte	.LLST1
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL11
	.4byte	0x1136
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF184
	.byte	0x1
	.byte	0x1c
	.4byte	0xc6
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbab
	.uleb128 0x20
	.4byte	.LASF185
	.byte	0x1
	.byte	0x1c
	.4byte	0xd6
	.4byte	.LLST2
	.uleb128 0x21
	.4byte	.LVL16
	.4byte	0x1151
	.4byte	0x82b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0x1151
	.4byte	0x848
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x21
	.4byte	.LVL18
	.4byte	0x1151
	.4byte	0x865
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x21
	.4byte	.LVL19
	.4byte	0x1151
	.4byte	0x882
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x21
	.4byte	.LVL20
	.4byte	0x1151
	.4byte	0x89f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x21
	.4byte	.LVL21
	.4byte	0x1151
	.4byte	0x8bc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x21
	.4byte	.LVL22
	.4byte	0x1151
	.4byte	0x8d9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x21
	.4byte	.LVL23
	.4byte	0x1151
	.4byte	0x8f6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x21
	.4byte	.LVL24
	.4byte	0x1151
	.4byte	0x913
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0x1151
	.4byte	0x930
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x21
	.4byte	.LVL26
	.4byte	0x1151
	.4byte	0x94d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x21
	.4byte	.LVL27
	.4byte	0x1151
	.4byte	0x96a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x21
	.4byte	.LVL28
	.4byte	0x1151
	.4byte	0x987
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x21
	.4byte	.LVL29
	.4byte	0x1151
	.4byte	0x9a4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x21
	.4byte	.LVL30
	.4byte	0x1151
	.4byte	0x9c1
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x21
	.4byte	.LVL31
	.4byte	0x1151
	.4byte	0x9de
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.uleb128 0x21
	.4byte	.LVL32
	.4byte	0x1151
	.4byte	0x9fb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x21
	.4byte	.LVL33
	.4byte	0x1151
	.4byte	0xa18
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x21
	.4byte	.LVL34
	.4byte	0x1151
	.4byte	0xa35
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x21
	.4byte	.LVL35
	.4byte	0x1151
	.4byte	0xa52
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.uleb128 0x21
	.4byte	.LVL36
	.4byte	0x1151
	.4byte	0xa6f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.uleb128 0x21
	.4byte	.LVL37
	.4byte	0x1151
	.4byte	0xa8c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x21
	.4byte	.LVL38
	.4byte	0x1151
	.4byte	0xaa9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x21
	.4byte	.LVL39
	.4byte	0x1151
	.4byte	0xac6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.uleb128 0x21
	.4byte	.LVL40
	.4byte	0x1151
	.4byte	0xae3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.uleb128 0x21
	.4byte	.LVL41
	.4byte	0x1151
	.4byte	0xb00
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.uleb128 0x21
	.4byte	.LVL42
	.4byte	0x1151
	.4byte	0xb1d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x21
	.4byte	.LVL43
	.4byte	0x1151
	.4byte	0xb3a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x21
	.4byte	.LVL44
	.4byte	0x1151
	.4byte	0xb57
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.uleb128 0x21
	.4byte	.LVL45
	.4byte	0x1151
	.4byte	0xb74
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL46
	.4byte	0x1151
	.4byte	0xb91
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL47
	.4byte	0x1151
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x69
	.4byte	0xbbb
	.uleb128 0x13
	.4byte	0xbf
	.byte	0x5
	.byte	0
	.uleb128 0x24
	.4byte	.LASF110
	.byte	0x1
	.byte	0x6
	.4byte	0xbcc
	.uleb128 0x5
	.byte	0x3
	.4byte	vender
	.uleb128 0x7
	.4byte	0xbab
	.uleb128 0x12
	.4byte	0x69
	.4byte	0xbe1
	.uleb128 0x13
	.4byte	0xbf
	.byte	0x2
	.byte	0
	.uleb128 0x24
	.4byte	.LASF111
	.byte	0x1
	.byte	0x7
	.4byte	0xbf2
	.uleb128 0x5
	.byte	0x3
	.4byte	renderer
	.uleb128 0x7
	.4byte	0xbd1
	.uleb128 0x12
	.4byte	0x69
	.4byte	0xc07
	.uleb128 0x13
	.4byte	0xbf
	.byte	0x3
	.byte	0
	.uleb128 0x24
	.4byte	.LASF112
	.byte	0x1
	.byte	0x8
	.4byte	0xc18
	.uleb128 0x5
	.byte	0x3
	.4byte	version
	.uleb128 0x7
	.4byte	0xbf7
	.uleb128 0x12
	.4byte	0x69
	.4byte	0xc2d
	.uleb128 0x13
	.4byte	0xbf
	.byte	0xa6
	.byte	0
	.uleb128 0x24
	.4byte	.LASF113
	.byte	0x1
	.byte	0x9
	.4byte	0xc3e
	.uleb128 0x5
	.byte	0x3
	.4byte	extensions
	.uleb128 0x7
	.4byte	0xc1d
	.uleb128 0x25
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x548
	.4byte	0xc4f
	.uleb128 0x7
	.4byte	0xc54
	.uleb128 0x6
	.byte	0x4
	.4byte	0x28d
	.uleb128 0x26
	.4byte	.LASF115
	.byte	0x9
	.byte	0x3c
	.4byte	0x3a2
	.uleb128 0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x26
	.4byte	.LASF116
	.byte	0x9
	.byte	0x3d
	.4byte	0x316
	.uleb128 0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0x12
	.4byte	0x366
	.4byte	0xc8c
	.uleb128 0x13
	.4byte	0xbf
	.byte	0x7
	.byte	0
	.uleb128 0x26
	.4byte	.LASF117
	.byte	0x9
	.byte	0x3e
	.4byte	0xc7c
	.uleb128 0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x9
	.byte	0x4a
	.4byte	0x3f4
	.uleb128 0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x26
	.4byte	.LASF119
	.byte	0x9
	.byte	0x4b
	.4byte	0x3f4
	.uleb128 0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0x12
	.4byte	0x3f4
	.4byte	0xccf
	.uleb128 0x13
	.4byte	0xbf
	.byte	0x7
	.byte	0
	.uleb128 0x27
	.string	"tex"
	.byte	0x9
	.byte	0x4c
	.4byte	0xcbf
	.uleb128 0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x26
	.4byte	.LASF106
	.byte	0x9
	.byte	0x4d
	.4byte	0x3f4
	.uleb128 0x5
	.byte	0x3
	.4byte	color
	.uleb128 0x12
	.4byte	0x316
	.4byte	0xd02
	.uleb128 0x28
	.4byte	0xbf
	.2byte	0x3e7
	.byte	0
	.uleb128 0x26
	.4byte	.LASF120
	.byte	0x9
	.byte	0x4f
	.4byte	0xcf1
	.uleb128 0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x26
	.4byte	.LASF121
	.byte	0x9
	.byte	0x50
	.4byte	0xcf1
	.uleb128 0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0x12
	.4byte	0x366
	.4byte	0xd3b
	.uleb128 0x13
	.4byte	0xbf
	.byte	0x7
	.uleb128 0x28
	.4byte	0xbf
	.2byte	0x3e7
	.byte	0
	.uleb128 0x26
	.4byte	.LASF122
	.byte	0x9
	.byte	0x51
	.4byte	0xd24
	.uleb128 0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0x12
	.4byte	0x3a2
	.4byte	0xd5d
	.uleb128 0x28
	.4byte	0xbf
	.2byte	0x3e7
	.byte	0
	.uleb128 0x26
	.4byte	.LASF123
	.byte	0x9
	.byte	0x52
	.4byte	0xd4c
	.uleb128 0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x26
	.4byte	.LASF124
	.byte	0x9
	.byte	0x5c
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x26
	.4byte	.LASF125
	.byte	0x9
	.byte	0x5d
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x26
	.4byte	.LASF126
	.byte	0x9
	.byte	0x5e
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x26
	.4byte	.LASF127
	.byte	0x9
	.byte	0x60
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x26
	.4byte	.LASF128
	.byte	0x9
	.byte	0x61
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x26
	.4byte	.LASF129
	.byte	0x9
	.byte	0x65
	.4byte	0x12e
	.uleb128 0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x26
	.4byte	.LASF130
	.byte	0x9
	.byte	0x66
	.4byte	0x12e
	.uleb128 0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x26
	.4byte	.LASF131
	.byte	0x9
	.byte	0x67
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x26
	.4byte	.LASF132
	.byte	0x9
	.byte	0x68
	.4byte	0x91
	.uleb128 0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x26
	.4byte	.LASF133
	.byte	0x9
	.byte	0x74
	.4byte	0x43c
	.uleb128 0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x26
	.4byte	.LASF134
	.byte	0x9
	.byte	0x75
	.4byte	0x43c
	.uleb128 0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0x12
	.4byte	0x43c
	.4byte	0xe39
	.uleb128 0x13
	.4byte	0xbf
	.byte	0x7
	.byte	0
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x9
	.byte	0x76
	.4byte	0xe29
	.uleb128 0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x26
	.4byte	.LASF136
	.byte	0x9
	.byte	0x77
	.4byte	0xe5b
	.uleb128 0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x6
	.byte	0x4
	.4byte	0x43c
	.uleb128 0x26
	.4byte	.LASF137
	.byte	0x9
	.byte	0x78
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0x12
	.4byte	0x4e4
	.4byte	0xe82
	.uleb128 0x13
	.4byte	0xbf
	.byte	0x7
	.byte	0
	.uleb128 0x26
	.4byte	.LASF138
	.byte	0x9
	.byte	0x93
	.4byte	0xe72
	.uleb128 0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x26
	.4byte	.LASF139
	.byte	0x9
	.byte	0x96
	.4byte	0x3a2
	.uleb128 0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x26
	.4byte	.LASF140
	.byte	0x9
	.byte	0xa3
	.4byte	0x538
	.uleb128 0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x26
	.4byte	.LASF141
	.byte	0x9
	.byte	0xa6
	.4byte	0x1e9
	.uleb128 0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x26
	.4byte	.LASF142
	.byte	0x9
	.byte	0xa7
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x26
	.4byte	.LASF143
	.byte	0x9
	.byte	0xab
	.4byte	0x1e9
	.uleb128 0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x26
	.4byte	.LASF144
	.byte	0x9
	.byte	0xb2
	.4byte	0x12e
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x26
	.4byte	.LASF145
	.byte	0x9
	.byte	0xb3
	.4byte	0x12e
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x26
	.4byte	.LASF146
	.byte	0x9
	.byte	0xb4
	.4byte	0x12e
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x26
	.4byte	.LASF147
	.byte	0x9
	.byte	0xb5
	.4byte	0x12e
	.uleb128 0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x26
	.4byte	.LASF148
	.byte	0x9
	.byte	0xb7
	.4byte	0x12e
	.uleb128 0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x26
	.4byte	.LASF149
	.byte	0x9
	.byte	0xc0
	.4byte	0x562
	.uleb128 0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x26
	.4byte	.LASF150
	.byte	0x9
	.byte	0xea
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x26
	.4byte	.LASF151
	.byte	0x9
	.byte	0xeb
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x26
	.4byte	.LASF152
	.byte	0x9
	.byte	0xec
	.4byte	0x37
	.uleb128 0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x26
	.4byte	.LASF153
	.byte	0x9
	.byte	0xed
	.4byte	0x5a6
	.uleb128 0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x26
	.4byte	.LASF154
	.byte	0x9
	.byte	0xee
	.4byte	0x5a6
	.uleb128 0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x26
	.4byte	.LASF155
	.byte	0x9
	.byte	0xef
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x26
	.4byte	.LASF156
	.byte	0x9
	.byte	0xf0
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x26
	.4byte	.LASF157
	.byte	0x9
	.byte	0xf2
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x26
	.4byte	.LASF158
	.byte	0x9
	.byte	0xf3
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x26
	.4byte	.LASF159
	.byte	0x9
	.byte	0xff
	.4byte	0x606
	.uleb128 0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x29
	.4byte	.LASF160
	.byte	0x9
	.2byte	0x100
	.4byte	0x606
	.uleb128 0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0x12
	.4byte	0x1e9
	.4byte	0x101a
	.uleb128 0x13
	.4byte	0xbf
	.byte	0x3
	.byte	0
	.uleb128 0x29
	.4byte	.LASF161
	.byte	0x9
	.2byte	0x101
	.4byte	0x100a
	.uleb128 0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x9
	.2byte	0x107
	.4byte	0x1e9
	.uleb128 0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x29
	.4byte	.LASF163
	.byte	0x9
	.2byte	0x108
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x29
	.4byte	.LASF164
	.byte	0x9
	.2byte	0x10b
	.4byte	0x2d3
	.uleb128 0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0x12
	.4byte	0x639
	.4byte	0x1072
	.uleb128 0x13
	.4byte	0xbf
	.byte	0x3
	.byte	0
	.uleb128 0x29
	.4byte	.LASF165
	.byte	0x9
	.2byte	0x11e
	.4byte	0x1062
	.uleb128 0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x29
	.4byte	.LASF166
	.byte	0x9
	.2byte	0x143
	.4byte	0x1e9
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x29
	.4byte	.LASF167
	.byte	0x9
	.2byte	0x144
	.4byte	0x12e
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x29
	.4byte	.LASF168
	.byte	0x9
	.2byte	0x145
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x29
	.4byte	.LASF169
	.byte	0x9
	.2byte	0x146
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x29
	.4byte	.LASF170
	.byte	0x9
	.2byte	0x147
	.4byte	0x1ce
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x29
	.4byte	.LASF171
	.byte	0x9
	.2byte	0x148
	.4byte	0x2d3
	.uleb128 0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0x12
	.4byte	0x781
	.4byte	0x1100
	.uleb128 0x13
	.4byte	0xbf
	.byte	0x7
	.byte	0
	.uleb128 0x29
	.4byte	.LASF172
	.byte	0x9
	.2byte	0x14a
	.4byte	0x10f0
	.uleb128 0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x29
	.4byte	.LASF173
	.byte	0x9
	.2byte	0x14f
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x9
	.2byte	0x152
	.4byte	0x7b
	.uleb128 0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x2a
	.4byte	.LASF175
	.byte	0x9
	.byte	0xc7
	.4byte	0x1151
	.uleb128 0x2b
	.4byte	0x25
	.uleb128 0x2b
	.4byte	0xd6
	.uleb128 0x2b
	.4byte	0x62
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF176
	.byte	0xb
	.byte	0x1c
	.4byte	0x62
	.uleb128 0x2b
	.4byte	0xd6
	.uleb128 0x2b
	.4byte	0xd6
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x20
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
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
	.4byte	.LVL9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE65-.Ltext0
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF85:
	.string	"scale"
.LASF103:
	.string	"CargOp"
.LASF176:
	.string	"strcmp"
.LASF153:
	.string	"scissorInfo"
.LASF13:
	.string	"size_t"
.LASF108:
	.string	"alpha_scale"
.LASF136:
	.string	"curmtx"
.LASF166:
	.string	"fog_enable"
.LASF160:
	.string	"unpack"
.LASF139:
	.string	"globAmbient"
.LASF90:
	.string	"max_filter"
.LASF47:
	.string	"type"
.LASF9:
	.string	"GLuint"
.LASF184:
	.string	"_glGetProcAddress"
.LASF79:
	.string	"row_length"
.LASF16:
	.string	"long long unsigned int"
.LASF135:
	.string	"texture_stack"
.LASF55:
	.string	"spotDir"
.LASF71:
	.string	"GL_STATE_NEWLIST"
.LASF173:
	.string	"read_mode"
.LASF69:
	.string	"GL_STATE_NONE"
.LASF129:
	.string	"depthtestenabled"
.LASF34:
	.string	"_vecf"
.LASF22:
	.string	"int16_t"
.LASF15:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF30:
	.string	"vf32"
.LASF37:
	.string	"_gx_litobj"
.LASF46:
	.string	"size"
.LASF131:
	.string	"depthfunction"
.LASF116:
	.string	"_tempnormalelement"
.LASF180:
	.string	"_wgpipe"
.LASF39:
	.string	"Vector"
.LASF68:
	.string	"Material"
.LASF26:
	.string	"vu16"
.LASF87:
	.string	"ColorTrans"
.LASF14:
	.string	"long int"
.LASF66:
	.string	"emissive"
.LASF40:
	.string	"VertexElement"
.LASF147:
	.string	"blend_op"
.LASF121:
	.string	"_vertexelements"
.LASF178:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/gl_extensions.c"
.LASF23:
	.string	"uint16_t"
.LASF168:
	.string	"fog_startz"
.LASF12:
	.string	"double"
.LASF91:
	.string	"wrap_s"
.LASF92:
	.string	"wrap_t"
.LASF146:
	.string	"blend_dst"
.LASF10:
	.string	"GLsizei"
.LASF63:
	.string	"quad_t"
.LASF134:
	.string	"projection_stack"
.LASF84:
	.string	"_trans"
.LASF6:
	.string	"GLint"
.LASF29:
	.string	"vs32"
.LASF65:
	.string	"_mat"
.LASF64:
	.string	"LightObj"
.LASF167:
	.string	"fog_mode"
.LASF73:
	.string	"boxInfo"
.LASF62:
	.string	"linear"
.LASF2:
	.string	"unsigned int"
.LASF124:
	.string	"vert_i"
.LASF185:
	.string	"proc"
.LASF113:
	.string	"extensions"
.LASF42:
	.string	"GXColorf"
.LASF18:
	.string	"long unsigned int"
.LASF53:
	.string	"_light"
.LASF93:
	.string	"minlod"
.LASF61:
	.string	"constant"
.LASF133:
	.string	"model_stack"
.LASF67:
	.string	"shininess"
.LASF183:
	.string	"name"
.LASF145:
	.string	"blend_src"
.LASF97:
	.string	"edgelod"
.LASF74:
	.string	"width"
.LASF175:
	.string	"_glSetErrorEx"
.LASF123:
	.string	"_colorelements"
.LASF130:
	.string	"depthupdate"
.LASF8:
	.string	"short unsigned int"
.LASF149:
	.string	"cur_state"
.LASF48:
	.string	"VertexArray"
.LASF72:
	.string	"glState"
.LASF70:
	.string	"GL_STATE_BEGIN"
.LASF169:
	.string	"fog_endz"
.LASF7:
	.string	"GLubyte"
.LASF164:
	.string	"_clearcolor"
.LASF27:
	.string	"vu32"
.LASF5:
	.string	"short int"
.LASF125:
	.string	"_type"
.LASF174:
	.string	"call_offset"
.LASF154:
	.string	"viewPort"
.LASF142:
	.string	"gxwinding"
.LASF161:
	.string	"color_write_mask"
.LASF181:
	.string	"_glState"
.LASF112:
	.string	"version"
.LASF1:
	.string	"GLboolean"
.LASF122:
	.string	"_texcoordelements"
.LASF17:
	.string	"sizetype"
.LASF118:
	.string	"norm"
.LASF81:
	.string	"skip_pixels"
.LASF156:
	.string	"normFar"
.LASF52:
	.string	"Stack"
.LASF28:
	.string	"vs16"
.LASF43:
	.string	"_array"
.LASF59:
	.string	"spotExponent"
.LASF109:
	.string	"glTexEnvSet"
.LASF137:
	.string	"cur_mode"
.LASF171:
	.string	"fog_color"
.LASF83:
	.string	"pixelStore"
.LASF96:
	.string	"biasclamp"
.LASF50:
	.string	"begin"
.LASF157:
	.string	"line_width"
.LASF77:
	.string	"swap"
.LASF170:
	.string	"fog_density"
.LASF11:
	.string	"float"
.LASF182:
	.string	"glGetString"
.LASF163:
	.string	"copy_material"
.LASF56:
	.string	"ambient"
.LASF155:
	.string	"normNear"
.LASF82:
	.string	"alignment"
.LASF38:
	.string	"GXLightObj"
.LASF33:
	.string	"WGPipe"
.LASF31:
	.string	"_Bool"
.LASF24:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF177:
	.string	"GNU C 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF143:
	.string	"lighting"
.LASF148:
	.string	"cull_mode"
.LASF114:
	.string	"wgPipe"
.LASF78:
	.string	"lsb_first"
.LASF51:
	.string	"elem_size"
.LASF151:
	.string	"fb_max_width"
.LASF86:
	.string	"bias"
.LASF94:
	.string	"maxlod"
.LASF95:
	.string	"lodbias"
.LASF152:
	.string	"scissor_test"
.LASF158:
	.string	"point_size"
.LASF104:
	.string	"Aarg"
.LASF179:
	.string	"D:\\\\devkitPro\\\\portlibs\\\\thirdparty\\\\gl2gx\\\\libogc\\\\wii_release"
.LASF132:
	.string	"_cleardepth"
.LASF45:
	.string	"stride"
.LASF41:
	.string	"TexCoordElement"
.LASF105:
	.string	"AargOp"
.LASF119:
	.string	"vert"
.LASF106:
	.string	"color"
.LASF19:
	.string	"char"
.LASF102:
	.string	"Carg"
.LASF99:
	.string	"mode"
.LASF58:
	.string	"specular"
.LASF0:
	.string	"GLenum"
.LASF35:
	.string	"_gx_color"
.LASF150:
	.string	"fb_max_height"
.LASF21:
	.string	"uint8_t"
.LASF98:
	.string	"maxaniso"
.LASF140:
	.string	"curmat"
.LASF115:
	.string	"_tempcolorelement"
.LASF44:
	.string	"enable"
.LASF54:
	.string	"enabled"
.LASF162:
	.string	"copy_mat_enabled"
.LASF20:
	.string	"int8_t"
.LASF159:
	.string	"pack"
.LASF101:
	.string	"comAlpha"
.LASF107:
	.string	"rgb_scale"
.LASF117:
	.string	"_temptexcoordelement"
.LASF165:
	.string	"Trans"
.LASF25:
	.string	"uint32_t"
.LASF88:
	.string	"_tex_env"
.LASF138:
	.string	"lights"
.LASF89:
	.string	"min_filter"
.LASF110:
	.string	"vender"
.LASF120:
	.string	"_normalelements"
.LASF127:
	.string	"cur_tex"
.LASF57:
	.string	"diffuse"
.LASF144:
	.string	"blend_type"
.LASF111:
	.string	"renderer"
.LASF60:
	.string	"spotCutoff"
.LASF100:
	.string	"comRGB"
.LASF36:
	.string	"GXColor"
.LASF126:
	.string	"_GLtype"
.LASF49:
	.string	"_stack"
.LASF172:
	.string	"glTexEnvs"
.LASF75:
	.string	"height"
.LASF32:
	.string	"guVector"
.LASF76:
	.string	"_pixelStore"
.LASF128:
	.string	"cur_tex_client"
.LASF141:
	.string	"gxcullfaceanabled"
.LASF80:
	.string	"skip_rows"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
