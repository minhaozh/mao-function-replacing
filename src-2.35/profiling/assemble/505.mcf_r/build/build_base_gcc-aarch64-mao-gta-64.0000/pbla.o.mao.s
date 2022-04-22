	.arch	armv8-a	// id: 0, l: 1	
	.file	"pbla.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.globl	primal_iminus	// id: 4, l: 5	
	.type	primal_iminus, %function	// id: 5, l: 6	
primal_iminus:	// id: 6, l: 7	
.LFB0:	// id: 7, l: 8	
	.cfi_startproc		// id: 8, l: 9	
	sub	 sp, sp, #0x40	// id: 9, l: 10	
	.cfi_def_cfa_offset	64	// id: 10, l: 11	
	str	 x0, [sp, #40]	// id: 11, l: 12	
	str	 x1, [sp, #32]	// id: 12, l: 13	
	str	 x2, [sp, #24]	// id: 13, l: 14	
	str	 x3, [sp, #16]	// id: 14, l: 15	
	str	 x4, [sp, #8]	// id: 15, l: 16	
	str	 xzr, [sp, #56]	// id: 16, l: 17	
	b	 .L2	// id: 17, l: 18	
.L8:	// id: 18, l: 19	
	ldr	 x0, [sp, #24]	// id: 19, l: 20	
	ldr	 x1, [x0, #88]	// id: 20, l: 21	
	ldr	 x0, [sp, #16]	// id: 21, l: 22	
	ldr	 x0, [x0, #88]	// id: 22, l: 23	
	cmp	 x1, x0	// id: 23, l: 24	
	bge	 .L3	// id: 24, l: 25	
	ldr	 x0, [sp, #24]	// id: 25, l: 26	
	ldr	 w0, [x0, #8]	// id: 26, l: 27	
	cmp	 w0, #0x0	// id: 27, l: 28	
	beq	 .L4	// id: 28, l: 29	
	ldr	 x0, [sp, #40]	// id: 29, l: 30	
	ldr	 x1, [x0]	// id: 30, l: 31	
	ldr	 x0, [sp, #24]	// id: 31, l: 32	
	ldr	 x0, [x0, #80]	// id: 32, l: 33	
	cmp	 x1, x0	// id: 33, l: 34	
	ble	 .L5	// id: 34, l: 35	
	ldr	 x0, [sp, #24]	// id: 35, l: 36	
	str	 x0, [sp, #56]	// id: 36, l: 37	
	ldr	 x0, [sp, #24]	// id: 37, l: 38	
	ldr	 x1, [x0, #80]	// id: 38, l: 39	
	ldr	 x0, [sp, #40]	// id: 39, l: 40	
	str	 x1, [x0]	// id: 40, l: 41	
	ldr	 x0, [sp, #32]	// id: 41, l: 42	
	str	 xzr, [x0]	// id: 42, l: 43	
	b	 .L5	// id: 43, l: 44	
.L4:	// id: 44, l: 45	
	ldr	 x0, [sp, #24]	// id: 45, l: 46	
	ldr	 x0, [x0, #24]	// id: 46, l: 47	
	ldr	 x0, [x0, #24]	// id: 47, l: 48	
	cmp	 x0, #0x0	// id: 48, l: 49	
	beq	 .L5	// id: 49, l: 50	
	ldr	 x0, [sp, #40]	// id: 50, l: 51	
	ldr	 x1, [x0]	// id: 51, l: 52	
	ldr	 x0, [sp, #24]	// id: 52, l: 53	
	ldr	 x0, [x0, #80]	// id: 53, l: 54	
	mov	 x2, #0x1                   	// #1	// id: 54, l: 55	
	sub	 x0, x2, x0	// id: 55, l: 56	
	cmp	 x1, x0	// id: 56, l: 57	
	ble	 .L5	// id: 57, l: 58	
	ldr	 x0, [sp, #24]	// id: 58, l: 59	
	str	 x0, [sp, #56]	// id: 59, l: 60	
	ldr	 x0, [sp, #24]	// id: 60, l: 61	
	ldr	 x0, [x0, #80]	// id: 61, l: 62	
	mov	 x1, #0x1                   	// #1	// id: 62, l: 63	
	sub	 x1, x1, x0	// id: 63, l: 64	
	ldr	 x0, [sp, #40]	// id: 64, l: 65	
	str	 x1, [x0]	// id: 65, l: 66	
	ldr	 x0, [sp, #32]	// id: 66, l: 67	
	str	 xzr, [x0]	// id: 67, l: 68	
.L5:	// id: 68, l: 69	
	ldr	 x0, [sp, #24]	// id: 69, l: 70	
	ldr	 x0, [x0, #24]	// id: 70, l: 71	
	str	 x0, [sp, #24]	// id: 71, l: 72	
	b	 .L2	// id: 72, l: 73	
.L3:	// id: 73, l: 74	
	ldr	 x0, [sp, #16]	// id: 74, l: 75	
	ldr	 w0, [x0, #8]	// id: 75, l: 76	
	cmp	 w0, #0x0	// id: 76, l: 77	
	bne	 .L6	// id: 77, l: 78	
	ldr	 x0, [sp, #40]	// id: 78, l: 79	
	ldr	 x1, [x0]	// id: 79, l: 80	
	ldr	 x0, [sp, #16]	// id: 80, l: 81	
	ldr	 x0, [x0, #80]	// id: 81, l: 82	
	cmp	 x1, x0	// id: 82, l: 83	
	blt	 .L7	// id: 83, l: 84	
	ldr	 x0, [sp, #16]	// id: 84, l: 85	
	str	 x0, [sp, #56]	// id: 85, l: 86	
	ldr	 x0, [sp, #16]	// id: 86, l: 87	
	ldr	 x1, [x0, #80]	// id: 87, l: 88	
	ldr	 x0, [sp, #40]	// id: 88, l: 89	
	str	 x1, [x0]	// id: 89, l: 90	
	ldr	 x0, [sp, #32]	// id: 90, l: 91	
	mov	 x1, #0x1                   	// #1	// id: 91, l: 92	
	str	 x1, [x0]	// id: 92, l: 93	
	b	 .L7	// id: 93, l: 94	
.L6:	// id: 94, l: 95	
	ldr	 x0, [sp, #16]	// id: 95, l: 96	
	ldr	 x0, [x0, #24]	// id: 96, l: 97	
	ldr	 x0, [x0, #24]	// id: 97, l: 98	
	cmp	 x0, #0x0	// id: 98, l: 99	
	beq	 .L7	// id: 99, l: 100	
	ldr	 x0, [sp, #40]	// id: 100, l: 101	
	ldr	 x1, [x0]	// id: 101, l: 102	
	ldr	 x0, [sp, #16]	// id: 102, l: 103	
	ldr	 x0, [x0, #80]	// id: 103, l: 104	
	mov	 x2, #0x1                   	// #1	// id: 104, l: 105	
	sub	 x0, x2, x0	// id: 105, l: 106	
	cmp	 x1, x0	// id: 106, l: 107	
	blt	 .L7	// id: 107, l: 108	
	ldr	 x0, [sp, #16]	// id: 108, l: 109	
	str	 x0, [sp, #56]	// id: 109, l: 110	
	ldr	 x0, [sp, #16]	// id: 110, l: 111	
	ldr	 x0, [x0, #80]	// id: 111, l: 112	
	mov	 x1, #0x1                   	// #1	// id: 112, l: 113	
	sub	 x1, x1, x0	// id: 113, l: 114	
	ldr	 x0, [sp, #40]	// id: 114, l: 115	
	str	 x1, [x0]	// id: 115, l: 116	
	ldr	 x0, [sp, #32]	// id: 116, l: 117	
	mov	 x1, #0x1                   	// #1	// id: 117, l: 118	
	str	 x1, [x0]	// id: 118, l: 119	
.L7:	// id: 119, l: 120	
	ldr	 x0, [sp, #16]	// id: 120, l: 121	
	ldr	 x0, [x0, #24]	// id: 121, l: 122	
	str	 x0, [sp, #16]	// id: 122, l: 123	
.L2:	// id: 123, l: 124	
	ldr	 x1, [sp, #24]	// id: 124, l: 125	
	ldr	 x0, [sp, #16]	// id: 125, l: 126	
	cmp	 x1, x0	// id: 126, l: 127	
	bne	 .L8	// id: 127, l: 128	
	ldr	 x0, [sp, #8]	// id: 128, l: 129	
	ldr	 x1, [sp, #24]	// id: 129, l: 130	
	str	 x1, [x0]	// id: 130, l: 131	
	ldr	 x0, [sp, #56]	// id: 131, l: 132	
	add	 sp, sp, #0x40	// id: 132, l: 133	
	.cfi_def_cfa_offset	0	// id: 133, l: 134	
	ret		// id: 134, l: 135	
	.cfi_endproc		// id: 135, l: 136	
.LFE0:	// id: 136, l: 137	
	.size	primal_iminus, .-primal_iminus	// id: 137, l: 138	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 138, l: 139	
	.section	.note.GNU-stack, "",@progbits	// id: 139, l: 140	
