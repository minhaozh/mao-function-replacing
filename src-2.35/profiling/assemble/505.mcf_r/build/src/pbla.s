	.arch armv8-a
	.file	"pbla.c"
	.text
	.align	2
	.global	primal_iminus
	.type	primal_iminus, %function
primal_iminus:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	x4, [sp, 8]
	str	xzr, [sp, 56]
	b	.L2
.L8:
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 88]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 88]
	cmp	x1, x0
	bge	.L3
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 8]
	cmp	w0, 0
	beq	.L4
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 80]
	cmp	x1, x0
	ble	.L5
	ldr	x0, [sp, 24]
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 80]
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 32]
	str	xzr, [x0]
	b	.L5
.L4:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	ldr	x0, [x0, 24]
	cmp	x0, 0
	beq	.L5
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 80]
	mov	x2, 1
	sub	x0, x2, x0
	cmp	x1, x0
	ble	.L5
	ldr	x0, [sp, 24]
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 80]
	mov	x1, 1
	sub	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 32]
	str	xzr, [x0]
.L5:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	str	x0, [sp, 24]
	b	.L2
.L3:
	ldr	x0, [sp, 16]
	ldr	w0, [x0, 8]
	cmp	w0, 0
	bne	.L6
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 80]
	cmp	x1, x0
	blt	.L7
	ldr	x0, [sp, 16]
	str	x0, [sp, 56]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 80]
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 32]
	mov	x1, 1
	str	x1, [x0]
	b	.L7
.L6:
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 24]
	ldr	x0, [x0, 24]
	cmp	x0, 0
	beq	.L7
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 80]
	mov	x2, 1
	sub	x0, x2, x0
	cmp	x1, x0
	blt	.L7
	ldr	x0, [sp, 16]
	str	x0, [sp, 56]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 80]
	mov	x1, 1
	sub	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 32]
	mov	x1, 1
	str	x1, [x0]
.L7:
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 24]
	str	x0, [sp, 16]
.L2:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L8
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	primal_iminus, .-primal_iminus
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
