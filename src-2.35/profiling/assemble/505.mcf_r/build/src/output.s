	.arch armv8-a
	.file	"output.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"w"
	.align	3
.LC1:
	.string	"()\n"
	.align	3
.LC2:
	.string	"***\n"
	.align	3
.LC3:
	.string	"%d\n"
	.text
	.align	2
	.global	write_circulations
	.type	write_circulations, %function
write_circulations:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	xzr, [sp, 48]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 576]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 440]
	mov	x2, x0
	mov	x0, x2
	lsl	x0, x0, 3
	add	x0, x0, x2
	lsl	x0, x0, 3
	neg	x0, x0
	add	x0, x1, x0
	str	x0, [sp, 40]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	ldr	x0, [sp, 24]
	bl	fopen
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L2
	mov	x0, -1
	b	.L3
.L2:
	adrp	x0, getArcPosition
	add	x1, x0, :lo12:getArcPosition
	ldr	x0, [sp, 16]
	bl	refresh_neighbour_lists
	ldr	x0, [sp, 16]
	ldr	x2, [x0, 552]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 400]
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	x0, [x0, 56]
	str	x0, [sp, 72]
	b	.L4
.L15:
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 56]
	cmp	x0, 0
	beq	.L5
	ldr	x3, [sp, 48]
	mov	x2, 3
	mov	x1, 1
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	fwrite
	ldr	x0, [sp, 72]
	str	x0, [sp, 64]
	b	.L6
.L14:
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bcc	.L7
	ldr	x3, [sp, 48]
	mov	x2, 4
	mov	x1, 1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	fwrite
.L7:
	ldr	x0, [sp, 64]
	ldr	x0, [x0, 24]
	ldr	w0, [x0, 96]
	neg	w0, w0
	mov	w2, w0
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	ldr	x0, [sp, 48]
	bl	fprintf
	ldr	x0, [sp, 64]
	ldr	x2, [x0, 24]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 408]
	mov	x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	x0, [x0, 56]
	str	x0, [sp, 56]
	b	.L8
.L11:
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 56]
	cmp	x0, 0
	bne	.L16
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 40]
	str	x0, [sp, 56]
.L8:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L11
	b	.L10
.L16:
	nop
.L10:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L12
	ldr	x0, [sp, 48]
	bl	fclose
	mov	x0, -1
	b	.L3
.L12:
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 24]
	ldr	w0, [x0, 96]
	cmp	w0, 0
	beq	.L13
	ldr	x0, [sp, 56]
	str	x0, [sp, 64]
	b	.L6
.L13:
	str	xzr, [sp, 64]
.L6:
	ldr	x0, [sp, 64]
	cmp	x0, 0
	bne	.L14
.L5:
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 40]
	str	x0, [sp, 72]
.L4:
	ldr	x0, [sp, 72]
	cmp	x0, 0
	bne	.L15
	ldr	x0, [sp, 48]
	bl	fclose
	mov	x0, 0
.L3:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	write_circulations, .-write_circulations
	.section	.rodata
	.align	3
.LC4:
	.string	"%.0f\n"
	.text
	.align	2
	.global	write_objective_value
	.type	write_objective_value, %function
write_objective_value:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	xzr, [sp, 40]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	ldr	x0, [sp, 24]
	bl	fopen
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L18
	mov	x0, -1
	b	.L19
.L18:
	ldr	x0, [sp, 16]
	bl	flow_cost
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	ldr	x0, [sp, 40]
	bl	fprintf
	ldr	x0, [sp, 40]
	bl	fclose
	mov	x0, 0
.L19:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	write_objective_value, .-write_objective_value
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
