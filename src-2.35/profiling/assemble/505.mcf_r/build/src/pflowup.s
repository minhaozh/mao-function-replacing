	.arch armv8-a
	.file	"pflowup.c"
	.text
	.align	2
	.global	primal_update_flow
	.type	primal_update_flow, %function
primal_update_flow:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	b	.L2
.L5:
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 8]
	cmp	w0, 0
	beq	.L3
	ldr	x0, [sp, 24]
	str	xzr, [x0, 80]
	b	.L4
.L3:
	ldr	x0, [sp, 24]
	mov	x1, 1
	str	x1, [x0, 80]
.L4:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	str	x0, [sp, 24]
.L2:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 8]
	cmp	x1, x0
	bne	.L5
	b	.L6
.L9:
	ldr	x0, [sp, 16]
	ldr	w0, [x0, 8]
	cmp	w0, 0
	beq	.L7
	ldr	x0, [sp, 16]
	mov	x1, 1
	str	x1, [x0, 80]
	b	.L8
.L7:
	ldr	x0, [sp, 16]
	str	xzr, [x0, 80]
.L8:
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 24]
	str	x0, [sp, 16]
.L6:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 8]
	cmp	x1, x0
	bne	.L9
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	primal_update_flow, .-primal_update_flow
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
