	.arch	armv8-a	// id: 0, l: 1	
	.file	"pstart.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.p2align	3, , 7	// id: 4, l: 5	
	.globl	primal_start_artificial	// id: 5, l: 6	
	.type	primal_start_artificial, %function	// id: 6, l: 7	
primal_start_artificial:	// id: 7, l: 8	
.LFB25:	// id: 8, l: 9	
	.cfi_startproc		// id: 9, l: 10	
	ldr	 x4, [x0, #552]	// id: 10, l: 11	
	mov	 x3, #0xffffffffffff1f00    	// #-57600	// id: 11, l: 12	
	movk	 x3, #0xfa0a, lsl #16	// id: 12, l: 13	
	mov	 x2, #0x0                   	// #0	// id: 13, l: 14	
	add	 x10, x4, #0x68	// id: 14, l: 15	
	mov	 w6, #0x1                   	// #1	// id: 15, l: 16	
	stp	 x10, xzr, [x4, #16]	// id: 16, l: 17	
	stp	 xzr, xzr, [x4, #32]	// id: 17, l: 18	
	str	 xzr, [x4, #48]	// id: 18, l: 19	
	ldr	 x1, [x0, #400]	// id: 19, l: 20	
	str	 x3, [x4]	// id: 20, l: 21	
	str	 wzr, [x4, #8]	// id: 21, l: 22	
	add	 x1, x1, #0x1	// id: 22, l: 23	
	stp	 xzr, x1, [x4, #80]	// id: 23, l: 24	
	ldr	 x5, [x0, #424]	// id: 24, l: 25	
	ldr	 x1, [x0, #568]	// id: 25, l: 26	
	cmp	 x5, #0x0	// id: 26, l: 27	
	add	 x1, x1, #0x20	// id: 27, l: 28	
	ble	 .L7	// id: 28, l: 29	
	.p2align	3, , 7	// id: 29, l: 30	
.L8:	// id: 30, l: 31	
	ldrsh	 w3, [x1]	// id: 31, l: 32	
	cmn	 w3, #0x1	// id: 32, l: 33	
	beq	 .L5	// id: 33, l: 34	
	strh	 w6, [x1], #72	// id: 34, l: 35	
	add	 x2, x2, #0x1	// id: 35, l: 36	
	ldr	 x5, [x0, #424]	// id: 36, l: 37	
	cmp	 x2, x5	// id: 37, l: 38	
	blt	 .L8	// id: 38, l: 39	
.L7:	// id: 39, l: 40	
	ldr	 x1, [x0, #400]	// id: 40, l: 41	
	mov	 x2, x10	// id: 41, l: 42	
	mov	 x5, #0x0                   	// #0	// id: 42, l: 43	
	cmp	 x1, #0x0	// id: 43, l: 44	
	ldr	 x3, [x0, #592]	// id: 44, l: 45	
	ble	 .L4	// id: 45, l: 46	
	mov	 x9, #0xe100                	// #57600	// id: 46, l: 47	
	mov	 x6, #0x1                   	// #1	// id: 47, l: 48	
	movk	 x9, #0x5f5, lsl #16	// id: 48, l: 49	
	mov	 w8, #0xfffffffe            	// #-2	// id: 49, l: 50	
	.p2align	3, , 7	// id: 50, l: 51	
.L9:	// id: 51, l: 52	
	mov	 x1, x2	// id: 52, l: 53	
	stp	 xzr, x4, [x2, #16]	// id: 53, l: 54	
	sub	 x7, x2, #0x68	// id: 54, l: 55	
	str	 x3, [x2, #48]	// id: 55, l: 56	
	add	 x2, x2, #0x68	// id: 56, l: 57	
	stp	 x2, x7, [x1, #32]	// id: 57, l: 58	
	add	 x5, x5, #0x1	// id: 58, l: 59	
	str	 x6, [x1, #88]	// id: 59, l: 60	
	str	 x9, [x3, #8]	// id: 60, l: 61	
	strh	 wzr, [x3, #32]	// id: 61, l: 62	
	str	 xzr, [x1]	// id: 62, l: 63	
	str	 w6, [x1, #8]	// id: 63, l: 64	
	stp	 x1, x4, [x3, #16]	// id: 64, l: 65	
	str	 w8, [x3], #72	// id: 65, l: 66	
	str	 xzr, [x1, #80]	// id: 66, l: 67	
	ldr	 x1, [x0, #400]	// id: 67, l: 68	
	cmp	 x1, x5	// id: 68, l: 69	
	bgt	 .L9	// id: 69, l: 70	
.L4:	// id: 70, l: 71	
	add	 x2, x1, x1, lsl #1	// id: 71, l: 72	
	mov	 x0, #0x0                   	// #0	// id: 72, l: 73	
	add	 x1, x1, x2, lsl #2	// id: 73, l: 74	
	add	 x4, x4, x1, lsl #3	// id: 74, l: 75	
	str	 xzr, [x4, #32]	// id: 75, l: 76	
	str	 xzr, [x10, #40]	// id: 76, l: 77	
	ret		// id: 77, l: 78	
	.p2align	2, , 3	// id: 78, l: 79	
.L5:	// id: 79, l: 80	
	add	 x2, x2, #0x1	// id: 80, l: 81	
	add	 x1, x1, #0x48	// id: 81, l: 82	
	cmp	 x2, x5	// id: 82, l: 83	
	blt	 .L8	// id: 83, l: 84	
	b	 .L7	// id: 84, l: 85	
	.cfi_endproc		// id: 85, l: 86	
.LFE25:	// id: 86, l: 87	
	.size	primal_start_artificial, .-primal_start_artificial	// id: 87, l: 88	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 88, l: 89	
	.section	.note.GNU-stack, "",@progbits	// id: 89, l: 90	
