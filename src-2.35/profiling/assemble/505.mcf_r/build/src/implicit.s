	.arch armv8-a
	.file	"implicit.c"
	.text
	.align	2
	.type	arc_compare, %function
arc_compare:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x1, [x0, 56]
	ldr	x0, [sp]
	ldr	x0, [x0]
	ldr	x0, [x0, 56]
	cmp	x1, x0
	ble	.L2
	mov	w0, 1
	b	.L3
.L2:
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x1, [x0, 56]
	ldr	x0, [sp]
	ldr	x0, [x0]
	ldr	x0, [x0, 56]
	cmp	x1, x0
	bge	.L4
	mov	w0, -1
	b	.L3
.L4:
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L5
	mov	w0, -1
	b	.L3
.L5:
	mov	w0, 1
.L3:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	arc_compare, .-arc_compare
	.align	2
	.global	refreshArcPointers
	.type	refreshArcPointers, %function
refreshArcPointers:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	xzr, [sp, 56]
	b	.L7
.L11:
	ldr	x0, [sp, 40]
	ldr	x2, [x0, 552]
	ldr	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 48]
	cmp	x0, 0
	beq	.L8
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 48]
	ldr	w0, [x0]
	cmp	w0, 0
	blt	.L8
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 48]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldr	x2, [sp, 32]
	mov	x1, x0
	ldr	x0, [sp, 40]
	blr	x2
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x1, x0, x1
	ldr	x0, [sp, 48]
	str	x1, [x0, 48]
.L8:
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 64]
	cmp	x0, 0
	beq	.L9
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 64]
	ldr	w0, [x0]
	cmp	w0, 0
	blt	.L9
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 64]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldr	x2, [sp, 32]
	mov	x1, x0
	ldr	x0, [sp, 40]
	blr	x2
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x1, x0, x1
	ldr	x0, [sp, 48]
	str	x1, [x0, 64]
.L9:
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 56]
	cmp	x0, 0
	beq	.L10
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 56]
	ldr	w0, [x0]
	cmp	w0, 0
	blt	.L10
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 56]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldr	x2, [sp, 32]
	mov	x1, x0
	ldr	x0, [sp, 40]
	blr	x2
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x1, x0, x1
	ldr	x0, [sp, 48]
	str	x1, [x0, 56]
.L10:
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L7:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 400]
	ldr	x1, [sp, 56]
	cmp	x1, x0
	ble	.L11
	mov	x0, 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	refreshArcPointers, .-refreshArcPointers
	.align	2
	.global	refreshPositions
	.type	refreshPositions, %function
refreshPositions:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 584]
	str	x0, [sp, 64]
	ldr	x2, [sp, 64]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	refreshArcPointers
	str	xzr, [sp, 72]
	b	.L14
.L17:
	ldr	x0, [sp, 40]
	ldr	x2, [x0, 568]
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	w0, [x0]
	cmp	w0, 0
	blt	.L19
	ldr	x0, [sp, 56]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldr	x2, [sp, 32]
	mov	x1, x0
	ldr	x0, [sp, 40]
	blr	x2
	str	x0, [sp, 48]
	ldr	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 64]
	add	x0, x0, x1
	ldr	x1, [sp, 56]
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	ldp	x2, x3, [x1, 16]
	stp	x2, x3, [x0, 16]
	ldp	x2, x3, [x1, 32]
	stp	x2, x3, [x0, 32]
	ldp	x2, x3, [x1, 48]
	stp	x2, x3, [x0, 48]
	ldr	x1, [x1, 64]
	str	x1, [x0, 64]
	b	.L16
.L19:
	nop
.L16:
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	str	x0, [sp, 72]
.L14:
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	blt	.L17
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 568]
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 64]
	str	x1, [x0, 568]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 56]
	str	x1, [x0, 584]
	ldr	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 64]
	add	x1, x0, x1
	ldr	x0, [sp, 40]
	str	x1, [x0, 576]
	mov	x0, 0
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	refreshPositions, .-refreshPositions
	.align	2
	.global	marc_arcs
	.type	marc_arcs, %function
marc_arcs:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	xzr, [sp, 112]
	str	xzr, [sp, 104]
	mov	x0, 1
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 72]
	ldr	x0, [sp, 80]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 64]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 408]
	mov	x0, 15000
	cmp	x1, x0
	bgt	.L21
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 448]
	mov	x0, -16960
	movk	x0, 0xfff0, lsl 16
	add	x0, x1, x0
	str	x0, [sp, 120]
	b	.L22
.L21:
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 448]
	mov	x0, -2304
	movk	x0, 0xffc2, lsl 16
	add	x0, x1, x0
	str	x0, [sp, 120]
.L22:
	ldr	x0, [sp, 32]
	str	xzr, [x0]
	str	xzr, [sp, 88]
	b	.L23
.L24:
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	x0, [x0]
	add	x1, x1, x0
	ldr	x0, [sp, 32]
	str	x1, [x0]
	ldr	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x1, x1, x0
	ldr	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	str	xzr, [x0]
	ldr	x0, [sp, 88]
	add	x0, x0, 1
	str	x0, [sp, 88]
.L23:
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 80]
	cmp	x1, x0
	blt	.L24
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 424]
	str	x0, [sp, 96]
	b	.L25
.L33:
	ldr	x0, [sp, 64]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x1, x0
	bge	.L26
	ldr	x0, [sp, 72]
	ldr	x0, [x0]
	ldr	x0, [x0]
	str	x0, [sp, 56]
	str	xzr, [sp, 104]
	b	.L27
.L26:
	str	xzr, [sp, 56]
.L27:
	mov	x0, 1
	str	x0, [sp, 88]
	b	.L28
.L31:
	ldr	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	x0, [x0]
	cmp	x1, x0
	bge	.L29
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L30
	ldr	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x1, sp, 56
	bl	arc_compare
	cmp	w0, 0
	bge	.L29
.L30:
	ldr	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	str	x0, [sp, 56]
	ldr	x0, [sp, 88]
	str	x0, [sp, 104]
.L29:
	ldr	x0, [sp, 88]
	add	x0, x0, 1
	str	x0, [sp, 88]
.L28:
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 80]
	cmp	x1, x0
	blt	.L31
	ldr	x0, [sp, 96]
	add	x1, x0, 1
	str	x1, [sp, 96]
	ldr	x1, [sp, 56]
	str	w0, [x1]
	ldr	x0, [sp, 56]
	mov	x1, 1
	str	x1, [x0, 56]
	ldr	x0, [sp, 112]
	add	x0, x0, 1
	str	x0, [sp, 112]
	ldr	x0, [sp, 104]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x0]
	add	x1, x1, 8
	str	x1, [x0]
	ldr	x0, [sp, 104]
	lsl	x0, x0, 3
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	x1, [x0]
	add	x1, x1, 1
	str	x1, [x0]
.L25:
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	ldr	x1, [sp, 112]
	cmp	x1, x0
	bge	.L32
	ldr	x1, [sp, 112]
	ldr	x0, [sp, 120]
	cmp	x1, x0
	blt	.L33
.L32:
	ldr	x0, [sp, 32]
	str	xzr, [x0]
	str	xzr, [sp, 88]
	b	.L34
.L35:
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x2, [sp, 64]
	add	x0, x2, x0
	ldr	x0, [x0]
	add	x1, x1, x0
	ldr	x0, [sp, 32]
	str	x1, [x0]
	ldr	x0, [sp, 88]
	add	x0, x0, 1
	str	x0, [sp, 88]
.L34:
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 80]
	cmp	x1, x0
	blt	.L35
	ldr	x0, [sp, 40]
	mov	x1, 4000
	str	x1, [x0, 640]
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 424]
	add	x0, x1, x0
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
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 424]
	add	x2, x1, x0
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
	beq	.L36
	ldr	x0, [sp, 40]
	ldr	x3, [x0, 624]
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 424]
	add	x2, x1, x0
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
	b	.L38
.L36:
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 624]
	ldr	x0, [sp, 40]
	str	x1, [x0, 632]
	b	.L38
.L39:
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
.L38:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 632]
	cmp	x0, 0
	blt	.L39
	ldr	x0, [sp, 72]
	bl	free
	ldr	x0, [sp, 64]
	bl	free
	nop
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	marc_arcs, .-marc_arcs
	.section	.rodata
	.align	3
.LC0:
	.string	"src/implicit.c"
	.align	3
.LC1:
	.string	"net->max_new_m >= 3"
	.align	3
.LC2:
	.string	"network %s: not enough memory\n"
	.text
	.align	2
	.global	resize_prob
	.type	resize_prob, %function
resize_prob:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 456]
	cmp	x0, 2
	bgt	.L41
	adrp	x0, __PRETTY_FUNCTION__.6490
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.6490
	mov	w2, 214
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L41:
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 416]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 456]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 416]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 448]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 456]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 448]
	ldr	x0, [sp, 24]
	ldr	x2, [x0, 568]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 416]
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	mov	x0, x2
	bl	realloc
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	bne	.L42
	ldr	x0, [sp, 24]
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x0, [x0]
	bl	fflush
	mov	x0, -1
	b	.L43
.L42:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 568]
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 64]
	str	x1, [x0, 568]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 424]
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 64]
	add	x1, x0, x1
	ldr	x0, [sp, 24]
	str	x1, [x0, 576]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 552]
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	str	x0, [sp, 48]
	ldr	x0, [sp, 72]
	add	x0, x0, 104
	str	x0, [sp, 72]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 560]
	str	x0, [sp, 40]
	b	.L44
.L46:
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 48]
	cmp	x0, 0
	beq	.L45
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 24]
	ldr	x1, [sp, 48]
	cmp	x1, x0
	beq	.L45
	ldr	x0, [sp, 72]
	ldr	x1, [x0, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, 36409
	movk	x0, 0x38e3, lsl 16
	movk	x0, 0xe38e, lsl 32
	movk	x0, 0x8e38, lsl 48
	mul	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x0, [sp, 24]
	ldr	x2, [x0, 568]
	ldr	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	ldr	x0, [sp, 72]
	str	x1, [x0, 48]
.L45:
	ldr	x0, [sp, 72]
	add	x0, x0, 104
	str	x0, [sp, 72]
.L44:
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bcc	.L46
	ldr	x0, [sp, 24]
	ldr	x2, [x0, 584]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 416]
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	mov	x0, x2
	bl	realloc
	str	x0, [sp, 64]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 64]
	str	x1, [x0, 584]
	mov	x0, 0
.L43:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	resize_prob, .-resize_prob
	.align	2
	.global	insert_new_arc
	.type	insert_new_arc, %function
insert_new_arc:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	str	x5, [sp, 16]
	str	x6, [sp, 8]
	str	x7, [sp]
	ldr	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 56]
	add	x0, x0, x1
	ldr	x1, [sp, 40]
	str	x1, [x0, 16]
	ldr	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 56]
	add	x0, x0, x1
	ldr	x1, [sp, 32]
	str	x1, [x0, 24]
	ldr	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 56]
	add	x0, x0, x1
	ldr	x1, [sp, 24]
	str	x1, [x0, 64]
	ldr	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 56]
	add	x0, x0, x1
	ldr	x1, [sp, 24]
	str	x1, [x0, 8]
	ldr	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 56]
	add	x0, x0, x1
	ldr	x1, [sp, 16]
	str	x1, [x0, 56]
	ldr	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 56]
	add	x0, x0, x1
	ldr	x1, [sp]
	str	w1, [x0]
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 72]
	b	.L48
.L50:
	ldr	x0, [sp, 72]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x2, 16]
	str	x1, [x0, 16]
	ldr	x0, [sp, 72]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x2, 24]
	str	x1, [x0, 24]
	ldr	x0, [sp, 72]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x2, 8]
	str	x1, [x0, 8]
	ldr	x0, [sp, 72]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x2, 8]
	str	x1, [x0, 64]
	ldr	x0, [sp, 72]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x2, 56]
	str	x1, [x0, 56]
	ldr	x0, [sp, 72]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [x2]
	str	w1, [x0]
	ldr	x0, [sp, 72]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 72]
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [sp, 40]
	str	x1, [x0, 16]
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [sp, 32]
	str	x1, [x0, 24]
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [sp, 24]
	str	x1, [x0, 8]
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [sp, 24]
	str	x1, [x0, 64]
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [sp, 16]
	str	x1, [x0, 56]
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [sp]
	str	w1, [x0]
.L48:
	ldr	x0, [sp, 72]
	cmp	x0, 1
	beq	.L52
	ldr	x0, [sp, 72]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x0, [x0, 56]
	ldr	x1, [sp, 16]
	cmp	x1, x0
	bgt	.L50
	nop
.L52:
	nop
	add	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	insert_new_arc, .-insert_new_arc
	.align	2
	.global	replace_weaker_arc
	.type	replace_weaker_arc, %function
replace_weaker_arc:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	str	x5, [sp, 16]
	str	x6, [sp, 8]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 48]
	str	x1, [x0, 16]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 40]
	str	x1, [x0, 24]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 32]
	str	x1, [x0, 64]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 32]
	str	x1, [x0, 8]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 24]
	str	x1, [x0, 56]
	ldr	x0, [sp, 8]
	mov	w1, w0
	ldr	x0, [sp, 56]
	str	w1, [x0]
	mov	x0, 1
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	add	x0, x0, 72
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 56]
	add	x0, x0, 144
	ldr	x0, [x0, 56]
	cmp	x1, x0
	ble	.L54
	mov	x0, 2
	b	.L55
.L54:
	mov	x0, 3
.L55:
	str	x0, [sp, 64]
	b	.L56
.L58:
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x2, 16]
	str	x1, [x0, 16]
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x2, 24]
	str	x1, [x0, 24]
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x2, 8]
	str	x1, [x0, 8]
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x2, 8]
	str	x1, [x0, 64]
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x2, 56]
	str	x1, [x0, 56]
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 72]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [x2]
	str	w1, [x0]
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [sp, 48]
	str	x1, [x0, 16]
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [sp, 40]
	str	x1, [x0, 24]
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [sp, 32]
	str	x1, [x0, 8]
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [sp, 32]
	str	x1, [x0, 64]
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [sp, 24]
	str	x1, [x0, 56]
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 64]
	str	x0, [sp, 72]
	ldr	x0, [sp, 64]
	lsl	x0, x0, 1
	str	x0, [sp, 64]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bge	.L56
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x2, [x0, 56]
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 56]
	add	x0, x0, x1
	ldr	x0, [x0, 56]
	cmp	x2, x0
	bge	.L56
	ldr	x0, [sp, 64]
	add	x0, x0, 1
	str	x0, [sp, 64]
.L56:
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bgt	.L60
	ldr	x1, [sp, 64]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x0, [x0, 56]
	ldr	x1, [sp, 24]
	cmp	x1, x0
	blt	.L58
	nop
.L60:
	nop
	add	sp, sp, 80
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	replace_weaker_arc, .-replace_weaker_arc
	.align	2
	.global	calculate_max_redcost
	.type	calculate_max_redcost, %function
calculate_max_redcost:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	ldr	x0, [sp, 16]
	str	xzr, [x0]
	str	xzr, [sp, 40]
	b	.L62
.L64:
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	cmp	x1, x0
	ble	.L63
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 16]
	str	x1, [x0]
.L63:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L62:
	ldr	x1, [sp, 40]
	ldr	x0, [sp]
	cmp	x1, x0
	blt	.L64
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	calculate_max_redcost, .-calculate_max_redcost
	.align	2
	.global	switch_arcs
	.type	switch_arcs, %function
switch_arcs:
.LFB10:
	.cfi_startproc
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	w4, [sp, 44]
	str	x5, [sp, 32]
	str	x6, [sp, 24]
	str	x7, [sp, 16]
	str	xzr, [sp, 176]
	str	xzr, [sp, 200]
	ldrsw	x0, [sp, 44]
	str	x0, [sp, 192]
	b	.L66
.L71:
	ldr	x0, [sp, 192]
	lsl	x0, x0, 3
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 24]
	cmp	x2, x0
	csel	x0, x1, x0, le
	str	x0, [sp, 168]
	str	xzr, [sp, 184]
	b	.L67
.L70:
	ldr	x0, [sp, 192]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x2, [x0]
	ldr	x1, [sp, 184]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [sp, 160]
	ldr	x0, [sp, 160]
	ldrsh	w0, [x0, 32]
	cmp	w0, 0
	bne	.L68
	ldr	x0, [sp, 160]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 56]
	cmp	x1, x0
	blt	.L69
	ldr	x0, [sp, 160]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 56]
	cmp	x1, x0
	bne	.L68
	ldr	x0, [sp, 160]
	ldr	w1, [x0]
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L68
.L69:
	ldr	x1, [sp, 160]
	add	x0, sp, 88
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	ldp	x2, x3, [x1, 16]
	stp	x2, x3, [x0, 16]
	ldp	x2, x3, [x1, 32]
	stp	x2, x3, [x0, 32]
	ldp	x2, x3, [x1, 48]
	stp	x2, x3, [x0, 48]
	ldr	x1, [x1, 64]
	str	x1, [x0, 64]
	ldr	x0, [sp, 176]
	add	x0, x0, 1
	str	x0, [sp, 176]
	ldr	x0, [sp, 160]
	ldr	x1, [sp, 48]
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	ldp	x2, x3, [x1, 16]
	stp	x2, x3, [x0, 16]
	ldp	x2, x3, [x1, 32]
	stp	x2, x3, [x0, 32]
	ldp	x2, x3, [x1, 48]
	stp	x2, x3, [x0, 48]
	ldr	x1, [x1, 64]
	str	x1, [x0, 64]
	ldr	x0, [sp, 104]
	ldr	x1, [sp, 112]
	ldr	x2, [sp, 96]
	ldr	x3, [sp, 144]
	ldr	w4, [sp, 88]
	sxtw	x4, w4
	mov	x6, x4
	ldr	x5, [sp, 32]
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 48]
	bl	replace_weaker_arc
.L68:
	ldr	x0, [sp, 184]
	add	x0, x0, 1
	str	x0, [sp, 184]
.L67:
	ldr	x1, [sp, 184]
	ldr	x0, [sp, 168]
	cmp	x1, x0
	blt	.L70
	ldr	x0, [sp, 200]
	add	x0, x0, 1
	str	x0, [sp, 200]
	ldr	x0, [sp, 192]
	add	x0, x0, 1
	ldr	x1, [sp, 16]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 16]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 192]
.L66:
	ldr	x1, [sp, 200]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	blt	.L71
	ldr	x0, [sp, 176]
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	switch_arcs, .-switch_arcs
	.align	2
	.global	price_out_impl
	.type	price_out_impl, %function
price_out_impl:
.LFB11:
	.cfi_startproc
	stp	x29, x30, [sp, -272]!
	.cfi_def_cfa_offset 272
	.cfi_offset 29, -272
	.cfi_offset 30, -264
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -256
	.cfi_offset 20, -248
	.cfi_offset 21, -240
	.cfi_offset 22, -232
	.cfi_offset 23, -224
	.cfi_offset 24, -216
	.cfi_offset 25, -208
	.cfi_offset 26, -200
	.cfi_offset 27, -192
	.cfi_offset 28, -184
	str	x0, [sp, 104]
	str	xzr, [sp, 120]
	str	xzr, [sp, 256]
	mov	x0, 15
	str	x0, [sp, 208]
	mov	w0, 1
	strh	w0, [sp, 238]
	str	xzr, [sp, 224]
	ldr	x0, [sp, 104]
	ldr	x19, [x0, 528]
	mov	x25, 30
	mov	x0, 1
	str	x0, [sp, 200]
	ldr	x0, [sp, 200]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 192]
	ldr	x0, [sp, 200]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 184]
	ldr	x0, [sp, 200]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 176]
	ldr	x0, [sp, 200]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 168]
	ldr	x0, [sp, 208]
	sub	x0, x19, x0
	str	x0, [sp, 96]
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 408]
	mov	x0, 15000
	cmp	x1, x0
	bgt	.L74
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 424]
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 456]
	add	x1, x1, x0
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 416]
	cmp	x1, x0
	ble	.L75
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 408]
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 408]
	mul	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 424]
	add	x1, x1, x0
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 416]
	cmp	x1, x0
	ble	.L75
	mov	x0, 1
	str	x0, [sp, 256]
	ldr	x0, [sp, 104]
	bl	resize_prob
	cmp	x0, 0
	beq	.L76
	mov	x0, -1
	b	.L115
.L76:
	adrp	x0, getOriginalArcPosition
	add	x1, x0, :lo12:getOriginalArcPosition
	ldr	x0, [sp, 104]
	bl	refresh_neighbour_lists
	b	.L75
.L74:
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 424]
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 456]
	add	x1, x1, x0
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 416]
	cmp	x1, x0
	ble	.L75
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 408]
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 408]
	mul	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 424]
	add	x1, x1, x0
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 416]
	cmp	x1, x0
	ble	.L75
	mov	x0, 1
	str	x0, [sp, 256]
	ldr	x0, [sp, 104]
	bl	resize_prob
	cmp	x0, 0
	beq	.L78
	mov	x0, -1
	b	.L115
.L78:
	adrp	x0, getOriginalArcPosition
	add	x1, x0, :lo12:getOriginalArcPosition
	ldr	x0, [sp, 104]
	bl	refresh_neighbour_lists
.L75:
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 408]
	mov	x0, 15000
	cmp	x1, x0
	bgt	.L79
	mov	x0, 1000
	str	x0, [sp, 216]
	b	.L80
.L79:
	mov	x0, 2000
	str	x0, [sp, 216]
.L80:
	ldr	x0, [sp, 104]
	ldr	x28, [x0, 584]
	cmp	x28, 0
	bne	.L81
	mov	x0, -1
	b	.L115
.L81:
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 448]
	ldr	x0, [sp, 200]
	sdiv	x0, x1, x0
	str	x0, [sp, 160]
	mov	w0, 1
	strh	w0, [sp, 238]
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 416]
	ldr	x0, [sp, 200]
	sdiv	x0, x1, x0
	str	x0, [sp, 152]
	mov	w0, 1
	strh	w0, [sp, 236]
	str	xzr, [sp, 112]
	str	xzr, [sp, 224]
	str	wzr, [sp, 148]
	ldrsw	x1, [sp, 148]
	ldr	x0, [sp, 152]
	mul	x0, x1, x0
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x2, x0
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 168]
	add	x0, x1, x0
	add	x1, x28, x2
	str	x1, [x0]
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 184]
	add	x0, x1, x0
	str	xzr, [x0]
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 192]
	add	x0, x1, x0
	str	xzr, [x0]
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 576]
	ldrsw	x2, [sp, 148]
	ldr	x0, [sp, 160]
	mul	x0, x2, x0
	mov	x2, x0
	mov	x0, x2
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 3
	add	x19, x1, x0
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 408]
	str	x0, [sp, 136]
	str	xzr, [sp, 248]
	mov	x0, -1
	str	x0, [sp, 240]
	ldr	x2, [sp, 160]
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 176]
	add	x20, x1, x0
	mov	x1, 8
	mov	x0, x2
	bl	calloc
	str	x0, [x20]
	str	xzr, [sp, 264]
	b	.L82
.L83:
	ldr	x1, [sp, 264]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x2, x0
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 176]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [sp, 264]
	lsl	x0, x0, 3
	add	x0, x1, x0
	add	x1, x19, x2
	str	x1, [x0]
	ldr	x0, [sp, 264]
	add	x0, x0, 1
	str	x0, [sp, 264]
.L82:
	ldr	x1, [sp, 264]
	ldr	x0, [sp, 160]
	cmp	x1, x0
	blt	.L83
	ldr	x0, [sp, 104]
	ldr	x20, [x0, 568]
	str	xzr, [sp, 264]
	b	.L84
.L86:
	ldr	x0, [sp, 264]
	add	x0, x0, 1
	str	x0, [sp, 264]
	add	x20, x20, 216
.L84:
	ldr	x1, [sp, 264]
	ldr	x0, [sp, 136]
	cmp	x1, x0
	bge	.L85
	add	x0, x20, 72
	ldrsh	w0, [x0, 32]
	cmn	w0, #1
	beq	.L86
.L85:
	mov	x21, 0
	b	.L87
.L102:
	ldrsh	w0, [sp, 238]
	cmp	w0, 0
	bne	.L88
	add	x0, sp, 112
	ldr	x3, [sp, 200]
	ldr	x2, [sp, 176]
	mov	x1, x0
	ldr	x0, [sp, 104]
	bl	calculate_max_redcost
.L88:
	ldr	x0, [sp, 264]
	ldr	x1, [sp, 216]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 216]
	mul	x1, x2, x1
	sub	x0, x0, x1
	cmp	x0, 0
	bne	.L89
	add	x0, sp, 112
	ldr	x3, [sp, 200]
	ldr	x2, [sp, 176]
	mov	x1, x0
	ldr	x0, [sp, 104]
	bl	calculate_max_redcost
	ldrsh	w0, [sp, 238]
	cmp	w0, 0
	bne	.L89
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 184]
	add	x0, x1, x0
	ldr	x1, [sp, 224]
	str	x1, [x0]
	ldr	x7, [sp, 200]
	ldr	x6, [sp, 152]
	ldr	x5, [sp, 160]
	ldr	w4, [sp, 148]
	mov	x3, x19
	ldr	x2, [sp, 168]
	ldr	x1, [sp, 184]
	ldr	x0, [sp, 104]
	bl	switch_arcs
	str	xzr, [sp, 224]
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 184]
	add	x0, x1, x0
	str	xzr, [x0]
.L89:
	add	x0, x20, 72
	ldrsh	w0, [x0, 32]
	cmn	w0, #1
	beq	.L90
	mov	x1, 16
	mov	x0, 1
	bl	calloc
	mov	x22, x0
	str	x21, [x22, 8]
	add	x0, x20, 72
	str	x0, [x22]
	mov	x21, x22
	ldr	x0, [sp, 240]
	add	x0, x0, 1
	str	x0, [sp, 240]
.L90:
	ldrsh	w0, [x20, 32]
	cmn	w0, #1
	beq	.L91
	ldr	x0, [sp, 264]
	ldr	x1, [sp, 200]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 200]
	mul	x1, x2, x1
	sub	x1, x0, x1
	ldrsw	x0, [sp, 148]
	cmp	x1, x0
	beq	.L92
.L91:
	ldr	x1, [sp, 248]
	ldr	x0, [sp, 240]
	add	x0, x1, x0
	str	x0, [sp, 248]
	b	.L93
.L92:
	ldr	x26, [x20, 24]
	ldr	w0, [x26, 100]
	sxtw	x1, w0
	ldr	x0, [x20, 64]
	sub	x0, x1, x0
	ldr	x1, [sp, 96]
	add	x0, x1, x0
	str	x0, [sp, 128]
	ldr	x22, [x21, 8]
	b	.L94
.L101:
	ldr	x23, [x22]
	ldr	x27, [x23, 16]
	ldr	w0, [x27, 100]
	sxtw	x1, w0
	ldr	x0, [x23, 64]
	add	x0, x1, x0
	ldr	x1, [sp, 128]
	cmp	x1, x0
	bge	.L95
	ldr	x22, [x22, 8]
	ldr	x0, [sp, 248]
	add	x0, x0, 1
	str	x0, [sp, 248]
	b	.L94
.L95:
	ldr	x0, [x27]
	sub	x1, x25, x0
	ldr	x0, [x26]
	add	x24, x1, x0
	cmp	x24, 0
	bge	.L96
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 192]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 160]
	cmp	x1, x0
	ble	.L97
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 192]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 424]
	ldr	x7, [sp, 248]
	mov	x6, x0
	mov	x5, x24
	mov	x4, x25
	mov	x3, x26
	mov	x2, x27
	mov	x0, x19
	bl	insert_new_arc
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 192]
	add	x0, x1, x0
	ldr	x1, [x0]
	add	x1, x1, 1
	str	x1, [x0]
	b	.L98
.L97:
	ldr	x0, [x19, 56]
	cmp	x24, x0
	bge	.L99
	ldrsh	w0, [sp, 236]
	cmp	w0, 0
	beq	.L100
	strh	wzr, [sp, 238]
	strh	wzr, [sp, 236]
.L100:
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 168]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x2, [sp, 184]
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x2, x0
	mov	x0, x2
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 3
	add	x0, x1, x0
	mov	x1, x19
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	ldp	x2, x3, [x1, 16]
	stp	x2, x3, [x0, 16]
	ldp	x2, x3, [x1, 32]
	stp	x2, x3, [x0, 32]
	ldp	x2, x3, [x1, 48]
	stp	x2, x3, [x0, 48]
	ldr	x1, [x1, 64]
	str	x1, [x0, 64]
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 184]
	add	x0, x1, x0
	ldr	x1, [x0]
	add	x1, x1, 1
	str	x1, [x0]
	ldr	x0, [sp, 224]
	add	x0, x0, 1
	str	x0, [sp, 224]
	ldr	x6, [sp, 248]
	ldr	x5, [sp, 160]
	mov	x4, x24
	mov	x3, x25
	mov	x2, x26
	mov	x1, x27
	mov	x0, x19
	bl	replace_weaker_arc
	b	.L98
.L99:
	ldr	x0, [sp, 112]
	cmp	x24, x0
	bge	.L98
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 168]
	add	x0, x1, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 184]
	add	x0, x1, x0
	ldr	x1, [x0]
	add	x3, x1, 1
	str	x3, [x0]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x23, x2, x0
	str	x27, [x23, 16]
	str	x26, [x23, 24]
	str	x25, [x23, 64]
	str	x25, [x23, 8]
	str	x24, [x23, 56]
	ldr	x0, [sp, 248]
	str	w0, [x23]
	ldr	x0, [sp, 224]
	add	x0, x0, 1
	str	x0, [sp, 224]
.L98:
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 184]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 152]
	cmp	x1, x0
	bne	.L96
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 184]
	add	x0, x1, x0
	str	xzr, [x0]
.L96:
	ldr	x22, [x22, 8]
	ldr	x0, [sp, 248]
	add	x0, x0, 1
	str	x0, [sp, 248]
.L94:
	cmp	x22, 0
	bne	.L101
.L93:
	ldr	x0, [sp, 264]
	add	x0, x0, 1
	str	x0, [sp, 264]
	add	x20, x20, 216
.L87:
	ldr	x1, [sp, 264]
	ldr	x0, [sp, 136]
	cmp	x1, x0
	blt	.L102
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 184]
	add	x0, x1, x0
	ldr	x1, [sp, 224]
	str	x1, [x0]
	b	.L103
.L104:
	mov	w0, 1
	strh	w0, [sp, 238]
	ldr	x7, [sp, 200]
	ldr	x6, [sp, 152]
	ldr	x5, [sp, 160]
	ldr	w4, [sp, 148]
	mov	x3, x19
	ldr	x2, [sp, 168]
	ldr	x1, [sp, 184]
	ldr	x0, [sp, 104]
	bl	switch_arcs
	str	x0, [sp, 224]
	ldr	x0, [sp, 224]
	cmp	x0, 0
	beq	.L103
	strh	wzr, [sp, 238]
.L103:
	ldrsh	w0, [sp, 238]
	cmp	w0, 0
	beq	.L104
	b	.L105
.L106:
	mov	x22, x21
	ldr	x21, [x21, 8]
	mov	x0, x22
	bl	free
.L105:
	ldr	x0, [x21, 8]
	cmp	x0, 0
	bne	.L106
	mov	x0, x21
	bl	free
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 176]
	add	x0, x1, x0
	ldr	x4, [x0]
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 192]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	adrp	x0, arc_compare
	add	x3, x0, :lo12:arc_compare
	mov	x2, 8
	mov	x0, x4
	bl	qsort
	add	x0, sp, 120
	ldr	x3, [sp, 176]
	ldr	x2, [sp, 192]
	mov	x1, x0
	ldr	x0, [sp, 104]
	bl	marc_arcs
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 176]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 192]
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L107
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 576]
	ldrsw	x2, [sp, 148]
	ldr	x0, [sp, 160]
	mul	x0, x2, x0
	mov	x2, x0
	mov	x0, x2
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 3
	add	x19, x1, x0
	ldrsw	x0, [sp, 148]
	lsl	x0, x0, 3
	ldr	x1, [sp, 192]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x20, x19, x0
	ldr	x0, [sp, 256]
	cmp	x0, 0
	beq	.L112
	b	.L109
.L111:
	ldr	x0, [x19, 56]
	cmp	x0, 1
	bne	.L110
	str	xzr, [x19, 56]
	mov	w0, 1
	strh	w0, [x19, 32]
	ldr	w0, [x19]
	sxtw	x0, w0
	mov	x1, x0
	ldr	x0, [sp, 104]
	bl	getArcPosition
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x28, x0
	mov	x1, x19
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	ldp	x2, x3, [x1, 16]
	stp	x2, x3, [x0, 16]
	ldp	x2, x3, [x1, 32]
	stp	x2, x3, [x0, 32]
	ldp	x2, x3, [x1, 48]
	stp	x2, x3, [x0, 48]
	ldr	x1, [x1, 64]
	str	x1, [x0, 64]
.L110:
	add	x19, x19, 72
.L109:
	cmp	x19, x20
	bne	.L111
	b	.L107
.L114:
	ldr	x0, [x19, 56]
	cmp	x0, 1
	bne	.L113
	str	xzr, [x19, 56]
	mov	w0, 1
	strh	w0, [x19, 32]
	ldr	x0, [x19, 16]
	ldr	x0, [x0, 56]
	str	x0, [x19, 40]
	ldr	x0, [x19, 16]
	str	x19, [x0, 56]
	ldr	x0, [x19, 24]
	ldr	x0, [x0, 64]
	str	x0, [x19, 48]
	ldr	x0, [x19, 24]
	str	x19, [x0, 64]
	ldr	w0, [x19]
	sxtw	x0, w0
	mov	x1, x0
	ldr	x0, [sp, 104]
	bl	getArcPosition
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x28, x0
	mov	x1, x19
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	ldp	x2, x3, [x1, 16]
	stp	x2, x3, [x0, 16]
	ldp	x2, x3, [x1, 32]
	stp	x2, x3, [x0, 32]
	ldp	x2, x3, [x1, 48]
	stp	x2, x3, [x0, 48]
	ldr	x1, [x1, 64]
	str	x1, [x0, 64]
.L113:
	add	x19, x19, 72
.L112:
	cmp	x19, x20
	bne	.L114
.L107:
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 440]
	ldr	x0, [sp, 120]
	add	x1, x1, x0
	ldr	x0, [sp, 104]
	str	x1, [x0, 440]
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 448]
	ldr	x0, [sp, 120]
	sub	x1, x1, x0
	ldr	x0, [sp, 104]
	str	x1, [x0, 448]
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 424]
	mov	x2, x0
	adrp	x0, getArcPosition
	add	x1, x0, :lo12:getArcPosition
	ldr	x0, [sp, 104]
	bl	refreshPositions
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 424]
	ldr	x0, [sp, 120]
	add	x1, x1, x0
	ldr	x0, [sp, 104]
	str	x1, [x0, 424]
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 568]
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 424]
	mov	x2, x0
	mov	x0, x2
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	x0, [sp, 104]
	str	x1, [x0, 576]
	ldr	x0, [sp, 192]
	bl	free
	ldr	x0, [sp, 184]
	bl	free
	ldr	x0, [sp, 176]
	bl	free
	ldr	x0, [sp, 168]
	bl	free
	ldr	x0, [sp, 120]
.L115:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 272
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	price_out_impl, .-price_out_impl
	.align	2
	.global	suspend_impl
	.type	suspend_impl, %function
suspend_impl:
.LFB12:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	mov	x1, 4000
	str	x1, [x0, 640]
	ldr	x0, [sp, 56]
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
	ldr	x0, [sp, 56]
	str	x1, [x0, 624]
	ldr	x0, [sp, 56]
	ldr	x3, [x0, 624]
	ldr	x0, [sp, 56]
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
	ldr	x0, [sp, 56]
	str	x1, [x0, 632]
	b	.L117
.L118:
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 624]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 632]
	add	x1, x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 632]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 640]
	sub	x1, x0, #1
	ldr	x0, [sp, 56]
	str	x1, [x0, 640]
.L117:
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 632]
	cmp	x0, 0
	blt	.L118
	ldr	x0, [sp, 40]
	cmp	x0, 0
	beq	.L119
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 440]
	str	x0, [sp, 104]
	b	.L120
.L119:
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 424]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 440]
	sub	x0, x1, x0
	str	x0, [sp, 80]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 424]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 440]
	sub	x0, x1, x0
	str	x0, [sp, 88]
	str	xzr, [sp, 104]
	b	.L121
.L126:
	ldr	x0, [sp, 56]
	ldr	x19, [x0, 568]
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 56]
	bl	getArcPosition
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x19, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	ldrsh	w0, [x0, 32]
	cmp	w0, 1
	bne	.L122
	ldr	x0, [sp, 72]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 16]
	ldr	x0, [x0]
	sub	x1, x1, x0
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 24]
	ldr	x0, [x0]
	add	x0, x1, x0
	str	x0, [sp, 96]
	b	.L123
.L122:
	mov	x0, -2
	str	x0, [sp, 96]
	ldr	x0, [sp, 72]
	ldrsh	w0, [x0, 32]
	cmp	w0, 0
	bne	.L123
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 16]
	ldr	x0, [x0, 48]
	ldr	x1, [sp, 72]
	cmp	x1, x0
	beq	.L123
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 24]
	ldr	x1, [sp, 72]
	str	x1, [x0, 48]
.L123:
	ldr	x1, [sp, 96]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	ble	.L124
	ldr	x0, [sp, 104]
	add	x0, x0, 1
	str	x0, [sp, 104]
	ldr	x0, [sp, 72]
	mov	w1, -1
	str	w1, [x0]
	b	.L125
.L124:
	ldr	x0, [sp, 80]
	mov	w1, w0
	ldr	x0, [sp, 72]
	str	w1, [x0]
	ldr	x0, [sp, 80]
	add	x0, x0, 1
	str	x0, [sp, 80]
.L125:
	ldr	x0, [sp, 88]
	add	x0, x0, 1
	str	x0, [sp, 88]
.L121:
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 424]
	ldr	x1, [sp, 88]
	cmp	x1, x0
	blt	.L126
.L120:
	ldr	x0, [sp, 104]
	cmp	x0, 0
	beq	.L127
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 440]
	ldr	x0, [sp, 104]
	sub	x1, x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 440]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 448]
	ldr	x0, [sp, 104]
	add	x1, x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 448]
	ldr	x0, [sp, 56]
	mov	x1, 4000
	str	x1, [x0, 640]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 424]
	ldr	x0, [sp, 104]
	sub	x0, x1, x0
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
	ldr	x0, [sp, 56]
	str	x1, [x0, 624]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 424]
	ldr	x0, [sp, 104]
	sub	x2, x1, x0
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
	beq	.L128
	ldr	x0, [sp, 56]
	ldr	x3, [x0, 624]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 424]
	ldr	x0, [sp, 104]
	sub	x2, x1, x0
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
	ldr	x0, [sp, 56]
	str	x1, [x0, 632]
	b	.L130
.L128:
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 624]
	ldr	x0, [sp, 56]
	str	x1, [x0, 632]
	b	.L130
.L131:
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 624]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 632]
	add	x1, x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 632]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 640]
	sub	x1, x0, #1
	ldr	x0, [sp, 56]
	str	x1, [x0, 640]
.L130:
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 632]
	cmp	x0, 0
	blt	.L131
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 424]
	mov	x2, x0
	adrp	x0, getOriginalArcPosition
	add	x1, x0, :lo12:getOriginalArcPosition
	ldr	x0, [sp, 56]
	bl	refreshPositions
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 424]
	ldr	x0, [sp, 104]
	sub	x1, x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 424]
	ldr	x0, [sp, 56]
	ldr	x2, [x0, 576]
	ldr	x1, [sp, 104]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	neg	x0, x0
	add	x1, x2, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 576]
	adrp	x0, getOriginalArcPosition
	add	x1, x0, :lo12:getOriginalArcPosition
	ldr	x0, [sp, 56]
	bl	refresh_neighbour_lists
.L127:
	ldr	x0, [sp, 104]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12:
	.size	suspend_impl, .-suspend_impl
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.6490, %object
	.size	__PRETTY_FUNCTION__.6490, 12
__PRETTY_FUNCTION__.6490:
	.string	"resize_prob"
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
