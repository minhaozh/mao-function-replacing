	.arch armv8-a
	.file	"fibonacci.c"
	.text
	.align	2
	.global	fun
	.type	fun, %function
fun:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bgt	.L2
	ldr	w0, [sp, 44]
	b	.L3
.L2:
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	bl	fun
	mov	w19, w0
	ldr	w0, [sp, 44]
	sub	w0, w0, #2
	bl	fun
	add	w0, w19, w0
.L3:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	fun, .-fun
	.section	.rodata
	.align	3
.LC0:
	.string	"%d, "
	.align	3
.LC1:
	.string	"\347\254\254 %d \351\241\271\346\230\257\357\274\232%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	w0, 10
	str	w0, [sp, 28]
	str	wzr, [sp, 24]
	b	.L5
.L7:
	ldr	w0, [sp, 24]
	bl	fun
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 24]
	cmp	w0, 0
	beq	.L6
	ldr	w2, [sp, 24]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 1
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	bne	.L6
	mov	w0, 10
	bl	putchar
.L6:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L5:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L7
	ldr	w0, [sp, 28]
	bl	fun
	mov	w2, w0
	ldr	w1, [sp, 28]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
