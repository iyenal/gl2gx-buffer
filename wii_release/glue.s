	.file	"glue.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl __gluNURBSErrorString
	.type	__gluNURBSErrorString, @function
__gluNURBSErrorString:
.LFB0:
	.file 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libutil/glue.c"
	.loc 1 83 0
	.cfi_startproc
.LVL0:
	.loc 1 85 0
	lis 9,.LANCHOR0@ha
	.loc 1 84 0
	slwi 3,3,2
.LVL1:
	.loc 1 85 0
	la 9,.LANCHOR0@l(9)
	lwzx 3,9,3
	blr
	.cfi_endproc
.LFE0:
	.size	__gluNURBSErrorString, .-__gluNURBSErrorString
	.align 2
	.globl __gluTessErrorString
	.type	__gluTessErrorString, @function
__gluTessErrorString:
.LFB1:
	.loc 1 98 0
	.cfi_startproc
.LVL2:
	.loc 1 99 0
	lis 9,.LANCHOR0@ha
	slwi 3,3,2
.LVL3:
	la 9,.LANCHOR0@l(9)
	add 3,9,3
	.loc 1 100 0
	lwz 3,152(3)
	blr
	.cfi_endproc
.LFE1:
	.size	__gluTessErrorString, .-__gluTessErrorString
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	__gluNurbsErrors, @object
	.size	__gluNurbsErrors, 152
__gluNurbsErrors:
	.long	.LC0
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.long	.LC16
	.long	.LC17
	.long	.LC18
	.long	.LC19
	.long	.LC20
	.long	.LC21
	.long	.LC22
	.long	.LC23
	.long	.LC24
	.long	.LC25
	.long	.LC26
	.long	.LC27
	.long	.LC28
	.long	.LC29
	.long	.LC30
	.long	.LC31
	.long	.LC32
	.long	.LC33
	.long	.LC34
	.long	.LC35
	.long	.LC36
	.long	.LC37
	.long	.LC38
	.long	.LC39
	.long	.LC40
	.long	.LC41
	.long	.LC42
	.type	__gluTessErrors, @object
	.size	__gluTessErrors, 28
__gluTessErrors:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	" "
.LC1:
	.string	"gluTessBeginPolygon() must precede a gluTessEndPolygon()"
.LC2:
	.string	"gluTessBeginContour() must precede a gluTessEndContour()"
.LC3:
	.string	"gluTessEndPolygon() must follow a gluTessBeginPolygon()"
.LC4:
	.string	"gluTessEndContour() must follow a gluTessBeginContour()"
.LC5:
	.string	"a coordinate is too large"
.LC6:
	.string	"need combine callback"
.LC7:
	.string	"spline order un-supported"
.LC8:
	.string	"too few knots"
.LC9:
	.string	"valid knot range is empty"
.LC10:
	.string	"decreasing knot sequence knot"
.LC11:
	.string	"knot multiplicity greater than order of spline"
.LC12:
	.string	"gluEndCurve() must follow gluBeginCurve()"
.LC13:
	.string	"gluBeginCurve() must precede gluEndCurve()"
.LC14:
	.string	"missing or extra geometric data"
.LC15:
	.string	"can't draw piecewise linear trimming curves"
.LC16:
	.string	"missing or extra domain data"
.LC17:
	.string	"gluEndTrim() must precede gluEndSurface()"
.LC18:
	.string	"gluBeginSurface() must precede gluEndSurface()"
.LC19:
	.string	"curve of improper type passed as trim curve"
.LC20:
	.string	"gluBeginSurface() must precede gluBeginTrim()"
.LC21:
	.string	"gluEndTrim() must follow gluBeginTrim()"
.LC22:
	.string	"gluBeginTrim() must precede gluEndTrim()"
.LC23:
	.string	"invalid or missing trim curve"
.LC24:
	.string	"gluBeginTrim() must precede gluPwlCurve()"
.LC25:
	.string	"piecewise linear trimming curve referenced twice"
.LC26:
	.string	"piecewise linear trimming curve and nurbs curve mixed"
.LC27:
	.string	"improper usage of trim data type"
.LC28:
	.string	"nurbs curve referenced twice"
.LC29:
	.string	"nurbs curve and piecewise linear trimming curve mixed"
.LC30:
	.string	"nurbs surface referenced twice"
.LC31:
	.string	"invalid property"
.LC32:
	.string	"gluEndSurface() must follow gluBeginSurface()"
.LC33:
	.string	"intersecting or misoriented trim curves"
.LC34:
	.string	"intersecting trim curves"
.LC35:
	.string	"UNUSED"
.LC36:
	.string	"unconnected trim curves"
.LC37:
	.string	"unknown knot error"
.LC38:
	.string	"negative vertex count encountered"
.LC39:
	.string	"negative byte-stride encounteed"
.LC40:
	.string	"unknown type descriptor"
.LC41:
	.string	"null control point reference"
.LC42:
	.string	"duplicate point on piecewise linear trimming curve"
	.section	".text"
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x121
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x1
	.4byte	.LASF17
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.4byte	0x74
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.4byte	0x81
	.uleb128 0x5
	.4byte	0x74
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x52
	.4byte	0x7b
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x52
	.4byte	0x4b
	.4byte	.LLST0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x61
	.4byte	0x7b
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd8
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x61
	.4byte	0x4b
	.4byte	.LLST1
	.byte	0
	.uleb128 0x8
	.4byte	0x6e
	.4byte	0xe8
	.uleb128 0x9
	.4byte	0x60
	.byte	0x25
	.byte	0
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x29
	.4byte	0xf9
	.uleb128 0x5
	.byte	0x3
	.4byte	__gluNurbsErrors
	.uleb128 0x5
	.4byte	0xd8
	.uleb128 0x8
	.4byte	0x6e
	.4byte	0x10e
	.uleb128 0x9
	.4byte	0x60
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x57
	.4byte	0x11f
	.uleb128 0x5
	.byte	0x3
	.4byte	__gluTessErrors
	.uleb128 0x5
	.4byte	0xfe
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE1-.Ltext0
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
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"GNU C 4.8.2 -fpreprocessed -mcall-sysv -mrvl -mcpu=750 -meabi -mhard-float -g -Os -fno-strict-aliasing --param max-inline-insns-single=2000 --param large-function-growth=10000 --param inline-unit-growth=1000"
.LASF9:
	.string	"long unsigned int"
.LASF15:
	.string	"__gluTessErrors"
.LASF7:
	.string	"long long unsigned int"
.LASF12:
	.string	"__gluTessErrorString"
.LASF3:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF1:
	.string	"long int"
.LASF17:
	.string	"D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libutil/glue.c"
.LASF11:
	.string	"__gluNURBSErrorString"
.LASF5:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"errno"
.LASF14:
	.string	"__gluNurbsErrors"
.LASF4:
	.string	"short int"
.LASF8:
	.string	"sizetype"
	.ident	"GCC: (devkitPPC release 27) 4.8.2"
