	.arch	armv8-a	// id: 0, l: 1	
	.file	"psimplex.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.p2align	3, , 7	// id: 4, l: 5	
	.type	markBaskets.constprop.0, %function	// id: 5, l: 6	
markBaskets.constprop.0:	// id: 6, l: 7	
.LFB29:	// id: 7, l: 8	
	.cfi_startproc		// id: 8, l: 9	
	adrp	 x0, .LANCHOR0	// id: 9, l: 10	
	mov	 x1, #0x1                   	// #1	// id: 10, l: 11	
	ldr	 x2, [x0,:lo12:.LANCHOR0]	// id: 11, l: 12	
	ldr	 x0, [x2]	// id: 12, l: 13	
	b	 .L3	// id: 13, l: 14	
	.p2align	2, , 3	// id: 14, l: 15	
.L7:	// id: 15, l: 16	
	str	 x1, [x0, #24]	// id: 16, l: 17	
	add	 x1, x1, #0x1	// id: 17, l: 18	
	cmp	 x1, #0x3d	// id: 18, l: 19	
	ldr	 x0, [x2]	// id: 19, l: 20	
	add	 x0, x0, #0x8	// id: 20, l: 21	
	str	 x0, [x2]	// id: 21, l: 22	
	beq	 .L1	// id: 22, l: 23	
.L3:	// id: 23, l: 24	
	ldr	 x0, [x0]	// id: 24, l: 25	
	ldr	 x3, [x0, #24]	// id: 25, l: 26	
	tbz	 x3, #63, .L7	// id: 26, l: 27	
.L1:	// id: 27, l: 28	
	ret		// id: 28, l: 29	
	.cfi_endproc		// id: 29, l: 30	
.LFE29:	// id: 30, l: 31	
	.size	markBaskets.constprop.0, .-markBaskets.constprop.0	// id: 31, l: 32	
	.p2align	2, , 0	// id: 32, l: 33	
	.p2align	3, , 7	// id: 33, l: 34	
	.type	master.constprop.0, %function	// id: 34, l: 35	
master.constprop.0:	// id: 35, l: 36	
.LFB30:	// id: 36, l: 37	
	.cfi_startproc		// id: 37, l: 38	
	mov	 x12, #0x7fa0                	// #32672	// id: 38, l: 39	
	sub	 sp, sp, x12	// id: 39, l: 40	
	.cfi_def_cfa_offset	32672	// id: 40, l: 41	
	adrp	 x2, .LC0	// id: 41, l: 42	
	mov	 x1, #0x7f98                	// #32664	// id: 42, l: 43	
	add	 x1, sp, x1	// id: 43, l: 44	
	stp	 x29, x30, [sp, #32]	// id: 44, l: 45	
	.cfi_offset	29, -32640	// id: 45, l: 46	
	.cfi_offset	30, -32632	// id: 46, l: 47	
	add	 x29, sp, #0x20	// id: 47, l: 48	
	ldr	 q1, [x2,:lo12:.LC0]	// id: 48, l: 49	
	stp	 x19, x20, [sp, #48]	// id: 49, l: 50	
	.cfi_offset	19, -32624	// id: 50, l: 51	
	.cfi_offset	20, -32616	// id: 51, l: 52	
	adrp	 x19, .LANCHOR0	// id: 52, l: 53	
	add	 x19, x19, :lo12:.LANCHOR0	// id: 53, l: 54	
	mov	 x20, x0	// id: 54, l: 55	
	adrp	 x2, .LC1	// id: 55, l: 56	
	stp	 x23, x24, [sp, #80]	// id: 56, l: 57	
	add	 x0, sp, #0xb8	// id: 57, l: 58	
	ldr	 d2, [x19, #16]	// id: 58, l: 59	
	stp	 x25, x26, [sp, #96]	// id: 59, l: 60	
	ldr	 x3, [x19, #8]	// id: 60, l: 61	
	ldr	 q3, [x2,:lo12:.LC1]	// id: 61, l: 62	
	dup	 v2.2d, v2.d[0]	// id: 62, l: 63	
	.cfi_offset	23, -32592	// id: 63, l: 64	
	.cfi_offset	24, -32584	// id: 64, l: 65	
	.cfi_offset	25, -32576	// id: 65, l: 66	
	.cfi_offset	26, -32568	// id: 66, l: 67	
	ldr	 x23, [x20, #568]	// id: 67, l: 68	
	str	 x23, [sp, #168]	// id: 68, l: 69	
	ldr	 x25, [x20, #424]	// id: 69, l: 70	
	ldr	 x24, [x20, #576]	// id: 70, l: 71	
	str	 xzr, [x3]	// id: 71, l: 72	
	.p2align	3, , 7	// id: 72, l: 73	
.L9:	// id: 73, l: 74	
	mov	 v0.16b, v1.16b	// id: 74, l: 75	
	add	 v1.2d, v1.2d, v3.2d	// id: 75, l: 76	
	shl	 v0.2d, v0.2d, #5	// id: 76, l: 77	
	add	 v0.2d, v0.2d, v2.2d	// id: 77, l: 78	
	str	 q0, [x0], #16	// id: 78, l: 79	
	cmp	 x0, x1	// id: 79, l: 80	
	bne	 .L9	// id: 80, l: 81	
	ldr	 x0, [x19, #24]	// id: 81, l: 82	
	cbnz	 x0, .L8	// id: 82, l: 83	
	add	 x26, sp, #0xb8	// id: 83, l: 84	
	stp	 x21, x22, [sp, #64]	// id: 84, l: 85	
	.cfi_offset	22, -32600	// id: 85, l: 86	
	.cfi_offset	21, -32608	// id: 86, l: 87	
	mov	 x22, #0x1                   	// #1	// id: 87, l: 88	
	stp	 x27, x28, [sp, #112]	// id: 88, l: 89	
	.cfi_offset	28, -32552	// id: 89, l: 90	
	.cfi_offset	27, -32560	// id: 90, l: 91	
	b	 .L20	// id: 91, l: 92	
	.p2align	2, , 3	// id: 92, l: 93	
.L39:	// id: 93, l: 94	
	ldr	 x2, [x20, #608]	// id: 94, l: 95	
	add	 x2, x2, #0x1	// id: 95, l: 96	
	str	 x2, [x20, #608]	// id: 96, l: 97	
	ldp	 x3, x21, [x28, #16]	// id: 97, l: 98	
	csel	 x5, x3, x21, le	// id: 98, l: 99	
	csel	 x21, x21, x3, le	// id: 99, l: 100	
	mov	 x2, x5	// id: 100, l: 101	
	mov	 x3, x21	// id: 101, l: 102	
	stp	 x5, x22, [sp, #136]	// id: 102, l: 103	
	bl	 primal_iminus	// id: 103, l: 104	
	mov	 x6, x0	// id: 104, l: 105	
	ldr	 x5, [sp, #136]	// id: 105, l: 106	
	cbz	 x0, .L38	// id: 106, l: 107	
	ldrsw	 x3, [x0, #8]	// id: 107, l: 108	
	ldr	 x7, [x0, #24]	// id: 108, l: 109	
	ldr	 x8, [x0, #48]	// id: 109, l: 110	
	str	 x8, [sp, #136]	// id: 110, l: 111	
	ldp	 x2, x0, [sp, #144]	// id: 111, l: 112	
	ldr	 x1, [x28, #16]	// id: 112, l: 113	
	cmp	 x0, #0x0	// id: 113, l: 114	
	csel	 x4, x5, x21, eq  // eq = none	// id: 114, l: 115	
	csel	 x5, x21, x5, eq  // eq = none	// id: 115, l: 116	
	cmp	 x0, x3	// id: 116, l: 117	
	sub	 x3, x22, x2	// id: 117, l: 118	
	cset	 w21, eq  // eq = none	// id: 118, l: 119	
	cmp	 x27, #0x0	// id: 119, l: 120	
	csel	 x3, x3, x2, gt	// id: 120, l: 121	
	cmp	 x1, x4	// id: 121, l: 122	
	cset	 x1, eq  // eq = none	// id: 122, l: 123	
	cmp	 x0, #0x0	// id: 123, l: 124	
	ldr	 x0, [sp, #160]	// id: 124, l: 125	
	str	 x0, [sp]	// id: 125, l: 126	
	add	 w21, w21, #0x1	// id: 126, l: 127	
	ldr	 x0, [x20, #512]	// id: 127, l: 128	
	stp	 x28, x27, [sp, #8]	// id: 128, l: 129	
	str	 x0, [sp, #24]	// id: 129, l: 130	
	cset	 x0, eq  // eq = none	// id: 130, l: 131	
	bl	 update_tree	// id: 131, l: 132	
	strh	 wzr, [x28, #32]	// id: 132, l: 133	
	ldr	 x8, [sp, #136]	// id: 133, l: 134	
	strh	 w21, [x8, #32]	// id: 134, l: 135	
.L15:	// id: 135, l: 136	
	ldr	 x0, [x19, #24]	// id: 136, l: 137	
	cbnz	 x0, .L37	// id: 137, l: 138	
	ldr	 x3, [x19, #8]	// id: 138, l: 139	
.L20:	// id: 139, l: 140	
	mov	 x1, x23	// id: 140, l: 141	
	ldr	 x0, [x20, #640]	// id: 141, l: 142	
	stp	 x22, x0, [sp]	// id: 142, l: 143	
	add	 x6, sp, #0xa8	// id: 143, l: 144	
	ldr	 x21, [x19, #32]	// id: 144, l: 145	
	add	 x4, sp, #0xb0	// id: 145, l: 146	
	mov	 x2, x24	// id: 146, l: 147	
	mov	 x0, x25	// id: 147, l: 148	
	mov	 x7, #0x0                   	// #0	// id: 148, l: 149	
	mov	 w5, #0x0                   	// #0	// id: 149, l: 150	
	bl	 primal_bea_mpp	// id: 150, l: 151	
	str	 x0, [x21]	// id: 151, l: 152	
	ldr	 x1, [x19]	// id: 152, l: 153	
	ldr	 x0, [x19, #32]	// id: 153, l: 154	
	str	 x26, [x1]	// id: 154, l: 155	
	ldr	 x1, [x0]	// id: 155, l: 156	
	cbz	 x1, .L11	// id: 156, l: 157	
	ldp	 x28, x27, [x1]	// id: 157, l: 158	
	bl	 markBaskets.constprop.0	// id: 158, l: 159	
	add	 x4, sp, #0xa0	// id: 159, l: 160	
	add	 x1, sp, #0x98	// id: 160, l: 161	
	add	 x0, sp, #0x90	// id: 161, l: 162	
	cmp	 x27, #0x0	// id: 162, l: 163	
	cbnz	 x27, .L39	// id: 163, l: 164	
.L11:	// id: 164, l: 165	
	ldp	 x21, x22, [sp, #64]	// id: 165, l: 166	
	.cfi_restore	22	// id: 166, l: 167	
	.cfi_restore	21	// id: 167, l: 168	
	mov	 x0, #0x1                   	// #1	// id: 168, l: 169	
	ldp	 x27, x28, [sp, #112]	// id: 169, l: 170	
	.cfi_restore	28	// id: 170, l: 171	
	.cfi_restore	27	// id: 171, l: 172	
	str	 x0, [x19, #24]	// id: 172, l: 173	
.L8:	// id: 173, l: 174	
	mov	 x12, #0x7fa0                	// #32672	// id: 174, l: 175	
	ldp	 x29, x30, [sp, #32]	// id: 175, l: 176	
	ldp	 x19, x20, [sp, #48]	// id: 176, l: 177	
	ldp	 x23, x24, [sp, #80]	// id: 177, l: 178	
	ldp	 x25, x26, [sp, #96]	// id: 178, l: 179	
	add	 sp, sp, x12	// id: 179, l: 180	
	.cfi_restore	29	// id: 180, l: 181	
	.cfi_restore	30	// id: 181, l: 182	
	.cfi_restore	25	// id: 182, l: 183	
	.cfi_restore	26	// id: 183, l: 184	
	.cfi_restore	23	// id: 184, l: 185	
	.cfi_restore	24	// id: 185, l: 186	
	.cfi_restore	19	// id: 186, l: 187	
	.cfi_restore	20	// id: 187, l: 188	
	.cfi_def_cfa_offset	0	// id: 188, l: 189	
	ret		// id: 189, l: 190	
	.p2align	2, , 3	// id: 190, l: 191	
.L38:	// id: 191, l: 192	
	.cfi_def_cfa_offset	32672	// id: 192, l: 193	
	.cfi_offset	19, -32624	// id: 193, l: 194	
	.cfi_offset	20, -32616	// id: 194, l: 195	
	.cfi_offset	21, -32608	// id: 195, l: 196	
	.cfi_offset	22, -32600	// id: 196, l: 197	
	.cfi_offset	23, -32592	// id: 197, l: 198	
	.cfi_offset	24, -32584	// id: 198, l: 199	
	.cfi_offset	25, -32576	// id: 199, l: 200	
	.cfi_offset	26, -32568	// id: 200, l: 201	
	.cfi_offset	27, -32560	// id: 201, l: 202	
	.cfi_offset	28, -32552	// id: 202, l: 203	
	.cfi_offset	29, -32640	// id: 203, l: 204	
	.cfi_offset	30, -32632	// id: 204, l: 205	
	ldr	 x0, [x20, #616]	// id: 205, l: 206	
	ldr	 x1, [sp, #144]	// id: 206, l: 207	
	add	 x0, x0, #0x1	// id: 207, l: 208	
	str	 x0, [x20, #616]	// id: 208, l: 209	
	ldrsh	 w0, [x28, #32]	// id: 209, l: 210	
	cmp	 w0, #0x2	// id: 210, l: 211	
	cset	 w0, ne  // ne = any	// id: 211, l: 212	
	add	 w0, w0, #0x1	// id: 212, l: 213	
	strh	 w0, [x28, #32]	// id: 213, l: 214	
	cbz	 x1, .L15	// id: 214, l: 215	
	ldr	 x2, [sp, #160]	// id: 215, l: 216	
	mov	 x1, x21	// id: 216, l: 217	
	mov	 x0, x5	// id: 217, l: 218	
	bl	 primal_update_flow	// id: 218, l: 219	
	b	 .L15	// id: 219, l: 220	
.L37:	// id: 220, l: 221	
	ldp	 x21, x22, [sp, #64]	// id: 221, l: 222	
	.cfi_restore	22	// id: 222, l: 223	
	.cfi_restore	21	// id: 223, l: 224	
	ldp	 x27, x28, [sp, #112]	// id: 224, l: 225	
	.cfi_restore	28	// id: 225, l: 226	
	.cfi_restore	27	// id: 226, l: 227	
	b	 .L8	// id: 227, l: 228	
	.cfi_endproc		// id: 228, l: 229	
.LFE30:	// id: 229, l: 230	
	.size	master.constprop.0, .-master.constprop.0	// id: 230, l: 231	
	.p2align	2, , 0	// id: 231, l: 232	
	.p2align	3, , 7	// id: 232, l: 233	
	.globl	markBaskets	// id: 233, l: 234	
	.type	markBaskets, %function	// id: 234, l: 235	
markBaskets:	// id: 235, l: 236	
.LFB25:	// id: 236, l: 237	
	.cfi_startproc		// id: 237, l: 238	
	stp	 x29, x30, [sp, #-80]!	// id: 238, l: 239	
	.cfi_def_cfa_offset	80	// id: 239, l: 240	
	.cfi_offset	29, -80	// id: 240, l: 241	
	.cfi_offset	30, -72	// id: 241, l: 242	
	mov	 x29, sp	// id: 242, l: 243	
	stp	 x21, x22, [sp, #32]	// id: 243, l: 244	
	.cfi_offset	21, -48	// id: 244, l: 245	
	.cfi_offset	22, -40	// id: 245, l: 246	
	adrp	 x21, .LANCHOR0	// id: 246, l: 247	
	mov	 x22, #0x0                   	// #0	// id: 247, l: 248	
	ldr	 x1, [x21,:lo12:.LANCHOR0]	// id: 248, l: 249	
	stp	 x19, x20, [sp, #16]	// id: 249, l: 250	
	.cfi_offset	19, -64	// id: 250, l: 251	
	.cfi_offset	20, -56	// id: 251, l: 252	
	mov	 x20, x0	// id: 252, l: 253	
	str	 x23, [sp, #48]	// id: 253, l: 254	
	.cfi_offset	23, -32	// id: 254, l: 255	
	mov	 x23, #0x1                   	// #1	// id: 255, l: 256	
	.p2align	3, , 7	// id: 256, l: 257	
.L50:	// id: 257, l: 258	
	ldr	 x0, [x1]	// id: 258, l: 259	
	ldr	 x3, [x0]	// id: 259, l: 260	
	ldr	 x0, [x3, #24]	// id: 260, l: 261	
	tbnz	 x0, #63, .L61	// id: 261, l: 262	
	str	 x3, [sp, #64]	// id: 262, l: 263	
	cmp	 x20, #0x1	// id: 263, l: 264	
	mov	 x22, #0x0                   	// #0	// id: 264, l: 265	
	ble	 .L44	// id: 265, l: 266	
.L42:	// id: 266, l: 267	
	mov	 x19, #0x1                   	// #1	// id: 267, l: 268	
	b	 .L49	// id: 268, l: 269	
	.p2align	2, , 3	// id: 269, l: 270	
.L63:	// id: 270, l: 271	
	add	 x1, sp, #0x40	// id: 271, l: 272	
	add	 x0, sp, #0x48	// id: 272, l: 273	
	bl	 cost_compare	// id: 273, l: 274	
	tbnz	 x0, #31, .L47	// id: 274, l: 275	
	ldr	 x3, [sp, #64]	// id: 275, l: 276	
.L45:	// id: 276, l: 277	
	add	 x19, x19, #0x1	// id: 277, l: 278	
	cmp	 x20, x19	// id: 278, l: 279	
	beq	 .L62	// id: 279, l: 280	
.L48:	// id: 280, l: 281	
	ldr	 x1, [x21,:lo12:.LANCHOR0]	// id: 281, l: 282	
.L49:	// id: 282, l: 283	
	ldr	 x1, [x1, x19, lsl #3]	// id: 283, l: 284	
	ldr	 x1, [x1]	// id: 284, l: 285	
	str	 x1, [sp, #72]	// id: 285, l: 286	
	ldr	 x2, [x1, #24]	// id: 286, l: 287	
	tbnz	 x2, #63, .L45	// id: 287, l: 288	
	cbnz	 x3, .L63	// id: 288, l: 289	
	mov	 x22, x19	// id: 289, l: 290	
	mov	 x3, x1	// id: 290, l: 291	
	str	 x1, [sp, #64]	// id: 291, l: 292	
.L64:	// id: 292, l: 293	
	add	 x19, x19, #0x1	// id: 293, l: 294	
	cmp	 x20, x19	// id: 294, l: 295	
	bne	 .L48	// id: 295, l: 296	
.L62:	// id: 296, l: 297	
	cbz	 x3, .L40	// id: 297, l: 298	
.L44:	// id: 298, l: 299	
	ldr	 x1, [x21,:lo12:.LANCHOR0]	// id: 299, l: 300	
	str	 x23, [x3, #24]	// id: 300, l: 301	
	add	 x23, x23, #0x1	// id: 301, l: 302	
	cmp	 x23, #0x3d	// id: 302, l: 303	
	ldr	 x0, [x1, x22, lsl #3]	// id: 303, l: 304	
	add	 x0, x0, #0x8	// id: 304, l: 305	
	str	 x0, [x1, x22, lsl #3]	// id: 305, l: 306	
	bne	 .L50	// id: 306, l: 307	
.L40:	// id: 307, l: 308	
	ldp	 x19, x20, [sp, #16]	// id: 308, l: 309	
	ldp	 x21, x22, [sp, #32]	// id: 309, l: 310	
	ldr	 x23, [sp, #48]	// id: 310, l: 311	
	ldp	 x29, x30, [sp], #80	// id: 311, l: 312	
	.cfi_remember_state		// id: 312, l: 313	
	.cfi_restore	30	// id: 313, l: 314	
	.cfi_restore	29	// id: 314, l: 315	
	.cfi_restore	23	// id: 315, l: 316	
	.cfi_restore	21	// id: 316, l: 317	
	.cfi_restore	22	// id: 317, l: 318	
	.cfi_restore	19	// id: 318, l: 319	
	.cfi_restore	20	// id: 319, l: 320	
	.cfi_def_cfa_offset	0	// id: 320, l: 321	
	ret		// id: 321, l: 322	
	.p2align	2, , 3	// id: 322, l: 323	
.L47:	// id: 323, l: 324	
	.cfi_restore_state		// id: 324, l: 325	
	ldr	 x1, [sp, #72]	// id: 325, l: 326	
	mov	 x22, x19	// id: 326, l: 327	
	str	 x1, [sp, #64]	// id: 327, l: 328	
	mov	 x3, x1	// id: 328, l: 329	
	b	 .L64	// id: 329, l: 330	
	.p2align	2, , 3	// id: 330, l: 331	
.L61:	// id: 331, l: 332	
	str	 xzr, [sp, #64]	// id: 332, l: 333	
	cmp	 x20, #0x1	// id: 333, l: 334	
	ble	 .L40	// id: 334, l: 335	
	mov	 x3, #0x0                   	// #0	// id: 335, l: 336	
	b	 .L42	// id: 336, l: 337	
	.cfi_endproc		// id: 337, l: 338	
.LFE25:	// id: 338, l: 339	
	.size	markBaskets, .-markBaskets	// id: 339, l: 340	
	.p2align	2, , 0	// id: 340, l: 341	
	.p2align	3, , 7	// id: 341, l: 342	
	.globl	worker	// id: 342, l: 343	
	.type	worker, %function	// id: 343, l: 344	
worker:	// id: 344, l: 345	
.LFB26:	// id: 345, l: 346	
	.cfi_startproc		// id: 346, l: 347	
	mov	 x12, #0x7f80                	// #32640	// id: 347, l: 348	
	sub	 sp, sp, x12	// id: 348, l: 349	
	.cfi_def_cfa_offset	32640	// id: 349, l: 350	
	mov	 w3, #0xfa0                 	// #4000	// id: 350, l: 351	
	sxtw	 x4, w1	// id: 351, l: 352	
	sdiv	 w3, w3, w2	// id: 352, l: 353	
	stp	 x29, x30, [sp, #16]	// id: 353, l: 354	
	.cfi_offset	29, -32624	// id: 354, l: 355	
	.cfi_offset	30, -32616	// id: 355, l: 356	
	add	 x29, sp, #0x10	// id: 356, l: 357	
	stp	 x19, x20, [sp, #32]	// id: 357, l: 358	
	.cfi_offset	19, -32608	// id: 358, l: 359	
	.cfi_offset	20, -32600	// id: 359, l: 360	
	adrp	 x19, .LANCHOR0	// id: 360, l: 361	
	add	 x19, x19, :lo12:.LANCHOR0	// id: 361, l: 362	
	stp	 x27, x28, [sp, #96]	// id: 362, l: 363	
	.cfi_offset	27, -32544	// id: 363, l: 364	
	.cfi_offset	28, -32536	// id: 364, l: 365	
	mov	 x28, x0	// id: 365, l: 366	
	add	 w1, w3, #0x105	// id: 366, l: 367	
	stp	 x21, x22, [sp, #48]	// id: 367, l: 368	
	add	 w3, w3, #0x3d	// id: 368, l: 369	
	.cfi_offset	21, -32592	// id: 369, l: 370	
	.cfi_offset	22, -32584	// id: 370, l: 371	
	mov	 x22, x4	// id: 371, l: 372	
	stp	 x23, x24, [sp, #64]	// id: 372, l: 373	
	mul	 w1, w1, w4	// id: 373, l: 374	
	cmp	 w3, #0x1	// id: 374, l: 375	
	stp	 x25, x26, [sp, #80]	// id: 375, l: 376	
	.cfi_offset	23, -32576	// id: 376, l: 377	
	.cfi_offset	24, -32568	// id: 377, l: 378	
	.cfi_offset	25, -32560	// id: 378, l: 379	
	.cfi_offset	26, -32552	// id: 379, l: 380	
	sbfiz	 x21, x4, #3, #32	// id: 380, l: 381	
	ldr	 x0, [x19, #8]	// id: 381, l: 382	
	str	 x4, [sp, #120]	// id: 382, l: 383	
	ldr	 x23, [x28, #568]	// id: 383, l: 384	
	str	 x23, [sp, #136]	// id: 384, l: 385	
	ldr	 x25, [x28, #424]	// id: 385, l: 386	
	ldr	 x24, [x28, #576]	// id: 386, l: 387	
	str	 xzr, [x0, x4, lsl #3]	// id: 387, l: 388	
	ble	 .L66	// id: 388, l: 389	
	sxtw	 x3, w3	// id: 389, l: 390	
	add	 w1, w1, #0x1	// id: 390, l: 391	
	sub	 x0, x3, #0x2	// id: 391, l: 392	
	sub	 x7, x3, #0x1	// id: 392, l: 393	
	sxtw	 x4, w1	// id: 393, l: 394	
	cmp	 x0, #0x2	// id: 394, l: 395	
	ldr	 d4, [x19, #16]	// id: 395, l: 396	
	bls	 .L75	// id: 396, l: 397	
	fmov	 d1, x4	// id: 397, l: 398	
	add	 x8, x4, #0x1	// id: 398, l: 399	
	adrp	 x1, .LC1	// id: 399, l: 400	
	lsr	 x6, x7, #1	// id: 400, l: 401	
	ins	 v1.d[1], x5	// id: 401, l: 402	
	add	 x26, sp, #0x90	// id: 402, l: 403	
	dup	 v3.2d, v4.d[0]	// id: 403, l: 404	
	mov	 x0, x26	// id: 404, l: 405	
	ldr	 q2, [x1,:lo12:.LC1]	// id: 405, l: 406	
	add	 x6, x26, x6, lsl #4	// id: 406, l: 407	
	ins	 v1.d[1], x8	// id: 407, l: 408	
	.p2align	3, , 7	// id: 408, l: 409	
.L68:	// id: 409, l: 410	
	mov	 v0.16b, v1.16b	// id: 410, l: 411	
	add	 x0, x0, #0x10	// id: 411, l: 412	
	add	 v1.2d, v1.2d, v2.2d	// id: 412, l: 413	
	shl	 v0.2d, v0.2d, #5	// id: 413, l: 414	
	add	 v0.2d, v0.2d, v3.2d	// id: 414, l: 415	
	str	 q0, [x0, #-8]	// id: 415, l: 416	
	cmp	 x0, x6	// id: 416, l: 417	
	bne	 .L68	// id: 417, l: 418	
	and	 x6, x7, #0xfffffffffffffffe	// id: 418, l: 419	
	orr	 x0, x7, #0x1	// id: 419, l: 420	
	add	 x4, x4, x6	// id: 420, l: 421	
	cmp	 x7, x6	// id: 421, l: 422	
	beq	 .L66	// id: 422, l: 423	
.L67:	// id: 423, l: 424	
	lsl	 x1, x4, #5	// id: 424, l: 425	
	fmov	 x4, d4	// id: 425, l: 426	
	add	 x7, x0, #0x1	// id: 426, l: 427	
	cmp	 x7, x3	// id: 427, l: 428	
	add	 x6, x4, x1	// id: 428, l: 429	
	str	 x6, [x26, x0, lsl #3]	// id: 429, l: 430	
	bge	 .L66	// id: 430, l: 431	
	add	 x6, x1, #0x20	// id: 431, l: 432	
	add	 x0, x0, #0x2	// id: 432, l: 433	
	add	 x6, x4, x6	// id: 433, l: 434	
	str	 x6, [x26, x7, lsl #3]	// id: 434, l: 435	
	cmp	 x3, x0	// id: 435, l: 436	
	ble	 .L66	// id: 436, l: 437	
	add	 x1, x1, #0x40	// id: 437, l: 438	
	add	 x1, x4, x1	// id: 438, l: 439	
	str	 x1, [x26, x0, lsl #3]	// id: 439, l: 440	
.L66:	// id: 440, l: 441	
	add	 x0, sp, #0x98	// id: 441, l: 442	
	str	 x0, [sp, #112]	// id: 442, l: 443	
	sxtw	 x20, w2	// id: 443, l: 444	
	cmp	 w22, #0x1	// id: 444, l: 445	
	add	 x27, sp, #0x88	// id: 445, l: 446	
	beq	 .L71	// id: 446, l: 447	
	ldr	 x0, [x19, #24]	// id: 447, l: 448	
	cbnz	 x0, .L65	// id: 448, l: 449	
	add	 x26, sp, #0x90	// id: 449, l: 450	
	mov	 x6, x27	// id: 450, l: 451	
	.p2align	3, , 7	// id: 451, l: 452	
.L73:	// id: 452, l: 453	
	ldr	 x0, [sp, #120]	// id: 453, l: 454	
	mov	 x2, x24	// id: 454, l: 455	
	ldr	 x7, [x28, #608]	// id: 455, l: 456	
	str	 x20, [sp]	// id: 456, l: 457	
	ldr	 x3, [x19, #8]	// id: 457, l: 458	
	add	 x7, x0, x7	// id: 458, l: 459	
	ldr	 x0, [x28, #640]	// id: 459, l: 460	
	str	 x0, [sp, #8]	// id: 460, l: 461	
	sdiv	 x0, x7, x20	// id: 461, l: 462	
	mov	 x1, x23	// id: 462, l: 463	
	ldr	 x27, [x19, #32]	// id: 463, l: 464	
	mov	 w5, w22	// id: 464, l: 465	
	mov	 x4, x26	// id: 465, l: 466	
	msub	 x7, x0, x20, x7	// id: 466, l: 467	
	mov	 x0, x25	// id: 467, l: 468	
	bl	 primal_bea_mpp	// id: 468, l: 469	
	str	 x0, [x27, x21]	// id: 469, l: 470	
	ldr	 x2, [x19]	// id: 470, l: 471	
	add	 x6, sp, #0x88	// id: 471, l: 472	
	ldr	 x0, [x19, #24]	// id: 472, l: 473	
	ldr	 x1, [sp, #112]	// id: 473, l: 474	
	str	 x1, [x2, x21]	// id: 474, l: 475	
	cbz	 x0, .L73	// id: 475, l: 476	
.L65:	// id: 476, l: 477	
	mov	 x12, #0x7f80                	// #32640	// id: 477, l: 478	
	ldp	 x29, x30, [sp, #16]	// id: 478, l: 479	
	ldp	 x19, x20, [sp, #32]	// id: 479, l: 480	
	ldp	 x21, x22, [sp, #48]	// id: 480, l: 481	
	ldp	 x23, x24, [sp, #64]	// id: 481, l: 482	
	ldp	 x25, x26, [sp, #80]	// id: 482, l: 483	
	ldp	 x27, x28, [sp, #96]	// id: 483, l: 484	
	add	 sp, sp, x12	// id: 484, l: 485	
	.cfi_remember_state		// id: 485, l: 486	
	.cfi_restore	29	// id: 486, l: 487	
	.cfi_restore	30	// id: 487, l: 488	
	.cfi_restore	27	// id: 488, l: 489	
	.cfi_restore	28	// id: 489, l: 490	
	.cfi_restore	25	// id: 490, l: 491	
	.cfi_restore	26	// id: 491, l: 492	
	.cfi_restore	23	// id: 492, l: 493	
	.cfi_restore	24	// id: 493, l: 494	
	.cfi_restore	21	// id: 494, l: 495	
	.cfi_restore	22	// id: 495, l: 496	
	.cfi_restore	19	// id: 496, l: 497	
	.cfi_restore	20	// id: 497, l: 498	
	.cfi_def_cfa_offset	0	// id: 498, l: 499	
	ret		// id: 499, l: 500	
	.p2align	2, , 3	// id: 500, l: 501	
.L74:	// id: 501, l: 502	
	.cfi_restore_state		// id: 502, l: 503	
	ldr	 x7, [x28, #608]	// id: 503, l: 504	
	str	 x20, [sp]	// id: 504, l: 505	
	ldr	 x3, [x19, #8]	// id: 505, l: 506	
	add	 x7, x7, #0x1	// id: 506, l: 507	
	ldr	 x8, [x28, #640]	// id: 507, l: 508	
	str	 x8, [sp, #8]	// id: 508, l: 509	
	sdiv	 x8, x7, x20	// id: 509, l: 510	
	ldr	 x26, [x19, #32]	// id: 510, l: 511	
	msub	 x7, x8, x20, x7	// id: 511, l: 512	
	bl	 primal_bea_mpp	// id: 512, l: 513	
	str	 x0, [x26, x21]	// id: 513, l: 514	
	ldr	 x1, [x19]	// id: 514, l: 515	
	mov	 x0, x20	// id: 515, l: 516	
	ldr	 x2, [sp, #112]	// id: 516, l: 517	
	str	 x2, [x1, x21]	// id: 517, l: 518	
	bl	 markBaskets	// id: 518, l: 519	
.L71:	// id: 519, l: 520	
	ldr	 x3, [x19, #24]	// id: 520, l: 521	
	mov	 x6, x27	// id: 521, l: 522	
	add	 x4, sp, #0x90	// id: 522, l: 523	
	mov	 x2, x24	// id: 523, l: 524	
	mov	 x1, x23	// id: 524, l: 525	
	mov	 x0, x25	// id: 525, l: 526	
	mov	 w5, #0x1                   	// #1	// id: 526, l: 527	
	cbz	 x3, .L74	// id: 527, l: 528	
	b	 .L65	// id: 528, l: 529	
.L75:	// id: 529, l: 530	
	add	 x26, sp, #0x90	// id: 530, l: 531	
	mov	 x0, #0x1                   	// #1	// id: 531, l: 532	
	b	 .L67	// id: 532, l: 533	
	.cfi_endproc		// id: 533, l: 534	
.LFE26:	// id: 534, l: 535	
	.size	worker, .-worker	// id: 535, l: 536	
	.p2align	2, , 0	// id: 536, l: 537	
	.p2align	3, , 7	// id: 537, l: 538	
	.globl	master	// id: 538, l: 539	
	.type	master, %function	// id: 539, l: 540	
master:	// id: 540, l: 541	
.LFB27:	// id: 541, l: 542	
	.cfi_startproc		// id: 542, l: 543	
	mov	 x12, #0x7fc0                	// #32704	// id: 543, l: 544	
	sub	 sp, sp, x12	// id: 544, l: 545	
	.cfi_def_cfa_offset	32704	// id: 545, l: 546	
	mov	 w2, w1	// id: 546, l: 547	
	stp	 x29, x30, [sp, #32]	// id: 547, l: 548	
	.cfi_offset	29, -32672	// id: 548, l: 549	
	.cfi_offset	30, -32664	// id: 549, l: 550	
	add	 x29, sp, #0x20	// id: 550, l: 551	
	stp	 x27, x28, [sp, #112]	// id: 551, l: 552	
	.cfi_offset	27, -32592	// id: 552, l: 553	
	.cfi_offset	28, -32584	// id: 553, l: 554	
	adrp	 x28, .LANCHOR0	// id: 554, l: 555	
	add	 x28, x28, :lo12:.LANCHOR0	// id: 555, l: 556	
	str	 w1, [sp, #148]	// id: 556, l: 557	
	mov	 w1, #0xfa0                 	// #4000	// id: 557, l: 558	
	stp	 x21, x22, [sp, #64]	// id: 558, l: 559	
	.cfi_offset	21, -32640	// id: 559, l: 560	
	.cfi_offset	22, -32632	// id: 560, l: 561	
	mov	 x22, x0	// id: 561, l: 562	
	stp	 x23, x24, [sp, #80]	// id: 562, l: 563	
	stp	 x25, x26, [sp, #96]	// id: 563, l: 564	
	ldr	 x3, [x28, #8]	// id: 564, l: 565	
	sdiv	 w1, w1, w2	// id: 565, l: 566	
	.cfi_offset	23, -32624	// id: 566, l: 567	
	.cfi_offset	24, -32616	// id: 567, l: 568	
	.cfi_offset	25, -32608	// id: 568, l: 569	
	.cfi_offset	26, -32600	// id: 569, l: 570	
	ldr	 x25, [x0, #568]	// id: 570, l: 571	
	str	 x25, [sp, #200]	// id: 571, l: 572	
	ldr	 x27, [x0, #424]	// id: 572, l: 573	
	add	 w1, w1, #0x3d	// id: 573, l: 574	
	ldr	 x26, [x0, #576]	// id: 574, l: 575	
	str	 xzr, [x3]	// id: 575, l: 576	
	cmp	 w1, #0x1	// id: 576, l: 577	
	ble	 .L88	// id: 577, l: 578	
	sxtw	 x1, w1	// id: 578, l: 579	
	sub	 x0, x1, #0x2	// id: 579, l: 580	
	sub	 x4, x1, #0x1	// id: 580, l: 581	
	cmp	 x0, #0x2	// id: 581, l: 582	
	ldr	 d4, [x28, #16]	// id: 582, l: 583	
	bls	 .L108	// id: 583, l: 584	
	adrp	 x5, .LC0	// id: 584, l: 585	
	lsr	 x2, x4, #1	// id: 585, l: 586	
	dup	 v3.2d, v4.d[0]	// id: 586, l: 587	
	add	 x23, sp, #0xd0	// id: 587, l: 588	
	ldr	 q1, [x5,:lo12:.LC0]	// id: 588, l: 589	
	adrp	 x5, .LC1	// id: 589, l: 590	
	mov	 x0, x23	// id: 590, l: 591	
	add	 x2, x23, x2, lsl #4	// id: 591, l: 592	
	ldr	 q2, [x5,:lo12:.LC1]	// id: 592, l: 593	
	.p2align	3, , 7	// id: 593, l: 594	
.L86:	// id: 594, l: 595	
	add	 x0, x0, #0x10	// id: 595, l: 596	
	mov	 v0.16b, v1.16b	// id: 596, l: 597	
	add	 v1.2d, v1.2d, v2.2d	// id: 597, l: 598	
	shl	 v0.2d, v0.2d, #5	// id: 598, l: 599	
	add	 v0.2d, v0.2d, v3.2d	// id: 599, l: 600	
	str	 q0, [x0, #-8]	// id: 600, l: 601	
	cmp	 x0, x2	// id: 601, l: 602	
	bne	 .L86	// id: 602, l: 603	
	orr	 x0, x4, #0x1	// id: 603, l: 604	
	tbz	 x4, #0, .L88	// id: 604, l: 605	
.L85:	// id: 605, l: 606	
	fmov	 x2, d4	// id: 606, l: 607	
	lsl	 x4, x0, #5	// id: 607, l: 608	
	add	 x5, x0, #0x1	// id: 608, l: 609	
	cmp	 x5, x1	// id: 609, l: 610	
	add	 x2, x2, x4	// id: 610, l: 611	
	str	 x2, [x23, x0, lsl #3]	// id: 611, l: 612	
	bge	 .L88	// id: 612, l: 613	
	fmov	 x6, d4	// id: 613, l: 614	
	add	 x2, x4, #0x20	// id: 614, l: 615	
	add	 x0, x0, #0x2	// id: 615, l: 616	
	cmp	 x1, x0	// id: 616, l: 617	
	add	 x2, x6, x2	// id: 617, l: 618	
	str	 x2, [x23, x5, lsl #3]	// id: 618, l: 619	
	ble	 .L88	// id: 619, l: 620	
	add	 x1, x4, #0x40	// id: 620, l: 621	
	add	 x1, x6, x1	// id: 621, l: 622	
	str	 x1, [x23, x0, lsl #3]	// id: 622, l: 623	
.L88:	// id: 623, l: 624	
	ldr	 x0, [x28, #24]	// id: 624, l: 625	
	cbnz	 x0, .L81	// id: 625, l: 626	
	ldr	 w0, [sp, #148]	// id: 626, l: 627	
	add	 x23, sp, #0xd0	// id: 627, l: 628	
	stp	 x19, x20, [sp, #48]	// id: 628, l: 629	
	.cfi_offset	20, -32648	// id: 629, l: 630	
	.cfi_offset	19, -32656	// id: 630, l: 631	
	sxtw	 x21, w0	// id: 631, l: 632	
	sbfiz	 x20, x0, #3, #32	// id: 632, l: 633	
	.p2align	3, , 7	// id: 633, l: 634	
.L106:	// id: 634, l: 635	
	ldr	 x0, [x22, #608]	// id: 635, l: 636	
	str	 x21, [sp]	// id: 636, l: 637	
	add	 x6, sp, #0xc8	// id: 637, l: 638	
	mov	 x4, x23	// id: 638, l: 639	
	ldr	 x1, [x22, #640]	// id: 639, l: 640	
	str	 x1, [sp, #8]	// id: 640, l: 641	
	sdiv	 x7, x0, x21	// id: 641, l: 642	
	mov	 x1, x25	// id: 642, l: 643	
	mov	 x2, x26	// id: 643, l: 644	
	mov	 w5, #0x0                   	// #0	// id: 644, l: 645	
	ldr	 x19, [x28, #32]	// id: 645, l: 646	
	msub	 x7, x7, x21, x0	// id: 646, l: 647	
	mov	 x0, x27	// id: 647, l: 648	
	bl	 primal_bea_mpp	// id: 648, l: 649	
	str	 x0, [x19]	// id: 649, l: 650	
	ldr	 x1, [x28]	// id: 650, l: 651	
	add	 x0, x23, #0x8	// id: 651, l: 652	
	cmp	 x21, #0x0	// id: 652, l: 653	
	str	 x0, [x1]	// id: 653, l: 654	
	str	 xzr, [sp, #192]	// id: 654, l: 655	
	ble	 .L90	// id: 655, l: 656	
	mov	 x19, #0x0                   	// #0	// id: 656, l: 657	
	mov	 x1, #0x0                   	// #0	// id: 657, l: 658	
	b	 .L96	// id: 658, l: 659	
	.p2align	2, , 3	// id: 659, l: 660	
.L91:	// id: 660, l: 661	
	ldr	 x2, [x0, x19]	// id: 661, l: 662	
	add	 x0, x0, x19	// id: 662, l: 663	
	cbz	 x2, .L94	// id: 663, l: 664	
	add	 x1, sp, #0xc0	// id: 664, l: 665	
	bl	 cost_compare	// id: 665, l: 666	
	tbnz	 x0, #31, .L95	// id: 666, l: 667	
	ldr	 x1, [sp, #192]	// id: 667, l: 668	
.L94:	// id: 668, l: 669	
	add	 x19, x19, #0x8	// id: 669, l: 670	
	cmp	 x19, x20	// id: 670, l: 671	
	beq	 .L131	// id: 671, l: 672	
.L96:	// id: 672, l: 673	
	ldr	 x0, [x28, #32]	// id: 673, l: 674	
	cbnz	 x1, .L91	// id: 674, l: 675	
.L107:	// id: 675, l: 676	
	ldr	 x1, [x0, x19]	// id: 676, l: 677	
	cbz	 x1, .L132	// id: 677, l: 678	
.L92:	// id: 678, l: 679	
	ldr	 x1, [x0, x19]	// id: 679, l: 680	
	str	 x1, [sp, #192]	// id: 680, l: 681	
	add	 x19, x19, #0x8	// id: 681, l: 682	
	cmp	 x19, x20	// id: 682, l: 683	
	bne	 .L96	// id: 683, l: 684	
.L131:	// id: 684, l: 685	
	cbz	 x1, .L90	// id: 685, l: 686	
	ldr	 w0, [sp, #148]	// id: 686, l: 687	
	ldp	 x24, x8, [x1]	// id: 687, l: 688	
	cmp	 w0, #0x1	// id: 688, l: 689	
	beq	 .L133	// id: 689, l: 690	
.L97:	// id: 690, l: 691	
	str	 x8, [sp, #136]	// id: 691, l: 692	
	cmp	 x8, #0x0	// id: 692, l: 693	
	cbz	 x8, .L90	// id: 693, l: 694	
	ldr	 x0, [x22, #608]	// id: 694, l: 695	
	mov	 x7, #0x1                   	// #1	// id: 695, l: 696	
	add	 x4, sp, #0xb8	// id: 696, l: 697	
	add	 x1, sp, #0xb0	// id: 697, l: 698	
	add	 x0, x0, x7	// id: 698, l: 699	
	str	 x0, [x22, #608]	// id: 699, l: 700	
	add	 x0, sp, #0xa8	// id: 700, l: 701	
	str	 x7, [sp, #168]	// id: 701, l: 702	
	ldp	 x3, x19, [x24, #16]	// id: 702, l: 703	
	csel	 x5, x3, x19, le	// id: 703, l: 704	
	csel	 x19, x19, x3, le	// id: 704, l: 705	
	mov	 x2, x5	// id: 705, l: 706	
	mov	 x3, x19	// id: 706, l: 707	
	str	 x5, [sp, #152]	// id: 707, l: 708	
	bl	 primal_iminus	// id: 708, l: 709	
	mov	 x6, x0	// id: 709, l: 710	
	mov	 x7, #0x1                   	// #1	// id: 710, l: 711	
	ldr	 x8, [sp, #136]	// id: 711, l: 712	
	ldr	 x5, [sp, #152]	// id: 712, l: 713	
	cbz	 x0, .L134	// id: 713, l: 714	
	ldrsw	 x3, [x0, #8]	// id: 714, l: 715	
	ldr	 x10, [x0, #48]	// id: 715, l: 716	
	str	 x10, [sp, #136]	// id: 716, l: 717	
	ldp	 x2, x0, [sp, #168]	// id: 717, l: 718	
	ldr	 x1, [x24, #16]	// id: 718, l: 719	
	cmp	 x0, #0x0	// id: 719, l: 720	
	csel	 x4, x5, x19, eq  // eq = none	// id: 720, l: 721	
	csel	 x5, x19, x5, eq  // eq = none	// id: 721, l: 722	
	cmp	 x0, x3	// id: 722, l: 723	
	sub	 x3, x7, x2	// id: 723, l: 724	
	cset	 w19, eq  // eq = none	// id: 724, l: 725	
	cmp	 x8, #0x0	// id: 725, l: 726	
	csel	 x3, x3, x2, gt	// id: 726, l: 727	
	cmp	 x1, x4	// id: 727, l: 728	
	cset	 x1, eq  // eq = none	// id: 728, l: 729	
	cmp	 x0, #0x0	// id: 729, l: 730	
	ldr	 x0, [sp, #184]	// id: 730, l: 731	
	add	 w19, w19, #0x1	// id: 731, l: 732	
	ldr	 x7, [x6, #24]	// id: 732, l: 733	
	stp	 x0, x24, [sp]	// id: 733, l: 734	
	ldr	 x0, [x22, #512]	// id: 734, l: 735	
	stp	 x8, x0, [sp, #16]	// id: 735, l: 736	
	cset	 x0, eq  // eq = none	// id: 736, l: 737	
	bl	 update_tree	// id: 737, l: 738	
	strh	 wzr, [x24, #32]	// id: 738, l: 739	
	ldr	 x10, [sp, #136]	// id: 739, l: 740	
	strh	 w19, [x10, #32]	// id: 740, l: 741	
.L101:	// id: 741, l: 742	
	ldr	 x0, [x28, #24]	// id: 742, l: 743	
	cbnz	 x0, .L130	// id: 743, l: 744	
	ldr	 x3, [x28, #8]	// id: 744, l: 745	
	b	 .L106	// id: 745, l: 746	
	.p2align	2, , 3	// id: 746, l: 747	
.L95:	// id: 747, l: 748	
	ldr	 x0, [x28, #32]	// id: 748, l: 749	
	b	 .L92	// id: 749, l: 750	
	.p2align	2, , 3	// id: 750, l: 751	
.L132:	// id: 751, l: 752	
	add	 x19, x19, #0x8	// id: 752, l: 753	
	cmp	 x19, x20	// id: 753, l: 754	
	beq	 .L90	// id: 754, l: 755	
	ldr	 x0, [x28, #32]	// id: 755, l: 756	
	b	 .L107	// id: 756, l: 757	
	.p2align	2, , 3	// id: 757, l: 758	
.L90:	// id: 758, l: 759	
	ldp	 x19, x20, [sp, #48]	// id: 759, l: 760	
	.cfi_restore	20	// id: 760, l: 761	
	.cfi_restore	19	// id: 761, l: 762	
	mov	 x0, #0x1                   	// #1	// id: 762, l: 763	
	str	 x0, [x28, #24]	// id: 763, l: 764	
.L81:	// id: 764, l: 765	
	mov	 x12, #0x7fc0                	// #32704	// id: 765, l: 766	
	ldp	 x29, x30, [sp, #32]	// id: 766, l: 767	
	ldp	 x21, x22, [sp, #64]	// id: 767, l: 768	
	ldp	 x23, x24, [sp, #80]	// id: 768, l: 769	
	ldp	 x25, x26, [sp, #96]	// id: 769, l: 770	
	ldp	 x27, x28, [sp, #112]	// id: 770, l: 771	
	add	 sp, sp, x12	// id: 771, l: 772	
	.cfi_restore	29	// id: 772, l: 773	
	.cfi_restore	30	// id: 773, l: 774	
	.cfi_restore	27	// id: 774, l: 775	
	.cfi_restore	28	// id: 775, l: 776	
	.cfi_restore	25	// id: 776, l: 777	
	.cfi_restore	26	// id: 777, l: 778	
	.cfi_restore	23	// id: 778, l: 779	
	.cfi_restore	24	// id: 779, l: 780	
	.cfi_restore	21	// id: 780, l: 781	
	.cfi_restore	22	// id: 781, l: 782	
	.cfi_def_cfa_offset	0	// id: 782, l: 783	
	ret		// id: 783, l: 784	
	.p2align	2, , 3	// id: 784, l: 785	
.L133:	// id: 785, l: 786	
	.cfi_def_cfa_offset	32704	// id: 786, l: 787	
	.cfi_offset	19, -32656	// id: 787, l: 788	
	.cfi_offset	20, -32648	// id: 788, l: 789	
	.cfi_offset	21, -32640	// id: 789, l: 790	
	.cfi_offset	22, -32632	// id: 790, l: 791	
	.cfi_offset	23, -32624	// id: 791, l: 792	
	.cfi_offset	24, -32616	// id: 792, l: 793	
	.cfi_offset	25, -32608	// id: 793, l: 794	
	.cfi_offset	26, -32600	// id: 794, l: 795	
	.cfi_offset	27, -32592	// id: 795, l: 796	
	.cfi_offset	28, -32584	// id: 796, l: 797	
	.cfi_offset	29, -32672	// id: 797, l: 798	
	.cfi_offset	30, -32664	// id: 798, l: 799	
	str	 x8, [sp, #136]	// id: 799, l: 800	
	bl	 markBaskets.constprop.0	// id: 800, l: 801	
	ldr	 x8, [sp, #136]	// id: 801, l: 802	
	b	 .L97	// id: 802, l: 803	
	.p2align	2, , 3	// id: 803, l: 804	
.L134:	// id: 804, l: 805	
	ldr	 x0, [x22, #616]	// id: 805, l: 806	
	ldr	 x1, [sp, #168]	// id: 806, l: 807	
	add	 x0, x0, x7	// id: 807, l: 808	
	str	 x0, [x22, #616]	// id: 808, l: 809	
	ldrsh	 w0, [x24, #32]	// id: 809, l: 810	
	cmp	 w0, #0x2	// id: 810, l: 811	
	cset	 w0, ne  // ne = any	// id: 811, l: 812	
	add	 w0, w0, #0x1	// id: 812, l: 813	
	strh	 w0, [x24, #32]	// id: 813, l: 814	
	cbz	 x1, .L101	// id: 814, l: 815	
	ldr	 x2, [sp, #184]	// id: 815, l: 816	
	mov	 x1, x19	// id: 816, l: 817	
	mov	 x0, x5	// id: 817, l: 818	
	bl	 primal_update_flow	// id: 818, l: 819	
	b	 .L101	// id: 819, l: 820	
.L108:	// id: 820, l: 821	
	.cfi_restore	19	// id: 821, l: 822	
	.cfi_restore	20	// id: 822, l: 823	
	add	 x23, sp, #0xd0	// id: 823, l: 824	
	mov	 x0, #0x1                   	// #1	// id: 824, l: 825	
	b	 .L85	// id: 825, l: 826	
.L130:	// id: 826, l: 827	
	.cfi_offset	19, -32656	// id: 827, l: 828	
	.cfi_offset	20, -32648	// id: 828, l: 829	
	ldp	 x19, x20, [sp, #48]	// id: 829, l: 830	
	.cfi_restore	20	// id: 830, l: 831	
	.cfi_restore	19	// id: 831, l: 832	
	b	 .L81	// id: 832, l: 833	
	.cfi_endproc		// id: 833, l: 834	
.LFE27:	// id: 834, l: 835	
	.size	master, .-master	// id: 835, l: 836	
	.p2align	2, , 0	// id: 836, l: 837	
	.p2align	3, , 7	// id: 837, l: 838	
	.globl	primal_net_simplex	// id: 838, l: 839	
	.type	primal_net_simplex, %function	// id: 839, l: 840	
primal_net_simplex:	// id: 840, l: 841	
.LFB28:	// id: 841, l: 842	
	.cfi_startproc		// id: 842, l: 843	
	stp	 x29, x30, [sp, #-48]!	// id: 843, l: 844	
	.cfi_def_cfa_offset	48	// id: 844, l: 845	
	.cfi_offset	29, -48	// id: 845, l: 846	
	.cfi_offset	30, -40	// id: 846, l: 847	
	mov	 x1, #0x8                   	// #8	// id: 847, l: 848	
	mov	 x29, sp	// id: 848, l: 849	
	str	 x21, [sp, #32]	// id: 849, l: 850	
	.cfi_offset	21, -16	// id: 850, l: 851	
	adrp	 x21, .LANCHOR0	// id: 851, l: 852	
	stp	 x19, x20, [sp, #16]	// id: 852, l: 853	
	.cfi_offset	19, -32	// id: 853, l: 854	
	.cfi_offset	20, -24	// id: 854, l: 855	
	mov	 x20, x0	// id: 855, l: 856	
	mov	 x0, #0x1                   	// #1	// id: 856, l: 857	
	bl	 calloc	// id: 857, l: 858	
	add	 x19, x21, :lo12:.LANCHOR0	// id: 858, l: 859	
	str	 x0, [x21,:lo12:.LANCHOR0]	// id: 859, l: 860	
	mov	 x1, #0x8                   	// #8	// id: 860, l: 861	
	mov	 x0, #0x1                   	// #1	// id: 861, l: 862	
	bl	 calloc	// id: 862, l: 863	
	mov	 x2, x0	// id: 863, l: 864	
	mov	 x1, #0x8                   	// #8	// id: 864, l: 865	
	mov	 x0, #0x1                   	// #1	// id: 865, l: 866	
	str	 x2, [x19, #32]	// id: 866, l: 867	
	bl	 calloc	// id: 867, l: 868	
	mov	 x2, x0	// id: 868, l: 869	
	mov	 x1, #0x20                  	// #32	// id: 869, l: 870	
	mov	 x0, #0x10a5                	// #4261	// id: 870, l: 871	
	str	 x2, [x19, #8]	// id: 871, l: 872	
	bl	 calloc	// id: 872, l: 873	
	mov	 x2, x0	// id: 873, l: 874	
	ldr	 x1, [x20, #568]	// id: 874, l: 875	
	mov	 x0, x20	// id: 875, l: 876	
	str	 x2, [x19, #16]	// id: 876, l: 877	
	bl	 set_static_vars	// id: 877, l: 878	
	mov	 x0, x20	// id: 878, l: 879	
	bl	 master.constprop.0	// id: 879, l: 880	
	mov	 x0, x20	// id: 880, l: 881	
	bl	 primal_feasible	// id: 881, l: 882	
	mov	 x0, x20	// id: 882, l: 883	
	bl	 dual_feasible	// id: 883, l: 884	
	ldr	 x0, [x21,:lo12:.LANCHOR0]	// id: 884, l: 885	
	str	 xzr, [x19, #24]	// id: 885, l: 886	
	bl	 free	// id: 886, l: 887	
	ldr	 x0, [x19, #32]	// id: 887, l: 888	
	bl	 free	// id: 888, l: 889	
	ldr	 x0, [x19, #8]	// id: 889, l: 890	
	bl	 free	// id: 890, l: 891	
	ldr	 x0, [x19, #16]	// id: 891, l: 892	
	bl	 free	// id: 892, l: 893	
	mov	 x0, #0x0                   	// #0	// id: 893, l: 894	
	ldp	 x19, x20, [sp, #16]	// id: 894, l: 895	
	ldr	 x21, [sp, #32]	// id: 895, l: 896	
	ldp	 x29, x30, [sp], #48	// id: 896, l: 897	
	.cfi_restore	30	// id: 897, l: 898	
	.cfi_restore	29	// id: 898, l: 899	
	.cfi_restore	21	// id: 899, l: 900	
	.cfi_restore	19	// id: 900, l: 901	
	.cfi_restore	20	// id: 901, l: 902	
	.cfi_def_cfa_offset	0	// id: 902, l: 903	
	ret		// id: 903, l: 904	
	.cfi_endproc		// id: 904, l: 905	
.LFE28:	// id: 905, l: 906	
	.size	primal_net_simplex, .-primal_net_simplex	// id: 906, l: 907	
	.section	.rodata.cst16, "aM",@progbits,16	// id: 907, l: 908	
	.p2align	4, , 0	// id: 908, l: 909	
.LC0:	// id: 909, l: 910	
	.xword	1	// id: 910, l: 911	
	.xword	2	// id: 911, l: 912	
	.p2align	4, , 0	// id: 912, l: 913	
.LC1:	// id: 913, l: 914	
	.xword	2	// id: 914, l: 915	
	.xword	2	// id: 915, l: 916	
	.bss		// id: 916, l: 917	
	.p2align	3, , 0	// id: 917, l: 918	
	.set	.LANCHOR0, .	// id: 918, l: 919	
	.type	perm_p, %object	// id: 919, l: 920	
	.size	perm_p, 8	// id: 920, l: 921	
perm_p:	// id: 921, l: 922	
	.space	8, 0	// id: 922, l: 923	
	.type	basket_sizes, %object	// id: 923, l: 924	
	.size	basket_sizes, 8	// id: 924, l: 925	
basket_sizes:	// id: 925, l: 926	
	.space	8, 0	// id: 926, l: 927	
	.type	basket, %object	// id: 927, l: 928	
	.size	basket, 8	// id: 928, l: 929	
basket:	// id: 929, l: 930	
	.space	8, 0	// id: 930, l: 931	
	.type	opt, %object	// id: 931, l: 932	
	.size	opt, 8	// id: 932, l: 933	
opt:	// id: 933, l: 934	
	.space	8, 0	// id: 934, l: 935	
	.type	opt_basket, %object	// id: 935, l: 936	
	.size	opt_basket, 8	// id: 936, l: 937	
opt_basket:	// id: 937, l: 938	
	.space	8, 0	// id: 938, l: 939	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 939, l: 940	
	.section	.note.GNU-stack, "",@progbits	// id: 940, l: 941	
