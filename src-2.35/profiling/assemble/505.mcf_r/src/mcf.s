	.arch armv8-a
	.file	"mcf.c"
	.text
	.comm	net,648,8
	.section	.rodata
	.align	3
.LC0:
	.string	"active arcs                : %ld\n"
	.align	3
.LC1:
	.string	"simplex iterations         : %ld\n"
	.align	3
.LC2:
	.string	"objective value            : %0.0f\n"
	.align	3
.LC3:
	.string	"not enough memory, exit(-1)"
	.align	3
.LC4:
	.string	"erased arcs                : %ld\n"
	.align	3
.LC5:
	.string	"new implicit arcs          : %ld\n"
	.align	3
.LC6:
	.string	"checksum                   : %0.0f\n"
	.text
	.align	2
	.global	global_opt
	.type	global_opt, %function
global_opt:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	x0, 1
	str	x0, [sp, 16]
	mov	x0, -1
	str	x0, [sp, 24]
	b	.L2
.L8:
	adrp	x0, net
	add	x0, x0, :lo12:net
	ldr	x0, [x0, 424]
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	adrp	x0, net
	add	x0, x0, :lo12:net
	bl	primal_net_simplex
	adrp	x0, net
	add	x0, x0, :lo12:net
	ldr	x0, [x0, 608]
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	adrp	x0, net
	add	x0, x0, :lo12:net
	bl	flow_cost
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, net
	add	x0, x0, :lo12:net
	ldr	x0, [x0, 440]
	cmp	x0, 0
	beq	.L3
	mov	x2, 0
	mov	x1, -1
	adrp	x0, net
	add	x0, x0, :lo12:net
	bl	suspend_impl
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bge	.L4
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	mov	w0, -1
	bl	exit
.L4:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L5
	ldr	x1, [sp, 24]
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	b	.L5
.L3:
	adrp	x0, net
	add	x0, x0, :lo12:net
	ldr	x0, [x0, 424]
	mov	x2, x0
	adrp	x0, getOriginalArcPosition
	add	x1, x0, :lo12:getOriginalArcPosition
	adrp	x0, net
	add	x0, x0, :lo12:net
	bl	refreshPositions
.L5:
	adrp	x0, net
	add	x0, x0, :lo12:net
	bl	price_out_impl
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L6
	ldr	x1, [sp, 24]
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
.L6:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bge	.L7
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
	mov	w0, -1
	bl	exit
.L7:
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
.L2:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L8
	adrp	x0, net
	add	x0, x0, :lo12:net
	bl	flow_cost
	adrp	x0, net
	add	x0, x0, :lo12:net
	str	d0, [x0, 536]
	adrp	x0, net
	add	x0, x0, :lo12:net
	ldr	d0, [x0, 536]
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	mov	x0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	global_opt, .-global_opt
	.section	.rodata
	.align	3
.LC7:
	.string	"\nMCF SPEC CPU version 1.11"
	.align	3
.LC8:
	.string	"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)"
	.align	3
.LC9:
	.string	"Copyright (c) 2000-2002 Andreas Loebel & ZIB"
	.align	3
.LC10:
	.string	"Copyright (c) 2003-2005 Andreas Loebel"
	.align	3
.LC11:
	.string	"Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)"
	.align	3
.LC12:
	.string	"mcf.%d.out"
	.align	3
.LC13:
	.string	"read error, exit"
	.align	3
.LC14:
	.string	"nodes                      : %ld\n"
	.align	3
.LC15:
	.string	"done"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bgt	.L11
	mov	w0, -1
	b	.L17
.L11:
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	puts
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	puts
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	puts
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	puts
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	puts
	mov	w0, 10
	bl	putchar
	mov	x2, 648
	mov	w1, 0
	adrp	x0, net
	add	x0, x0, :lo12:net
	bl	memset
	adrp	x0, net
	add	x0, x0, :lo12:net
	mov	x1, 38528
	movk	x1, 0x98, lsl 16
	str	x1, [x0, 528]
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	x0, [x0]
	mov	x1, x0
	adrp	x0, net
	add	x0, x0, :lo12:net
	bl	strcpy
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bne	.L13
	ldr	x0, [sp, 16]
	add	x0, x0, 16
	ldr	x0, [x0]
	bl	atoi
	str	w0, [sp, 124]
	add	x3, sp, 40
	ldr	w2, [sp, 124]
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	mov	x0, x3
	bl	sprintf
	b	.L14
.L13:
	add	x0, sp, 40
	mov	x1, 25453
	movk	x1, 0x2e66, lsl 16
	movk	x1, 0x756f, lsl 32
	movk	x1, 0x74, lsl 48
	str	x1, [x0]
.L14:
	adrp	x0, net
	add	x0, x0, :lo12:net
	bl	read_min
	cmp	x0, 0
	beq	.L15
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	puts
	adrp	x0, net
	add	x0, x0, :lo12:net
	bl	getfree
	mov	w0, -1
	b	.L17
.L15:
	adrp	x0, net
	add	x0, x0, :lo12:net
	ldr	x0, [x0, 408]
	mov	x1, x0
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	printf
	adrp	x0, net
	add	x0, x0, :lo12:net
	bl	primal_start_artificial
	bl	global_opt
	add	x2, sp, 40
	adrp	x0, net
	add	x1, x0, :lo12:net
	mov	x0, x2
	bl	write_objective_value
	cmp	x0, 0
	beq	.L16
	adrp	x0, net
	add	x0, x0, :lo12:net
	bl	getfree
	mov	w0, -1
	b	.L17
.L16:
	adrp	x0, net
	add	x0, x0, :lo12:net
	bl	getfree
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	puts
	mov	w0, 0
.L17:
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
