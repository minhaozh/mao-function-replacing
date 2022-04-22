	.arch	armv8-a	// id: 0, l: 1	
	.file	"psimplex.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.local	runtime	// id: 3, l: 4	
	.comm	runtime, 8, 8	// id: 4, l: 5	
	.local	opt_basket	// id: 5, l: 6	
	.comm	opt_basket, 8, 8	// id: 6, l: 7	
	.local	perm_p	// id: 7, l: 8	
	.comm	perm_p, 8, 8	// id: 8, l: 9	
	.local	basket_sizes	// id: 9, l: 10	
	.comm	basket_sizes, 8, 8	// id: 10, l: 11	
	.local	opt	// id: 11, l: 12	
	.comm	opt, 8, 8	// id: 12, l: 13	
	.local	basket	// id: 13, l: 14	
	.comm	basket, 8, 8	// id: 14, l: 15	
	.p2align	2, , 0	// id: 15, l: 16	
	.globl	markBaskets	// id: 16, l: 17	
	.type	markBaskets, %function	// id: 17, l: 18	
markBaskets:	// id: 18, l: 19	
.LFB0:	// id: 19, l: 20	
	.cfi_startproc		// id: 20, l: 21	
	stp	 x29, x30, [sp, #-80]!	// id: 21, l: 22	
	.cfi_def_cfa_offset	80	// id: 22, l: 23	
	.cfi_offset	29, -80	// id: 23, l: 24	
	.cfi_offset	30, -72	// id: 24, l: 25	
	mov	 x29, sp	// id: 25, l: 26	
	str	 x0, [sp, #24]	// id: 26, l: 27	
	str	 xzr, [sp, #56]	// id: 27, l: 28	
	mov	 x0, #0x1                   	// #1	// id: 28, l: 29	
	str	 x0, [sp, #72]	// id: 29, l: 30	
	b	 .L2	// id: 30, l: 31	
.L11:	// id: 31, l: 32	
	adrp	 x0, perm_p	// id: 32, l: 33	
	add	 x0, x0, :lo12:perm_p	// id: 33, l: 34	
	ldr	 x0, [x0]	// id: 34, l: 35	
	ldr	 x0, [x0]	// id: 35, l: 36	
	ldr	 x0, [x0]	// id: 36, l: 37	
	ldr	 x0, [x0, #24]	// id: 37, l: 38	
	cmp	 x0, #0x0	// id: 38, l: 39	
	blt	 .L3	// id: 39, l: 40	
	adrp	 x0, perm_p	// id: 40, l: 41	
	add	 x0, x0, :lo12:perm_p	// id: 41, l: 42	
	ldr	 x0, [x0]	// id: 42, l: 43	
	ldr	 x0, [x0]	// id: 43, l: 44	
	ldr	 x0, [x0]	// id: 44, l: 45	
	str	 x0, [sp, #48]	// id: 45, l: 46	
	str	 xzr, [sp, #56]	// id: 46, l: 47	
	b	 .L4	// id: 47, l: 48	
.L3:	// id: 48, l: 49	
	str	 xzr, [sp, #48]	// id: 49, l: 50	
.L4:	// id: 50, l: 51	
	mov	 x0, #0x1                   	// #1	// id: 51, l: 52	
	str	 x0, [sp, #64]	// id: 52, l: 53	
	b	 .L5	// id: 53, l: 54	
.L8:	// id: 54, l: 55	
	adrp	 x0, perm_p	// id: 55, l: 56	
	add	 x0, x0, :lo12:perm_p	// id: 56, l: 57	
	ldr	 x1, [x0]	// id: 57, l: 58	
	ldr	 x0, [sp, #64]	// id: 58, l: 59	
	lsl	 x0, x0, #3	// id: 59, l: 60	
	add	 x0, x1, x0	// id: 60, l: 61	
	ldr	 x0, [x0]	// id: 61, l: 62	
	ldr	 x0, [x0]	// id: 62, l: 63	
	str	 x0, [sp, #40]	// id: 63, l: 64	
	ldr	 x0, [sp, #40]	// id: 64, l: 65	
	ldr	 x0, [x0, #24]	// id: 65, l: 66	
	cmp	 x0, #0x0	// id: 66, l: 67	
	blt	 .L6	// id: 67, l: 68	
	ldr	 x0, [sp, #48]	// id: 68, l: 69	
	cmp	 x0, #0x0	// id: 69, l: 70	
	beq	 .L7	// id: 70, l: 71	
	add	 x1, sp, #0x30	// id: 71, l: 72	
	add	 x0, sp, #0x28	// id: 72, l: 73	
	bl	 cost_compare	// id: 73, l: 74	
	cmp	 w0, #0x0	// id: 74, l: 75	
	bge	 .L6	// id: 75, l: 76	
.L7:	// id: 76, l: 77	
	ldr	 x0, [sp, #40]	// id: 77, l: 78	
	str	 x0, [sp, #48]	// id: 78, l: 79	
	ldr	 x0, [sp, #64]	// id: 79, l: 80	
	str	 x0, [sp, #56]	// id: 80, l: 81	
.L6:	// id: 81, l: 82	
	ldr	 x0, [sp, #64]	// id: 82, l: 83	
	add	 x0, x0, #0x1	// id: 83, l: 84	
	str	 x0, [sp, #64]	// id: 84, l: 85	
.L5:	// id: 85, l: 86	
	ldr	 x1, [sp, #64]	// id: 86, l: 87	
	ldr	 x0, [sp, #24]	// id: 87, l: 88	
	cmp	 x1, x0	// id: 88, l: 89	
	blt	 .L8	// id: 89, l: 90	
	ldr	 x0, [sp, #48]	// id: 90, l: 91	
	cmp	 x0, #0x0	// id: 91, l: 92	
	beq	 .L12	// id: 92, l: 93	
	ldr	 x0, [sp, #48]	// id: 93, l: 94	
	ldr	 x1, [sp, #72]	// id: 94, l: 95	
	str	 x1, [x0, #24]	// id: 95, l: 96	
	adrp	 x0, perm_p	// id: 96, l: 97	
	add	 x0, x0, :lo12:perm_p	// id: 97, l: 98	
	ldr	 x1, [x0]	// id: 98, l: 99	
	ldr	 x0, [sp, #56]	// id: 99, l: 100	
	lsl	 x0, x0, #3	// id: 100, l: 101	
	add	 x0, x1, x0	// id: 101, l: 102	
	ldr	 x1, [x0]	// id: 102, l: 103	
	add	 x1, x1, #0x8	// id: 103, l: 104	
	str	 x1, [x0]	// id: 104, l: 105	
	ldr	 x0, [sp, #72]	// id: 105, l: 106	
	add	 x0, x0, #0x1	// id: 106, l: 107	
	str	 x0, [sp, #72]	// id: 107, l: 108	
.L2:	// id: 108, l: 109	
	ldr	 x0, [sp, #72]	// id: 109, l: 110	
	cmp	 x0, #0x3c	// id: 110, l: 111	
	ble	 .L11	// id: 111, l: 112	
	b	 .L1	// id: 112, l: 113	
.L12:	// id: 113, l: 114	
	nop		// id: 114, l: 115	
.L1:	// id: 115, l: 116	
	ldp	 x29, x30, [sp], #80	// id: 116, l: 117	
	.cfi_restore	30	// id: 117, l: 118	
	.cfi_restore	29	// id: 118, l: 119	
	.cfi_def_cfa_offset	0	// id: 119, l: 120	
	ret		// id: 120, l: 121	
	.cfi_endproc		// id: 121, l: 122	
.LFE0:	// id: 122, l: 123	
	.size	markBaskets, .-markBaskets	// id: 123, l: 124	
	.p2align	2, , 0	// id: 124, l: 125	
	.globl	worker	// id: 125, l: 126	
	.type	worker, %function	// id: 126, l: 127	
worker:	// id: 127, l: 128	
.LFB1:	// id: 128, l: 129	
	.cfi_startproc		// id: 129, l: 130	
	mov	 x12, #0x7f60                	// #32608	// id: 130, l: 131	
	sub	 sp, sp, x12	// id: 131, l: 132	
	.cfi_def_cfa_offset	32608	// id: 132, l: 133	
	stp	 x29, x30, [sp, #16]	// id: 133, l: 134	
	.cfi_offset	29, -32592	// id: 134, l: 135	
	.cfi_offset	30, -32584	// id: 135, l: 136	
	add	 x29, sp, #0x10	// id: 136, l: 137	
	str	 x19, [sp, #32]	// id: 137, l: 138	
	.cfi_offset	19, -32576	// id: 138, l: 139	
	str	 x0, [sp, #56]	// id: 139, l: 140	
	str	 w1, [sp, #52]	// id: 140, l: 141	
	str	 w2, [sp, #48]	// id: 141, l: 142	
	ldr	 x0, [sp, #56]	// id: 142, l: 143	
	ldr	 x0, [x0, #568]	// id: 143, l: 144	
	str	 x0, [sp, #32584]	// id: 144, l: 145	
	ldr	 x0, [sp, #56]	// id: 145, l: 146	
	ldr	 x0, [x0, #576]	// id: 146, l: 147	
	str	 x0, [sp, #32576]	// id: 147, l: 148	
	ldr	 x0, [sp, #56]	// id: 148, l: 149	
	ldr	 x0, [x0, #424]	// id: 149, l: 150	
	str	 x0, [sp, #32568]	// id: 150, l: 151	
	ldr	 x0, [sp, #56]	// id: 151, l: 152	
	add	 x0, x0, #0x260	// id: 152, l: 153	
	str	 x0, [sp, #32560]	// id: 153, l: 154	
	ldr	 x0, [sp, #56]	// id: 154, l: 155	
	ldr	 x0, [x0, #568]	// id: 155, l: 156	
	str	 x0, [sp, #64]	// id: 156, l: 157	
	adrp	 x0, basket_sizes	// id: 157, l: 158	
	add	 x0, x0, :lo12:basket_sizes	// id: 158, l: 159	
	ldr	 x1, [x0]	// id: 159, l: 160	
	ldrsw	 x0, [sp, #52]	// id: 160, l: 161	
	lsl	 x0, x0, #3	// id: 161, l: 162	
	add	 x0, x1, x0	// id: 162, l: 163	
	str	 xzr, [x0]	// id: 163, l: 164	
	mov	 w1, #0xfa0                 	// #4000	// id: 164, l: 165	
	ldr	 w0, [sp, #48]	// id: 165, l: 166	
	sdiv	 w0, w1, w0	// id: 166, l: 167	
	add	 w1, w0, #0x105	// id: 167, l: 168	
	ldr	 w0, [sp, #52]	// id: 168, l: 169	
	mul	 w0, w1, w0	// id: 169, l: 170	
	add	 w0, w0, #0x1	// id: 170, l: 171	
	sxtw	 x0, w0	// id: 171, l: 172	
	str	 x0, [sp, #32592]	// id: 172, l: 173	
	mov	 x0, #0x1                   	// #1	// id: 173, l: 174	
	str	 x0, [sp, #32600]	// id: 174, l: 175	
	b	 .L14	// id: 175, l: 176	
.L15:	// id: 176, l: 177	
	adrp	 x0, basket	// id: 177, l: 178	
	add	 x0, x0, :lo12:basket	// id: 178, l: 179	
	ldr	 x1, [x0]	// id: 179, l: 180	
	ldr	 x0, [sp, #32592]	// id: 180, l: 181	
	lsl	 x0, x0, #5	// id: 181, l: 182	
	add	 x2, x1, x0	// id: 182, l: 183	
	ldr	 x0, [sp, #32600]	// id: 183, l: 184	
	lsl	 x0, x0, #3	// id: 184, l: 185	
	add	 x1, sp, #0x48	// id: 185, l: 186	
	str	 x2, [x1, x0]	// id: 186, l: 187	
	ldr	 x0, [sp, #32600]	// id: 187, l: 188	
	add	 x0, x0, #0x1	// id: 188, l: 189	
	str	 x0, [sp, #32600]	// id: 189, l: 190	
	ldr	 x0, [sp, #32592]	// id: 190, l: 191	
	add	 x0, x0, #0x1	// id: 191, l: 192	
	str	 x0, [sp, #32592]	// id: 192, l: 193	
.L14:	// id: 193, l: 194	
	mov	 w1, #0xfa0                 	// #4000	// id: 194, l: 195	
	ldr	 w0, [sp, #48]	// id: 195, l: 196	
	sdiv	 w0, w1, w0	// id: 196, l: 197	
	add	 w0, w0, #0x3d	// id: 197, l: 198	
	sxtw	 x0, w0	// id: 198, l: 199	
	ldr	 x1, [sp, #32600]	// id: 199, l: 200	
	cmp	 x1, x0	// id: 200, l: 201	
	blt	 .L15	// id: 201, l: 202	
	b	 .L16	// id: 202, l: 203	
.L17:	// id: 203, l: 204	
	adrp	 x0, basket_sizes	// id: 204, l: 205	
	add	 x0, x0, :lo12:basket_sizes	// id: 205, l: 206	
	ldr	 x8, [x0]	// id: 206, l: 207	
	ldr	 x0, [sp, #32560]	// id: 207, l: 208	
	ldr	 x1, [x0]	// id: 208, l: 209	
	ldrsw	 x0, [sp, #52]	// id: 209, l: 210	
	add	 x0, x1, x0	// id: 210, l: 211	
	ldrsw	 x1, [sp, #48]	// id: 211, l: 212	
	sdiv	 x2, x0, x1	// id: 212, l: 213	
	mul	 x1, x2, x1	// id: 213, l: 214	
	sub	 x4, x0, x1	// id: 214, l: 215	
	ldrsw	 x0, [sp, #48]	// id: 215, l: 216	
	ldr	 x1, [sp, #56]	// id: 216, l: 217	
	ldr	 x1, [x1, #640]	// id: 217, l: 218	
	adrp	 x2, opt_basket	// id: 218, l: 219	
	add	 x2, x2, :lo12:opt_basket	// id: 219, l: 220	
	ldr	 x3, [x2]	// id: 220, l: 221	
	ldrsw	 x2, [sp, #52]	// id: 221, l: 222	
	lsl	 x2, x2, #3	// id: 222, l: 223	
	add	 x19, x3, x2	// id: 223, l: 224	
	add	 x3, sp, #0x40	// id: 224, l: 225	
	add	 x2, sp, #0x48	// id: 225, l: 226	
	str	 x1, [sp, #8]	// id: 226, l: 227	
	str	 x0, [sp]	// id: 227, l: 228	
	mov	 x7, x4	// id: 228, l: 229	
	mov	 x6, x3	// id: 229, l: 230	
	ldr	 w5, [sp, #52]	// id: 230, l: 231	
	mov	 x4, x2	// id: 231, l: 232	
	mov	 x3, x8	// id: 232, l: 233	
	ldr	 x2, [sp, #32576]	// id: 233, l: 234	
	ldr	 x1, [sp, #32584]	// id: 234, l: 235	
	ldr	 x0, [sp, #32568]	// id: 235, l: 236	
	bl	 primal_bea_mpp	// id: 236, l: 237	
	str	 x0, [x19]	// id: 237, l: 238	
	adrp	 x0, perm_p	// id: 238, l: 239	
	add	 x0, x0, :lo12:perm_p	// id: 239, l: 240	
	ldr	 x1, [x0]	// id: 240, l: 241	
	ldrsw	 x0, [sp, #52]	// id: 241, l: 242	
	lsl	 x0, x0, #3	// id: 242, l: 243	
	add	 x1, x1, x0	// id: 243, l: 244	
	add	 x0, sp, #0x48	// id: 244, l: 245	
	add	 x0, x0, #0x8	// id: 245, l: 246	
	str	 x0, [x1]	// id: 246, l: 247	
	ldr	 w0, [sp, #52]	// id: 247, l: 248	
	cmp	 w0, #0x1	// id: 248, l: 249	
	bne	 .L16	// id: 249, l: 250	
	ldrsw	 x0, [sp, #48]	// id: 250, l: 251	
	bl	 markBaskets	// id: 251, l: 252	
.L16:	// id: 252, l: 253	
	adrp	 x0, opt	// id: 253, l: 254	
	add	 x0, x0, :lo12:opt	// id: 254, l: 255	
	ldr	 x0, [x0]	// id: 255, l: 256	
	cmp	 x0, #0x0	// id: 256, l: 257	
	beq	 .L17	// id: 257, l: 258	
	nop		// id: 258, l: 259	
	nop		// id: 259, l: 260	
	ldr	 x19, [sp, #32]	// id: 260, l: 261	
	ldp	 x29, x30, [sp, #16]	// id: 261, l: 262	
	mov	 x12, #0x7f60                	// #32608	// id: 262, l: 263	
	add	 sp, sp, x12	// id: 263, l: 264	
	.cfi_restore	29	// id: 264, l: 265	
	.cfi_restore	30	// id: 265, l: 266	
	.cfi_restore	19	// id: 266, l: 267	
	.cfi_def_cfa_offset	0	// id: 267, l: 268	
	ret		// id: 268, l: 269	
	.cfi_endproc		// id: 269, l: 270	
.LFE1:	// id: 270, l: 271	
	.size	worker, .-worker	// id: 271, l: 272	
	.p2align	2, , 0	// id: 272, l: 273	
	.globl	master	// id: 273, l: 274	
	.type	master, %function	// id: 274, l: 275	
master:	// id: 275, l: 276	
.LFB2:	// id: 276, l: 277	
	.cfi_startproc		// id: 277, l: 278	
	mov	 x12, #0x7ff0                	// #32752	// id: 278, l: 279	
	sub	 sp, sp, x12	// id: 279, l: 280	
	.cfi_def_cfa_offset	32752	// id: 280, l: 281	
	stp	 x29, x30, [sp, #32]	// id: 281, l: 282	
	.cfi_offset	29, -32720	// id: 282, l: 283	
	.cfi_offset	30, -32712	// id: 283, l: 284	
	add	 x29, sp, #0x20	// id: 284, l: 285	
	str	 x19, [sp, #48]	// id: 285, l: 286	
	.cfi_offset	19, -32704	// id: 286, l: 287	
	str	 x0, [sp, #72]	// id: 287, l: 288	
	str	 w1, [sp, #68]	// id: 288, l: 289	
	ldr	 x0, [sp, #72]	// id: 289, l: 290	
	ldr	 x0, [x0, #568]	// id: 290, l: 291	
	str	 x0, [sp, #32672]	// id: 291, l: 292	
	ldr	 x0, [sp, #72]	// id: 292, l: 293	
	ldr	 x0, [x0, #576]	// id: 293, l: 294	
	str	 x0, [sp, #32664]	// id: 294, l: 295	
	ldr	 x0, [sp, #72]	// id: 295, l: 296	
	ldr	 x0, [x0, #424]	// id: 296, l: 297	
	str	 x0, [sp, #32656]	// id: 297, l: 298	
	ldr	 x0, [sp, #72]	// id: 298, l: 299	
	add	 x0, x0, #0x260	// id: 299, l: 300	
	str	 x0, [sp, #32648]	// id: 300, l: 301	
	ldr	 x0, [sp, #72]	// id: 301, l: 302	
	add	 x0, x0, #0x268	// id: 302, l: 303	
	str	 x0, [sp, #32640]	// id: 303, l: 304	
	ldr	 x0, [sp, #72]	// id: 304, l: 305	
	ldr	 x0, [x0, #568]	// id: 305, l: 306	
	str	 x0, [sp, #80]	// id: 306, l: 307	
	adrp	 x0, basket_sizes	// id: 307, l: 308	
	add	 x0, x0, :lo12:basket_sizes	// id: 308, l: 309	
	ldr	 x0, [x0]	// id: 309, l: 310	
	str	 xzr, [x0]	// id: 310, l: 311	
	mov	 x0, #0x1                   	// #1	// id: 311, l: 312	
	str	 x0, [sp, #32680]	// id: 312, l: 313	
	mov	 x0, #0x1                   	// #1	// id: 313, l: 314	
	str	 x0, [sp, #32688]	// id: 314, l: 315	
	b	 .L19	// id: 315, l: 316	
.L20:	// id: 316, l: 317	
	adrp	 x0, basket	// id: 317, l: 318	
	add	 x0, x0, :lo12:basket	// id: 318, l: 319	
	ldr	 x1, [x0]	// id: 319, l: 320	
	ldr	 x0, [sp, #32680]	// id: 320, l: 321	
	lsl	 x0, x0, #5	// id: 321, l: 322	
	add	 x2, x1, x0	// id: 322, l: 323	
	ldr	 x0, [sp, #32688]	// id: 323, l: 324	
	lsl	 x0, x0, #3	// id: 324, l: 325	
	add	 x1, sp, #0x58	// id: 325, l: 326	
	str	 x2, [x1, x0]	// id: 326, l: 327	
	ldr	 x0, [sp, #32688]	// id: 327, l: 328	
	add	 x0, x0, #0x1	// id: 328, l: 329	
	str	 x0, [sp, #32688]	// id: 329, l: 330	
	ldr	 x0, [sp, #32680]	// id: 330, l: 331	
	add	 x0, x0, #0x1	// id: 331, l: 332	
	str	 x0, [sp, #32680]	// id: 332, l: 333	
.L19:	// id: 333, l: 334	
	mov	 w1, #0xfa0                 	// #4000	// id: 334, l: 335	
	ldr	 w0, [sp, #68]	// id: 335, l: 336	
	sdiv	 w0, w1, w0	// id: 336, l: 337	
	add	 w0, w0, #0x3d	// id: 337, l: 338	
	sxtw	 x0, w0	// id: 338, l: 339	
	ldr	 x1, [sp, #32688]	// id: 339, l: 340	
	cmp	 x1, x0	// id: 340, l: 341	
	blt	 .L20	// id: 341, l: 342	
	b	 .L21	// id: 342, l: 343	
.L42:	// id: 343, l: 344	
	adrp	 x0, basket_sizes	// id: 344, l: 345	
	add	 x0, x0, :lo12:basket_sizes	// id: 345, l: 346	
	ldr	 x3, [x0]	// id: 346, l: 347	
	ldr	 x0, [sp, #32648]	// id: 347, l: 348	
	ldr	 x0, [x0]	// id: 348, l: 349	
	ldrsw	 x1, [sp, #68]	// id: 349, l: 350	
	sdiv	 x2, x0, x1	// id: 350, l: 351	
	mul	 x1, x2, x1	// id: 351, l: 352	
	sub	 x5, x0, x1	// id: 352, l: 353	
	ldrsw	 x0, [sp, #68]	// id: 353, l: 354	
	ldr	 x1, [sp, #72]	// id: 354, l: 355	
	ldr	 x1, [x1, #640]	// id: 355, l: 356	
	adrp	 x2, opt_basket	// id: 356, l: 357	
	add	 x2, x2, :lo12:opt_basket	// id: 357, l: 358	
	ldr	 x19, [x2]	// id: 358, l: 359	
	add	 x4, sp, #0x50	// id: 359, l: 360	
	add	 x2, sp, #0x58	// id: 360, l: 361	
	str	 x1, [sp, #8]	// id: 361, l: 362	
	str	 x0, [sp]	// id: 362, l: 363	
	mov	 x7, x5	// id: 363, l: 364	
	mov	 x6, x4	// id: 364, l: 365	
	mov	 w5, #0x0                   	// #0	// id: 365, l: 366	
	mov	 x4, x2	// id: 366, l: 367	
	ldr	 x2, [sp, #32664]	// id: 367, l: 368	
	ldr	 x1, [sp, #32672]	// id: 368, l: 369	
	ldr	 x0, [sp, #32656]	// id: 369, l: 370	
	bl	 primal_bea_mpp	// id: 370, l: 371	
	str	 x0, [x19]	// id: 371, l: 372	
	adrp	 x0, perm_p	// id: 372, l: 373	
	add	 x0, x0, :lo12:perm_p	// id: 373, l: 374	
	ldr	 x1, [x0]	// id: 374, l: 375	
	add	 x0, sp, #0x58	// id: 375, l: 376	
	add	 x0, x0, #0x8	// id: 376, l: 377	
	str	 x0, [x1]	// id: 377, l: 378	
	str	 xzr, [sp, #32576]	// id: 378, l: 379	
	str	 xzr, [sp, #32688]	// id: 379, l: 380	
	b	 .L22	// id: 380, l: 381	
.L26:	// id: 381, l: 382	
	ldr	 x0, [sp, #32576]	// id: 382, l: 383	
	cmp	 x0, #0x0	// id: 383, l: 384	
	bne	 .L23	// id: 384, l: 385	
	adrp	 x0, opt_basket	// id: 385, l: 386	
	add	 x0, x0, :lo12:opt_basket	// id: 386, l: 387	
	ldr	 x1, [x0]	// id: 387, l: 388	
	ldr	 x0, [sp, #32688]	// id: 388, l: 389	
	lsl	 x0, x0, #3	// id: 389, l: 390	
	add	 x0, x1, x0	// id: 390, l: 391	
	ldr	 x0, [x0]	// id: 391, l: 392	
	cmp	 x0, #0x0	// id: 392, l: 393	
	bne	 .L24	// id: 393, l: 394	
.L23:	// id: 394, l: 395	
	adrp	 x0, opt_basket	// id: 395, l: 396	
	add	 x0, x0, :lo12:opt_basket	// id: 396, l: 397	
	ldr	 x1, [x0]	// id: 397, l: 398	
	ldr	 x0, [sp, #32688]	// id: 398, l: 399	
	lsl	 x0, x0, #3	// id: 399, l: 400	
	add	 x0, x1, x0	// id: 400, l: 401	
	ldr	 x0, [x0]	// id: 401, l: 402	
	cmp	 x0, #0x0	// id: 402, l: 403	
	beq	 .L25	// id: 403, l: 404	
	adrp	 x0, opt_basket	// id: 404, l: 405	
	add	 x0, x0, :lo12:opt_basket	// id: 405, l: 406	
	ldr	 x1, [x0]	// id: 406, l: 407	
	ldr	 x0, [sp, #32688]	// id: 407, l: 408	
	lsl	 x0, x0, #3	// id: 408, l: 409	
	add	 x0, x1, x0	// id: 409, l: 410	
	add	 x1, sp, #0x7000	// id: 410, l: 411	
	add	 x1, x1, #0xf40	// id: 411, l: 412	
	bl	 cost_compare	// id: 412, l: 413	
	cmp	 w0, #0x0	// id: 413, l: 414	
	bge	 .L25	// id: 414, l: 415	
.L24:	// id: 415, l: 416	
	adrp	 x0, opt_basket	// id: 416, l: 417	
	add	 x0, x0, :lo12:opt_basket	// id: 417, l: 418	
	ldr	 x1, [x0]	// id: 418, l: 419	
	ldr	 x0, [sp, #32688]	// id: 419, l: 420	
	lsl	 x0, x0, #3	// id: 420, l: 421	
	add	 x0, x1, x0	// id: 421, l: 422	
	ldr	 x0, [x0]	// id: 422, l: 423	
	str	 x0, [sp, #32576]	// id: 423, l: 424	
.L25:	// id: 424, l: 425	
	ldr	 x0, [sp, #32688]	// id: 425, l: 426	
	add	 x0, x0, #0x1	// id: 426, l: 427	
	str	 x0, [sp, #32688]	// id: 427, l: 428	
.L22:	// id: 428, l: 429	
	ldrsw	 x0, [sp, #68]	// id: 429, l: 430	
	ldr	 x1, [sp, #32688]	// id: 430, l: 431	
	cmp	 x1, x0	// id: 431, l: 432	
	blt	 .L26	// id: 432, l: 433	
	ldr	 x0, [sp, #32576]	// id: 433, l: 434	
	cmp	 x0, #0x0	// id: 434, l: 435	
	bne	 .L27	// id: 435, l: 436	
	str	 xzr, [sp, #32696]	// id: 436, l: 437	
	b	 .L28	// id: 437, l: 438	
.L27:	// id: 438, l: 439	
	ldr	 x0, [sp, #32576]	// id: 439, l: 440	
	ldr	 x0, [x0, #8]	// id: 440, l: 441	
	str	 x0, [sp, #32696]	// id: 441, l: 442	
	ldr	 x0, [sp, #32576]	// id: 442, l: 443	
	ldr	 x0, [x0]	// id: 443, l: 444	
	str	 x0, [sp, #32712]	// id: 444, l: 445	
	ldr	 w0, [sp, #68]	// id: 445, l: 446	
	cmp	 w0, #0x1	// id: 446, l: 447	
	bne	 .L28	// id: 447, l: 448	
	ldrsw	 x0, [sp, #68]	// id: 448, l: 449	
	bl	 markBaskets	// id: 449, l: 450	
.L28:	// id: 450, l: 451	
	ldr	 x0, [sp, #32696]	// id: 451, l: 452	
	cmp	 x0, #0x0	// id: 452, l: 453	
	beq	 .L29	// id: 453, l: 454	
	ldr	 x0, [sp, #32648]	// id: 454, l: 455	
	ldr	 x0, [x0]	// id: 455, l: 456	
	add	 x1, x0, #0x1	// id: 456, l: 457	
	ldr	 x0, [sp, #32648]	// id: 457, l: 458	
	str	 x1, [x0]	// id: 458, l: 459	
	ldr	 x0, [sp, #32696]	// id: 459, l: 460	
	cmp	 x0, #0x0	// id: 460, l: 461	
	ble	 .L30	// id: 461, l: 462	
	ldr	 x0, [sp, #32712]	// id: 462, l: 463	
	ldr	 x0, [x0, #24]	// id: 463, l: 464	
	str	 x0, [sp, #32728]	// id: 464, l: 465	
	ldr	 x0, [sp, #32712]	// id: 465, l: 466	
	ldr	 x0, [x0, #16]	// id: 466, l: 467	
	str	 x0, [sp, #32720]	// id: 467, l: 468	
	b	 .L31	// id: 468, l: 469	
.L30:	// id: 469, l: 470	
	ldr	 x0, [sp, #32712]	// id: 470, l: 471	
	ldr	 x0, [x0, #16]	// id: 471, l: 472	
	str	 x0, [sp, #32728]	// id: 472, l: 473	
	ldr	 x0, [sp, #32712]	// id: 473, l: 474	
	ldr	 x0, [x0, #24]	// id: 474, l: 475	
	str	 x0, [sp, #32720]	// id: 475, l: 476	
.L31:	// id: 476, l: 477	
	mov	 x0, #0x1                   	// #1	// id: 477, l: 478	
	str	 x0, [sp, #32600]	// id: 478, l: 479	
	add	 x2, sp, #0x7000	// id: 479, l: 480	
	add	 x2, x2, #0xf48	// id: 480, l: 481	
	add	 x1, sp, #0x7000	// id: 481, l: 482	
	add	 x1, x1, #0xf50	// id: 482, l: 483	
	add	 x0, sp, #0x7000	// id: 483, l: 484	
	add	 x0, x0, #0xf58	// id: 484, l: 485	
	mov	 x4, x2	// id: 485, l: 486	
	ldr	 x3, [sp, #32720]	// id: 486, l: 487	
	ldr	 x2, [sp, #32728]	// id: 487, l: 488	
	bl	 primal_iminus	// id: 488, l: 489	
	str	 x0, [sp, #32632]	// id: 489, l: 490	
	ldr	 x0, [sp, #32632]	// id: 490, l: 491	
	cmp	 x0, #0x0	// id: 491, l: 492	
	bne	 .L32	// id: 492, l: 493	
	ldr	 x0, [sp, #32640]	// id: 493, l: 494	
	ldr	 x0, [x0]	// id: 494, l: 495	
	add	 x1, x0, #0x1	// id: 495, l: 496	
	ldr	 x0, [sp, #32640]	// id: 496, l: 497	
	str	 x1, [x0]	// id: 497, l: 498	
	ldr	 x0, [sp, #32712]	// id: 498, l: 499	
	ldrsh	 w0, [x0, #32]	// id: 499, l: 500	
	cmp	 w0, #0x2	// id: 500, l: 501	
	bne	 .L33	// id: 501, l: 502	
	ldr	 x0, [sp, #32712]	// id: 502, l: 503	
	mov	 w1, #0x1                   	// #1	// id: 503, l: 504	
	strh	 w1, [x0, #32]	// id: 504, l: 505	
	b	 .L34	// id: 505, l: 506	
.L33:	// id: 506, l: 507	
	ldr	 x0, [sp, #32712]	// id: 507, l: 508	
	mov	 w1, #0x2                   	// #2	// id: 508, l: 509	
	strh	 w1, [x0, #32]	// id: 509, l: 510	
.L34:	// id: 510, l: 511	
	ldr	 x0, [sp, #32600]	// id: 511, l: 512	
	cmp	 x0, #0x0	// id: 512, l: 513	
	beq	 .L21	// id: 513, l: 514	
	ldr	 x0, [sp, #32584]	// id: 514, l: 515	
	mov	 x2, x0	// id: 515, l: 516	
	ldr	 x1, [sp, #32720]	// id: 516, l: 517	
	ldr	 x0, [sp, #32728]	// id: 517, l: 518	
	bl	 primal_update_flow	// id: 518, l: 519	
	b	 .L21	// id: 519, l: 520	
.L32:	// id: 520, l: 521	
	ldr	 x0, [sp, #32592]	// id: 521, l: 522	
	cmp	 x0, #0x0	// id: 522, l: 523	
	beq	 .L35	// id: 523, l: 524	
	ldr	 x0, [sp, #32720]	// id: 524, l: 525	
	str	 x0, [sp, #32624]	// id: 525, l: 526	
	ldr	 x0, [sp, #32728]	// id: 526, l: 527	
	str	 x0, [sp, #32720]	// id: 527, l: 528	
	ldr	 x0, [sp, #32624]	// id: 528, l: 529	
	str	 x0, [sp, #32728]	// id: 529, l: 530	
.L35:	// id: 530, l: 531	
	ldr	 x0, [sp, #32632]	// id: 531, l: 532	
	ldr	 x0, [x0, #24]	// id: 532, l: 533	
	str	 x0, [sp, #32616]	// id: 533, l: 534	
	ldr	 x0, [sp, #32632]	// id: 534, l: 535	
	ldr	 x0, [x0, #48]	// id: 535, l: 536	
	str	 x0, [sp, #32608]	// id: 536, l: 537	
	ldr	 x0, [sp, #32632]	// id: 537, l: 538	
	ldr	 w0, [x0, #8]	// id: 538, l: 539	
	sxtw	 x1, w0	// id: 539, l: 540	
	ldr	 x0, [sp, #32592]	// id: 540, l: 541	
	cmp	 x1, x0	// id: 541, l: 542	
	beq	 .L36	// id: 542, l: 543	
	mov	 x0, #0x1                   	// #1	// id: 543, l: 544	
	str	 x0, [sp, #32704]	// id: 544, l: 545	
	b	 .L37	// id: 545, l: 546	
.L36:	// id: 546, l: 547	
	mov	 x0, #0x2                   	// #2	// id: 547, l: 548	
	str	 x0, [sp, #32704]	// id: 548, l: 549	
.L37:	// id: 549, l: 550	
	ldr	 x0, [sp, #32696]	// id: 550, l: 551	
	cmp	 x0, #0x0	// id: 551, l: 552	
	ble	 .L38	// id: 552, l: 553	
	ldr	 x0, [sp, #32600]	// id: 553, l: 554	
	mov	 x1, #0x1                   	// #1	// id: 554, l: 555	
	sub	 x0, x1, x0	// id: 555, l: 556	
	str	 x0, [sp, #32744]	// id: 556, l: 557	
	b	 .L39	// id: 557, l: 558	
.L38:	// id: 558, l: 559	
	ldr	 x0, [sp, #32600]	// id: 559, l: 560	
	str	 x0, [sp, #32744]	// id: 560, l: 561	
.L39:	// id: 561, l: 562	
	ldr	 x0, [sp, #32712]	// id: 562, l: 563	
	ldr	 x0, [x0, #16]	// id: 563, l: 564	
	ldr	 x1, [sp, #32728]	// id: 564, l: 565	
	cmp	 x1, x0	// id: 565, l: 566	
	bne	 .L40	// id: 566, l: 567	
	mov	 x0, #0x1                   	// #1	// id: 567, l: 568	
	str	 x0, [sp, #32736]	// id: 568, l: 569	
	b	 .L41	// id: 569, l: 570	
.L40:	// id: 570, l: 571	
	str	 xzr, [sp, #32736]	// id: 571, l: 572	
.L41:	// id: 572, l: 573	
	ldr	 x0, [sp, #32592]	// id: 573, l: 574	
	cmp	 x0, #0x0	// id: 574, l: 575	
	cset	 w0, eq  // eq = none	// id: 575, l: 576	
	and	 w0, w0, #0xff	// id: 576, l: 577	
	and	 x8, x0, #0xff	// id: 577, l: 578	
	ldr	 x2, [sp, #32600]	// id: 578, l: 579	
	ldr	 x0, [sp, #32584]	// id: 579, l: 580	
	ldr	 x1, [sp, #72]	// id: 580, l: 581	
	ldr	 x1, [x1, #512]	// id: 581, l: 582	
	str	 x1, [sp, #24]	// id: 582, l: 583	
	ldr	 x1, [sp, #32696]	// id: 583, l: 584	
	str	 x1, [sp, #16]	// id: 584, l: 585	
	ldr	 x1, [sp, #32712]	// id: 585, l: 586	
	str	 x1, [sp, #8]	// id: 586, l: 587	
	str	 x0, [sp]	// id: 587, l: 588	
	ldr	 x7, [sp, #32616]	// id: 588, l: 589	
	ldr	 x6, [sp, #32632]	// id: 589, l: 590	
	ldr	 x5, [sp, #32720]	// id: 590, l: 591	
	ldr	 x4, [sp, #32728]	// id: 591, l: 592	
	ldr	 x3, [sp, #32744]	// id: 592, l: 593	
	ldr	 x1, [sp, #32736]	// id: 593, l: 594	
	mov	 x0, x8	// id: 594, l: 595	
	bl	 update_tree	// id: 595, l: 596	
	ldr	 x0, [sp, #32712]	// id: 596, l: 597	
	strh	 wzr, [x0, #32]	// id: 597, l: 598	
	ldr	 x0, [sp, #32704]	// id: 598, l: 599	
	sxth	 w1, w0	// id: 599, l: 600	
	ldr	 x0, [sp, #32608]	// id: 600, l: 601	
	strh	 w1, [x0, #32]	// id: 601, l: 602	
	b	 .L21	// id: 602, l: 603	
.L29:	// id: 603, l: 604	
	adrp	 x0, opt	// id: 604, l: 605	
	add	 x0, x0, :lo12:opt	// id: 605, l: 606	
	mov	 x1, #0x1                   	// #1	// id: 606, l: 607	
	str	 x1, [x0]	// id: 607, l: 608	
.L21:	// id: 608, l: 609	
	adrp	 x0, opt	// id: 609, l: 610	
	add	 x0, x0, :lo12:opt	// id: 610, l: 611	
	ldr	 x0, [x0]	// id: 611, l: 612	
	cmp	 x0, #0x0	// id: 612, l: 613	
	beq	 .L42	// id: 613, l: 614	
	nop		// id: 614, l: 615	
	nop		// id: 615, l: 616	
	ldr	 x19, [sp, #48]	// id: 616, l: 617	
	ldp	 x29, x30, [sp, #32]	// id: 617, l: 618	
	mov	 x12, #0x7ff0                	// #32752	// id: 618, l: 619	
	add	 sp, sp, x12	// id: 619, l: 620	
	.cfi_restore	29	// id: 620, l: 621	
	.cfi_restore	30	// id: 621, l: 622	
	.cfi_restore	19	// id: 622, l: 623	
	.cfi_def_cfa_offset	0	// id: 623, l: 624	
	ret		// id: 624, l: 625	
	.cfi_endproc		// id: 625, l: 626	
.LFE2:	// id: 626, l: 627	
	.size	master, .-master	// id: 627, l: 628	
	.p2align	2, , 0	// id: 628, l: 629	
	.globl	primal_net_simplex	// id: 629, l: 630	
	.type	primal_net_simplex, %function	// id: 630, l: 631	
primal_net_simplex:	// id: 631, l: 632	
.LFB3:	// id: 632, l: 633	
	.cfi_startproc		// id: 633, l: 634	
	stp	 x29, x30, [sp, #-48]!	// id: 634, l: 635	
	.cfi_def_cfa_offset	48	// id: 635, l: 636	
	.cfi_offset	29, -48	// id: 636, l: 637	
	.cfi_offset	30, -40	// id: 637, l: 638	
	mov	 x29, sp	// id: 638, l: 639	
	str	 x0, [sp, #24]	// id: 639, l: 640	
	mov	 w0, #0x1                   	// #1	// id: 640, l: 641	
	str	 w0, [sp, #44]	// id: 641, l: 642	
	ldrsw	 x0, [sp, #44]	// id: 642, l: 643	
	mov	 x1, #0x8                   	// #8	// id: 643, l: 644	
	bl	 calloc	// id: 644, l: 645	
	mov	 x1, x0	// id: 645, l: 646	
	adrp	 x0, perm_p	// id: 646, l: 647	
	add	 x0, x0, :lo12:perm_p	// id: 647, l: 648	
	str	 x1, [x0]	// id: 648, l: 649	
	ldrsw	 x0, [sp, #44]	// id: 649, l: 650	
	mov	 x1, #0x8                   	// #8	// id: 650, l: 651	
	bl	 calloc	// id: 651, l: 652	
	mov	 x1, x0	// id: 652, l: 653	
	adrp	 x0, opt_basket	// id: 653, l: 654	
	add	 x0, x0, :lo12:opt_basket	// id: 654, l: 655	
	str	 x1, [x0]	// id: 655, l: 656	
	ldrsw	 x0, [sp, #44]	// id: 656, l: 657	
	mov	 x1, #0x8                   	// #8	// id: 657, l: 658	
	bl	 calloc	// id: 658, l: 659	
	mov	 x1, x0	// id: 659, l: 660	
	adrp	 x0, basket_sizes	// id: 660, l: 661	
	add	 x0, x0, :lo12:basket_sizes	// id: 661, l: 662	
	str	 x1, [x0]	// id: 662, l: 663	
	mov	 w1, #0xfa0                 	// #4000	// id: 663, l: 664	
	ldr	 w0, [sp, #44]	// id: 664, l: 665	
	sdiv	 w0, w1, w0	// id: 665, l: 666	
	add	 w1, w0, #0x105	// id: 666, l: 667	
	ldr	 w0, [sp, #44]	// id: 667, l: 668	
	mul	 w0, w1, w0	// id: 668, l: 669	
	sxtw	 x0, w0	// id: 669, l: 670	
	mov	 x1, #0x20                  	// #32	// id: 670, l: 671	
	bl	 calloc	// id: 671, l: 672	
	mov	 x1, x0	// id: 672, l: 673	
	adrp	 x0, basket	// id: 673, l: 674	
	add	 x0, x0, :lo12:basket	// id: 674, l: 675	
	str	 x1, [x0]	// id: 675, l: 676	
	ldr	 x0, [sp, #24]	// id: 676, l: 677	
	ldr	 x0, [x0, #568]	// id: 677, l: 678	
	mov	 x1, x0	// id: 678, l: 679	
	ldr	 x0, [sp, #24]	// id: 679, l: 680	
	bl	 set_static_vars	// id: 680, l: 681	
	str	 wzr, [sp, #40]	// id: 681, l: 682	
	ldr	 w0, [sp, #40]	// id: 682, l: 683	
	cmp	 w0, #0x0	// id: 683, l: 684	
	bne	 .L44	// id: 684, l: 685	
	ldr	 w1, [sp, #44]	// id: 685, l: 686	
	ldr	 x0, [sp, #24]	// id: 686, l: 687	
	bl	 master	// id: 687, l: 688	
	b	 .L45	// id: 688, l: 689	
.L44:	// id: 689, l: 690	
	ldr	 w2, [sp, #44]	// id: 690, l: 691	
	ldr	 w1, [sp, #40]	// id: 691, l: 692	
	ldr	 x0, [sp, #24]	// id: 692, l: 693	
	bl	 worker	// id: 693, l: 694	
.L45:	// id: 694, l: 695	
	ldr	 x0, [sp, #24]	// id: 695, l: 696	
	bl	 primal_feasible	// id: 696, l: 697	
	ldr	 x0, [sp, #24]	// id: 697, l: 698	
	bl	 dual_feasible	// id: 698, l: 699	
	adrp	 x0, opt	// id: 699, l: 700	
	add	 x0, x0, :lo12:opt	// id: 700, l: 701	
	str	 xzr, [x0]	// id: 701, l: 702	
	adrp	 x0, perm_p	// id: 702, l: 703	
	add	 x0, x0, :lo12:perm_p	// id: 703, l: 704	
	ldr	 x0, [x0]	// id: 704, l: 705	
	bl	 free	// id: 705, l: 706	
	adrp	 x0, opt_basket	// id: 706, l: 707	
	add	 x0, x0, :lo12:opt_basket	// id: 707, l: 708	
	ldr	 x0, [x0]	// id: 708, l: 709	
	bl	 free	// id: 709, l: 710	
	adrp	 x0, basket_sizes	// id: 710, l: 711	
	add	 x0, x0, :lo12:basket_sizes	// id: 711, l: 712	
	ldr	 x0, [x0]	// id: 712, l: 713	
	bl	 free	// id: 713, l: 714	
	adrp	 x0, basket	// id: 714, l: 715	
	add	 x0, x0, :lo12:basket	// id: 715, l: 716	
	ldr	 x0, [x0]	// id: 716, l: 717	
	bl	 free	// id: 717, l: 718	
	mov	 x0, #0x0                   	// #0	// id: 718, l: 719	
	ldp	 x29, x30, [sp], #48	// id: 719, l: 720	
	.cfi_restore	30	// id: 720, l: 721	
	.cfi_restore	29	// id: 721, l: 722	
	.cfi_def_cfa_offset	0	// id: 722, l: 723	
	ret		// id: 723, l: 724	
	.cfi_endproc		// id: 724, l: 725	
.LFE3:	// id: 725, l: 726	
	.size	primal_net_simplex, .-primal_net_simplex	// id: 726, l: 727	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 727, l: 728	
	.section	.note.GNU-stack, "",@progbits	// id: 728, l: 729	
