	.arch armv8-a
	.file	"two-function.c"
	.text
	.align	2
	.global	foo
	.type	foo, %function
foo:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	add	w0, w0, 2
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	foo, .-foo
	.align	2
	.global	foo2
	.type	foo2, %function
foo2:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	add	w0, w0, 4
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	foo2, .-foo2
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	w0, 1
	bl	foo
	mov	w19, w0
	mov	w0, 2
	bl	foo2
	add	w0, w19, w0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
