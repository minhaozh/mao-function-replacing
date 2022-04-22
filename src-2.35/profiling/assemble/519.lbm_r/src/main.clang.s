	.text
	.file	"main.c"
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #224            // =224
	stp	x29, x30, [sp, #208]    // 16-byte Folded Spill
	add	x29, sp, #208           // =208
	orr	w8, wzr, #0x1
	adrp	x9, srcGrid
	add	x9, x9, :lo12:srcGrid
	adrp	x10, dstGrid
	add	x10, x10, :lo12:dstGrid
	adrp	x11, .L.str
	add	x11, x11, :lo12:.L.str
	sub	x12, x29, #48           // =48
	add	x13, sp, #72            // =72
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	w0, [x29, #-8]
	ldur	x1, [x29, #-16]
	mov	x2, x12
	str	w8, [sp, #64]           // 4-byte Folded Spill
	str	x9, [sp, #56]           // 8-byte Folded Spill
	str	x10, [sp, #48]          // 8-byte Folded Spill
	str	x11, [sp, #40]          // 8-byte Folded Spill
	str	x12, [sp, #32]          // 8-byte Folded Spill
	str	x13, [sp, #24]          // 8-byte Folded Spill
	bl	MAIN_parseCommandLine
	ldr	x0, [sp, #32]           // 8-byte Folded Reload
	bl	MAIN_printInfo
	ldr	x0, [sp, #32]           // 8-byte Folded Reload
	bl	MAIN_initialize
	ldr	x0, [sp, #24]           // 8-byte Folded Reload
	bl	MAIN_startClock
	ldr	w8, [sp, #64]           // 4-byte Folded Reload
	str	w8, [sp, #68]
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	sub	x8, x29, #48            // =48
	ldr	w9, [sp, #68]
	ldr	w10, [x8]
	cmp	w9, w10
	cset	w9, le
	tbnz	w9, #0, .LBB0_2
	b	.LBB0_8
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	orr	w8, wzr, #0x1
	ldur	w9, [x29, #-28]
	cmp	w9, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB0_3
	b	.LBB0_4
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]           // 8-byte Folded Reload
	ldr	x9, [x8]
	mov	x0, x9
	bl	LBM_handleInOutFlow
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	orr	w8, wzr, #0x3f
	ldr	x9, [sp, #56]           // 8-byte Folded Reload
	ldr	x10, [x9]
	ldr	x11, [sp, #48]          // 8-byte Folded Reload
	ldr	x12, [x11]
	mov	x0, x10
	mov	x1, x12
	str	w8, [sp, #20]           // 4-byte Folded Spill
	bl	LBM_performStreamCollideTRT
	ldr	x0, [sp, #56]           // 8-byte Folded Reload
	ldr	x1, [sp, #48]           // 8-byte Folded Reload
	bl	LBM_swapGrids
	ldr	w8, [sp, #68]
	ldr	w13, [sp, #20]          // 4-byte Folded Reload
	and	w8, w8, w13
	cbz	w8, .LBB0_5
	b	.LBB0_6
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w1, [sp, #68]
	ldr	x0, [sp, #40]           // 8-byte Folded Reload
	bl	printf
	ldr	x8, [sp, #56]           // 8-byte Folded Reload
	ldr	x9, [x8]
	mov	x0, x9
	bl	LBM_showGridStatistics
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
// %bb.7:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #68]
	add	w8, w8, #1              // =1
	str	w8, [sp, #68]
	b	.LBB0_1
.LBB0_8:
	add	x0, sp, #72             // =72
	sub	x8, x29, #48            // =48
	mov	w9, #0
	mov	x1, x8
	str	x8, [sp, #8]            // 8-byte Folded Spill
	str	w9, [sp, #4]            // 4-byte Folded Spill
	bl	MAIN_stopClock
	ldr	x0, [sp, #8]            // 8-byte Folded Reload
	bl	MAIN_finalize
	ldr	w0, [sp, #4]            // 4-byte Folded Reload
	ldp	x29, x30, [sp, #208]    // 16-byte Folded Reload
	add	sp, sp, #224            // =224
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.globl	MAIN_parseCommandLine   // -- Begin function MAIN_parseCommandLine
	.p2align	2
	.type	MAIN_parseCommandLine,@function
MAIN_parseCommandLine:                  // @MAIN_parseCommandLine
// %bb.0:
	sub	sp, sp, #240            // =240
	stp	x29, x30, [sp, #224]    // 16-byte Folded Spill
	add	x29, sp, #224           // =224
	mov	w8, #5
	mov	x9, #0
	adrp	x10, .L.str.4
	add	x10, x10, :lo12:.L.str.4
	adrp	x11, .L.str.3
	add	x11, x11, :lo12:.L.str.3
	adrp	x12, .L.str.2
	add	x12, x12, :lo12:.L.str.2
	adrp	x13, .L.str.1
	add	x13, x13, :lo12:.L.str.1
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	w0, [x29, #-4]
	cmp	w0, w8
	cset	w8, lt
	str	x9, [sp, #64]           // 8-byte Folded Spill
	str	x10, [sp, #56]          // 8-byte Folded Spill
	str	x11, [sp, #48]          // 8-byte Folded Spill
	str	x12, [sp, #40]          // 8-byte Folded Spill
	str	x13, [sp, #32]          // 8-byte Folded Spill
	tbnz	w8, #0, .LBB1_2
// %bb.1:
	orr	w8, wzr, #0x6
	ldur	w9, [x29, #-4]
	cmp	w9, w8
	cset	w8, gt
	tbnz	w8, #0, .LBB1_2
	b	.LBB1_3
.LBB1_2:
	orr	w0, wzr, #0x1
	ldr	x1, [sp, #32]           // 8-byte Folded Reload
	str	w0, [sp, #28]           // 4-byte Folded Spill
	mov	x0, x1
	bl	printf
	ldr	w8, [sp, #28]           // 4-byte Folded Reload
	mov	w0, w8
	bl	exit
.LBB1_3:
	orr	w8, wzr, #0x6
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #8]
	str	w8, [sp, #24]           // 4-byte Folded Spill
	bl	atoi
	ldur	x9, [x29, #-24]
	str	w0, [x9]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #16]
	ldur	x10, [x29, #-24]
	str	x9, [x10, #8]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #24]
	bl	atoi
	ldur	x9, [x29, #-24]
	str	w0, [x9, #16]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #32]
	bl	atoi
	ldur	x9, [x29, #-24]
	str	w0, [x9, #20]
	ldur	w8, [x29, #-4]
	ldr	w0, [sp, #24]           // 4-byte Folded Reload
	cmp	w8, w0
	cset	w8, eq
	tbnz	w8, #0, .LBB1_4
	b	.LBB1_9
.LBB1_4:
	add	x1, sp, #72             // =72
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #40]
	ldur	x9, [x29, #-24]
	str	x8, [x9, #24]
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #24]
	bl	stat
	cbnz	w0, .LBB1_5
	b	.LBB1_6
.LBB1_5:
	orr	w0, wzr, #0x1
	ldur	x8, [x29, #-24]
	ldr	x1, [x8, #24]
	ldr	x8, [sp, #40]           // 8-byte Folded Reload
	str	w0, [sp, #20]           // 4-byte Folded Spill
	mov	x0, x8
	bl	printf
	ldr	w9, [sp, #20]           // 4-byte Folded Reload
	mov	w0, w9
	bl	exit
.LBB1_6:
	mov	x8, #2410
	movk	x8, #20, lsl #16
	ldr	x9, [sp, #120]
	cmp	x9, x8
	cset	w10, ne
	tbnz	w10, #0, .LBB1_7
	b	.LBB1_8
.LBB1_7:
	mov	w3, #2410
	movk	w3, #20, lsl #16
	orr	w0, wzr, #0x1
	ldur	x8, [x29, #-24]
	ldr	x1, [x8, #24]
	ldr	x8, [sp, #120]
	mov	w9, w8
	ldr	x8, [sp, #48]           // 8-byte Folded Reload
	str	w0, [sp, #16]           // 4-byte Folded Spill
	mov	x0, x8
	mov	w2, w9
	bl	printf
	ldr	w9, [sp, #16]           // 4-byte Folded Reload
	mov	w0, w9
	bl	exit
.LBB1_8:
	b	.LBB1_10
.LBB1_9:
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #64]           // 8-byte Folded Reload
	str	x9, [x8, #24]
.LBB1_10:
	orr	w8, wzr, #0x1
	ldur	x9, [x29, #-24]
	ldr	w10, [x9, #16]
	cmp	w10, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB1_11
	b	.LBB1_13
.LBB1_11:
	add	x1, sp, #72             // =72
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #8]
	bl	stat
	cbnz	w0, .LBB1_12
	b	.LBB1_13
.LBB1_12:
	orr	w0, wzr, #0x1
	ldur	x8, [x29, #-24]
	ldr	x1, [x8, #8]
	ldr	x8, [sp, #56]           // 8-byte Folded Reload
	str	w0, [sp, #12]           // 4-byte Folded Spill
	mov	x0, x8
	bl	printf
	ldr	w9, [sp, #12]           // 4-byte Folded Reload
	mov	w0, w9
	bl	exit
.LBB1_13:
	ldp	x29, x30, [sp, #224]    // 16-byte Folded Reload
	add	sp, sp, #240            // =240
	ret
.Lfunc_end1:
	.size	MAIN_parseCommandLine, .Lfunc_end1-MAIN_parseCommandLine
                                        // -- End function
	.globl	MAIN_printInfo          // -- Begin function MAIN_printInfo
	.p2align	2
	.type	MAIN_printInfo,@function
MAIN_printInfo:                         // @MAIN_printInfo
// %bb.0:
	sub	sp, sp, #352            // =352
	str	x28, [sp, #320]         // 8-byte Folded Spill
	stp	x29, x30, [sp, #336]    // 16-byte Folded Spill
	add	x29, sp, #336           // =336
	adrp	x8, .L__const.MAIN_printInfo.actionString
	add	x8, x8, :lo12:.L__const.MAIN_printInfo.actionString
	orr	x9, xzr, #0x60
	adrp	x10, .L__const.MAIN_printInfo.simTypeString
	add	x10, x10, :lo12:.L__const.MAIN_printInfo.simTypeString
	orr	x11, xzr, #0x20
	mov	x12, #0
	adrp	x13, .L.str.5
	add	x13, x13, :lo12:.L.str.5
	adrp	x14, .L.str.6
	add	x14, x14, :lo12:.L.str.6
	sub	x15, x29, #120          // =120
	add	x16, sp, #120           // =120
	stur	x0, [x29, #-24]
	mov	x0, x15
	mov	x1, x8
	mov	x2, x9
	str	x9, [sp, #112]          // 8-byte Folded Spill
	str	x10, [sp, #104]         // 8-byte Folded Spill
	str	x11, [sp, #96]          // 8-byte Folded Spill
	str	x12, [sp, #88]          // 8-byte Folded Spill
	str	x13, [sp, #80]          // 8-byte Folded Spill
	str	x14, [sp, #72]          // 8-byte Folded Spill
	str	x15, [sp, #64]          // 8-byte Folded Spill
	str	x16, [sp, #56]          // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #56]           // 8-byte Folded Reload
	ldr	x1, [sp, #104]          // 8-byte Folded Reload
	ldr	x2, [sp, #112]          // 8-byte Folded Reload
	bl	memcpy
	ldur	x8, [x29, #-24]
	ldr	w4, [x8]
	ldur	x8, [x29, #-24]
	ldr	x5, [x8, #8]
	ldur	x8, [x29, #-24]
	ldr	w17, [x8, #16]
	mov	w8, w17
	ubfx	x8, x8, #0, #32
	ldr	x9, [sp, #96]           // 8-byte Folded Reload
	mul	x8, x9, x8
	ldr	x10, [sp, #64]          // 8-byte Folded Reload
	add	x8, x10, x8
	ldur	x11, [x29, #-24]
	ldr	w17, [x11, #20]
	mov	w11, w17
	ubfx	x11, x11, #0, #32
	mul	x11, x9, x11
	ldr	x12, [sp, #56]          // 8-byte Folded Reload
	add	x11, x12, x11
	ldur	x13, [x29, #-24]
	ldr	x13, [x13, #24]
	ldr	x14, [sp, #88]          // 8-byte Folded Reload
	cmp	x13, x14
	cset	w17, eq
	str	w4, [sp, #52]           // 4-byte Folded Spill
	str	x5, [sp, #40]           // 8-byte Folded Spill
	str	x8, [sp, #32]           // 8-byte Folded Spill
	str	x11, [sp, #24]          // 8-byte Folded Spill
	tbnz	w17, #0, .LBB2_1
	b	.LBB2_2
.LBB2_1:
	ldr	x0, [sp, #72]           // 8-byte Folded Reload
	str	x0, [sp, #16]           // 8-byte Folded Spill
	b	.LBB2_3
.LBB2_2:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #24]
	str	x8, [sp, #16]           // 8-byte Folded Spill
.LBB2_3:
	ldr	x8, [sp, #16]           // 8-byte Folded Reload
	mov	x9, #-3689348814741910324
	movk	x9, #16372, lsl #48
	fmov	d0, x9
	mov	w3, #130
	mov	w10, #100
	ldr	x0, [sp, #80]           // 8-byte Folded Reload
	mov	w1, w10
	mov	w2, w10
	ldr	w4, [sp, #52]           // 4-byte Folded Reload
	ldr	x5, [sp, #40]           // 8-byte Folded Reload
	ldr	x6, [sp, #32]           // 8-byte Folded Reload
	ldr	x7, [sp, #24]           // 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	bl	printf
	ldp	x29, x30, [sp, #336]    // 16-byte Folded Reload
	ldr	x28, [sp, #320]         // 8-byte Folded Reload
	add	sp, sp, #352            // =352
	ret
.Lfunc_end2:
	.size	MAIN_printInfo, .Lfunc_end2-MAIN_printInfo
                                        // -- End function
	.globl	MAIN_initialize         // -- Begin function MAIN_initialize
	.p2align	2
	.type	MAIN_initialize,@function
MAIN_initialize:                        // @MAIN_initialize
// %bb.0:
	sub	sp, sp, #64             // =64
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	adrp	x8, srcGrid
	add	x8, x8, :lo12:srcGrid
	mov	x1, x8
	adrp	x9, dstGrid
	add	x9, x9, :lo12:dstGrid
	mov	x2, x9
	mov	x10, #0
	stur	x0, [x29, #-8]
	mov	x0, x1
	stur	x8, [x29, #-16]         // 8-byte Folded Spill
	str	x9, [sp, #24]           // 8-byte Folded Spill
	str	x2, [sp, #16]           // 8-byte Folded Spill
	str	x10, [sp, #8]           // 8-byte Folded Spill
	bl	LBM_allocateGrid
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	bl	LBM_allocateGrid
	ldur	x8, [x29, #-16]         // 8-byte Folded Reload
	ldr	x9, [x8]
	mov	x0, x9
	bl	LBM_initializeGrid
	ldr	x8, [sp, #24]           // 8-byte Folded Reload
	ldr	x9, [x8]
	mov	x0, x9
	bl	LBM_initializeGrid
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #8]            // 8-byte Folded Reload
	cmp	x8, x9
	cset	w11, ne
	tbnz	w11, #0, .LBB3_1
	b	.LBB3_2
.LBB3_1:
	ldur	x8, [x29, #-16]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-8]
	ldr	x1, [x10, #24]
	mov	x0, x9
	bl	LBM_loadObstacleFile
	ldr	x8, [sp, #24]           // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-8]
	ldr	x1, [x10, #24]
	mov	x0, x9
	bl	LBM_loadObstacleFile
.LBB3_2:
	orr	w8, wzr, #0x1
	ldur	x9, [x29, #-8]
	ldr	w10, [x9, #20]
	cmp	w10, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB3_3
	b	.LBB3_4
.LBB3_3:
	ldur	x8, [x29, #-16]         // 8-byte Folded Reload
	ldr	x9, [x8]
	mov	x0, x9
	bl	LBM_initializeSpecialCellsForChannel
	ldr	x8, [sp, #24]           // 8-byte Folded Reload
	ldr	x9, [x8]
	mov	x0, x9
	bl	LBM_initializeSpecialCellsForChannel
	b	.LBB3_5
.LBB3_4:
	ldur	x8, [x29, #-16]         // 8-byte Folded Reload
	ldr	x9, [x8]
	mov	x0, x9
	bl	LBM_initializeSpecialCellsForLDC
	ldr	x8, [sp, #24]           // 8-byte Folded Reload
	ldr	x9, [x8]
	mov	x0, x9
	bl	LBM_initializeSpecialCellsForLDC
.LBB3_5:
	ldur	x8, [x29, #-16]         // 8-byte Folded Reload
	ldr	x9, [x8]
	mov	x0, x9
	bl	LBM_showGridStatistics
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	add	sp, sp, #64             // =64
	ret
.Lfunc_end3:
	.size	MAIN_initialize, .Lfunc_end3-MAIN_initialize
                                        // -- End function
	.globl	MAIN_startClock         // -- Begin function MAIN_startClock
	.p2align	2
	.type	MAIN_startClock,@function
MAIN_startClock:                        // @MAIN_startClock
// %bb.0:
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	orr	w8, wzr, #0x2
	orr	x9, xzr, #0x3ff0000000000000
	fmov	d0, x9
	orr	x9, xzr, #0x18
	stur	x0, [x29, #-8]
	mov	w0, w8
	str	d0, [sp, #16]           // 8-byte Folded Spill
	str	x9, [sp, #8]            // 8-byte Folded Spill
	bl	sysconf
	scvtf	d0, x0
	ldr	d1, [sp, #16]           // 8-byte Folded Reload
	fdiv	d0, d1, d0
	ldur	x9, [x29, #-8]
	str	d0, [x9]
	ldur	x9, [x29, #-8]
	ldr	x0, [sp, #8]            // 8-byte Folded Reload
	add	x0, x9, x0
	bl	times
	ldur	x9, [x29, #-8]
	str	x0, [x9, #8]
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end4:
	.size	MAIN_startClock, .Lfunc_end4-MAIN_startClock
                                        // -- End function
	.globl	MAIN_stopClock          // -- Begin function MAIN_stopClock
	.p2align	2
	.type	MAIN_stopClock,@function
MAIN_stopClock:                         // @MAIN_stopClock
// %bb.0:
	sub	sp, sp, #64             // =64
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	orr	x8, xzr, #0x38
	orr	x9, xzr, #0x18
	mov	x10, #-3689348814741910324
	movk	x10, #16372, lsl #48
	fmov	d0, x10
	adrp	x10, .L.str.7
	add	x10, x10, :lo12:.L.str.7
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	add	x0, x0, x8
	str	x8, [sp, #24]           // 8-byte Folded Spill
	str	x9, [sp, #16]           // 8-byte Folded Spill
	str	d0, [sp, #8]            // 8-byte Folded Spill
	str	x10, [sp]               // 8-byte Folded Spill
	bl	times
	ldur	x8, [x29, #-8]
	str	x0, [x8, #16]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #24]           // 8-byte Folded Reload
	add	x8, x8, x9
	ldr	x8, [x8]
	ldur	x10, [x29, #-8]
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	add	x10, x10, x0
	ldr	x10, [x10]
	subs	x8, x8, x10
	scvtf	d0, x8
	ldur	x8, [x29, #-8]
	ldr	d1, [x8]
	fmul	d0, d0, d1
	ldur	x8, [x29, #-8]
	add	x8, x8, x9
	ldr	x8, [x8, #8]
	ldur	x10, [x29, #-8]
	add	x10, x10, x0
	ldr	x10, [x10, #8]
	subs	x8, x8, x10
	scvtf	d1, x8
	ldur	x8, [x29, #-8]
	ldr	d2, [x8]
	fmul	d1, d1, d2
	ldur	x8, [x29, #-8]
	add	x8, x8, x9
	ldr	x8, [x8]
	ldur	x10, [x29, #-8]
	add	x10, x10, x0
	ldr	x10, [x10]
	subs	x8, x8, x10
	ldur	x10, [x29, #-8]
	add	x10, x10, x9
	ldr	x10, [x10, #8]
	add	x8, x8, x10
	ldur	x10, [x29, #-8]
	add	x10, x10, x0
	ldr	x10, [x10, #8]
	subs	x8, x8, x10
	scvtf	d2, x8
	ldur	x8, [x29, #-8]
	ldr	d3, [x8]
	fmul	d2, d2, d3
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldur	x10, [x29, #-8]
	ldr	x10, [x10, #8]
	subs	x8, x8, x10
	scvtf	d3, x8
	ldur	x8, [x29, #-8]
	ldr	d4, [x8]
	fmul	d3, d3, d4
	ldur	x8, [x29, #-16]
	ldr	w11, [x8]
	scvtf	d4, w11
	ldr	d5, [sp, #8]            // 8-byte Folded Reload
	fmul	d4, d5, d4
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldur	x10, [x29, #-8]
	ldr	x10, [x10, #8]
	subs	x8, x8, x10
	scvtf	d6, x8
	fdiv	d4, d4, d6
	ldur	x8, [x29, #-8]
	ldr	d6, [x8]
	fdiv	d4, d4, d6
	ldr	x0, [sp]                // 8-byte Folded Reload
	bl	printf
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	add	sp, sp, #64             // =64
	ret
.Lfunc_end5:
	.size	MAIN_stopClock, .Lfunc_end5-MAIN_stopClock
                                        // -- End function
	.globl	MAIN_finalize           // -- Begin function MAIN_finalize
	.p2align	2
	.type	MAIN_finalize,@function
MAIN_finalize:                          // @MAIN_finalize
// %bb.0:
	sub	sp, sp, #64             // =64
	stp	x29, x30, [sp, #48]     // 16-byte Folded Spill
	add	x29, sp, #48            // =48
	adrp	x8, srcGrid
	add	x8, x8, :lo12:srcGrid
	orr	w9, wzr, #0x1
	mov	x1, x8
	adrp	x10, dstGrid
	add	x10, x10, :lo12:dstGrid
	stur	x0, [x29, #-8]
	ldr	x0, [x8]
	stur	x8, [x29, #-16]         // 8-byte Folded Spill
	stur	w9, [x29, #-20]         // 4-byte Folded Spill
	str	x1, [sp, #16]           // 8-byte Folded Spill
	str	x10, [sp, #8]           // 8-byte Folded Spill
	bl	LBM_showGridStatistics
	ldur	x8, [x29, #-8]
	ldr	w9, [x8, #16]
	ldur	w11, [x29, #-20]        // 4-byte Folded Reload
	cmp	w9, w11
	cset	w9, eq
	tbnz	w9, #0, .LBB6_1
	b	.LBB6_2
.LBB6_1:
	mov	w2, #-1
	ldur	x8, [x29, #-16]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-8]
	ldr	x1, [x10, #8]
	mov	x0, x9
	bl	LBM_compareVelocityField
.LBB6_2:
	orr	w8, wzr, #0x2
	ldur	x9, [x29, #-8]
	ldr	w10, [x9, #16]
	cmp	w10, w8
	cset	w8, eq
	tbnz	w8, #0, .LBB6_3
	b	.LBB6_4
.LBB6_3:
	mov	w2, #-1
	ldur	x8, [x29, #-16]         // 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-8]
	ldr	x1, [x10, #8]
	mov	x0, x9
	bl	LBM_storeVelocityField
.LBB6_4:
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	bl	LBM_freeGrid
	ldr	x0, [sp, #8]            // 8-byte Folded Reload
	bl	LBM_freeGrid
	ldp	x29, x30, [sp, #48]     // 16-byte Folded Reload
	add	sp, sp, #64             // =64
	ret
.Lfunc_end6:
	.size	MAIN_finalize, .Lfunc_end6-MAIN_finalize
                                        // -- End function
	.type	srcGrid,@object         // @srcGrid
	.local	srcGrid
	.comm	srcGrid,8,8
	.type	dstGrid,@object         // @dstGrid
	.local	dstGrid
	.comm	dstGrid,8,8
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"timestep: %i\n"
	.size	.L.str, 14

	.type	.L.str.1,@object        // @.str.1
.L.str.1:
	.asciz	"syntax: lbm <time steps> <result file> <0: nil, 1: cmp, 2: str> <0: ldc, 1: channel flow> [<obstacle file>]\n"
	.size	.L.str.1, 109

	.type	.L.str.2,@object        // @.str.2
.L.str.2:
	.asciz	"MAIN_parseCommandLine: cannot stat obstacle file '%s'\n"
	.size	.L.str.2, 55

	.type	.L.str.3,@object        // @.str.3
.L.str.3:
	.asciz	"MAIN_parseCommandLine:\n\tsize of file '%s' is %i bytes\n\texpected size is %i bytes\n"
	.size	.L.str.3, 82

	.type	.L.str.4,@object        // @.str.4
.L.str.4:
	.asciz	"MAIN_parseCommandLine: cannot stat result file '%s'\n"
	.size	.L.str.4, 53

	.type	.L__const.MAIN_printInfo.actionString,@object // @__const.MAIN_printInfo.actionString
	.section	.rodata,"a",@progbits
.L__const.MAIN_printInfo.actionString:
	.asciz	"nothing\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"compare\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"store\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	.L__const.MAIN_printInfo.actionString, 96

	.type	.L__const.MAIN_printInfo.simTypeString,@object // @__const.MAIN_printInfo.simTypeString
.L__const.MAIN_printInfo.simTypeString:
	.asciz	"lid-driven cavity\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"channel flow\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	32
	.size	.L__const.MAIN_printInfo.simTypeString, 96

	.type	.L.str.5,@object        // @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"MAIN_printInfo:\n\tgrid size      : %i x %i x %i = %.2f * 10^6 Cells\n\tnTimeSteps     : %i\n\tresult file    : %s\n\taction         : %s\n\tsimulation type: %s\n\tobstacle file  : %s\n\n"
	.size	.L.str.5, 174

	.type	.L.str.6,@object        // @.str.6
.L.str.6:
	.asciz	"<none>"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        // @.str.7
.L.str.7:
	.asciz	"MAIN_stopClock:\n\tusr: %7.2f sys: %7.2f tot: %7.2f wct: %7.2f MLUPS: %5.2f\n\n"
	.size	.L.str.7, 76


	.ident	"clang version 8.0.1 (tags/RELEASE_801/final)"
	.section	".note.GNU-stack","",@progbits
