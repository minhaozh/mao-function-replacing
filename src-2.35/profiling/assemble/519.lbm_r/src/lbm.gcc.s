	.arch armv8-a
	.file	"lbm.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"LBM_allocateGrid: could not allocate %.1f MByte\n"
	.align	3
.LC1:
	.string	"LBM_allocateGrid: allocated %.1f MByte\n"
	.text
	.align	2
	.global	LBM_allocateGrid
	.type	LBM_allocateGrid, %function
LBM_allocateGrid:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 6784
	movk	x0, 0x6, lsl 16
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	mov	x0, 23872
	movk	x0, 0xc6, lsl 16
	add	x0, x1, x0
	lsl	x0, x0, 4
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L2
	ldr	d0, [sp, 32]
	ucvtf	d0, d0
	mov	x0, 4697254411347427328
	fmov	d1, x0
	fdiv	d0, d0, d1
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	w0, 1
	bl	exit
.L2:
	ldr	d0, [sp, 32]
	ucvtf	d0, d0
	mov	x0, 4697254411347427328
	fmov	d1, x0
	fdiv	d0, d0, d1
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	LBM_allocateGrid, .-LBM_allocateGrid
	.align	2
	.global	LBM_freeGrid
	.type	LBM_freeGrid, %function
LBM_freeGrid:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 6784
	movk	x0, 0x6, lsl 16
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	neg	x0, x0
	add	x0, x1, x0
	bl	free
	ldr	x0, [sp, 24]
	str	xzr, [x0]
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	LBM_freeGrid, .-LBM_freeGrid
	.align	2
	.global	LBM_initializeGrid
	.type	LBM_initializeGrid, %function
LBM_initializeGrid:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	mov	w0, 58752
	movk	w0, 0xfff9, lsl 16
	str	w0, [sp, 28]
	b	.L5
.L6:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	mov	x1, 6148914691236517205
	movk	x1, 0x3fd5, lsl 48
	fmov	d0, x1
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC2
	ldr	d0, [x1, #:lo12:.LC2]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC2
	ldr	d0, [x1, #:lo12:.LC2]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC2
	ldr	d0, [x1, #:lo12:.LC2]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC2
	ldr	d0, [x1, #:lo12:.LC2]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC2
	ldr	d0, [x1, #:lo12:.LC2]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC2
	ldr	d0, [x1, #:lo12:.LC2]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC3
	ldr	d0, [x1, #:lo12:.LC3]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC3
	ldr	d0, [x1, #:lo12:.LC3]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC3
	ldr	d0, [x1, #:lo12:.LC3]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC3
	ldr	d0, [x1, #:lo12:.LC3]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC3
	ldr	d0, [x1, #:lo12:.LC3]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC3
	ldr	d0, [x1, #:lo12:.LC3]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC3
	ldr	d0, [x1, #:lo12:.LC3]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC3
	ldr	d0, [x1, #:lo12:.LC3]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC3
	ldr	d0, [x1, #:lo12:.LC3]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC3
	ldr	d0, [x1, #:lo12:.LC3]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC3
	ldr	d0, [x1, #:lo12:.LC3]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	adrp	x1, .LC3
	ldr	d0, [x1, #:lo12:.LC3]
	str	d0, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 19
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	str	wzr, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 20
	str	w0, [sp, 28]
.L5:
	ldr	w1, [sp, 28]
	mov	w0, 54527
	movk	w0, 0x192, lsl 16
	cmp	w1, w0
	ble	.L6
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	LBM_initializeGrid, .-LBM_initializeGrid
	.align	2
	.global	LBM_swapGrids
	.type	LBM_swapGrids, %function
LBM_swapGrids:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	str	x0, [sp, 24]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp]
	ldr	x1, [sp, 24]
	str	x1, [x0]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	LBM_swapGrids, .-LBM_swapGrids
	.section	.rodata
	.align	3
.LC4:
	.string	"rb"
	.text
	.align	2
	.global	LBM_loadObstacleFile
	.type	LBM_loadObstacleFile, %function
LBM_loadObstacleFile:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	ldr	x0, [sp, 16]
	bl	fopen
	str	x0, [sp, 40]
	str	wzr, [sp, 52]
	b	.L9
.L15:
	str	wzr, [sp, 56]
	b	.L10
.L14:
	str	wzr, [sp, 60]
	b	.L11
.L13:
	ldr	x0, [sp, 40]
	bl	fgetc
	cmp	w0, 46
	beq	.L12
	ldr	w1, [sp, 56]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 60]
	add	w1, w1, w0
	ldr	w2, [sp, 52]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 19
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
	orr	w1, w0, 1
	ldr	x0, [sp, 32]
	str	w1, [x0]
.L12:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L11:
	ldr	w0, [sp, 60]
	cmp	w0, 99
	ble	.L13
	ldr	x0, [sp, 40]
	bl	fgetc
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L10:
	ldr	w0, [sp, 56]
	cmp	w0, 99
	ble	.L14
	ldr	x0, [sp, 40]
	bl	fgetc
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L9:
	ldr	w0, [sp, 52]
	cmp	w0, 129
	ble	.L15
	ldr	x0, [sp, 40]
	bl	fclose
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	LBM_loadObstacleFile, .-LBM_loadObstacleFile
	.align	2
	.global	LBM_initializeSpecialCellsForLDC
	.type	LBM_initializeSpecialCellsForLDC, %function
LBM_initializeSpecialCellsForLDC:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	mov	w0, -2
	str	w0, [sp, 36]
	b	.L17
.L26:
	str	wzr, [sp, 40]
	b	.L18
.L25:
	str	wzr, [sp, 44]
	b	.L19
.L24:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	beq	.L20
	ldr	w0, [sp, 44]
	cmp	w0, 99
	beq	.L20
	ldr	w0, [sp, 40]
	cmp	w0, 0
	beq	.L20
	ldr	w0, [sp, 40]
	cmp	w0, 99
	beq	.L20
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L20
	ldr	w0, [sp, 36]
	cmp	w0, 129
	bne	.L21
.L20:
	ldr	w1, [sp, 40]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 44]
	add	w1, w1, w0
	ldr	w2, [sp, 36]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 19
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	orr	w1, w0, 1
	ldr	x0, [sp, 16]
	str	w1, [x0]
	b	.L22
.L21:
	ldr	w0, [sp, 36]
	cmp	w0, 1
	beq	.L23
	ldr	w0, [sp, 36]
	cmp	w0, 128
	bne	.L22
.L23:
	ldr	w0, [sp, 44]
	cmp	w0, 1
	ble	.L22
	ldr	w0, [sp, 44]
	cmp	w0, 97
	bgt	.L22
	ldr	w0, [sp, 40]
	cmp	w0, 1
	ble	.L22
	ldr	w0, [sp, 40]
	cmp	w0, 97
	bgt	.L22
	ldr	w1, [sp, 40]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 44]
	add	w1, w1, w0
	ldr	w2, [sp, 36]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 19
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	orr	w1, w0, 2
	ldr	x0, [sp, 24]
	str	w1, [x0]
.L22:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L19:
	ldr	w0, [sp, 44]
	cmp	w0, 99
	ble	.L24
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L18:
	ldr	w0, [sp, 40]
	cmp	w0, 99
	ble	.L25
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L17:
	ldr	w0, [sp, 36]
	cmp	w0, 131
	ble	.L26
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	LBM_initializeSpecialCellsForLDC, .-LBM_initializeSpecialCellsForLDC
	.align	2
	.global	LBM_initializeSpecialCellsForChannel
	.type	LBM_initializeSpecialCellsForChannel, %function
LBM_initializeSpecialCellsForChannel:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	mov	w0, -2
	str	w0, [sp, 36]
	b	.L28
.L36:
	str	wzr, [sp, 40]
	b	.L29
.L35:
	str	wzr, [sp, 44]
	b	.L30
.L34:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	beq	.L31
	ldr	w0, [sp, 44]
	cmp	w0, 99
	beq	.L31
	ldr	w0, [sp, 40]
	cmp	w0, 0
	beq	.L31
	ldr	w0, [sp, 40]
	cmp	w0, 99
	bne	.L32
.L31:
	ldr	w1, [sp, 40]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 44]
	add	w1, w1, w0
	ldr	w2, [sp, 36]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 19
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	orr	w1, w0, 1
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L33
	ldr	w0, [sp, 36]
	cmp	w0, 129
	bne	.L32
.L33:
	ldr	w1, [sp, 40]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 44]
	add	w1, w1, w0
	ldr	w2, [sp, 36]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 19
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L32
	ldr	w1, [sp, 40]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 44]
	add	w1, w1, w0
	ldr	w2, [sp, 36]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 19
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	orr	w1, w0, 4
	ldr	x0, [sp, 16]
	str	w1, [x0]
.L32:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L30:
	ldr	w0, [sp, 44]
	cmp	w0, 99
	ble	.L34
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L29:
	ldr	w0, [sp, 40]
	cmp	w0, 99
	ble	.L35
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L28:
	ldr	w0, [sp, 36]
	cmp	w0, 131
	ble	.L36
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	LBM_initializeSpecialCellsForChannel, .-LBM_initializeSpecialCellsForChannel
	.align	2
	.global	LBM_performStreamCollideBGK
	.type	LBM_performStreamCollideBGK, %function
LBM_performStreamCollideBGK:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 8]
	str	x1, [sp]
	str	wzr, [sp, 60]
	b	.L38
.L42:
	ldr	w0, [sp, 60]
	add	w0, w0, 19
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L39
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 60]
	sub	w0, w0, #1998
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 60]
	add	w0, w0, 2001
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 60]
	sub	w0, w0, #16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 60]
	add	w0, w0, 23
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 60]
	mov	w0, 62150
	movk	w0, 0xfffc, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 60]
	mov	w0, 3397
	movk	w0, 0x3, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 60]
	sub	w0, w0, #2010
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 60]
	sub	w0, w0, #1971
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 60]
	add	w0, w0, 1988
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 60]
	add	w0, w0, 2027
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 60]
	mov	w0, 60158
	movk	w0, 0xfffc, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 60]
	mov	w0, 1405
	movk	w0, 0x3, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 60]
	mov	w0, 64156
	movk	w0, 0xfffc, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 60]
	mov	w0, 5403
	movk	w0, 0x3, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 60]
	mov	w0, 62142
	movk	w0, 0xfffc, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 60]
	mov	w0, 3389
	movk	w0, 0x3, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 60]
	mov	w0, 62180
	movk	w0, 0xfffc, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 60]
	mov	w0, 3427
	movk	w0, 0x3, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	b	.L40
.L39:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d0, d1, d0
	str	d0, [sp, 24]
	ldr	w0, [sp, 60]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 48]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 40]
	ldr	w0, [sp, 60]
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 32]
	ldr	d0, [sp, 24]
	ldr	d1, [sp, 48]
	fdiv	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 24]
	ldr	d1, [sp, 40]
	fdiv	d0, d1, d0
	str	d0, [sp, 40]
	ldr	d0, [sp, 24]
	ldr	d1, [sp, 32]
	fdiv	d0, d1, d0
	str	d0, [sp, 32]
	ldr	w0, [sp, 60]
	add	w0, w0, 19
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	and	w0, w0, 2
	cmp	w0, 0
	beq	.L41
	adrp	x0, .LC5
	ldr	d0, [x0, #:lo12:.LC5]
	str	d0, [sp, 48]
	adrp	x0, .LC6
	ldr	d0, [x0, #:lo12:.LC6]
	str	d0, [sp, 40]
	str	xzr, [sp, 32]
.L41:
	ldr	d0, [sp, 48]
	fmul	d1, d0, d0
	ldr	d0, [sp, 40]
	fmul	d0, d0, d0
	fadd	d1, d1, d0
	ldr	d0, [sp, 32]
	fmul	d0, d0, d0
	fadd	d1, d1, d0
	fmov	d0, 1.5e+0
	fmul	d0, d1, d0
	str	d0, [sp, 16]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -3689348814741910324
	movk	x0, 0x3fe4, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	fmov	d3, 1.0e+0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fbb, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d3, [sp, 40]
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 40]
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 2001
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fbb, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d3, [sp, 40]
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fsub	d3, d3, d0
	ldr	d0, [sp, 40]
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w0, [sp, 60]
	sub	w0, w0, #1998
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fbb, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d3, [sp, 48]
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 48]
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 23
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fbb, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d3, [sp, 48]
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fsub	d3, d3, d0
	ldr	d0, [sp, 48]
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w0, [sp, 60]
	sub	w0, w0, #16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fbb, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d3, [sp, 32]
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 32]
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w1, [sp, 60]
	mov	w0, 3397
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fbb, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d3, [sp, 32]
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fsub	d3, d3, d0
	ldr	d0, [sp, 32]
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w1, [sp, 60]
	mov	w0, 62150
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fab, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d3, [sp, 48]
	ldr	d0, [sp, 40]
	fadd	d3, d3, d0
	ldr	d4, [sp, 48]
	ldr	d0, [sp, 40]
	fadd	d4, d4, d0
	fmov	d0, 4.5e+0
	fmul	d4, d4, d0
	fmov	d0, 3.0e+0
	fadd	d0, d4, d0
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 2027
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fab, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d3, [sp, 40]
	ldr	d0, [sp, 48]
	fsub	d3, d3, d0
	ldr	d4, [sp, 40]
	ldr	d0, [sp, 48]
	fsub	d4, d4, d0
	fmov	d0, 4.5e+0
	fmul	d4, d4, d0
	fmov	d0, 3.0e+0
	fadd	d0, d4, d0
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w0, [sp, 60]
	add	w0, w0, 1988
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fab, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d3, [sp, 48]
	ldr	d0, [sp, 40]
	fsub	d3, d3, d0
	ldr	d4, [sp, 48]
	ldr	d0, [sp, 40]
	fsub	d4, d4, d0
	fmov	d0, 4.5e+0
	fmul	d4, d4, d0
	fmov	d0, 3.0e+0
	fadd	d0, d4, d0
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w0, [sp, 60]
	sub	w0, w0, #1971
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fab, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d0, [sp, 48]
	fneg	d3, d0
	ldr	d0, [sp, 40]
	fsub	d3, d3, d0
	ldr	d0, [sp, 48]
	fneg	d4, d0
	ldr	d0, [sp, 40]
	fsub	d4, d4, d0
	fmov	d0, 4.5e+0
	fmul	d4, d4, d0
	fmov	d0, 3.0e+0
	fadd	d0, d4, d0
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w0, [sp, 60]
	sub	w0, w0, #2010
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fab, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d3, [sp, 40]
	ldr	d0, [sp, 32]
	fadd	d3, d3, d0
	ldr	d4, [sp, 40]
	ldr	d0, [sp, 32]
	fadd	d4, d4, d0
	fmov	d0, 4.5e+0
	fmul	d4, d4, d0
	fmov	d0, 3.0e+0
	fadd	d0, d4, d0
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w1, [sp, 60]
	mov	w0, 5403
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fab, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d3, [sp, 40]
	ldr	d0, [sp, 32]
	fsub	d3, d3, d0
	ldr	d4, [sp, 40]
	ldr	d0, [sp, 32]
	fsub	d4, d4, d0
	fmov	d0, 4.5e+0
	fmul	d4, d4, d0
	fmov	d0, 3.0e+0
	fadd	d0, d4, d0
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w1, [sp, 60]
	mov	w0, 64156
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fab, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d3, [sp, 32]
	ldr	d0, [sp, 40]
	fsub	d3, d3, d0
	ldr	d4, [sp, 32]
	ldr	d0, [sp, 40]
	fsub	d4, d4, d0
	fmov	d0, 4.5e+0
	fmul	d4, d4, d0
	fmov	d0, 3.0e+0
	fadd	d0, d4, d0
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w1, [sp, 60]
	mov	w0, 1405
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fab, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d0, [sp, 40]
	fneg	d3, d0
	ldr	d0, [sp, 32]
	fsub	d3, d3, d0
	ldr	d0, [sp, 40]
	fneg	d4, d0
	ldr	d0, [sp, 32]
	fsub	d4, d4, d0
	fmov	d0, 4.5e+0
	fmul	d4, d4, d0
	fmov	d0, 3.0e+0
	fadd	d0, d4, d0
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w1, [sp, 60]
	mov	w0, 60158
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fab, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d3, [sp, 48]
	ldr	d0, [sp, 32]
	fadd	d3, d3, d0
	ldr	d4, [sp, 48]
	ldr	d0, [sp, 32]
	fadd	d4, d4, d0
	fmov	d0, 4.5e+0
	fmul	d4, d4, d0
	fmov	d0, 3.0e+0
	fadd	d0, d4, d0
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w1, [sp, 60]
	mov	w0, 3427
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fab, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d3, [sp, 48]
	ldr	d0, [sp, 32]
	fsub	d3, d3, d0
	ldr	d4, [sp, 48]
	ldr	d0, [sp, 32]
	fsub	d4, d4, d0
	fmov	d0, 4.5e+0
	fmul	d4, d4, d0
	fmov	d0, 3.0e+0
	fadd	d0, d4, d0
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w1, [sp, 60]
	mov	w0, 62180
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fab, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d3, [sp, 32]
	ldr	d0, [sp, 48]
	fsub	d3, d3, d0
	ldr	d4, [sp, 32]
	ldr	d0, [sp, 48]
	fsub	d4, d4, d0
	fmov	d0, 4.5e+0
	fmul	d4, d4, d0
	fmov	d0, 3.0e+0
	fadd	d0, d4, d0
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w1, [sp, 60]
	mov	w0, 3389
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	mov	x0, 7378697629483820646
	movk	x0, 0xbfee, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	mov	x0, -4919131752989213765
	movk	x0, 0x3fab, lsl 48
	fmov	d2, x0
	fmul	d2, d0, d2
	ldr	d0, [sp, 48]
	fneg	d3, d0
	ldr	d0, [sp, 32]
	fsub	d3, d3, d0
	ldr	d0, [sp, 48]
	fneg	d4, d0
	ldr	d0, [sp, 32]
	fsub	d4, d4, d0
	fmov	d0, 4.5e+0
	fmul	d4, d4, d0
	fmov	d0, 3.0e+0
	fadd	d0, d4, d0
	fmul	d3, d3, d0
	fmov	d0, 1.0e+0
	fadd	d3, d3, d0
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	ldr	w1, [sp, 60]
	mov	w0, 62142
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fadd	d0, d1, d0
	str	d0, [x0]
.L40:
	ldr	w0, [sp, 60]
	add	w0, w0, 20
	str	w0, [sp, 60]
.L38:
	ldr	w1, [sp, 60]
	mov	w0, 47743
	movk	w0, 0x18c, lsl 16
	cmp	w1, w0
	ble	.L42
	nop
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	LBM_performStreamCollideBGK, .-LBM_performStreamCollideBGK
	.align	2
	.global	LBM_performStreamCollideTRT
	.type	LBM_performStreamCollideTRT, %function
LBM_performStreamCollideTRT:
.LFB10:
	.cfi_startproc
	sub	sp, sp, #720
	.cfi_def_cfa_offset 720
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, .LC7
	ldr	d0, [x0, #:lo12:.LC7]
	str	d0, [sp, 680]
	str	wzr, [sp, 716]
	b	.L44
.L48:
	ldr	w0, [sp, 716]
	add	w0, w0, 19
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L45
	ldrsw	x0, [sp, 716]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 716]
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 716]
	sub	w0, w0, #1998
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 716]
	add	w0, w0, 2001
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 716]
	sub	w0, w0, #16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 716]
	add	w0, w0, 23
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 716]
	mov	w0, 62150
	movk	w0, 0xfffc, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 716]
	mov	w0, 3397
	movk	w0, 0x3, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 716]
	sub	w0, w0, #2010
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 716]
	sub	w0, w0, #1971
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 716]
	add	w0, w0, 1988
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 716]
	add	w0, w0, 2027
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 716]
	mov	w0, 60158
	movk	w0, 0xfffc, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 716]
	mov	w0, 1405
	movk	w0, 0x3, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 716]
	mov	w0, 64156
	movk	w0, 0xfffc, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 716]
	mov	w0, 5403
	movk	w0, 0x3, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 716]
	mov	w0, 62142
	movk	w0, 0xfffc, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 716]
	mov	w0, 3389
	movk	w0, 0x3, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 716]
	mov	w0, 62180
	movk	w0, 0xfffc, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w2, [sp, 716]
	mov	w0, 3427
	movk	w0, 0x3, lsl 16
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	d0, [x1]
	str	d0, [x0]
	b	.L46
.L45:
	ldrsw	x0, [sp, 716]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d0, d1, d0
	str	d0, [sp, 672]
	ldr	w0, [sp, 716]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 704]
	ldr	w0, [sp, 716]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 696]
	ldr	w0, [sp, 716]
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 688]
	ldr	d0, [sp, 672]
	ldr	d1, [sp, 704]
	fdiv	d0, d1, d0
	str	d0, [sp, 704]
	ldr	d0, [sp, 672]
	ldr	d1, [sp, 696]
	fdiv	d0, d1, d0
	str	d0, [sp, 696]
	ldr	d0, [sp, 672]
	ldr	d1, [sp, 688]
	fdiv	d0, d1, d0
	str	d0, [sp, 688]
	ldr	w0, [sp, 716]
	add	w0, w0, 19
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	and	w0, w0, 2
	cmp	w0, 0
	beq	.L47
	adrp	x0, .LC5
	ldr	d0, [x0, #:lo12:.LC5]
	str	d0, [sp, 704]
	adrp	x0, .LC6
	ldr	d0, [x0, #:lo12:.LC6]
	str	d0, [sp, 696]
	str	xzr, [sp, 688]
.L47:
	ldr	d0, [sp, 704]
	fmul	d1, d0, d0
	ldr	d0, [sp, 696]
	fmul	d0, d0, d0
	fadd	d1, d1, d0
	ldr	d0, [sp, 688]
	fmul	d0, d0, d0
	fadd	d1, d1, d0
	fmov	d0, 1.5e+0
	fmul	d0, d1, d0
	str	d0, [sp, 664]
	ldr	d0, [sp, 672]
	mov	x0, 6148914691236517205
	movk	x0, 0x3fd5, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	fmov	d2, 1.0e+0
	ldr	d0, [sp, 664]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 184]
	ldr	d0, [sp, 672]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	d2, [sp, 696]
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	ldr	d0, [sp, 696]
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 664]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 200]
	ldr	d0, [sp, 200]
	str	d0, [sp, 192]
	ldr	d0, [sp, 672]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	d2, [sp, 704]
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	ldr	d0, [sp, 704]
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 664]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 216]
	ldr	d0, [sp, 216]
	str	d0, [sp, 208]
	ldr	d0, [sp, 672]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	d2, [sp, 688]
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	ldr	d0, [sp, 688]
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 664]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 232]
	ldr	d0, [sp, 232]
	str	d0, [sp, 224]
	ldr	d0, [sp, 672]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 704]
	ldr	d0, [sp, 696]
	fadd	d2, d2, d0
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	ldr	d3, [sp, 704]
	ldr	d0, [sp, 696]
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 664]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 264]
	ldr	d0, [sp, 264]
	str	d0, [sp, 240]
	ldr	d0, [sp, 672]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 696]
	ldr	d0, [sp, 704]
	fsub	d2, d2, d0
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	ldr	d3, [sp, 696]
	ldr	d0, [sp, 704]
	fsub	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 664]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 256]
	ldr	d0, [sp, 256]
	str	d0, [sp, 248]
	ldr	d0, [sp, 672]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 696]
	ldr	d0, [sp, 688]
	fadd	d2, d2, d0
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	ldr	d3, [sp, 696]
	ldr	d0, [sp, 688]
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 664]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 296]
	ldr	d0, [sp, 296]
	str	d0, [sp, 272]
	ldr	d0, [sp, 672]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 696]
	ldr	d0, [sp, 688]
	fsub	d2, d2, d0
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	ldr	d3, [sp, 696]
	ldr	d0, [sp, 688]
	fsub	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 664]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 288]
	ldr	d0, [sp, 288]
	str	d0, [sp, 280]
	ldr	d0, [sp, 672]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 704]
	ldr	d0, [sp, 688]
	fadd	d2, d2, d0
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	ldr	d3, [sp, 704]
	ldr	d0, [sp, 688]
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 664]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 328]
	ldr	d0, [sp, 328]
	str	d0, [sp, 304]
	ldr	d0, [sp, 672]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 704]
	ldr	d0, [sp, 688]
	fsub	d2, d2, d0
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	ldr	d3, [sp, 704]
	ldr	d0, [sp, 688]
	fsub	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 664]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 320]
	ldr	d0, [sp, 320]
	str	d0, [sp, 312]
	str	xzr, [sp, 24]
	ldr	d0, [sp, 672]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	fmov	d0, 3.0e+0
	fmul	d1, d1, d0
	ldr	d0, [sp, 696]
	fmul	d0, d1, d0
	str	d0, [sp, 32]
	ldr	d0, [sp, 32]
	fneg	d0, d0
	str	d0, [sp, 40]
	ldr	d0, [sp, 672]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	fmov	d0, 3.0e+0
	fmul	d1, d1, d0
	ldr	d0, [sp, 704]
	fmul	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	fneg	d0, d0
	str	d0, [sp, 56]
	ldr	d0, [sp, 672]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	fmov	d0, 3.0e+0
	fmul	d1, d1, d0
	ldr	d0, [sp, 688]
	fmul	d0, d1, d0
	str	d0, [sp, 64]
	ldr	d0, [sp, 64]
	fneg	d0, d0
	str	d0, [sp, 72]
	ldr	d0, [sp, 672]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	fmov	d0, 3.0e+0
	fmul	d1, d1, d0
	ldr	d2, [sp, 704]
	ldr	d0, [sp, 696]
	fadd	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 80]
	ldr	d0, [sp, 80]
	fneg	d0, d0
	str	d0, [sp, 104]
	ldr	d0, [sp, 672]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	fmov	d0, 3.0e+0
	fmul	d1, d1, d0
	ldr	d2, [sp, 696]
	ldr	d0, [sp, 704]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 88]
	ldr	d0, [sp, 88]
	fneg	d0, d0
	str	d0, [sp, 96]
	ldr	d0, [sp, 672]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	fmov	d0, 3.0e+0
	fmul	d1, d1, d0
	ldr	d2, [sp, 696]
	ldr	d0, [sp, 688]
	fadd	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 112]
	ldr	d0, [sp, 112]
	fneg	d0, d0
	str	d0, [sp, 136]
	ldr	d0, [sp, 672]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	fmov	d0, 3.0e+0
	fmul	d1, d1, d0
	ldr	d2, [sp, 696]
	ldr	d0, [sp, 688]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 120]
	ldr	d0, [sp, 120]
	fneg	d0, d0
	str	d0, [sp, 128]
	ldr	d0, [sp, 672]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	fmov	d0, 3.0e+0
	fmul	d1, d1, d0
	ldr	d2, [sp, 704]
	ldr	d0, [sp, 688]
	fadd	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 144]
	ldr	d0, [sp, 144]
	fneg	d0, d0
	str	d0, [sp, 168]
	ldr	d0, [sp, 672]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	fmov	d0, 3.0e+0
	fmul	d1, d1, d0
	ldr	d2, [sp, 704]
	ldr	d0, [sp, 688]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 152]
	ldr	d0, [sp, 152]
	fneg	d0, d0
	str	d0, [sp, 160]
	ldrsw	x0, [sp, 716]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	str	d0, [sp, 504]
	ldr	w0, [sp, 716]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 520]
	ldr	d0, [sp, 520]
	str	d0, [sp, 512]
	ldr	w0, [sp, 716]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 536]
	ldr	d0, [sp, 536]
	str	d0, [sp, 528]
	ldr	w0, [sp, 716]
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 552]
	ldr	d0, [sp, 552]
	str	d0, [sp, 544]
	ldr	w0, [sp, 716]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 584]
	ldr	d0, [sp, 584]
	str	d0, [sp, 560]
	ldr	w0, [sp, 716]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 576]
	ldr	d0, [sp, 576]
	str	d0, [sp, 568]
	ldr	w0, [sp, 716]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 616]
	ldr	d0, [sp, 616]
	str	d0, [sp, 592]
	ldr	w0, [sp, 716]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 608]
	ldr	d0, [sp, 608]
	str	d0, [sp, 600]
	ldr	w0, [sp, 716]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 648]
	ldr	d0, [sp, 648]
	str	d0, [sp, 624]
	ldr	w0, [sp, 716]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 640]
	ldr	d0, [sp, 640]
	str	d0, [sp, 632]
	str	xzr, [sp, 344]
	ldr	w0, [sp, 716]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 352]
	ldr	d0, [sp, 352]
	fneg	d0, d0
	str	d0, [sp, 360]
	ldr	w0, [sp, 716]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 368]
	ldr	d0, [sp, 368]
	fneg	d0, d0
	str	d0, [sp, 376]
	ldr	w0, [sp, 716]
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 384]
	ldr	d0, [sp, 384]
	fneg	d0, d0
	str	d0, [sp, 392]
	ldr	w0, [sp, 716]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 400]
	ldr	d0, [sp, 400]
	fneg	d0, d0
	str	d0, [sp, 424]
	ldr	w0, [sp, 716]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 408]
	ldr	d0, [sp, 408]
	fneg	d0, d0
	str	d0, [sp, 416]
	ldr	w0, [sp, 716]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 432]
	ldr	d0, [sp, 432]
	fneg	d0, d0
	str	d0, [sp, 456]
	ldr	w0, [sp, 716]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 440]
	ldr	d0, [sp, 440]
	fneg	d0, d0
	str	d0, [sp, 448]
	ldr	w0, [sp, 716]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 464]
	ldr	d0, [sp, 464]
	fneg	d0, d0
	str	d0, [sp, 488]
	ldr	w0, [sp, 716]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	fmov	d0, 5.0e-1
	fmul	d0, d1, d0
	str	d0, [sp, 472]
	ldr	d0, [sp, 472]
	fneg	d0, d0
	str	d0, [sp, 480]
	ldrsw	x0, [sp, 716]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 504]
	ldr	d0, [sp, 184]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	ldrsw	x0, [sp, 716]
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 512]
	ldr	d0, [sp, 192]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 352]
	ldr	d0, [sp, 32]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 2001
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 520]
	ldr	d0, [sp, 200]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 360]
	ldr	d0, [sp, 40]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w0, [sp, 716]
	sub	w0, w0, #1998
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 528]
	ldr	d0, [sp, 208]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 368]
	ldr	d0, [sp, 48]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 23
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 536]
	ldr	d0, [sp, 216]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 376]
	ldr	d0, [sp, 56]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w0, [sp, 716]
	sub	w0, w0, #16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 544]
	ldr	d0, [sp, 224]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 384]
	ldr	d0, [sp, 64]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w1, [sp, 716]
	mov	w0, 3397
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 552]
	ldr	d0, [sp, 232]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 392]
	ldr	d0, [sp, 72]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w1, [sp, 716]
	mov	w0, 62150
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 560]
	ldr	d0, [sp, 240]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 400]
	ldr	d0, [sp, 80]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 2027
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 568]
	ldr	d0, [sp, 248]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 408]
	ldr	d0, [sp, 88]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w0, [sp, 716]
	add	w0, w0, 1988
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 576]
	ldr	d0, [sp, 256]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 416]
	ldr	d0, [sp, 96]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w0, [sp, 716]
	sub	w0, w0, #1971
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 584]
	ldr	d0, [sp, 264]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 424]
	ldr	d0, [sp, 104]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w0, [sp, 716]
	sub	w0, w0, #2010
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 592]
	ldr	d0, [sp, 272]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 432]
	ldr	d0, [sp, 112]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w1, [sp, 716]
	mov	w0, 5403
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 600]
	ldr	d0, [sp, 280]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 440]
	ldr	d0, [sp, 120]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w1, [sp, 716]
	mov	w0, 64156
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 608]
	ldr	d0, [sp, 288]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 448]
	ldr	d0, [sp, 128]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w1, [sp, 716]
	mov	w0, 1405
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 616]
	ldr	d0, [sp, 296]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 456]
	ldr	d0, [sp, 136]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w1, [sp, 716]
	mov	w0, 60158
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 624]
	ldr	d0, [sp, 304]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 464]
	ldr	d0, [sp, 144]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w1, [sp, 716]
	mov	w0, 3427
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 632]
	ldr	d0, [sp, 312]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 472]
	ldr	d0, [sp, 152]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w1, [sp, 716]
	mov	w0, 62180
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 640]
	ldr	d0, [sp, 320]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 480]
	ldr	d0, [sp, 160]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w1, [sp, 716]
	mov	w0, 3389
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 716]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	d2, [sp, 648]
	ldr	d0, [sp, 328]
	fsub	d0, d2, d0
	mov	x0, 3689348814741910323
	movk	x0, 0x3fff, lsl 48
	fmov	d2, x0
	fmul	d0, d0, d2
	fsub	d1, d1, d0
	ldr	d2, [sp, 488]
	ldr	d0, [sp, 168]
	fsub	d2, d2, d0
	ldr	d0, [sp, 680]
	fmul	d0, d2, d0
	ldr	w1, [sp, 716]
	mov	w0, 62142
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp]
	add	x0, x1, x0
	fsub	d0, d1, d0
	str	d0, [x0]
.L46:
	ldr	w0, [sp, 716]
	add	w0, w0, 20
	str	w0, [sp, 716]
.L44:
	ldr	w1, [sp, 716]
	mov	w0, 47743
	movk	w0, 0x18c, lsl 16
	cmp	w1, w0
	ble	.L48
	nop
	nop
	add	sp, sp, 720
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	LBM_performStreamCollideTRT, .-LBM_performStreamCollideTRT
	.align	2
	.global	LBM_handleInOutFlow
	.type	LBM_handleInOutFlow, %function
LBM_handleInOutFlow:
.LFB11:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	str	x0, [sp, 8]
	str	wzr, [sp, 140]
	b	.L50
.L51:
	ldr	w1, [sp, 140]
	mov	w0, 3392
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 140]
	mov	w0, 3393
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3394
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3395
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3396
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3397
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3398
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3399
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3400
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3401
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3402
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3403
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3404
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3405
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3406
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3407
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3408
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3409
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 3410
	movk	w0, 0x3, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d0, d1, d0
	str	d0, [sp, 128]
	ldr	w1, [sp, 140]
	mov	w0, 6784
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 140]
	mov	w0, 6785
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6786
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6787
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6788
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6789
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6790
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6791
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6792
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6793
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6794
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6795
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6796
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6797
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6798
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6799
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6800
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6801
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 6802
	movk	w0, 0x6, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d0, d1, d0
	str	d0, [sp, 96]
	ldr	d0, [sp, 128]
	fadd	d1, d0, d0
	ldr	d0, [sp, 96]
	fsub	d0, d1, d0
	str	d0, [sp, 64]
	ldr	w0, [sp, 140]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 3
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, 34079
	movk	w0, 0x51eb, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 5
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 100
	mul	w0, w0, w2
	sub	w0, w1, w0
	scvtf	d0, w0
	mov	x0, 211106232532992
	movk	x0, 0x4048, lsl 48
	fmov	d1, x0
	fdiv	d1, d0, d1
	fmov	d0, 1.0e+0
	fsub	d0, d1, d0
	str	d0, [sp, 24]
	ldr	w0, [sp, 140]
	mov	w1, 19923
	movk	w1, 0x1062, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 7
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, 34079
	movk	w0, 0x51eb, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 5
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 100
	mul	w0, w0, w2
	sub	w0, w1, w0
	scvtf	d0, w0
	mov	x0, 211106232532992
	movk	x0, 0x4048, lsl 48
	fmov	d1, x0
	fdiv	d1, d0, d1
	fmov	d0, 1.0e+0
	fsub	d0, d1, d0
	str	d0, [sp, 16]
	str	xzr, [sp, 56]
	str	xzr, [sp, 48]
	ldr	d0, [sp, 24]
	fmul	d0, d0, d0
	fmov	d1, 1.0e+0
	fsub	d0, d1, d0
	adrp	x0, .LC8
	ldr	d1, [x0, #:lo12:.LC8]
	fmul	d1, d0, d1
	ldr	d0, [sp, 16]
	fmul	d0, d0, d0
	fmov	d2, 1.0e+0
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	str	d0, [sp, 40]
	ldr	d0, [sp, 56]
	fmul	d1, d0, d0
	ldr	d0, [sp, 48]
	fmul	d0, d0, d0
	fadd	d1, d1, d0
	ldr	d0, [sp, 40]
	fmul	d0, d0, d0
	fadd	d1, d1, d0
	fmov	d0, 1.5e+0
	fmul	d0, d1, d0
	str	d0, [sp, 32]
	ldr	d0, [sp, 64]
	mov	x0, 6148914691236517205
	movk	x0, 0x3fd5, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	fmov	d2, 1.0e+0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldrsw	x0, [sp, 140]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	d2, [sp, 48]
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	fmov	d0, 3.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 48]
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	d2, [sp, 48]
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	fmov	d0, 3.0e+0
	fsub	d2, d2, d0
	ldr	d0, [sp, 48]
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	d2, [sp, 56]
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	fmov	d0, 3.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 56]
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	d2, [sp, 56]
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	fmov	d0, 3.0e+0
	fsub	d2, d2, d0
	ldr	d0, [sp, 56]
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	d2, [sp, 40]
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	fmov	d0, 3.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 40]
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	d2, [sp, 40]
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	fmov	d0, 3.0e+0
	fsub	d2, d2, d0
	ldr	d0, [sp, 40]
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 48]
	fadd	d2, d2, d0
	ldr	d3, [sp, 56]
	ldr	d0, [sp, 48]
	fadd	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 48]
	ldr	d0, [sp, 56]
	fsub	d2, d2, d0
	ldr	d3, [sp, 48]
	ldr	d0, [sp, 56]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 48]
	fsub	d2, d2, d0
	ldr	d3, [sp, 56]
	ldr	d0, [sp, 48]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d0, [sp, 56]
	fneg	d2, d0
	ldr	d0, [sp, 48]
	fsub	d2, d2, d0
	ldr	d0, [sp, 56]
	fneg	d3, d0
	ldr	d0, [sp, 48]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 48]
	ldr	d0, [sp, 40]
	fadd	d2, d2, d0
	ldr	d3, [sp, 48]
	ldr	d0, [sp, 40]
	fadd	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 48]
	ldr	d0, [sp, 40]
	fsub	d2, d2, d0
	ldr	d3, [sp, 48]
	ldr	d0, [sp, 40]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 40]
	ldr	d0, [sp, 48]
	fsub	d2, d2, d0
	ldr	d3, [sp, 40]
	ldr	d0, [sp, 48]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d0, [sp, 48]
	fneg	d2, d0
	ldr	d0, [sp, 40]
	fsub	d2, d2, d0
	ldr	d0, [sp, 48]
	fneg	d3, d0
	ldr	d0, [sp, 40]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 40]
	fadd	d2, d2, d0
	ldr	d3, [sp, 56]
	ldr	d0, [sp, 40]
	fadd	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 40]
	fsub	d2, d2, d0
	ldr	d3, [sp, 56]
	ldr	d0, [sp, 40]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 40]
	ldr	d0, [sp, 56]
	fsub	d2, d2, d0
	ldr	d3, [sp, 40]
	ldr	d0, [sp, 56]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d0, [sp, 56]
	fneg	d2, d0
	ldr	d0, [sp, 40]
	fsub	d2, d2, d0
	ldr	d0, [sp, 56]
	fneg	d3, d0
	ldr	d0, [sp, 40]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 140]
	add	w0, w0, 20
	str	w0, [sp, 140]
.L50:
	ldr	w1, [sp, 140]
	mov	w0, 3391
	movk	w0, 0x3, lsl 16
	cmp	w1, w0
	ble	.L51
	mov	w0, 44352
	movk	w0, 0x189, lsl 16
	str	w0, [sp, 140]
	b	.L52
.L53:
	ldr	w1, [sp, 140]
	mov	w0, 62144
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 140]
	mov	w0, 62145
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62146
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62147
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62148
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62149
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62150
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62151
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62152
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62153
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62154
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62155
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62156
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62157
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62158
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62159
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62160
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62161
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62162
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d0, d1, d0
	str	d0, [sp, 128]
	ldr	w1, [sp, 140]
	mov	w0, 62147
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 140]
	mov	w0, 62148
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62151
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62152
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62153
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62154
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62159
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62160
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62161
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62162
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 120]
	ldr	w1, [sp, 140]
	mov	w0, 62145
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 140]
	mov	w0, 62146
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62151
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62152
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62153
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62154
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62155
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62156
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62157
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62158
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 112]
	ldr	w1, [sp, 140]
	mov	w0, 62149
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 140]
	mov	w0, 62150
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62155
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62156
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62157
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62158
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62159
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62160
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62161
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 62162
	movk	w0, 0xfffc, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 104]
	ldr	d0, [sp, 128]
	ldr	d1, [sp, 120]
	fdiv	d0, d1, d0
	str	d0, [sp, 120]
	ldr	d0, [sp, 128]
	ldr	d1, [sp, 112]
	fdiv	d0, d1, d0
	str	d0, [sp, 112]
	ldr	d0, [sp, 128]
	ldr	d1, [sp, 104]
	fdiv	d0, d1, d0
	str	d0, [sp, 104]
	ldr	w1, [sp, 140]
	mov	w0, 58752
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 140]
	mov	w0, 58753
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58754
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58755
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58756
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58757
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58758
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58759
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58760
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58761
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58762
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58763
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58764
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58765
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58766
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58767
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58768
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58769
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58770
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d0, d1, d0
	str	d0, [sp, 96]
	ldr	w1, [sp, 140]
	mov	w0, 58755
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 140]
	mov	w0, 58756
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58759
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58760
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58761
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58762
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58767
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58768
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58769
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58770
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 88]
	ldr	w1, [sp, 140]
	mov	w0, 58753
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 140]
	mov	w0, 58754
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58759
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58760
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58761
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58762
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58763
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58764
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58765
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58766
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 80]
	ldr	w1, [sp, 140]
	mov	w0, 58757
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 140]
	mov	w0, 58758
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58763
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58764
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58765
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58766
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58767
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58768
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58769
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 140]
	mov	w0, 58770
	movk	w0, 0xfff9, lsl 16
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 72]
	ldr	d0, [sp, 96]
	ldr	d1, [sp, 88]
	fdiv	d0, d1, d0
	str	d0, [sp, 88]
	ldr	d0, [sp, 96]
	ldr	d1, [sp, 80]
	fdiv	d0, d1, d0
	str	d0, [sp, 80]
	ldr	d0, [sp, 96]
	ldr	d1, [sp, 72]
	fdiv	d0, d1, d0
	str	d0, [sp, 72]
	fmov	d0, 1.0e+0
	str	d0, [sp, 64]
	ldr	d0, [sp, 120]
	fadd	d1, d0, d0
	ldr	d0, [sp, 88]
	fsub	d0, d1, d0
	str	d0, [sp, 56]
	ldr	d0, [sp, 112]
	fadd	d1, d0, d0
	ldr	d0, [sp, 80]
	fsub	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 104]
	fadd	d1, d0, d0
	ldr	d0, [sp, 72]
	fsub	d0, d1, d0
	str	d0, [sp, 40]
	ldr	d0, [sp, 56]
	fmul	d1, d0, d0
	ldr	d0, [sp, 48]
	fmul	d0, d0, d0
	fadd	d1, d1, d0
	ldr	d0, [sp, 40]
	fmul	d0, d0, d0
	fadd	d1, d1, d0
	fmov	d0, 1.5e+0
	fmul	d0, d1, d0
	str	d0, [sp, 32]
	ldr	d0, [sp, 64]
	mov	x0, 6148914691236517205
	movk	x0, 0x3fd5, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	fmov	d2, 1.0e+0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldrsw	x0, [sp, 140]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	d2, [sp, 48]
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	fmov	d0, 3.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 48]
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	d2, [sp, 48]
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	fmov	d0, 3.0e+0
	fsub	d2, d2, d0
	ldr	d0, [sp, 48]
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	d2, [sp, 56]
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	fmov	d0, 3.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 56]
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	d2, [sp, 56]
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	fmov	d0, 3.0e+0
	fsub	d2, d2, d0
	ldr	d0, [sp, 56]
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	d2, [sp, 40]
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	fmov	d0, 3.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 40]
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	d2, [sp, 40]
	fmov	d0, 4.5e+0
	fmul	d2, d2, d0
	fmov	d0, 3.0e+0
	fsub	d2, d2, d0
	ldr	d0, [sp, 40]
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 48]
	fadd	d2, d2, d0
	ldr	d3, [sp, 56]
	ldr	d0, [sp, 48]
	fadd	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 48]
	ldr	d0, [sp, 56]
	fsub	d2, d2, d0
	ldr	d3, [sp, 48]
	ldr	d0, [sp, 56]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 48]
	fsub	d2, d2, d0
	ldr	d3, [sp, 56]
	ldr	d0, [sp, 48]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d0, [sp, 56]
	fneg	d2, d0
	ldr	d0, [sp, 48]
	fsub	d2, d2, d0
	ldr	d0, [sp, 56]
	fneg	d3, d0
	ldr	d0, [sp, 48]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 48]
	ldr	d0, [sp, 40]
	fadd	d2, d2, d0
	ldr	d3, [sp, 48]
	ldr	d0, [sp, 40]
	fadd	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 48]
	ldr	d0, [sp, 40]
	fsub	d2, d2, d0
	ldr	d3, [sp, 48]
	ldr	d0, [sp, 40]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 40]
	ldr	d0, [sp, 48]
	fsub	d2, d2, d0
	ldr	d3, [sp, 40]
	ldr	d0, [sp, 48]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d0, [sp, 48]
	fneg	d2, d0
	ldr	d0, [sp, 40]
	fsub	d2, d2, d0
	ldr	d0, [sp, 48]
	fneg	d3, d0
	ldr	d0, [sp, 40]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 40]
	fadd	d2, d2, d0
	ldr	d3, [sp, 56]
	ldr	d0, [sp, 40]
	fadd	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 40]
	fsub	d2, d2, d0
	ldr	d3, [sp, 56]
	ldr	d0, [sp, 40]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d2, [sp, 40]
	ldr	d0, [sp, 56]
	fsub	d2, d2, d0
	ldr	d3, [sp, 40]
	ldr	d0, [sp, 56]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	d0, [sp, 64]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d0, [sp, 56]
	fneg	d2, d0
	ldr	d0, [sp, 40]
	fsub	d2, d2, d0
	ldr	d0, [sp, 56]
	fneg	d3, d0
	ldr	d0, [sp, 40]
	fsub	d3, d3, d0
	fmov	d0, 4.5e+0
	fmul	d3, d3, d0
	fmov	d0, 3.0e+0
	fadd	d0, d3, d0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d2, d2, d0
	ldr	d0, [sp, 32]
	fsub	d0, d2, d0
	ldr	w0, [sp, 140]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	fmul	d0, d1, d0
	str	d0, [x0]
	ldr	w0, [sp, 140]
	add	w0, w0, 20
	str	w0, [sp, 140]
.L52:
	ldr	w1, [sp, 140]
	mov	w0, 47743
	movk	w0, 0x18c, lsl 16
	cmp	w1, w0
	ble	.L53
	nop
	nop
	add	sp, sp, 144
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	LBM_handleInOutFlow, .-LBM_handleInOutFlow
	.section	.rodata
	.align	3
.LC9:
	.string	"LBM_showGridStatistics:\n\tnObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\n\tminRho: %8.6f maxRho: %8.6f Mass: %e\n\tminU  : %8.6f maxU  : %8.6f\n\n"
	.text
	.align	2
	.global	LBM_showGridStatistics
	.type	LBM_showGridStatistics, %function
LBM_showGridStatistics:
.LFB12:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	str	d8, [sp, 16]
	.cfi_offset 72, -144
	str	x0, [sp, 40]
	str	wzr, [sp, 156]
	str	wzr, [sp, 152]
	str	wzr, [sp, 148]
	adrp	x0, .LC10
	ldr	d0, [x0, #:lo12:.LC10]
	str	d0, [sp, 136]
	adrp	x0, .LC11
	ldr	d0, [x0, #:lo12:.LC11]
	str	d0, [sp, 128]
	adrp	x0, .LC10
	ldr	d0, [x0, #:lo12:.LC10]
	str	d0, [sp, 120]
	adrp	x0, .LC11
	ldr	d0, [x0, #:lo12:.LC11]
	str	d0, [sp, 112]
	str	xzr, [sp, 104]
	str	wzr, [sp, 100]
	b	.L55
.L67:
	ldrsw	x0, [sp, 100]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 100]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d0, d1, d0
	str	d0, [sp, 88]
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 120]
	fcmpe	d1, d0
	bpl	.L56
	ldr	d0, [sp, 88]
	str	d0, [sp, 120]
.L56:
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 112]
	fcmpe	d1, d0
	ble	.L58
	ldr	d0, [sp, 88]
	str	d0, [sp, 112]
.L58:
	ldr	d1, [sp, 104]
	ldr	d0, [sp, 88]
	fadd	d0, d1, d0
	str	d0, [sp, 104]
	ldr	w0, [sp, 100]
	add	w0, w0, 19
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L60
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
	b	.L61
.L60:
	ldr	w0, [sp, 100]
	add	w0, w0, 19
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	and	w0, w0, 2
	cmp	w0, 0
	beq	.L62
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
	b	.L63
.L62:
	ldr	w0, [sp, 148]
	add	w0, w0, 1
	str	w0, [sp, 148]
.L63:
	ldr	w0, [sp, 100]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 100]
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 80]
	ldr	w0, [sp, 100]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 100]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 72]
	ldr	w0, [sp, 100]
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [sp, 100]
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w0, [sp, 100]
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 64]
	ldr	d0, [sp, 80]
	fmul	d1, d0, d0
	ldr	d0, [sp, 72]
	fmul	d0, d0, d0
	fadd	d1, d1, d0
	ldr	d0, [sp, 64]
	fmul	d0, d0, d0
	fadd	d1, d1, d0
	ldr	d0, [sp, 88]
	fmul	d0, d0, d0
	fdiv	d0, d1, d0
	str	d0, [sp, 56]
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 136]
	fcmpe	d1, d0
	bpl	.L64
	ldr	d0, [sp, 56]
	str	d0, [sp, 136]
.L64:
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 128]
	fcmpe	d1, d0
	ble	.L61
	ldr	d0, [sp, 56]
	str	d0, [sp, 128]
.L61:
	ldr	w0, [sp, 100]
	add	w0, w0, 20
	str	w0, [sp, 100]
.L55:
	ldr	w1, [sp, 100]
	mov	w0, 47743
	movk	w0, 0x18c, lsl 16
	cmp	w1, w0
	ble	.L67
	ldr	d0, [sp, 136]
	bl	sqrt
	fmov	d8, d0
	ldr	d0, [sp, 128]
	bl	sqrt
	fmov	d4, d0
	fmov	d3, d8
	ldr	d2, [sp, 104]
	ldr	d1, [sp, 112]
	ldr	d0, [sp, 120]
	ldr	w3, [sp, 148]
	ldr	w2, [sp, 152]
	ldr	w1, [sp, 156]
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	printf
	nop
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12:
	.size	LBM_showGridStatistics, .-LBM_showGridStatistics
	.align	2
	.type	storeValue, %function
storeValue:
.LFB13:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	w0, 1
	str	w0, [sp, 44]
	add	x0, sp, 44
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L73
	ldr	x0, [sp, 16]
	str	x0, [sp, 48]
	str	wzr, [sp, 60]
	b	.L74
.L75:
	ldrsw	x0, [sp, 60]
	mov	x1, 3
	sub	x0, x1, x0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 60]
	add	x1, sp, 40
	strb	w2, [x1, x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L74:
	ldr	w0, [sp, 60]
	cmp	w0, 3
	bls	.L75
	add	x0, sp, 40
	ldr	x3, [sp, 24]
	mov	x2, 1
	mov	x1, 4
	bl	fwrite
	b	.L77
.L73:
	ldr	x3, [sp, 24]
	mov	x2, 1
	mov	x1, 4
	ldr	x0, [sp, 16]
	bl	fwrite
.L77:
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE13:
	.size	storeValue, .-storeValue
	.align	2
	.type	loadValue, %function
loadValue:
.LFB14:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	w0, 1
	str	w0, [sp, 44]
	add	x0, sp, 44
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L79
	ldr	x0, [sp, 16]
	str	x0, [sp, 48]
	add	x0, sp, 40
	ldr	x3, [sp, 24]
	mov	x2, 1
	mov	x1, 4
	bl	fread
	str	wzr, [sp, 60]
	b	.L80
.L81:
	ldrsw	x0, [sp, 60]
	mov	x1, 3
	sub	x1, x1, x0
	ldrsw	x0, [sp, 60]
	ldr	x2, [sp, 48]
	add	x0, x2, x0
	add	x2, sp, 40
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L80:
	ldr	w0, [sp, 60]
	cmp	w0, 3
	bls	.L81
	b	.L83
.L79:
	ldr	x3, [sp, 24]
	mov	x2, 1
	mov	x1, 4
	ldr	x0, [sp, 16]
	bl	fread
.L83:
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE14:
	.size	loadValue, .-loadValue
	.section	.rodata
	.align	3
.LC12:
	.string	"wb"
	.align	3
.LC13:
	.string	"w"
	.align	3
.LC14:
	.string	"%e %e %e\n"
	.text
	.align	2
	.global	LBM_storeVelocityField
	.type	LBM_storeVelocityField, %function
LBM_storeVelocityField:
.LFB15:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L85
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	b	.L86
.L85:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
.L86:
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	fopen
	str	x0, [sp, 72]
	str	wzr, [sp, 84]
	b	.L87
.L94:
	str	wzr, [sp, 88]
	b	.L88
.L93:
	str	wzr, [sp, 92]
	b	.L89
.L92:
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d0, d1, d0
	fcvt	s0, d0
	str	s0, [sp, 68]
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	fcvt	s0, d0
	str	s0, [sp, 64]
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	fcvt	s0, d0
	str	s0, [sp, 60]
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 88]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 92]
	add	w1, w1, w0
	ldr	w2, [sp, 84]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	fcvt	s0, d0
	str	s0, [sp, 56]
	ldr	s1, [sp, 64]
	ldr	s0, [sp, 68]
	fdiv	s0, s1, s0
	str	s0, [sp, 64]
	ldr	s1, [sp, 60]
	ldr	s0, [sp, 68]
	fdiv	s0, s1, s0
	str	s0, [sp, 60]
	ldr	s1, [sp, 56]
	ldr	s0, [sp, 68]
	fdiv	s0, s1, s0
	str	s0, [sp, 56]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L90
	add	x0, sp, 64
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	storeValue
	add	x0, sp, 60
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	storeValue
	add	x0, sp, 56
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	storeValue
	b	.L91
.L90:
	ldr	s0, [sp, 64]
	fcvt	d3, s0
	ldr	s0, [sp, 60]
	fcvt	d1, s0
	ldr	s0, [sp, 56]
	fcvt	d0, s0
	fmov	d2, d0
	fmov	d0, d3
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	ldr	x0, [sp, 72]
	bl	fprintf
.L91:
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L89:
	ldr	w0, [sp, 92]
	cmp	w0, 99
	ble	.L92
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
.L88:
	ldr	w0, [sp, 88]
	cmp	w0, 99
	ble	.L93
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
.L87:
	ldr	w0, [sp, 84]
	cmp	w0, 129
	ble	.L94
	ldr	x0, [sp, 72]
	bl	fclose
	nop
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE15:
	.size	LBM_storeVelocityField, .-LBM_storeVelocityField
	.section	.rodata
	.align	3
.LC15:
	.string	"r"
	.align	3
.LC16:
	.string	"%f %f %f\n"
	.align	3
.LC17:
	.string	"##### ERROR #####"
	.align	3
.LC18:
	.string	"OK"
	.align	3
.LC19:
	.string	"LBM_compareVelocityField: maxDiff = %e  ==>  %s\n\n"
	.text
	.align	2
	.global	LBM_compareVelocityField
	.type	LBM_compareVelocityField, %function
LBM_compareVelocityField:
.LFB16:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	str	d8, [sp, 16]
	.cfi_offset 72, -144
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	w2, [sp, 44]
	mov	w0, 62154
	movk	w0, 0xf149, lsl 16
	fmov	s0, w0
	str	s0, [sp, 144]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	beq	.L96
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	b	.L97
.L96:
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
.L97:
	mov	x1, x0
	ldr	x0, [sp, 48]
	bl	fopen
	str	x0, [sp, 136]
	str	wzr, [sp, 148]
	b	.L98
.L107:
	str	wzr, [sp, 152]
	b	.L99
.L106:
	str	wzr, [sp, 156]
	b	.L100
.L105:
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d0, d1, d0
	str	d0, [sp, 128]
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 4
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 120]
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 7
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 8
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 9
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 10
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 112]
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 5
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 11
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 12
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 13
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 14
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 15
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 16
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 17
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fadd	d1, d1, d0
	ldr	w1, [sp, 152]
	mov	w0, 100
	mul	w1, w1, w0
	ldr	w0, [sp, 156]
	add	w1, w1, w0
	ldr	w2, [sp, 148]
	mov	w0, 10000
	mul	w0, w2, w0
	add	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 2
	add	w0, w0, 18
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	d0, [x0]
	fsub	d0, d1, d0
	str	d0, [sp, 104]
	ldr	d0, [sp, 128]
	ldr	d1, [sp, 120]
	fdiv	d0, d1, d0
	str	d0, [sp, 120]
	ldr	d0, [sp, 128]
	ldr	d1, [sp, 112]
	fdiv	d0, d1, d0
	str	d0, [sp, 112]
	ldr	d0, [sp, 128]
	ldr	d1, [sp, 104]
	fdiv	d0, d1, d0
	str	d0, [sp, 104]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	beq	.L101
	add	x0, sp, 84
	mov	x1, x0
	ldr	x0, [sp, 136]
	bl	loadValue
	add	x0, sp, 80
	mov	x1, x0
	ldr	x0, [sp, 136]
	bl	loadValue
	add	x0, sp, 76
	mov	x1, x0
	ldr	x0, [sp, 136]
	bl	loadValue
	b	.L102
.L101:
	add	x2, sp, 76
	add	x1, sp, 80
	add	x0, sp, 84
	mov	x4, x2
	mov	x3, x1
	mov	x2, x0
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	ldr	x0, [sp, 136]
	bl	__isoc99_fscanf
.L102:
	ldr	s0, [sp, 84]
	fcvt	d0, s0
	ldr	d1, [sp, 120]
	fsub	d0, d1, d0
	fcvt	s0, d0
	str	s0, [sp, 100]
	ldr	s0, [sp, 80]
	fcvt	d0, s0
	ldr	d1, [sp, 112]
	fsub	d0, d1, d0
	fcvt	s0, d0
	str	s0, [sp, 96]
	ldr	s0, [sp, 76]
	fcvt	d0, s0
	ldr	d1, [sp, 104]
	fsub	d0, d1, d0
	fcvt	s0, d0
	str	s0, [sp, 92]
	ldr	s0, [sp, 100]
	fmul	s1, s0, s0
	ldr	s0, [sp, 96]
	fmul	s0, s0, s0
	fadd	s1, s1, s0
	ldr	s0, [sp, 92]
	fmul	s0, s0, s0
	fadd	s0, s1, s0
	str	s0, [sp, 88]
	ldr	s1, [sp, 88]
	ldr	s0, [sp, 144]
	fcmpe	s1, s0
	ble	.L103
	ldr	s0, [sp, 88]
	str	s0, [sp, 144]
.L103:
	ldr	w0, [sp, 156]
	add	w0, w0, 1
	str	w0, [sp, 156]
.L100:
	ldr	w0, [sp, 156]
	cmp	w0, 99
	ble	.L105
	ldr	w0, [sp, 152]
	add	w0, w0, 1
	str	w0, [sp, 152]
.L99:
	ldr	w0, [sp, 152]
	cmp	w0, 99
	ble	.L106
	ldr	w0, [sp, 148]
	add	w0, w0, 1
	str	w0, [sp, 148]
.L98:
	ldr	w0, [sp, 148]
	cmp	w0, 129
	ble	.L107
	ldr	s0, [sp, 144]
	fcvt	d0, s0
	bl	sqrt
	fmov	d8, d0
	ldr	s0, [sp, 144]
	fcvt	d0, s0
	bl	sqrt
	adrp	x0, .LC20
	ldr	d1, [x0, #:lo12:.LC20]
	fcmpe	d0, d1
	ble	.L113
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	b	.L110
.L113:
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
.L110:
	mov	x1, x0
	fmov	d0, d8
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	printf
	ldr	x0, [sp, 136]
	bl	fclose
	nop
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE16:
	.size	LBM_compareVelocityField, .-LBM_compareVelocityField
	.section	.rodata
	.align	3
.LC2:
	.word	477218588
	.word	1068265927
	.align	3
.LC3:
	.word	477218588
	.word	1067217351
	.align	3
.LC5:
	.word	1202590843
	.word	1064598241
	.align	3
.LC6:
	.word	3539053052
	.word	1063281229
	.align	3
.LC7:
	.word	1810275495
	.word	1068559605
	.align	3
.LC8:
	.word	1202590843
	.word	1065646817
	.align	3
.LC10:
	.word	966823146
	.word	1177108057
	.align	3
.LC11:
	.word	966823146
	.word	-970375591
	.align	3
.LC20:
	.word	2296604913
	.word	1055193269
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
