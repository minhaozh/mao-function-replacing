	.arch armv8-a
	.file	"readmin.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"r"
	.align	3
.LC1:
	.string	"%ld %ld"
	.align	3
.LC2:
	.string	"src/readmin.c"
	.align	3
.LC3:
	.string	"net->max_new_m >= 3"
	.align	3
.LC4:
	.string	"read_min(): not enough memory"
	.align	3
.LC5:
	.string	"%ld %ld %ld"
	.text
	.align	2
	.global	read_min
	.type	read_min, %function
read_min:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -320]!
	.cfi_def_cfa_offset 320
	.cfi_offset 29, -320
	.cfi_offset 30, -312
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -304
	str	x0, [sp, 40]
	str	xzr, [sp, 288]
	str	xzr, [sp, 304]
	ldr	x2, [sp, 40]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	fopen
	str	x0, [sp, 288]
	ldr	x0, [sp, 288]
	cmp	x0, 0
	bne	.L2
	mov	x0, -1
	b	.L29
.L2:
	add	x0, sp, 72
	ldr	x2, [sp, 288]
	mov	w1, 200
	bl	fgets
	add	x1, sp, 56
	add	x0, sp, 64
	add	x4, sp, 72
	mov	x3, x1
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x4
	bl	__isoc99_sscanf
	cmp	w0, 2
	beq	.L4
	mov	x0, -1
	b	.L29
.L4:
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 40]
	str	x1, [x0, 408]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 40]
	str	x1, [x0, 432]
	ldr	x0, [sp, 64]
	lsl	x0, x0, 1
	add	x1, x0, 1
	ldr	x0, [sp, 40]
	str	x1, [x0, 400]
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x1, x0, x1
	ldr	x0, [sp, 56]
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 424]
	ldr	x0, [sp, 40]
	mov	x1, 4000
	str	x1, [x0, 640]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 424]
	sub	x0, x0, #1
	mov	x1, 63439
	movk	x1, 0xe353, lsl 16
	movk	x1, 0x9ba5, lsl 32
	movk	x1, 0x20c4, lsl 48
	smulh	x1, x0, x1
	asr	x1, x1, 9
	asr	x0, x0, 63
	sub	x0, x1, x0
	add	x1, x0, 1
	ldr	x0, [sp, 40]
	str	x1, [x0, 624]
	ldr	x0, [sp, 40]
	ldr	x2, [x0, 424]
	mov	x0, 63439
	movk	x0, 0xe353, lsl 16
	movk	x0, 0x9ba5, lsl 32
	movk	x0, 0x20c4, lsl 48
	smulh	x0, x2, x0
	asr	x1, x0, 9
	asr	x0, x2, 63
	sub	x1, x1, x0
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 5
	sub	x1, x2, x0
	cmp	x1, 0
	beq	.L5
	ldr	x0, [sp, 40]
	ldr	x3, [x0, 624]
	ldr	x0, [sp, 40]
	ldr	x2, [x0, 424]
	mov	x0, 63439
	movk	x0, 0xe353, lsl 16
	movk	x0, 0x9ba5, lsl 32
	movk	x0, 0x20c4, lsl 48
	smulh	x0, x2, x0
	asr	x1, x0, 9
	asr	x0, x2, 63
	sub	x1, x1, x0
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 5
	sub	x1, x2, x0
	mov	x0, 4000
	sub	x0, x0, x1
	sub	x1, x3, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 632]
	b	.L7
.L5:
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 624]
	ldr	x0, [sp, 40]
	str	x1, [x0, 632]
	b	.L7
.L8:
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 624]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 632]
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 632]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 640]
	sub	x1, x0, #1
	ldr	x0, [sp, 40]
	str	x1, [x0, 640]
.L7:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 632]
	cmp	x0, 0
	blt	.L8
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 408]
	mov	x0, 15000
	cmp	x1, x0
	bgt	.L9
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 424]
	ldr	x0, [sp, 40]
	str	x1, [x0, 416]
	ldr	x0, [sp, 40]
	mov	x1, 19264
	movk	x1, 0x4c, lsl 16
	str	x1, [x0, 456]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 416]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 424]
	sub	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 448]
	b	.L10
.L9:
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 424]
	mov	x0, 19263
	movk	x0, 0x4c, lsl 16
	add	x0, x1, x0
	ldr	x1, [sp, 40]
	ldr	d0, [x1, 424]
	scvtf	d1, d0
	fmov	d0, 1.25e+0
	fmul	d0, d1, d0
	fcvtzs	d0, d0
	scvtf	d1, d0
	fmov	d0, 1.25e+0
	fmul	d0, d1, d0
	fcvtzs	x1, d0
	cmp	x0, x1
	blt	.L11
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 424]
	mov	x0, 19264
	movk	x0, 0x4c, lsl 16
	add	x0, x1, x0
	fmov	d0, x0
	b	.L12
.L11:
	ldr	x0, [sp, 40]
	ldr	d0, [x0, 424]
	scvtf	d1, d0
	fmov	d0, 1.25e+0
	fmul	d0, d1, d0
	fcvtzs	d0, d0
	scvtf	d1, d0
	fmov	d0, 1.25e+0
	fmul	d0, d1, d0
	fcvtzs	d0, d0
.L12:
	ldr	x0, [sp, 40]
	str	d0, [x0, 416]
	ldr	x0, [sp, 40]
	mov	x1, 64160
	movk	x1, 0x1b8, lsl 16
	str	x1, [x0, 456]
.L10:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 456]
	cmp	x0, 2
	bgt	.L13
	adrp	x0, __PRETTY_FUNCTION__.6425
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.6425
	mov	w2, 84
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L13:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 400]
	add	x0, x0, 1
	mov	x1, 104
	bl	calloc
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 552]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 400]
	mov	x1, 72
	bl	calloc
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 592]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 416]
	mov	x1, 72
	bl	calloc
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 584]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 416]
	mov	x1, 72
	bl	calloc
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 568]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 552]
	cmp	x0, 0
	beq	.L14
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 568]
	cmp	x0, 0
	beq	.L14
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 592]
	cmp	x0, 0
	beq	.L14
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 584]
	cmp	x0, 0
	bne	.L15
.L14:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
	ldr	x0, [sp, 40]
	bl	getfree
	mov	x0, -1
	b	.L29
.L15:
	ldr	x0, [sp, 40]
	ldr	x2, [x0, 552]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 400]
	add	x1, x0, 1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 560]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 568]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 424]
	mov	x2, x0
	mov	x0, x2
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 576]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 592]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 400]
	mov	x2, x0
	mov	x0, x2
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 600]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 552]
	str	x0, [sp, 280]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 568]
	str	x0, [sp, 296]
	mov	x0, 1
	str	x0, [sp, 312]
	b	.L16
.L19:
	add	x0, sp, 72
	ldr	x2, [sp, 288]
	mov	w1, 200
	bl	fgets
	add	x1, sp, 56
	add	x0, sp, 64
	add	x4, sp, 72
	mov	x3, x1
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x4
	bl	__isoc99_sscanf
	cmp	w0, 2
	bne	.L17
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	ble	.L18
.L17:
	mov	x0, -1
	b	.L29
.L18:
	ldr	x0, [sp, 312]
	neg	w2, w0
	ldr	x1, [sp, 312]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 280]
	add	x0, x0, x1
	mov	w1, w2
	str	w1, [x0, 96]
	ldr	x1, [sp, 312]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 280]
	add	x0, x0, x1
	mov	x1, -1
	str	x1, [x0, 80]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 408]
	ldr	x0, [sp, 312]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 280]
	add	x0, x0, x1
	ldr	x1, [sp, 312]
	str	w1, [x0, 96]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 408]
	ldr	x0, [sp, 312]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 280]
	add	x0, x0, x1
	mov	x1, 1
	str	x1, [x0, 80]
	ldr	x2, [sp, 64]
	ldr	x1, [sp, 312]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 280]
	add	x0, x0, x1
	mov	w1, w2
	str	w1, [x0, 100]
	ldr	x2, [sp, 56]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 408]
	ldr	x0, [sp, 312]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 280]
	add	x0, x0, x1
	mov	w1, w2
	str	w1, [x0, 100]
	ldr	x0, [sp, 304]
	mov	w1, w0
	ldr	x0, [sp, 296]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 400]
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 280]
	add	x1, x0, x1
	ldr	x0, [sp, 296]
	str	x1, [x0, 16]
	ldr	x1, [sp, 312]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 280]
	add	x1, x0, x1
	ldr	x0, [sp, 296]
	str	x1, [x0, 24]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 528]
	add	x1, x0, 15
	ldr	x0, [sp, 296]
	str	x1, [x0, 8]
	ldr	x0, [sp, 296]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 296]
	str	x1, [x0, 64]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 16]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 296]
	str	x1, [x0, 40]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 16]
	ldr	x1, [sp, 296]
	str	x1, [x0, 56]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 24]
	ldr	x1, [x0, 64]
	ldr	x0, [sp, 296]
	str	x1, [x0, 48]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 24]
	ldr	x1, [sp, 296]
	str	x1, [x0, 64]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 568]
	ldr	x0, [sp, 304]
	add	x0, x0, 1
	str	x0, [sp, 304]
	ldr	x1, [sp, 304]
	ldr	x0, [sp, 40]
	bl	getArcPosition
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x19, x0
	str	x0, [sp, 296]
	ldr	x0, [sp, 304]
	mov	w1, w0
	ldr	x0, [sp, 296]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 408]
	ldr	x0, [sp, 312]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 280]
	add	x1, x0, x1
	ldr	x0, [sp, 296]
	str	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 400]
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 280]
	add	x1, x0, x1
	ldr	x0, [sp, 296]
	str	x1, [x0, 24]
	ldr	x0, [sp, 296]
	mov	x1, 15
	str	x1, [x0, 8]
	ldr	x0, [sp, 296]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 296]
	str	x1, [x0, 64]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 16]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 296]
	str	x1, [x0, 40]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 16]
	ldr	x1, [sp, 296]
	str	x1, [x0, 56]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 24]
	ldr	x1, [x0, 64]
	ldr	x0, [sp, 296]
	str	x1, [x0, 48]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 24]
	ldr	x1, [sp, 296]
	str	x1, [x0, 64]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 568]
	ldr	x0, [sp, 304]
	add	x0, x0, 1
	str	x0, [sp, 304]
	ldr	x1, [sp, 304]
	ldr	x0, [sp, 40]
	bl	getArcPosition
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x19, x0
	str	x0, [sp, 296]
	ldr	x0, [sp, 304]
	mov	w1, w0
	ldr	x0, [sp, 296]
	str	w1, [x0]
	ldr	x1, [sp, 312]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 280]
	add	x1, x0, x1
	ldr	x0, [sp, 296]
	str	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 408]
	ldr	x0, [sp, 312]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 280]
	add	x1, x0, x1
	ldr	x0, [sp, 296]
	str	x1, [x0, 24]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 528]
	mov	x2, 38528
	movk	x2, 0x98, lsl 16
	mov	x1, 38528
	movk	x1, 0x98, lsl 16
	cmp	x0, x2
	csel	x0, x0, x1, ge
	lsl	x1, x0, 1
	ldr	x0, [sp, 296]
	str	x1, [x0, 8]
	ldr	x0, [sp, 296]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 296]
	str	x1, [x0, 64]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 16]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 296]
	str	x1, [x0, 40]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 16]
	ldr	x1, [sp, 296]
	str	x1, [x0, 56]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 24]
	ldr	x1, [x0, 64]
	ldr	x0, [sp, 296]
	str	x1, [x0, 48]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 24]
	ldr	x1, [sp, 296]
	str	x1, [x0, 64]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 568]
	ldr	x0, [sp, 304]
	add	x0, x0, 1
	str	x0, [sp, 304]
	ldr	x1, [sp, 304]
	ldr	x0, [sp, 40]
	bl	getArcPosition
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x19, x0
	str	x0, [sp, 296]
	ldr	x0, [sp, 312]
	add	x0, x0, 1
	str	x0, [sp, 312]
.L16:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 408]
	ldr	x1, [sp, 312]
	cmp	x1, x0
	ble	.L19
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 408]
	add	x0, x0, 1
	ldr	x1, [sp, 312]
	cmp	x1, x0
	beq	.L20
	mov	x0, -1
	b	.L29
.L20:
	str	xzr, [sp, 312]
	b	.L21
.L23:
	add	x0, sp, 72
	ldr	x2, [sp, 288]
	mov	w1, 200
	bl	fgets
	add	x2, sp, 48
	add	x1, sp, 56
	add	x0, sp, 64
	add	x5, sp, 72
	mov	x4, x2
	mov	x3, x1
	mov	x2, x0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x5
	bl	__isoc99_sscanf
	cmp	w0, 3
	beq	.L22
	mov	x0, -1
	b	.L29
.L22:
	ldr	x0, [sp, 304]
	mov	w1, w0
	ldr	x0, [sp, 296]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 408]
	ldr	x0, [sp, 64]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 280]
	add	x1, x0, x1
	ldr	x0, [sp, 296]
	str	x1, [x0, 16]
	ldr	x0, [sp, 56]
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 280]
	add	x1, x0, x1
	ldr	x0, [sp, 296]
	str	x1, [x0, 24]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 296]
	str	x1, [x0, 64]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 296]
	str	x1, [x0, 8]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 16]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 296]
	str	x1, [x0, 40]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 16]
	ldr	x1, [sp, 296]
	str	x1, [x0, 56]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 24]
	ldr	x1, [x0, 64]
	ldr	x0, [sp, 296]
	str	x1, [x0, 48]
	ldr	x0, [sp, 296]
	ldr	x0, [x0, 24]
	ldr	x1, [sp, 296]
	str	x1, [x0, 64]
	ldr	x0, [sp, 312]
	add	x0, x0, 1
	str	x0, [sp, 312]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 568]
	ldr	x0, [sp, 304]
	add	x0, x0, 1
	str	x0, [sp, 304]
	ldr	x1, [sp, 304]
	ldr	x0, [sp, 40]
	bl	getArcPosition
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x19, x0
	str	x0, [sp, 296]
.L21:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 432]
	ldr	x1, [sp, 312]
	cmp	x1, x0
	blt	.L23
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 576]
	str	x0, [sp, 296]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 576]
	ldr	x1, [sp, 296]
	cmp	x1, x0
	beq	.L24
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 296]
	str	x1, [x0, 576]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 568]
	str	x0, [sp, 296]
	ldr	x0, [sp, 40]
	str	xzr, [x0, 424]
	b	.L25
.L26:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 424]
	add	x1, x0, 1
	ldr	x0, [sp, 40]
	str	x1, [x0, 424]
	ldr	x0, [sp, 296]
	add	x0, x0, 72
	str	x0, [sp, 296]
.L25:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 576]
	ldr	x1, [sp, 296]
	cmp	x1, x0
	bcc	.L26
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 424]
	ldr	x0, [sp, 40]
	str	x1, [x0, 432]
.L24:
	ldr	x0, [sp, 288]
	bl	fclose
	ldr	x0, [sp, 40]
	strb	wzr, [x0, 200]
	mov	x0, 1
	str	x0, [sp, 312]
	b	.L27
.L28:
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 568]
	ldr	x1, [sp, 312]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	sub	x0, x0, #1
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	getArcPosition
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x19, x0
	str	x0, [sp, 296]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 528]
	mov	x2, 38528
	movk	x2, 0x98, lsl 16
	mov	x1, 38528
	movk	x1, 0x98, lsl 16
	cmp	x0, x2
	csel	x1, x0, x1, ge
	mov	x0, 0
	sub	x0, x0, x1
	lsl	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 296]
	str	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 528]
	mov	x2, 38528
	movk	x2, 0x98, lsl 16
	mov	x1, 38528
	movk	x1, 0x98, lsl 16
	cmp	x0, x2
	csel	x1, x0, x1, ge
	mov	x0, 0
	sub	x0, x0, x1
	lsl	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 296]
	str	x1, [x0, 64]
	ldr	x0, [sp, 312]
	add	x0, x0, 1
	str	x0, [sp, 312]
.L27:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 408]
	ldr	x1, [sp, 312]
	cmp	x1, x0
	ble	.L28
	mov	x0, 0
.L29:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 320
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	read_min, .-read_min
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.6425, %object
	.size	__PRETTY_FUNCTION__.6425, 9
__PRETTY_FUNCTION__.6425:
	.string	"read_min"
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
