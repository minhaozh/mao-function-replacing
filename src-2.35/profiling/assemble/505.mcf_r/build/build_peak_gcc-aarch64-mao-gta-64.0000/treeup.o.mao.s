	.arch	armv8-a	// id: 0, l: 1	
	.file	"treeup.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.p2align	3, , 7	// id: 4, l: 5	
	.globl	update_tree	// id: 5, l: 6	
	.type	update_tree, %function	// id: 6, l: 7	
update_tree:	// id: 7, l: 8	
.LFB25:	// id: 8, l: 9	
	.cfi_startproc		// id: 9, l: 10	
	ldp	 x12, x13, [sp]	// id: 10, l: 11	
	ldp	 x8, x16, [sp, #16]	// id: 11, l: 12	
	ldr	 x9, [x13, #16]	// id: 12, l: 13	
	cmp	 x8, #0x0	// id: 13, l: 14	
	csneg	 x11, x8, x8, ge  // ge = tcont	// id: 14, l: 15	
	ccmp	 x9, x5, #0x0, lt  // lt = tstop	// id: 15, l: 16	
	beq	 .L2	// id: 16, l: 17	
	cmp	 x8, #0x0	// id: 17, l: 18	
	ccmp	 x9, x4, #0x0, gt	// id: 18, l: 19	
	csneg	 x11, x11, x11, eq  // eq = none	// id: 19, l: 20	
.L2:	// id: 20, l: 21	
.L3:	// id: 21, l: 22	
	ldr	 x9, [x6]	// id: 22, l: 23	
	mov	 x8, x6	// id: 23, l: 24	
	add	 x9, x9, x11	// id: 24, l: 25	
	str	 x9, [x6]	// id: 25, l: 26	
	ldr	 x9, [x8, #16]	// id: 26, l: 27	
	cbz	 x9, .L4	// id: 27, l: 28	
	.p2align	3, , 7	// id: 28, l: 29	
.L5:	// id: 29, l: 30	
	ldr	 x10, [x9]	// id: 30, l: 31	
	mov	 x8, x9	// id: 31, l: 32	
	add	 x10, x10, x11	// id: 32, l: 33	
	str	 x10, [x9]	// id: 33, l: 34	
	ldr	 x9, [x8, #16]	// id: 34, l: 35	
	cbnz	 x9, .L5	// id: 35, l: 36	
.L4:	// id: 36, l: 37	
	cmp	 x8, x6	// id: 37, l: 38	
	beq	 .L10	// id: 38, l: 39	
	.p2align	3, , 7	// id: 39, l: 40	
.L6:	// id: 40, l: 41	
	ldr	 x9, [x8, #32]	// id: 41, l: 42	
	cbnz	 x9, .L5	// id: 42, l: 43	
	ldr	 x8, [x8, #24]	// id: 43, l: 44	
	cmp	 x6, x8	// id: 44, l: 45	
	bne	 .L6	// id: 45, l: 46	
.L10:	// id: 46, l: 47	
	ldr	 x11, [x6, #88]	// id: 47, l: 48	
	cmp	 x4, x7	// id: 48, l: 49	
	mov	 x9, x5	// id: 49, l: 50	
	mov	 x14, x11	// id: 50, l: 51	
	ldr	 x8, [x4, #24]	// id: 51, l: 52	
	beq	 .L17	// id: 52, l: 53	
	.p2align	3, , 7	// id: 53, l: 54	
.L7:	// id: 54, l: 55	
	ldp	 x6, x10, [x4, #32]	// id: 55, l: 56	
	cbz	 x6, .L11	// id: 56, l: 57	
	str	 x10, [x6, #40]	// id: 57, l: 58	
	ldp	 x6, x10, [x4, #32]	// id: 58, l: 59	
.L11:	// id: 59, l: 60	
	cbz	 x10, .L12	// id: 60, l: 61	
	str	 x6, [x10, #32]	// id: 61, l: 62	
.L13:	// id: 62, l: 63	
	str	 x9, [x4, #24]	// id: 63, l: 64	
	ldr	 x6, [x9, #16]	// id: 64, l: 65	
	str	 x6, [x4, #32]	// id: 65, l: 66	
	cbz	 x6, .L14	// id: 66, l: 67	
	str	 x4, [x6, #40]	// id: 67, l: 68	
.L14:	// id: 68, l: 69	
	str	 x4, [x9, #16]	// id: 69, l: 70	
	str	 xzr, [x4, #40]	// id: 70, l: 71	
	ldr	 w6, [x4, #8]	// id: 71, l: 72	
	cmp	 w6, #0x0	// id: 72, l: 73	
	cset	 x10, eq  // eq = none	// id: 73, l: 74	
	cmp	 x0, x10	// id: 74, l: 75	
	ldr	 x6, [x4, #80]	// id: 75, l: 76	
	beq	 .L50	// id: 76, l: 77	
	sub	 x6, x6, x2	// id: 77, l: 78	
.L16:	// id: 78, l: 79	
	ldr	 x15, [x4, #88]	// id: 79, l: 80	
	str	 w1, [x4, #8]	// id: 80, l: 81	
	stp	 x3, x14, [x4, #80]	// id: 81, l: 82	
	cmp	 x7, x8	// id: 82, l: 83	
	mov	 x9, x4	// id: 83, l: 84	
	ldr	 x3, [x4, #48]	// id: 84, l: 85	
	str	 x13, [x4, #48]	// id: 85, l: 86	
	sub	 x14, x11, x15	// id: 86, l: 87	
	ldr	 x1, [x8, #24]	// id: 87, l: 88	
	beq	 .L17	// id: 88, l: 89	
	mov	 x4, x8	// id: 89, l: 90	
	mov	 x13, x3	// id: 90, l: 91	
	mov	 x8, x1	// id: 91, l: 92	
	mov	 x3, x6	// id: 92, l: 93	
	mov	 x1, x10	// id: 93, l: 94	
	b	 .L7	// id: 94, l: 95	
	.p2align	2, , 3	// id: 95, l: 96	
.L50:	// id: 96, l: 97	
	add	 x6, x2, x6	// id: 97, l: 98	
	b	 .L16	// id: 98, l: 99	
	.p2align	2, , 3	// id: 99, l: 100	
.L12:	// id: 100, l: 101	
	str	 x6, [x8, #16]	// id: 101, l: 102	
	b	 .L13	// id: 102, l: 103	
	.p2align	2, , 3	// id: 103, l: 104	
.L17:	// id: 104, l: 105	
	cmp	 x2, x16	// id: 105, l: 106	
	bgt	 .L48	// id: 106, l: 107	
	cmp	 x7, x12	// id: 107, l: 108	
	beq	 .L28	// id: 108, l: 109	
	.p2align	3, , 7	// id: 109, l: 110	
.L18:	// id: 110, l: 111	
	ldr	 x0, [x7, #88]	// id: 111, l: 112	
	sub	 x0, x0, x11	// id: 112, l: 113	
	str	 x0, [x7, #88]	// id: 113, l: 114	
	ldr	 x7, [x7, #24]	// id: 114, l: 115	
	cmp	 x12, x7	// id: 115, l: 116	
	bne	 .L18	// id: 116, l: 117	
.L28:	// id: 117, l: 118	
	cmp	 x5, x12	// id: 118, l: 119	
	beq	 .L1	// id: 119, l: 120	
	.p2align	3, , 7	// id: 120, l: 121	
.L19:	// id: 121, l: 122	
	ldr	 x0, [x5, #88]	// id: 122, l: 123	
	add	 x0, x0, x11	// id: 123, l: 124	
	str	 x0, [x5, #88]	// id: 124, l: 125	
	ldr	 x5, [x5, #24]	// id: 125, l: 126	
	cmp	 x12, x5	// id: 126, l: 127	
	bne	 .L19	// id: 127, l: 128	
.L1:	// id: 128, l: 129	
	ret		// id: 129, l: 130	
	.p2align	2, , 3	// id: 130, l: 131	
.L21:	// id: 131, l: 132	
	ldp	 x1, x3, [x7, #80]	// id: 132, l: 133	
	ldrsw	 x6, [x7, #8]	// id: 133, l: 134	
	cmp	 x6, x0	// id: 134, l: 135	
	add	 x4, x1, x2	// id: 135, l: 136	
	sub	 x1, x1, x2	// id: 136, l: 137	
	csel	 x1, x1, x4, eq  // eq = none	// id: 137, l: 138	
	sub	 x3, x3, x11	// id: 138, l: 139	
	stp	 x1, x3, [x7, #80]	// id: 139, l: 140	
	ldr	 x7, [x7, #24]	// id: 140, l: 141	
.L48:	// id: 141, l: 142	
	cmp	 x7, x12	// id: 142, l: 143	
	bne	 .L21	// id: 143, l: 144	
	cmp	 x5, x12	// id: 144, l: 145	
	beq	 .L1	// id: 145, l: 146	
	.p2align	3, , 7	// id: 146, l: 147	
.L22:	// id: 147, l: 148	
	ldp	 x1, x3, [x5, #80]	// id: 148, l: 149	
	ldrsw	 x6, [x5, #8]	// id: 149, l: 150	
	cmp	 x0, x6	// id: 150, l: 151	
	add	 x4, x2, x1	// id: 151, l: 152	
	sub	 x1, x1, x2	// id: 152, l: 153	
	csel	 x1, x1, x4, ne  // ne = any	// id: 153, l: 154	
	add	 x3, x3, x11	// id: 154, l: 155	
	stp	 x1, x3, [x5, #80]	// id: 155, l: 156	
	ldr	 x5, [x5, #24]	// id: 156, l: 157	
	cmp	 x12, x5	// id: 157, l: 158	
	bne	 .L22	// id: 158, l: 159	
	ret		// id: 159, l: 160	
	.cfi_endproc		// id: 160, l: 161	
.LFE25:	// id: 161, l: 162	
	.size	update_tree, .-update_tree	// id: 162, l: 163	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 163, l: 164	
	.section	.note.GNU-stack, "",@progbits	// id: 164, l: 165	
