	.arch armv8-a
	.file	"main.c"
	.text
	.local	srcGrid
	.comm	srcGrid,8,8
	.local	dstGrid
	.comm	dstGrid,8,8
	.section	.rodata
	.align	3
.LC1:
	.string	"timestep: %i\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	add	x0, sp, 120
	mov	x2, x0
	ldr	x1, [sp, 16]
	ldr	w0, [sp, 28]
	bl	MAIN_parseCommandLine
	add	x0, sp, 120
	bl	MAIN_printInfo
	add	x0, sp, 120
	bl	MAIN_initialize
	add	x0, sp, 32
	bl	MAIN_startClock
	mov	w0, 1
	str	w0, [sp, 156]
	b	.L2
.L5:
	ldr	w0, [sp, 140]
	cmp	w0, 1
	bne	.L3
	adrp	x0, srcGrid
	add	x0, x0, :lo12:srcGrid
	ldr	x0, [x0]
	bl	LBM_handleInOutFlow
.L3:
	adrp	x0, srcGrid
	add	x0, x0, :lo12:srcGrid
	ldr	x2, [x0]
	adrp	x0, dstGrid
	add	x0, x0, :lo12:dstGrid
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	LBM_performStreamCollideTRT
	adrp	x0, dstGrid
	add	x1, x0, :lo12:dstGrid
	adrp	x0, srcGrid
	add	x0, x0, :lo12:srcGrid
	bl	LBM_swapGrids
	ldr	w0, [sp, 156]
	and	w0, w0, 63
	cmp	w0, 0
	bne	.L4
	ldr	w1, [sp, 156]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	adrp	x0, srcGrid
	add	x0, x0, :lo12:srcGrid
	ldr	x0, [x0]
	bl	LBM_showGridStatistics
.L4:
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
.L2:
	ldr	w0, [sp, 120]
	ldr	w1, [sp, 156]
	cmp	w1, w0
	ble	.L5
	add	x1, sp, 120
	add	x0, sp, 32
	bl	MAIN_stopClock
	add	x0, sp, 120
	bl	MAIN_finalize
	mov	w0, 0
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC2:
	.string	"syntax: lbm <time steps> <result file> <0: nil, 1: cmp, 2: str> <0: ldc, 1: channel flow> [<obstacle file>]"
	.align	3
.LC3:
	.string	"MAIN_parseCommandLine: cannot stat obstacle file '%s'\n"
	.align	3
.LC4:
	.string	"MAIN_parseCommandLine:\n\tsize of file '%s' is %i bytes\n\texpected size is %i bytes\n"
	.align	3
.LC5:
	.string	"MAIN_parseCommandLine: cannot stat result file '%s'\n"
	.text
	.align	2
	.global	MAIN_parseCommandLine
	.type	MAIN_parseCommandLine, %function
MAIN_parseCommandLine:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -176]!
	.cfi_def_cfa_offset 176
	.cfi_offset 29, -176
	.cfi_offset 30, -168
	mov	x29, sp
	str	w0, [sp, 44]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	w0, [sp, 44]
	cmp	w0, 4
	ble	.L8
	ldr	w0, [sp, 44]
	cmp	w0, 6
	ble	.L9
.L8:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	mov	w0, 1
	bl	exit
.L9:
	ldr	x0, [sp, 32]
	add	x0, x0, 8
	ldr	x0, [x0]
	bl	atoi
	mov	w1, w0
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	x0, [sp, 32]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	ldr	x0, [sp, 32]
	add	x0, x0, 24
	ldr	x0, [x0]
	bl	atoi
	mov	w1, w0
	ldr	x0, [sp, 24]
	str	w1, [x0, 16]
	ldr	x0, [sp, 32]
	add	x0, x0, 32
	ldr	x0, [x0]
	bl	atoi
	mov	w1, w0
	ldr	x0, [sp, 24]
	str	w1, [x0, 20]
	ldr	w0, [sp, 44]
	cmp	w0, 6
	bne	.L10
	ldr	x0, [sp, 32]
	ldr	x1, [x0, 40]
	ldr	x0, [sp, 24]
	str	x1, [x0, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	add	x1, sp, 48
	bl	stat
	cmp	w0, 0
	beq	.L11
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	mov	w0, 1
	bl	exit
.L11:
	ldr	x1, [sp, 96]
	mov	x0, 2410
	movk	x0, 0x14, lsl 16
	cmp	x1, x0
	beq	.L12
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	ldr	x1, [sp, 96]
	mov	w3, 2410
	movk	w3, 0x14, lsl 16
	mov	w2, w1
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	mov	w0, 1
	bl	exit
.L10:
	ldr	x0, [sp, 24]
	str	xzr, [x0, 24]
.L12:
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 16]
	cmp	w0, 1
	bne	.L14
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	add	x1, sp, 48
	bl	stat
	cmp	w0, 0
	beq	.L14
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	x1, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	mov	w0, 1
	bl	exit
.L14:
	nop
	ldp	x29, x30, [sp], 176
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	MAIN_parseCommandLine, .-MAIN_parseCommandLine
	.section	.rodata
	.align	3
.LC8:
	.string	"<none>"
	.align	3
.LC9:
	.string	"MAIN_printInfo:\n\tgrid size      : %i x %i x %i = %.2f * 10^6 Cells\n\tnTimeSteps     : %i\n\tresult file    : %s\n\taction         : %s\n\tsimulation type: %s\n\tobstacle file  : %s\n\n"
	.text
	.align	2
	.global	MAIN_printInfo
	.type	MAIN_printInfo, %function
MAIN_printInfo:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, 16]
	.cfi_offset 29, -224
	.cfi_offset 30, -216
	add	x29, sp, 16
	str	x0, [sp, 40]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 144
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	ldp	x2, x3, [x1, 16]
	stp	x2, x3, [x0, 16]
	ldp	x2, x3, [x1, 32]
	stp	x2, x3, [x0, 32]
	ldp	x2, x3, [x1, 48]
	stp	x2, x3, [x0, 48]
	ldp	x2, x3, [x1, 64]
	stp	x2, x3, [x0, 64]
	ldp	x2, x3, [x1, 80]
	stp	x2, x3, [x0, 80]
	stp	xzr, xzr, [sp, 48]
	stp	xzr, xzr, [sp, 64]
	stp	xzr, xzr, [sp, 80]
	stp	xzr, xzr, [sp, 96]
	stp	xzr, xzr, [sp, 112]
	stp	xzr, xzr, [sp, 128]
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	add	x2, sp, 48
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldrh	w0, [x3, 16]
	strh	w0, [x2, 16]
	str	xzr, [sp, 66]
	str	wzr, [sp, 74]
	strh	wzr, [sp, 78]
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 80
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	x1, [x1, 5]
	str	x1, [x0, 5]
	add	x0, sp, 5
	stp	xzr, xzr, [x0, 88]
	strh	wzr, [sp, 109]
	strb	wzr, [sp, 111]
	ldr	x0, [sp, 40]
	ldr	w2, [x0]
	ldr	x0, [sp, 40]
	ldr	x3, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	w0, [x0, 16]
	add	x1, sp, 144
	uxtw	x0, w0
	lsl	x0, x0, 5
	add	x4, x1, x0
	ldr	x0, [sp, 40]
	ldr	w0, [x0, 20]
	add	x1, sp, 48
	uxtw	x0, w0
	lsl	x0, x0, 5
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 24]
	cmp	x0, 0
	beq	.L16
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 24]
	b	.L17
.L16:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
.L17:
	str	x0, [sp]
	mov	x7, x1
	mov	x6, x4
	mov	x5, x3
	mov	w4, w2
	mov	x0, -3689348814741910324
	movk	x0, 0x3ff4, lsl 48
	fmov	d0, x0
	mov	w3, 130
	mov	w2, 100
	mov	w1, 100
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	printf
	nop
	ldp	x29, x30, [sp, 16]
	add	sp, sp, 240
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	MAIN_printInfo, .-MAIN_printInfo
	.section	.rodata
	.align	3
.LC0:
	.string	"nothing"
	.zero	24
	.string	"compare"
	.zero	24
	.string	"store"
	.zero	26
	.align	3
.LC6:
	.string	"lid-driven cavity"
	.zero	14
	.align	3
.LC7:
	.string	"channel flow"
	.zero	19
	.text
	.align	2
	.global	MAIN_initialize
	.type	MAIN_initialize, %function
MAIN_initialize:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	adrp	x0, srcGrid
	add	x0, x0, :lo12:srcGrid
	bl	LBM_allocateGrid
	adrp	x0, dstGrid
	add	x0, x0, :lo12:dstGrid
	bl	LBM_allocateGrid
	adrp	x0, srcGrid
	add	x0, x0, :lo12:srcGrid
	ldr	x0, [x0]
	bl	LBM_initializeGrid
	adrp	x0, dstGrid
	add	x0, x0, :lo12:dstGrid
	ldr	x0, [x0]
	bl	LBM_initializeGrid
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	cmp	x0, 0
	beq	.L19
	adrp	x0, srcGrid
	add	x0, x0, :lo12:srcGrid
	ldr	x2, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	mov	x1, x0
	mov	x0, x2
	bl	LBM_loadObstacleFile
	adrp	x0, dstGrid
	add	x0, x0, :lo12:dstGrid
	ldr	x2, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	mov	x1, x0
	mov	x0, x2
	bl	LBM_loadObstacleFile
.L19:
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 20]
	cmp	w0, 1
	bne	.L20
	adrp	x0, srcGrid
	add	x0, x0, :lo12:srcGrid
	ldr	x0, [x0]
	bl	LBM_initializeSpecialCellsForChannel
	adrp	x0, dstGrid
	add	x0, x0, :lo12:dstGrid
	ldr	x0, [x0]
	bl	LBM_initializeSpecialCellsForChannel
	b	.L21
.L20:
	adrp	x0, srcGrid
	add	x0, x0, :lo12:srcGrid
	ldr	x0, [x0]
	bl	LBM_initializeSpecialCellsForLDC
	adrp	x0, dstGrid
	add	x0, x0, :lo12:dstGrid
	ldr	x0, [x0]
	bl	LBM_initializeSpecialCellsForLDC
.L21:
	adrp	x0, srcGrid
	add	x0, x0, :lo12:srcGrid
	ldr	x0, [x0]
	bl	LBM_showGridStatistics
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	MAIN_initialize, .-MAIN_initialize
	.align	2
	.global	MAIN_finalize
	.type	MAIN_finalize, %function
MAIN_finalize:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	adrp	x0, srcGrid
	add	x0, x0, :lo12:srcGrid
	ldr	x0, [x0]
	bl	LBM_showGridStatistics
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 16]
	cmp	w0, 1
	bne	.L23
	adrp	x0, srcGrid
	add	x0, x0, :lo12:srcGrid
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	w2, -1
	mov	x1, x0
	mov	x0, x3
	bl	LBM_compareVelocityField
.L23:
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 16]
	cmp	w0, 2
	bne	.L24
	adrp	x0, srcGrid
	add	x0, x0, :lo12:srcGrid
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	w2, -1
	mov	x1, x0
	mov	x0, x3
	bl	LBM_storeVelocityField
.L24:
	adrp	x0, srcGrid
	add	x0, x0, :lo12:srcGrid
	bl	LBM_freeGrid
	adrp	x0, dstGrid
	add	x0, x0, :lo12:dstGrid
	bl	LBM_freeGrid
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	MAIN_finalize, .-MAIN_finalize
	.align	2
	.global	MAIN_startClock
	.type	MAIN_startClock, %function
MAIN_startClock:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	mov	w0, 2
	bl	sysconf
	scvtf	d0, x0
	fmov	d1, 1.0e+0
	fdiv	d0, d1, d0
	ldr	x0, [sp, 24]
	str	d0, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 24
	bl	times
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	MAIN_startClock, .-MAIN_startClock
	.section	.rodata
	.align	3
.LC10:
	.string	"MAIN_stopClock:\n\tusr: %7.2f sys: %7.2f tot: %7.2f wct: %7.2f MLUPS: %5.2f\n\n"
	.text
	.align	2
	.global	MAIN_stopClock
	.type	MAIN_stopClock, %function
MAIN_stopClock:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	add	x0, x0, 56
	bl	times
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	sub	x0, x1, x0
	fmov	d0, x0
	scvtf	d1, d0
	ldr	x0, [sp, 24]
	ldr	d0, [x0]
	fmul	d5, d1, d0
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 64]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 32]
	sub	x0, x1, x0
	fmov	d0, x0
	scvtf	d1, d0
	ldr	x0, [sp, 24]
	ldr	d0, [x0]
	fmul	d6, d1, d0
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	sub	x1, x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 64]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 32]
	sub	x0, x1, x0
	fmov	d0, x0
	scvtf	d1, d0
	ldr	x0, [sp, 24]
	ldr	d0, [x0]
	fmul	d2, d1, d0
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	sub	x0, x1, x0
	fmov	d0, x0
	scvtf	d1, d0
	ldr	x0, [sp, 24]
	ldr	d0, [x0]
	fmul	d3, d1, d0
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	scvtf	d0, w0
	mov	x0, -3689348814741910324
	movk	x0, 0x3ff4, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	sub	x0, x1, x0
	fmov	d0, x0
	scvtf	d0, d0
	fdiv	d1, d1, d0
	ldr	x0, [sp, 24]
	ldr	d0, [x0]
	fdiv	d0, d1, d0
	fmov	d4, d0
	fmov	d1, d6
	fmov	d0, d5
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	printf
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	MAIN_stopClock, .-MAIN_stopClock
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
