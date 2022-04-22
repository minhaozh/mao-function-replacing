	.text
	.file	"inverse_matrix.c"
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
.Lfunc_begin0:
	.file	1 "/GPUFS/nsccgz_yfdu_16/gta/mao/src-2.35/profiling/assemble/inverse_matrix.c"
	.loc	1 12 0                  // inverse_matrix.c:12:0
	.cfi_sections .debug_frame
	.cfi_startproc
// %bb.0:
	str	x28, [sp, #-32]!        // 8-byte Folded Spill
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	sub	sp, sp, #2624           // =2624
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w28, -32
	sub	x8, x29, #32            // =32
.Ltmp0:
	.loc	1 17 14 prologue_end    // inverse_matrix.c:17:14
	orr	w9, wzr, #0x1
.Ltmp1:
	.loc	1 21 22                 // inverse_matrix.c:21:22
	mov	x10, #0
.Ltmp2:
	.loc	1 32 9                  // inverse_matrix.c:32:9
	adrp	x11, .L.str
	add	x11, x11, :lo12:.L.str
	stur	wzr, [x29, #-20]
	stur	w0, [x29, #-24]
	str	x1, [x8]
.Ltmp3:
	.loc	1 17 9                  // inverse_matrix.c:17:9
	ldur	w0, [x29, #-24]
	.loc	1 17 14 is_stmt 0       // inverse_matrix.c:17:14
	cmp	w0, w9
	cset	w9, le
	str	x8, [sp, #80]           // 8-byte Folded Spill
	str	x10, [sp, #72]          // 8-byte Folded Spill
	str	x11, [sp, #64]          // 8-byte Folded Spill
.Ltmp4:
	.loc	1 17 9                  // inverse_matrix.c:17:9
	tbnz	w9, #0, .LBB0_1
	b	.LBB0_2
.LBB0_1:
.Ltmp5:
	.loc	1 18 11 is_stmt 1       // inverse_matrix.c:18:11
	mov	w8, #10
	str	w8, [sp, #92]
	.loc	1 18 9 is_stmt 0        // inverse_matrix.c:18:9
	b	.LBB0_3
.LBB0_2:
	.loc	1 0 9                   // inverse_matrix.c:0:9
	ldr	x8, [sp, #80]           // 8-byte Folded Reload
	.loc	1 20 18 is_stmt 1       // inverse_matrix.c:20:18
	ldr	x9, [x8]
	ldr	x0, [x9, #8]
	.loc	1 20 13 is_stmt 0       // inverse_matrix.c:20:13
	bl	atoi
	.loc	1 20 11                 // inverse_matrix.c:20:11
	str	w0, [sp, #92]
.Ltmp6:
.LBB0_3:
	.loc	1 0 11                  // inverse_matrix.c:0:11
	ldr	x0, [sp, #72]           // 8-byte Folded Reload
	.loc	1 21 22 is_stmt 1       // inverse_matrix.c:21:22
	bl	time
	.loc	1 21 11 is_stmt 0       // inverse_matrix.c:21:11
	mov	w8, w0
	.loc	1 21 5                  // inverse_matrix.c:21:5
	mov	w0, w8
	bl	srand
.Ltmp7:
	.loc	1 23 12 is_stmt 1       // inverse_matrix.c:23:12
	str	wzr, [sp, #100]
.LBB0_4:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_6 Depth 2
.Ltmp8:
	.loc	1 23 17 is_stmt 0       // inverse_matrix.c:23:17
	ldr	w8, [sp, #100]
	.loc	1 23 21                 // inverse_matrix.c:23:21
	ldr	w9, [sp, #92]
	.loc	1 23 19                 // inverse_matrix.c:23:19
	cmp	w8, w9
	cset	w8, lt
.Ltmp9:
	.loc	1 23 5                  // inverse_matrix.c:23:5
	tbnz	w8, #0, .LBB0_5
	b	.LBB0_11
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
.Ltmp10:
	.loc	1 24 16 is_stmt 1       // inverse_matrix.c:24:16
	str	wzr, [sp, #96]
.LBB0_6:                                //   Parent Loop BB0_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
.Ltmp11:
	.loc	1 24 21 is_stmt 0       // inverse_matrix.c:24:21
	ldr	w8, [sp, #96]
	.loc	1 24 25                 // inverse_matrix.c:24:25
	ldr	w9, [sp, #92]
	.loc	1 24 23                 // inverse_matrix.c:24:23
	cmp	w8, w9
	cset	w8, lt
.Ltmp12:
	.loc	1 24 9                  // inverse_matrix.c:24:9
	tbnz	w8, #0, .LBB0_7
	b	.LBB0_9
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=2
	.loc	1 0 9                   // inverse_matrix.c:0:9
	add	x8, sp, #108            // =108
.Ltmp13:
	.loc	1 25 13 is_stmt 1       // inverse_matrix.c:25:13
	orr	x9, xzr, #0x4
	mov	x10, #100
	.loc	1 25 48 is_stmt 0       // inverse_matrix.c:25:48
	mov	x11, #281474972516352
	movk	x11, #16863, lsl #48
	fmov	d0, x11
	.loc	1 25 39                 // inverse_matrix.c:25:39
	orr	x11, xzr, #0x3ff0000000000000
	fmov	d1, x11
	.loc	1 25 23                 // inverse_matrix.c:25:23
	ldr	w12, [sp, #100]
	.loc	1 25 27                 // inverse_matrix.c:25:27
	ldr	w13, [sp, #92]
	.loc	1 25 25                 // inverse_matrix.c:25:25
	mul	w12, w12, w13
	.loc	1 25 31                 // inverse_matrix.c:25:31
	ldr	w13, [sp, #96]
	.loc	1 25 29                 // inverse_matrix.c:25:29
	add	w12, w12, w13
	.loc	1 25 23                 // inverse_matrix.c:25:23
	scvtf	d2, w12
	str	x8, [sp, #56]           // 8-byte Folded Spill
	str	x9, [sp, #48]           // 8-byte Folded Spill
	str	x10, [sp, #40]          // 8-byte Folded Spill
	str	d0, [sp, #32]           // 8-byte Folded Spill
	str	d1, [sp, #24]           // 8-byte Folded Spill
	str	d2, [sp, #16]           // 8-byte Folded Spill
	.loc	1 25 41                 // inverse_matrix.c:25:41
	bl	rand
	scvtf	d0, w0
	ldr	d1, [sp, #24]           // 8-byte Folded Reload
	.loc	1 25 39                 // inverse_matrix.c:25:39
	fmul	d0, d1, d0
	ldr	d2, [sp, #32]           // 8-byte Folded Reload
	.loc	1 25 48                 // inverse_matrix.c:25:48
	fdiv	d0, d0, d2
	ldr	d3, [sp, #16]           // 8-byte Folded Reload
	.loc	1 25 33                 // inverse_matrix.c:25:33
	fadd	d0, d3, d0
	.loc	1 25 23                 // inverse_matrix.c:25:23
	fcvt	s4, d0
	ldr	w12, [sp, #100]
	mov	w8, w12
	sxtw	x8, w8
	ldr	x9, [sp, #40]           // 8-byte Folded Reload
	.loc	1 25 13                 // inverse_matrix.c:25:13
	mul	x8, x9, x8
	ldr	x10, [sp, #56]          // 8-byte Folded Reload
	add	x8, x10, x8
	ldr	w12, [sp, #96]
	mov	w11, w12
	sxtw	x11, w11
	ldr	x14, [sp, #48]          // 8-byte Folded Reload
	mul	x11, x14, x11
	add	x8, x8, x11
	.loc	1 25 21                 // inverse_matrix.c:25:21
	str	s4, [x8]
.Ltmp14:
// %bb.8:                               //   in Loop: Header=BB0_6 Depth=2
	.loc	1 24 29 is_stmt 1       // inverse_matrix.c:24:29
	ldr	w8, [sp, #96]
	add	w8, w8, #1              // =1
	str	w8, [sp, #96]
	.loc	1 24 9 is_stmt 0        // inverse_matrix.c:24:9
	b	.LBB0_6
.Ltmp15:
.LBB0_9:                                //   in Loop: Header=BB0_4 Depth=1
// %bb.10:                              //   in Loop: Header=BB0_4 Depth=1
	.loc	1 23 25 is_stmt 1       // inverse_matrix.c:23:25
	ldr	w8, [sp, #100]
	add	w8, w8, #1              // =1
	str	w8, [sp, #100]
	.loc	1 23 5 is_stmt 0        // inverse_matrix.c:23:5
	b	.LBB0_4
.Ltmp16:
.LBB0_11:
	.loc	1 0 5                   // inverse_matrix.c:0:5
	add	x8, sp, #108            // =108
.Ltmp17:
	.loc	1 31 11 is_stmt 1       // inverse_matrix.c:31:11
	fmov	s0, wzr
.Ltmp18:
	.loc	1 30 24                 // inverse_matrix.c:30:24
	ldr	w9, [sp, #92]
	scvtf	s1, w9
	.loc	1 30 9 is_stmt 0        // inverse_matrix.c:30:9
	mov	x0, x8
	str	s0, [sp, #12]           // 4-byte Folded Spill
	mov	v0.16b, v1.16b
	bl	determinant
	.loc	1 30 7                  // inverse_matrix.c:30:7
	str	s0, [sp, #104]
.Ltmp19:
	.loc	1 31 9 is_stmt 1        // inverse_matrix.c:31:9
	ldr	w9, [sp, #104]
	fmov	s0, w9
	ldr	s1, [sp, #12]           // 4-byte Folded Reload
	.loc	1 31 11 is_stmt 0       // inverse_matrix.c:31:11
	fcmp	s0, s1
	cset	w9, eq
.Ltmp20:
	.loc	1 31 9                  // inverse_matrix.c:31:9
	tbnz	w9, #0, .LBB0_12
	b	.LBB0_13
.LBB0_12:
	.loc	1 0 9                   // inverse_matrix.c:0:9
	ldr	x0, [sp, #64]           // 8-byte Folded Reload
.Ltmp21:
	.loc	1 32 9 is_stmt 1        // inverse_matrix.c:32:9
	bl	printf
	b	.LBB0_14
.LBB0_13:
	.loc	1 0 9 is_stmt 0         // inverse_matrix.c:0:9
	add	x8, sp, #108            // =108
	.loc	1 34 21 is_stmt 1       // inverse_matrix.c:34:21
	ldr	w9, [sp, #92]
	scvtf	s0, w9
	.loc	1 34 9 is_stmt 0        // inverse_matrix.c:34:9
	mov	x0, x8
	bl	cofactor
.Ltmp22:
.LBB0_14:
	.loc	1 35 1 is_stmt 1        // inverse_matrix.c:35:1
	ldur	w0, [x29, #-20]
	add	sp, sp, #2624           // =2624
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #32          // 8-byte Folded Reload
	ret
.Ltmp23:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.globl	determinant             // -- Begin function determinant
	.p2align	2
	.type	determinant,@function
determinant:                            // @determinant
.Lfunc_begin1:
	.loc	1 38 0                  // inverse_matrix.c:38:0
	.cfi_startproc
// %bb.0:
	str	x28, [sp, #-32]!        // 8-byte Folded Spill
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	sub	sp, sp, #2576           // =2576
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w28, -32
	sub	x8, x29, #32            // =32
.Ltmp24:
	.loc	1 39 11 prologue_end    // inverse_matrix.c:39:11
	orr	w9, wzr, #0x3f800000
	fmov	s1, w9
	.loc	1 39 18 is_stmt 0       // inverse_matrix.c:39:18
	fmov	s2, wzr
	str	x0, [x8]
	stur	s0, [x29, #-36]
	.loc	1 39 11                 // inverse_matrix.c:39:11
	stur	s1, [x29, #-40]
	.loc	1 39 18                 // inverse_matrix.c:39:18
	stur	s2, [x29, #-44]
.Ltmp25:
	.loc	1 41 9 is_stmt 1        // inverse_matrix.c:41:9
	ldur	w9, [x29, #-36]
	fmov	s0, w9
	.loc	1 41 11 is_stmt 0       // inverse_matrix.c:41:11
	fcmp	s0, s1
	cset	w9, eq
	str	x8, [sp, #16]           // 8-byte Folded Spill
.Ltmp26:
	.loc	1 41 9                  // inverse_matrix.c:41:9
	tbnz	w9, #0, .LBB1_1
	b	.LBB1_2
.LBB1_1:
	.loc	1 0 9                   // inverse_matrix.c:0:9
	ldr	x8, [sp, #16]           // 8-byte Folded Reload
.Ltmp27:
	.loc	1 42 17 is_stmt 1       // inverse_matrix.c:42:17
	ldr	x9, [x8]
	ldr	w10, [x9]
	.loc	1 42 9 is_stmt 0        // inverse_matrix.c:42:9
	stur	w10, [x29, #-20]
	b	.LBB1_22
.Ltmp28:
.LBB1_2:
	.loc	1 39 18 is_stmt 1       // inverse_matrix.c:39:18
	fmov	s0, wzr
.Ltmp29:
	.loc	1 44 13                 // inverse_matrix.c:44:13
	stur	s0, [x29, #-44]
.Ltmp30:
	.loc	1 45 16                 // inverse_matrix.c:45:16
	str	wzr, [sp, #28]
.LBB1_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_5 Depth 2
                                        //       Child Loop BB1_7 Depth 3
.Ltmp31:
	.loc	1 45 21 is_stmt 0       // inverse_matrix.c:45:21
	ldr	w8, [sp, #28]
	scvtf	s0, w8
	.loc	1 45 25                 // inverse_matrix.c:45:25
	ldur	w8, [x29, #-36]
	fmov	s1, w8
	.loc	1 45 23                 // inverse_matrix.c:45:23
	fcmp	s0, s1
	cset	w8, mi
.Ltmp32:
	.loc	1 45 9                  // inverse_matrix.c:45:9
	tbnz	w8, #0, .LBB1_4
	b	.LBB1_20
.LBB1_4:                                //   in Loop: Header=BB1_3 Depth=1
.Ltmp33:
	.loc	1 46 15 is_stmt 1       // inverse_matrix.c:46:15
	str	wzr, [sp, #36]
	.loc	1 47 15                 // inverse_matrix.c:47:15
	str	wzr, [sp, #32]
.Ltmp34:
	.loc	1 48 20                 // inverse_matrix.c:48:20
	str	wzr, [sp, #44]
.LBB1_5:                                //   Parent Loop BB1_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB1_7 Depth 3
.Ltmp35:
	.loc	1 48 25 is_stmt 0       // inverse_matrix.c:48:25
	ldr	w8, [sp, #44]
	scvtf	s0, w8
	.loc	1 48 29                 // inverse_matrix.c:48:29
	ldur	w8, [x29, #-36]
	fmov	s1, w8
	.loc	1 48 27                 // inverse_matrix.c:48:27
	fcmp	s0, s1
	cset	w8, mi
.Ltmp36:
	.loc	1 48 13                 // inverse_matrix.c:48:13
	tbnz	w8, #0, .LBB1_6
	b	.LBB1_18
.LBB1_6:                                //   in Loop: Header=BB1_5 Depth=2
.Ltmp37:
	.loc	1 49 24 is_stmt 1       // inverse_matrix.c:49:24
	str	wzr, [sp, #40]
.LBB1_7:                                //   Parent Loop BB1_3 Depth=1
                                        //     Parent Loop BB1_5 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
.Ltmp38:
	.loc	1 49 29 is_stmt 0       // inverse_matrix.c:49:29
	ldr	w8, [sp, #40]
	scvtf	s0, w8
	.loc	1 49 33                 // inverse_matrix.c:49:33
	ldur	w8, [x29, #-36]
	fmov	s1, w8
	.loc	1 49 31                 // inverse_matrix.c:49:31
	fcmp	s0, s1
	cset	w8, mi
.Ltmp39:
	.loc	1 49 17                 // inverse_matrix.c:49:17
	tbnz	w8, #0, .LBB1_8
	b	.LBB1_16
.LBB1_8:                                //   in Loop: Header=BB1_7 Depth=3
	.loc	1 0 17                  // inverse_matrix.c:0:17
	add	x8, sp, #48             // =48
.Ltmp40:
	.loc	1 50 21 is_stmt 1       // inverse_matrix.c:50:21
	mov	x9, #100
.Ltmp41:
	.loc	1 62 30                 // inverse_matrix.c:62:30
	orr	x10, xzr, #0x4
.Ltmp42:
	.loc	1 39 18                 // inverse_matrix.c:39:18
	fmov	s0, wzr
	ldr	w11, [sp, #44]
	mov	w12, w11
	sxtw	x12, w12
.Ltmp43:
	.loc	1 50 21                 // inverse_matrix.c:50:21
	mul	x9, x9, x12
	add	x8, x8, x9
	ldr	w11, [sp, #40]
	mov	w9, w11
	sxtw	x9, w9
	mul	x9, x10, x9
	add	x8, x8, x9
	.loc	1 50 29 is_stmt 0       // inverse_matrix.c:50:29
	str	s0, [x8]
.Ltmp44:
	.loc	1 51 25 is_stmt 1       // inverse_matrix.c:51:25
	ldr	w11, [sp, #44]
	.loc	1 51 32 is_stmt 0       // inverse_matrix.c:51:32
	cbnz	w11, .LBB1_9
	b	.LBB1_14
.LBB1_9:                                //   in Loop: Header=BB1_7 Depth=3
	.loc	1 51 35                 // inverse_matrix.c:51:35
	ldr	w8, [sp, #40]
	.loc	1 51 40                 // inverse_matrix.c:51:40
	ldr	w9, [sp, #28]
	.loc	1 51 37                 // inverse_matrix.c:51:37
	cmp	w8, w9
	cset	w8, ne
.Ltmp45:
	.loc	1 51 25                 // inverse_matrix.c:51:25
	tbnz	w8, #0, .LBB1_10
	b	.LBB1_14
.LBB1_10:                               //   in Loop: Header=BB1_7 Depth=3
	.loc	1 0 25                  // inverse_matrix.c:0:25
	add	x8, sp, #48             // =48
.Ltmp46:
	.loc	1 53 36 is_stmt 1       // inverse_matrix.c:53:36
	orr	w9, wzr, #0x40000000
	fmov	s0, w9
.Ltmp47:
	.loc	1 50 21                 // inverse_matrix.c:50:21
	mov	x10, #100
.Ltmp48:
	.loc	1 62 30                 // inverse_matrix.c:62:30
	orr	x11, xzr, #0x4
	ldr	x12, [sp, #16]          // 8-byte Folded Reload
.Ltmp49:
	.loc	1 52 35                 // inverse_matrix.c:52:35
	ldr	x13, [x12]
	ldr	w9, [sp, #44]
	mov	w14, w9
	sxtw	x14, w14
	mul	x14, x10, x14
	add	x13, x13, x14
	ldr	w9, [sp, #40]
	mov	w14, w9
	sxtw	x14, w14
	mul	x14, x11, x14
	add	x13, x13, x14
	ldr	w9, [x13]
	ldr	w15, [sp, #36]
	mov	w13, w15
	sxtw	x13, w13
	.loc	1 52 25 is_stmt 0       // inverse_matrix.c:52:25
	mul	x10, x10, x13
	add	x8, x8, x10
	ldr	w15, [sp, #32]
	mov	w10, w15
	sxtw	x10, w10
	mul	x10, x11, x10
	add	x8, x8, x10
	.loc	1 52 33                 // inverse_matrix.c:52:33
	str	w9, [x8]
.Ltmp50:
	.loc	1 53 29 is_stmt 1       // inverse_matrix.c:53:29
	ldr	w9, [sp, #32]
	scvtf	s1, w9
	.loc	1 53 34 is_stmt 0       // inverse_matrix.c:53:34
	ldur	s2, [x29, #-36]
	.loc	1 53 36                 // inverse_matrix.c:53:36
	fsub	s0, s2, s0
	.loc	1 53 31                 // inverse_matrix.c:53:31
	fcmp	s1, s0
	cset	w9, mi
.Ltmp51:
	.loc	1 53 29                 // inverse_matrix.c:53:29
	tbnz	w9, #0, .LBB1_11
	b	.LBB1_12
.LBB1_11:                               //   in Loop: Header=BB1_7 Depth=3
.Ltmp52:
	.loc	1 54 30 is_stmt 1       // inverse_matrix.c:54:30
	ldr	w8, [sp, #32]
	add	w8, w8, #1              // =1
	str	w8, [sp, #32]
	.loc	1 54 29 is_stmt 0       // inverse_matrix.c:54:29
	b	.LBB1_13
.LBB1_12:                               //   in Loop: Header=BB1_7 Depth=3
.Ltmp53:
	.loc	1 56 31 is_stmt 1       // inverse_matrix.c:56:31
	str	wzr, [sp, #32]
	.loc	1 57 30                 // inverse_matrix.c:57:30
	ldr	w8, [sp, #36]
	add	w8, w8, #1              // =1
	str	w8, [sp, #36]
.Ltmp54:
.LBB1_13:                               //   in Loop: Header=BB1_7 Depth=3
.LBB1_14:                               //   in Loop: Header=BB1_7 Depth=3
// %bb.15:                              //   in Loop: Header=BB1_7 Depth=3
	.loc	1 49 37                 // inverse_matrix.c:49:37
	ldr	w8, [sp, #40]
	add	w8, w8, #1              // =1
	str	w8, [sp, #40]
	.loc	1 49 17 is_stmt 0       // inverse_matrix.c:49:17
	b	.LBB1_7
.Ltmp55:
.LBB1_16:                               //   in Loop: Header=BB1_5 Depth=2
// %bb.17:                              //   in Loop: Header=BB1_5 Depth=2
	.loc	1 48 33 is_stmt 1       // inverse_matrix.c:48:33
	ldr	w8, [sp, #44]
	add	w8, w8, #1              // =1
	str	w8, [sp, #44]
	.loc	1 48 13 is_stmt 0       // inverse_matrix.c:48:13
	b	.LBB1_5
.Ltmp56:
.LBB1_18:                               //   in Loop: Header=BB1_3 Depth=1
	.loc	1 0 13                  // inverse_matrix.c:0:13
	add	x8, sp, #48             // =48
	.loc	1 63 20 is_stmt 1       // inverse_matrix.c:63:20
	mov	w9, #-1082130432
	fmov	s0, w9
	.loc	1 62 30                 // inverse_matrix.c:62:30
	orr	x10, xzr, #0x4
.Ltmp57:
	.loc	1 39 11                 // inverse_matrix.c:39:11
	orr	w9, wzr, #0x3f800000
	fmov	s1, w9
.Ltmp58:
	.loc	1 62 19                 // inverse_matrix.c:62:19
	ldur	s2, [x29, #-44]
	.loc	1 62 25 is_stmt 0       // inverse_matrix.c:62:25
	ldur	s3, [x29, #-40]
	ldr	x11, [sp, #16]          // 8-byte Folded Reload
	.loc	1 62 30                 // inverse_matrix.c:62:30
	ldr	x12, [x11]
	ldr	w9, [sp, #28]
	mov	w13, w9
	sxtw	x13, w13
	mul	x10, x10, x13
	add	x10, x12, x10
	ldr	s4, [x10]
	.loc	1 62 55                 // inverse_matrix.c:62:55
	ldur	s5, [x29, #-36]
	.loc	1 62 57                 // inverse_matrix.c:62:57
	fsub	s1, s5, s1
	.loc	1 62 40                 // inverse_matrix.c:62:40
	mov	x0, x8
	str	s0, [sp, #12]           // 4-byte Folded Spill
	mov	v0.16b, v1.16b
	str	s2, [sp, #8]            // 4-byte Folded Spill
	str	s3, [sp, #4]            // 4-byte Folded Spill
	str	s4, [sp]                // 4-byte Folded Spill
	bl	determinant
	ldr	s1, [sp]                // 4-byte Folded Reload
	.loc	1 62 38                 // inverse_matrix.c:62:38
	fmul	s0, s1, s0
	ldr	s2, [sp, #4]            // 4-byte Folded Reload
	.loc	1 62 27                 // inverse_matrix.c:62:27
	fmul	s0, s2, s0
	ldr	s3, [sp, #8]            // 4-byte Folded Reload
	.loc	1 62 23                 // inverse_matrix.c:62:23
	fadd	s0, s3, s0
	.loc	1 62 17                 // inverse_matrix.c:62:17
	stur	s0, [x29, #-44]
	.loc	1 63 22 is_stmt 1       // inverse_matrix.c:63:22
	ldur	s0, [x29, #-40]
	ldr	s4, [sp, #12]           // 4-byte Folded Reload
	.loc	1 63 20 is_stmt 0       // inverse_matrix.c:63:20
	fmul	s0, s4, s0
	.loc	1 63 15                 // inverse_matrix.c:63:15
	stur	s0, [x29, #-40]
.Ltmp59:
// %bb.19:                              //   in Loop: Header=BB1_3 Depth=1
	.loc	1 45 29 is_stmt 1       // inverse_matrix.c:45:29
	ldr	w8, [sp, #28]
	add	w8, w8, #1              // =1
	str	w8, [sp, #28]
	.loc	1 45 9 is_stmt 0        // inverse_matrix.c:45:9
	b	.LBB1_3
.Ltmp60:
.LBB1_20:
// %bb.21:
	.loc	1 67 13 is_stmt 1       // inverse_matrix.c:67:13
	ldur	w8, [x29, #-44]
	.loc	1 67 5 is_stmt 0        // inverse_matrix.c:67:5
	stur	w8, [x29, #-20]
.LBB1_22:
	.loc	1 68 1 is_stmt 1        // inverse_matrix.c:68:1
	ldur	s0, [x29, #-20]
	add	sp, sp, #2576           // =2576
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #32          // 8-byte Folded Reload
	ret
.Ltmp61:
.Lfunc_end1:
	.size	determinant, .Lfunc_end1-determinant
	.cfi_endproc
                                        // -- End function
	.globl	cofactor                // -- Begin function cofactor
	.p2align	2
	.type	cofactor,@function
cofactor:                               // @cofactor
.Lfunc_begin2:
	.loc	1 70 0                  // inverse_matrix.c:70:0
	.cfi_startproc
// %bb.0:
	str	x28, [sp, #-32]!        // 8-byte Folded Spill
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	sub	sp, sp, #1, lsl #12     // =4096
	sub	sp, sp, #1008           // =1008
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w28, -32
	sub	x8, x29, #24            // =24
	str	x0, [x8]
	stur	s0, [x29, #-28]
.Ltmp62:
	.loc	1 73 12 prologue_end    // inverse_matrix.c:73:12
	str	wzr, [sp, #84]
	str	x8, [sp, #56]           // 8-byte Folded Spill
.LBB2_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB2_3 Depth 2
                                        //       Child Loop BB2_5 Depth 3
                                        //         Child Loop BB2_7 Depth 4
.Ltmp63:
	.loc	1 73 17 is_stmt 0       // inverse_matrix.c:73:17
	ldr	w8, [sp, #84]
	scvtf	s0, w8
	.loc	1 73 21                 // inverse_matrix.c:73:21
	ldur	w8, [x29, #-28]
	fmov	s1, w8
	.loc	1 73 19                 // inverse_matrix.c:73:19
	fcmp	s0, s1
	cset	w8, mi
.Ltmp64:
	.loc	1 73 5                  // inverse_matrix.c:73:5
	tbnz	w8, #0, .LBB2_2
	b	.LBB2_22
.LBB2_2:                                //   in Loop: Header=BB2_1 Depth=1
.Ltmp65:
	.loc	1 74 16 is_stmt 1       // inverse_matrix.c:74:16
	str	wzr, [sp, #88]
.LBB2_3:                                //   Parent Loop BB2_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB2_5 Depth 3
                                        //         Child Loop BB2_7 Depth 4
.Ltmp66:
	.loc	1 74 21 is_stmt 0       // inverse_matrix.c:74:21
	ldr	w8, [sp, #88]
	scvtf	s0, w8
	.loc	1 74 25                 // inverse_matrix.c:74:25
	ldur	w8, [x29, #-28]
	fmov	s1, w8
	.loc	1 74 23                 // inverse_matrix.c:74:23
	fcmp	s0, s1
	cset	w8, mi
.Ltmp67:
	.loc	1 74 9                  // inverse_matrix.c:74:9
	tbnz	w8, #0, .LBB2_4
	b	.LBB2_20
.LBB2_4:                                //   in Loop: Header=BB2_3 Depth=2
.Ltmp68:
	.loc	1 75 15 is_stmt 1       // inverse_matrix.c:75:15
	str	wzr, [sp, #80]
	.loc	1 76 15                 // inverse_matrix.c:76:15
	str	wzr, [sp, #76]
.Ltmp69:
	.loc	1 77 20                 // inverse_matrix.c:77:20
	str	wzr, [sp, #72]
.LBB2_5:                                //   Parent Loop BB2_1 Depth=1
                                        //     Parent Loop BB2_3 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB2_7 Depth 4
.Ltmp70:
	.loc	1 77 25 is_stmt 0       // inverse_matrix.c:77:25
	ldr	w8, [sp, #72]
	scvtf	s0, w8
	.loc	1 77 29                 // inverse_matrix.c:77:29
	ldur	w8, [x29, #-28]
	fmov	s1, w8
	.loc	1 77 27                 // inverse_matrix.c:77:27
	fcmp	s0, s1
	cset	w8, mi
.Ltmp71:
	.loc	1 77 13                 // inverse_matrix.c:77:13
	tbnz	w8, #0, .LBB2_6
	b	.LBB2_18
.LBB2_6:                                //   in Loop: Header=BB2_5 Depth=3
.Ltmp72:
	.loc	1 78 24 is_stmt 1       // inverse_matrix.c:78:24
	str	wzr, [sp, #68]
.LBB2_7:                                //   Parent Loop BB2_1 Depth=1
                                        //     Parent Loop BB2_3 Depth=2
                                        //       Parent Loop BB2_5 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
.Ltmp73:
	.loc	1 78 29 is_stmt 0       // inverse_matrix.c:78:29
	ldr	w8, [sp, #68]
	scvtf	s0, w8
	.loc	1 78 33                 // inverse_matrix.c:78:33
	ldur	w8, [x29, #-28]
	fmov	s1, w8
	.loc	1 78 31                 // inverse_matrix.c:78:31
	fcmp	s0, s1
	cset	w8, mi
.Ltmp74:
	.loc	1 78 17                 // inverse_matrix.c:78:17
	tbnz	w8, #0, .LBB2_8
	b	.LBB2_16
.LBB2_8:                                //   in Loop: Header=BB2_7 Depth=4
.Ltmp75:
	.loc	1 79 25 is_stmt 1       // inverse_matrix.c:79:25
	ldr	w8, [sp, #72]
	.loc	1 79 30 is_stmt 0       // inverse_matrix.c:79:30
	ldr	w9, [sp, #84]
	.loc	1 79 27                 // inverse_matrix.c:79:27
	cmp	w8, w9
	cset	w8, ne
	.loc	1 79 32                 // inverse_matrix.c:79:32
	tbnz	w8, #0, .LBB2_9
	b	.LBB2_14
.LBB2_9:                                //   in Loop: Header=BB2_7 Depth=4
	.loc	1 79 35                 // inverse_matrix.c:79:35
	ldr	w8, [sp, #68]
	.loc	1 79 40                 // inverse_matrix.c:79:40
	ldr	w9, [sp, #88]
	.loc	1 79 37                 // inverse_matrix.c:79:37
	cmp	w8, w9
	cset	w8, ne
.Ltmp76:
	.loc	1 79 25                 // inverse_matrix.c:79:25
	tbnz	w8, #0, .LBB2_10
	b	.LBB2_14
.LBB2_10:                               //   in Loop: Header=BB2_7 Depth=4
	.loc	1 0 25                  // inverse_matrix.c:0:25
	add	x8, sp, #2592           // =2592
.Ltmp77:
	.loc	1 81 36 is_stmt 1       // inverse_matrix.c:81:36
	orr	w9, wzr, #0x40000000
	fmov	s0, w9
.Ltmp78:
	.loc	1 90 13                 // inverse_matrix.c:90:13
	orr	x10, xzr, #0x4
	mov	x11, #100
	ldr	x12, [sp, #56]          // 8-byte Folded Reload
.Ltmp79:
	.loc	1 80 35                 // inverse_matrix.c:80:35
	ldr	x13, [x12]
	ldr	w9, [sp, #72]
	mov	w14, w9
	sxtw	x14, w14
	mul	x14, x11, x14
	add	x13, x13, x14
	ldr	w9, [sp, #68]
	mov	w14, w9
	sxtw	x14, w14
	mul	x14, x10, x14
	add	x13, x13, x14
	ldr	w9, [x13]
	ldr	w15, [sp, #80]
	mov	w13, w15
	sxtw	x13, w13
	.loc	1 80 25 is_stmt 0       // inverse_matrix.c:80:25
	mul	x11, x11, x13
	add	x8, x8, x11
	ldr	w15, [sp, #76]
	mov	w11, w15
	sxtw	x11, w11
	mul	x10, x10, x11
	add	x8, x8, x10
	.loc	1 80 33                 // inverse_matrix.c:80:33
	str	w9, [x8]
.Ltmp80:
	.loc	1 81 29 is_stmt 1       // inverse_matrix.c:81:29
	ldr	w9, [sp, #76]
	scvtf	s1, w9
	.loc	1 81 34 is_stmt 0       // inverse_matrix.c:81:34
	ldur	s2, [x29, #-28]
	.loc	1 81 36                 // inverse_matrix.c:81:36
	fsub	s0, s2, s0
	.loc	1 81 31                 // inverse_matrix.c:81:31
	fcmp	s1, s0
	cset	w9, mi
.Ltmp81:
	.loc	1 81 29                 // inverse_matrix.c:81:29
	tbnz	w9, #0, .LBB2_11
	b	.LBB2_12
.LBB2_11:                               //   in Loop: Header=BB2_7 Depth=4
.Ltmp82:
	.loc	1 82 30 is_stmt 1       // inverse_matrix.c:82:30
	ldr	w8, [sp, #76]
	add	w8, w8, #1              // =1
	str	w8, [sp, #76]
	.loc	1 82 29 is_stmt 0       // inverse_matrix.c:82:29
	b	.LBB2_13
.LBB2_12:                               //   in Loop: Header=BB2_7 Depth=4
.Ltmp83:
	.loc	1 84 31 is_stmt 1       // inverse_matrix.c:84:31
	str	wzr, [sp, #76]
	.loc	1 85 30                 // inverse_matrix.c:85:30
	ldr	w8, [sp, #80]
	add	w8, w8, #1              // =1
	str	w8, [sp, #80]
.Ltmp84:
.LBB2_13:                               //   in Loop: Header=BB2_7 Depth=4
.LBB2_14:                               //   in Loop: Header=BB2_7 Depth=4
// %bb.15:                              //   in Loop: Header=BB2_7 Depth=4
	.loc	1 78 37                 // inverse_matrix.c:78:37
	ldr	w8, [sp, #68]
	add	w8, w8, #1              // =1
	str	w8, [sp, #68]
	.loc	1 78 17 is_stmt 0       // inverse_matrix.c:78:17
	b	.LBB2_7
.Ltmp85:
.LBB2_16:                               //   in Loop: Header=BB2_5 Depth=3
// %bb.17:                              //   in Loop: Header=BB2_5 Depth=3
	.loc	1 77 33 is_stmt 1       // inverse_matrix.c:77:33
	ldr	w8, [sp, #72]
	add	w8, w8, #1              // =1
	str	w8, [sp, #72]
	.loc	1 77 13 is_stmt 0       // inverse_matrix.c:77:13
	b	.LBB2_5
.Ltmp86:
.LBB2_18:                               //   in Loop: Header=BB2_3 Depth=2
	.loc	1 0 13                  // inverse_matrix.c:0:13
	add	x8, sp, #92             // =92
	add	x9, sp, #2592           // =2592
	.loc	1 90 13 is_stmt 1       // inverse_matrix.c:90:13
	orr	x10, xzr, #0x4
	mov	x11, #100
	.loc	1 90 59 is_stmt 0       // inverse_matrix.c:90:59
	orr	w12, wzr, #0x3f800000
	fmov	s0, w12
	.loc	1 90 25                 // inverse_matrix.c:90:25
	mov	x13, #-4616189618054758400
	fmov	d1, x13
	.loc	1 90 33                 // inverse_matrix.c:90:33
	ldr	w12, [sp, #84]
	.loc	1 90 37                 // inverse_matrix.c:90:37
	ldr	w14, [sp, #88]
	.loc	1 90 35                 // inverse_matrix.c:90:35
	add	w12, w12, w14
	.loc	1 90 33                 // inverse_matrix.c:90:33
	scvtf	d2, w12
	str	s0, [sp, #52]           // 4-byte Folded Spill
	.loc	1 90 25                 // inverse_matrix.c:90:25
	mov	v0.16b, v1.16b
	mov	v1.16b, v2.16b
	str	x8, [sp, #40]           // 8-byte Folded Spill
	str	x9, [sp, #32]           // 8-byte Folded Spill
	str	x10, [sp, #24]          // 8-byte Folded Spill
	str	x11, [sp, #16]          // 8-byte Folded Spill
	bl	pow
	ldr	x8, [sp, #32]           // 8-byte Folded Reload
	.loc	1 90 57                 // inverse_matrix.c:90:57
	ldur	s3, [x29, #-28]
	ldr	s4, [sp, #52]           // 4-byte Folded Reload
	.loc	1 90 59                 // inverse_matrix.c:90:59
	fsub	s3, s3, s4
	.loc	1 90 42                 // inverse_matrix.c:90:42
	mov	x0, x8
	str	d0, [sp, #8]            // 8-byte Folded Spill
	mov	v0.16b, v3.16b
	bl	determinant
	fcvt	d1, s0
	ldr	d2, [sp, #8]            // 8-byte Folded Reload
	.loc	1 90 40                 // inverse_matrix.c:90:40
	fmul	d1, d2, d1
	.loc	1 90 25                 // inverse_matrix.c:90:25
	fcvt	s0, d1
	ldr	w12, [sp, #84]
	mov	w8, w12
	sxtw	x8, w8
	ldr	x9, [sp, #16]           // 8-byte Folded Reload
	.loc	1 90 13                 // inverse_matrix.c:90:13
	mul	x8, x9, x8
	ldr	x10, [sp, #40]          // 8-byte Folded Reload
	add	x8, x10, x8
	ldr	w12, [sp, #88]
	mov	w11, w12
	sxtw	x11, w11
	ldr	x13, [sp, #24]          // 8-byte Folded Reload
	mul	x11, x13, x11
	add	x8, x8, x11
	.loc	1 90 23                 // inverse_matrix.c:90:23
	str	s0, [x8]
.Ltmp87:
// %bb.19:                              //   in Loop: Header=BB2_3 Depth=2
	.loc	1 74 29 is_stmt 1       // inverse_matrix.c:74:29
	ldr	w8, [sp, #88]
	add	w8, w8, #1              // =1
	str	w8, [sp, #88]
	.loc	1 74 9 is_stmt 0        // inverse_matrix.c:74:9
	b	.LBB2_3
.Ltmp88:
.LBB2_20:                               //   in Loop: Header=BB2_1 Depth=1
// %bb.21:                              //   in Loop: Header=BB2_1 Depth=1
	.loc	1 73 25 is_stmt 1       // inverse_matrix.c:73:25
	ldr	w8, [sp, #84]
	add	w8, w8, #1              // =1
	str	w8, [sp, #84]
	.loc	1 73 5 is_stmt 0        // inverse_matrix.c:73:5
	b	.LBB2_1
.Ltmp89:
.LBB2_22:
	.loc	1 0 5                   // inverse_matrix.c:0:5
	add	x8, sp, #92             // =92
	ldr	x9, [sp, #56]           // 8-byte Folded Reload
	.loc	1 93 15 is_stmt 1       // inverse_matrix.c:93:15
	ldr	x0, [x9]
	.loc	1 93 25 is_stmt 0       // inverse_matrix.c:93:25
	ldur	s0, [x29, #-28]
	.loc	1 93 5                  // inverse_matrix.c:93:5
	mov	x1, x8
	bl	transpose
	.loc	1 94 1 is_stmt 1        // inverse_matrix.c:94:1
	add	sp, sp, #1, lsl #12     // =4096
	add	sp, sp, #1008           // =1008
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #32          // 8-byte Folded Reload
	ret
.Ltmp90:
.Lfunc_end2:
	.size	cofactor, .Lfunc_end2-cofactor
	.cfi_endproc
                                        // -- End function
	.globl	transpose               // -- Begin function transpose
	.p2align	2
	.type	transpose,@function
transpose:                              // @transpose
.Lfunc_begin3:
	.loc	1 97 0                  // inverse_matrix.c:97:0
	.cfi_startproc
// %bb.0:
	str	x28, [sp, #-32]!        // 8-byte Folded Spill
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	sub	sp, sp, #1, lsl #12     // =4096
	sub	sp, sp, #960            // =960
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w28, -32
.Ltmp91:
	.loc	1 112 5 prologue_end    // inverse_matrix.c:112:5
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
.Ltmp92:
	.loc	1 118 9                 // inverse_matrix.c:118:9
	adrp	x9, .L.str.3
	add	x9, x9, :lo12:.L.str.3
.Ltmp93:
	.loc	1 116 13                // inverse_matrix.c:116:13
	adrp	x10, .L.str.2
	add	x10, x10, :lo12:.L.str.2
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	stur	s0, [x29, #-36]
.Ltmp94:
	.loc	1 101 12                // inverse_matrix.c:101:12
	stur	wzr, [x29, #-40]
	str	x8, [sp, #16]           // 8-byte Folded Spill
	str	x9, [sp, #8]            // 8-byte Folded Spill
	str	x10, [sp]               // 8-byte Folded Spill
.LBB3_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB3_3 Depth 2
.Ltmp95:
	.loc	1 101 17 is_stmt 0      // inverse_matrix.c:101:17
	ldur	w8, [x29, #-40]
	scvtf	s0, w8
	.loc	1 101 21                // inverse_matrix.c:101:21
	ldur	w8, [x29, #-36]
	fmov	s1, w8
	.loc	1 101 19                // inverse_matrix.c:101:19
	fcmp	s0, s1
	cset	w8, mi
.Ltmp96:
	.loc	1 101 5                 // inverse_matrix.c:101:5
	tbnz	w8, #0, .LBB3_2
	b	.LBB3_8
.LBB3_2:                                //   in Loop: Header=BB3_1 Depth=1
.Ltmp97:
	.loc	1 102 16 is_stmt 1      // inverse_matrix.c:102:16
	stur	wzr, [x29, #-44]
.LBB3_3:                                //   Parent Loop BB3_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
.Ltmp98:
	.loc	1 102 21 is_stmt 0      // inverse_matrix.c:102:21
	ldur	w8, [x29, #-44]
	scvtf	s0, w8
	.loc	1 102 25                // inverse_matrix.c:102:25
	ldur	w8, [x29, #-36]
	fmov	s1, w8
	.loc	1 102 23                // inverse_matrix.c:102:23
	fcmp	s0, s1
	cset	w8, mi
.Ltmp99:
	.loc	1 102 9                 // inverse_matrix.c:102:9
	tbnz	w8, #0, .LBB3_4
	b	.LBB3_6
.Ltmp100:
.LBB3_4:                                //   in Loop: Header=BB3_3 Depth=2
	.loc	1 0 9                   // inverse_matrix.c:0:9
	add	x8, sp, #2528           // =2528
.Ltmp101:
	.loc	1 116 28 is_stmt 1      // inverse_matrix.c:116:28
	orr	x9, xzr, #0x4
	mov	x10, #100
.Ltmp102:
	.loc	1 103 23                // inverse_matrix.c:103:23
	ldur	x11, [x29, #-32]
	ldur	w12, [x29, #-44]
	mov	w13, w12
	sxtw	x13, w13
	mul	x13, x10, x13
	add	x11, x11, x13
	ldur	w12, [x29, #-40]
	mov	w13, w12
	sxtw	x13, w13
	mul	x13, x9, x13
	add	x11, x11, x13
	ldr	w12, [x11]
	ldur	w14, [x29, #-40]
	mov	w11, w14
	sxtw	x11, w11
	.loc	1 103 13 is_stmt 0      // inverse_matrix.c:103:13
	mul	x10, x10, x11
	add	x8, x8, x10
	ldur	w14, [x29, #-44]
	mov	w10, w14
	sxtw	x10, w10
	mul	x9, x9, x10
	add	x8, x8, x9
	.loc	1 103 21                // inverse_matrix.c:103:21
	str	w12, [x8]
.Ltmp103:
// %bb.5:                               //   in Loop: Header=BB3_3 Depth=2
	.loc	1 102 29 is_stmt 1      // inverse_matrix.c:102:29
	ldur	w8, [x29, #-44]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-44]
	.loc	1 102 9 is_stmt 0       // inverse_matrix.c:102:9
	b	.LBB3_3
.Ltmp104:
.LBB3_6:                                //   in Loop: Header=BB3_1 Depth=1
// %bb.7:                               //   in Loop: Header=BB3_1 Depth=1
	.loc	1 101 25 is_stmt 1      // inverse_matrix.c:101:25
	ldur	w8, [x29, #-40]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-40]
	.loc	1 101 5 is_stmt 0       // inverse_matrix.c:101:5
	b	.LBB3_1
.Ltmp105:
.LBB3_8:
	.loc	1 106 21 is_stmt 1      // inverse_matrix.c:106:21
	ldur	x0, [x29, #-24]
	.loc	1 106 26 is_stmt 0      // inverse_matrix.c:106:26
	ldur	s0, [x29, #-36]
	.loc	1 106 9                 // inverse_matrix.c:106:9
	bl	determinant
	.loc	1 106 7                 // inverse_matrix.c:106:7
	str	s0, [sp, #24]
.Ltmp106:
	.loc	1 107 12 is_stmt 1      // inverse_matrix.c:107:12
	stur	wzr, [x29, #-40]
.LBB3_9:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB3_11 Depth 2
.Ltmp107:
	.loc	1 107 17 is_stmt 0      // inverse_matrix.c:107:17
	ldur	w8, [x29, #-40]
	scvtf	s0, w8
	.loc	1 107 21                // inverse_matrix.c:107:21
	ldur	w8, [x29, #-36]
	fmov	s1, w8
	.loc	1 107 19                // inverse_matrix.c:107:19
	fcmp	s0, s1
	cset	w8, mi
.Ltmp108:
	.loc	1 107 5                 // inverse_matrix.c:107:5
	tbnz	w8, #0, .LBB3_10
	b	.LBB3_16
.LBB3_10:                               //   in Loop: Header=BB3_9 Depth=1
.Ltmp109:
	.loc	1 108 16 is_stmt 1      // inverse_matrix.c:108:16
	stur	wzr, [x29, #-44]
.LBB3_11:                               //   Parent Loop BB3_9 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
.Ltmp110:
	.loc	1 108 21 is_stmt 0      // inverse_matrix.c:108:21
	ldur	w8, [x29, #-44]
	scvtf	s0, w8
	.loc	1 108 25                // inverse_matrix.c:108:25
	ldur	w8, [x29, #-36]
	fmov	s1, w8
	.loc	1 108 23                // inverse_matrix.c:108:23
	fcmp	s0, s1
	cset	w8, mi
.Ltmp111:
	.loc	1 108 9                 // inverse_matrix.c:108:9
	tbnz	w8, #0, .LBB3_12
	b	.LBB3_14
.Ltmp112:
.LBB3_12:                               //   in Loop: Header=BB3_11 Depth=2
	.loc	1 0 9                   // inverse_matrix.c:0:9
	add	x8, sp, #28             // =28
	add	x9, sp, #2528           // =2528
.Ltmp113:
	.loc	1 116 28 is_stmt 1      // inverse_matrix.c:116:28
	orr	x10, xzr, #0x4
	mov	x11, #100
	ldur	w12, [x29, #-40]
	mov	w13, w12
	sxtw	x13, w13
.Ltmp114:
	.loc	1 109 29                // inverse_matrix.c:109:29
	mul	x13, x11, x13
	add	x9, x9, x13
	ldur	w12, [x29, #-44]
	mov	w13, w12
	sxtw	x13, w13
	mul	x13, x10, x13
	add	x9, x9, x13
	ldr	s0, [x9]
	.loc	1 109 39 is_stmt 0      // inverse_matrix.c:109:39
	ldr	s1, [sp, #24]
	.loc	1 109 37                // inverse_matrix.c:109:37
	fdiv	s0, s0, s1
	ldur	w12, [x29, #-40]
	mov	w9, w12
	sxtw	x9, w9
	.loc	1 109 13                // inverse_matrix.c:109:13
	mul	x9, x11, x9
	add	x8, x8, x9
	ldur	w12, [x29, #-44]
	mov	w9, w12
	sxtw	x9, w9
	mul	x9, x10, x9
	add	x8, x8, x9
	.loc	1 109 27                // inverse_matrix.c:109:27
	str	s0, [x8]
.Ltmp115:
// %bb.13:                              //   in Loop: Header=BB3_11 Depth=2
	.loc	1 108 29 is_stmt 1      // inverse_matrix.c:108:29
	ldur	w8, [x29, #-44]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-44]
	.loc	1 108 9 is_stmt 0       // inverse_matrix.c:108:9
	b	.LBB3_11
.Ltmp116:
.LBB3_14:                               //   in Loop: Header=BB3_9 Depth=1
// %bb.15:                              //   in Loop: Header=BB3_9 Depth=1
	.loc	1 107 25 is_stmt 1      // inverse_matrix.c:107:25
	ldur	w8, [x29, #-40]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-40]
	.loc	1 107 5 is_stmt 0       // inverse_matrix.c:107:5
	b	.LBB3_9
.Ltmp117:
.LBB3_16:
	.loc	1 0 5                   // inverse_matrix.c:0:5
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	.loc	1 112 5 is_stmt 1       // inverse_matrix.c:112:5
	bl	printf
.Ltmp118:
	.loc	1 114 12                // inverse_matrix.c:114:12
	stur	wzr, [x29, #-40]
.LBB3_17:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB3_19 Depth 2
.Ltmp119:
	.loc	1 114 17 is_stmt 0      // inverse_matrix.c:114:17
	ldur	w8, [x29, #-40]
	scvtf	s0, w8
	.loc	1 114 21                // inverse_matrix.c:114:21
	ldur	w8, [x29, #-36]
	fmov	s1, w8
	.loc	1 114 19                // inverse_matrix.c:114:19
	fcmp	s0, s1
	cset	w8, mi
.Ltmp120:
	.loc	1 114 5                 // inverse_matrix.c:114:5
	tbnz	w8, #0, .LBB3_18
	b	.LBB3_24
.LBB3_18:                               //   in Loop: Header=BB3_17 Depth=1
.Ltmp121:
	.loc	1 115 16 is_stmt 1      // inverse_matrix.c:115:16
	stur	wzr, [x29, #-44]
.LBB3_19:                               //   Parent Loop BB3_17 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
.Ltmp122:
	.loc	1 115 21 is_stmt 0      // inverse_matrix.c:115:21
	ldur	w8, [x29, #-44]
	scvtf	s0, w8
	.loc	1 115 25                // inverse_matrix.c:115:25
	ldur	w8, [x29, #-36]
	fmov	s1, w8
	.loc	1 115 23                // inverse_matrix.c:115:23
	fcmp	s0, s1
	cset	w8, mi
.Ltmp123:
	.loc	1 115 9                 // inverse_matrix.c:115:9
	tbnz	w8, #0, .LBB3_20
	b	.LBB3_22
.LBB3_20:                               //   in Loop: Header=BB3_19 Depth=2
	.loc	1 0 9                   // inverse_matrix.c:0:9
	add	x8, sp, #28             // =28
.Ltmp124:
	.loc	1 116 28 is_stmt 1      // inverse_matrix.c:116:28
	orr	x9, xzr, #0x4
	mov	x10, #100
	ldur	w11, [x29, #-40]
	mov	w12, w11
	sxtw	x12, w12
	mul	x10, x10, x12
	add	x8, x8, x10
	ldur	w11, [x29, #-44]
	mov	w10, w11
	sxtw	x10, w10
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	s0, [x8]
	fcvt	d0, s0
	ldr	x0, [sp]                // 8-byte Folded Reload
	.loc	1 116 13 is_stmt 0      // inverse_matrix.c:116:13
	bl	printf
.Ltmp125:
// %bb.21:                              //   in Loop: Header=BB3_19 Depth=2
	.loc	1 115 29 is_stmt 1      // inverse_matrix.c:115:29
	ldur	w8, [x29, #-44]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-44]
	.loc	1 115 9 is_stmt 0       // inverse_matrix.c:115:9
	b	.LBB3_19
.Ltmp126:
.LBB3_22:                               //   in Loop: Header=BB3_17 Depth=1
	.loc	1 0 9                   // inverse_matrix.c:0:9
	ldr	x0, [sp, #8]            // 8-byte Folded Reload
	.loc	1 118 9 is_stmt 1       // inverse_matrix.c:118:9
	bl	printf
.Ltmp127:
// %bb.23:                              //   in Loop: Header=BB3_17 Depth=1
	.loc	1 114 25                // inverse_matrix.c:114:25
	ldur	w8, [x29, #-40]
	add	w8, w8, #1              // =1
	stur	w8, [x29, #-40]
	.loc	1 114 5 is_stmt 0       // inverse_matrix.c:114:5
	b	.LBB3_17
.Ltmp128:
.LBB3_24:
	.loc	1 120 1 is_stmt 1       // inverse_matrix.c:120:1
	add	sp, sp, #1, lsl #12     // =4096
	add	sp, sp, #960            // =960
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	ldr	x28, [sp], #32          // 8-byte Folded Reload
	ret
.Ltmp129:
.Lfunc_end3:
	.size	transpose, .Lfunc_end3-transpose
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\nInverse of Entered Matrix is not possible\n"
	.size	.L.str, 44

	.type	.L.str.1,@object        // @.str.1
.L.str.1:
	.asciz	"\n\n\nThe inverse of matrix is : \n"
	.size	.L.str.1, 32

	.type	.L.str.2,@object        // @.str.2
.L.str.2:
	.asciz	"\t%f"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        // @.str.3
.L.str.3:
	.asciz	"\n"
	.size	.L.str.3, 2

	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 8.0.1 (tags/RELEASE_801/final)" // string offset=0
.Linfo_string1:
	.asciz	"inverse_matrix.c"      // string offset=45
.Linfo_string2:
	.asciz	"/GPUFS/nsccgz_yfdu_16/gta/mao/src-2.35/profiling/assemble" // string offset=62
.Linfo_string3:
	.asciz	"unsigned int"          // string offset=120
.Linfo_string4:
	.asciz	"main"                  // string offset=133
.Linfo_string5:
	.asciz	"int"                   // string offset=138
.Linfo_string6:
	.asciz	"determinant"           // string offset=142
.Linfo_string7:
	.asciz	"float"                 // string offset=154
.Linfo_string8:
	.asciz	"cofactor"              // string offset=160
.Linfo_string9:
	.asciz	"transpose"             // string offset=169
.Linfo_string10:
	.asciz	"argc"                  // string offset=179
.Linfo_string11:
	.asciz	"argv"                  // string offset=184
.Linfo_string12:
	.asciz	"char"                  // string offset=189
.Linfo_string13:
	.asciz	"a"                     // string offset=194
.Linfo_string14:
	.asciz	"__ARRAY_SIZE_TYPE__"   // string offset=196
.Linfo_string15:
	.asciz	"d"                     // string offset=216
.Linfo_string16:
	.asciz	"i"                     // string offset=218
.Linfo_string17:
	.asciz	"j"                     // string offset=220
.Linfo_string18:
	.asciz	"k"                     // string offset=222
.Linfo_string19:
	.asciz	"s"                     // string offset=224
.Linfo_string20:
	.asciz	"det"                   // string offset=226
.Linfo_string21:
	.asciz	"b"                     // string offset=230
.Linfo_string22:
	.asciz	"m"                     // string offset=232
.Linfo_string23:
	.asciz	"n"                     // string offset=234
.Linfo_string24:
	.asciz	"c"                     // string offset=236
.Linfo_string25:
	.asciz	"num"                   // string offset=238
.Linfo_string26:
	.asciz	"f"                     // string offset=242
.Linfo_string27:
	.asciz	"fac"                   // string offset=244
.Linfo_string28:
	.asciz	"p"                     // string offset=248
.Linfo_string29:
	.asciz	"q"                     // string offset=250
.Linfo_string30:
	.asciz	"r"                     // string offset=252
.Linfo_string31:
	.asciz	"inverse"               // string offset=254
	.section	.debug_abbrev,"",@progbits
	.byte	1                       // Abbreviation Code
	.byte	17                      // DW_TAG_compile_unit
	.byte	1                       // DW_CHILDREN_yes
	.byte	37                      // DW_AT_producer
	.byte	14                      // DW_FORM_strp
	.byte	19                      // DW_AT_language
	.byte	5                       // DW_FORM_data2
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	16                      // DW_AT_stmt_list
	.byte	23                      // DW_FORM_sec_offset
	.byte	27                      // DW_AT_comp_dir
	.byte	14                      // DW_FORM_strp
	.byte	17                      // DW_AT_low_pc
	.byte	1                       // DW_FORM_addr
	.byte	18                      // DW_AT_high_pc
	.byte	6                       // DW_FORM_data4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	2                       // Abbreviation Code
	.byte	36                      // DW_TAG_base_type
	.byte	0                       // DW_CHILDREN_no
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	62                      // DW_AT_encoding
	.byte	11                      // DW_FORM_data1
	.byte	11                      // DW_AT_byte_size
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	3                       // Abbreviation Code
	.byte	46                      // DW_TAG_subprogram
	.byte	1                       // DW_CHILDREN_yes
	.byte	17                      // DW_AT_low_pc
	.byte	1                       // DW_FORM_addr
	.byte	18                      // DW_AT_high_pc
	.byte	6                       // DW_FORM_data4
	.byte	64                      // DW_AT_frame_base
	.byte	24                      // DW_FORM_exprloc
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	39                      // DW_AT_prototyped
	.byte	25                      // DW_FORM_flag_present
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	63                      // DW_AT_external
	.byte	25                      // DW_FORM_flag_present
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	4                       // Abbreviation Code
	.byte	5                       // DW_TAG_formal_parameter
	.byte	0                       // DW_CHILDREN_no
	.byte	2                       // DW_AT_location
	.byte	24                      // DW_FORM_exprloc
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	5                       // Abbreviation Code
	.byte	52                      // DW_TAG_variable
	.byte	0                       // DW_CHILDREN_no
	.byte	2                       // DW_AT_location
	.byte	24                      // DW_FORM_exprloc
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	6                       // Abbreviation Code
	.byte	46                      // DW_TAG_subprogram
	.byte	1                       // DW_CHILDREN_yes
	.byte	17                      // DW_AT_low_pc
	.byte	1                       // DW_FORM_addr
	.byte	18                      // DW_AT_high_pc
	.byte	6                       // DW_FORM_data4
	.byte	64                      // DW_AT_frame_base
	.byte	24                      // DW_FORM_exprloc
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	58                      // DW_AT_decl_file
	.byte	11                      // DW_FORM_data1
	.byte	59                      // DW_AT_decl_line
	.byte	11                      // DW_FORM_data1
	.byte	39                      // DW_AT_prototyped
	.byte	25                      // DW_FORM_flag_present
	.byte	63                      // DW_AT_external
	.byte	25                      // DW_FORM_flag_present
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	7                       // Abbreviation Code
	.byte	15                      // DW_TAG_pointer_type
	.byte	0                       // DW_CHILDREN_no
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	8                       // Abbreviation Code
	.byte	1                       // DW_TAG_array_type
	.byte	1                       // DW_CHILDREN_yes
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	9                       // Abbreviation Code
	.byte	33                      // DW_TAG_subrange_type
	.byte	0                       // DW_CHILDREN_no
	.byte	73                      // DW_AT_type
	.byte	19                      // DW_FORM_ref4
	.byte	55                      // DW_AT_count
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	10                      // Abbreviation Code
	.byte	36                      // DW_TAG_base_type
	.byte	0                       // DW_CHILDREN_no
	.byte	3                       // DW_AT_name
	.byte	14                      // DW_FORM_strp
	.byte	11                      // DW_AT_byte_size
	.byte	11                      // DW_FORM_data1
	.byte	62                      // DW_AT_encoding
	.byte	11                      // DW_FORM_data1
	.byte	0                       // EOM(1)
	.byte	0                       // EOM(2)
	.byte	0                       // EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0 // Length of Unit
.Ldebug_info_start0:
	.hword	4                       // DWARF version number
	.word	.debug_abbrev           // Offset Into Abbrev. Section
	.byte	8                       // Address Size (in bytes)
	.byte	1                       // Abbrev [1] 0xb:0x2c8 DW_TAG_compile_unit
	.word	.Linfo_string0          // DW_AT_producer
	.hword	12                      // DW_AT_language
	.word	.Linfo_string1          // DW_AT_name
	.word	.Lline_table_start0     // DW_AT_stmt_list
	.word	.Linfo_string2          // DW_AT_comp_dir
	.xword	.Lfunc_begin0           // DW_AT_low_pc
	.word	.Lfunc_end3-.Lfunc_begin0 // DW_AT_high_pc
	.byte	2                       // Abbrev [2] 0x2a:0x7 DW_TAG_base_type
	.word	.Linfo_string3          // DW_AT_name
	.byte	7                       // DW_AT_encoding
	.byte	4                       // DW_AT_byte_size
	.byte	3                       // Abbrev [3] 0x31:0x81 DW_TAG_subprogram
	.xword	.Lfunc_begin0           // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0 // DW_AT_high_pc
	.byte	1                       // DW_AT_frame_base
	.byte	109
	.word	.Linfo_string4          // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	12                      // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	649                     // DW_AT_type
                                        // DW_AT_external
	.byte	4                       // Abbrev [4] 0x4a:0xe DW_TAG_formal_parameter
	.byte	2                       // DW_AT_location
	.byte	145
	.byte	104
	.word	.Linfo_string10         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	12                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	4                       // Abbrev [4] 0x58:0xe DW_TAG_formal_parameter
	.byte	2                       // DW_AT_location
	.byte	145
	.byte	96
	.word	.Linfo_string11         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	12                      // DW_AT_decl_line
	.word	663                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x66:0xf DW_TAG_variable
	.byte	3                       // DW_AT_location
	.byte	143
	.asciz	"\354"
	.word	.Linfo_string13         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	13                      // DW_AT_decl_line
	.word	680                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x75:0xf DW_TAG_variable
	.byte	3                       // DW_AT_location
	.byte	143
	.asciz	"\350"
	.word	.Linfo_string15         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	13                      // DW_AT_decl_line
	.word	656                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x84:0xf DW_TAG_variable
	.byte	3                       // DW_AT_location
	.byte	143
	.asciz	"\344"
	.word	.Linfo_string16         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	14                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x93:0xf DW_TAG_variable
	.byte	3                       // DW_AT_location
	.byte	143
	.asciz	"\340"
	.word	.Linfo_string17         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	14                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0xa2:0xf DW_TAG_variable
	.byte	3                       // DW_AT_location
	.byte	143
	.asciz	"\334"
	.word	.Linfo_string18         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	14                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	3                       // Abbrev [3] 0xb2:0xa6 DW_TAG_subprogram
	.xword	.Lfunc_begin1           // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1 // DW_AT_high_pc
	.byte	1                       // DW_AT_frame_base
	.byte	109
	.word	.Linfo_string6          // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	38                      // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	656                     // DW_AT_type
                                        // DW_AT_external
	.byte	4                       // Abbrev [4] 0xcb:0xe DW_TAG_formal_parameter
	.byte	2                       // DW_AT_location
	.byte	145
	.byte	96
	.word	.Linfo_string13         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	38                      // DW_AT_decl_line
	.word	705                     // DW_AT_type
	.byte	4                       // Abbrev [4] 0xd9:0xe DW_TAG_formal_parameter
	.byte	2                       // DW_AT_location
	.byte	145
	.byte	92
	.word	.Linfo_string18         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	38                      // DW_AT_decl_line
	.word	656                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0xe7:0xe DW_TAG_variable
	.byte	2                       // DW_AT_location
	.byte	145
	.byte	88
	.word	.Linfo_string19         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	39                      // DW_AT_decl_line
	.word	656                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0xf5:0xe DW_TAG_variable
	.byte	2                       // DW_AT_location
	.byte	145
	.byte	84
	.word	.Linfo_string20         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	39                      // DW_AT_decl_line
	.word	656                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x103:0xe DW_TAG_variable
	.byte	2                       // DW_AT_location
	.byte	143
	.byte	48
	.word	.Linfo_string21         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	39                      // DW_AT_decl_line
	.word	680                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x111:0xe DW_TAG_variable
	.byte	2                       // DW_AT_location
	.byte	143
	.byte	44
	.word	.Linfo_string16         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	40                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x11f:0xe DW_TAG_variable
	.byte	2                       // DW_AT_location
	.byte	143
	.byte	40
	.word	.Linfo_string17         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	40                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x12d:0xe DW_TAG_variable
	.byte	2                       // DW_AT_location
	.byte	143
	.byte	36
	.word	.Linfo_string22         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	40                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x13b:0xe DW_TAG_variable
	.byte	2                       // DW_AT_location
	.byte	143
	.byte	32
	.word	.Linfo_string23         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	40                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x149:0xe DW_TAG_variable
	.byte	2                       // DW_AT_location
	.byte	143
	.byte	28
	.word	.Linfo_string24         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	40                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	6                       // Abbrev [6] 0x158:0xaa DW_TAG_subprogram
	.xword	.Lfunc_begin2           // DW_AT_low_pc
	.word	.Lfunc_end2-.Lfunc_begin2 // DW_AT_high_pc
	.byte	1                       // DW_AT_frame_base
	.byte	109
	.word	.Linfo_string8          // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	70                      // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	.byte	4                       // Abbrev [4] 0x16d:0xe DW_TAG_formal_parameter
	.byte	2                       // DW_AT_location
	.byte	145
	.byte	104
	.word	.Linfo_string25         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	70                      // DW_AT_decl_line
	.word	705                     // DW_AT_type
	.byte	4                       // Abbrev [4] 0x17b:0xe DW_TAG_formal_parameter
	.byte	2                       // DW_AT_location
	.byte	145
	.byte	100
	.word	.Linfo_string26         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	70                      // DW_AT_decl_line
	.word	656                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x189:0xf DW_TAG_variable
	.byte	3                       // DW_AT_location
	.byte	143
	.ascii	"\240\024"
	.word	.Linfo_string21         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	71                      // DW_AT_decl_line
	.word	680                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x198:0xf DW_TAG_variable
	.byte	3                       // DW_AT_location
	.byte	143
	.asciz	"\334"
	.word	.Linfo_string27         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	71                      // DW_AT_decl_line
	.word	680                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x1a7:0xf DW_TAG_variable
	.byte	3                       // DW_AT_location
	.byte	143
	.asciz	"\330"
	.word	.Linfo_string28         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	72                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x1b6:0xf DW_TAG_variable
	.byte	3                       // DW_AT_location
	.byte	143
	.asciz	"\324"
	.word	.Linfo_string29         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	72                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x1c5:0xf DW_TAG_variable
	.byte	3                       // DW_AT_location
	.byte	143
	.asciz	"\320"
	.word	.Linfo_string22         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	72                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x1d4:0xf DW_TAG_variable
	.byte	3                       // DW_AT_location
	.byte	143
	.asciz	"\314"
	.word	.Linfo_string23         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	72                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x1e3:0xf DW_TAG_variable
	.byte	3                       // DW_AT_location
	.byte	143
	.asciz	"\310"
	.word	.Linfo_string16         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	72                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x1f2:0xf DW_TAG_variable
	.byte	3                       // DW_AT_location
	.byte	143
	.asciz	"\304"
	.word	.Linfo_string17         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	72                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	6                       // Abbrev [6] 0x202:0x87 DW_TAG_subprogram
	.xword	.Lfunc_begin3           // DW_AT_low_pc
	.word	.Lfunc_end3-.Lfunc_begin3 // DW_AT_high_pc
	.byte	1                       // DW_AT_frame_base
	.byte	109
	.word	.Linfo_string9          // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	97                      // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	.byte	4                       // Abbrev [4] 0x217:0xe DW_TAG_formal_parameter
	.byte	2                       // DW_AT_location
	.byte	145
	.byte	104
	.word	.Linfo_string25         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	97                      // DW_AT_decl_line
	.word	705                     // DW_AT_type
	.byte	4                       // Abbrev [4] 0x225:0xe DW_TAG_formal_parameter
	.byte	2                       // DW_AT_location
	.byte	145
	.byte	96
	.word	.Linfo_string27         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	97                      // DW_AT_decl_line
	.word	705                     // DW_AT_type
	.byte	4                       // Abbrev [4] 0x233:0xe DW_TAG_formal_parameter
	.byte	2                       // DW_AT_location
	.byte	145
	.byte	92
	.word	.Linfo_string30         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	97                      // DW_AT_decl_line
	.word	656                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x241:0xe DW_TAG_variable
	.byte	2                       // DW_AT_location
	.byte	145
	.byte	88
	.word	.Linfo_string16         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	98                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x24f:0xe DW_TAG_variable
	.byte	2                       // DW_AT_location
	.byte	145
	.byte	84
	.word	.Linfo_string17         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	98                      // DW_AT_decl_line
	.word	649                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x25d:0xf DW_TAG_variable
	.byte	3                       // DW_AT_location
	.byte	143
	.ascii	"\340\023"
	.word	.Linfo_string21         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	99                      // DW_AT_decl_line
	.word	680                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x26c:0xe DW_TAG_variable
	.byte	2                       // DW_AT_location
	.byte	143
	.byte	28
	.word	.Linfo_string31         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	99                      // DW_AT_decl_line
	.word	680                     // DW_AT_type
	.byte	5                       // Abbrev [5] 0x27a:0xe DW_TAG_variable
	.byte	2                       // DW_AT_location
	.byte	143
	.byte	24
	.word	.Linfo_string15         // DW_AT_name
	.byte	1                       // DW_AT_decl_file
	.byte	99                      // DW_AT_decl_line
	.word	656                     // DW_AT_type
	.byte	0                       // End Of Children Mark
	.byte	2                       // Abbrev [2] 0x289:0x7 DW_TAG_base_type
	.word	.Linfo_string5          // DW_AT_name
	.byte	5                       // DW_AT_encoding
	.byte	4                       // DW_AT_byte_size
	.byte	2                       // Abbrev [2] 0x290:0x7 DW_TAG_base_type
	.word	.Linfo_string7          // DW_AT_name
	.byte	4                       // DW_AT_encoding
	.byte	4                       // DW_AT_byte_size
	.byte	7                       // Abbrev [7] 0x297:0x5 DW_TAG_pointer_type
	.word	668                     // DW_AT_type
	.byte	7                       // Abbrev [7] 0x29c:0x5 DW_TAG_pointer_type
	.word	673                     // DW_AT_type
	.byte	2                       // Abbrev [2] 0x2a1:0x7 DW_TAG_base_type
	.word	.Linfo_string12         // DW_AT_name
	.byte	8                       // DW_AT_encoding
	.byte	1                       // DW_AT_byte_size
	.byte	8                       // Abbrev [8] 0x2a8:0x12 DW_TAG_array_type
	.word	656                     // DW_AT_type
	.byte	9                       // Abbrev [9] 0x2ad:0x6 DW_TAG_subrange_type
	.word	698                     // DW_AT_type
	.byte	25                      // DW_AT_count
	.byte	9                       // Abbrev [9] 0x2b3:0x6 DW_TAG_subrange_type
	.word	698                     // DW_AT_type
	.byte	25                      // DW_AT_count
	.byte	0                       // End Of Children Mark
	.byte	10                      // Abbrev [10] 0x2ba:0x7 DW_TAG_base_type
	.word	.Linfo_string14         // DW_AT_name
	.byte	8                       // DW_AT_byte_size
	.byte	7                       // DW_AT_encoding
	.byte	7                       // Abbrev [7] 0x2c1:0x5 DW_TAG_pointer_type
	.word	710                     // DW_AT_type
	.byte	8                       // Abbrev [8] 0x2c6:0xc DW_TAG_array_type
	.word	656                     // DW_AT_type
	.byte	9                       // Abbrev [9] 0x2cb:0x6 DW_TAG_subrange_type
	.word	698                     // DW_AT_type
	.byte	25                      // DW_AT_count
	.byte	0                       // End Of Children Mark
	.byte	0                       // End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_macinfo,"",@progbits
	.byte	0                       // End Of Macro List Mark

	.ident	"clang version 8.0.1 (tags/RELEASE_801/final)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
