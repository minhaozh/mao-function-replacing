	.arch armv8-a
	.file	"treeup.c"
	.text
	.align	2
	.global	update_tree
	.type	update_tree, %function
update_tree:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	str	x5, [sp, 16]
	str	x6, [sp, 8]
	str	x7, [sp]
	ldr	x0, [sp, 152]
	ldr	x0, [x0, 16]
	ldr	x1, [sp, 16]
	cmp	x1, x0
	bne	.L2
	ldr	x0, [sp, 160]
	cmp	x0, 0
	blt	.L3
.L2:
	ldr	x0, [sp, 152]
	ldr	x0, [x0, 16]
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bne	.L4
	ldr	x0, [sp, 160]
	cmp	x0, 0
	ble	.L4
.L3:
	ldr	x0, [sp, 160]
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	str	x0, [sp, 160]
	b	.L5
.L4:
	ldr	x0, [sp, 160]
	cmp	x0, 0
	csneg	x0, x0, x0, ge
	neg	x0, x0
	str	x0, [sp, 160]
.L5:
	ldr	x0, [sp, 8]
	str	x0, [sp, 128]
	ldr	x0, [sp, 128]
	ldr	x1, [x0]
	ldr	x0, [sp, 160]
	add	x1, x1, x0
	ldr	x0, [sp, 128]
	str	x1, [x0]
.L6:
	ldr	x0, [sp, 128]
	ldr	x0, [x0, 16]
	str	x0, [sp, 120]
	ldr	x0, [sp, 120]
	cmp	x0, 0
	beq	.L35
	nop
	b	.L8
.L37:
	nop
.L8:
	ldr	x0, [sp, 120]
	ldr	x1, [x0]
	ldr	x0, [sp, 160]
	add	x1, x1, x0
	ldr	x0, [sp, 120]
	str	x1, [x0]
	ldr	x0, [sp, 120]
	str	x0, [sp, 128]
	b	.L6
.L35:
	nop
.L7:
	ldr	x1, [sp, 128]
	ldr	x0, [sp, 8]
	cmp	x1, x0
	beq	.L36
	ldr	x0, [sp, 128]
	ldr	x0, [x0, 32]
	str	x0, [sp, 120]
	ldr	x0, [sp, 120]
	cmp	x0, 0
	bne	.L37
	ldr	x0, [sp, 128]
	ldr	x0, [x0, 24]
	str	x0, [sp, 128]
	b	.L7
.L36:
	nop
.L10:
	ldr	x0, [sp, 24]
	str	x0, [sp, 120]
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 24]
	str	x0, [sp, 128]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 88]
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	str	x0, [sp, 104]
	ldr	x0, [sp, 16]
	str	x0, [sp, 112]
	ldr	x0, [sp, 152]
	str	x0, [sp, 136]
	b	.L12
.L19:
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 32]
	cmp	x0, 0
	beq	.L13
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 32]
	ldr	x1, [sp, 120]
	ldr	x1, [x1, 40]
	str	x1, [x0, 40]
.L13:
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 40]
	cmp	x0, 0
	beq	.L14
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 40]
	ldr	x1, [sp, 120]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	b	.L15
.L14:
	ldr	x0, [sp, 120]
	ldr	x1, [x0, 32]
	ldr	x0, [sp, 128]
	str	x1, [x0, 16]
.L15:
	ldr	x0, [sp, 120]
	ldr	x1, [sp, 112]
	str	x1, [x0, 24]
	ldr	x0, [sp, 112]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 120]
	str	x1, [x0, 32]
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 32]
	cmp	x0, 0
	beq	.L16
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 32]
	ldr	x1, [sp, 120]
	str	x1, [x0, 40]
.L16:
	ldr	x0, [sp, 112]
	ldr	x1, [sp, 120]
	str	x1, [x0, 16]
	ldr	x0, [sp, 120]
	str	xzr, [x0, 40]
	ldr	x0, [sp, 120]
	ldr	w0, [x0, 8]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	and	x0, x0, 255
	str	x0, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	bne	.L17
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 80]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 96]
	b	.L18
.L17:
	ldr	x0, [sp, 120]
	ldr	x1, [x0, 80]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	str	x0, [sp, 96]
.L18:
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 48]
	str	x0, [sp, 72]
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 88]
	str	x0, [sp, 64]
	ldr	x0, [sp, 48]
	mov	w1, w0
	ldr	x0, [sp, 120]
	str	w1, [x0, 8]
	ldr	x0, [sp, 120]
	ldr	x1, [sp, 32]
	str	x1, [x0, 80]
	ldr	x0, [sp, 120]
	ldr	x1, [sp, 136]
	str	x1, [x0, 48]
	ldr	x0, [sp, 120]
	ldr	x1, [sp, 104]
	str	x1, [x0, 88]
	ldr	x0, [sp, 120]
	str	x0, [sp, 112]
	ldr	x0, [sp, 80]
	str	x0, [sp, 48]
	ldr	x0, [sp, 96]
	str	x0, [sp, 32]
	ldr	x0, [sp, 72]
	str	x0, [sp, 136]
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 64]
	sub	x0, x1, x0
	str	x0, [sp, 104]
	ldr	x0, [sp, 128]
	str	x0, [sp, 120]
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 24]
	str	x0, [sp, 128]
.L12:
	ldr	x1, [sp, 120]
	ldr	x0, [sp]
	cmp	x1, x0
	bne	.L19
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 168]
	cmp	x1, x0
	ble	.L20
	ldr	x0, [sp]
	str	x0, [sp, 120]
	b	.L21
.L24:
	ldr	x0, [sp, 120]
	ldr	x1, [x0, 88]
	ldr	x0, [sp, 88]
	sub	x1, x1, x0
	ldr	x0, [sp, 120]
	str	x1, [x0, 88]
	ldr	x0, [sp, 120]
	ldr	w0, [x0, 8]
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	cmp	x1, x0
	beq	.L22
	ldr	x0, [sp, 120]
	ldr	x1, [x0, 80]
	ldr	x0, [sp, 40]
	add	x1, x1, x0
	ldr	x0, [sp, 120]
	str	x1, [x0, 80]
	b	.L23
.L22:
	ldr	x0, [sp, 120]
	ldr	x1, [x0, 80]
	ldr	x0, [sp, 40]
	sub	x1, x1, x0
	ldr	x0, [sp, 120]
	str	x1, [x0, 80]
.L23:
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 24]
	str	x0, [sp, 120]
.L21:
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 144]
	cmp	x1, x0
	bne	.L24
	ldr	x0, [sp, 16]
	str	x0, [sp, 120]
	b	.L25
.L28:
	ldr	x0, [sp, 120]
	ldr	x1, [x0, 88]
	ldr	x0, [sp, 88]
	add	x1, x1, x0
	ldr	x0, [sp, 120]
	str	x1, [x0, 88]
	ldr	x0, [sp, 120]
	ldr	w0, [x0, 8]
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	cmp	x1, x0
	bne	.L26
	ldr	x0, [sp, 120]
	ldr	x1, [x0, 80]
	ldr	x0, [sp, 40]
	add	x1, x1, x0
	ldr	x0, [sp, 120]
	str	x1, [x0, 80]
	b	.L27
.L26:
	ldr	x0, [sp, 120]
	ldr	x1, [x0, 80]
	ldr	x0, [sp, 40]
	sub	x1, x1, x0
	ldr	x0, [sp, 120]
	str	x1, [x0, 80]
.L27:
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 24]
	str	x0, [sp, 120]
.L25:
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 144]
	cmp	x1, x0
	bne	.L28
	b	.L38
.L20:
	ldr	x0, [sp]
	str	x0, [sp, 120]
	b	.L30
.L31:
	ldr	x0, [sp, 120]
	ldr	x1, [x0, 88]
	ldr	x0, [sp, 88]
	sub	x1, x1, x0
	ldr	x0, [sp, 120]
	str	x1, [x0, 88]
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 24]
	str	x0, [sp, 120]
.L30:
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 144]
	cmp	x1, x0
	bne	.L31
	ldr	x0, [sp, 16]
	str	x0, [sp, 120]
	b	.L32
.L33:
	ldr	x0, [sp, 120]
	ldr	x1, [x0, 88]
	ldr	x0, [sp, 88]
	add	x1, x1, x0
	ldr	x0, [sp, 120]
	str	x1, [x0, 88]
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 24]
	str	x0, [sp, 120]
.L32:
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 144]
	cmp	x1, x0
	bne	.L33
.L38:
	nop
	add	sp, sp, 144
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	update_tree, .-update_tree
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
