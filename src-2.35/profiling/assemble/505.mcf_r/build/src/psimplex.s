	.arch armv8-a
	.file	"psimplex.c"
	.text
	.local	runtime
	.comm	runtime,8,8
	.local	opt_basket
	.comm	opt_basket,8,8
	.local	perm_p
	.comm	perm_p,8,8
	.local	basket_sizes
	.comm	basket_sizes,8,8
	.local	opt
	.comm	opt,8,8
	.local	basket
	.comm	basket,8,8
	.align	2
	.global	markBaskets
	.type	markBaskets, %function
markBaskets:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 24]
	str	xzr, [sp, 56]
	mov	x0, 1
	str	x0, [sp, 72]
	b	.L2
.L11:
	adrp	x0, perm_p
	add	x0, x0, :lo12:perm_p
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0, 24]
	cmp	x0, 0
	blt	.L3
	adrp	x0, perm_p
	add	x0, x0, :lo12:perm_p
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0]
	str	x0, [sp, 48]
	str	xzr, [sp, 56]
	b	.L4
.L3:
	str	xzr, [sp, 48]
.L4:
	mov	x0, 1
	str	x0, [sp, 64]
	b	.L5
.L8:
	adrp	x0, perm_p
	add	x0, x0, :lo12:perm_p
	ldr	x1, [x0]
	ldr	x0, [sp, 64]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 24]
	cmp	x0, 0
	blt	.L6
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L7
	add	x1, sp, 48
	add	x0, sp, 40
	bl	cost_compare
	cmp	w0, 0
	bge	.L6
.L7:
	ldr	x0, [sp, 40]
	str	x0, [sp, 48]
	ldr	x0, [sp, 64]
	str	x0, [sp, 56]
.L6:
	ldr	x0, [sp, 64]
	add	x0, x0, 1
	str	x0, [sp, 64]
.L5:
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	blt	.L8
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L12
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 72]
	str	x1, [x0, 24]
	adrp	x0, perm_p
	add	x0, x0, :lo12:perm_p
	ldr	x1, [x0]
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	add	x1, x1, 8
	str	x1, [x0]
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	str	x0, [sp, 72]
.L2:
	ldr	x0, [sp, 72]
	cmp	x0, 60
	ble	.L11
	b	.L1
.L12:
	nop
.L1:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	markBaskets, .-markBaskets
	.align	2
	.global	worker
	.type	worker, %function
worker:
.LFB3:
	.cfi_startproc
	mov	x12, 32608
	sub	sp, sp, x12
	.cfi_def_cfa_offset 32608
	stp	x29, x30, [sp, 16]
	.cfi_offset 29, -32592
	.cfi_offset 30, -32584
	add	x29, sp, 16
	str	x19, [sp, 32]
	.cfi_offset 19, -32576
	str	x0, [sp, 56]
	str	w1, [sp, 52]
	str	w2, [sp, 48]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 568]
	str	x0, [sp, 32584]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 576]
	str	x0, [sp, 32576]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 424]
	str	x0, [sp, 32568]
	ldr	x0, [sp, 56]
	add	x0, x0, 608
	str	x0, [sp, 32560]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 568]
	str	x0, [sp, 64]
	adrp	x0, basket_sizes
	add	x0, x0, :lo12:basket_sizes
	ldr	x1, [x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x0, x1, x0
	str	xzr, [x0]
	mov	w1, 4000
	ldr	w0, [sp, 48]
	sdiv	w0, w1, w0
	add	w1, w0, 261
	ldr	w0, [sp, 52]
	mul	w0, w1, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 32592]
	mov	x0, 1
	str	x0, [sp, 32600]
	b	.L14
.L15:
	adrp	x0, basket
	add	x0, x0, :lo12:basket
	ldr	x1, [x0]
	ldr	x0, [sp, 32592]
	lsl	x0, x0, 5
	add	x2, x1, x0
	ldr	x0, [sp, 32600]
	lsl	x0, x0, 3
	add	x1, sp, 72
	str	x2, [x1, x0]
	ldr	x0, [sp, 32600]
	add	x0, x0, 1
	str	x0, [sp, 32600]
	ldr	x0, [sp, 32592]
	add	x0, x0, 1
	str	x0, [sp, 32592]
.L14:
	mov	w1, 4000
	ldr	w0, [sp, 48]
	sdiv	w0, w1, w0
	add	w0, w0, 61
	sxtw	x0, w0
	ldr	x1, [sp, 32600]
	cmp	x1, x0
	blt	.L15
	b	.L16
.L17:
	adrp	x0, basket_sizes
	add	x0, x0, :lo12:basket_sizes
	ldr	x8, [x0]
	ldr	x0, [sp, 32560]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 52]
	add	x0, x1, x0
	ldrsw	x1, [sp, 48]
	sdiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x4, x0, x1
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 56]
	ldr	x1, [x1, 640]
	adrp	x2, opt_basket
	add	x2, x2, :lo12:opt_basket
	ldr	x3, [x2]
	ldrsw	x2, [sp, 52]
	lsl	x2, x2, 3
	add	x19, x3, x2
	add	x3, sp, 64
	add	x2, sp, 72
	str	x1, [sp, 8]
	str	x0, [sp]
	mov	x7, x4
	mov	x6, x3
	ldr	w5, [sp, 52]
	mov	x4, x2
	mov	x3, x8
	ldr	x2, [sp, 32576]
	ldr	x1, [sp, 32584]
	ldr	x0, [sp, 32568]
	bl	primal_bea_mpp
	str	x0, [x19]
	adrp	x0, perm_p
	add	x0, x0, :lo12:perm_p
	ldr	x1, [x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	add	x1, x1, x0
	add	x0, sp, 72
	add	x0, x0, 8
	str	x0, [x1]
	ldr	w0, [sp, 52]
	cmp	w0, 1
	bne	.L16
	ldrsw	x0, [sp, 48]
	bl	markBaskets
.L16:
	adrp	x0, opt
	add	x0, x0, :lo12:opt
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L17
	nop
	nop
	ldr	x19, [sp, 32]
	ldp	x29, x30, [sp, 16]
	mov	x12, 32608
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	worker, .-worker
	.align	2
	.global	master
	.type	master, %function
master:
.LFB4:
	.cfi_startproc
	mov	x12, 32752
	sub	sp, sp, x12
	.cfi_def_cfa_offset 32752
	stp	x29, x30, [sp, 32]
	.cfi_offset 29, -32720
	.cfi_offset 30, -32712
	add	x29, sp, 32
	str	x19, [sp, 48]
	.cfi_offset 19, -32704
	str	x0, [sp, 72]
	str	w1, [sp, 68]
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 568]
	str	x0, [sp, 32672]
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 576]
	str	x0, [sp, 32664]
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 424]
	str	x0, [sp, 32656]
	ldr	x0, [sp, 72]
	add	x0, x0, 608
	str	x0, [sp, 32648]
	ldr	x0, [sp, 72]
	add	x0, x0, 616
	str	x0, [sp, 32640]
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 568]
	str	x0, [sp, 80]
	adrp	x0, basket_sizes
	add	x0, x0, :lo12:basket_sizes
	ldr	x0, [x0]
	str	xzr, [x0]
	mov	x0, 1
	str	x0, [sp, 32680]
	mov	x0, 1
	str	x0, [sp, 32688]
	b	.L19
.L20:
	adrp	x0, basket
	add	x0, x0, :lo12:basket
	ldr	x1, [x0]
	ldr	x0, [sp, 32680]
	lsl	x0, x0, 5
	add	x2, x1, x0
	ldr	x0, [sp, 32688]
	lsl	x0, x0, 3
	add	x1, sp, 88
	str	x2, [x1, x0]
	ldr	x0, [sp, 32688]
	add	x0, x0, 1
	str	x0, [sp, 32688]
	ldr	x0, [sp, 32680]
	add	x0, x0, 1
	str	x0, [sp, 32680]
.L19:
	mov	w1, 4000
	ldr	w0, [sp, 68]
	sdiv	w0, w1, w0
	add	w0, w0, 61
	sxtw	x0, w0
	ldr	x1, [sp, 32688]
	cmp	x1, x0
	blt	.L20
	b	.L21
.L42:
	adrp	x0, basket_sizes
	add	x0, x0, :lo12:basket_sizes
	ldr	x3, [x0]
	ldr	x0, [sp, 32648]
	ldr	x0, [x0]
	ldrsw	x1, [sp, 68]
	sdiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x5, x0, x1
	ldrsw	x0, [sp, 68]
	ldr	x1, [sp, 72]
	ldr	x1, [x1, 640]
	adrp	x2, opt_basket
	add	x2, x2, :lo12:opt_basket
	ldr	x19, [x2]
	add	x4, sp, 80
	add	x2, sp, 88
	str	x1, [sp, 8]
	str	x0, [sp]
	mov	x7, x5
	mov	x6, x4
	mov	w5, 0
	mov	x4, x2
	ldr	x2, [sp, 32664]
	ldr	x1, [sp, 32672]
	ldr	x0, [sp, 32656]
	bl	primal_bea_mpp
	str	x0, [x19]
	adrp	x0, perm_p
	add	x0, x0, :lo12:perm_p
	ldr	x1, [x0]
	add	x0, sp, 88
	add	x0, x0, 8
	str	x0, [x1]
	str	xzr, [sp, 32576]
	str	xzr, [sp, 32688]
	b	.L22
.L26:
	ldr	x0, [sp, 32576]
	cmp	x0, 0
	bne	.L23
	adrp	x0, opt_basket
	add	x0, x0, :lo12:opt_basket
	ldr	x1, [x0]
	ldr	x0, [sp, 32688]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L24
.L23:
	adrp	x0, opt_basket
	add	x0, x0, :lo12:opt_basket
	ldr	x1, [x0]
	ldr	x0, [sp, 32688]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L25
	adrp	x0, opt_basket
	add	x0, x0, :lo12:opt_basket
	ldr	x1, [x0]
	ldr	x0, [sp, 32688]
	lsl	x0, x0, 3
	add	x0, x1, x0
	add	x1, sp, 28672
	add	x1, x1, 3904
	bl	cost_compare
	cmp	w0, 0
	bge	.L25
.L24:
	adrp	x0, opt_basket
	add	x0, x0, :lo12:opt_basket
	ldr	x1, [x0]
	ldr	x0, [sp, 32688]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 32576]
.L25:
	ldr	x0, [sp, 32688]
	add	x0, x0, 1
	str	x0, [sp, 32688]
.L22:
	ldrsw	x0, [sp, 68]
	ldr	x1, [sp, 32688]
	cmp	x1, x0
	blt	.L26
	ldr	x0, [sp, 32576]
	cmp	x0, 0
	bne	.L27
	str	xzr, [sp, 32696]
	b	.L28
.L27:
	ldr	x0, [sp, 32576]
	ldr	x0, [x0, 8]
	str	x0, [sp, 32696]
	ldr	x0, [sp, 32576]
	ldr	x0, [x0]
	str	x0, [sp, 32712]
	ldr	w0, [sp, 68]
	cmp	w0, 1
	bne	.L28
	ldrsw	x0, [sp, 68]
	bl	markBaskets
.L28:
	ldr	x0, [sp, 32696]
	cmp	x0, 0
	beq	.L29
	ldr	x0, [sp, 32648]
	ldr	x0, [x0]
	add	x1, x0, 1
	ldr	x0, [sp, 32648]
	str	x1, [x0]
	ldr	x0, [sp, 32696]
	cmp	x0, 0
	ble	.L30
	ldr	x0, [sp, 32712]
	ldr	x0, [x0, 24]
	str	x0, [sp, 32728]
	ldr	x0, [sp, 32712]
	ldr	x0, [x0, 16]
	str	x0, [sp, 32720]
	b	.L31
.L30:
	ldr	x0, [sp, 32712]
	ldr	x0, [x0, 16]
	str	x0, [sp, 32728]
	ldr	x0, [sp, 32712]
	ldr	x0, [x0, 24]
	str	x0, [sp, 32720]
.L31:
	mov	x0, 1
	str	x0, [sp, 32600]
	add	x2, sp, 28672
	add	x2, x2, 3912
	add	x1, sp, 28672
	add	x1, x1, 3920
	add	x0, sp, 28672
	add	x0, x0, 3928
	mov	x4, x2
	ldr	x3, [sp, 32720]
	ldr	x2, [sp, 32728]
	bl	primal_iminus
	str	x0, [sp, 32632]
	ldr	x0, [sp, 32632]
	cmp	x0, 0
	bne	.L32
	ldr	x0, [sp, 32640]
	ldr	x0, [x0]
	add	x1, x0, 1
	ldr	x0, [sp, 32640]
	str	x1, [x0]
	ldr	x0, [sp, 32712]
	ldrsh	w0, [x0, 32]
	cmp	w0, 2
	bne	.L33
	ldr	x0, [sp, 32712]
	mov	w1, 1
	strh	w1, [x0, 32]
	b	.L34
.L33:
	ldr	x0, [sp, 32712]
	mov	w1, 2
	strh	w1, [x0, 32]
.L34:
	ldr	x0, [sp, 32600]
	cmp	x0, 0
	beq	.L21
	ldr	x0, [sp, 32584]
	mov	x2, x0
	ldr	x1, [sp, 32720]
	ldr	x0, [sp, 32728]
	bl	primal_update_flow
	b	.L21
.L32:
	ldr	x0, [sp, 32592]
	cmp	x0, 0
	beq	.L35
	ldr	x0, [sp, 32720]
	str	x0, [sp, 32624]
	ldr	x0, [sp, 32728]
	str	x0, [sp, 32720]
	ldr	x0, [sp, 32624]
	str	x0, [sp, 32728]
.L35:
	ldr	x0, [sp, 32632]
	ldr	x0, [x0, 24]
	str	x0, [sp, 32616]
	ldr	x0, [sp, 32632]
	ldr	x0, [x0, 48]
	str	x0, [sp, 32608]
	ldr	x0, [sp, 32632]
	ldr	w0, [x0, 8]
	sxtw	x1, w0
	ldr	x0, [sp, 32592]
	cmp	x1, x0
	beq	.L36
	mov	x0, 1
	str	x0, [sp, 32704]
	b	.L37
.L36:
	mov	x0, 2
	str	x0, [sp, 32704]
.L37:
	ldr	x0, [sp, 32696]
	cmp	x0, 0
	ble	.L38
	ldr	x0, [sp, 32600]
	mov	x1, 1
	sub	x0, x1, x0
	str	x0, [sp, 32744]
	b	.L39
.L38:
	ldr	x0, [sp, 32600]
	str	x0, [sp, 32744]
.L39:
	ldr	x0, [sp, 32712]
	ldr	x0, [x0, 16]
	ldr	x1, [sp, 32728]
	cmp	x1, x0
	bne	.L40
	mov	x0, 1
	str	x0, [sp, 32736]
	b	.L41
.L40:
	str	xzr, [sp, 32736]
.L41:
	ldr	x0, [sp, 32592]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	and	x8, x0, 255
	ldr	x2, [sp, 32600]
	ldr	x0, [sp, 32584]
	ldr	x1, [sp, 72]
	ldr	x1, [x1, 512]
	str	x1, [sp, 24]
	ldr	x1, [sp, 32696]
	str	x1, [sp, 16]
	ldr	x1, [sp, 32712]
	str	x1, [sp, 8]
	str	x0, [sp]
	ldr	x7, [sp, 32616]
	ldr	x6, [sp, 32632]
	ldr	x5, [sp, 32720]
	ldr	x4, [sp, 32728]
	ldr	x3, [sp, 32744]
	ldr	x1, [sp, 32736]
	mov	x0, x8
	bl	update_tree
	ldr	x0, [sp, 32712]
	strh	wzr, [x0, 32]
	ldr	x0, [sp, 32704]
	sxth	w1, w0
	ldr	x0, [sp, 32608]
	strh	w1, [x0, 32]
	b	.L21
.L29:
	adrp	x0, opt
	add	x0, x0, :lo12:opt
	mov	x1, 1
	str	x1, [x0]
.L21:
	adrp	x0, opt
	add	x0, x0, :lo12:opt
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L42
	nop
	nop
	ldr	x19, [sp, 48]
	ldp	x29, x30, [sp, 32]
	mov	x12, 32752
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	master, .-master
	.align	2
	.global	primal_net_simplex
	.type	primal_net_simplex, %function
primal_net_simplex:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	mov	x1, 8
	bl	calloc
	mov	x1, x0
	adrp	x0, perm_p
	add	x0, x0, :lo12:perm_p
	str	x1, [x0]
	ldrsw	x0, [sp, 44]
	mov	x1, 8
	bl	calloc
	mov	x1, x0
	adrp	x0, opt_basket
	add	x0, x0, :lo12:opt_basket
	str	x1, [x0]
	ldrsw	x0, [sp, 44]
	mov	x1, 8
	bl	calloc
	mov	x1, x0
	adrp	x0, basket_sizes
	add	x0, x0, :lo12:basket_sizes
	str	x1, [x0]
	mov	w1, 4000
	ldr	w0, [sp, 44]
	sdiv	w0, w1, w0
	add	w1, w0, 261
	ldr	w0, [sp, 44]
	mul	w0, w1, w0
	sxtw	x0, w0
	mov	x1, 32
	bl	calloc
	mov	x1, x0
	adrp	x0, basket
	add	x0, x0, :lo12:basket
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 568]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	set_static_vars
	str	wzr, [sp, 40]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L44
	ldr	w1, [sp, 44]
	ldr	x0, [sp, 24]
	bl	master
	b	.L45
.L44:
	ldr	w2, [sp, 44]
	ldr	w1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	worker
.L45:
	ldr	x0, [sp, 24]
	bl	primal_feasible
	ldr	x0, [sp, 24]
	bl	dual_feasible
	adrp	x0, opt
	add	x0, x0, :lo12:opt
	str	xzr, [x0]
	adrp	x0, perm_p
	add	x0, x0, :lo12:perm_p
	ldr	x0, [x0]
	bl	free
	adrp	x0, opt_basket
	add	x0, x0, :lo12:opt_basket
	ldr	x0, [x0]
	bl	free
	adrp	x0, basket_sizes
	add	x0, x0, :lo12:basket_sizes
	ldr	x0, [x0]
	bl	free
	adrp	x0, basket
	add	x0, x0, :lo12:basket
	ldr	x0, [x0]
	bl	free
	mov	x0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	primal_net_simplex, .-primal_net_simplex
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
