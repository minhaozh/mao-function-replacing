	.arch armv8-a
	.file	"pbeampp.c"
	.text
	.local	full_group_end_arc
	.comm	full_group_end_arc,8,8
	.align	2
	.global	set_static_vars
	.type	set_static_vars, %function
set_static_vars:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 632]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 640]
	mul	x0, x1, x0
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp]
	add	x1, x0, x1
	adrp	x0, full_group_end_arc
	add	x0, x0, :lo12:full_group_end_arc
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	set_static_vars, .-set_static_vars
	.align	2
	.global	bea_is_dual_infeasible
	.type	bea_is_dual_infeasible, %function
bea_is_dual_infeasible:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	cmp	x0, 0
	bge	.L3
	ldr	x0, [sp, 8]
	ldrsh	w0, [x0, 32]
	cmp	w0, 1
	beq	.L4
.L3:
	ldr	x0, [sp]
	cmp	x0, 0
	ble	.L5
	ldr	x0, [sp, 8]
	ldrsh	w0, [x0, 32]
	cmp	w0, 2
	bne	.L5
.L4:
	mov	w0, 1
	b	.L7
.L5:
	mov	w0, 0
.L7:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	bea_is_dual_infeasible, .-bea_is_dual_infeasible
	.align	2
	.global	cost_compare
	.type	cost_compare, %function
cost_compare:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x1, [x0, 16]
	ldr	x0, [sp]
	ldr	x0, [x0]
	ldr	x0, [x0, 16]
	cmp	x1, x0
	bge	.L9
	mov	w0, 1
	b	.L10
.L9:
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x1, [x0, 16]
	ldr	x0, [sp]
	ldr	x0, [x0]
	ldr	x0, [x0, 16]
	cmp	x1, x0
	ble	.L11
	mov	w0, -1
	b	.L10
.L11:
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L12
	mov	w0, 1
	b	.L10
.L12:
	mov	w0, -1
.L10:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	cost_compare, .-cost_compare
	.align	2
	.global	primal_bea_mpp
	.type	primal_bea_mpp, %function
primal_bea_mpp:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	str	w5, [sp, 36]
	str	x6, [sp, 24]
	str	x7, [sp, 16]
	mov	x0, 1
	str	x0, [sp, 136]
	str	xzr, [sp, 112]
	b	.L14
.L19:
	ldr	x0, [sp, 136]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	str	x0, [sp, 104]
	ldr	x0, [sp, 136]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0, 24]
	str	x0, [sp, 96]
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 16]
	ldr	x0, [x0]
	sub	x1, x1, x0
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 24]
	ldr	x0, [x0]
	add	x0, x1, x0
	str	x0, [sp, 88]
	ldr	x0, [sp, 96]
	cmp	x0, 0
	ble	.L15
	ldr	x0, [sp, 88]
	cmp	x0, 0
	bge	.L16
	ldr	x0, [sp, 104]
	ldrsh	w0, [x0, 32]
	cmp	w0, 1
	beq	.L17
.L16:
	ldr	x0, [sp, 88]
	cmp	x0, 0
	ble	.L15
	ldr	x0, [sp, 104]
	ldrsh	w0, [x0, 32]
	cmp	w0, 2
	bne	.L15
.L17:
	ldr	x0, [sp, 112]
	add	x0, x0, 1
	str	x0, [sp, 112]
	ldr	x0, [sp, 112]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 104]
	str	x1, [x0]
	ldr	x0, [sp, 112]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 88]
	str	x1, [x0, 8]
	ldr	x0, [sp, 112]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [sp, 88]
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	str	x0, [x1, 16]
	ldr	x0, [sp, 112]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	xzr, [x0, 24]
.L15:
	ldr	x0, [sp, 136]
	add	x0, x0, 1
	str	x0, [sp, 136]
.L14:
	ldr	x0, [sp, 136]
	cmp	x0, 60
	bgt	.L18
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 136]
	cmp	x1, x0
	ble	.L19
.L18:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x1, [sp, 112]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 80]
.L20:
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x1, [sp, 16]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [sp, 104]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	adrp	x0, full_group_end_arc
	add	x0, x0, :lo12:full_group_end_arc
	ldr	x0, [x0]
	cmp	x1, x0
	bcc	.L21
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x1, [sp, 152]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #72
	add	x1, x2, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	b	.L23
.L21:
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x1, [sp, 152]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	b	.L23
.L25:
	ldr	x0, [sp, 104]
	ldrsh	w0, [x0, 32]
	cmp	w0, 0
	ble	.L24
	ldr	x0, [sp, 104]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 16]
	ldr	x0, [x0]
	sub	x1, x1, x0
	ldr	x0, [sp, 104]
	ldr	x0, [x0, 24]
	ldr	x0, [x0]
	add	x0, x1, x0
	str	x0, [sp, 88]
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 104]
	bl	bea_is_dual_infeasible
	cmp	w0, 0
	beq	.L24
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x1, [x0]
	add	x1, x1, 1
	str	x1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x0, [x0]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 104]
	str	x1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x0, [x0]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 88]
	str	x1, [x0, 8]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x0, [x0]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [sp, 88]
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	str	x0, [x1, 16]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x0, [x0]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	xzr, [x0, 24]
.L24:
	ldr	x1, [sp, 144]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 104]
	add	x0, x0, x1
	str	x0, [sp, 104]
.L23:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldr	x1, [sp, 104]
	cmp	x1, x0
	bcc	.L25
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldr	x1, [sp, 56]
	cmp	x1, x0
	bhi	.L26
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 64]
	str	x1, [x0]
.L26:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldr	x1, [sp, 80]
	cmp	x1, x0
	beq	.L33
	str	xzr, [sp, 120]
	str	xzr, [sp, 128]
	b	.L28
.L29:
	ldr	x0, [sp, 128]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 120]
	add	x0, x1, x0
	str	x0, [sp, 120]
	ldr	x0, [sp, 128]
	add	x0, x0, 1
	str	x0, [sp, 128]
.L28:
	ldr	x1, [sp, 128]
	ldr	x0, [sp, 144]
	cmp	x1, x0
	blt	.L29
	ldr	x0, [sp, 120]
	cmp	x0, 59
	bgt	.L34
	b	.L20
.L33:
	nop
	b	.L27
.L34:
	nop
.L27:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, -1
	str	x1, [x0, 24]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L31
	mov	x0, 0
	b	.L32
.L31:
	ldr	x0, [sp, 40]
	add	x4, x0, 8
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	adrp	x0, cost_compare
	add	x3, x0, :lo12:cost_compare
	mov	x2, 8
	mov	x0, x4
	bl	qsort
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
.L32:
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	primal_bea_mpp, .-primal_bea_mpp
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
