	.text
	.file	"lbm.c"
	.globl	LBM_allocateGrid        // -- Begin function LBM_allocateGrid
	.p2align	2
	.type	LBM_allocateGrid,@function
LBM_allocateGrid:                       // @LBM_allocateGrid
// %bb.0:
	sub	sp, sp, #80             // =80
	stp	x29, x30, [sp, #64]     // 16-byte Folded Spill
	add	x29, sp, #64            // =64
	mov	x8, #6784
	movk	x8, #6, lsl #16
	mov	x9, #31744
	movk	x9, #3271, lsl #16
	mov	x10, #0
	adrp	x11, .L.str
	add	x11, x11, :lo12:.L.str
	adrp	x12, .L.str.1
	add	x12, x12, :lo12:.L.str.1
	stur	x0, [x29, #-8]
	stur	x8, [x29, #-16]
	stur	x9, [x29, #-24]
	mov	x0, x9
	str	x10, [sp, #32]          // 8-byte Folded Spill
	str	x11, [sp, #24]          // 8-byte Folded Spill
	str	x12, [sp, #16]          // 8-byte Folded Spill
	bl	malloc
	ldur	x8, [x29, #-8]
	str	x0, [x8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x9, [sp, #32]           // 8-byte Folded Reload
	cmp	x8, x9
	cset	w13, ne
	tbnz	w13, #0, .LBB0_2
// %bb.1:
	orr	w0, wzr, #0x1
	mov	x8, #157195803033600
	movk	x8, #16489, lsl #48
	fmov	d0, x8
	ldr	x8, [sp, #24]           // 8-byte Folded Reload
	str	w0, [sp, #12]           // 4-byte Folded Spill
	mov	x0, x8
	bl	printf
	ldr	w9, [sp, #12]           // 4-byte Folded Reload
	mov	w0, w9
	bl	exit
.LBB0_2:
	mov	x8, #54272
	movk	x8, #48, lsl #16
	mov	x9, #157195803033600
	movk	x9, #16489, lsl #48
	fmov	d0, x9
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	str	x8, [sp]                // 8-byte Folded Spill
	bl	printf
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldr	x10, [sp]               // 8-byte Folded Reload
	add	x9, x9, x10
	str	x9, [x8]
	ldp	x29, x30, [sp, #64]     // 16-byte Folded Reload
	add	sp, sp, #80             // =80
	ret
.Lfunc_end0:
	.size	LBM_allocateGrid, .Lfunc_end0-LBM_allocateGrid
                                        // -- End function
	.globl	LBM_freeGrid            // -- Begin function LBM_freeGrid
	.p2align	2
	.type	LBM_freeGrid,@function
LBM_freeGrid:                           // @LBM_freeGrid
// %bb.0:
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	mov	x8, #6784
	movk	x8, #6, lsl #16
	mov	x9, #-54272
	movk	x9, #65487, lsl #16
	mov	x10, #0
	stur	x0, [x29, #-8]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	add	x0, x8, x9
	str	x10, [sp, #8]           // 8-byte Folded Spill
	bl	free
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]            // 8-byte Folded Reload
	str	x9, [x8]
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end1:
	.size	LBM_freeGrid, .Lfunc_end1-LBM_freeGrid
                                        // -- End function
	.globl	LBM_initializeGrid      // -- Begin function LBM_initializeGrid
	.p2align	2
	.type	LBM_initializeGrid,@function
LBM_initializeGrid:                     // @LBM_initializeGrid
// %bb.0:
	sub	sp, sp, #32             // =32
	mov	w8, #58752
	movk	w8, #65529, lsl #16
	str	x0, [sp, #24]
	str	w8, [sp, #20]
.LBB2_1:                                // =>This Inner Loop Header: Depth=1
	mov	w8, #54528
	movk	w8, #402, lsl #16
	ldr	w9, [sp, #20]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB2_2
	b	.LBB2_4
.LBB2_2:                                //   in Loop: Header=BB2_1 Depth=1
	mov	x8, #50972
	movk	x8, #7281, lsl #16
	movk	x8, #29127, lsl #32
	movk	x8, #16284, lsl #48
	fmov	d0, x8
	mov	x8, #50972
	movk	x8, #7281, lsl #16
	movk	x8, #29127, lsl #32
	movk	x8, #16300, lsl #48
	fmov	d1, x8
	mov	x8, #6148914691236517205
	movk	x8, #16341, lsl #48
	fmov	d2, x8
	orr	x8, xzr, #0x8
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #0            // =0
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d2, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #1            // =1
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d1, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #2            // =2
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d1, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #3            // =3
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d1, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #4            // =4
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d1, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #5            // =5
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d1, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #6            // =6
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d1, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #7            // =7
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d0, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #8            // =8
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d0, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #9            // =9
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d0, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #10           // =10
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d0, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #11           // =11
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d0, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #12           // =12
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d0, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #13           // =13
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d0, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #14           // =14
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d0, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #15           // =15
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d0, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #16           // =16
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d0, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #17           // =17
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d0, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #18           // =18
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	str	d0, [x9]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #20]
	add	w10, w10, #19           // =19
	mov	w11, w10
	sxtw	x11, w11
	mul	x8, x8, x11
	add	x8, x9, x8
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	str	wzr, [x8]
// %bb.3:                               //   in Loop: Header=BB2_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #20             // =20
	str	w8, [sp, #20]
	b	.LBB2_1
.LBB2_4:
	add	sp, sp, #32             // =32
	ret
.Lfunc_end2:
	.size	LBM_initializeGrid, .Lfunc_end2-LBM_initializeGrid
                                        // -- End function
	.globl	LBM_swapGrids           // -- Begin function LBM_swapGrids
	.p2align	2
	.type	LBM_swapGrids,@function
LBM_swapGrids:                          // @LBM_swapGrids
// %bb.0:
	sub	sp, sp, #32             // =32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x0, [sp, #24]
	ldr	x0, [x0]
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x0, [x0]
	ldr	x1, [sp, #24]
	str	x0, [x1]
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	str	x0, [x1]
	add	sp, sp, #32             // =32
	ret
.Lfunc_end3:
	.size	LBM_swapGrids, .Lfunc_end3-LBM_swapGrids
                                        // -- End function
	.globl	LBM_loadObstacleFile    // -- Begin function LBM_loadObstacleFile
	.p2align	2
	.type	LBM_loadObstacleFile,@function
LBM_loadObstacleFile:                   // @LBM_loadObstacleFile
// %bb.0:
	sub	sp, sp, #80             // =80
	stp	x29, x30, [sp, #64]     // 16-byte Folded Spill
	add	x29, sp, #64            // =64
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-16]
	mov	x1, x8
	bl	fopen
	str	x0, [sp, #24]
	stur	wzr, [x29, #-28]
.LBB4_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB4_3 Depth 2
                                        //       Child Loop BB4_5 Depth 3
	mov	w8, #130
	ldur	w9, [x29, #-28]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB4_2
	b	.LBB4_14
.LBB4_2:                                //   in Loop: Header=BB4_1 Depth=1
	stur	wzr, [x29, #-24]
.LBB4_3:                                //   Parent Loop BB4_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB4_5 Depth 3
	mov	w8, #100
	ldur	w9, [x29, #-24]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB4_4
	b	.LBB4_12
.LBB4_4:                                //   in Loop: Header=BB4_3 Depth=2
	stur	wzr, [x29, #-20]
.LBB4_5:                                //   Parent Loop BB4_1 Depth=1
                                        //     Parent Loop BB4_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	w8, #100
	ldur	w9, [x29, #-20]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB4_6
	b	.LBB4_10
.LBB4_6:                                //   in Loop: Header=BB4_5 Depth=3
	mov	w8, #46
	ldr	x0, [sp, #24]
	str	w8, [sp, #12]           // 4-byte Folded Spill
	bl	fgetc
	ldr	w8, [sp, #12]           // 4-byte Folded Reload
	cmp	w0, w8
	cset	w0, ne
	tbnz	w0, #0, .LBB4_7
	b	.LBB4_8
.LBB4_7:                                //   in Loop: Header=BB4_5 Depth=3
	orr	x8, xzr, #0x8
	mov	w9, #20
	orr	w10, wzr, #0x1
	mov	w11, #100
	ldur	x12, [x29, #-8]
	ldur	w13, [x29, #-20]
	ldur	w14, [x29, #-24]
	mul	w14, w14, w11
	add	w13, w13, w14
	ldur	w14, [x29, #-28]
	mul	w14, w14, w11
	mul	w11, w14, w11
	add	w11, w13, w11
	mul	w9, w9, w11
	add	w9, w9, #19             // =19
	mov	w15, w9
	sxtw	x15, w15
	mul	x8, x8, x15
	add	x8, x12, x8
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w9, [x8]
	orr	w9, w9, w10
	str	w9, [x8]
.LBB4_8:                                //   in Loop: Header=BB4_5 Depth=3
// %bb.9:                               //   in Loop: Header=BB4_5 Depth=3
	ldur	w8, [x29, #-20]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-20]
	b	.LBB4_5
.LBB4_10:                               //   in Loop: Header=BB4_3 Depth=2
	ldr	x0, [sp, #24]
	bl	fgetc
// %bb.11:                              //   in Loop: Header=BB4_3 Depth=2
	ldur	w8, [x29, #-24]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-24]
	b	.LBB4_3
.LBB4_12:                               //   in Loop: Header=BB4_1 Depth=1
	ldr	x0, [sp, #24]
	bl	fgetc
// %bb.13:                              //   in Loop: Header=BB4_1 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-28]
	b	.LBB4_1
.LBB4_14:
	ldr	x0, [sp, #24]
	bl	fclose
	ldp	x29, x30, [sp, #64]     // 16-byte Folded Reload
	add	sp, sp, #80             // =80
	ret
.Lfunc_end4:
	.size	LBM_loadObstacleFile, .Lfunc_end4-LBM_loadObstacleFile
                                        // -- End function
	.globl	LBM_initializeSpecialCellsForLDC // -- Begin function LBM_initializeSpecialCellsForLDC
	.p2align	2
	.type	LBM_initializeSpecialCellsForLDC,@function
LBM_initializeSpecialCellsForLDC:       // @LBM_initializeSpecialCellsForLDC
// %bb.0:
	sub	sp, sp, #48             // =48
	orr	w8, wzr, #0xfffffffe
	str	x0, [sp, #40]
	str	w8, [sp, #28]
.LBB5_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB5_3 Depth 2
                                        //       Child Loop BB5_5 Depth 3
	mov	w8, #132
	ldr	w9, [sp, #28]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB5_2
	b	.LBB5_27
.LBB5_2:                                //   in Loop: Header=BB5_1 Depth=1
	str	wzr, [sp, #32]
.LBB5_3:                                //   Parent Loop BB5_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB5_5 Depth 3
	mov	w8, #100
	ldr	w9, [sp, #32]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB5_4
	b	.LBB5_25
.LBB5_4:                                //   in Loop: Header=BB5_3 Depth=2
	str	wzr, [sp, #36]
.LBB5_5:                                //   Parent Loop BB5_1 Depth=1
                                        //     Parent Loop BB5_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	w8, #100
	ldr	w9, [sp, #36]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB5_6
	b	.LBB5_23
.LBB5_6:                                //   in Loop: Header=BB5_5 Depth=3
	ldr	w8, [sp, #36]
	cbz	w8, .LBB5_12
// %bb.7:                               //   in Loop: Header=BB5_5 Depth=3
	mov	w8, #99
	ldr	w9, [sp, #36]
	cmp	w9, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB5_12
// %bb.8:                               //   in Loop: Header=BB5_5 Depth=3
	ldr	w8, [sp, #32]
	cbz	w8, .LBB5_12
// %bb.9:                               //   in Loop: Header=BB5_5 Depth=3
	mov	w8, #99
	ldr	w9, [sp, #32]
	cmp	w9, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB5_12
// %bb.10:                              //   in Loop: Header=BB5_5 Depth=3
	ldr	w8, [sp, #28]
	cbz	w8, .LBB5_12
// %bb.11:                              //   in Loop: Header=BB5_5 Depth=3
	mov	w8, #129
	ldr	w9, [sp, #28]
	cmp	w9, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB5_12
	b	.LBB5_13
.LBB5_12:                               //   in Loop: Header=BB5_5 Depth=3
	orr	x8, xzr, #0x8
	mov	w9, #20
	orr	w10, wzr, #0x1
	mov	w11, #100
	ldr	x12, [sp, #40]
	ldr	w13, [sp, #36]
	ldr	w14, [sp, #32]
	mul	w14, w14, w11
	add	w13, w13, w14
	ldr	w14, [sp, #28]
	mul	w14, w14, w11
	mul	w11, w14, w11
	add	w11, w13, w11
	mul	w9, w9, w11
	add	w9, w9, #19             // =19
	mov	w15, w9
	sxtw	x15, w15
	mul	x8, x8, x15
	add	x8, x12, x8
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w9, [x8]
	orr	w9, w9, w10
	str	w9, [x8]
	b	.LBB5_21
.LBB5_13:                               //   in Loop: Header=BB5_5 Depth=3
	orr	w8, wzr, #0x1
	ldr	w9, [sp, #28]
	cmp	w9, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB5_15
// %bb.14:                              //   in Loop: Header=BB5_5 Depth=3
	orr	w8, wzr, #0x80
	ldr	w9, [sp, #28]
	cmp	w9, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB5_15
	b	.LBB5_20
.LBB5_15:                               //   in Loop: Header=BB5_5 Depth=3
	orr	w8, wzr, #0x1
	ldr	w9, [sp, #36]
	cmp	w9, w8
	cset	w8, gt
	tbnz	w8, #0, .LBB5_16
	b	.LBB5_20
.LBB5_16:                               //   in Loop: Header=BB5_5 Depth=3
	mov	w8, #98
	ldr	w9, [sp, #36]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB5_17
	b	.LBB5_20
.LBB5_17:                               //   in Loop: Header=BB5_5 Depth=3
	orr	w8, wzr, #0x1
	ldr	w9, [sp, #32]
	cmp	w9, w8
	cset	w8, gt
	tbnz	w8, #0, .LBB5_18
	b	.LBB5_20
.LBB5_18:                               //   in Loop: Header=BB5_5 Depth=3
	mov	w8, #98
	ldr	w9, [sp, #32]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB5_19
	b	.LBB5_20
.LBB5_19:                               //   in Loop: Header=BB5_5 Depth=3
	orr	w8, wzr, #0x2
	orr	x9, xzr, #0x8
	mov	w10, #20
	mov	w11, #100
	ldr	x12, [sp, #40]
	ldr	w13, [sp, #36]
	ldr	w14, [sp, #32]
	mul	w14, w14, w11
	add	w13, w13, w14
	ldr	w14, [sp, #28]
	mul	w14, w14, w11
	mul	w11, w14, w11
	add	w11, w13, w11
	mul	w10, w10, w11
	add	w10, w10, #19           // =19
	mov	w15, w10
	sxtw	x15, w15
	mul	x9, x9, x15
	add	x9, x12, x9
	str	x9, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	w10, [x9]
	orr	w8, w10, w8
	str	w8, [x9]
.LBB5_20:                               //   in Loop: Header=BB5_5 Depth=3
.LBB5_21:                               //   in Loop: Header=BB5_5 Depth=3
// %bb.22:                              //   in Loop: Header=BB5_5 Depth=3
	ldr	w8, [sp, #36]
	add	w8, w8, #1              // =1
	str	w8, [sp, #36]
	b	.LBB5_5
.LBB5_23:                               //   in Loop: Header=BB5_3 Depth=2
// %bb.24:                              //   in Loop: Header=BB5_3 Depth=2
	ldr	w8, [sp, #32]
	add	w8, w8, #1              // =1
	str	w8, [sp, #32]
	b	.LBB5_3
.LBB5_25:                               //   in Loop: Header=BB5_1 Depth=1
// %bb.26:                              //   in Loop: Header=BB5_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1              // =1
	str	w8, [sp, #28]
	b	.LBB5_1
.LBB5_27:
	add	sp, sp, #48             // =48
	ret
.Lfunc_end5:
	.size	LBM_initializeSpecialCellsForLDC, .Lfunc_end5-LBM_initializeSpecialCellsForLDC
                                        // -- End function
	.globl	LBM_initializeSpecialCellsForChannel // -- Begin function LBM_initializeSpecialCellsForChannel
	.p2align	2
	.type	LBM_initializeSpecialCellsForChannel,@function
LBM_initializeSpecialCellsForChannel:   // @LBM_initializeSpecialCellsForChannel
// %bb.0:
	sub	sp, sp, #48             // =48
	orr	w8, wzr, #0xfffffffe
	str	x0, [sp, #40]
	str	w8, [sp, #28]
.LBB6_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB6_3 Depth 2
                                        //       Child Loop BB6_5 Depth 3
	mov	w8, #132
	ldr	w9, [sp, #28]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB6_2
	b	.LBB6_21
.LBB6_2:                                //   in Loop: Header=BB6_1 Depth=1
	str	wzr, [sp, #32]
.LBB6_3:                                //   Parent Loop BB6_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB6_5 Depth 3
	mov	w8, #100
	ldr	w9, [sp, #32]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB6_4
	b	.LBB6_19
.LBB6_4:                                //   in Loop: Header=BB6_3 Depth=2
	str	wzr, [sp, #36]
.LBB6_5:                                //   Parent Loop BB6_1 Depth=1
                                        //     Parent Loop BB6_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	w8, #100
	ldr	w9, [sp, #36]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB6_6
	b	.LBB6_17
.LBB6_6:                                //   in Loop: Header=BB6_5 Depth=3
	ldr	w8, [sp, #36]
	cbz	w8, .LBB6_10
// %bb.7:                               //   in Loop: Header=BB6_5 Depth=3
	mov	w8, #99
	ldr	w9, [sp, #36]
	cmp	w9, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_10
// %bb.8:                               //   in Loop: Header=BB6_5 Depth=3
	ldr	w8, [sp, #32]
	cbz	w8, .LBB6_10
// %bb.9:                               //   in Loop: Header=BB6_5 Depth=3
	mov	w8, #99
	ldr	w9, [sp, #32]
	cmp	w9, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_10
	b	.LBB6_15
.LBB6_10:                               //   in Loop: Header=BB6_5 Depth=3
	orr	x8, xzr, #0x8
	mov	w9, #20
	orr	w10, wzr, #0x1
	mov	w11, #100
	ldr	x12, [sp, #40]
	ldr	w13, [sp, #36]
	ldr	w14, [sp, #32]
	mul	w14, w14, w11
	add	w13, w13, w14
	ldr	w14, [sp, #28]
	mul	w14, w14, w11
	mul	w11, w14, w11
	add	w11, w13, w11
	mul	w9, w9, w11
	add	w9, w9, #19             // =19
	mov	w15, w9
	sxtw	x15, w15
	mul	x8, x8, x15
	add	x8, x12, x8
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w9, [x8]
	orr	w9, w9, w10
	str	w9, [x8]
	ldr	w9, [sp, #28]
	cbz	w9, .LBB6_12
// %bb.11:                              //   in Loop: Header=BB6_5 Depth=3
	mov	w8, #129
	ldr	w9, [sp, #28]
	cmp	w9, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_12
	b	.LBB6_14
.LBB6_12:                               //   in Loop: Header=BB6_5 Depth=3
	orr	x8, xzr, #0x8
	mov	w9, #20
	orr	w10, wzr, #0x1
	mov	w11, #100
	ldr	x12, [sp, #40]
	ldr	w13, [sp, #36]
	ldr	w14, [sp, #32]
	mul	w14, w14, w11
	add	w13, w13, w14
	ldr	w14, [sp, #28]
	mul	w14, w14, w11
	mul	w11, w14, w11
	add	w11, w13, w11
	mul	w9, w9, w11
	add	w9, w9, #19             // =19
	mov	w15, w9
	sxtw	x15, w15
	mul	x8, x8, x15
	add	x8, x12, x8
	ldr	w9, [x8]
	and	w9, w9, w10
	cbnz	w9, .LBB6_14
// %bb.13:                              //   in Loop: Header=BB6_5 Depth=3
	orr	w8, wzr, #0x4
	orr	x9, xzr, #0x8
	mov	w10, #20
	mov	w11, #100
	ldr	x12, [sp, #40]
	ldr	w13, [sp, #36]
	ldr	w14, [sp, #32]
	mul	w14, w14, w11
	add	w13, w13, w14
	ldr	w14, [sp, #28]
	mul	w14, w14, w11
	mul	w11, w14, w11
	add	w11, w13, w11
	mul	w10, w10, w11
	add	w10, w10, #19           // =19
	mov	w15, w10
	sxtw	x15, w15
	mul	x9, x9, x15
	add	x9, x12, x9
	str	x9, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	w10, [x9]
	orr	w8, w10, w8
	str	w8, [x9]
.LBB6_14:                               //   in Loop: Header=BB6_5 Depth=3
.LBB6_15:                               //   in Loop: Header=BB6_5 Depth=3
// %bb.16:                              //   in Loop: Header=BB6_5 Depth=3
	ldr	w8, [sp, #36]
	add	w8, w8, #1              // =1
	str	w8, [sp, #36]
	b	.LBB6_5
.LBB6_17:                               //   in Loop: Header=BB6_3 Depth=2
// %bb.18:                              //   in Loop: Header=BB6_3 Depth=2
	ldr	w8, [sp, #32]
	add	w8, w8, #1              // =1
	str	w8, [sp, #32]
	b	.LBB6_3
.LBB6_19:                               //   in Loop: Header=BB6_1 Depth=1
// %bb.20:                              //   in Loop: Header=BB6_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1              // =1
	str	w8, [sp, #28]
	b	.LBB6_1
.LBB6_21:
	add	sp, sp, #48             // =48
	ret
.Lfunc_end6:
	.size	LBM_initializeSpecialCellsForChannel, .Lfunc_end6-LBM_initializeSpecialCellsForChannel
                                        // -- End function
	.globl	LBM_performStreamCollideBGK // -- Begin function LBM_performStreamCollideBGK
	.p2align	2
	.type	LBM_performStreamCollideBGK,@function
LBM_performStreamCollideBGK:            // @LBM_performStreamCollideBGK
// %bb.0:
	sub	sp, sp, #64             // =64
	str	x0, [sp, #56]
	str	x1, [sp, #48]
	str	wzr, [sp, #44]
.LBB7_1:                                // =>This Inner Loop Header: Depth=1
	mov	w8, #47744
	movk	w8, #396, lsl #16
	ldr	w9, [sp, #44]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB7_2
	b	.LBB7_8
.LBB7_2:                                //   in Loop: Header=BB7_1 Depth=1
	orr	w8, wzr, #0x1
	orr	x9, xzr, #0x8
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #19           // =19
	mov	w12, w11
	sxtw	x12, w12
	mul	x9, x9, x12
	add	x9, x10, x9
	ldr	w11, [x9]
	and	w8, w11, w8
	cbnz	w8, .LBB7_3
	b	.LBB7_4
.LBB7_3:                                //   in Loop: Header=BB7_1 Depth=1
	mov	w8, #62142
	movk	w8, #65532, lsl #16
	mov	w9, #3389
	movk	w9, #3, lsl #16
	mov	w10, #62180
	movk	w10, #65532, lsl #16
	mov	w11, #3427
	movk	w11, #3, lsl #16
	mov	w12, #60158
	movk	w12, #65532, lsl #16
	mov	w13, #1405
	movk	w13, #3, lsl #16
	mov	w14, #64156
	movk	w14, #65532, lsl #16
	mov	w15, #5403
	movk	w15, #3, lsl #16
	mov	w16, #-2010
	mov	w17, #-1971
	mov	w18, #62150
	movk	w18, #65532, lsl #16
	mov	w0, #3397
	movk	w0, #3, lsl #16
	orr	w1, wzr, #0xfffffff0
	mov	w2, #-1998
	orr	x3, xzr, #0x8
	ldr	x4, [sp, #56]
	ldr	w5, [sp, #44]
	add	w5, w5, #0              // =0
	mov	w6, w5
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w5, [sp, #44]
	add	w5, w5, #0              // =0
	mov	w7, w5
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w5, [sp, #44]
	add	w5, w5, #1              // =1
	mov	w6, w5
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w5, [sp, #44]
	add	w2, w2, w5
	mov	w7, w2
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w2, [sp, #44]
	add	w2, w2, #2              // =2
	mov	w6, w2
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w2, [sp, #44]
	add	w2, w2, #2001           // =2001
	mov	w7, w2
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w2, [sp, #44]
	add	w2, w2, #3              // =3
	mov	w6, w2
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w2, [sp, #44]
	add	w1, w1, w2
	mov	w7, w1
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w1, [sp, #44]
	add	w1, w1, #4              // =4
	mov	w6, w1
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w1, [sp, #44]
	add	w1, w1, #23             // =23
	mov	w7, w1
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w1, [sp, #44]
	add	w1, w1, #5              // =5
	mov	w6, w1
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w1, [sp, #44]
	add	w18, w18, w1
	mov	w7, w18
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w18, [sp, #44]
	add	w18, w18, #6            // =6
	mov	w6, w18
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w18, [sp, #44]
	add	w18, w0, w18
	mov	w7, w18
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w18, [sp, #44]
	add	w18, w18, #7            // =7
	mov	w6, w18
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w18, [sp, #44]
	add	w16, w16, w18
	mov	w7, w16
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w16, [sp, #44]
	add	w16, w16, #8            // =8
	mov	w6, w16
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w16, [sp, #44]
	add	w16, w17, w16
	mov	w7, w16
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w16, [sp, #44]
	add	w16, w16, #9            // =9
	mov	w6, w16
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w16, [sp, #44]
	add	w16, w16, #1988         // =1988
	mov	w7, w16
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w16, [sp, #44]
	add	w16, w16, #10           // =10
	mov	w6, w16
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w16, [sp, #44]
	add	w16, w16, #2027         // =2027
	mov	w7, w16
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w16, [sp, #44]
	add	w16, w16, #11           // =11
	mov	w6, w16
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w16, [sp, #44]
	add	w12, w12, w16
	mov	w7, w12
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w12, [sp, #44]
	add	w12, w12, #12           // =12
	mov	w6, w12
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w12, [sp, #44]
	add	w12, w13, w12
	mov	w7, w12
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w12, [sp, #44]
	add	w12, w12, #13           // =13
	mov	w6, w12
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w12, [sp, #44]
	add	w12, w14, w12
	mov	w7, w12
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w12, [sp, #44]
	add	w12, w12, #14           // =14
	mov	w6, w12
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w12, [sp, #44]
	add	w12, w15, w12
	mov	w7, w12
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w12, [sp, #44]
	add	w12, w12, #15           // =15
	mov	w6, w12
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w12, [sp, #44]
	add	w8, w8, w12
	mov	w7, w8
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w8, [sp, #44]
	add	w8, w8, #16             // =16
	mov	w6, w8
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w8, [sp, #44]
	add	w8, w9, w8
	mov	w7, w8
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w8, [sp, #44]
	add	w8, w8, #17             // =17
	mov	w6, w8
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w8, [sp, #44]
	add	w8, w10, w8
	mov	w7, w8
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #56]
	ldr	w8, [sp, #44]
	add	w8, w8, #18             // =18
	mov	w6, w8
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #48]
	ldr	w8, [sp, #44]
	add	w8, w11, w8
	mov	w7, w8
	sxtw	x7, w7
	mul	x3, x3, x7
	add	x3, x6, x3
	str	x4, [x3]
	b	.LBB7_7
.LBB7_4:                                //   in Loop: Header=BB7_1 Depth=1
	orr	w8, wzr, #0x2
	orr	x9, xzr, #0x8
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #0            // =0
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d0, [x10]
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #1            // =1
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #2            // =2
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #3            // =3
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #4            // =4
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #5            // =5
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #6            // =6
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #7            // =7
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #8            // =8
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #9            // =9
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #10           // =10
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #11           // =11
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #12           // =12
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #13           // =13
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #14           // =14
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #15           // =15
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #16           // =16
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #17           // =17
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #18           // =18
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	str	d0, [sp]
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #3            // =3
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d0, [x10]
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #4            // =4
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #7            // =7
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #8            // =8
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #9            // =9
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #10           // =10
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #15           // =15
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #16           // =16
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #17           // =17
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #18           // =18
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	str	d0, [sp, #32]
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #1            // =1
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d0, [x10]
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #2            // =2
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #7            // =7
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #8            // =8
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #9            // =9
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #10           // =10
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #11           // =11
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #12           // =12
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #13           // =13
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #14           // =14
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	str	d0, [sp, #24]
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #5            // =5
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d0, [x10]
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #6            // =6
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #11           // =11
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #12           // =12
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #13           // =13
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #14           // =14
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #15           // =15
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #16           // =16
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #17           // =17
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #18           // =18
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	str	d0, [sp, #16]
	ldr	d0, [sp]
	ldr	d1, [sp, #32]
	fdiv	d0, d1, d0
	str	d0, [sp, #32]
	ldr	d0, [sp]
	ldr	d1, [sp, #24]
	fdiv	d0, d1, d0
	str	d0, [sp, #24]
	ldr	d0, [sp]
	ldr	d1, [sp, #16]
	fdiv	d0, d1, d0
	str	d0, [sp, #16]
	ldr	x10, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #19           // =19
	mov	w12, w11
	sxtw	x12, w12
	mul	x9, x9, x12
	add	x9, x10, x9
	ldr	w11, [x9]
	and	w8, w11, w8
	cbnz	w8, .LBB7_5
	b	.LBB7_6
.LBB7_5:                                //   in Loop: Header=BB7_1 Depth=1
	fmov	d0, xzr
	mov	x8, #43516
	movk	x8, #54001, lsl #16
	movk	x8, #25165, lsl #32
	movk	x8, #16224, lsl #48
	fmov	d1, x8
	mov	x8, #5243
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16244, lsl #48
	fmov	d2, x8
	str	d2, [sp, #32]
	str	d1, [sp, #24]
	str	d0, [sp, #16]
.LBB7_6:                                //   in Loop: Header=BB7_1 Depth=1
	mov	w8, #62142
	movk	w8, #65532, lsl #16
	mov	w9, #3389
	movk	w9, #3, lsl #16
	mov	w10, #62180
	movk	w10, #65532, lsl #16
	mov	w11, #3427
	movk	w11, #3, lsl #16
	mov	w12, #60158
	movk	w12, #65532, lsl #16
	mov	w13, #1405
	movk	w13, #3, lsl #16
	mov	w14, #64156
	movk	w14, #65532, lsl #16
	mov	w15, #5403
	movk	w15, #3, lsl #16
	mov	w16, #-2010
	mov	w17, #-1971
	mov	x18, #-4919131752989213765
	movk	x18, #16299, lsl #48
	fmov	d0, x18
	mov	w0, #62150
	movk	w0, #65532, lsl #16
	mov	w1, #3397
	movk	w1, #3, lsl #16
	orr	w2, wzr, #0xfffffff0
	mov	w3, #-1998
	mov	x18, #4613937818241073152
	fmov	d1, x18
	mov	x18, #4616752568008179712
	fmov	d2, x18
	mov	x18, #-4919131752989213765
	movk	x18, #16315, lsl #48
	fmov	d3, x18
	orr	x18, xzr, #0x3ff0000000000000
	fmov	d4, x18
	mov	x18, #-3689348814741910324
	movk	x18, #16356, lsl #48
	fmov	d5, x18
	mov	x18, #7378697629483820646
	movk	x18, #49134, lsl #48
	fmov	d6, x18
	orr	x18, xzr, #0x3ff8000000000000
	fmov	d7, x18
	orr	x18, xzr, #0x8
	ldr	d16, [sp, #32]
	ldr	d17, [sp, #32]
	fmul	d16, d16, d17
	ldr	d17, [sp, #24]
	ldr	d18, [sp, #24]
	fmul	d17, d17, d18
	fadd	d16, d16, d17
	ldr	d17, [sp, #16]
	ldr	d18, [sp, #16]
	fmul	d17, d17, d18
	fadd	d16, d16, d17
	fmul	d7, d7, d16
	str	d7, [sp, #8]
	ldr	x4, [sp, #56]
	ldr	w5, [sp, #44]
	add	w5, w5, #0              // =0
	mov	w6, w5
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d7, [x4]
	fmul	d7, d6, d7
	ldr	d16, [sp]
	fmul	d5, d5, d16
	ldr	d16, [sp, #8]
	fsub	d16, d4, d16
	fmul	d5, d5, d16
	fadd	d5, d7, d5
	ldr	x4, [sp, #48]
	ldr	w5, [sp, #44]
	add	w5, w5, #0              // =0
	mov	w6, w5
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d5, [x4]
	ldr	x4, [sp, #56]
	ldr	w5, [sp, #44]
	add	w5, w5, #1              // =1
	mov	w6, w5
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d5, [x4]
	fmul	d5, d6, d5
	ldr	d7, [sp]
	fmul	d7, d3, d7
	ldr	d16, [sp, #24]
	ldr	d17, [sp, #24]
	fmul	d17, d2, d17
	fadd	d17, d17, d1
	fmul	d16, d16, d17
	fadd	d16, d4, d16
	ldr	d17, [sp, #8]
	fsub	d16, d16, d17
	fmul	d7, d7, d16
	fadd	d5, d5, d7
	ldr	x4, [sp, #48]
	ldr	w5, [sp, #44]
	add	w5, w5, #2001           // =2001
	mov	w6, w5
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d5, [x4]
	ldr	x4, [sp, #56]
	ldr	w5, [sp, #44]
	add	w5, w5, #2              // =2
	mov	w6, w5
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d5, [x4]
	fmul	d5, d6, d5
	ldr	d7, [sp]
	fmul	d7, d3, d7
	ldr	d16, [sp, #24]
	ldr	d17, [sp, #24]
	fmul	d17, d2, d17
	fsub	d17, d17, d1
	fmul	d16, d16, d17
	fadd	d16, d4, d16
	ldr	d17, [sp, #8]
	fsub	d16, d16, d17
	fmul	d7, d7, d16
	fadd	d5, d5, d7
	ldr	x4, [sp, #48]
	ldr	w5, [sp, #44]
	add	w3, w3, w5
	mov	w6, w3
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d5, [x4]
	ldr	x4, [sp, #56]
	ldr	w3, [sp, #44]
	add	w3, w3, #3              // =3
	mov	w6, w3
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d5, [x4]
	fmul	d5, d6, d5
	ldr	d7, [sp]
	fmul	d7, d3, d7
	ldr	d16, [sp, #32]
	ldr	d17, [sp, #32]
	fmul	d17, d2, d17
	fadd	d17, d17, d1
	fmul	d16, d16, d17
	fadd	d16, d4, d16
	ldr	d17, [sp, #8]
	fsub	d16, d16, d17
	fmul	d7, d7, d16
	fadd	d5, d5, d7
	ldr	x4, [sp, #48]
	ldr	w3, [sp, #44]
	add	w3, w3, #23             // =23
	mov	w6, w3
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d5, [x4]
	ldr	x4, [sp, #56]
	ldr	w3, [sp, #44]
	add	w3, w3, #4              // =4
	mov	w6, w3
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d5, [x4]
	fmul	d5, d6, d5
	ldr	d7, [sp]
	fmul	d7, d3, d7
	ldr	d16, [sp, #32]
	ldr	d17, [sp, #32]
	fmul	d17, d2, d17
	fsub	d17, d17, d1
	fmul	d16, d16, d17
	fadd	d16, d4, d16
	ldr	d17, [sp, #8]
	fsub	d16, d16, d17
	fmul	d7, d7, d16
	fadd	d5, d5, d7
	ldr	x4, [sp, #48]
	ldr	w3, [sp, #44]
	add	w2, w2, w3
	mov	w6, w2
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d5, [x4]
	ldr	x4, [sp, #56]
	ldr	w2, [sp, #44]
	add	w2, w2, #5              // =5
	mov	w6, w2
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d5, [x4]
	fmul	d5, d6, d5
	ldr	d7, [sp]
	fmul	d7, d3, d7
	ldr	d16, [sp, #16]
	ldr	d17, [sp, #16]
	fmul	d17, d2, d17
	fadd	d17, d17, d1
	fmul	d16, d16, d17
	fadd	d16, d4, d16
	ldr	d17, [sp, #8]
	fsub	d16, d16, d17
	fmul	d7, d7, d16
	fadd	d5, d5, d7
	ldr	x4, [sp, #48]
	ldr	w2, [sp, #44]
	add	w1, w1, w2
	mov	w6, w1
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d5, [x4]
	ldr	x4, [sp, #56]
	ldr	w1, [sp, #44]
	add	w1, w1, #6              // =6
	mov	w6, w1
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d5, [x4]
	fmul	d5, d6, d5
	ldr	d7, [sp]
	fmul	d3, d3, d7
	ldr	d7, [sp, #16]
	ldr	d16, [sp, #16]
	fmul	d16, d2, d16
	fsub	d16, d16, d1
	fmul	d7, d7, d16
	fadd	d7, d4, d7
	ldr	d16, [sp, #8]
	fsub	d7, d7, d16
	fmul	d3, d3, d7
	fadd	d3, d5, d3
	ldr	x4, [sp, #48]
	ldr	w1, [sp, #44]
	add	w0, w0, w1
	mov	w6, w0
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d3, [x4]
	ldr	x4, [sp, #56]
	ldr	w0, [sp, #44]
	add	w0, w0, #7              // =7
	mov	w6, w0
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d3, [x4]
	fmul	d3, d6, d3
	ldr	d5, [sp]
	fmul	d5, d0, d5
	ldr	d7, [sp, #32]
	ldr	d16, [sp, #24]
	fadd	d7, d7, d16
	ldr	d16, [sp, #32]
	ldr	d17, [sp, #24]
	fadd	d16, d16, d17
	fmul	d16, d2, d16
	fadd	d16, d16, d1
	fmul	d7, d7, d16
	fadd	d7, d4, d7
	ldr	d16, [sp, #8]
	fsub	d7, d7, d16
	fmul	d5, d5, d7
	fadd	d3, d3, d5
	ldr	x4, [sp, #48]
	ldr	w0, [sp, #44]
	add	w0, w0, #2027           // =2027
	mov	w6, w0
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d3, [x4]
	ldr	x4, [sp, #56]
	ldr	w0, [sp, #44]
	add	w0, w0, #8              // =8
	mov	w6, w0
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d3, [x4]
	fmul	d3, d6, d3
	ldr	d5, [sp]
	fmul	d5, d0, d5
	ldr	d7, [sp, #32]
	orr	x4, xzr, #0x8000000000000000
	fmov	d16, x4
	fsub	d7, d16, d7
	ldr	d16, [sp, #24]
	fadd	d7, d7, d16
	ldr	d16, [sp, #32]
	orr	x4, xzr, #0x8000000000000000
	fmov	d17, x4
	fsub	d16, d17, d16
	ldr	d17, [sp, #24]
	fadd	d16, d16, d17
	fmul	d16, d2, d16
	fadd	d16, d16, d1
	fmul	d7, d7, d16
	fadd	d7, d4, d7
	ldr	d16, [sp, #8]
	fsub	d7, d7, d16
	fmul	d5, d5, d7
	fadd	d3, d3, d5
	ldr	x4, [sp, #48]
	ldr	w0, [sp, #44]
	add	w0, w0, #1988           // =1988
	mov	w6, w0
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d3, [x4]
	ldr	x4, [sp, #56]
	ldr	w0, [sp, #44]
	add	w0, w0, #9              // =9
	mov	w6, w0
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d3, [x4]
	fmul	d3, d6, d3
	ldr	d5, [sp]
	fmul	d5, d0, d5
	ldr	d7, [sp, #32]
	ldr	d16, [sp, #24]
	fsub	d7, d7, d16
	ldr	d16, [sp, #32]
	ldr	d17, [sp, #24]
	fsub	d16, d16, d17
	fmul	d16, d2, d16
	fadd	d16, d16, d1
	fmul	d7, d7, d16
	fadd	d7, d4, d7
	ldr	d16, [sp, #8]
	fsub	d7, d7, d16
	fmul	d5, d5, d7
	fadd	d3, d3, d5
	ldr	x4, [sp, #48]
	ldr	w0, [sp, #44]
	add	w17, w17, w0
	mov	w6, w17
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d3, [x4]
	ldr	x4, [sp, #56]
	ldr	w17, [sp, #44]
	add	w17, w17, #10           // =10
	mov	w6, w17
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d3, [x4]
	fmul	d3, d6, d3
	ldr	d5, [sp]
	fmul	d5, d0, d5
	ldr	d7, [sp, #32]
	orr	x4, xzr, #0x8000000000000000
	fmov	d16, x4
	fsub	d7, d16, d7
	ldr	d16, [sp, #24]
	fsub	d7, d7, d16
	ldr	d16, [sp, #32]
	orr	x4, xzr, #0x8000000000000000
	fmov	d17, x4
	fsub	d16, d17, d16
	ldr	d17, [sp, #24]
	fsub	d16, d16, d17
	fmul	d16, d2, d16
	fadd	d16, d16, d1
	fmul	d7, d7, d16
	fadd	d7, d4, d7
	ldr	d16, [sp, #8]
	fsub	d7, d7, d16
	fmul	d5, d5, d7
	fadd	d3, d3, d5
	ldr	x4, [sp, #48]
	ldr	w17, [sp, #44]
	add	w16, w16, w17
	mov	w6, w16
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d3, [x4]
	ldr	x4, [sp, #56]
	ldr	w16, [sp, #44]
	add	w16, w16, #11           // =11
	mov	w6, w16
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d3, [x4]
	fmul	d3, d6, d3
	ldr	d5, [sp]
	fmul	d5, d0, d5
	ldr	d7, [sp, #24]
	ldr	d16, [sp, #16]
	fadd	d7, d7, d16
	ldr	d16, [sp, #24]
	ldr	d17, [sp, #16]
	fadd	d16, d16, d17
	fmul	d16, d2, d16
	fadd	d16, d16, d1
	fmul	d7, d7, d16
	fadd	d7, d4, d7
	ldr	d16, [sp, #8]
	fsub	d7, d7, d16
	fmul	d5, d5, d7
	fadd	d3, d3, d5
	ldr	x4, [sp, #48]
	ldr	w16, [sp, #44]
	add	w15, w15, w16
	mov	w6, w15
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d3, [x4]
	ldr	x4, [sp, #56]
	ldr	w15, [sp, #44]
	add	w15, w15, #12           // =12
	mov	w6, w15
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d3, [x4]
	fmul	d3, d6, d3
	ldr	d5, [sp]
	fmul	d5, d0, d5
	ldr	d7, [sp, #24]
	ldr	d16, [sp, #16]
	fsub	d7, d7, d16
	ldr	d16, [sp, #24]
	ldr	d17, [sp, #16]
	fsub	d16, d16, d17
	fmul	d16, d2, d16
	fadd	d16, d16, d1
	fmul	d7, d7, d16
	fadd	d7, d4, d7
	ldr	d16, [sp, #8]
	fsub	d7, d7, d16
	fmul	d5, d5, d7
	fadd	d3, d3, d5
	ldr	x4, [sp, #48]
	ldr	w15, [sp, #44]
	add	w14, w14, w15
	mov	w6, w14
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d3, [x4]
	ldr	x4, [sp, #56]
	ldr	w14, [sp, #44]
	add	w14, w14, #13           // =13
	mov	w6, w14
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d3, [x4]
	fmul	d3, d6, d3
	ldr	d5, [sp]
	fmul	d5, d0, d5
	ldr	d7, [sp, #24]
	orr	x4, xzr, #0x8000000000000000
	fmov	d16, x4
	fsub	d7, d16, d7
	ldr	d16, [sp, #16]
	fadd	d7, d7, d16
	ldr	d16, [sp, #24]
	orr	x4, xzr, #0x8000000000000000
	fmov	d17, x4
	fsub	d16, d17, d16
	ldr	d17, [sp, #16]
	fadd	d16, d16, d17
	fmul	d16, d2, d16
	fadd	d16, d16, d1
	fmul	d7, d7, d16
	fadd	d7, d4, d7
	ldr	d16, [sp, #8]
	fsub	d7, d7, d16
	fmul	d5, d5, d7
	fadd	d3, d3, d5
	ldr	x4, [sp, #48]
	ldr	w14, [sp, #44]
	add	w13, w13, w14
	mov	w6, w13
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d3, [x4]
	ldr	x4, [sp, #56]
	ldr	w13, [sp, #44]
	add	w13, w13, #14           // =14
	mov	w6, w13
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d3, [x4]
	fmul	d3, d6, d3
	ldr	d5, [sp]
	fmul	d5, d0, d5
	ldr	d7, [sp, #24]
	orr	x4, xzr, #0x8000000000000000
	fmov	d16, x4
	fsub	d7, d16, d7
	ldr	d16, [sp, #16]
	fsub	d7, d7, d16
	ldr	d16, [sp, #24]
	orr	x4, xzr, #0x8000000000000000
	fmov	d17, x4
	fsub	d16, d17, d16
	ldr	d17, [sp, #16]
	fsub	d16, d16, d17
	fmul	d16, d2, d16
	fadd	d16, d16, d1
	fmul	d7, d7, d16
	fadd	d7, d4, d7
	ldr	d16, [sp, #8]
	fsub	d7, d7, d16
	fmul	d5, d5, d7
	fadd	d3, d3, d5
	ldr	x4, [sp, #48]
	ldr	w13, [sp, #44]
	add	w12, w12, w13
	mov	w6, w12
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d3, [x4]
	ldr	x4, [sp, #56]
	ldr	w12, [sp, #44]
	add	w12, w12, #15           // =15
	mov	w6, w12
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d3, [x4]
	fmul	d3, d6, d3
	ldr	d5, [sp]
	fmul	d5, d0, d5
	ldr	d7, [sp, #32]
	ldr	d16, [sp, #16]
	fadd	d7, d7, d16
	ldr	d16, [sp, #32]
	ldr	d17, [sp, #16]
	fadd	d16, d16, d17
	fmul	d16, d2, d16
	fadd	d16, d16, d1
	fmul	d7, d7, d16
	fadd	d7, d4, d7
	ldr	d16, [sp, #8]
	fsub	d7, d7, d16
	fmul	d5, d5, d7
	fadd	d3, d3, d5
	ldr	x4, [sp, #48]
	ldr	w12, [sp, #44]
	add	w11, w11, w12
	mov	w6, w11
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d3, [x4]
	ldr	x4, [sp, #56]
	ldr	w11, [sp, #44]
	add	w11, w11, #16           // =16
	mov	w6, w11
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d3, [x4]
	fmul	d3, d6, d3
	ldr	d5, [sp]
	fmul	d5, d0, d5
	ldr	d7, [sp, #32]
	ldr	d16, [sp, #16]
	fsub	d7, d7, d16
	ldr	d16, [sp, #32]
	ldr	d17, [sp, #16]
	fsub	d16, d16, d17
	fmul	d16, d2, d16
	fadd	d16, d16, d1
	fmul	d7, d7, d16
	fadd	d7, d4, d7
	ldr	d16, [sp, #8]
	fsub	d7, d7, d16
	fmul	d5, d5, d7
	fadd	d3, d3, d5
	ldr	x4, [sp, #48]
	ldr	w11, [sp, #44]
	add	w10, w10, w11
	mov	w6, w10
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d3, [x4]
	ldr	x4, [sp, #56]
	ldr	w10, [sp, #44]
	add	w10, w10, #17           // =17
	mov	w6, w10
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d3, [x4]
	fmul	d3, d6, d3
	ldr	d5, [sp]
	fmul	d5, d0, d5
	ldr	d7, [sp, #32]
	orr	x4, xzr, #0x8000000000000000
	fmov	d16, x4
	fsub	d7, d16, d7
	ldr	d16, [sp, #16]
	fadd	d7, d7, d16
	ldr	d16, [sp, #32]
	orr	x4, xzr, #0x8000000000000000
	fmov	d17, x4
	fsub	d16, d17, d16
	ldr	d17, [sp, #16]
	fadd	d16, d16, d17
	fmul	d16, d2, d16
	fadd	d16, d16, d1
	fmul	d7, d7, d16
	fadd	d7, d4, d7
	ldr	d16, [sp, #8]
	fsub	d7, d7, d16
	fmul	d5, d5, d7
	fadd	d3, d3, d5
	ldr	x4, [sp, #48]
	ldr	w10, [sp, #44]
	add	w9, w9, w10
	mov	w6, w9
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	str	d3, [x4]
	ldr	x4, [sp, #56]
	ldr	w9, [sp, #44]
	add	w9, w9, #18             // =18
	mov	w6, w9
	sxtw	x6, w6
	mul	x6, x18, x6
	add	x4, x4, x6
	ldr	d3, [x4]
	fmul	d3, d6, d3
	ldr	d5, [sp]
	fmul	d0, d0, d5
	ldr	d5, [sp, #32]
	orr	x4, xzr, #0x8000000000000000
	fmov	d6, x4
	fsub	d5, d6, d5
	ldr	d6, [sp, #16]
	fsub	d5, d5, d6
	ldr	d6, [sp, #32]
	orr	x4, xzr, #0x8000000000000000
	fmov	d7, x4
	fsub	d6, d7, d6
	ldr	d7, [sp, #16]
	fsub	d6, d6, d7
	fmul	d2, d2, d6
	fadd	d1, d2, d1
	fmul	d1, d5, d1
	fadd	d1, d4, d1
	ldr	d2, [sp, #8]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	fadd	d0, d3, d0
	ldr	x4, [sp, #48]
	ldr	w9, [sp, #44]
	add	w8, w8, w9
	mov	w6, w8
	sxtw	x6, w6
	mul	x18, x18, x6
	add	x18, x4, x18
	str	d0, [x18]
.LBB7_7:                                //   in Loop: Header=BB7_1 Depth=1
	ldr	w8, [sp, #44]
	add	w8, w8, #20             // =20
	str	w8, [sp, #44]
	b	.LBB7_1
.LBB7_8:
	add	sp, sp, #64             // =64
	ret
.Lfunc_end7:
	.size	LBM_performStreamCollideBGK, .Lfunc_end7-LBM_performStreamCollideBGK
                                        // -- End function
	.globl	LBM_performStreamCollideTRT // -- Begin function LBM_performStreamCollideTRT
	.p2align	2
	.type	LBM_performStreamCollideTRT,@function
LBM_performStreamCollideTRT:            // @LBM_performStreamCollideTRT
// %bb.0:
	str	x28, [sp, #-32]!        // 8-byte Folded Spill
	stp	x20, x19, [sp, #16]     // 16-byte Folded Spill
	sub	sp, sp, #720            // =720
	mov	x8, #40103
	movk	x8, #27622, lsl #16
	movk	x8, #60661, lsl #32
	movk	x8, #16304, lsl #48
	fmov	d0, x8
	str	x0, [sp, #712]
	str	x1, [sp, #704]
	str	d0, [sp, #648]
	str	wzr, [sp, #700]
.LBB8_1:                                // =>This Inner Loop Header: Depth=1
	mov	w8, #47744
	movk	w8, #396, lsl #16
	ldr	w9, [sp, #700]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB8_2
	b	.LBB8_8
.LBB8_2:                                //   in Loop: Header=BB8_1 Depth=1
	orr	w8, wzr, #0x1
	orr	x9, xzr, #0x8
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #19           // =19
	mov	w12, w11
	sxtw	x12, w12
	mul	x9, x9, x12
	add	x9, x10, x9
	ldr	w11, [x9]
	and	w8, w11, w8
	cbnz	w8, .LBB8_3
	b	.LBB8_4
.LBB8_3:                                //   in Loop: Header=BB8_1 Depth=1
	mov	w8, #62142
	movk	w8, #65532, lsl #16
	mov	w9, #3389
	movk	w9, #3, lsl #16
	mov	w10, #62180
	movk	w10, #65532, lsl #16
	mov	w11, #3427
	movk	w11, #3, lsl #16
	mov	w12, #60158
	movk	w12, #65532, lsl #16
	mov	w13, #1405
	movk	w13, #3, lsl #16
	mov	w14, #64156
	movk	w14, #65532, lsl #16
	mov	w15, #5403
	movk	w15, #3, lsl #16
	mov	w16, #-2010
	mov	w17, #-1971
	mov	w18, #62150
	movk	w18, #65532, lsl #16
	mov	w0, #3397
	movk	w0, #3, lsl #16
	orr	w1, wzr, #0xfffffff0
	mov	w2, #-1998
	orr	x3, xzr, #0x8
	ldr	x4, [sp, #712]
	ldr	w5, [sp, #700]
	add	w5, w5, #0              // =0
	mov	w6, w5
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w5, [sp, #700]
	add	w5, w5, #0              // =0
	mov	w7, w5
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w5, [sp, #700]
	add	w5, w5, #1              // =1
	mov	w6, w5
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w5, [sp, #700]
	add	w2, w2, w5
	mov	w7, w2
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w2, [sp, #700]
	add	w2, w2, #2              // =2
	mov	w6, w2
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w2, [sp, #700]
	add	w2, w2, #2001           // =2001
	mov	w7, w2
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w2, [sp, #700]
	add	w2, w2, #3              // =3
	mov	w6, w2
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w2, [sp, #700]
	add	w1, w1, w2
	mov	w7, w1
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w1, [sp, #700]
	add	w1, w1, #4              // =4
	mov	w6, w1
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w1, [sp, #700]
	add	w1, w1, #23             // =23
	mov	w7, w1
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w1, [sp, #700]
	add	w1, w1, #5              // =5
	mov	w6, w1
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w1, [sp, #700]
	add	w18, w18, w1
	mov	w7, w18
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w18, [sp, #700]
	add	w18, w18, #6            // =6
	mov	w6, w18
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w18, [sp, #700]
	add	w18, w0, w18
	mov	w7, w18
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w18, [sp, #700]
	add	w18, w18, #7            // =7
	mov	w6, w18
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w18, [sp, #700]
	add	w16, w16, w18
	mov	w7, w16
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w16, [sp, #700]
	add	w16, w16, #8            // =8
	mov	w6, w16
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w16, [sp, #700]
	add	w16, w17, w16
	mov	w7, w16
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w16, [sp, #700]
	add	w16, w16, #9            // =9
	mov	w6, w16
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w16, [sp, #700]
	add	w16, w16, #1988         // =1988
	mov	w7, w16
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w16, [sp, #700]
	add	w16, w16, #10           // =10
	mov	w6, w16
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w16, [sp, #700]
	add	w16, w16, #2027         // =2027
	mov	w7, w16
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w16, [sp, #700]
	add	w16, w16, #11           // =11
	mov	w6, w16
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w16, [sp, #700]
	add	w12, w12, w16
	mov	w7, w12
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w12, [sp, #700]
	add	w12, w12, #12           // =12
	mov	w6, w12
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w12, [sp, #700]
	add	w12, w13, w12
	mov	w7, w12
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w12, [sp, #700]
	add	w12, w12, #13           // =13
	mov	w6, w12
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w12, [sp, #700]
	add	w12, w14, w12
	mov	w7, w12
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w12, [sp, #700]
	add	w12, w12, #14           // =14
	mov	w6, w12
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w12, [sp, #700]
	add	w12, w15, w12
	mov	w7, w12
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w12, [sp, #700]
	add	w12, w12, #15           // =15
	mov	w6, w12
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w12, [sp, #700]
	add	w8, w8, w12
	mov	w7, w8
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w8, [sp, #700]
	add	w8, w8, #16             // =16
	mov	w6, w8
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w8, [sp, #700]
	add	w8, w9, w8
	mov	w7, w8
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w8, [sp, #700]
	add	w8, w8, #17             // =17
	mov	w6, w8
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w8, [sp, #700]
	add	w8, w10, w8
	mov	w7, w8
	sxtw	x7, w7
	mul	x7, x3, x7
	add	x6, x6, x7
	str	x4, [x6]
	ldr	x4, [sp, #712]
	ldr	w8, [sp, #700]
	add	w8, w8, #18             // =18
	mov	w6, w8
	sxtw	x6, w6
	mul	x6, x3, x6
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x6, [sp, #704]
	ldr	w8, [sp, #700]
	add	w8, w11, w8
	mov	w7, w8
	sxtw	x7, w7
	mul	x3, x3, x7
	add	x3, x6, x3
	str	x4, [x3]
	b	.LBB8_7
.LBB8_4:                                //   in Loop: Header=BB8_1 Depth=1
	orr	w8, wzr, #0x2
	orr	x9, xzr, #0x8
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #0            // =0
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d0, [x10]
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #1            // =1
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #2            // =2
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #3            // =3
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #4            // =4
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #5            // =5
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #6            // =6
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #7            // =7
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #8            // =8
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #9            // =9
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #10           // =10
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #11           // =11
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #12           // =12
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #13           // =13
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #14           // =14
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #15           // =15
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #16           // =16
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #17           // =17
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #18           // =18
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	str	d0, [sp, #656]
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #3            // =3
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d0, [x10]
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #4            // =4
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #7            // =7
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #8            // =8
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #9            // =9
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #10           // =10
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #15           // =15
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #16           // =16
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #17           // =17
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #18           // =18
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	str	d0, [sp, #688]
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #1            // =1
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d0, [x10]
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #2            // =2
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #7            // =7
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #8            // =8
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #9            // =9
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #10           // =10
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #11           // =11
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #12           // =12
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #13           // =13
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #14           // =14
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	str	d0, [sp, #680]
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #5            // =5
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d0, [x10]
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #6            // =6
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #11           // =11
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #12           // =12
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #13           // =13
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #14           // =14
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #15           // =15
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #16           // =16
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #17           // =17
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fadd	d0, d0, d1
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #18           // =18
	mov	w12, w11
	sxtw	x12, w12
	mul	x12, x9, x12
	add	x10, x10, x12
	ldr	d1, [x10]
	fsub	d0, d0, d1
	str	d0, [sp, #672]
	ldr	d0, [sp, #656]
	ldr	d1, [sp, #688]
	fdiv	d0, d1, d0
	str	d0, [sp, #688]
	ldr	d0, [sp, #656]
	ldr	d1, [sp, #680]
	fdiv	d0, d1, d0
	str	d0, [sp, #680]
	ldr	d0, [sp, #656]
	ldr	d1, [sp, #672]
	fdiv	d0, d1, d0
	str	d0, [sp, #672]
	ldr	x10, [sp, #712]
	ldr	w11, [sp, #700]
	add	w11, w11, #19           // =19
	mov	w12, w11
	sxtw	x12, w12
	mul	x9, x9, x12
	add	x9, x10, x9
	ldr	w11, [x9]
	and	w8, w11, w8
	cbnz	w8, .LBB8_5
	b	.LBB8_6
.LBB8_5:                                //   in Loop: Header=BB8_1 Depth=1
	fmov	d0, xzr
	mov	x8, #43516
	movk	x8, #54001, lsl #16
	movk	x8, #25165, lsl #32
	movk	x8, #16224, lsl #48
	fmov	d1, x8
	mov	x8, #5243
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16244, lsl #48
	fmov	d2, x8
	str	d2, [sp, #688]
	str	d1, [sp, #680]
	str	d0, [sp, #672]
.LBB8_6:                                //   in Loop: Header=BB8_1 Depth=1
	add	x8, sp, #8              // =8
	add	x9, sp, #168            // =168
	add	x10, sp, #328           // =328
	add	x11, sp, #488           // =488
	mov	w12, #62142
	movk	w12, #65532, lsl #16
	mov	w13, #3389
	movk	w13, #3, lsl #16
	mov	w14, #62180
	movk	w14, #65532, lsl #16
	mov	w15, #3427
	movk	w15, #3, lsl #16
	mov	w16, #60158
	movk	w16, #65532, lsl #16
	mov	w17, #1405
	movk	w17, #3, lsl #16
	mov	w18, #64156
	movk	w18, #65532, lsl #16
	mov	w0, #5403
	movk	w0, #3, lsl #16
	mov	w1, #-2010
	mov	w2, #-1971
	mov	w3, #62150
	movk	w3, #65532, lsl #16
	mov	w4, #3397
	movk	w4, #3, lsl #16
	orr	w5, wzr, #0xfffffff0
	mov	w6, #-1998
	mov	x7, #3689348814741910323
	movk	x7, #16383, lsl #48
	fmov	d0, x7
	orr	x7, xzr, #0x3fe0000000000000
	fmov	d1, x7
	mov	x7, #4613937818241073152
	fmov	d2, x7
	mov	x7, #50972
	movk	x7, #7281, lsl #16
	movk	x7, #29127, lsl #32
	movk	x7, #16284, lsl #48
	fmov	d3, x7
	mov	x7, #4616752568008179712
	fmov	d4, x7
	mov	x7, #50972
	movk	x7, #7281, lsl #16
	movk	x7, #29127, lsl #32
	movk	x7, #16300, lsl #48
	fmov	d5, x7
	orr	x7, xzr, #0x3ff0000000000000
	fmov	d6, x7
	mov	x7, #6148914691236517205
	movk	x7, #16341, lsl #48
	fmov	d7, x7
	orr	x7, xzr, #0x3ff8000000000000
	fmov	d16, x7
	fmov	d17, xzr
	orr	x7, xzr, #0x8
	mov	x19, #40103
	movk	x19, #27622, lsl #16
	movk	x19, #60661, lsl #32
	movk	x19, #16304, lsl #48
	fmov	d18, x19
	ldr	d19, [sp, #688]
	ldr	d20, [sp, #688]
	fmul	d19, d19, d20
	ldr	d20, [sp, #680]
	ldr	d21, [sp, #680]
	fmul	d20, d20, d21
	fadd	d19, d19, d20
	ldr	d20, [sp, #672]
	ldr	d21, [sp, #672]
	fmul	d20, d20, d21
	fadd	d19, d19, d20
	fmul	d16, d16, d19
	str	d16, [sp, #664]
	ldr	d16, [sp, #656]
	fmul	d7, d7, d16
	ldr	d16, [sp, #664]
	fsub	d16, d6, d16
	fmul	d7, d7, d16
	str	d7, [x9]
	ldr	d7, [sp, #656]
	fmul	d7, d5, d7
	ldr	d16, [sp, #680]
	fmul	d16, d4, d16
	ldr	d19, [sp, #680]
	fmul	d16, d16, d19
	fadd	d16, d6, d16
	ldr	d19, [sp, #664]
	fsub	d16, d16, d19
	fmul	d7, d7, d16
	str	d7, [sp, #184]
	str	d7, [sp, #176]
	ldr	d7, [sp, #656]
	fmul	d7, d5, d7
	ldr	d16, [sp, #688]
	fmul	d16, d4, d16
	ldr	d19, [sp, #688]
	fmul	d16, d16, d19
	fadd	d16, d6, d16
	ldr	d19, [sp, #664]
	fsub	d16, d16, d19
	fmul	d7, d7, d16
	str	d7, [sp, #200]
	str	d7, [sp, #192]
	ldr	d7, [sp, #656]
	fmul	d7, d5, d7
	ldr	d16, [sp, #672]
	fmul	d16, d4, d16
	ldr	d19, [sp, #672]
	fmul	d16, d16, d19
	fadd	d16, d6, d16
	ldr	d19, [sp, #664]
	fsub	d16, d16, d19
	fmul	d7, d7, d16
	str	d7, [sp, #216]
	str	d7, [sp, #208]
	ldr	d7, [sp, #656]
	fmul	d7, d3, d7
	ldr	d16, [sp, #688]
	ldr	d19, [sp, #680]
	fadd	d16, d16, d19
	fmul	d16, d4, d16
	ldr	d19, [sp, #688]
	ldr	d20, [sp, #680]
	fadd	d19, d19, d20
	fmul	d16, d16, d19
	fadd	d16, d6, d16
	ldr	d19, [sp, #664]
	fsub	d16, d16, d19
	fmul	d7, d7, d16
	str	d7, [sp, #248]
	str	d7, [sp, #224]
	ldr	d7, [sp, #656]
	fmul	d7, d3, d7
	ldr	d16, [sp, #688]
	orr	x19, xzr, #0x8000000000000000
	fmov	d19, x19
	fsub	d16, d19, d16
	ldr	d19, [sp, #680]
	fadd	d16, d16, d19
	fmul	d16, d4, d16
	ldr	d19, [sp, #688]
	orr	x19, xzr, #0x8000000000000000
	fmov	d20, x19
	fsub	d19, d20, d19
	ldr	d20, [sp, #680]
	fadd	d19, d19, d20
	fmul	d16, d16, d19
	fadd	d16, d6, d16
	ldr	d19, [sp, #664]
	fsub	d16, d16, d19
	fmul	d7, d7, d16
	str	d7, [sp, #240]
	str	d7, [sp, #232]
	ldr	d7, [sp, #656]
	fmul	d7, d3, d7
	ldr	d16, [sp, #680]
	ldr	d19, [sp, #672]
	fadd	d16, d16, d19
	fmul	d16, d4, d16
	ldr	d19, [sp, #680]
	ldr	d20, [sp, #672]
	fadd	d19, d19, d20
	fmul	d16, d16, d19
	fadd	d16, d6, d16
	ldr	d19, [sp, #664]
	fsub	d16, d16, d19
	fmul	d7, d7, d16
	str	d7, [sp, #280]
	str	d7, [sp, #256]
	ldr	d7, [sp, #656]
	fmul	d7, d3, d7
	ldr	d16, [sp, #680]
	ldr	d19, [sp, #672]
	fsub	d16, d16, d19
	fmul	d16, d4, d16
	ldr	d19, [sp, #680]
	ldr	d20, [sp, #672]
	fsub	d19, d19, d20
	fmul	d16, d16, d19
	fadd	d16, d6, d16
	ldr	d19, [sp, #664]
	fsub	d16, d16, d19
	fmul	d7, d7, d16
	str	d7, [sp, #272]
	str	d7, [sp, #264]
	ldr	d7, [sp, #656]
	fmul	d7, d3, d7
	ldr	d16, [sp, #688]
	ldr	d19, [sp, #672]
	fadd	d16, d16, d19
	fmul	d16, d4, d16
	ldr	d19, [sp, #688]
	ldr	d20, [sp, #672]
	fadd	d19, d19, d20
	fmul	d16, d16, d19
	fadd	d16, d6, d16
	ldr	d19, [sp, #664]
	fsub	d16, d16, d19
	fmul	d7, d7, d16
	str	d7, [sp, #312]
	str	d7, [sp, #288]
	ldr	d7, [sp, #656]
	fmul	d7, d3, d7
	ldr	d16, [sp, #688]
	ldr	d19, [sp, #672]
	fsub	d16, d16, d19
	fmul	d4, d4, d16
	ldr	d16, [sp, #688]
	ldr	d19, [sp, #672]
	fsub	d16, d16, d19
	fmul	d4, d4, d16
	fadd	d4, d6, d4
	ldr	d6, [sp, #664]
	fsub	d4, d4, d6
	fmul	d4, d7, d4
	str	d4, [sp, #304]
	str	d4, [sp, #296]
	str	d17, [x8]
	ldr	d4, [sp, #656]
	fmul	d4, d5, d4
	fmul	d4, d4, d2
	ldr	d6, [sp, #680]
	fmul	d4, d4, d6
	str	d4, [sp, #16]
	orr	x8, xzr, #0x8000000000000000
	fmov	d6, x8
	fsub	d4, d6, d4
	str	d4, [sp, #24]
	ldr	d4, [sp, #656]
	fmul	d4, d5, d4
	fmul	d4, d4, d2
	ldr	d6, [sp, #688]
	fmul	d4, d4, d6
	str	d4, [sp, #32]
	orr	x8, xzr, #0x8000000000000000
	fmov	d6, x8
	fsub	d4, d6, d4
	str	d4, [sp, #40]
	ldr	d4, [sp, #656]
	fmul	d4, d5, d4
	fmul	d4, d4, d2
	ldr	d5, [sp, #672]
	fmul	d4, d4, d5
	str	d4, [sp, #48]
	orr	x8, xzr, #0x8000000000000000
	fmov	d5, x8
	fsub	d4, d5, d4
	str	d4, [sp, #56]
	ldr	d4, [sp, #656]
	fmul	d4, d3, d4
	fmul	d4, d4, d2
	ldr	d5, [sp, #688]
	ldr	d6, [sp, #680]
	fadd	d5, d5, d6
	fmul	d4, d4, d5
	str	d4, [sp, #64]
	orr	x8, xzr, #0x8000000000000000
	fmov	d5, x8
	fsub	d4, d5, d4
	str	d4, [sp, #88]
	ldr	d4, [sp, #656]
	fmul	d4, d3, d4
	fmul	d4, d4, d2
	ldr	d5, [sp, #688]
	orr	x8, xzr, #0x8000000000000000
	fmov	d6, x8
	fsub	d5, d6, d5
	ldr	d6, [sp, #680]
	fadd	d5, d5, d6
	fmul	d4, d4, d5
	str	d4, [sp, #72]
	orr	x8, xzr, #0x8000000000000000
	fmov	d5, x8
	fsub	d4, d5, d4
	str	d4, [sp, #80]
	ldr	d4, [sp, #656]
	fmul	d4, d3, d4
	fmul	d4, d4, d2
	ldr	d5, [sp, #680]
	ldr	d6, [sp, #672]
	fadd	d5, d5, d6
	fmul	d4, d4, d5
	str	d4, [sp, #96]
	orr	x8, xzr, #0x8000000000000000
	fmov	d5, x8
	fsub	d4, d5, d4
	str	d4, [sp, #120]
	ldr	d4, [sp, #656]
	fmul	d4, d3, d4
	fmul	d4, d4, d2
	ldr	d5, [sp, #680]
	ldr	d6, [sp, #672]
	fsub	d5, d5, d6
	fmul	d4, d4, d5
	str	d4, [sp, #104]
	orr	x8, xzr, #0x8000000000000000
	fmov	d5, x8
	fsub	d4, d5, d4
	str	d4, [sp, #112]
	ldr	d4, [sp, #656]
	fmul	d4, d3, d4
	fmul	d4, d4, d2
	ldr	d5, [sp, #688]
	ldr	d6, [sp, #672]
	fadd	d5, d5, d6
	fmul	d4, d4, d5
	str	d4, [sp, #128]
	orr	x8, xzr, #0x8000000000000000
	fmov	d5, x8
	fsub	d4, d5, d4
	str	d4, [sp, #152]
	ldr	d4, [sp, #656]
	fmul	d3, d3, d4
	fmul	d2, d3, d2
	ldr	d3, [sp, #688]
	ldr	d4, [sp, #672]
	fsub	d3, d3, d4
	fmul	d2, d2, d3
	str	d2, [sp, #136]
	orr	x8, xzr, #0x8000000000000000
	fmov	d3, x8
	fsub	d2, d3, d2
	str	d2, [sp, #144]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #0            // =0
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	x8, [x8]
	str	x8, [x11]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #1            // =1
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #2            // =2
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d3, [x8]
	fadd	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #504]
	str	d2, [sp, #496]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #3            // =3
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #4            // =4
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d3, [x8]
	fadd	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #520]
	str	d2, [sp, #512]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #5            // =5
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #6            // =6
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d3, [x8]
	fadd	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #536]
	str	d2, [sp, #528]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #7            // =7
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #10           // =10
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d3, [x8]
	fadd	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #568]
	str	d2, [sp, #544]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #8            // =8
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #9            // =9
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d3, [x8]
	fadd	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #560]
	str	d2, [sp, #552]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #11           // =11
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #14           // =14
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d3, [x8]
	fadd	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #600]
	str	d2, [sp, #576]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #12           // =12
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #13           // =13
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d3, [x8]
	fadd	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #592]
	str	d2, [sp, #584]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #15           // =15
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #18           // =18
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d3, [x8]
	fadd	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #632]
	str	d2, [sp, #608]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #16           // =16
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #17           // =17
	mov	w19, w20
	sxtw	x19, w19
	mul	x19, x7, x19
	add	x8, x8, x19
	ldr	d3, [x8]
	fadd	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #624]
	str	d2, [sp, #616]
	str	d17, [x10]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #1            // =1
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #2            // =2
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d3, [x8]
	fsub	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #336]
	orr	x8, xzr, #0x8000000000000000
	fmov	d3, x8
	fsub	d2, d3, d2
	str	d2, [sp, #344]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #3            // =3
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #4            // =4
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d3, [x8]
	fsub	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #352]
	orr	x8, xzr, #0x8000000000000000
	fmov	d3, x8
	fsub	d2, d3, d2
	str	d2, [sp, #360]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #5            // =5
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #6            // =6
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d3, [x8]
	fsub	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #368]
	orr	x8, xzr, #0x8000000000000000
	fmov	d3, x8
	fsub	d2, d3, d2
	str	d2, [sp, #376]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #7            // =7
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #10           // =10
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d3, [x8]
	fsub	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #384]
	orr	x8, xzr, #0x8000000000000000
	fmov	d3, x8
	fsub	d2, d3, d2
	str	d2, [sp, #408]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #8            // =8
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #9            // =9
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d3, [x8]
	fsub	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #392]
	orr	x8, xzr, #0x8000000000000000
	fmov	d3, x8
	fsub	d2, d3, d2
	str	d2, [sp, #400]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #11           // =11
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #14           // =14
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d3, [x8]
	fsub	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #416]
	orr	x8, xzr, #0x8000000000000000
	fmov	d3, x8
	fsub	d2, d3, d2
	str	d2, [sp, #440]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #12           // =12
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #13           // =13
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d3, [x8]
	fsub	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #424]
	orr	x8, xzr, #0x8000000000000000
	fmov	d3, x8
	fsub	d2, d3, d2
	str	d2, [sp, #432]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #15           // =15
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #18           // =18
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d3, [x8]
	fsub	d2, d2, d3
	fmul	d2, d1, d2
	str	d2, [sp, #448]
	orr	x8, xzr, #0x8000000000000000
	fmov	d3, x8
	fsub	d2, d3, d2
	str	d2, [sp, #472]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #16           // =16
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d2, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #17           // =17
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d3, [x8]
	fsub	d2, d2, d3
	fmul	d1, d1, d2
	str	d1, [sp, #456]
	orr	x8, xzr, #0x8000000000000000
	fmov	d2, x8
	fsub	d1, d2, d1
	str	d1, [sp, #464]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #0            // =0
	mov	w10, w20
	sxtw	x10, w10
	mul	x10, x7, x10
	add	x8, x8, x10
	ldr	d1, [x8]
	ldr	d2, [x11]
	ldr	d3, [x9]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w20, [sp, #700]
	add	w20, w20, #0            // =0
	mov	w9, w20
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #1            // =1
	mov	w9, w20
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #496]
	ldr	d3, [sp, #176]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #336]
	ldr	d3, [sp, #16]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w20, [sp, #700]
	add	w20, w20, #2001         // =2001
	mov	w9, w20
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w20, [sp, #700]
	add	w20, w20, #2            // =2
	mov	w9, w20
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #504]
	ldr	d3, [sp, #184]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #344]
	ldr	d3, [sp, #24]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w20, [sp, #700]
	add	w6, w6, w20
	mov	w9, w6
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w6, [sp, #700]
	add	w6, w6, #3              // =3
	mov	w9, w6
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #512]
	ldr	d3, [sp, #192]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #352]
	ldr	d3, [sp, #32]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w6, [sp, #700]
	add	w6, w6, #23             // =23
	mov	w9, w6
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w6, [sp, #700]
	add	w6, w6, #4              // =4
	mov	w9, w6
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #520]
	ldr	d3, [sp, #200]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #360]
	ldr	d3, [sp, #40]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w6, [sp, #700]
	add	w5, w5, w6
	mov	w9, w5
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w5, [sp, #700]
	add	w5, w5, #5              // =5
	mov	w9, w5
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #528]
	ldr	d3, [sp, #208]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #368]
	ldr	d3, [sp, #48]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w5, [sp, #700]
	add	w4, w4, w5
	mov	w9, w4
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w4, [sp, #700]
	add	w4, w4, #6              // =6
	mov	w9, w4
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #536]
	ldr	d3, [sp, #216]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #376]
	ldr	d3, [sp, #56]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w4, [sp, #700]
	add	w3, w3, w4
	mov	w9, w3
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w3, [sp, #700]
	add	w3, w3, #7              // =7
	mov	w9, w3
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #544]
	ldr	d3, [sp, #224]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #384]
	ldr	d3, [sp, #64]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w3, [sp, #700]
	add	w3, w3, #2027           // =2027
	mov	w9, w3
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w3, [sp, #700]
	add	w3, w3, #8              // =8
	mov	w9, w3
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #552]
	ldr	d3, [sp, #232]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #392]
	ldr	d3, [sp, #72]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w3, [sp, #700]
	add	w3, w3, #1988           // =1988
	mov	w9, w3
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w3, [sp, #700]
	add	w3, w3, #9              // =9
	mov	w9, w3
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #560]
	ldr	d3, [sp, #240]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #400]
	ldr	d3, [sp, #80]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w3, [sp, #700]
	add	w2, w2, w3
	mov	w9, w2
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w2, [sp, #700]
	add	w2, w2, #10             // =10
	mov	w9, w2
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #568]
	ldr	d3, [sp, #248]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #408]
	ldr	d3, [sp, #88]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w2, [sp, #700]
	add	w1, w1, w2
	mov	w9, w1
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w1, [sp, #700]
	add	w1, w1, #11             // =11
	mov	w9, w1
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #576]
	ldr	d3, [sp, #256]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #416]
	ldr	d3, [sp, #96]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w1, [sp, #700]
	add	w0, w0, w1
	mov	w9, w0
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w0, [sp, #700]
	add	w0, w0, #12             // =12
	mov	w9, w0
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #584]
	ldr	d3, [sp, #264]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #424]
	ldr	d3, [sp, #104]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w0, [sp, #700]
	add	w18, w18, w0
	mov	w9, w18
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w18, [sp, #700]
	add	w18, w18, #13           // =13
	mov	w9, w18
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #592]
	ldr	d3, [sp, #272]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #432]
	ldr	d3, [sp, #112]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w18, [sp, #700]
	add	w17, w17, w18
	mov	w9, w17
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w17, [sp, #700]
	add	w17, w17, #14           // =14
	mov	w9, w17
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #600]
	ldr	d3, [sp, #280]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #440]
	ldr	d3, [sp, #120]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w17, [sp, #700]
	add	w16, w16, w17
	mov	w9, w16
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w16, [sp, #700]
	add	w16, w16, #15           // =15
	mov	w9, w16
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #608]
	ldr	d3, [sp, #288]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #448]
	ldr	d3, [sp, #128]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w16, [sp, #700]
	add	w15, w15, w16
	mov	w9, w15
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w15, [sp, #700]
	add	w15, w15, #16           // =16
	mov	w9, w15
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #616]
	ldr	d3, [sp, #296]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #456]
	ldr	d3, [sp, #136]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w15, [sp, #700]
	add	w14, w14, w15
	mov	w9, w14
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w14, [sp, #700]
	add	w14, w14, #17           // =17
	mov	w9, w14
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #624]
	ldr	d3, [sp, #304]
	fsub	d2, d2, d3
	fmul	d2, d0, d2
	fsub	d1, d1, d2
	ldr	d2, [sp, #464]
	ldr	d3, [sp, #144]
	fsub	d2, d2, d3
	fmul	d2, d18, d2
	fsub	d1, d1, d2
	ldr	x8, [sp, #704]
	ldr	w14, [sp, #700]
	add	w13, w13, w14
	mov	w9, w13
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d1, [x8]
	ldr	x8, [sp, #712]
	ldr	w13, [sp, #700]
	add	w13, w13, #18           // =18
	mov	w9, w13
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	ldr	d1, [x8]
	ldr	d2, [sp, #632]
	ldr	d3, [sp, #312]
	fsub	d2, d2, d3
	fmul	d0, d0, d2
	fsub	d0, d1, d0
	ldr	d1, [sp, #472]
	ldr	d2, [sp, #152]
	fsub	d1, d1, d2
	fmul	d1, d18, d1
	fsub	d0, d0, d1
	ldr	x8, [sp, #704]
	ldr	w13, [sp, #700]
	add	w12, w12, w13
	mov	w9, w12
	sxtw	x9, w9
	mul	x9, x7, x9
	add	x8, x8, x9
	str	d0, [x8]
.LBB8_7:                                //   in Loop: Header=BB8_1 Depth=1
	ldr	w8, [sp, #700]
	add	w8, w8, #20             // =20
	str	w8, [sp, #700]
	b	.LBB8_1
.LBB8_8:
	add	sp, sp, #720            // =720
	ldp	x20, x19, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #32          // 8-byte Folded Reload
	ret
.Lfunc_end8:
	.size	LBM_performStreamCollideTRT, .Lfunc_end8-LBM_performStreamCollideTRT
                                        // -- End function
	.globl	LBM_handleInOutFlow     // -- Begin function LBM_handleInOutFlow
	.p2align	2
	.type	LBM_handleInOutFlow,@function
LBM_handleInOutFlow:                    // @LBM_handleInOutFlow
// %bb.0:
	stp	x28, x27, [sp, #-96]!   // 16-byte Folded Spill
	stp	x26, x25, [sp, #16]     // 16-byte Folded Spill
	stp	x24, x23, [sp, #32]     // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]     // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]     // 16-byte Folded Spill
	stp	x29, x30, [sp, #80]     // 16-byte Folded Spill
	sub	sp, sp, #736            // =736
	str	x0, [sp, #728]
	str	wzr, [sp, #604]
.LBB9_1:                                // =>This Inner Loop Header: Depth=1
	mov	w8, #3392
	movk	w8, #3, lsl #16
	ldr	w9, [sp, #604]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB9_2
	b	.LBB9_4
.LBB9_2:                                //   in Loop: Header=BB9_1 Depth=1
	mov	x8, #5243
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	fmov	d0, x8
	fmov	d1, xzr
	mov	x8, #211106232532992
	movk	x8, #16456, lsl #48
	fmov	d2, x8
	mov	w9, #100
	mov	w10, #6802
	movk	w10, #6, lsl #16
	mov	w11, #6801
	movk	w11, #6, lsl #16
	mov	w12, #6800
	movk	w12, #6, lsl #16
	mov	w13, #6799
	movk	w13, #6, lsl #16
	mov	w14, #6798
	movk	w14, #6, lsl #16
	mov	w15, #6797
	movk	w15, #6, lsl #16
	mov	w16, #6796
	movk	w16, #6, lsl #16
	mov	w17, #6795
	movk	w17, #6, lsl #16
	mov	w18, #6794
	movk	w18, #6, lsl #16
	mov	w0, #6793
	movk	w0, #6, lsl #16
	mov	w1, #6792
	movk	w1, #6, lsl #16
	mov	w2, #6791
	movk	w2, #6, lsl #16
	mov	w3, #6790
	movk	w3, #6, lsl #16
	mov	w4, #6789
	movk	w4, #6, lsl #16
	mov	w5, #6788
	movk	w5, #6, lsl #16
	mov	w6, #6787
	movk	w6, #6, lsl #16
	mov	w7, #6786
	movk	w7, #6, lsl #16
	mov	w19, #6785
	movk	w19, #6, lsl #16
	mov	w20, #6784
	movk	w20, #6, lsl #16
	mov	w21, #3410
	movk	w21, #3, lsl #16
	mov	w22, #3409
	movk	w22, #3, lsl #16
	mov	w23, #3408
	movk	w23, #3, lsl #16
	mov	w24, #3407
	movk	w24, #3, lsl #16
	mov	w25, #3406
	movk	w25, #3, lsl #16
	mov	w26, #3405
	movk	w26, #3, lsl #16
	mov	w27, #3404
	movk	w27, #3, lsl #16
	mov	w28, #3403
	movk	w28, #3, lsl #16
	mov	w29, #3402
	movk	w29, #3, lsl #16
	mov	w30, #3401
	movk	w30, #3, lsl #16
	mov	w8, #3400
	movk	w8, #3, lsl #16
	str	w8, [sp, #600]          // 4-byte Folded Spill
	mov	w8, #3399
	movk	w8, #3, lsl #16
	str	w8, [sp, #596]          // 4-byte Folded Spill
	mov	w8, #3398
	movk	w8, #3, lsl #16
	str	w8, [sp, #592]          // 4-byte Folded Spill
	mov	w8, #3397
	movk	w8, #3, lsl #16
	str	w8, [sp, #588]          // 4-byte Folded Spill
	mov	w8, #3396
	movk	w8, #3, lsl #16
	str	w8, [sp, #584]          // 4-byte Folded Spill
	mov	w8, #3395
	movk	w8, #3, lsl #16
	str	w8, [sp, #580]          // 4-byte Folded Spill
	mov	w8, #3394
	movk	w8, #3, lsl #16
	str	w8, [sp, #576]          // 4-byte Folded Spill
	mov	w8, #3393
	movk	w8, #3, lsl #16
	str	w8, [sp, #572]          // 4-byte Folded Spill
	mov	w8, #20
	str	w8, [sp, #568]          // 4-byte Folded Spill
	mov	x8, #50972
	movk	x8, #7281, lsl #16
	movk	x8, #29127, lsl #32
	movk	x8, #16284, lsl #48
	fmov	d3, x8
	mov	x8, #4613937818241073152
	fmov	d4, x8
	mov	x8, #4616752568008179712
	fmov	d5, x8
	mov	x8, #50972
	movk	x8, #7281, lsl #16
	movk	x8, #29127, lsl #32
	movk	x8, #16300, lsl #48
	fmov	d6, x8
	mov	x8, #6148914691236517205
	movk	x8, #16341, lsl #48
	fmov	d7, x8
	orr	x8, xzr, #0x3ff8000000000000
	fmov	d16, x8
	orr	x8, xzr, #0x4000000000000000
	fmov	d17, x8
	orr	x8, xzr, #0x3ff0000000000000
	fmov	d18, x8
	orr	x8, xzr, #0x8
	str	x8, [sp, #560]          // 8-byte Folded Spill
	mov	w8, #3392
	movk	w8, #3, lsl #16
	str	w8, [sp, #556]          // 4-byte Folded Spill
	ldr	x8, [sp, #728]
	str	x8, [sp, #544]          // 8-byte Folded Spill
	ldr	w8, [sp, #604]
	str	w8, [sp, #540]          // 4-byte Folded Spill
	ldr	w8, [sp, #556]          // 4-byte Folded Reload
	str	w9, [sp, #536]          // 4-byte Folded Spill
	ldr	w9, [sp, #540]          // 4-byte Folded Reload
	add	w8, w8, w9
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	ldr	x9, [sp, #560]          // 8-byte Folded Reload
	mul	x8, x9, x8
	ldr	x9, [sp, #544]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d19, [x8]
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	str	x8, [sp, #528]          // 8-byte Folded Spill
	ldr	w8, [sp, #572]          // 4-byte Folded Reload
	add	w9, w8, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	ldr	x8, [sp, #560]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #528]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d20, [x9]
	fadd	d19, d19, d20
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	str	w8, [sp, #524]          // 4-byte Folded Spill
	ldr	w8, [sp, #576]          // 4-byte Folded Reload
	str	x9, [sp, #512]          // 8-byte Folded Spill
	ldr	w9, [sp, #524]          // 4-byte Folded Reload
	add	w8, w8, w9
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	ldr	x9, [sp, #560]          // 8-byte Folded Reload
	mul	x8, x9, x8
	ldr	x9, [sp, #512]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	str	x8, [sp, #504]          // 8-byte Folded Spill
	ldr	w8, [sp, #580]          // 4-byte Folded Reload
	add	w9, w8, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	ldr	x8, [sp, #560]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #504]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d20, [x9]
	fadd	d19, d19, d20
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	str	w8, [sp, #500]          // 4-byte Folded Spill
	ldr	w8, [sp, #584]          // 4-byte Folded Reload
	str	x9, [sp, #488]          // 8-byte Folded Spill
	ldr	w9, [sp, #500]          // 4-byte Folded Reload
	add	w8, w8, w9
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	ldr	x9, [sp, #560]          // 8-byte Folded Reload
	mul	x8, x9, x8
	ldr	x9, [sp, #488]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	str	x8, [sp, #480]          // 8-byte Folded Spill
	ldr	w8, [sp, #588]          // 4-byte Folded Reload
	add	w9, w8, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	ldr	x8, [sp, #560]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #480]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d20, [x9]
	fadd	d19, d19, d20
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	str	w8, [sp, #476]          // 4-byte Folded Spill
	ldr	w8, [sp, #592]          // 4-byte Folded Reload
	str	x9, [sp, #464]          // 8-byte Folded Spill
	ldr	w9, [sp, #476]          // 4-byte Folded Reload
	add	w8, w8, w9
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	ldr	x9, [sp, #560]          // 8-byte Folded Reload
	mul	x8, x9, x8
	ldr	x9, [sp, #464]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	str	x8, [sp, #456]          // 8-byte Folded Spill
	ldr	w8, [sp, #596]          // 4-byte Folded Reload
	add	w9, w8, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	ldr	x8, [sp, #560]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #456]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d20, [x9]
	fadd	d19, d19, d20
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	str	w8, [sp, #452]          // 4-byte Folded Spill
	ldr	w8, [sp, #600]          // 4-byte Folded Reload
	str	x9, [sp, #440]          // 8-byte Folded Spill
	ldr	w9, [sp, #452]          // 4-byte Folded Reload
	add	w8, w8, w9
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	ldr	x9, [sp, #560]          // 8-byte Folded Reload
	mul	x8, x9, x8
	ldr	x9, [sp, #440]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	add	w9, w30, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	ldr	x30, [sp, #560]         // 8-byte Folded Reload
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	add	w9, w29, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w29, [sp, #604]
	add	w28, w28, w29
	mov	w9, w28
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w28, [sp, #604]
	add	w27, w27, w28
	mov	w9, w27
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w27, [sp, #604]
	add	w26, w26, w27
	mov	w9, w26
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w26, [sp, #604]
	add	w25, w25, w26
	mov	w9, w25
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w25, [sp, #604]
	add	w24, w24, w25
	mov	w9, w24
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w24, [sp, #604]
	add	w23, w23, w24
	mov	w9, w23
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w23, [sp, #604]
	add	w22, w22, w23
	mov	w9, w22
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w22, [sp, #604]
	add	w21, w21, w22
	mov	w9, w21
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	str	d19, [sp, #664]
	ldr	x8, [sp, #728]
	ldr	w21, [sp, #604]
	add	w20, w20, w21
	mov	w9, w20
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d19, [x8]
	ldr	x8, [sp, #728]
	ldr	w20, [sp, #604]
	add	w19, w19, w20
	mov	w9, w19
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w7, w7, w19
	mov	w9, w7
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w7, [sp, #604]
	add	w6, w6, w7
	mov	w9, w6
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w6, [sp, #604]
	add	w5, w5, w6
	mov	w9, w5
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w5, [sp, #604]
	add	w4, w4, w5
	mov	w9, w4
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w4, [sp, #604]
	add	w3, w3, w4
	mov	w9, w3
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w3, [sp, #604]
	add	w2, w2, w3
	mov	w9, w2
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w2, [sp, #604]
	add	w1, w1, w2
	mov	w9, w1
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w1, [sp, #604]
	add	w0, w0, w1
	mov	w9, w0
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w0, [sp, #604]
	add	w18, w18, w0
	mov	w9, w18
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w18, [sp, #604]
	add	w17, w17, w18
	mov	w9, w17
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w17, [sp, #604]
	add	w16, w16, w17
	mov	w9, w16
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w16, [sp, #604]
	add	w15, w15, w16
	mov	w9, w15
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w15, [sp, #604]
	add	w14, w14, w15
	mov	w9, w14
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w14, [sp, #604]
	add	w13, w13, w14
	mov	w9, w13
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w13, [sp, #604]
	add	w12, w12, w13
	mov	w9, w12
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w12, [sp, #604]
	add	w11, w11, w12
	mov	w9, w11
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	ldr	x8, [sp, #728]
	ldr	w11, [sp, #604]
	add	w10, w10, w11
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d20, [x8]
	fadd	d19, d19, d20
	str	d19, [sp, #632]
	ldr	d19, [sp, #664]
	fmul	d17, d17, d19
	ldr	d19, [sp, #632]
	fsub	d17, d17, d19
	str	d17, [sp, #696]
	ldr	w10, [sp, #604]
	ldr	w11, [sp, #568]         // 4-byte Folded Reload
	sdiv	w10, w10, w11
	ldr	w12, [sp, #536]         // 4-byte Folded Reload
	sdiv	w13, w10, w12
	mul	w13, w13, w12
	subs	w10, w10, w13
	scvtf	d17, w10
	fdiv	d17, d17, d2
	fsub	d17, d17, d18
	str	d17, [sp, #616]
	ldr	w10, [sp, #604]
	sdiv	w10, w10, w11
	sdiv	w10, w10, w12
	sdiv	w13, w10, w12
	mul	w13, w13, w12
	subs	w10, w10, w13
	scvtf	d17, w10
	fdiv	d2, d17, d2
	fsub	d2, d2, d18
	str	d2, [sp, #608]
	str	d1, [sp, #720]
	str	d1, [sp, #712]
	ldr	d1, [sp, #616]
	ldr	d2, [sp, #616]
	fmul	d1, d1, d2
	fsub	d1, d18, d1
	fmul	d0, d0, d1
	ldr	d1, [sp, #608]
	ldr	d2, [sp, #608]
	fmul	d1, d1, d2
	fsub	d1, d18, d1
	fmul	d0, d0, d1
	str	d0, [sp, #704]
	ldr	d0, [sp, #720]
	ldr	d1, [sp, #720]
	fmul	d0, d0, d1
	ldr	d1, [sp, #712]
	ldr	d2, [sp, #712]
	fmul	d1, d1, d2
	fadd	d0, d0, d1
	ldr	d1, [sp, #704]
	ldr	d2, [sp, #704]
	fmul	d1, d1, d2
	fadd	d0, d0, d1
	fmul	d0, d16, d0
	str	d0, [sp, #624]
	ldr	d0, [sp, #696]
	fmul	d0, d7, d0
	ldr	d1, [sp, #624]
	fsub	d1, d18, d1
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #0            // =0
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d6, d0
	ldr	d1, [sp, #712]
	ldr	d2, [sp, #712]
	fmul	d2, d5, d2
	fadd	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #1            // =1
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d6, d0
	ldr	d1, [sp, #712]
	ldr	d2, [sp, #712]
	fmul	d2, d5, d2
	fsub	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #2            // =2
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d6, d0
	ldr	d1, [sp, #720]
	ldr	d2, [sp, #720]
	fmul	d2, d5, d2
	fadd	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #3            // =3
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d6, d0
	ldr	d1, [sp, #720]
	ldr	d2, [sp, #720]
	fmul	d2, d5, d2
	fsub	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #4            // =4
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d6, d0
	ldr	d1, [sp, #704]
	ldr	d2, [sp, #704]
	fmul	d2, d5, d2
	fadd	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #5            // =5
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d6, d0
	ldr	d1, [sp, #704]
	ldr	d2, [sp, #704]
	fmul	d2, d5, d2
	fsub	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #6            // =6
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d3, d0
	ldr	d1, [sp, #720]
	ldr	d2, [sp, #712]
	fadd	d1, d1, d2
	ldr	d2, [sp, #720]
	ldr	d6, [sp, #712]
	fadd	d2, d2, d6
	fmul	d2, d5, d2
	fadd	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #7            // =7
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d3, d0
	ldr	d1, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d2, x8
	fsub	d1, d2, d1
	ldr	d2, [sp, #712]
	fadd	d1, d1, d2
	ldr	d2, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d6, x8
	fsub	d2, d6, d2
	ldr	d6, [sp, #712]
	fadd	d2, d2, d6
	fmul	d2, d5, d2
	fadd	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #8            // =8
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d3, d0
	ldr	d1, [sp, #720]
	ldr	d2, [sp, #712]
	fsub	d1, d1, d2
	ldr	d2, [sp, #720]
	ldr	d6, [sp, #712]
	fsub	d2, d2, d6
	fmul	d2, d5, d2
	fadd	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #9            // =9
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d3, d0
	ldr	d1, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d2, x8
	fsub	d1, d2, d1
	ldr	d2, [sp, #712]
	fsub	d1, d1, d2
	ldr	d2, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d6, x8
	fsub	d2, d6, d2
	ldr	d6, [sp, #712]
	fsub	d2, d2, d6
	fmul	d2, d5, d2
	fadd	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #10           // =10
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d3, d0
	ldr	d1, [sp, #712]
	ldr	d2, [sp, #704]
	fadd	d1, d1, d2
	ldr	d2, [sp, #712]
	ldr	d6, [sp, #704]
	fadd	d2, d2, d6
	fmul	d2, d5, d2
	fadd	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #11           // =11
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d3, d0
	ldr	d1, [sp, #712]
	ldr	d2, [sp, #704]
	fsub	d1, d1, d2
	ldr	d2, [sp, #712]
	ldr	d6, [sp, #704]
	fsub	d2, d2, d6
	fmul	d2, d5, d2
	fadd	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #12           // =12
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d3, d0
	ldr	d1, [sp, #712]
	orr	x8, xzr, #0x8000000000000000
	fmov	d2, x8
	fsub	d1, d2, d1
	ldr	d2, [sp, #704]
	fadd	d1, d1, d2
	ldr	d2, [sp, #712]
	orr	x8, xzr, #0x8000000000000000
	fmov	d6, x8
	fsub	d2, d6, d2
	ldr	d6, [sp, #704]
	fadd	d2, d2, d6
	fmul	d2, d5, d2
	fadd	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #13           // =13
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d3, d0
	ldr	d1, [sp, #712]
	orr	x8, xzr, #0x8000000000000000
	fmov	d2, x8
	fsub	d1, d2, d1
	ldr	d2, [sp, #704]
	fsub	d1, d1, d2
	ldr	d2, [sp, #712]
	orr	x8, xzr, #0x8000000000000000
	fmov	d6, x8
	fsub	d2, d6, d2
	ldr	d6, [sp, #704]
	fsub	d2, d2, d6
	fmul	d2, d5, d2
	fadd	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #14           // =14
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d3, d0
	ldr	d1, [sp, #720]
	ldr	d2, [sp, #704]
	fadd	d1, d1, d2
	ldr	d2, [sp, #720]
	ldr	d6, [sp, #704]
	fadd	d2, d2, d6
	fmul	d2, d5, d2
	fadd	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #15           // =15
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d3, d0
	ldr	d1, [sp, #720]
	ldr	d2, [sp, #704]
	fsub	d1, d1, d2
	ldr	d2, [sp, #720]
	ldr	d6, [sp, #704]
	fsub	d2, d2, d6
	fmul	d2, d5, d2
	fadd	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #16           // =16
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d3, d0
	ldr	d1, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d2, x8
	fsub	d1, d2, d1
	ldr	d2, [sp, #704]
	fadd	d1, d1, d2
	ldr	d2, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d6, x8
	fsub	d2, d6, d2
	ldr	d6, [sp, #704]
	fadd	d2, d2, d6
	fmul	d2, d5, d2
	fadd	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #17           // =17
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
	ldr	d0, [sp, #696]
	fmul	d0, d3, d0
	ldr	d1, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d2, x8
	fsub	d1, d2, d1
	ldr	d2, [sp, #704]
	fsub	d1, d1, d2
	ldr	d2, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d3, x8
	fsub	d2, d3, d2
	ldr	d3, [sp, #704]
	fsub	d2, d2, d3
	fmul	d2, d5, d2
	fadd	d2, d2, d4
	fmul	d1, d1, d2
	fadd	d1, d18, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #18           // =18
	mov	w9, w10
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	str	d0, [x8]
// %bb.3:                               //   in Loop: Header=BB9_1 Depth=1
	ldr	w8, [sp, #604]
	add	w8, w8, #20             // =20
	str	w8, [sp, #604]
	b	.LBB9_1
.LBB9_4:
	mov	w8, #44352
	movk	w8, #393, lsl #16
	str	w8, [sp, #604]
.LBB9_5:                                // =>This Inner Loop Header: Depth=1
	mov	w8, #47744
	movk	w8, #396, lsl #16
	ldr	w9, [sp, #604]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB9_6
	b	.LBB9_8
.LBB9_6:                                //   in Loop: Header=BB9_5 Depth=1
	mov	x8, #50972
	movk	x8, #7281, lsl #16
	movk	x8, #29127, lsl #32
	movk	x8, #16284, lsl #48
	fmov	d0, x8
	mov	x8, #4613937818241073152
	fmov	d1, x8
	mov	x8, #4616752568008179712
	fmov	d2, x8
	mov	x8, #50972
	movk	x8, #7281, lsl #16
	movk	x8, #29127, lsl #32
	movk	x8, #16300, lsl #48
	fmov	d3, x8
	mov	x8, #6148914691236517205
	movk	x8, #16341, lsl #48
	fmov	d4, x8
	orr	x8, xzr, #0x3ff8000000000000
	fmov	d5, x8
	orr	x8, xzr, #0x4000000000000000
	fmov	d6, x8
	orr	x8, xzr, #0x3ff0000000000000
	fmov	d7, x8
	mov	w9, #58770
	movk	w9, #65529, lsl #16
	mov	w10, #58769
	movk	w10, #65529, lsl #16
	mov	w11, #58768
	movk	w11, #65529, lsl #16
	mov	w12, #58767
	movk	w12, #65529, lsl #16
	mov	w13, #58766
	movk	w13, #65529, lsl #16
	mov	w14, #58765
	movk	w14, #65529, lsl #16
	mov	w15, #58764
	movk	w15, #65529, lsl #16
	mov	w16, #58763
	movk	w16, #65529, lsl #16
	mov	w17, #58762
	movk	w17, #65529, lsl #16
	mov	w18, #58761
	movk	w18, #65529, lsl #16
	mov	w0, #58760
	movk	w0, #65529, lsl #16
	mov	w1, #58759
	movk	w1, #65529, lsl #16
	mov	w2, #58758
	movk	w2, #65529, lsl #16
	mov	w3, #58757
	movk	w3, #65529, lsl #16
	mov	w4, #58756
	movk	w4, #65529, lsl #16
	mov	w5, #58755
	movk	w5, #65529, lsl #16
	mov	w6, #58754
	movk	w6, #65529, lsl #16
	mov	w7, #58753
	movk	w7, #65529, lsl #16
	mov	w19, #58752
	movk	w19, #65529, lsl #16
	mov	w20, #62162
	movk	w20, #65532, lsl #16
	mov	w21, #62161
	movk	w21, #65532, lsl #16
	mov	w22, #62160
	movk	w22, #65532, lsl #16
	mov	w23, #62159
	movk	w23, #65532, lsl #16
	mov	w24, #62158
	movk	w24, #65532, lsl #16
	mov	w25, #62157
	movk	w25, #65532, lsl #16
	mov	w26, #62156
	movk	w26, #65532, lsl #16
	mov	w27, #62155
	movk	w27, #65532, lsl #16
	mov	w28, #62154
	movk	w28, #65532, lsl #16
	mov	w29, #62153
	movk	w29, #65532, lsl #16
	mov	w30, #62152
	movk	w30, #65532, lsl #16
	mov	w8, #62151
	movk	w8, #65532, lsl #16
	str	w8, [sp, #436]          // 4-byte Folded Spill
	mov	w8, #62150
	movk	w8, #65532, lsl #16
	str	w8, [sp, #432]          // 4-byte Folded Spill
	mov	w8, #62149
	movk	w8, #65532, lsl #16
	str	w8, [sp, #428]          // 4-byte Folded Spill
	mov	w8, #62148
	movk	w8, #65532, lsl #16
	str	w8, [sp, #424]          // 4-byte Folded Spill
	mov	w8, #62147
	movk	w8, #65532, lsl #16
	str	w8, [sp, #420]          // 4-byte Folded Spill
	mov	w8, #62146
	movk	w8, #65532, lsl #16
	str	w8, [sp, #416]          // 4-byte Folded Spill
	mov	w8, #62145
	movk	w8, #65532, lsl #16
	str	w8, [sp, #412]          // 4-byte Folded Spill
	orr	x8, xzr, #0x8
	str	x8, [sp, #400]          // 8-byte Folded Spill
	mov	w8, #62144
	movk	w8, #65532, lsl #16
	str	w8, [sp, #396]          // 4-byte Folded Spill
	ldr	x8, [sp, #728]
	str	x8, [sp, #384]          // 8-byte Folded Spill
	ldr	w8, [sp, #604]
	str	w8, [sp, #380]          // 4-byte Folded Spill
	ldr	w8, [sp, #396]          // 4-byte Folded Reload
	str	w9, [sp, #376]          // 4-byte Folded Spill
	ldr	w9, [sp, #380]          // 4-byte Folded Reload
	add	w8, w8, w9
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	ldr	x9, [sp, #400]          // 8-byte Folded Reload
	mul	x8, x9, x8
	ldr	x9, [sp, #384]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d16, [x8]
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	str	x8, [sp, #368]          // 8-byte Folded Spill
	ldr	w8, [sp, #412]          // 4-byte Folded Reload
	add	w9, w8, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #368]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d17, [x9]
	fadd	d16, d16, d17
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	str	w8, [sp, #364]          // 4-byte Folded Spill
	ldr	w8, [sp, #416]          // 4-byte Folded Reload
	str	x9, [sp, #352]          // 8-byte Folded Spill
	ldr	w9, [sp, #364]          // 4-byte Folded Reload
	add	w8, w8, w9
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	ldr	x9, [sp, #400]          // 8-byte Folded Reload
	mul	x8, x9, x8
	ldr	x9, [sp, #352]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	str	x8, [sp, #344]          // 8-byte Folded Spill
	ldr	w8, [sp, #420]          // 4-byte Folded Reload
	add	w9, w8, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #344]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d17, [x9]
	fadd	d16, d16, d17
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	str	w8, [sp, #340]          // 4-byte Folded Spill
	ldr	w8, [sp, #424]          // 4-byte Folded Reload
	str	x9, [sp, #328]          // 8-byte Folded Spill
	ldr	w9, [sp, #340]          // 4-byte Folded Reload
	add	w8, w8, w9
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	ldr	x9, [sp, #400]          // 8-byte Folded Reload
	mul	x8, x9, x8
	ldr	x9, [sp, #328]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	str	x8, [sp, #320]          // 8-byte Folded Spill
	ldr	w8, [sp, #428]          // 4-byte Folded Reload
	add	w9, w8, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #320]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d17, [x9]
	fadd	d16, d16, d17
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	str	w8, [sp, #316]          // 4-byte Folded Spill
	ldr	w8, [sp, #432]          // 4-byte Folded Reload
	str	x9, [sp, #304]          // 8-byte Folded Spill
	ldr	w9, [sp, #316]          // 4-byte Folded Reload
	add	w8, w8, w9
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	ldr	x9, [sp, #400]          // 8-byte Folded Reload
	mul	x8, x9, x8
	ldr	x9, [sp, #304]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	str	x8, [sp, #296]          // 8-byte Folded Spill
	ldr	w8, [sp, #436]          // 4-byte Folded Reload
	add	w9, w8, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #296]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d17, [x9]
	fadd	d16, d16, d17
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	add	w8, w30, w8
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	str	x8, [sp, #288]          // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	str	x9, [sp, #280]          // 8-byte Folded Spill
	ldr	x9, [sp, #288]          // 8-byte Folded Reload
	mul	x8, x8, x9
	ldr	x9, [sp, #280]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	add	w9, w29, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	str	x8, [sp, #272]          // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #272]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d17, [x9]
	fadd	d16, d16, d17
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	add	w8, w28, w8
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	str	x8, [sp, #264]          // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	str	x9, [sp, #256]          // 8-byte Folded Spill
	ldr	x9, [sp, #264]          // 8-byte Folded Reload
	mul	x8, x8, x9
	ldr	x9, [sp, #256]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	add	w9, w27, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	str	x8, [sp, #248]          // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #248]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d17, [x9]
	fadd	d16, d16, d17
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	add	w8, w26, w8
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	str	x8, [sp, #240]          // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	str	x9, [sp, #232]          // 8-byte Folded Spill
	ldr	x9, [sp, #240]          // 8-byte Folded Reload
	mul	x8, x8, x9
	ldr	x9, [sp, #232]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	add	w9, w25, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	str	x8, [sp, #224]          // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #224]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d17, [x9]
	fadd	d16, d16, d17
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	add	w8, w24, w8
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	str	x8, [sp, #216]          // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	str	x9, [sp, #208]          // 8-byte Folded Spill
	ldr	x9, [sp, #216]          // 8-byte Folded Reload
	mul	x8, x8, x9
	ldr	x9, [sp, #208]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	add	w9, w23, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	str	x8, [sp, #200]          // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #200]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d17, [x9]
	fadd	d16, d16, d17
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	add	w8, w22, w8
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	str	x8, [sp, #192]          // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	str	x9, [sp, #184]          // 8-byte Folded Spill
	ldr	x9, [sp, #192]          // 8-byte Folded Reload
	mul	x8, x8, x9
	ldr	x9, [sp, #184]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	add	w9, w21, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	str	x8, [sp, #176]          // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #176]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d17, [x9]
	fadd	d16, d16, d17
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	add	w8, w20, w8
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	str	x8, [sp, #168]          // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	str	x9, [sp, #160]          // 8-byte Folded Spill
	ldr	x9, [sp, #168]          // 8-byte Folded Reload
	mul	x8, x8, x9
	ldr	x9, [sp, #160]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d17, [x8]
	fadd	d16, d16, d17
	str	d16, [sp, #664]
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	str	x8, [sp, #152]          // 8-byte Folded Spill
	ldr	w8, [sp, #420]          // 4-byte Folded Reload
	add	w9, w8, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #152]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d16, [x9]
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	str	w8, [sp, #148]          // 4-byte Folded Spill
	ldr	w8, [sp, #424]          // 4-byte Folded Reload
	str	x9, [sp, #136]          // 8-byte Folded Spill
	ldr	w9, [sp, #148]          // 4-byte Folded Reload
	add	w8, w8, w9
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	ldr	x9, [sp, #400]          // 8-byte Folded Reload
	mul	x8, x9, x8
	ldr	x9, [sp, #136]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	str	x8, [sp, #128]          // 8-byte Folded Spill
	ldr	w8, [sp, #436]          // 4-byte Folded Reload
	add	w9, w8, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #128]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d17, [x9]
	fadd	d16, d16, d17
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	add	w8, w30, w8
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	str	x8, [sp, #120]          // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	str	x9, [sp, #112]          // 8-byte Folded Spill
	ldr	x9, [sp, #120]          // 8-byte Folded Reload
	mul	x8, x8, x9
	ldr	x9, [sp, #112]          // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	add	w9, w29, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	str	x8, [sp, #104]          // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #104]          // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d17, [x9]
	fadd	d16, d16, d17
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	add	w8, w28, w8
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	str	x8, [sp, #96]           // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	str	x9, [sp, #88]           // 8-byte Folded Spill
	ldr	x9, [sp, #96]           // 8-byte Folded Reload
	mul	x8, x8, x9
	ldr	x9, [sp, #88]           // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	add	w9, w23, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	str	x8, [sp, #80]           // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #80]           // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d17, [x9]
	fadd	d16, d16, d17
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	add	w8, w22, w8
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	str	x8, [sp, #72]           // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	str	x9, [sp, #64]           // 8-byte Folded Spill
	ldr	x9, [sp, #72]           // 8-byte Folded Reload
	mul	x8, x8, x9
	ldr	x9, [sp, #64]           // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	add	w9, w21, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	str	x8, [sp, #56]           // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #56]           // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d17, [x9]
	fsub	d16, d16, d17
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	add	w8, w20, w8
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	str	x8, [sp, #48]           // 8-byte Folded Spill
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	str	x9, [sp, #40]           // 8-byte Folded Spill
	ldr	x9, [sp, #48]           // 8-byte Folded Reload
	mul	x8, x8, x9
	ldr	x9, [sp, #40]           // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d17, [x8]
	fsub	d16, d16, d17
	str	d16, [sp, #688]
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	str	x8, [sp, #32]           // 8-byte Folded Spill
	ldr	w8, [sp, #412]          // 4-byte Folded Reload
	add	w9, w8, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #32]           // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d16, [x9]
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	str	w8, [sp, #28]           // 4-byte Folded Spill
	ldr	w8, [sp, #416]          // 4-byte Folded Reload
	str	x9, [sp, #16]           // 8-byte Folded Spill
	ldr	w9, [sp, #28]           // 4-byte Folded Reload
	add	w8, w8, w9
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	ldr	x9, [sp, #400]          // 8-byte Folded Reload
	mul	x8, x9, x8
	ldr	x9, [sp, #16]           // 8-byte Folded Reload
	add	x8, x9, x8
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	str	x8, [sp, #8]            // 8-byte Folded Spill
	ldr	w8, [sp, #436]          // 4-byte Folded Reload
	add	w9, w8, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	ldr	x8, [sp, #400]          // 8-byte Folded Reload
	mul	x9, x8, x9
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	add	x9, x8, x9
	ldr	d17, [x9]
	fadd	d16, d16, d17
	ldr	x9, [sp, #728]
	ldr	w8, [sp, #604]
	add	w8, w30, w8
                                        // kill: def $x8 killed $w8
	sxtw	x8, w8
	ldr	x30, [sp, #400]         // 8-byte Folded Reload
	mul	x8, x30, x8
	add	x8, x9, x8
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w9, [sp, #604]
	add	w9, w29, w9
                                        // kill: def $x9 killed $w9
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w29, [sp, #604]
	add	w28, w28, w29
	mov	w9, w28
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w28, [sp, #604]
	add	w28, w27, w28
	mov	w9, w28
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w28, [sp, #604]
	add	w28, w26, w28
	mov	w9, w28
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w28, [sp, #604]
	add	w28, w25, w28
	mov	w9, w28
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w28, [sp, #604]
	add	w28, w24, w28
	mov	w9, w28
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d17, [x8]
	fsub	d16, d16, d17
	str	d16, [sp, #680]
	ldr	x8, [sp, #728]
	ldr	w28, [sp, #604]
	ldr	w29, [sp, #428]         // 4-byte Folded Reload
	add	w28, w29, w28
	mov	w9, w28
	sxtw	x9, w9
	mul	x9, x30, x9
	add	x8, x8, x9
	ldr	d16, [x8]
	ldr	x8, [sp, #728]
	ldr	w28, [sp, #604]
	ldr	w9, [sp, #432]          // 4-byte Folded Reload
	add	w28, w9, w28
                                        // kill: def $x28 killed $w28
	sxtw	x28, w28
	mul	x28, x30, x28
	add	x8, x8, x28
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w28, [sp, #604]
	add	w27, w27, w28
                                        // kill: def $x27 killed $w27
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w28, [sp, #604]
	add	w26, w26, w28
	mov	w27, w26
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w26, [sp, #604]
	add	w25, w25, w26
	mov	w27, w25
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w25, [sp, #604]
	add	w24, w24, w25
	mov	w27, w24
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w24, [sp, #604]
	add	w23, w23, w24
	mov	w27, w23
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w23, [sp, #604]
	add	w22, w22, w23
	mov	w27, w22
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w22, [sp, #604]
	add	w21, w21, w22
	mov	w27, w21
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w21, [sp, #604]
	add	w20, w20, w21
	mov	w27, w20
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	str	d16, [sp, #672]
	ldr	d16, [sp, #664]
	ldr	d17, [sp, #688]
	fdiv	d16, d17, d16
	str	d16, [sp, #688]
	ldr	d16, [sp, #664]
	ldr	d17, [sp, #680]
	fdiv	d16, d17, d16
	str	d16, [sp, #680]
	ldr	d16, [sp, #664]
	ldr	d17, [sp, #672]
	fdiv	d16, d17, d16
	str	d16, [sp, #672]
	ldr	x8, [sp, #728]
	ldr	w20, [sp, #604]
	add	w19, w19, w20
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d16, [x8]
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w7, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w6, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w5, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w4, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w3, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w2, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w1, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w0, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w18, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w17, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w16, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w15, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w14, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w13, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w12, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w11, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w19, w10, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	ldr	w20, [sp, #376]         // 4-byte Folded Reload
	add	w19, w20, w19
	mov	w27, w19
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	str	d16, [sp, #632]
	ldr	x8, [sp, #728]
	ldr	w19, [sp, #604]
	add	w5, w5, w19
	mov	w27, w5
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d16, [x8]
	ldr	x8, [sp, #728]
	ldr	w5, [sp, #604]
	add	w4, w4, w5
	mov	w27, w4
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w4, [sp, #604]
	add	w4, w1, w4
	mov	w27, w4
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w4, [sp, #604]
	add	w4, w0, w4
	mov	w27, w4
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w4, [sp, #604]
	add	w4, w18, w4
	mov	w27, w4
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w4, [sp, #604]
	add	w4, w17, w4
	mov	w27, w4
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w4, [sp, #604]
	add	w4, w12, w4
	mov	w27, w4
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w4, [sp, #604]
	add	w4, w11, w4
	mov	w27, w4
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w4, [sp, #604]
	add	w4, w10, w4
	mov	w27, w4
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w4, [sp, #604]
	add	w4, w20, w4
	mov	w27, w4
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	str	d16, [sp, #656]
	ldr	x8, [sp, #728]
	ldr	w4, [sp, #604]
	add	w4, w7, w4
	mov	w27, w4
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d16, [x8]
	ldr	x8, [sp, #728]
	ldr	w4, [sp, #604]
	add	w4, w6, w4
	mov	w27, w4
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w4, [sp, #604]
	add	w1, w1, w4
	mov	w27, w1
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w1, [sp, #604]
	add	w0, w0, w1
	mov	w27, w0
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w0, [sp, #604]
	add	w18, w18, w0
	mov	w27, w18
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w18, [sp, #604]
	add	w17, w17, w18
	mov	w27, w17
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w17, [sp, #604]
	add	w17, w16, w17
	mov	w27, w17
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w17, [sp, #604]
	add	w17, w15, w17
	mov	w27, w17
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w17, [sp, #604]
	add	w17, w14, w17
	mov	w27, w17
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w17, [sp, #604]
	add	w17, w13, w17
	mov	w27, w17
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	str	d16, [sp, #648]
	ldr	x8, [sp, #728]
	ldr	w17, [sp, #604]
	add	w17, w3, w17
	mov	w27, w17
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d16, [x8]
	ldr	x8, [sp, #728]
	ldr	w17, [sp, #604]
	add	w17, w2, w17
	mov	w27, w17
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w17, [sp, #604]
	add	w16, w16, w17
	mov	w27, w16
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w16, [sp, #604]
	add	w15, w15, w16
	mov	w27, w15
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w15, [sp, #604]
	add	w14, w14, w15
	mov	w27, w14
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w14, [sp, #604]
	add	w13, w13, w14
	mov	w27, w13
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w13, [sp, #604]
	add	w12, w12, w13
	mov	w27, w12
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w12, [sp, #604]
	add	w11, w11, w12
	mov	w27, w11
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w11, [sp, #604]
	add	w10, w10, w11
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fadd	d16, d16, d17
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w20, w10
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	ldr	d17, [x8]
	fsub	d16, d16, d17
	str	d16, [sp, #640]
	ldr	d16, [sp, #632]
	ldr	d17, [sp, #656]
	fdiv	d16, d17, d16
	str	d16, [sp, #656]
	ldr	d16, [sp, #632]
	ldr	d17, [sp, #648]
	fdiv	d16, d17, d16
	str	d16, [sp, #648]
	ldr	d16, [sp, #632]
	ldr	d17, [sp, #640]
	fdiv	d16, d17, d16
	str	d16, [sp, #640]
	str	d7, [sp, #696]
	ldr	d16, [sp, #688]
	fmul	d16, d6, d16
	ldr	d17, [sp, #656]
	fsub	d16, d16, d17
	str	d16, [sp, #720]
	ldr	d16, [sp, #680]
	fmul	d16, d6, d16
	ldr	d17, [sp, #648]
	fsub	d16, d16, d17
	str	d16, [sp, #712]
	ldr	d16, [sp, #672]
	fmul	d6, d6, d16
	ldr	d16, [sp, #640]
	fsub	d6, d6, d16
	str	d6, [sp, #704]
	ldr	d6, [sp, #720]
	ldr	d16, [sp, #720]
	fmul	d6, d6, d16
	ldr	d16, [sp, #712]
	ldr	d17, [sp, #712]
	fmul	d16, d16, d17
	fadd	d6, d6, d16
	ldr	d16, [sp, #704]
	ldr	d17, [sp, #704]
	fmul	d16, d16, d17
	fadd	d6, d6, d16
	fmul	d5, d5, d6
	str	d5, [sp, #624]
	ldr	d5, [sp, #696]
	fmul	d4, d4, d5
	ldr	d5, [sp, #624]
	fsub	d5, d7, d5
	fmul	d4, d4, d5
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #0            // =0
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d4, [x8]
	ldr	d4, [sp, #696]
	fmul	d4, d3, d4
	ldr	d5, [sp, #712]
	ldr	d6, [sp, #712]
	fmul	d6, d2, d6
	fadd	d6, d6, d1
	fmul	d5, d5, d6
	fadd	d5, d7, d5
	ldr	d6, [sp, #624]
	fsub	d5, d5, d6
	fmul	d4, d4, d5
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #1            // =1
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d4, [x8]
	ldr	d4, [sp, #696]
	fmul	d4, d3, d4
	ldr	d5, [sp, #712]
	ldr	d6, [sp, #712]
	fmul	d6, d2, d6
	fsub	d6, d6, d1
	fmul	d5, d5, d6
	fadd	d5, d7, d5
	ldr	d6, [sp, #624]
	fsub	d5, d5, d6
	fmul	d4, d4, d5
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #2            // =2
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d4, [x8]
	ldr	d4, [sp, #696]
	fmul	d4, d3, d4
	ldr	d5, [sp, #720]
	ldr	d6, [sp, #720]
	fmul	d6, d2, d6
	fadd	d6, d6, d1
	fmul	d5, d5, d6
	fadd	d5, d7, d5
	ldr	d6, [sp, #624]
	fsub	d5, d5, d6
	fmul	d4, d4, d5
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #3            // =3
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d4, [x8]
	ldr	d4, [sp, #696]
	fmul	d4, d3, d4
	ldr	d5, [sp, #720]
	ldr	d6, [sp, #720]
	fmul	d6, d2, d6
	fsub	d6, d6, d1
	fmul	d5, d5, d6
	fadd	d5, d7, d5
	ldr	d6, [sp, #624]
	fsub	d5, d5, d6
	fmul	d4, d4, d5
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #4            // =4
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d4, [x8]
	ldr	d4, [sp, #696]
	fmul	d4, d3, d4
	ldr	d5, [sp, #704]
	ldr	d6, [sp, #704]
	fmul	d6, d2, d6
	fadd	d6, d6, d1
	fmul	d5, d5, d6
	fadd	d5, d7, d5
	ldr	d6, [sp, #624]
	fsub	d5, d5, d6
	fmul	d4, d4, d5
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #5            // =5
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d4, [x8]
	ldr	d4, [sp, #696]
	fmul	d3, d3, d4
	ldr	d4, [sp, #704]
	ldr	d5, [sp, #704]
	fmul	d5, d2, d5
	fsub	d5, d5, d1
	fmul	d4, d4, d5
	fadd	d4, d7, d4
	ldr	d5, [sp, #624]
	fsub	d4, d4, d5
	fmul	d3, d3, d4
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #6            // =6
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d3, [x8]
	ldr	d3, [sp, #696]
	fmul	d3, d0, d3
	ldr	d4, [sp, #720]
	ldr	d5, [sp, #712]
	fadd	d4, d4, d5
	ldr	d5, [sp, #720]
	ldr	d6, [sp, #712]
	fadd	d5, d5, d6
	fmul	d5, d2, d5
	fadd	d5, d5, d1
	fmul	d4, d4, d5
	fadd	d4, d7, d4
	ldr	d5, [sp, #624]
	fsub	d4, d4, d5
	fmul	d3, d3, d4
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #7            // =7
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d3, [x8]
	ldr	d3, [sp, #696]
	fmul	d3, d0, d3
	ldr	d4, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d5, x8
	fsub	d4, d5, d4
	ldr	d5, [sp, #712]
	fadd	d4, d4, d5
	ldr	d5, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d6, x8
	fsub	d5, d6, d5
	ldr	d6, [sp, #712]
	fadd	d5, d5, d6
	fmul	d5, d2, d5
	fadd	d5, d5, d1
	fmul	d4, d4, d5
	fadd	d4, d7, d4
	ldr	d5, [sp, #624]
	fsub	d4, d4, d5
	fmul	d3, d3, d4
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #8            // =8
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d3, [x8]
	ldr	d3, [sp, #696]
	fmul	d3, d0, d3
	ldr	d4, [sp, #720]
	ldr	d5, [sp, #712]
	fsub	d4, d4, d5
	ldr	d5, [sp, #720]
	ldr	d6, [sp, #712]
	fsub	d5, d5, d6
	fmul	d5, d2, d5
	fadd	d5, d5, d1
	fmul	d4, d4, d5
	fadd	d4, d7, d4
	ldr	d5, [sp, #624]
	fsub	d4, d4, d5
	fmul	d3, d3, d4
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #9            // =9
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d3, [x8]
	ldr	d3, [sp, #696]
	fmul	d3, d0, d3
	ldr	d4, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d5, x8
	fsub	d4, d5, d4
	ldr	d5, [sp, #712]
	fsub	d4, d4, d5
	ldr	d5, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d6, x8
	fsub	d5, d6, d5
	ldr	d6, [sp, #712]
	fsub	d5, d5, d6
	fmul	d5, d2, d5
	fadd	d5, d5, d1
	fmul	d4, d4, d5
	fadd	d4, d7, d4
	ldr	d5, [sp, #624]
	fsub	d4, d4, d5
	fmul	d3, d3, d4
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #10           // =10
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d3, [x8]
	ldr	d3, [sp, #696]
	fmul	d3, d0, d3
	ldr	d4, [sp, #712]
	ldr	d5, [sp, #704]
	fadd	d4, d4, d5
	ldr	d5, [sp, #712]
	ldr	d6, [sp, #704]
	fadd	d5, d5, d6
	fmul	d5, d2, d5
	fadd	d5, d5, d1
	fmul	d4, d4, d5
	fadd	d4, d7, d4
	ldr	d5, [sp, #624]
	fsub	d4, d4, d5
	fmul	d3, d3, d4
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #11           // =11
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d3, [x8]
	ldr	d3, [sp, #696]
	fmul	d3, d0, d3
	ldr	d4, [sp, #712]
	ldr	d5, [sp, #704]
	fsub	d4, d4, d5
	ldr	d5, [sp, #712]
	ldr	d6, [sp, #704]
	fsub	d5, d5, d6
	fmul	d5, d2, d5
	fadd	d5, d5, d1
	fmul	d4, d4, d5
	fadd	d4, d7, d4
	ldr	d5, [sp, #624]
	fsub	d4, d4, d5
	fmul	d3, d3, d4
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #12           // =12
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d3, [x8]
	ldr	d3, [sp, #696]
	fmul	d3, d0, d3
	ldr	d4, [sp, #712]
	orr	x8, xzr, #0x8000000000000000
	fmov	d5, x8
	fsub	d4, d5, d4
	ldr	d5, [sp, #704]
	fadd	d4, d4, d5
	ldr	d5, [sp, #712]
	orr	x8, xzr, #0x8000000000000000
	fmov	d6, x8
	fsub	d5, d6, d5
	ldr	d6, [sp, #704]
	fadd	d5, d5, d6
	fmul	d5, d2, d5
	fadd	d5, d5, d1
	fmul	d4, d4, d5
	fadd	d4, d7, d4
	ldr	d5, [sp, #624]
	fsub	d4, d4, d5
	fmul	d3, d3, d4
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #13           // =13
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d3, [x8]
	ldr	d3, [sp, #696]
	fmul	d3, d0, d3
	ldr	d4, [sp, #712]
	orr	x8, xzr, #0x8000000000000000
	fmov	d5, x8
	fsub	d4, d5, d4
	ldr	d5, [sp, #704]
	fsub	d4, d4, d5
	ldr	d5, [sp, #712]
	orr	x8, xzr, #0x8000000000000000
	fmov	d6, x8
	fsub	d5, d6, d5
	ldr	d6, [sp, #704]
	fsub	d5, d5, d6
	fmul	d5, d2, d5
	fadd	d5, d5, d1
	fmul	d4, d4, d5
	fadd	d4, d7, d4
	ldr	d5, [sp, #624]
	fsub	d4, d4, d5
	fmul	d3, d3, d4
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #14           // =14
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d3, [x8]
	ldr	d3, [sp, #696]
	fmul	d3, d0, d3
	ldr	d4, [sp, #720]
	ldr	d5, [sp, #704]
	fadd	d4, d4, d5
	ldr	d5, [sp, #720]
	ldr	d6, [sp, #704]
	fadd	d5, d5, d6
	fmul	d5, d2, d5
	fadd	d5, d5, d1
	fmul	d4, d4, d5
	fadd	d4, d7, d4
	ldr	d5, [sp, #624]
	fsub	d4, d4, d5
	fmul	d3, d3, d4
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #15           // =15
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d3, [x8]
	ldr	d3, [sp, #696]
	fmul	d3, d0, d3
	ldr	d4, [sp, #720]
	ldr	d5, [sp, #704]
	fsub	d4, d4, d5
	ldr	d5, [sp, #720]
	ldr	d6, [sp, #704]
	fsub	d5, d5, d6
	fmul	d5, d2, d5
	fadd	d5, d5, d1
	fmul	d4, d4, d5
	fadd	d4, d7, d4
	ldr	d5, [sp, #624]
	fsub	d4, d4, d5
	fmul	d3, d3, d4
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #16           // =16
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d3, [x8]
	ldr	d3, [sp, #696]
	fmul	d3, d0, d3
	ldr	d4, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d5, x8
	fsub	d4, d5, d4
	ldr	d5, [sp, #704]
	fadd	d4, d4, d5
	ldr	d5, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d6, x8
	fsub	d5, d6, d5
	ldr	d6, [sp, #704]
	fadd	d5, d5, d6
	fmul	d5, d2, d5
	fadd	d5, d5, d1
	fmul	d4, d4, d5
	fadd	d4, d7, d4
	ldr	d5, [sp, #624]
	fsub	d4, d4, d5
	fmul	d3, d3, d4
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #17           // =17
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d3, [x8]
	ldr	d3, [sp, #696]
	fmul	d0, d0, d3
	ldr	d3, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d4, x8
	fsub	d3, d4, d3
	ldr	d4, [sp, #704]
	fsub	d3, d3, d4
	ldr	d4, [sp, #720]
	orr	x8, xzr, #0x8000000000000000
	fmov	d5, x8
	fsub	d4, d5, d4
	ldr	d5, [sp, #704]
	fsub	d4, d4, d5
	fmul	d2, d2, d4
	fadd	d1, d2, d1
	fmul	d1, d3, d1
	fadd	d1, d7, d1
	ldr	d2, [sp, #624]
	fsub	d1, d1, d2
	fmul	d0, d0, d1
	ldr	x8, [sp, #728]
	ldr	w10, [sp, #604]
	add	w10, w10, #18           // =18
	mov	w27, w10
	sxtw	x27, w27
	mul	x27, x30, x27
	add	x8, x8, x27
	str	d0, [x8]
// %bb.7:                               //   in Loop: Header=BB9_5 Depth=1
	ldr	w8, [sp, #604]
	add	w8, w8, #20             // =20
	str	w8, [sp, #604]
	b	.LBB9_5
.LBB9_8:
	add	sp, sp, #736            // =736
	ldp	x29, x30, [sp, #80]     // 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]     // 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]     // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]     // 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]     // 16-byte Folded Reload
	ldp	x28, x27, [sp], #96     // 16-byte Folded Reload
	ret
.Lfunc_end9:
	.size	LBM_handleInOutFlow, .Lfunc_end9-LBM_handleInOutFlow
                                        // -- End function
	.globl	LBM_showGridStatistics  // -- Begin function LBM_showGridStatistics
	.p2align	2
	.type	LBM_showGridStatistics,@function
LBM_showGridStatistics:                 // @LBM_showGridStatistics
// %bb.0:
	sub	sp, sp, #192            // =192
	stp	x29, x30, [sp, #176]    // 16-byte Folded Spill
	add	x29, sp, #176           // =176
	mov	x8, #36074
	movk	x8, #14752, lsl #16
	movk	x8, #15961, lsl #32
	movk	x8, #17961, lsl #48
	fmov	d0, x8
	mov	x8, #36074
	movk	x8, #14752, lsl #16
	movk	x8, #15961, lsl #32
	movk	x8, #50729, lsl #48
	fmov	d1, x8
	fmov	d2, xzr
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	stur	wzr, [x29, #-16]
	stur	wzr, [x29, #-20]
	stur	d0, [x29, #-56]
	stur	d1, [x29, #-64]
	stur	d0, [x29, #-80]
	str	d1, [sp, #88]
	str	d2, [sp, #72]
	str	wzr, [sp, #68]
	str	x8, [sp, #56]           // 8-byte Folded Spill
.LBB10_1:                               // =>This Inner Loop Header: Depth=1
	mov	w8, #47744
	movk	w8, #396, lsl #16
	ldr	w9, [sp, #68]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB10_2
	b	.LBB10_18
.LBB10_2:                               //   in Loop: Header=BB10_1 Depth=1
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #0            // =0
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d0, [x9]
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #1            // =1
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #2            // =2
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #3            // =3
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #4            // =4
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #5            // =5
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #6            // =6
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #7            // =7
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #8            // =8
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #9            // =9
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #10           // =10
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #11           // =11
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #12           // =12
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #13           // =13
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #14           // =14
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #15           // =15
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #16           // =16
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #17           // =17
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #18           // =18
	mov	w11, w10
	sxtw	x11, w11
	mul	x8, x8, x11
	add	x8, x9, x8
	ldr	d1, [x8]
	fadd	d0, d0, d1
	str	d0, [sp, #80]
	ldr	x8, [sp, #80]
	ldur	x9, [x29, #-80]
	fmov	d0, x8
	fmov	d1, x9
	fcmp	d0, d1
	cset	w10, mi
	tbnz	w10, #0, .LBB10_3
	b	.LBB10_4
.LBB10_3:                               //   in Loop: Header=BB10_1 Depth=1
	ldr	x8, [sp, #80]
	stur	x8, [x29, #-80]
.LBB10_4:                               //   in Loop: Header=BB10_1 Depth=1
	ldr	x8, [sp, #80]
	ldr	x9, [sp, #88]
	fmov	d0, x8
	fmov	d1, x9
	fcmp	d0, d1
	cset	w10, gt
	tbnz	w10, #0, .LBB10_5
	b	.LBB10_6
.LBB10_5:                               //   in Loop: Header=BB10_1 Depth=1
	ldr	x8, [sp, #80]
	str	x8, [sp, #88]
.LBB10_6:                               //   in Loop: Header=BB10_1 Depth=1
	orr	w8, wzr, #0x1
	orr	x9, xzr, #0x8
	ldr	d0, [sp, #80]
	ldr	d1, [sp, #72]
	fadd	d0, d1, d0
	str	d0, [sp, #72]
	ldur	x10, [x29, #-8]
	ldr	w11, [sp, #68]
	add	w11, w11, #19           // =19
	mov	w12, w11
	sxtw	x12, w12
	mul	x9, x9, x12
	add	x9, x10, x9
	ldr	w11, [x9]
	and	w8, w11, w8
	cbnz	w8, .LBB10_7
	b	.LBB10_8
.LBB10_7:                               //   in Loop: Header=BB10_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-12]
	b	.LBB10_16
.LBB10_8:                               //   in Loop: Header=BB10_1 Depth=1
	orr	w8, wzr, #0x2
	orr	x9, xzr, #0x8
	ldur	x10, [x29, #-8]
	ldr	w11, [sp, #68]
	add	w11, w11, #19           // =19
	mov	w12, w11
	sxtw	x12, w12
	mul	x9, x9, x12
	add	x9, x10, x9
	ldr	w11, [x9]
	and	w8, w11, w8
	cbnz	w8, .LBB10_9
	b	.LBB10_10
.LBB10_9:                               //   in Loop: Header=BB10_1 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-16]
	b	.LBB10_11
.LBB10_10:                              //   in Loop: Header=BB10_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-20]
.LBB10_11:                              //   in Loop: Header=BB10_1 Depth=1
	orr	x8, xzr, #0x8
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #3            // =3
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d0, [x9]
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #4            // =4
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fsub	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #7            // =7
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #8            // =8
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fsub	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #9            // =9
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #10           // =10
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fsub	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #15           // =15
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #16           // =16
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #17           // =17
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fsub	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #18           // =18
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fsub	d0, d0, d1
	stur	d0, [x29, #-32]
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #1            // =1
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d0, [x9]
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #2            // =2
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fsub	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #7            // =7
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #8            // =8
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #9            // =9
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fsub	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #10           // =10
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fsub	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #11           // =11
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #12           // =12
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #13           // =13
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fsub	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #14           // =14
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fsub	d0, d0, d1
	stur	d0, [x29, #-40]
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #5            // =5
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d0, [x9]
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #6            // =6
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fsub	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #11           // =11
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #12           // =12
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fsub	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #13           // =13
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #14           // =14
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fsub	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #15           // =15
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #16           // =16
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fsub	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #17           // =17
	mov	w11, w10
	sxtw	x11, w11
	mul	x11, x8, x11
	add	x9, x9, x11
	ldr	d1, [x9]
	fadd	d0, d0, d1
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #68]
	add	w10, w10, #18           // =18
	mov	w11, w10
	sxtw	x11, w11
	mul	x8, x8, x11
	add	x8, x9, x8
	ldr	d1, [x8]
	fsub	d0, d0, d1
	stur	d0, [x29, #-48]
	ldur	d0, [x29, #-32]
	ldur	d1, [x29, #-32]
	fmul	d0, d0, d1
	ldur	d1, [x29, #-40]
	ldur	d2, [x29, #-40]
	fmul	d1, d1, d2
	fadd	d0, d0, d1
	ldur	d1, [x29, #-48]
	ldur	d2, [x29, #-48]
	fmul	d1, d1, d2
	fadd	d0, d0, d1
	ldr	d1, [sp, #80]
	ldr	d2, [sp, #80]
	fmul	d1, d1, d2
	fdiv	d0, d0, d1
	stur	d0, [x29, #-72]
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-56]
	fmov	d0, x8
	fmov	d1, x9
	fcmp	d0, d1
	cset	w10, mi
	tbnz	w10, #0, .LBB10_12
	b	.LBB10_13
.LBB10_12:                              //   in Loop: Header=BB10_1 Depth=1
	ldur	x8, [x29, #-72]
	stur	x8, [x29, #-56]
.LBB10_13:                              //   in Loop: Header=BB10_1 Depth=1
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-64]
	fmov	d0, x8
	fmov	d1, x9
	fcmp	d0, d1
	cset	w10, gt
	tbnz	w10, #0, .LBB10_14
	b	.LBB10_15
.LBB10_14:                              //   in Loop: Header=BB10_1 Depth=1
	ldur	x8, [x29, #-72]
	stur	x8, [x29, #-64]
.LBB10_15:                              //   in Loop: Header=BB10_1 Depth=1
.LBB10_16:                              //   in Loop: Header=BB10_1 Depth=1
// %bb.17:                              //   in Loop: Header=BB10_1 Depth=1
	ldr	w8, [sp, #68]
	add	w8, w8, #20             // =20
	str	w8, [sp, #68]
	b	.LBB10_1
.LBB10_18:
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	ldur	w3, [x29, #-20]
	ldur	d0, [x29, #-80]
	ldr	d1, [sp, #88]
	ldr	d2, [sp, #72]
	ldur	d3, [x29, #-56]
	str	d0, [sp, #48]           // 8-byte Folded Spill
	mov	v0.16b, v3.16b
	str	w1, [sp, #44]           // 4-byte Folded Spill
	str	w2, [sp, #40]           // 4-byte Folded Spill
	str	w3, [sp, #36]           // 4-byte Folded Spill
	str	d1, [sp, #24]           // 8-byte Folded Spill
	str	d2, [sp, #16]           // 8-byte Folded Spill
	bl	sqrt
	ldur	d1, [x29, #-64]
	str	d0, [sp, #8]            // 8-byte Folded Spill
	mov	v0.16b, v1.16b
	bl	sqrt
	ldr	x0, [sp, #56]           // 8-byte Folded Reload
	ldr	w1, [sp, #44]           // 4-byte Folded Reload
	ldr	w2, [sp, #40]           // 4-byte Folded Reload
	ldr	w3, [sp, #36]           // 4-byte Folded Reload
	ldr	d1, [sp, #48]           // 8-byte Folded Reload
	str	d0, [sp]                // 8-byte Folded Spill
	mov	v0.16b, v1.16b
	ldr	d1, [sp, #24]           // 8-byte Folded Reload
	ldr	d2, [sp, #16]           // 8-byte Folded Reload
	ldr	d3, [sp, #8]            // 8-byte Folded Reload
	ldr	d4, [sp]                // 8-byte Folded Reload
	bl	printf
	ldp	x29, x30, [sp, #176]    // 16-byte Folded Reload
	add	sp, sp, #192            // =192
	ret
.Lfunc_end10:
	.size	LBM_showGridStatistics, .Lfunc_end10-LBM_showGridStatistics
                                        // -- End function
	.globl	LBM_storeVelocityField  // -- Begin function LBM_storeVelocityField
	.p2align	2
	.type	LBM_storeVelocityField,@function
LBM_storeVelocityField:                 // @LBM_storeVelocityField
// %bb.0:
	sub	sp, sp, #96             // =96
	stp	x29, x30, [sp, #80]     // 16-byte Folded Spill
	add	x29, sp, #80            // =80
	mov	w8, #0
	adrp	x9, .L.str.4
	add	x9, x9, :lo12:.L.str.4
	adrp	x10, .L.str.5
	add	x10, x10, :lo12:.L.str.5
	adrp	x11, .L.str.6
	add	x11, x11, :lo12:.L.str.6
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	x0, [x29, #-16]
	ldur	w2, [x29, #-20]
	cmp	w2, w8
	cset	w8, ne
	tst	w8, #0x1
	csel	x1, x9, x10, ne
	str	x11, [sp, #16]          // 8-byte Folded Spill
	bl	fopen
	str	x0, [sp, #24]
	stur	wzr, [x29, #-32]
.LBB11_1:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB11_3 Depth 2
                                        //       Child Loop BB11_5 Depth 3
	mov	w8, #130
	ldur	w9, [x29, #-32]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB11_2
	b	.LBB11_15
.LBB11_2:                               //   in Loop: Header=BB11_1 Depth=1
	stur	wzr, [x29, #-28]
.LBB11_3:                               //   Parent Loop BB11_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB11_5 Depth 3
	mov	w8, #100
	ldur	w9, [x29, #-28]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB11_4
	b	.LBB11_13
.LBB11_4:                               //   in Loop: Header=BB11_3 Depth=2
	stur	wzr, [x29, #-24]
.LBB11_5:                               //   Parent Loop BB11_1 Depth=1
                                        //     Parent Loop BB11_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	w8, #100
	ldur	w9, [x29, #-24]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB11_6
	b	.LBB11_11
.LBB11_6:                               //   in Loop: Header=BB11_5 Depth=3
	orr	x8, xzr, #0x8
	mov	w9, #20
	mov	w10, #100
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #0            // =0
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d0, [x11]
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #1            // =1
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #2            // =2
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #3            // =3
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #4            // =4
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #5            // =5
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #6            // =6
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #7            // =7
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #8            // =8
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #9            // =9
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #10           // =10
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #11           // =11
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #12           // =12
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #13           // =13
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #14           // =14
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #15           // =15
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #16           // =16
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #17           // =17
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #18           // =18
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	fcvt	s2, d0
	stur	s2, [x29, #-36]
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #3            // =3
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d0, [x11]
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #4            // =4
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #7            // =7
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #8            // =8
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #9            // =9
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #10           // =10
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #15           // =15
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #16           // =16
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #17           // =17
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #18           // =18
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	fcvt	s2, d0
	str	s2, [sp, #40]
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #1            // =1
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d0, [x11]
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #2            // =2
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #7            // =7
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #8            // =8
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #9            // =9
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #10           // =10
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #11           // =11
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #12           // =12
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #13           // =13
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #14           // =14
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	fcvt	s2, d0
	str	s2, [sp, #36]
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #5            // =5
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d0, [x11]
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #6            // =6
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #11           // =11
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #12           // =12
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #13           // =13
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #14           // =14
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #15           // =15
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #16           // =16
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #17           // =17
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w10, w13, w10
	add	w10, w12, w10
	mul	w9, w9, w10
	add	w9, w9, #18             // =18
	mov	w14, w9
	sxtw	x14, w14
	mul	x8, x8, x14
	add	x8, x11, x8
	ldr	d1, [x8]
	fsub	d0, d0, d1
	fcvt	s2, d0
	str	s2, [sp, #32]
	ldur	s2, [x29, #-36]
	ldr	s3, [sp, #40]
	fdiv	s2, s3, s2
	str	s2, [sp, #40]
	ldur	s2, [x29, #-36]
	ldr	s3, [sp, #36]
	fdiv	s2, s3, s2
	str	s2, [sp, #36]
	ldur	s2, [x29, #-36]
	ldr	s3, [sp, #32]
	fdiv	s2, s3, s2
	str	s2, [sp, #32]
	ldur	w9, [x29, #-20]
	cbnz	w9, .LBB11_7
	b	.LBB11_8
.LBB11_7:                               //   in Loop: Header=BB11_5 Depth=3
	add	x1, sp, #32             // =32
	add	x8, sp, #36             // =36
	add	x9, sp, #40             // =40
	ldr	x0, [sp, #24]
	str	x1, [sp, #8]            // 8-byte Folded Spill
	mov	x1, x9
	str	x8, [sp]                // 8-byte Folded Spill
	bl	storeValue
	ldr	x0, [sp, #24]
	ldr	x1, [sp]                // 8-byte Folded Reload
	bl	storeValue
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #8]            // 8-byte Folded Reload
	bl	storeValue
	b	.LBB11_9
.LBB11_8:                               //   in Loop: Header=BB11_5 Depth=3
	ldr	x0, [sp, #24]
	ldr	s0, [sp, #40]
	fcvt	d0, s0
	ldr	s1, [sp, #36]
	fcvt	d1, s1
	ldr	s2, [sp, #32]
	fcvt	d2, s2
	ldr	x1, [sp, #16]           // 8-byte Folded Reload
	bl	fprintf
.LBB11_9:                               //   in Loop: Header=BB11_5 Depth=3
// %bb.10:                              //   in Loop: Header=BB11_5 Depth=3
	ldur	w8, [x29, #-24]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-24]
	b	.LBB11_5
.LBB11_11:                              //   in Loop: Header=BB11_3 Depth=2
// %bb.12:                              //   in Loop: Header=BB11_3 Depth=2
	ldur	w8, [x29, #-28]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-28]
	b	.LBB11_3
.LBB11_13:                              //   in Loop: Header=BB11_1 Depth=1
// %bb.14:                              //   in Loop: Header=BB11_1 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-32]
	b	.LBB11_1
.LBB11_15:
	ldr	x0, [sp, #24]
	bl	fclose
	ldp	x29, x30, [sp, #80]     // 16-byte Folded Reload
	add	sp, sp, #96             // =96
	ret
.Lfunc_end11:
	.size	LBM_storeVelocityField, .Lfunc_end11-LBM_storeVelocityField
                                        // -- End function
	.p2align	2               // -- Begin function storeValue
	.type	storeValue,@function
storeValue:                             // @storeValue
// %bb.0:
	sub	sp, sp, #64             // =64
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	orr	w8, wzr, #0x1
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w8, [x29, #-20]
	ldurb	w8, [x29, #-20]
	cbz	w8, .LBB12_1
	b	.LBB12_6
.LBB12_1:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	str	wzr, [sp, #8]
.LBB12_2:                               // =>This Inner Loop Header: Depth=1
	orr	x8, xzr, #0x4
	ldr	w9, [sp, #8]
	mov	w10, w9
	sxtw	x10, w10
	cmp	x10, x8
	cset	w9, lo
	tbnz	w9, #0, .LBB12_3
	b	.LBB12_5
.LBB12_3:                               //   in Loop: Header=BB12_2 Depth=1
	add	x8, sp, #12             // =12
	orr	x9, xzr, #0x4
	ldr	x10, [sp, #16]
	ldr	w11, [sp, #8]
	mov	w12, w11
	sxtw	x12, w12
	subs	x9, x9, x12
	subs	x9, x9, #1              // =1
	add	x9, x10, x9
	ldrb	w11, [x9]
	ldr	w13, [sp, #8]
	mov	w9, w13
	sxtw	x9, w9
	add	x8, x8, x9
	strb	w11, [x8]
// %bb.4:                               //   in Loop: Header=BB12_2 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1              // =1
	str	w8, [sp, #8]
	b	.LBB12_2
.LBB12_5:
	add	x8, sp, #12             // =12
	orr	x2, xzr, #0x1
	orr	x1, xzr, #0x4
	ldur	x3, [x29, #-8]
	mov	x0, x8
	bl	fwrite
	b	.LBB12_7
.LBB12_6:
	orr	x2, xzr, #0x1
	orr	x1, xzr, #0x4
	ldur	x0, [x29, #-16]
	ldur	x3, [x29, #-8]
	bl	fwrite
.LBB12_7:
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	add	sp, sp, #64             // =64
	ret
.Lfunc_end12:
	.size	storeValue, .Lfunc_end12-storeValue
                                        // -- End function
	.globl	LBM_compareVelocityField // -- Begin function LBM_compareVelocityField
	.p2align	2
	.type	LBM_compareVelocityField,@function
LBM_compareVelocityField:               // @LBM_compareVelocityField
// %bb.0:
	sub	sp, sp, #192            // =192
	stp	x29, x30, [sp, #176]    // 16-byte Folded Spill
	add	x29, sp, #176           // =176
	mov	w8, #62154
	movk	w8, #61769, lsl #16
	fmov	s0, w8
	mov	w8, #0
	adrp	x9, .L.str.2
	add	x9, x9, :lo12:.L.str.2
	adrp	x10, .L.str.7
	add	x10, x10, :lo12:.L.str.7
	adrp	x11, .L.str.10
	add	x11, x11, :lo12:.L.str.10
	adrp	x12, .L.str.11
	add	x12, x12, :lo12:.L.str.11
	adrp	x13, .L.str.9
	add	x13, x13, :lo12:.L.str.9
	adrp	x14, .L.str.8
	add	x14, x14, :lo12:.L.str.8
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	s0, [sp, #80]
	ldur	x0, [x29, #-16]
	ldur	w2, [x29, #-20]
	cmp	w2, w8
	cset	w8, ne
	tst	w8, #0x1
	csel	x1, x9, x10, ne
	str	x11, [sp, #64]          // 8-byte Folded Spill
	str	x12, [sp, #56]          // 8-byte Folded Spill
	str	x13, [sp, #48]          // 8-byte Folded Spill
	str	x14, [sp, #40]          // 8-byte Folded Spill
	bl	fopen
	str	x0, [sp, #72]
	stur	wzr, [x29, #-32]
.LBB13_1:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB13_3 Depth 2
                                        //       Child Loop BB13_5 Depth 3
	mov	w8, #130
	ldur	w9, [x29, #-32]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB13_2
	b	.LBB13_17
.LBB13_2:                               //   in Loop: Header=BB13_1 Depth=1
	stur	wzr, [x29, #-28]
.LBB13_3:                               //   Parent Loop BB13_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB13_5 Depth 3
	mov	w8, #100
	ldur	w9, [x29, #-28]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB13_4
	b	.LBB13_15
.LBB13_4:                               //   in Loop: Header=BB13_3 Depth=2
	stur	wzr, [x29, #-24]
.LBB13_5:                               //   Parent Loop BB13_1 Depth=1
                                        //     Parent Loop BB13_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	mov	w8, #100
	ldur	w9, [x29, #-24]
	cmp	w9, w8
	cset	w8, lt
	tbnz	w8, #0, .LBB13_6
	b	.LBB13_13
.LBB13_6:                               //   in Loop: Header=BB13_5 Depth=3
	orr	x8, xzr, #0x8
	mov	w9, #20
	mov	w10, #100
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #0            // =0
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d0, [x11]
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #1            // =1
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #2            // =2
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #3            // =3
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #4            // =4
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #5            // =5
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #6            // =6
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #7            // =7
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #8            // =8
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #9            // =9
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #10           // =10
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #11           // =11
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #12           // =12
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #13           // =13
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #14           // =14
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #15           // =15
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #16           // =16
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #17           // =17
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #18           // =18
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	stur	d0, [x29, #-40]
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #3            // =3
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d0, [x11]
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #4            // =4
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #7            // =7
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #8            // =8
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #9            // =9
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #10           // =10
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #15           // =15
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #16           // =16
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #17           // =17
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #18           // =18
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	stur	d0, [x29, #-48]
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #1            // =1
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d0, [x11]
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #2            // =2
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #7            // =7
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #8            // =8
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #9            // =9
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #10           // =10
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #11           // =11
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #12           // =12
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #13           // =13
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #14           // =14
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	stur	d0, [x29, #-56]
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #5            // =5
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d0, [x11]
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #6            // =6
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #11           // =11
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #12           // =12
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #13           // =13
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #14           // =14
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #15           // =15
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #16           // =16
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fsub	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w13, w13, w10
	add	w12, w12, w13
	mul	w12, w9, w12
	add	w12, w12, #17           // =17
	mov	w14, w12
	sxtw	x14, w14
	mul	x14, x8, x14
	add	x11, x11, x14
	ldr	d1, [x11]
	fadd	d0, d0, d1
	ldur	x11, [x29, #-8]
	ldur	w12, [x29, #-24]
	ldur	w13, [x29, #-28]
	mul	w13, w13, w10
	add	w12, w12, w13
	ldur	w13, [x29, #-32]
	mul	w13, w13, w10
	mul	w10, w13, w10
	add	w10, w12, w10
	mul	w9, w9, w10
	add	w9, w9, #18             // =18
	mov	w14, w9
	sxtw	x14, w14
	mul	x8, x8, x14
	add	x8, x11, x8
	ldr	d1, [x8]
	fsub	d0, d0, d1
	stur	d0, [x29, #-64]
	ldur	d0, [x29, #-40]
	ldur	d1, [x29, #-48]
	fdiv	d0, d1, d0
	stur	d0, [x29, #-48]
	ldur	d0, [x29, #-40]
	ldur	d1, [x29, #-56]
	fdiv	d0, d1, d0
	stur	d0, [x29, #-56]
	ldur	d0, [x29, #-40]
	ldur	d1, [x29, #-64]
	fdiv	d0, d1, d0
	stur	d0, [x29, #-64]
	ldur	w9, [x29, #-20]
	cbnz	w9, .LBB13_7
	b	.LBB13_8
.LBB13_7:                               //   in Loop: Header=BB13_5 Depth=3
	sub	x1, x29, #76            // =76
	sub	x8, x29, #72            // =72
	sub	x9, x29, #68            // =68
	ldr	x0, [sp, #72]
	str	x1, [sp, #32]           // 8-byte Folded Spill
	mov	x1, x9
	str	x8, [sp, #24]           // 8-byte Folded Spill
	bl	loadValue
	ldr	x0, [sp, #72]
	ldr	x1, [sp, #24]           // 8-byte Folded Reload
	bl	loadValue
	ldr	x0, [sp, #72]
	ldr	x1, [sp, #32]           // 8-byte Folded Reload
	bl	loadValue
	b	.LBB13_9
.LBB13_8:                               //   in Loop: Header=BB13_5 Depth=3
	sub	x4, x29, #76            // =76
	sub	x3, x29, #72            // =72
	sub	x2, x29, #68            // =68
	ldr	x0, [sp, #72]
	ldr	x1, [sp, #40]           // 8-byte Folded Reload
	bl	__isoc99_fscanf
.LBB13_9:                               //   in Loop: Header=BB13_5 Depth=3
	ldur	d0, [x29, #-48]
	ldur	s1, [x29, #-68]
	fcvt	d2, s1
	fsub	d0, d0, d2
	fcvt	s1, d0
	stur	s1, [x29, #-80]
	ldur	d0, [x29, #-56]
	ldur	s1, [x29, #-72]
	fcvt	d2, s1
	fsub	d0, d0, d2
	fcvt	s1, d0
	stur	s1, [x29, #-84]
	ldur	d0, [x29, #-64]
	ldur	s1, [x29, #-76]
	fcvt	d2, s1
	fsub	d0, d0, d2
	fcvt	s1, d0
	str	s1, [sp, #88]
	ldur	s1, [x29, #-80]
	ldur	s3, [x29, #-80]
	fmul	s1, s1, s3
	ldur	s3, [x29, #-84]
	ldur	s4, [x29, #-84]
	fmul	s3, s3, s4
	fadd	s1, s1, s3
	ldr	s3, [sp, #88]
	ldr	s4, [sp, #88]
	fmul	s3, s3, s4
	fadd	s1, s1, s3
	str	s1, [sp, #84]
	ldr	w8, [sp, #84]
	ldr	w9, [sp, #80]
	fmov	s1, w8
	fmov	s3, w9
	fcmp	s1, s3
	cset	w8, gt
	tbnz	w8, #0, .LBB13_10
	b	.LBB13_11
.LBB13_10:                              //   in Loop: Header=BB13_5 Depth=3
	ldr	w8, [sp, #84]
	str	w8, [sp, #80]
.LBB13_11:                              //   in Loop: Header=BB13_5 Depth=3
// %bb.12:                              //   in Loop: Header=BB13_5 Depth=3
	ldur	w8, [x29, #-24]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-24]
	b	.LBB13_5
.LBB13_13:                              //   in Loop: Header=BB13_3 Depth=2
// %bb.14:                              //   in Loop: Header=BB13_3 Depth=2
	ldur	w8, [x29, #-28]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-28]
	b	.LBB13_3
.LBB13_15:                              //   in Loop: Header=BB13_1 Depth=1
// %bb.16:                              //   in Loop: Header=BB13_1 Depth=1
	ldur	w8, [x29, #-32]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-32]
	b	.LBB13_1
.LBB13_17:
	mov	x8, #26865
	movk	x8, #35043, lsl #16
	movk	x8, #63669, lsl #32
	movk	x8, #16100, lsl #48
	fmov	d0, x8
	ldr	s1, [sp, #80]
	fcvt	d2, s1
	str	d0, [sp, #16]           // 8-byte Folded Spill
	mov	v0.16b, v2.16b
	bl	sqrt
	ldr	s1, [sp, #80]
	fcvt	d2, s1
	str	d0, [sp, #8]            // 8-byte Folded Spill
	mov	v0.16b, v2.16b
	bl	sqrt
	ldr	d2, [sp, #16]           // 8-byte Folded Reload
	fcmp	d0, d2
	cset	w9, gt
	tst	w9, #0x1
	ldr	x8, [sp, #64]           // 8-byte Folded Reload
	ldr	x10, [sp, #56]          // 8-byte Folded Reload
	csel	x1, x8, x10, ne
	ldr	x0, [sp, #48]           // 8-byte Folded Reload
	ldr	d0, [sp, #8]            // 8-byte Folded Reload
	bl	printf
	ldr	x8, [sp, #72]
	mov	x0, x8
	bl	fclose
	ldp	x29, x30, [sp, #176]    // 16-byte Folded Reload
	add	sp, sp, #192            // =192
	ret
.Lfunc_end13:
	.size	LBM_compareVelocityField, .Lfunc_end13-LBM_compareVelocityField
                                        // -- End function
	.p2align	2               // -- Begin function loadValue
	.type	loadValue,@function
loadValue:                              // @loadValue
// %bb.0:
	sub	sp, sp, #64             // =64
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	orr	w8, wzr, #0x1
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w8, [x29, #-20]
	ldurb	w8, [x29, #-20]
	cbz	w8, .LBB14_1
	b	.LBB14_6
.LBB14_1:
	add	x8, sp, #12             // =12
	orr	x2, xzr, #0x1
	orr	x1, xzr, #0x4
	ldur	x9, [x29, #-16]
	str	x9, [sp, #16]
	ldur	x3, [x29, #-8]
	mov	x0, x8
	bl	fread
	str	wzr, [sp, #8]
.LBB14_2:                               // =>This Inner Loop Header: Depth=1
	orr	x8, xzr, #0x4
	ldr	w9, [sp, #8]
	mov	w10, w9
	sxtw	x10, w10
	cmp	x10, x8
	cset	w9, lo
	tbnz	w9, #0, .LBB14_3
	b	.LBB14_5
.LBB14_3:                               //   in Loop: Header=BB14_2 Depth=1
	add	x8, sp, #12             // =12
	orr	x9, xzr, #0x4
	ldr	w10, [sp, #8]
	mov	w11, w10
	sxtw	x11, w11
	subs	x9, x9, x11
	subs	x9, x9, #1              // =1
	add	x8, x8, x9
	ldrb	w10, [x8]
	ldr	x8, [sp, #16]
	ldr	w12, [sp, #8]
	mov	w9, w12
	sxtw	x9, w9
	add	x8, x8, x9
	strb	w10, [x8]
// %bb.4:                               //   in Loop: Header=BB14_2 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1              // =1
	str	w8, [sp, #8]
	b	.LBB14_2
.LBB14_5:
	b	.LBB14_7
.LBB14_6:
	orr	x2, xzr, #0x1
	orr	x1, xzr, #0x4
	ldur	x0, [x29, #-16]
	ldur	x3, [x29, #-8]
	bl	fread
.LBB14_7:
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	add	sp, sp, #64             // =64
	ret
.Lfunc_end14:
	.size	loadValue, .Lfunc_end14-loadValue
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LBM_allocateGrid: could not allocate %.1f MByte\n"
	.size	.L.str, 49

	.type	.L.str.1,@object        // @.str.1
.L.str.1:
	.asciz	"LBM_allocateGrid: allocated %.1f MByte\n"
	.size	.L.str.1, 40

	.type	.L.str.2,@object        // @.str.2
.L.str.2:
	.asciz	"rb"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        // @.str.3
.L.str.3:
	.asciz	"LBM_showGridStatistics:\n\tnObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\n\tminRho: %8.6f maxRho: %8.6f Mass: %e\n\tminU  : %8.6f maxU  : %8.6f\n\n"
	.size	.L.str.3, 148

	.type	.L.str.4,@object        // @.str.4
.L.str.4:
	.asciz	"wb"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        // @.str.5
.L.str.5:
	.asciz	"w"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        // @.str.6
.L.str.6:
	.asciz	"%e %e %e\n"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        // @.str.7
.L.str.7:
	.asciz	"r"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        // @.str.8
.L.str.8:
	.asciz	"%f %f %f\n"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        // @.str.9
.L.str.9:
	.asciz	"LBM_compareVelocityField: maxDiff = %e  ==>  %s\n\n"
	.size	.L.str.9, 50

	.type	.L.str.10,@object       // @.str.10
.L.str.10:
	.asciz	"##### ERROR #####"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       // @.str.11
.L.str.11:
	.asciz	"OK"
	.size	.L.str.11, 3


	.ident	"clang version 8.0.1 (tags/RELEASE_801/final)"
	.section	".note.GNU-stack","",@progbits
