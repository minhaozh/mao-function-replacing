	.arch	armv8-a	// id: 0, l: 1	
	.file	"pflowup.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.p2align	3, , 7	// id: 4, l: 5	
	.globl	primal_update_flow	// id: 5, l: 6	
	.type	primal_update_flow, %function	// id: 6, l: 7	
primal_update_flow:	// id: 7, l: 8	
.LFB25:	// id: 8, l: 9	
	.cfi_startproc		// id: 9, l: 10	
	cmp	 x0, x2	// id: 10, l: 11	
	beq	 .L8	// id: 11, l: 12	
	.p2align	3, , 7	// id: 12, l: 13	
.L3:	// id: 13, l: 14	
	ldr	 w3, [x0, #8]	// id: 14, l: 15	
	cmp	 w3, #0x0	// id: 15, l: 16	
	cset	 x3, eq  // eq = none	// id: 16, l: 17	
	str	 x3, [x0, #80]	// id: 17, l: 18	
	ldr	 x0, [x0, #24]	// id: 18, l: 19	
	cmp	 x2, x0	// id: 19, l: 20	
	bne	 .L3	// id: 20, l: 21	
	cmp	 x2, x1	// id: 21, l: 22	
	beq	 .L10	// id: 22, l: 23	
	.p2align	3, , 7	// id: 23, l: 24	
.L5:	// id: 24, l: 25	
	ldr	 w0, [x1, #8]	// id: 25, l: 26	
	cmp	 w0, #0x0	// id: 26, l: 27	
	cset	 x0, ne  // ne = any	// id: 27, l: 28	
	str	 x0, [x1, #80]	// id: 28, l: 29	
	ldr	 x1, [x1, #24]	// id: 29, l: 30	
.L8:	// id: 30, l: 31	
	cmp	 x2, x1	// id: 31, l: 32	
	bne	 .L5	// id: 32, l: 33	
.L10:	// id: 33, l: 34	
	ret		// id: 34, l: 35	
	.cfi_endproc		// id: 35, l: 36	
.LFE25:	// id: 36, l: 37	
	.size	primal_update_flow, .-primal_update_flow	// id: 37, l: 38	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 38, l: 39	
	.section	.note.GNU-stack, "",@progbits	// id: 39, l: 40	
