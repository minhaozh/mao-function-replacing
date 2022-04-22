	.arch	armv8-a	// id: 0, l: 1	
	.file	"pflowup.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.globl	primal_update_flow	// id: 4, l: 5	
	.type	primal_update_flow, %function	// id: 5, l: 6	
primal_update_flow:	// id: 6, l: 7	
.LFB0:	// id: 7, l: 8	
	.cfi_startproc		// id: 8, l: 9	
	sub	 sp, sp, #0x20	// id: 9, l: 10	
	.cfi_def_cfa_offset	32	// id: 10, l: 11	
	str	 x0, [sp, #24]	// id: 11, l: 12	
	str	 x1, [sp, #16]	// id: 12, l: 13	
	str	 x2, [sp, #8]	// id: 13, l: 14	
	b	 .L2	// id: 14, l: 15	
.L5:	// id: 15, l: 16	
	ldr	 x0, [sp, #24]	// id: 16, l: 17	
	ldr	 w0, [x0, #8]	// id: 17, l: 18	
	cmp	 w0, #0x0	// id: 18, l: 19	
	beq	 .L3	// id: 19, l: 20	
	ldr	 x0, [sp, #24]	// id: 20, l: 21	
	str	 xzr, [x0, #80]	// id: 21, l: 22	
	b	 .L4	// id: 22, l: 23	
.L3:	// id: 23, l: 24	
	ldr	 x0, [sp, #24]	// id: 24, l: 25	
	mov	 x1, #0x1                   	// #1	// id: 25, l: 26	
	str	 x1, [x0, #80]	// id: 26, l: 27	
.L4:	// id: 27, l: 28	
	ldr	 x0, [sp, #24]	// id: 28, l: 29	
	ldr	 x0, [x0, #24]	// id: 29, l: 30	
	str	 x0, [sp, #24]	// id: 30, l: 31	
.L2:	// id: 31, l: 32	
	ldr	 x1, [sp, #24]	// id: 32, l: 33	
	ldr	 x0, [sp, #8]	// id: 33, l: 34	
	cmp	 x1, x0	// id: 34, l: 35	
	bne	 .L5	// id: 35, l: 36	
	b	 .L6	// id: 36, l: 37	
.L9:	// id: 37, l: 38	
	ldr	 x0, [sp, #16]	// id: 38, l: 39	
	ldr	 w0, [x0, #8]	// id: 39, l: 40	
	cmp	 w0, #0x0	// id: 40, l: 41	
	beq	 .L7	// id: 41, l: 42	
	ldr	 x0, [sp, #16]	// id: 42, l: 43	
	mov	 x1, #0x1                   	// #1	// id: 43, l: 44	
	str	 x1, [x0, #80]	// id: 44, l: 45	
	b	 .L8	// id: 45, l: 46	
.L7:	// id: 46, l: 47	
	ldr	 x0, [sp, #16]	// id: 47, l: 48	
	str	 xzr, [x0, #80]	// id: 48, l: 49	
.L8:	// id: 49, l: 50	
	ldr	 x0, [sp, #16]	// id: 50, l: 51	
	ldr	 x0, [x0, #24]	// id: 51, l: 52	
	str	 x0, [sp, #16]	// id: 52, l: 53	
.L6:	// id: 53, l: 54	
	ldr	 x1, [sp, #16]	// id: 54, l: 55	
	ldr	 x0, [sp, #8]	// id: 55, l: 56	
	cmp	 x1, x0	// id: 56, l: 57	
	bne	 .L9	// id: 57, l: 58	
	nop		// id: 58, l: 59	
	nop		// id: 59, l: 60	
	add	 sp, sp, #0x20	// id: 60, l: 61	
	.cfi_def_cfa_offset	0	// id: 61, l: 62	
	ret		// id: 62, l: 63	
	.cfi_endproc		// id: 63, l: 64	
.LFE0:	// id: 64, l: 65	
	.size	primal_update_flow, .-primal_update_flow	// id: 65, l: 66	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 66, l: 67	
	.section	.note.GNU-stack, "",@progbits	// id: 67, l: 68	
