	.arch armv8-a
	.file	"inverse_matrix.c"
	.text
.Ltext0:
	.section	.rodata
	.align	3
.LC0:
	.string	"\nInverse of Entered Matrix is not possible"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.file 1 "inverse_matrix.c"
	.loc 1 12 33
	.cfi_startproc
	sub	sp, sp, #2576
	.cfi_def_cfa_offset 2576
	stp	x29, x30, [sp]
	.cfi_offset 29, -2576
	.cfi_offset 30, -2568
	mov	x29, sp
	str	d8, [sp, 16]
	.cfi_offset 72, -2560
	str	w0, [sp, 44]
	str	x1, [sp, 32]
	.loc 1 17 8
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bgt	.L2
	.loc 1 18 11
	mov	w0, 10
	str	w0, [sp, 2564]
	b	.L3
.L2:
	.loc 1 20 22
	ldr	x0, [sp, 32]
	add	x0, x0, 8
	.loc 1 20 13
	ldr	x0, [x0]
	bl	atoi
	str	w0, [sp, 2564]
.L3:
	.loc 1 21 22
	mov	x0, 0
	bl	time
	.loc 1 21 5
	bl	srand
	.loc 1 23 12
	str	wzr, [sp, 2572]
	.loc 1 23 5
	b	.L4
.L7:
	.loc 1 24 16
	str	wzr, [sp, 2568]
	.loc 1 24 9
	b	.L5
.L6:
	.loc 1 25 25 discriminator 3
	ldr	w1, [sp, 2572]
	ldr	w0, [sp, 2564]
	mul	w1, w1, w0
	.loc 1 25 29 discriminator 3
	ldr	w0, [sp, 2568]
	add	w0, w1, w0
	.loc 1 25 33 discriminator 3
	scvtf	d8, w0
	.loc 1 25 41 discriminator 3
	bl	rand
	.loc 1 25 39 discriminator 3
	scvtf	d0, w0
	.loc 1 25 48 discriminator 3
	mov	x0, 281474972516352
	movk	x0, 0x41df, lsl 48
	fmov	d1, x0
	fdiv	d0, d0, d1
	.loc 1 25 33 discriminator 3
	fadd	d0, d8, d0
	fcvt	s0, d0
	.loc 1 25 21 discriminator 3
	ldrsw	x2, [sp, 2568]
	ldrsw	x1, [sp, 2572]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 56
	str	s0, [x1, x0]
	.loc 1 24 29 discriminator 3
	ldr	w0, [sp, 2568]
	add	w0, w0, 1
	str	w0, [sp, 2568]
.L5:
	.loc 1 24 9 discriminator 1
	ldr	w1, [sp, 2568]
	ldr	w0, [sp, 2564]
	cmp	w1, w0
	blt	.L6
	.loc 1 23 25 discriminator 2
	ldr	w0, [sp, 2572]
	add	w0, w0, 1
	str	w0, [sp, 2572]
.L4:
	.loc 1 23 5 discriminator 1
	ldr	w1, [sp, 2572]
	ldr	w0, [sp, 2564]
	cmp	w1, w0
	blt	.L7
	.loc 1 30 9
	ldr	s0, [sp, 2564]
	scvtf	s0, s0
	add	x0, sp, 56
	bl	determinant
	str	s0, [sp, 2560]
	.loc 1 31 8
	ldr	s0, [sp, 2560]
	fcmp	s0, #0.0
	bne	.L8
	.loc 1 32 9
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	puts
	b	.L9
.L8:
	.loc 1 34 9
	ldr	s0, [sp, 2564]
	scvtf	s0, s0
	add	x0, sp, 56
	bl	cofactor
.L9:
	mov	w0, 0
	.loc 1 35 1
	ldp	x29, x30, [sp]
	ldr	d8, [sp, 16]
	add	sp, sp, 2576
	.cfi_restore 72
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.align	2
	.global	determinant
	.type	determinant, %function
determinant:
.LFB3:
	.loc 1 38 45
	.cfi_startproc
	sub	sp, sp, #2576
	.cfi_def_cfa_offset 2576
	stp	x29, x30, [sp]
	.cfi_offset 29, -2576
	.cfi_offset 30, -2568
	mov	x29, sp
	str	d8, [sp, 16]
	.cfi_offset 72, -2560
	str	x0, [sp, 40]
	str	s0, [sp, 36]
	.loc 1 39 11
	fmov	s0, 1.0e+0
	str	s0, [sp, 2572]
	.loc 1 39 18
	str	wzr, [sp, 2568]
	.loc 1 41 8
	ldr	s1, [sp, 36]
	fmov	s0, 1.0e+0
	fcmp	s1, s0
	bne	.L12
	.loc 1 42 21
	ldr	x0, [sp, 40]
	ldr	s0, [x0]
	b	.L23
.L12:
	.loc 1 44 13
	str	wzr, [sp, 2568]
	.loc 1 45 16
	str	wzr, [sp, 2548]
	.loc 1 45 9
	b	.L14
.L22:
	.loc 1 46 15
	str	wzr, [sp, 2556]
	.loc 1 47 15
	str	wzr, [sp, 2552]
	.loc 1 48 20
	str	wzr, [sp, 2564]
	.loc 1 48 13
	b	.L15
.L21:
	.loc 1 49 24
	str	wzr, [sp, 2560]
	.loc 1 49 17
	b	.L16
.L20:
	.loc 1 50 29
	ldrsw	x2, [sp, 2560]
	ldrsw	x1, [sp, 2564]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 48
	str	wzr, [x1, x0]
	.loc 1 51 24
	ldr	w0, [sp, 2564]
	cmp	w0, 0
	beq	.L17
	.loc 1 51 32 discriminator 1
	ldr	w1, [sp, 2560]
	ldr	w0, [sp, 2548]
	cmp	w1, w0
	beq	.L17
	.loc 1 52 36
	ldrsw	x1, [sp, 2564]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x0, x0, x1
	.loc 1 52 39
	ldrsw	x1, [sp, 2560]
	ldr	s0, [x0, x1, lsl 2]
	.loc 1 52 33
	ldrsw	x2, [sp, 2552]
	ldrsw	x1, [sp, 2556]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 48
	str	s0, [x1, x0]
	.loc 1 53 31
	ldr	s0, [sp, 2552]
	scvtf	s1, s0
	.loc 1 53 36
	ldr	s2, [sp, 36]
	fmov	s0, 2.0e+0
	fsub	s0, s2, s0
	.loc 1 53 28
	fcmpe	s1, s0
	bpl	.L25
	.loc 1 54 30
	ldr	w0, [sp, 2552]
	add	w0, w0, 1
	str	w0, [sp, 2552]
	b	.L17
.L25:
	.loc 1 56 31
	str	wzr, [sp, 2552]
	.loc 1 57 30
	ldr	w0, [sp, 2556]
	add	w0, w0, 1
	str	w0, [sp, 2556]
.L17:
	.loc 1 49 37 discriminator 2
	ldr	w0, [sp, 2560]
	add	w0, w0, 1
	str	w0, [sp, 2560]
.L16:
	.loc 1 49 31 discriminator 1
	ldr	s0, [sp, 2560]
	scvtf	s0, s0
	.loc 1 49 17 discriminator 1
	ldr	s1, [sp, 36]
	fcmpe	s1, s0
	bgt	.L20
	.loc 1 48 33 discriminator 2
	ldr	w0, [sp, 2564]
	add	w0, w0, 1
	str	w0, [sp, 2564]
.L15:
	.loc 1 48 27 discriminator 1
	ldr	s0, [sp, 2564]
	scvtf	s0, s0
	.loc 1 48 13 discriminator 1
	ldr	s1, [sp, 36]
	fcmpe	s1, s0
	bgt	.L21
	.loc 1 62 34 discriminator 2
	ldr	x0, [sp, 40]
	ldrsw	x1, [sp, 2548]
	ldr	s8, [x0, x1, lsl 2]
	.loc 1 62 40 discriminator 2
	ldr	s1, [sp, 36]
	fmov	s0, 1.0e+0
	fsub	s0, s1, s0
	add	x0, sp, 48
	bl	determinant
	.loc 1 62 38 discriminator 2
	fmul	s1, s8, s0
	.loc 1 62 27 discriminator 2
	ldr	s0, [sp, 2572]
	fmul	s0, s1, s0
	.loc 1 62 17 discriminator 2
	ldr	s1, [sp, 2568]
	fadd	s0, s1, s0
	str	s0, [sp, 2568]
	.loc 1 63 15 discriminator 2
	ldr	s0, [sp, 2572]
	fneg	s0, s0
	str	s0, [sp, 2572]
	.loc 1 45 29 discriminator 2
	ldr	w0, [sp, 2548]
	add	w0, w0, 1
	str	w0, [sp, 2548]
.L14:
	.loc 1 45 23 discriminator 1
	ldr	s0, [sp, 2548]
	scvtf	s0, s0
	.loc 1 45 9 discriminator 1
	ldr	s1, [sp, 36]
	fcmpe	s1, s0
	bgt	.L22
	.loc 1 67 12
	ldr	s0, [sp, 2568]
.L23:
	.loc 1 68 1 discriminator 1
	ldp	x29, x30, [sp]
	ldr	d8, [sp, 16]
	add	sp, sp, 2576
	.cfi_restore 72
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	determinant, .-determinant
	.align	2
	.global	cofactor
	.type	cofactor, %function
cofactor:
.LFB4:
	.loc 1 70 43
	.cfi_startproc
	mov	x12, 5088
	sub	sp, sp, x12
	.cfi_def_cfa_offset 5088
	stp	x29, x30, [sp]
	.cfi_offset 29, -5088
	.cfi_offset 30, -5080
	mov	x29, sp
	str	d8, [sp, 16]
	.cfi_offset 72, -5072
	str	x0, [sp, 40]
	str	s0, [sp, 36]
	.loc 1 73 12
	str	wzr, [sp, 5080]
	.loc 1 73 5
	b	.L27
.L37:
	.loc 1 74 16
	str	wzr, [sp, 5084]
	.loc 1 74 9
	b	.L28
.L36:
	.loc 1 75 15
	str	wzr, [sp, 5076]
	.loc 1 76 15
	str	wzr, [sp, 5072]
	.loc 1 77 20
	str	wzr, [sp, 5068]
	.loc 1 77 13
	b	.L29
.L35:
	.loc 1 78 24
	str	wzr, [sp, 5064]
	.loc 1 78 17
	b	.L30
.L34:
	.loc 1 79 24
	ldr	w1, [sp, 5068]
	ldr	w0, [sp, 5080]
	cmp	w1, w0
	beq	.L31
	.loc 1 79 32 discriminator 1
	ldr	w1, [sp, 5064]
	ldr	w0, [sp, 5084]
	cmp	w1, w0
	beq	.L31
	.loc 1 80 38
	ldrsw	x1, [sp, 5068]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 40]
	add	x0, x0, x1
	.loc 1 80 41
	ldrsw	x1, [sp, 5064]
	ldr	s0, [x0, x1, lsl 2]
	.loc 1 80 33
	ldrsw	x2, [sp, 5072]
	ldrsw	x1, [sp, 5076]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 2560
	str	s0, [x1, x0]
	.loc 1 81 31
	ldr	s0, [sp, 5072]
	scvtf	s1, s0
	.loc 1 81 36
	ldr	s2, [sp, 36]
	fmov	s0, 2.0e+0
	fsub	s0, s2, s0
	.loc 1 81 28
	fcmpe	s1, s0
	bpl	.L39
	.loc 1 82 30
	ldr	w0, [sp, 5072]
	add	w0, w0, 1
	str	w0, [sp, 5072]
	b	.L31
.L39:
	.loc 1 84 31
	str	wzr, [sp, 5072]
	.loc 1 85 30
	ldr	w0, [sp, 5076]
	add	w0, w0, 1
	str	w0, [sp, 5076]
.L31:
	.loc 1 78 37 discriminator 2
	ldr	w0, [sp, 5064]
	add	w0, w0, 1
	str	w0, [sp, 5064]
.L30:
	.loc 1 78 31 discriminator 1
	ldr	s0, [sp, 5064]
	scvtf	s0, s0
	.loc 1 78 17 discriminator 1
	ldr	s1, [sp, 36]
	fcmpe	s1, s0
	bgt	.L34
	.loc 1 77 33 discriminator 2
	ldr	w0, [sp, 5068]
	add	w0, w0, 1
	str	w0, [sp, 5068]
.L29:
	.loc 1 77 27 discriminator 1
	ldr	s0, [sp, 5068]
	scvtf	s0, s0
	.loc 1 77 13 discriminator 1
	ldr	s1, [sp, 36]
	fcmpe	s1, s0
	bgt	.L35
	.loc 1 90 35 discriminator 2
	ldr	w1, [sp, 5080]
	ldr	w0, [sp, 5084]
	add	w0, w1, w0
	.loc 1 90 25 discriminator 2
	scvtf	d0, w0
	fmov	d1, d0
	fmov	d0, -1.0e+0
	bl	pow
	fmov	d8, d0
	.loc 1 90 42 discriminator 2
	ldr	s1, [sp, 36]
	fmov	s0, 1.0e+0
	fsub	s0, s1, s0
	add	x0, sp, 2560
	bl	determinant
	fcvt	d0, s0
	.loc 1 90 40 discriminator 2
	fmul	d0, d8, d0
	fcvt	s0, d0
	.loc 1 90 23 discriminator 2
	ldrsw	x2, [sp, 5084]
	ldrsw	x1, [sp, 5080]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 56
	str	s0, [x1, x0]
	.loc 1 74 29 discriminator 2
	ldr	w0, [sp, 5084]
	add	w0, w0, 1
	str	w0, [sp, 5084]
.L28:
	.loc 1 74 23 discriminator 1
	ldr	s0, [sp, 5084]
	scvtf	s0, s0
	.loc 1 74 9 discriminator 1
	ldr	s1, [sp, 36]
	fcmpe	s1, s0
	bgt	.L36
	.loc 1 73 25 discriminator 2
	ldr	w0, [sp, 5080]
	add	w0, w0, 1
	str	w0, [sp, 5080]
.L27:
	.loc 1 73 19 discriminator 1
	ldr	s0, [sp, 5080]
	scvtf	s0, s0
	.loc 1 73 5 discriminator 1
	ldr	s1, [sp, 36]
	fcmpe	s1, s0
	bgt	.L37
	.loc 1 93 5
	add	x0, sp, 56
	ldr	s0, [sp, 36]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	transpose
	.loc 1 94 1
	nop
	ldp	x29, x30, [sp]
	ldr	d8, [sp, 16]
	mov	x12, 5088
	add	sp, sp, x12
	.cfi_restore 72
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	cofactor, .-cofactor
	.section	.rodata
	.align	3
.LC1:
	.string	"\n\n\nThe inverse of matrix is : "
	.align	3
.LC2:
	.string	"\t%f"
	.text
	.align	2
	.global	transpose
	.type	transpose, %function
transpose:
.LFB5:
	.loc 1 97 63
	.cfi_startproc
	mov	x12, 5072
	sub	sp, sp, x12
	.cfi_def_cfa_offset 5072
	stp	x29, x30, [sp]
	.cfi_offset 29, -5072
	.cfi_offset 30, -5064
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	s0, [sp, 28]
	.loc 1 101 12
	str	wzr, [sp, 5068]
	.loc 1 101 5
	b	.L41
.L44:
	.loc 1 102 16
	str	wzr, [sp, 5064]
	.loc 1 102 9
	b	.L42
.L43:
	.loc 1 103 26 discriminator 3
	ldrsw	x1, [sp, 5064]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 32]
	add	x0, x0, x1
	.loc 1 103 29 discriminator 3
	ldrsw	x1, [sp, 5068]
	ldr	s0, [x0, x1, lsl 2]
	.loc 1 103 21 discriminator 3
	ldrsw	x2, [sp, 5064]
	ldrsw	x1, [sp, 5068]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 2560
	str	s0, [x1, x0]
	.loc 1 102 29 discriminator 3
	ldr	w0, [sp, 5064]
	add	w0, w0, 1
	str	w0, [sp, 5064]
.L42:
	.loc 1 102 23 discriminator 1
	ldr	s0, [sp, 5064]
	scvtf	s0, s0
	.loc 1 102 9 discriminator 1
	ldr	s1, [sp, 28]
	fcmpe	s1, s0
	bgt	.L43
	.loc 1 101 25 discriminator 2
	ldr	w0, [sp, 5068]
	add	w0, w0, 1
	str	w0, [sp, 5068]
.L41:
	.loc 1 101 19 discriminator 1
	ldr	s0, [sp, 5068]
	scvtf	s0, s0
	.loc 1 101 5 discriminator 1
	ldr	s1, [sp, 28]
	fcmpe	s1, s0
	bgt	.L44
	.loc 1 106 9
	ldr	s0, [sp, 28]
	ldr	x0, [sp, 40]
	bl	determinant
	str	s0, [sp, 5060]
	.loc 1 107 12
	str	wzr, [sp, 5068]
	.loc 1 107 5
	b	.L45
.L48:
	.loc 1 108 16
	str	wzr, [sp, 5064]
	.loc 1 108 9
	b	.L46
.L47:
	.loc 1 109 33 discriminator 3
	ldrsw	x2, [sp, 5064]
	ldrsw	x1, [sp, 5068]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 2560
	ldr	s1, [x1, x0]
	.loc 1 109 37 discriminator 3
	ldr	s0, [sp, 5060]
	fdiv	s0, s1, s0
	.loc 1 109 27 discriminator 3
	ldrsw	x2, [sp, 5064]
	ldrsw	x1, [sp, 5068]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 56
	str	s0, [x1, x0]
	.loc 1 108 29 discriminator 3
	ldr	w0, [sp, 5064]
	add	w0, w0, 1
	str	w0, [sp, 5064]
.L46:
	.loc 1 108 23 discriminator 1
	ldr	s0, [sp, 5064]
	scvtf	s0, s0
	.loc 1 108 9 discriminator 1
	ldr	s1, [sp, 28]
	fcmpe	s1, s0
	bgt	.L47
	.loc 1 107 25 discriminator 2
	ldr	w0, [sp, 5068]
	add	w0, w0, 1
	str	w0, [sp, 5068]
.L45:
	.loc 1 107 19 discriminator 1
	ldr	s0, [sp, 5068]
	scvtf	s0, s0
	.loc 1 107 5 discriminator 1
	ldr	s1, [sp, 28]
	fcmpe	s1, s0
	bgt	.L48
	.loc 1 112 5
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	.loc 1 114 12
	str	wzr, [sp, 5068]
	.loc 1 114 5
	b	.L49
.L52:
	.loc 1 115 16
	str	wzr, [sp, 5064]
	.loc 1 115 9
	b	.L50
.L51:
	.loc 1 116 38 discriminator 3
	ldrsw	x2, [sp, 5064]
	ldrsw	x1, [sp, 5068]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 56
	ldr	s0, [x1, x0]
	.loc 1 116 13 discriminator 3
	fcvt	d0, s0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	.loc 1 115 29 discriminator 3
	ldr	w0, [sp, 5064]
	add	w0, w0, 1
	str	w0, [sp, 5064]
.L50:
	.loc 1 115 23 discriminator 1
	ldr	s0, [sp, 5064]
	scvtf	s0, s0
	.loc 1 115 9 discriminator 1
	ldr	s1, [sp, 28]
	fcmpe	s1, s0
	bgt	.L51
	.loc 1 118 9 discriminator 2
	mov	w0, 10
	bl	putchar
	.loc 1 114 25 discriminator 2
	ldr	w0, [sp, 5068]
	add	w0, w0, 1
	str	w0, [sp, 5068]
.L49:
	.loc 1 114 19 discriminator 1
	ldr	s0, [sp, 5068]
	scvtf	s0, s0
	.loc 1 114 5 discriminator 1
	ldr	s1, [sp, 28]
	fcmpe	s1, s0
	bgt	.L52
	.loc 1 120 1
	nop
	nop
	ldp	x29, x30, [sp]
	mov	x12, 5072
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	transpose, .-transpose
.Letext0:
	.file 2 "/usr/local/lib/gcc/aarch64-unknown-linux-gnu/9.2.0/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/bits/sys_errlist.h"
	.file 7 "/usr/include/math.h"
	.file 8 "/usr/include/time.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x695
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xc
	.4byte	.LASF79
	.4byte	.LASF80
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.4byte	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x8c
	.byte	0x19
	.4byte	0x6a
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8d
	.byte	0x1b
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.4byte	0x91
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x7
	.4byte	0x91
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.byte	0x8
	.4byte	0x23c
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x4
	.byte	0xf7
	.byte	0x7
	.4byte	0x63
	.byte	0
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x4
	.byte	0xfc
	.byte	0x9
	.4byte	0x8b
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x4
	.byte	0xfd
	.byte	0x9
	.4byte	0x8b
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0xfe
	.byte	0x9
	.4byte	0x8b
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0xff
	.byte	0x9
	.4byte	0x8b
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x100
	.byte	0x9
	.4byte	0x8b
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x101
	.byte	0x9
	.4byte	0x8b
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x102
	.byte	0x9
	.4byte	0x8b
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x103
	.byte	0x9
	.4byte	0x8b
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x105
	.byte	0x9
	.4byte	0x8b
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x106
	.byte	0x9
	.4byte	0x8b
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x107
	.byte	0x9
	.4byte	0x8b
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x109
	.byte	0x16
	.4byte	0x279
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x10b
	.byte	0x14
	.4byte	0x27f
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x10d
	.byte	0x7
	.4byte	0x63
	.byte	0x70
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x111
	.byte	0x7
	.4byte	0x63
	.byte	0x74
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x113
	.byte	0xd
	.4byte	0x71
	.byte	0x78
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x117
	.byte	0x12
	.4byte	0x47
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x118
	.byte	0xf
	.4byte	0x55
	.byte	0x82
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x119
	.byte	0x8
	.4byte	0x285
	.byte	0x83
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x11d
	.byte	0xf
	.4byte	0x295
	.byte	0x88
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x126
	.byte	0xf
	.4byte	0x7d
	.byte	0x90
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x12f
	.byte	0x9
	.4byte	0x89
	.byte	0x98
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x130
	.byte	0x9
	.4byte	0x89
	.byte	0xa0
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x131
	.byte	0x9
	.4byte	0x89
	.byte	0xa8
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x132
	.byte	0x9
	.4byte	0x89
	.byte	0xb0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x133
	.byte	0xa
	.4byte	0x2d
	.byte	0xb8
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x135
	.byte	0x7
	.4byte	0x63
	.byte	0xc0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x137
	.byte	0x8
	.4byte	0x29b
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x4
	.byte	0x9b
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.byte	0x8
	.4byte	0x279
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0xa2
	.byte	0x16
	.4byte	0x279
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.byte	0xa3
	.byte	0x14
	.4byte	0x27f
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.byte	0xa7
	.byte	0x7
	.4byte	0x63
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.4byte	0x244
	.uleb128 0x6
	.byte	0x8
	.4byte	0x9d
	.uleb128 0xc
	.4byte	0x91
	.4byte	0x295
	.uleb128 0xd
	.4byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.4byte	0x23c
	.uleb128 0xc
	.4byte	0x91
	.4byte	0x2ab
	.uleb128 0xd
	.4byte	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.4byte	.LASF82
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x141
	.byte	0x1d
	.4byte	0x2ab
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x142
	.byte	0x1d
	.4byte	0x2ab
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x143
	.byte	0x1d
	.4byte	0x2ab
	.uleb128 0x6
	.byte	0x8
	.4byte	0x98
	.uleb128 0x7
	.4byte	0x2d7
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x5
	.byte	0xa8
	.byte	0x19
	.4byte	0x27f
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x5
	.byte	0xa9
	.byte	0x19
	.4byte	0x27f
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x5
	.byte	0xaa
	.byte	0x19
	.4byte	0x27f
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x6
	.byte	0x1a
	.byte	0xc
	.4byte	0x63
	.uleb128 0xc
	.4byte	0x2dd
	.4byte	0x31d
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x312
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x6
	.byte	0x1b
	.byte	0x1a
	.4byte	0x31d
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF53
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF54
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF55
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF56
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x7
	.byte	0x95
	.byte	0xc
	.4byte	0x63
	.uleb128 0x12
	.byte	0x5
	.byte	0x4
	.4byte	0x63
	.byte	0x7
	.2byte	0x121
	.byte	0x1
	.4byte	0x384
	.uleb128 0x13
	.4byte	.LASF58
	.sleb128 -1
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x127
	.byte	0x3
	.4byte	0x356
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x12c
	.byte	0x1a
	.4byte	0x384
	.uleb128 0xc
	.4byte	0x8b
	.4byte	0x3ae
	.uleb128 0xd
	.4byte	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x11a
	.byte	0xe
	.4byte	0x39e
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x11b
	.byte	0xc
	.4byte	0x63
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x11c
	.byte	0x11
	.4byte	0x6a
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x121
	.byte	0xe
	.4byte	0x39e
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x129
	.byte	0xc
	.4byte	0x63
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6a
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x1
	.byte	0x61
	.byte	0x6
	.8byte	.LFB5
	.8byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48e
	.uleb128 0x17
	.string	"num"
	.byte	0x1
	.byte	0x61
	.byte	0x16
	.4byte	0x49e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5032
	.uleb128 0x17
	.string	"fac"
	.byte	0x1
	.byte	0x61
	.byte	0x29
	.4byte	0x49e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5040
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.byte	0x61
	.byte	0x3c
	.4byte	0x33c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5044
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x62
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0x62
	.byte	0xc
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x18
	.string	"b"
	.byte	0x1
	.byte	0x63
	.byte	0xb
	.4byte	0x4a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2512
	.uleb128 0x19
	.4byte	.LASF71
	.byte	0x1
	.byte	0x63
	.byte	0x16
	.4byte	0x4a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5016
	.uleb128 0x18
	.string	"d"
	.byte	0x1
	.byte	0x63
	.byte	0x27
	.4byte	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xc
	.4byte	0x33c
	.4byte	0x49e
	.uleb128 0xd
	.4byte	0x39
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.4byte	0x48e
	.uleb128 0xc
	.4byte	0x33c
	.4byte	0x4ba
	.uleb128 0xd
	.4byte	0x39
	.byte	0x18
	.uleb128 0xd
	.4byte	0x39
	.byte	0x18
	.byte	0
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x1
	.byte	0x46
	.byte	0x6
	.8byte	.LFB4
	.8byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x563
	.uleb128 0x17
	.string	"num"
	.byte	0x1
	.byte	0x46
	.byte	0x15
	.4byte	0x49e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5048
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.byte	0x46
	.byte	0x28
	.4byte	0x33c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5052
	.uleb128 0x18
	.string	"b"
	.byte	0x1
	.byte	0x47
	.byte	0xb
	.4byte	0x4a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2528
	.uleb128 0x18
	.string	"fac"
	.byte	0x1
	.byte	0x47
	.byte	0x16
	.4byte	0x4a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5032
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.byte	0x48
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x18
	.string	"q"
	.byte	0x1
	.byte	0x48
	.byte	0xc
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x18
	.string	"m"
	.byte	0x1
	.byte	0x48
	.byte	0xf
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0x48
	.byte	0x12
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x48
	.byte	0x15
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0x48
	.byte	0x18
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF74
	.byte	0x1
	.byte	0x26
	.byte	0x7
	.4byte	0x33c
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60d
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.byte	0x26
	.byte	0x19
	.4byte	0x49e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2536
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.byte	0x26
	.byte	0x2a
	.4byte	0x33c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2540
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x27
	.byte	0xb
	.4byte	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x18
	.string	"det"
	.byte	0x1
	.byte	0x27
	.byte	0x12
	.4byte	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x18
	.string	"b"
	.byte	0x1
	.byte	0x27
	.byte	0x1b
	.4byte	0x4a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2528
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0x28
	.byte	0xc
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.string	"m"
	.byte	0x1
	.byte	0x28
	.byte	0xf
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0x28
	.byte	0x12
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.byte	0x28
	.byte	0x15
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF75
	.byte	0x1
	.byte	0xc
	.byte	0x5
	.4byte	0x63
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x692
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x1
	.byte	0xc
	.byte	0xe
	.4byte	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2532
	.uleb128 0x1b
	.4byte	.LASF77
	.byte	0x1
	.byte	0xc
	.byte	0x1b
	.4byte	0x692
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2544
	.uleb128 0x18
	.string	"a"
	.byte	0x1
	.byte	0xd
	.byte	0xb
	.4byte	0x4a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2520
	.uleb128 0x18
	.string	"d"
	.byte	0x1
	.byte	0xd
	.byte	0x16
	.4byte	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xe
	.byte	0x9
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0xe
	.byte	0xc
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x18
	.string	"k"
	.byte	0x1
	.byte	0xe
	.byte	0xf
	.4byte	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.4byte	0x8b
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"__off_t"
.LASF12:
	.string	"_IO_read_ptr"
.LASF24:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF30:
	.string	"_shortbuf"
.LASF47:
	.string	"_IO_2_1_stderr_"
.LASF18:
	.string	"_IO_buf_base"
.LASF54:
	.string	"long long unsigned int"
.LASF67:
	.string	"__timezone"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF25:
	.string	"_fileno"
.LASF13:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF62:
	.string	"_ISOC_"
.LASF11:
	.string	"_flags"
.LASF19:
	.string	"_IO_buf_end"
.LASF28:
	.string	"_cur_column"
.LASF74:
	.string	"determinant"
.LASF60:
	.string	"_XOPEN_"
.LASF56:
	.string	"double"
.LASF79:
	.string	"inverse_matrix.c"
.LASF27:
	.string	"_old_offset"
.LASF32:
	.string	"_offset"
.LASF70:
	.string	"timezone"
.LASF41:
	.string	"_IO_marker"
.LASF48:
	.string	"stdin"
.LASF3:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF82:
	.string	"_IO_FILE_plus"
.LASF16:
	.string	"_IO_write_ptr"
.LASF59:
	.string	"_SVID_"
.LASF51:
	.string	"sys_nerr"
.LASF43:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF64:
	.string	"_LIB_VERSION"
.LASF20:
	.string	"_IO_save_base"
.LASF71:
	.string	"inverse"
.LASF31:
	.string	"_lock"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF49:
	.string	"stdout"
.LASF45:
	.string	"_IO_2_1_stdin_"
.LASF17:
	.string	"_IO_write_end"
.LASF81:
	.string	"_IO_lock_t"
.LASF40:
	.string	"_IO_FILE"
.LASF66:
	.string	"__daylight"
.LASF55:
	.string	"float"
.LASF44:
	.string	"_pos"
.LASF52:
	.string	"sys_errlist"
.LASF23:
	.string	"_markers"
.LASF80:
	.string	"/GPUFS/nsccgz_yfdu_16/gta/mao/src-2.35/profiling/assemble"
.LASF58:
	.string	"_IEEE_"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF63:
	.string	"_LIB_VERSION_TYPE"
.LASF29:
	.string	"_vtable_offset"
.LASF68:
	.string	"tzname"
.LASF46:
	.string	"_IO_2_1_stdout_"
.LASF73:
	.string	"cofactor"
.LASF69:
	.string	"daylight"
.LASF78:
	.string	"GNU C17 9.2.0 -mlittle-endian -mabi=lp64 -g"
.LASF10:
	.string	"char"
.LASF42:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF14:
	.string	"_IO_read_base"
.LASF22:
	.string	"_IO_save_end"
.LASF33:
	.string	"__pad1"
.LASF34:
	.string	"__pad2"
.LASF35:
	.string	"__pad3"
.LASF36:
	.string	"__pad4"
.LASF37:
	.string	"__pad5"
.LASF39:
	.string	"_unused2"
.LASF50:
	.string	"stderr"
.LASF77:
	.string	"argv"
.LASF57:
	.string	"signgam"
.LASF21:
	.string	"_IO_backup_base"
.LASF72:
	.string	"transpose"
.LASF61:
	.string	"_POSIX_"
.LASF76:
	.string	"argc"
.LASF65:
	.string	"__tzname"
.LASF75:
	.string	"main"
.LASF15:
	.string	"_IO_write_base"
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
