	.arch	armv8-a	// id: 0, l: 1	
	.file	"pbla.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.p2align	3, , 7	// id: 4, l: 5	
	.globl	primal_iminus	// id: 5, l: 6	
	.type	primal_iminus, %function	// id: 6, l: 7	
primal_iminus:	// id: 7, l: 8	
.LFB25:	// id: 8, l: 9	
	.cfi_startproc		// id: 9, l: 10	
	mov	 x7, x0	// id: 10, l: 11	
	cmp	 x2, x3	// id: 11, l: 12	
	mov	 x0, #0x0                   	// #0	// id: 12, l: 13	
	beq	 .L2	// id: 13, l: 14	
	mov	 x8, #0x1                   	// #1	// id: 14, l: 15	
	.p2align	3, , 7	// id: 15, l: 16	
.L11:	// id: 16, l: 17	
	ldr	 x6, [x2, #88]	// id: 17, l: 18	
	ldr	 x5, [x3, #88]	// id: 18, l: 19	
	cmp	 x6, x5	// id: 19, l: 20	
	bge	 .L3	// id: 20, l: 21	
	ldr	 w5, [x2, #8]	// id: 21, l: 22	
	cbz	 w5, .L4	// id: 22, l: 23	
	ldr	 x6, [x7]	// id: 23, l: 24	
	ldr	 x5, [x2, #80]	// id: 24, l: 25	
	cmp	 x6, x5	// id: 25, l: 26	
	ble	 .L20	// id: 26, l: 27	
.L5:	// id: 27, l: 28	
	mov	 x0, x2	// id: 28, l: 29	
	str	 x5, [x7]	// id: 29, l: 30	
	str	 xzr, [x1]	// id: 30, l: 31	
.L20:	// id: 31, l: 32	
	ldr	 x2, [x2, #24]	// id: 32, l: 33	
.L7:	// id: 33, l: 34	
	cmp	 x3, x2	// id: 34, l: 35	
	bne	 .L11	// id: 35, l: 36	
.L2:	// id: 36, l: 37	
	str	 x2, [x4]	// id: 37, l: 38	
	ret		// id: 38, l: 39	
	.p2align	2, , 3	// id: 39, l: 40	
.L3:	// id: 40, l: 41	
	ldr	 w5, [x3, #8]	// id: 41, l: 42	
	cbnz	 w5, .L8	// id: 42, l: 43	
	ldr	 x6, [x7]	// id: 43, l: 44	
	ldr	 x5, [x3, #80]	// id: 44, l: 45	
	cmp	 x6, x5	// id: 45, l: 46	
	blt	 .L19	// id: 46, l: 47	
.L18:	// id: 47, l: 48	
	mov	 x0, x3	// id: 48, l: 49	
	str	 x5, [x7]	// id: 49, l: 50	
	str	 x8, [x1]	// id: 50, l: 51	
.L19:	// id: 51, l: 52	
	ldr	 x3, [x3, #24]	// id: 52, l: 53	
	b	 .L7	// id: 53, l: 54	
	.p2align	2, , 3	// id: 54, l: 55	
.L8:	// id: 55, l: 56	
	ldr	 x6, [x3, #24]	// id: 56, l: 57	
	ldr	 x5, [x6, #24]	// id: 57, l: 58	
	cbz	 x5, .L16	// id: 58, l: 59	
	ldr	 x5, [x3, #80]	// id: 59, l: 60	
	ldr	 x9, [x7]	// id: 60, l: 61	
	sub	 x5, x8, x5	// id: 61, l: 62	
	cmp	 x9, x5	// id: 62, l: 63	
	bge	 .L18	// id: 63, l: 64	
.L16:	// id: 64, l: 65	
	mov	 x3, x6	// id: 65, l: 66	
	b	 .L7	// id: 66, l: 67	
	.p2align	2, , 3	// id: 67, l: 68	
.L4:	// id: 68, l: 69	
	ldr	 x6, [x2, #24]	// id: 69, l: 70	
	ldr	 x5, [x6, #24]	// id: 70, l: 71	
	cbz	 x5, .L14	// id: 71, l: 72	
	ldr	 x5, [x2, #80]	// id: 72, l: 73	
	ldr	 x9, [x7]	// id: 73, l: 74	
	sub	 x5, x8, x5	// id: 74, l: 75	
	cmp	 x9, x5	// id: 75, l: 76	
	bgt	 .L5	// id: 76, l: 77	
.L14:	// id: 77, l: 78	
	mov	 x2, x6	// id: 78, l: 79	
	b	 .L7	// id: 79, l: 80	
	.cfi_endproc		// id: 80, l: 81	
.LFE25:	// id: 81, l: 82	
	.size	primal_iminus, .-primal_iminus	// id: 82, l: 83	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 83, l: 84	
	.section	.note.GNU-stack, "",@progbits	// id: 84, l: 85	
