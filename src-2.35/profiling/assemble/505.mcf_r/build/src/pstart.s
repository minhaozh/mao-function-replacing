	.arch armv8-a
	.file	"pstart.c"
	.text
	.align	2
	.global	primal_start_artificial
	.type	primal_start_artificial, %function
primal_start_artificial:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 552]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	str	x0, [sp, 24]
	ldr	x0, [sp, 32]
	add	x0, x0, 104
	str	x0, [sp, 32]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 48]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 32]
	str	x1, [x0, 16]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 32]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 40]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 400]
	add	x1, x0, 1
	ldr	x0, [sp, 24]
	str	x1, [x0, 88]
	ldr	x0, [sp, 24]
	str	wzr, [x0, 8]
	ldr	x0, [sp, 24]
	mov	x1, -57600
	movk	x1, 0xfa0a, lsl 16
	str	x1, [x0]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 80]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 568]
	str	x0, [sp, 16]
	str	wzr, [sp, 44]
	b	.L2
.L4:
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 16]
	add	x0, x0, x1
	ldrsh	w0, [x0, 32]
	cmn	w0, #1
	beq	.L3
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 16]
	add	x0, x0, x1
	mov	w1, 1
	strh	w1, [x0, 32]
.L3:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldrsw	x1, [sp, 44]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 424]
	cmp	x1, x0
	blt	.L4
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 592]
	str	x0, [sp, 16]
	str	wzr, [sp, 44]
	b	.L5
.L6:
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x2, x0
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	add	x0, x0, x1
	ldr	x1, [sp, 16]
	add	x1, x1, x2
	str	x1, [x0, 48]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	add	x0, x0, x1
	ldr	x1, [sp, 24]
	str	x1, [x0, 24]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	add	x0, x0, x1
	str	xzr, [x0, 16]
	ldrsw	x0, [sp, 44]
	add	x1, x0, 1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x2, x0
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	add	x0, x0, x1
	ldr	x1, [sp, 32]
	add	x1, x1, x2
	str	x1, [x0, 32]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x2, x0, #104
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	add	x0, x0, x1
	ldr	x1, [sp, 32]
	add	x1, x1, x2
	str	x1, [x0, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	add	x0, x0, x1
	mov	x1, 1
	str	x1, [x0, 88]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 16]
	add	x0, x0, x1
	mov	x1, 57600
	movk	x1, 0x5f5, lsl 16
	str	x1, [x0, 8]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 16]
	add	x0, x0, x1
	strh	wzr, [x0, 32]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	add	x0, x0, x1
	mov	w1, 1
	str	w1, [x0, 8]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	add	x0, x0, x1
	str	xzr, [x0]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x2, x0
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 16]
	add	x0, x0, x1
	ldr	x1, [sp, 32]
	add	x1, x1, x2
	str	x1, [x0, 16]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 16]
	add	x0, x0, x1
	ldr	x1, [sp, 24]
	str	x1, [x0, 24]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 16]
	add	x0, x0, x1
	mov	w1, -2
	str	w1, [x0]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	add	x0, x0, x1
	str	xzr, [x0, 80]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L5:
	ldrsw	x1, [sp, 44]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 400]
	cmp	x1, x0
	blt	.L6
	ldr	x0, [sp, 32]
	sub	x0, x0, #104
	str	x0, [sp, 32]
	ldr	x0, [sp, 24]
	add	x0, x0, 104
	str	x0, [sp, 24]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 400]
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	add	x0, x0, x1
	str	xzr, [x0, 32]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 40]
	mov	x0, 0
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	primal_start_artificial, .-primal_start_artificial
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
