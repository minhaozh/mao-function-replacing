	.arch armv8-a
	.file	"matrixMul.c"
	.text
	.section	.rodata
	.align	3
.LC2:
	.string	"\347\237\251\351\230\2651\344\270\216\347\237\251\351\230\2652\347\233\270\344\271\230\347\232\204\347\273\223\346\236\234\344\270\272:"
	.align	3
.LC3:
	.string	"%d\t"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1,0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 48
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 72
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	str	wzr, [sp, 28]
	b	.L2
.L7:
	str	wzr, [sp, 32]
	b	.L3
.L6:
	ldrsw	x2, [sp, 32]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 96
	str	wzr, [x1, x0]
	str	wzr, [sp, 36]
	b	.L4
.L5:
	ldrsw	x2, [sp, 32]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 96
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 36]
	ldrsw	x1, [sp, 28]
	lsl	x1, x1, 1
	add	x0, x1, x0
	lsl	x0, x0, 2
	add	x1, sp, 48
	ldr	w3, [x1, x0]
	ldrsw	x4, [sp, 32]
	ldrsw	x1, [sp, 36]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	add	x0, x0, x4
	lsl	x0, x0, 2
	add	x1, sp, 72
	ldr	w0, [x1, x0]
	mul	w0, w3, w0
	add	w2, w2, w0
	ldrsw	x3, [sp, 32]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 96
	str	w2, [x1, x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L4:
	ldr	w0, [sp, 36]
	cmp	w0, 1
	ble	.L5
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L3:
	ldr	w0, [sp, 32]
	cmp	w0, 2
	ble	.L6
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 2
	ble	.L7
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	str	wzr, [sp, 40]
	b	.L8
.L11:
	str	wzr, [sp, 44]
	b	.L9
.L10:
	ldrsw	x2, [sp, 44]
	ldrsw	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 96
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L9:
	ldr	w0, [sp, 44]
	cmp	w0, 2
	ble	.L10
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L8:
	ldr	w0, [sp, 40]
	cmp	w0, 2
	ble	.L11
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 136]
	ldr	x3, [x0]
	subs	x2, x2, x3
	mov	x3, 0
	beq	.L13
	bl	__stack_chk_fail
.L13:
	mov	w0, w1
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	2
	.word	3
	.word	4
	.word	5
	.word	3
	.word	5
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.text
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
