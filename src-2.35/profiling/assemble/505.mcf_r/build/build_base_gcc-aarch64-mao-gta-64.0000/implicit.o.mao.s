	.arch	armv8-a	// id: 0, l: 1	
	.file	"implicit.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.type	arc_compare, %function	// id: 4, l: 5	
arc_compare:	// id: 5, l: 6	
.LFB0:	// id: 6, l: 7	
	.cfi_startproc		// id: 7, l: 8	
	sub	 sp, sp, #0x10	// id: 8, l: 9	
	.cfi_def_cfa_offset	16	// id: 9, l: 10	
	str	 x0, [sp, #8]	// id: 10, l: 11	
	str	 x1, [sp]	// id: 11, l: 12	
	ldr	 x0, [sp, #8]	// id: 12, l: 13	
	ldr	 x0, [x0]	// id: 13, l: 14	
	ldr	 x1, [x0, #56]	// id: 14, l: 15	
	ldr	 x0, [sp]	// id: 15, l: 16	
	ldr	 x0, [x0]	// id: 16, l: 17	
	ldr	 x0, [x0, #56]	// id: 17, l: 18	
	cmp	 x1, x0	// id: 18, l: 19	
	ble	 .L2	// id: 19, l: 20	
	mov	 w0, #0x1                   	// #1	// id: 20, l: 21	
	b	 .L3	// id: 21, l: 22	
.L2:	// id: 22, l: 23	
	ldr	 x0, [sp, #8]	// id: 23, l: 24	
	ldr	 x0, [x0]	// id: 24, l: 25	
	ldr	 x1, [x0, #56]	// id: 25, l: 26	
	ldr	 x0, [sp]	// id: 26, l: 27	
	ldr	 x0, [x0]	// id: 27, l: 28	
	ldr	 x0, [x0, #56]	// id: 28, l: 29	
	cmp	 x1, x0	// id: 29, l: 30	
	bge	 .L4	// id: 30, l: 31	
	mov	 w0, #0xffffffff            	// #-1	// id: 31, l: 32	
	b	 .L3	// id: 32, l: 33	
.L4:	// id: 33, l: 34	
	ldr	 x0, [sp, #8]	// id: 34, l: 35	
	ldr	 x0, [x0]	// id: 35, l: 36	
	ldr	 w1, [x0]	// id: 36, l: 37	
	ldr	 x0, [sp]	// id: 37, l: 38	
	ldr	 x0, [x0]	// id: 38, l: 39	
	ldr	 w0, [x0]	// id: 39, l: 40	
	cmp	 w1, w0	// id: 40, l: 41	
	bge	 .L5	// id: 41, l: 42	
	mov	 w0, #0xffffffff            	// #-1	// id: 42, l: 43	
	b	 .L3	// id: 43, l: 44	
.L5:	// id: 44, l: 45	
	mov	 w0, #0x1                   	// #1	// id: 45, l: 46	
.L3:	// id: 46, l: 47	
	add	 sp, sp, #0x10	// id: 47, l: 48	
	.cfi_def_cfa_offset	0	// id: 48, l: 49	
	ret		// id: 49, l: 50	
	.cfi_endproc		// id: 50, l: 51	
.LFE0:	// id: 51, l: 52	
	.size	arc_compare, .-arc_compare	// id: 52, l: 53	
	.p2align	2, , 0	// id: 53, l: 54	
	.globl	refreshArcPointers	// id: 54, l: 55	
	.type	refreshArcPointers, %function	// id: 55, l: 56	
refreshArcPointers:	// id: 56, l: 57	
.LFB1:	// id: 57, l: 58	
	.cfi_startproc		// id: 58, l: 59	
	stp	 x29, x30, [sp, #-64]!	// id: 59, l: 60	
	.cfi_def_cfa_offset	64	// id: 60, l: 61	
	.cfi_offset	29, -64	// id: 61, l: 62	
	.cfi_offset	30, -56	// id: 62, l: 63	
	mov	 x29, sp	// id: 63, l: 64	
	str	 x0, [sp, #40]	// id: 64, l: 65	
	str	 x1, [sp, #32]	// id: 65, l: 66	
	str	 x2, [sp, #24]	// id: 66, l: 67	
	str	 xzr, [sp, #56]	// id: 67, l: 68	
	b	 .L7	// id: 68, l: 69	
.L11:	// id: 69, l: 70	
	ldr	 x0, [sp, #40]	// id: 70, l: 71	
	ldr	 x2, [x0, #552]	// id: 71, l: 72	
	ldr	 x1, [sp, #56]	// id: 72, l: 73	
	mov	 x0, x1	// id: 73, l: 74	
	lsl	 x0, x0, #1	// id: 74, l: 75	
	add	 x0, x0, x1	// id: 75, l: 76	
	lsl	 x0, x0, #2	// id: 76, l: 77	
	add	 x0, x0, x1	// id: 77, l: 78	
	lsl	 x0, x0, #3	// id: 78, l: 79	
	add	 x0, x2, x0	// id: 79, l: 80	
	str	 x0, [sp, #48]	// id: 80, l: 81	
	ldr	 x0, [sp, #48]	// id: 81, l: 82	
	ldr	 x0, [x0, #48]	// id: 82, l: 83	
	cmp	 x0, #0x0	// id: 83, l: 84	
	beq	 .L8	// id: 84, l: 85	
	ldr	 x0, [sp, #48]	// id: 85, l: 86	
	ldr	 x0, [x0, #48]	// id: 86, l: 87	
	ldr	 w0, [x0]	// id: 87, l: 88	
	cmp	 w0, #0x0	// id: 88, l: 89	
	blt	 .L8	// id: 89, l: 90	
	ldr	 x0, [sp, #48]	// id: 90, l: 91	
	ldr	 x0, [x0, #48]	// id: 91, l: 92	
	ldr	 w0, [x0]	// id: 92, l: 93	
	sxtw	 x0, w0	// id: 93, l: 94	
	ldr	 x2, [sp, #32]	// id: 94, l: 95	
	mov	 x1, x0	// id: 95, l: 96	
	ldr	 x0, [sp, #40]	// id: 96, l: 97	
	blr	 x2	// id: 97, l: 98	
	mov	 x1, x0	// id: 98, l: 99	
	mov	 x0, x1	// id: 99, l: 100	
	lsl	 x0, x0, #3	// id: 100, l: 101	
	add	 x0, x0, x1	// id: 101, l: 102	
	lsl	 x0, x0, #3	// id: 102, l: 103	
	mov	 x1, x0	// id: 103, l: 104	
	ldr	 x0, [sp, #24]	// id: 104, l: 105	
	add	 x1, x0, x1	// id: 105, l: 106	
	ldr	 x0, [sp, #48]	// id: 106, l: 107	
	str	 x1, [x0, #48]	// id: 107, l: 108	
.L8:	// id: 108, l: 109	
	ldr	 x0, [sp, #48]	// id: 109, l: 110	
	ldr	 x0, [x0, #64]	// id: 110, l: 111	
	cmp	 x0, #0x0	// id: 111, l: 112	
	beq	 .L9	// id: 112, l: 113	
	ldr	 x0, [sp, #48]	// id: 113, l: 114	
	ldr	 x0, [x0, #64]	// id: 114, l: 115	
	ldr	 w0, [x0]	// id: 115, l: 116	
	cmp	 w0, #0x0	// id: 116, l: 117	
	blt	 .L9	// id: 117, l: 118	
	ldr	 x0, [sp, #48]	// id: 118, l: 119	
	ldr	 x0, [x0, #64]	// id: 119, l: 120	
	ldr	 w0, [x0]	// id: 120, l: 121	
	sxtw	 x0, w0	// id: 121, l: 122	
	ldr	 x2, [sp, #32]	// id: 122, l: 123	
	mov	 x1, x0	// id: 123, l: 124	
	ldr	 x0, [sp, #40]	// id: 124, l: 125	
	blr	 x2	// id: 125, l: 126	
	mov	 x1, x0	// id: 126, l: 127	
	mov	 x0, x1	// id: 127, l: 128	
	lsl	 x0, x0, #3	// id: 128, l: 129	
	add	 x0, x0, x1	// id: 129, l: 130	
	lsl	 x0, x0, #3	// id: 130, l: 131	
	mov	 x1, x0	// id: 131, l: 132	
	ldr	 x0, [sp, #24]	// id: 132, l: 133	
	add	 x1, x0, x1	// id: 133, l: 134	
	ldr	 x0, [sp, #48]	// id: 134, l: 135	
	str	 x1, [x0, #64]	// id: 135, l: 136	
.L9:	// id: 136, l: 137	
	ldr	 x0, [sp, #48]	// id: 137, l: 138	
	ldr	 x0, [x0, #56]	// id: 138, l: 139	
	cmp	 x0, #0x0	// id: 139, l: 140	
	beq	 .L10	// id: 140, l: 141	
	ldr	 x0, [sp, #48]	// id: 141, l: 142	
	ldr	 x0, [x0, #56]	// id: 142, l: 143	
	ldr	 w0, [x0]	// id: 143, l: 144	
	cmp	 w0, #0x0	// id: 144, l: 145	
	blt	 .L10	// id: 145, l: 146	
	ldr	 x0, [sp, #48]	// id: 146, l: 147	
	ldr	 x0, [x0, #56]	// id: 147, l: 148	
	ldr	 w0, [x0]	// id: 148, l: 149	
	sxtw	 x0, w0	// id: 149, l: 150	
	ldr	 x2, [sp, #32]	// id: 150, l: 151	
	mov	 x1, x0	// id: 151, l: 152	
	ldr	 x0, [sp, #40]	// id: 152, l: 153	
	blr	 x2	// id: 153, l: 154	
	mov	 x1, x0	// id: 154, l: 155	
	mov	 x0, x1	// id: 155, l: 156	
	lsl	 x0, x0, #3	// id: 156, l: 157	
	add	 x0, x0, x1	// id: 157, l: 158	
	lsl	 x0, x0, #3	// id: 158, l: 159	
	mov	 x1, x0	// id: 159, l: 160	
	ldr	 x0, [sp, #24]	// id: 160, l: 161	
	add	 x1, x0, x1	// id: 161, l: 162	
	ldr	 x0, [sp, #48]	// id: 162, l: 163	
	str	 x1, [x0, #56]	// id: 163, l: 164	
.L10:	// id: 164, l: 165	
	ldr	 x0, [sp, #56]	// id: 165, l: 166	
	add	 x0, x0, #0x1	// id: 166, l: 167	
	str	 x0, [sp, #56]	// id: 167, l: 168	
.L7:	// id: 168, l: 169	
	ldr	 x0, [sp, #40]	// id: 169, l: 170	
	ldr	 x0, [x0, #400]	// id: 170, l: 171	
	ldr	 x1, [sp, #56]	// id: 171, l: 172	
	cmp	 x1, x0	// id: 172, l: 173	
	ble	 .L11	// id: 173, l: 174	
	mov	 x0, #0x0                   	// #0	// id: 174, l: 175	
	ldp	 x29, x30, [sp], #64	// id: 175, l: 176	
	.cfi_restore	30	// id: 176, l: 177	
	.cfi_restore	29	// id: 177, l: 178	
	.cfi_def_cfa_offset	0	// id: 178, l: 179	
	ret		// id: 179, l: 180	
	.cfi_endproc		// id: 180, l: 181	
.LFE1:	// id: 181, l: 182	
	.size	refreshArcPointers, .-refreshArcPointers	// id: 182, l: 183	
	.p2align	2, , 0	// id: 183, l: 184	
	.globl	refreshPositions	// id: 184, l: 185	
	.type	refreshPositions, %function	// id: 185, l: 186	
refreshPositions:	// id: 186, l: 187	
.LFB2:	// id: 187, l: 188	
	.cfi_startproc		// id: 188, l: 189	
	stp	 x29, x30, [sp, #-80]!	// id: 189, l: 190	
	.cfi_def_cfa_offset	80	// id: 190, l: 191	
	.cfi_offset	29, -80	// id: 191, l: 192	
	.cfi_offset	30, -72	// id: 192, l: 193	
	mov	 x29, sp	// id: 193, l: 194	
	str	 x0, [sp, #40]	// id: 194, l: 195	
	str	 x1, [sp, #32]	// id: 195, l: 196	
	str	 x2, [sp, #24]	// id: 196, l: 197	
	ldr	 x0, [sp, #40]	// id: 197, l: 198	
	ldr	 x0, [x0, #584]	// id: 198, l: 199	
	str	 x0, [sp, #64]	// id: 199, l: 200	
	ldr	 x2, [sp, #64]	// id: 200, l: 201	
	ldr	 x1, [sp, #32]	// id: 201, l: 202	
	ldr	 x0, [sp, #40]	// id: 202, l: 203	
	bl	 refreshArcPointers	// id: 203, l: 204	
	str	 xzr, [sp, #72]	// id: 204, l: 205	
	b	 .L14	// id: 205, l: 206	
.L17:	// id: 206, l: 207	
	ldr	 x0, [sp, #40]	// id: 207, l: 208	
	ldr	 x2, [x0, #568]	// id: 208, l: 209	
	ldr	 x1, [sp, #72]	// id: 209, l: 210	
	mov	 x0, x1	// id: 210, l: 211	
	lsl	 x0, x0, #3	// id: 211, l: 212	
	add	 x0, x0, x1	// id: 212, l: 213	
	lsl	 x0, x0, #3	// id: 213, l: 214	
	add	 x0, x2, x0	// id: 214, l: 215	
	str	 x0, [sp, #56]	// id: 215, l: 216	
	ldr	 x0, [sp, #56]	// id: 216, l: 217	
	ldr	 w0, [x0]	// id: 217, l: 218	
	cmp	 w0, #0x0	// id: 218, l: 219	
	blt	 .L19	// id: 219, l: 220	
	ldr	 x0, [sp, #56]	// id: 220, l: 221	
	ldr	 w0, [x0]	// id: 221, l: 222	
	sxtw	 x0, w0	// id: 222, l: 223	
	ldr	 x2, [sp, #32]	// id: 223, l: 224	
	mov	 x1, x0	// id: 224, l: 225	
	ldr	 x0, [sp, #40]	// id: 225, l: 226	
	blr	 x2	// id: 226, l: 227	
	str	 x0, [sp, #48]	// id: 227, l: 228	
	ldr	 x1, [sp, #48]	// id: 228, l: 229	
	mov	 x0, x1	// id: 229, l: 230	
	lsl	 x0, x0, #3	// id: 230, l: 231	
	add	 x0, x0, x1	// id: 231, l: 232	
	lsl	 x0, x0, #3	// id: 232, l: 233	
	mov	 x1, x0	// id: 233, l: 234	
	ldr	 x0, [sp, #64]	// id: 234, l: 235	
	add	 x0, x0, x1	// id: 235, l: 236	
	ldr	 x1, [sp, #56]	// id: 236, l: 237	
	ldp	 x2, x3, [x1]	// id: 237, l: 238	
	stp	 x2, x3, [x0]	// id: 238, l: 239	
	ldp	 x2, x3, [x1, #16]	// id: 239, l: 240	
	stp	 x2, x3, [x0, #16]	// id: 240, l: 241	
	ldp	 x2, x3, [x1, #32]	// id: 241, l: 242	
	stp	 x2, x3, [x0, #32]	// id: 242, l: 243	
	ldp	 x2, x3, [x1, #48]	// id: 243, l: 244	
	stp	 x2, x3, [x0, #48]	// id: 244, l: 245	
	ldr	 x1, [x1, #64]	// id: 245, l: 246	
	str	 x1, [x0, #64]	// id: 246, l: 247	
	b	 .L16	// id: 247, l: 248	
.L19:	// id: 248, l: 249	
	nop		// id: 249, l: 250	
.L16:	// id: 250, l: 251	
	ldr	 x0, [sp, #72]	// id: 251, l: 252	
	add	 x0, x0, #0x1	// id: 252, l: 253	
	str	 x0, [sp, #72]	// id: 253, l: 254	
.L14:	// id: 254, l: 255	
	ldr	 x1, [sp, #72]	// id: 255, l: 256	
	ldr	 x0, [sp, #24]	// id: 256, l: 257	
	cmp	 x1, x0	// id: 257, l: 258	
	blt	 .L17	// id: 258, l: 259	
	ldr	 x0, [sp, #40]	// id: 259, l: 260	
	ldr	 x0, [x0, #568]	// id: 260, l: 261	
	str	 x0, [sp, #56]	// id: 261, l: 262	
	ldr	 x0, [sp, #40]	// id: 262, l: 263	
	ldr	 x1, [sp, #64]	// id: 263, l: 264	
	str	 x1, [x0, #568]	// id: 264, l: 265	
	ldr	 x0, [sp, #40]	// id: 265, l: 266	
	ldr	 x1, [sp, #56]	// id: 266, l: 267	
	str	 x1, [x0, #584]	// id: 267, l: 268	
	ldr	 x1, [sp, #24]	// id: 268, l: 269	
	mov	 x0, x1	// id: 269, l: 270	
	lsl	 x0, x0, #3	// id: 270, l: 271	
	add	 x0, x0, x1	// id: 271, l: 272	
	lsl	 x0, x0, #3	// id: 272, l: 273	
	mov	 x1, x0	// id: 273, l: 274	
	ldr	 x0, [sp, #64]	// id: 274, l: 275	
	add	 x1, x0, x1	// id: 275, l: 276	
	ldr	 x0, [sp, #40]	// id: 276, l: 277	
	str	 x1, [x0, #576]	// id: 277, l: 278	
	mov	 x0, #0x0                   	// #0	// id: 278, l: 279	
	ldp	 x29, x30, [sp], #80	// id: 279, l: 280	
	.cfi_restore	30	// id: 280, l: 281	
	.cfi_restore	29	// id: 281, l: 282	
	.cfi_def_cfa_offset	0	// id: 282, l: 283	
	ret		// id: 283, l: 284	
	.cfi_endproc		// id: 284, l: 285	
.LFE2:	// id: 285, l: 286	
	.size	refreshPositions, .-refreshPositions	// id: 286, l: 287	
	.p2align	2, , 0	// id: 287, l: 288	
	.globl	marc_arcs	// id: 288, l: 289	
	.type	marc_arcs, %function	// id: 289, l: 290	
marc_arcs:	// id: 290, l: 291	
.LFB3:	// id: 291, l: 292	
	.cfi_startproc		// id: 292, l: 293	
	stp	 x29, x30, [sp, #-128]!	// id: 293, l: 294	
	.cfi_def_cfa_offset	128	// id: 294, l: 295	
	.cfi_offset	29, -128	// id: 295, l: 296	
	.cfi_offset	30, -120	// id: 296, l: 297	
	mov	 x29, sp	// id: 297, l: 298	
	str	 x0, [sp, #40]	// id: 298, l: 299	
	str	 x1, [sp, #32]	// id: 299, l: 300	
	str	 x2, [sp, #24]	// id: 300, l: 301	
	str	 x3, [sp, #16]	// id: 301, l: 302	
	str	 xzr, [sp, #112]	// id: 302, l: 303	
	str	 xzr, [sp, #104]	// id: 303, l: 304	
	mov	 x0, #0x1                   	// #1	// id: 304, l: 305	
	str	 x0, [sp, #80]	// id: 305, l: 306	
	ldr	 x0, [sp, #80]	// id: 306, l: 307	
	lsl	 x0, x0, #3	// id: 307, l: 308	
	bl	 malloc	// id: 308, l: 309	
	str	 x0, [sp, #72]	// id: 309, l: 310	
	ldr	 x0, [sp, #80]	// id: 310, l: 311	
	lsl	 x0, x0, #3	// id: 311, l: 312	
	bl	 malloc	// id: 312, l: 313	
	str	 x0, [sp, #64]	// id: 313, l: 314	
	ldr	 x0, [sp, #40]	// id: 314, l: 315	
	ldr	 x1, [x0, #408]	// id: 315, l: 316	
	mov	 x0, #0x3a98                	// #15000	// id: 316, l: 317	
	cmp	 x1, x0	// id: 317, l: 318	
	bgt	 .L21	// id: 318, l: 319	
	ldr	 x0, [sp, #40]	// id: 319, l: 320	
	ldr	 x1, [x0, #448]	// id: 320, l: 321	
	mov	 x0, #0xffffffffffffbdc0    	// #-16960	// id: 321, l: 322	
	movk	 x0, #0xfff0, lsl #16	// id: 322, l: 323	
	add	 x0, x1, x0	// id: 323, l: 324	
	str	 x0, [sp, #120]	// id: 324, l: 325	
	b	 .L22	// id: 325, l: 326	
.L21:	// id: 326, l: 327	
	ldr	 x0, [sp, #40]	// id: 327, l: 328	
	ldr	 x1, [x0, #448]	// id: 328, l: 329	
	mov	 x0, #0xfffffffffffff700    	// #-2304	// id: 329, l: 330	
	movk	 x0, #0xffc2, lsl #16	// id: 330, l: 331	
	add	 x0, x1, x0	// id: 331, l: 332	
	str	 x0, [sp, #120]	// id: 332, l: 333	
.L22:	// id: 333, l: 334	
	ldr	 x0, [sp, #32]	// id: 334, l: 335	
	str	 xzr, [x0]	// id: 335, l: 336	
	str	 xzr, [sp, #88]	// id: 336, l: 337	
	b	 .L23	// id: 337, l: 338	
.L24:	// id: 338, l: 339	
	ldr	 x0, [sp, #32]	// id: 339, l: 340	
	ldr	 x1, [x0]	// id: 340, l: 341	
	ldr	 x0, [sp, #88]	// id: 341, l: 342	
	lsl	 x0, x0, #3	// id: 342, l: 343	
	ldr	 x2, [sp, #24]	// id: 343, l: 344	
	add	 x0, x2, x0	// id: 344, l: 345	
	ldr	 x0, [x0]	// id: 345, l: 346	
	add	 x1, x1, x0	// id: 346, l: 347	
	ldr	 x0, [sp, #32]	// id: 347, l: 348	
	str	 x1, [x0]	// id: 348, l: 349	
	ldr	 x0, [sp, #88]	// id: 349, l: 350	
	lsl	 x0, x0, #3	// id: 350, l: 351	
	ldr	 x1, [sp, #16]	// id: 351, l: 352	
	add	 x1, x1, x0	// id: 352, l: 353	
	ldr	 x0, [sp, #88]	// id: 353, l: 354	
	lsl	 x0, x0, #3	// id: 354, l: 355	
	ldr	 x2, [sp, #72]	// id: 355, l: 356	
	add	 x0, x2, x0	// id: 356, l: 357	
	ldr	 x1, [x1]	// id: 357, l: 358	
	str	 x1, [x0]	// id: 358, l: 359	
	ldr	 x0, [sp, #88]	// id: 359, l: 360	
	lsl	 x0, x0, #3	// id: 360, l: 361	
	ldr	 x1, [sp, #64]	// id: 361, l: 362	
	add	 x0, x1, x0	// id: 362, l: 363	
	str	 xzr, [x0]	// id: 363, l: 364	
	ldr	 x0, [sp, #88]	// id: 364, l: 365	
	add	 x0, x0, #0x1	// id: 365, l: 366	
	str	 x0, [sp, #88]	// id: 366, l: 367	
.L23:	// id: 367, l: 368	
	ldr	 x1, [sp, #88]	// id: 368, l: 369	
	ldr	 x0, [sp, #80]	// id: 369, l: 370	
	cmp	 x1, x0	// id: 370, l: 371	
	blt	 .L24	// id: 371, l: 372	
	ldr	 x0, [sp, #40]	// id: 372, l: 373	
	ldr	 x0, [x0, #424]	// id: 373, l: 374	
	str	 x0, [sp, #96]	// id: 374, l: 375	
	b	 .L25	// id: 375, l: 376	
.L33:	// id: 376, l: 377	
	ldr	 x0, [sp, #64]	// id: 377, l: 378	
	ldr	 x1, [x0]	// id: 378, l: 379	
	ldr	 x0, [sp, #24]	// id: 379, l: 380	
	ldr	 x0, [x0]	// id: 380, l: 381	
	cmp	 x1, x0	// id: 381, l: 382	
	bge	 .L26	// id: 382, l: 383	
	ldr	 x0, [sp, #72]	// id: 383, l: 384	
	ldr	 x0, [x0]	// id: 384, l: 385	
	ldr	 x0, [x0]	// id: 385, l: 386	
	str	 x0, [sp, #56]	// id: 386, l: 387	
	str	 xzr, [sp, #104]	// id: 387, l: 388	
	b	 .L27	// id: 388, l: 389	
.L26:	// id: 389, l: 390	
	str	 xzr, [sp, #56]	// id: 390, l: 391	
.L27:	// id: 391, l: 392	
	mov	 x0, #0x1                   	// #1	// id: 392, l: 393	
	str	 x0, [sp, #88]	// id: 393, l: 394	
	b	 .L28	// id: 394, l: 395	
.L31:	// id: 395, l: 396	
	ldr	 x0, [sp, #88]	// id: 396, l: 397	
	lsl	 x0, x0, #3	// id: 397, l: 398	
	ldr	 x1, [sp, #64]	// id: 398, l: 399	
	add	 x0, x1, x0	// id: 399, l: 400	
	ldr	 x1, [x0]	// id: 400, l: 401	
	ldr	 x0, [sp, #88]	// id: 401, l: 402	
	lsl	 x0, x0, #3	// id: 402, l: 403	
	ldr	 x2, [sp, #24]	// id: 403, l: 404	
	add	 x0, x2, x0	// id: 404, l: 405	
	ldr	 x0, [x0]	// id: 405, l: 406	
	cmp	 x1, x0	// id: 406, l: 407	
	bge	 .L29	// id: 407, l: 408	
	ldr	 x0, [sp, #56]	// id: 408, l: 409	
	cmp	 x0, #0x0	// id: 409, l: 410	
	beq	 .L30	// id: 410, l: 411	
	ldr	 x0, [sp, #88]	// id: 411, l: 412	
	lsl	 x0, x0, #3	// id: 412, l: 413	
	ldr	 x1, [sp, #72]	// id: 413, l: 414	
	add	 x0, x1, x0	// id: 414, l: 415	
	ldr	 x0, [x0]	// id: 415, l: 416	
	add	 x1, sp, #0x38	// id: 416, l: 417	
	bl	 arc_compare	// id: 417, l: 418	
	cmp	 w0, #0x0	// id: 418, l: 419	
	bge	 .L29	// id: 419, l: 420	
.L30:	// id: 420, l: 421	
	ldr	 x0, [sp, #88]	// id: 421, l: 422	
	lsl	 x0, x0, #3	// id: 422, l: 423	
	ldr	 x1, [sp, #72]	// id: 423, l: 424	
	add	 x0, x1, x0	// id: 424, l: 425	
	ldr	 x0, [x0]	// id: 425, l: 426	
	ldr	 x0, [x0]	// id: 426, l: 427	
	str	 x0, [sp, #56]	// id: 427, l: 428	
	ldr	 x0, [sp, #88]	// id: 428, l: 429	
	str	 x0, [sp, #104]	// id: 429, l: 430	
.L29:	// id: 430, l: 431	
	ldr	 x0, [sp, #88]	// id: 431, l: 432	
	add	 x0, x0, #0x1	// id: 432, l: 433	
	str	 x0, [sp, #88]	// id: 433, l: 434	
.L28:	// id: 434, l: 435	
	ldr	 x1, [sp, #88]	// id: 435, l: 436	
	ldr	 x0, [sp, #80]	// id: 436, l: 437	
	cmp	 x1, x0	// id: 437, l: 438	
	blt	 .L31	// id: 438, l: 439	
	ldr	 x0, [sp, #96]	// id: 439, l: 440	
	add	 x1, x0, #0x1	// id: 440, l: 441	
	str	 x1, [sp, #96]	// id: 441, l: 442	
	ldr	 x1, [sp, #56]	// id: 442, l: 443	
	str	 w0, [x1]	// id: 443, l: 444	
	ldr	 x0, [sp, #56]	// id: 444, l: 445	
	mov	 x1, #0x1                   	// #1	// id: 445, l: 446	
	str	 x1, [x0, #56]	// id: 446, l: 447	
	ldr	 x0, [sp, #112]	// id: 447, l: 448	
	add	 x0, x0, #0x1	// id: 448, l: 449	
	str	 x0, [sp, #112]	// id: 449, l: 450	
	ldr	 x0, [sp, #104]	// id: 450, l: 451	
	lsl	 x0, x0, #3	// id: 451, l: 452	
	ldr	 x1, [sp, #72]	// id: 452, l: 453	
	add	 x0, x1, x0	// id: 453, l: 454	
	ldr	 x1, [x0]	// id: 454, l: 455	
	add	 x1, x1, #0x8	// id: 455, l: 456	
	str	 x1, [x0]	// id: 456, l: 457	
	ldr	 x0, [sp, #104]	// id: 457, l: 458	
	lsl	 x0, x0, #3	// id: 458, l: 459	
	ldr	 x1, [sp, #64]	// id: 459, l: 460	
	add	 x0, x1, x0	// id: 460, l: 461	
	ldr	 x1, [x0]	// id: 461, l: 462	
	add	 x1, x1, #0x1	// id: 462, l: 463	
	str	 x1, [x0]	// id: 463, l: 464	
.L25:	// id: 464, l: 465	
	ldr	 x0, [sp, #32]	// id: 465, l: 466	
	ldr	 x0, [x0]	// id: 466, l: 467	
	ldr	 x1, [sp, #112]	// id: 467, l: 468	
	cmp	 x1, x0	// id: 468, l: 469	
	bge	 .L32	// id: 469, l: 470	
	ldr	 x1, [sp, #112]	// id: 470, l: 471	
	ldr	 x0, [sp, #120]	// id: 471, l: 472	
	cmp	 x1, x0	// id: 472, l: 473	
	blt	 .L33	// id: 473, l: 474	
.L32:	// id: 474, l: 475	
	ldr	 x0, [sp, #32]	// id: 475, l: 476	
	str	 xzr, [x0]	// id: 476, l: 477	
	str	 xzr, [sp, #88]	// id: 477, l: 478	
	b	 .L34	// id: 478, l: 479	
.L35:	// id: 479, l: 480	
	ldr	 x0, [sp, #32]	// id: 480, l: 481	
	ldr	 x1, [x0]	// id: 481, l: 482	
	ldr	 x0, [sp, #88]	// id: 482, l: 483	
	lsl	 x0, x0, #3	// id: 483, l: 484	
	ldr	 x2, [sp, #64]	// id: 484, l: 485	
	add	 x0, x2, x0	// id: 485, l: 486	
	ldr	 x0, [x0]	// id: 486, l: 487	
	add	 x1, x1, x0	// id: 487, l: 488	
	ldr	 x0, [sp, #32]	// id: 488, l: 489	
	str	 x1, [x0]	// id: 489, l: 490	
	ldr	 x0, [sp, #88]	// id: 490, l: 491	
	add	 x0, x0, #0x1	// id: 491, l: 492	
	str	 x0, [sp, #88]	// id: 492, l: 493	
.L34:	// id: 493, l: 494	
	ldr	 x1, [sp, #88]	// id: 494, l: 495	
	ldr	 x0, [sp, #80]	// id: 495, l: 496	
	cmp	 x1, x0	// id: 496, l: 497	
	blt	 .L35	// id: 497, l: 498	
	ldr	 x0, [sp, #40]	// id: 498, l: 499	
	mov	 x1, #0xfa0                 	// #4000	// id: 499, l: 500	
	str	 x1, [x0, #640]	// id: 500, l: 501	
	ldr	 x0, [sp, #32]	// id: 501, l: 502	
	ldr	 x1, [x0]	// id: 502, l: 503	
	ldr	 x0, [sp, #40]	// id: 503, l: 504	
	ldr	 x0, [x0, #424]	// id: 504, l: 505	
	add	 x0, x1, x0	// id: 505, l: 506	
	sub	 x0, x0, #0x1	// id: 506, l: 507	
	mov	 x1, #0xf7cf                	// #63439	// id: 507, l: 508	
	movk	 x1, #0xe353, lsl #16	// id: 508, l: 509	
	movk	 x1, #0x9ba5, lsl #32	// id: 509, l: 510	
	movk	 x1, #0x20c4, lsl #48	// id: 510, l: 511	
	smulh	 x1, x0, x1	// id: 511, l: 512	
	asr	 x1, x1, #9	// id: 512, l: 513	
	asr	 x0, x0, #63	// id: 513, l: 514	
	sub	 x0, x1, x0	// id: 514, l: 515	
	add	 x1, x0, #0x1	// id: 515, l: 516	
	ldr	 x0, [sp, #40]	// id: 516, l: 517	
	str	 x1, [x0, #624]	// id: 517, l: 518	
	ldr	 x0, [sp, #32]	// id: 518, l: 519	
	ldr	 x1, [x0]	// id: 519, l: 520	
	ldr	 x0, [sp, #40]	// id: 520, l: 521	
	ldr	 x0, [x0, #424]	// id: 521, l: 522	
	add	 x2, x1, x0	// id: 522, l: 523	
	mov	 x0, #0xf7cf                	// #63439	// id: 523, l: 524	
	movk	 x0, #0xe353, lsl #16	// id: 524, l: 525	
	movk	 x0, #0x9ba5, lsl #32	// id: 525, l: 526	
	movk	 x0, #0x20c4, lsl #48	// id: 526, l: 527	
	smulh	 x0, x2, x0	// id: 527, l: 528	
	asr	 x1, x0, #9	// id: 528, l: 529	
	asr	 x0, x2, #63	// id: 529, l: 530	
	sub	 x1, x1, x0	// id: 530, l: 531	
	mov	 x0, x1	// id: 531, l: 532	
	lsl	 x0, x0, #5	// id: 532, l: 533	
	sub	 x0, x0, x1	// id: 533, l: 534	
	lsl	 x0, x0, #2	// id: 534, l: 535	
	add	 x0, x0, x1	// id: 535, l: 536	
	lsl	 x0, x0, #5	// id: 536, l: 537	
	sub	 x1, x2, x0	// id: 537, l: 538	
	cmp	 x1, #0x0	// id: 538, l: 539	
	beq	 .L36	// id: 539, l: 540	
	ldr	 x0, [sp, #40]	// id: 540, l: 541	
	ldr	 x3, [x0, #624]	// id: 541, l: 542	
	ldr	 x0, [sp, #32]	// id: 542, l: 543	
	ldr	 x1, [x0]	// id: 543, l: 544	
	ldr	 x0, [sp, #40]	// id: 544, l: 545	
	ldr	 x0, [x0, #424]	// id: 545, l: 546	
	add	 x2, x1, x0	// id: 546, l: 547	
	mov	 x0, #0xf7cf                	// #63439	// id: 547, l: 548	
	movk	 x0, #0xe353, lsl #16	// id: 548, l: 549	
	movk	 x0, #0x9ba5, lsl #32	// id: 549, l: 550	
	movk	 x0, #0x20c4, lsl #48	// id: 550, l: 551	
	smulh	 x0, x2, x0	// id: 551, l: 552	
	asr	 x1, x0, #9	// id: 552, l: 553	
	asr	 x0, x2, #63	// id: 553, l: 554	
	sub	 x1, x1, x0	// id: 554, l: 555	
	mov	 x0, x1	// id: 555, l: 556	
	lsl	 x0, x0, #5	// id: 556, l: 557	
	sub	 x0, x0, x1	// id: 557, l: 558	
	lsl	 x0, x0, #2	// id: 558, l: 559	
	add	 x0, x0, x1	// id: 559, l: 560	
	lsl	 x0, x0, #5	// id: 560, l: 561	
	sub	 x1, x2, x0	// id: 561, l: 562	
	mov	 x0, #0xfa0                 	// #4000	// id: 562, l: 563	
	sub	 x0, x0, x1	// id: 563, l: 564	
	sub	 x1, x3, x0	// id: 564, l: 565	
	ldr	 x0, [sp, #40]	// id: 565, l: 566	
	str	 x1, [x0, #632]	// id: 566, l: 567	
	b	 .L38	// id: 567, l: 568	
.L36:	// id: 568, l: 569	
	ldr	 x0, [sp, #40]	// id: 569, l: 570	
	ldr	 x1, [x0, #624]	// id: 570, l: 571	
	ldr	 x0, [sp, #40]	// id: 571, l: 572	
	str	 x1, [x0, #632]	// id: 572, l: 573	
	b	 .L38	// id: 573, l: 574	
.L39:	// id: 574, l: 575	
	ldr	 x0, [sp, #40]	// id: 575, l: 576	
	ldr	 x1, [x0, #624]	// id: 576, l: 577	
	ldr	 x0, [sp, #40]	// id: 577, l: 578	
	ldr	 x0, [x0, #632]	// id: 578, l: 579	
	add	 x1, x1, x0	// id: 579, l: 580	
	ldr	 x0, [sp, #40]	// id: 580, l: 581	
	str	 x1, [x0, #632]	// id: 581, l: 582	
	ldr	 x0, [sp, #40]	// id: 582, l: 583	
	ldr	 x0, [x0, #640]	// id: 583, l: 584	
	sub	 x1, x0, #0x1	// id: 584, l: 585	
	ldr	 x0, [sp, #40]	// id: 585, l: 586	
	str	 x1, [x0, #640]	// id: 586, l: 587	
.L38:	// id: 587, l: 588	
	ldr	 x0, [sp, #40]	// id: 588, l: 589	
	ldr	 x0, [x0, #632]	// id: 589, l: 590	
	cmp	 x0, #0x0	// id: 590, l: 591	
	blt	 .L39	// id: 591, l: 592	
	ldr	 x0, [sp, #72]	// id: 592, l: 593	
	bl	 free	// id: 593, l: 594	
	ldr	 x0, [sp, #64]	// id: 594, l: 595	
	bl	 free	// id: 595, l: 596	
	nop		// id: 596, l: 597	
	ldp	 x29, x30, [sp], #128	// id: 597, l: 598	
	.cfi_restore	30	// id: 598, l: 599	
	.cfi_restore	29	// id: 599, l: 600	
	.cfi_def_cfa_offset	0	// id: 600, l: 601	
	ret		// id: 601, l: 602	
	.cfi_endproc		// id: 602, l: 603	
.LFE3:	// id: 603, l: 604	
	.size	marc_arcs, .-marc_arcs	// id: 604, l: 605	
	.section	.rodata	// id: 605, l: 606	
	.p2align	3, , 0	// id: 606, l: 607	
.LC0:	// id: 607, l: 608	
	.string	"network %s: not enough memory\n"	// id: 608, l: 609	
	.text	0	// id: 609, l: 610	
	.p2align	2, , 0	// id: 610, l: 611	
	.globl	resize_prob	// id: 611, l: 612	
	.type	resize_prob, %function	// id: 612, l: 613	
resize_prob:	// id: 613, l: 614	
.LFB4:	// id: 614, l: 615	
	.cfi_startproc		// id: 615, l: 616	
	stp	 x29, x30, [sp, #-80]!	// id: 616, l: 617	
	.cfi_def_cfa_offset	80	// id: 617, l: 618	
	.cfi_offset	29, -80	// id: 618, l: 619	
	.cfi_offset	30, -72	// id: 619, l: 620	
	mov	 x29, sp	// id: 620, l: 621	
	str	 x0, [sp, #24]	// id: 621, l: 622	
	ldr	 x0, [sp, #24]	// id: 622, l: 623	
	ldr	 x1, [x0, #416]	// id: 623, l: 624	
	ldr	 x0, [sp, #24]	// id: 624, l: 625	
	ldr	 x0, [x0, #456]	// id: 625, l: 626	
	add	 x1, x1, x0	// id: 626, l: 627	
	ldr	 x0, [sp, #24]	// id: 627, l: 628	
	str	 x1, [x0, #416]	// id: 628, l: 629	
	ldr	 x0, [sp, #24]	// id: 629, l: 630	
	ldr	 x1, [x0, #448]	// id: 630, l: 631	
	ldr	 x0, [sp, #24]	// id: 631, l: 632	
	ldr	 x0, [x0, #456]	// id: 632, l: 633	
	add	 x1, x1, x0	// id: 633, l: 634	
	ldr	 x0, [sp, #24]	// id: 634, l: 635	
	str	 x1, [x0, #448]	// id: 635, l: 636	
	ldr	 x0, [sp, #24]	// id: 636, l: 637	
	ldr	 x2, [x0, #568]	// id: 637, l: 638	
	ldr	 x0, [sp, #24]	// id: 638, l: 639	
	ldr	 x0, [x0, #416]	// id: 639, l: 640	
	mov	 x1, x0	// id: 640, l: 641	
	mov	 x0, x1	// id: 641, l: 642	
	lsl	 x0, x0, #3	// id: 642, l: 643	
	add	 x0, x0, x1	// id: 643, l: 644	
	lsl	 x0, x0, #3	// id: 644, l: 645	
	mov	 x1, x0	// id: 645, l: 646	
	mov	 x0, x2	// id: 646, l: 647	
	bl	 realloc	// id: 647, l: 648	
	str	 x0, [sp, #64]	// id: 648, l: 649	
	ldr	 x0, [sp, #64]	// id: 649, l: 650	
	cmp	 x0, #0x0	// id: 650, l: 651	
	bne	 .L41	// id: 651, l: 652	
	ldr	 x0, [sp, #24]	// id: 652, l: 653	
	mov	 x1, x0	// id: 653, l: 654	
	adrp	 x0, .LC0	// id: 654, l: 655	
	add	 x0, x0, :lo12:.LC0	// id: 655, l: 656	
	bl	 printf	// id: 656, l: 657	
	adrp	 x0, stdout	// id: 657, l: 658	
	add	 x0, x0, :lo12:stdout	// id: 658, l: 659	
	ldr	 x0, [x0]	// id: 659, l: 660	
	bl	 fflush	// id: 660, l: 661	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 661, l: 662	
	b	 .L42	// id: 662, l: 663	
.L41:	// id: 663, l: 664	
	ldr	 x0, [sp, #24]	// id: 664, l: 665	
	ldr	 x0, [x0, #568]	// id: 665, l: 666	
	str	 x0, [sp, #56]	// id: 666, l: 667	
	ldr	 x0, [sp, #24]	// id: 667, l: 668	
	ldr	 x1, [sp, #64]	// id: 668, l: 669	
	str	 x1, [x0, #568]	// id: 669, l: 670	
	ldr	 x0, [sp, #24]	// id: 670, l: 671	
	ldr	 x0, [x0, #424]	// id: 671, l: 672	
	mov	 x1, x0	// id: 672, l: 673	
	mov	 x0, x1	// id: 673, l: 674	
	lsl	 x0, x0, #3	// id: 674, l: 675	
	add	 x0, x0, x1	// id: 675, l: 676	
	lsl	 x0, x0, #3	// id: 676, l: 677	
	mov	 x1, x0	// id: 677, l: 678	
	ldr	 x0, [sp, #64]	// id: 678, l: 679	
	add	 x1, x0, x1	// id: 679, l: 680	
	ldr	 x0, [sp, #24]	// id: 680, l: 681	
	str	 x1, [x0, #576]	// id: 681, l: 682	
	ldr	 x0, [sp, #24]	// id: 682, l: 683	
	ldr	 x0, [x0, #552]	// id: 683, l: 684	
	str	 x0, [sp, #72]	// id: 684, l: 685	
	ldr	 x0, [sp, #72]	// id: 685, l: 686	
	str	 x0, [sp, #48]	// id: 686, l: 687	
	ldr	 x0, [sp, #72]	// id: 687, l: 688	
	add	 x0, x0, #0x68	// id: 688, l: 689	
	str	 x0, [sp, #72]	// id: 689, l: 690	
	ldr	 x0, [sp, #24]	// id: 690, l: 691	
	ldr	 x0, [x0, #560]	// id: 691, l: 692	
	str	 x0, [sp, #40]	// id: 692, l: 693	
	b	 .L43	// id: 693, l: 694	
.L45:	// id: 694, l: 695	
	ldr	 x0, [sp, #72]	// id: 695, l: 696	
	ldr	 x0, [x0, #48]	// id: 696, l: 697	
	cmp	 x0, #0x0	// id: 697, l: 698	
	beq	 .L44	// id: 698, l: 699	
	ldr	 x0, [sp, #72]	// id: 699, l: 700	
	ldr	 x0, [x0, #24]	// id: 700, l: 701	
	ldr	 x1, [sp, #48]	// id: 701, l: 702	
	cmp	 x1, x0	// id: 702, l: 703	
	beq	 .L44	// id: 703, l: 704	
	ldr	 x0, [sp, #72]	// id: 704, l: 705	
	ldr	 x1, [x0, #48]	// id: 705, l: 706	
	ldr	 x0, [sp, #56]	// id: 706, l: 707	
	sub	 x0, x1, x0	// id: 707, l: 708	
	asr	 x1, x0, #3	// id: 708, l: 709	
	mov	 x0, #0x8e39                	// #36409	// id: 709, l: 710	
	movk	 x0, #0x38e3, lsl #16	// id: 710, l: 711	
	movk	 x0, #0xe38e, lsl #32	// id: 711, l: 712	
	movk	 x0, #0x8e38, lsl #48	// id: 712, l: 713	
	mul	 x0, x1, x0	// id: 713, l: 714	
	str	 x0, [sp, #32]	// id: 714, l: 715	
	ldr	 x0, [sp, #24]	// id: 715, l: 716	
	ldr	 x2, [x0, #568]	// id: 716, l: 717	
	ldr	 x1, [sp, #32]	// id: 717, l: 718	
	mov	 x0, x1	// id: 718, l: 719	
	lsl	 x0, x0, #3	// id: 719, l: 720	
	add	 x0, x0, x1	// id: 720, l: 721	
	lsl	 x0, x0, #3	// id: 721, l: 722	
	add	 x1, x2, x0	// id: 722, l: 723	
	ldr	 x0, [sp, #72]	// id: 723, l: 724	
	str	 x1, [x0, #48]	// id: 724, l: 725	
.L44:	// id: 725, l: 726	
	ldr	 x0, [sp, #72]	// id: 726, l: 727	
	add	 x0, x0, #0x68	// id: 727, l: 728	
	str	 x0, [sp, #72]	// id: 728, l: 729	
.L43:	// id: 729, l: 730	
	ldr	 x1, [sp, #72]	// id: 730, l: 731	
	ldr	 x0, [sp, #40]	// id: 731, l: 732	
	cmp	 x1, x0	// id: 732, l: 733	
	bcc	 .L45	// id: 733, l: 734	
	ldr	 x0, [sp, #24]	// id: 734, l: 735	
	ldr	 x2, [x0, #584]	// id: 735, l: 736	
	ldr	 x0, [sp, #24]	// id: 736, l: 737	
	ldr	 x0, [x0, #416]	// id: 737, l: 738	
	mov	 x1, x0	// id: 738, l: 739	
	mov	 x0, x1	// id: 739, l: 740	
	lsl	 x0, x0, #3	// id: 740, l: 741	
	add	 x0, x0, x1	// id: 741, l: 742	
	lsl	 x0, x0, #3	// id: 742, l: 743	
	mov	 x1, x0	// id: 743, l: 744	
	mov	 x0, x2	// id: 744, l: 745	
	bl	 realloc	// id: 745, l: 746	
	str	 x0, [sp, #64]	// id: 746, l: 747	
	ldr	 x0, [sp, #24]	// id: 747, l: 748	
	ldr	 x1, [sp, #64]	// id: 748, l: 749	
	str	 x1, [x0, #584]	// id: 749, l: 750	
	mov	 x0, #0x0                   	// #0	// id: 750, l: 751	
.L42:	// id: 751, l: 752	
	ldp	 x29, x30, [sp], #80	// id: 752, l: 753	
	.cfi_restore	30	// id: 753, l: 754	
	.cfi_restore	29	// id: 754, l: 755	
	.cfi_def_cfa_offset	0	// id: 755, l: 756	
	ret		// id: 756, l: 757	
	.cfi_endproc		// id: 757, l: 758	
.LFE4:	// id: 758, l: 759	
	.size	resize_prob, .-resize_prob	// id: 759, l: 760	
	.p2align	2, , 0	// id: 760, l: 761	
	.globl	insert_new_arc	// id: 761, l: 762	
	.type	insert_new_arc, %function	// id: 762, l: 763	
insert_new_arc:	// id: 763, l: 764	
.LFB5:	// id: 764, l: 765	
	.cfi_startproc		// id: 765, l: 766	
	sub	 sp, sp, #0x50	// id: 766, l: 767	
	.cfi_def_cfa_offset	80	// id: 767, l: 768	
	str	 x0, [sp, #56]	// id: 768, l: 769	
	str	 x1, [sp, #48]	// id: 769, l: 770	
	str	 x2, [sp, #40]	// id: 770, l: 771	
	str	 x3, [sp, #32]	// id: 771, l: 772	
	str	 x4, [sp, #24]	// id: 772, l: 773	
	str	 x5, [sp, #16]	// id: 773, l: 774	
	str	 x6, [sp, #8]	// id: 774, l: 775	
	str	 x7, [sp]	// id: 775, l: 776	
	ldr	 x1, [sp, #48]	// id: 776, l: 777	
	mov	 x0, x1	// id: 777, l: 778	
	lsl	 x0, x0, #3	// id: 778, l: 779	
	add	 x0, x0, x1	// id: 779, l: 780	
	lsl	 x0, x0, #3	// id: 780, l: 781	
	mov	 x1, x0	// id: 781, l: 782	
	ldr	 x0, [sp, #56]	// id: 782, l: 783	
	add	 x0, x0, x1	// id: 783, l: 784	
	ldr	 x1, [sp, #40]	// id: 784, l: 785	
	str	 x1, [x0, #16]	// id: 785, l: 786	
	ldr	 x1, [sp, #48]	// id: 786, l: 787	
	mov	 x0, x1	// id: 787, l: 788	
	lsl	 x0, x0, #3	// id: 788, l: 789	
	add	 x0, x0, x1	// id: 789, l: 790	
	lsl	 x0, x0, #3	// id: 790, l: 791	
	mov	 x1, x0	// id: 791, l: 792	
	ldr	 x0, [sp, #56]	// id: 792, l: 793	
	add	 x0, x0, x1	// id: 793, l: 794	
	ldr	 x1, [sp, #32]	// id: 794, l: 795	
	str	 x1, [x0, #24]	// id: 795, l: 796	
	ldr	 x1, [sp, #48]	// id: 796, l: 797	
	mov	 x0, x1	// id: 797, l: 798	
	lsl	 x0, x0, #3	// id: 798, l: 799	
	add	 x0, x0, x1	// id: 799, l: 800	
	lsl	 x0, x0, #3	// id: 800, l: 801	
	mov	 x1, x0	// id: 801, l: 802	
	ldr	 x0, [sp, #56]	// id: 802, l: 803	
	add	 x0, x0, x1	// id: 803, l: 804	
	ldr	 x1, [sp, #24]	// id: 804, l: 805	
	str	 x1, [x0, #64]	// id: 805, l: 806	
	ldr	 x1, [sp, #48]	// id: 806, l: 807	
	mov	 x0, x1	// id: 807, l: 808	
	lsl	 x0, x0, #3	// id: 808, l: 809	
	add	 x0, x0, x1	// id: 809, l: 810	
	lsl	 x0, x0, #3	// id: 810, l: 811	
	mov	 x1, x0	// id: 811, l: 812	
	ldr	 x0, [sp, #56]	// id: 812, l: 813	
	add	 x0, x0, x1	// id: 813, l: 814	
	ldr	 x1, [sp, #24]	// id: 814, l: 815	
	str	 x1, [x0, #8]	// id: 815, l: 816	
	ldr	 x1, [sp, #48]	// id: 816, l: 817	
	mov	 x0, x1	// id: 817, l: 818	
	lsl	 x0, x0, #3	// id: 818, l: 819	
	add	 x0, x0, x1	// id: 819, l: 820	
	lsl	 x0, x0, #3	// id: 820, l: 821	
	mov	 x1, x0	// id: 821, l: 822	
	ldr	 x0, [sp, #56]	// id: 822, l: 823	
	add	 x0, x0, x1	// id: 823, l: 824	
	ldr	 x1, [sp, #16]	// id: 824, l: 825	
	str	 x1, [x0, #56]	// id: 825, l: 826	
	ldr	 x1, [sp, #48]	// id: 826, l: 827	
	mov	 x0, x1	// id: 827, l: 828	
	lsl	 x0, x0, #3	// id: 828, l: 829	
	add	 x0, x0, x1	// id: 829, l: 830	
	lsl	 x0, x0, #3	// id: 830, l: 831	
	mov	 x1, x0	// id: 831, l: 832	
	ldr	 x0, [sp, #56]	// id: 832, l: 833	
	add	 x0, x0, x1	// id: 833, l: 834	
	ldr	 x1, [sp]	// id: 834, l: 835	
	str	 w1, [x0]	// id: 835, l: 836	
	ldr	 x0, [sp, #48]	// id: 836, l: 837	
	add	 x0, x0, #0x1	// id: 837, l: 838	
	str	 x0, [sp, #72]	// id: 838, l: 839	
	b	 .L47	// id: 839, l: 840	
.L49:	// id: 840, l: 841	
	ldr	 x0, [sp, #72]	// id: 841, l: 842	
	lsr	 x1, x0, #63	// id: 842, l: 843	
	add	 x0, x1, x0	// id: 843, l: 844	
	asr	 x0, x0, #1	// id: 844, l: 845	
	mov	 x1, x0	// id: 845, l: 846	
	mov	 x0, x1	// id: 846, l: 847	
	lsl	 x0, x0, #3	// id: 847, l: 848	
	add	 x0, x0, x1	// id: 848, l: 849	
	lsl	 x0, x0, #3	// id: 849, l: 850	
	sub	 x0, x0, #0x48	// id: 850, l: 851	
	ldr	 x1, [sp, #56]	// id: 851, l: 852	
	add	 x2, x1, x0	// id: 852, l: 853	
	ldr	 x1, [sp, #72]	// id: 853, l: 854	
	mov	 x0, x1	// id: 854, l: 855	
	lsl	 x0, x0, #3	// id: 855, l: 856	
	add	 x0, x0, x1	// id: 856, l: 857	
	lsl	 x0, x0, #3	// id: 857, l: 858	
	sub	 x0, x0, #0x48	// id: 858, l: 859	
	ldr	 x1, [sp, #56]	// id: 859, l: 860	
	add	 x0, x1, x0	// id: 860, l: 861	
	ldr	 x1, [x2, #16]	// id: 861, l: 862	
	str	 x1, [x0, #16]	// id: 862, l: 863	
	ldr	 x0, [sp, #72]	// id: 863, l: 864	
	lsr	 x1, x0, #63	// id: 864, l: 865	
	add	 x0, x1, x0	// id: 865, l: 866	
	asr	 x0, x0, #1	// id: 866, l: 867	
	mov	 x1, x0	// id: 867, l: 868	
	mov	 x0, x1	// id: 868, l: 869	
	lsl	 x0, x0, #3	// id: 869, l: 870	
	add	 x0, x0, x1	// id: 870, l: 871	
	lsl	 x0, x0, #3	// id: 871, l: 872	
	sub	 x0, x0, #0x48	// id: 872, l: 873	
	ldr	 x1, [sp, #56]	// id: 873, l: 874	
	add	 x2, x1, x0	// id: 874, l: 875	
	ldr	 x1, [sp, #72]	// id: 875, l: 876	
	mov	 x0, x1	// id: 876, l: 877	
	lsl	 x0, x0, #3	// id: 877, l: 878	
	add	 x0, x0, x1	// id: 878, l: 879	
	lsl	 x0, x0, #3	// id: 879, l: 880	
	sub	 x0, x0, #0x48	// id: 880, l: 881	
	ldr	 x1, [sp, #56]	// id: 881, l: 882	
	add	 x0, x1, x0	// id: 882, l: 883	
	ldr	 x1, [x2, #24]	// id: 883, l: 884	
	str	 x1, [x0, #24]	// id: 884, l: 885	
	ldr	 x0, [sp, #72]	// id: 885, l: 886	
	lsr	 x1, x0, #63	// id: 886, l: 887	
	add	 x0, x1, x0	// id: 887, l: 888	
	asr	 x0, x0, #1	// id: 888, l: 889	
	mov	 x1, x0	// id: 889, l: 890	
	mov	 x0, x1	// id: 890, l: 891	
	lsl	 x0, x0, #3	// id: 891, l: 892	
	add	 x0, x0, x1	// id: 892, l: 893	
	lsl	 x0, x0, #3	// id: 893, l: 894	
	sub	 x0, x0, #0x48	// id: 894, l: 895	
	ldr	 x1, [sp, #56]	// id: 895, l: 896	
	add	 x2, x1, x0	// id: 896, l: 897	
	ldr	 x1, [sp, #72]	// id: 897, l: 898	
	mov	 x0, x1	// id: 898, l: 899	
	lsl	 x0, x0, #3	// id: 899, l: 900	
	add	 x0, x0, x1	// id: 900, l: 901	
	lsl	 x0, x0, #3	// id: 901, l: 902	
	sub	 x0, x0, #0x48	// id: 902, l: 903	
	ldr	 x1, [sp, #56]	// id: 903, l: 904	
	add	 x0, x1, x0	// id: 904, l: 905	
	ldr	 x1, [x2, #8]	// id: 905, l: 906	
	str	 x1, [x0, #8]	// id: 906, l: 907	
	ldr	 x0, [sp, #72]	// id: 907, l: 908	
	lsr	 x1, x0, #63	// id: 908, l: 909	
	add	 x0, x1, x0	// id: 909, l: 910	
	asr	 x0, x0, #1	// id: 910, l: 911	
	mov	 x1, x0	// id: 911, l: 912	
	mov	 x0, x1	// id: 912, l: 913	
	lsl	 x0, x0, #3	// id: 913, l: 914	
	add	 x0, x0, x1	// id: 914, l: 915	
	lsl	 x0, x0, #3	// id: 915, l: 916	
	sub	 x0, x0, #0x48	// id: 916, l: 917	
	ldr	 x1, [sp, #56]	// id: 917, l: 918	
	add	 x2, x1, x0	// id: 918, l: 919	
	ldr	 x1, [sp, #72]	// id: 919, l: 920	
	mov	 x0, x1	// id: 920, l: 921	
	lsl	 x0, x0, #3	// id: 921, l: 922	
	add	 x0, x0, x1	// id: 922, l: 923	
	lsl	 x0, x0, #3	// id: 923, l: 924	
	sub	 x0, x0, #0x48	// id: 924, l: 925	
	ldr	 x1, [sp, #56]	// id: 925, l: 926	
	add	 x0, x1, x0	// id: 926, l: 927	
	ldr	 x1, [x2, #8]	// id: 927, l: 928	
	str	 x1, [x0, #64]	// id: 928, l: 929	
	ldr	 x0, [sp, #72]	// id: 929, l: 930	
	lsr	 x1, x0, #63	// id: 930, l: 931	
	add	 x0, x1, x0	// id: 931, l: 932	
	asr	 x0, x0, #1	// id: 932, l: 933	
	mov	 x1, x0	// id: 933, l: 934	
	mov	 x0, x1	// id: 934, l: 935	
	lsl	 x0, x0, #3	// id: 935, l: 936	
	add	 x0, x0, x1	// id: 936, l: 937	
	lsl	 x0, x0, #3	// id: 937, l: 938	
	sub	 x0, x0, #0x48	// id: 938, l: 939	
	ldr	 x1, [sp, #56]	// id: 939, l: 940	
	add	 x2, x1, x0	// id: 940, l: 941	
	ldr	 x1, [sp, #72]	// id: 941, l: 942	
	mov	 x0, x1	// id: 942, l: 943	
	lsl	 x0, x0, #3	// id: 943, l: 944	
	add	 x0, x0, x1	// id: 944, l: 945	
	lsl	 x0, x0, #3	// id: 945, l: 946	
	sub	 x0, x0, #0x48	// id: 946, l: 947	
	ldr	 x1, [sp, #56]	// id: 947, l: 948	
	add	 x0, x1, x0	// id: 948, l: 949	
	ldr	 x1, [x2, #56]	// id: 949, l: 950	
	str	 x1, [x0, #56]	// id: 950, l: 951	
	ldr	 x0, [sp, #72]	// id: 951, l: 952	
	lsr	 x1, x0, #63	// id: 952, l: 953	
	add	 x0, x1, x0	// id: 953, l: 954	
	asr	 x0, x0, #1	// id: 954, l: 955	
	mov	 x1, x0	// id: 955, l: 956	
	mov	 x0, x1	// id: 956, l: 957	
	lsl	 x0, x0, #3	// id: 957, l: 958	
	add	 x0, x0, x1	// id: 958, l: 959	
	lsl	 x0, x0, #3	// id: 959, l: 960	
	sub	 x0, x0, #0x48	// id: 960, l: 961	
	ldr	 x1, [sp, #56]	// id: 961, l: 962	
	add	 x2, x1, x0	// id: 962, l: 963	
	ldr	 x1, [sp, #72]	// id: 963, l: 964	
	mov	 x0, x1	// id: 964, l: 965	
	lsl	 x0, x0, #3	// id: 965, l: 966	
	add	 x0, x0, x1	// id: 966, l: 967	
	lsl	 x0, x0, #3	// id: 967, l: 968	
	sub	 x0, x0, #0x48	// id: 968, l: 969	
	ldr	 x1, [sp, #56]	// id: 969, l: 970	
	add	 x0, x1, x0	// id: 970, l: 971	
	ldr	 w1, [x2]	// id: 971, l: 972	
	str	 w1, [x0]	// id: 972, l: 973	
	ldr	 x0, [sp, #72]	// id: 973, l: 974	
	lsr	 x1, x0, #63	// id: 974, l: 975	
	add	 x0, x1, x0	// id: 975, l: 976	
	asr	 x0, x0, #1	// id: 976, l: 977	
	str	 x0, [sp, #72]	// id: 977, l: 978	
	ldr	 x1, [sp, #72]	// id: 978, l: 979	
	mov	 x0, x1	// id: 979, l: 980	
	lsl	 x0, x0, #3	// id: 980, l: 981	
	add	 x0, x0, x1	// id: 981, l: 982	
	lsl	 x0, x0, #3	// id: 982, l: 983	
	sub	 x0, x0, #0x48	// id: 983, l: 984	
	ldr	 x1, [sp, #56]	// id: 984, l: 985	
	add	 x0, x1, x0	// id: 985, l: 986	
	ldr	 x1, [sp, #40]	// id: 986, l: 987	
	str	 x1, [x0, #16]	// id: 987, l: 988	
	ldr	 x1, [sp, #72]	// id: 988, l: 989	
	mov	 x0, x1	// id: 989, l: 990	
	lsl	 x0, x0, #3	// id: 990, l: 991	
	add	 x0, x0, x1	// id: 991, l: 992	
	lsl	 x0, x0, #3	// id: 992, l: 993	
	sub	 x0, x0, #0x48	// id: 993, l: 994	
	ldr	 x1, [sp, #56]	// id: 994, l: 995	
	add	 x0, x1, x0	// id: 995, l: 996	
	ldr	 x1, [sp, #32]	// id: 996, l: 997	
	str	 x1, [x0, #24]	// id: 997, l: 998	
	ldr	 x1, [sp, #72]	// id: 998, l: 999	
	mov	 x0, x1	// id: 999, l: 1000	
	lsl	 x0, x0, #3	// id: 1000, l: 1001	
	add	 x0, x0, x1	// id: 1001, l: 1002	
	lsl	 x0, x0, #3	// id: 1002, l: 1003	
	sub	 x0, x0, #0x48	// id: 1003, l: 1004	
	ldr	 x1, [sp, #56]	// id: 1004, l: 1005	
	add	 x0, x1, x0	// id: 1005, l: 1006	
	ldr	 x1, [sp, #24]	// id: 1006, l: 1007	
	str	 x1, [x0, #8]	// id: 1007, l: 1008	
	ldr	 x1, [sp, #72]	// id: 1008, l: 1009	
	mov	 x0, x1	// id: 1009, l: 1010	
	lsl	 x0, x0, #3	// id: 1010, l: 1011	
	add	 x0, x0, x1	// id: 1011, l: 1012	
	lsl	 x0, x0, #3	// id: 1012, l: 1013	
	sub	 x0, x0, #0x48	// id: 1013, l: 1014	
	ldr	 x1, [sp, #56]	// id: 1014, l: 1015	
	add	 x0, x1, x0	// id: 1015, l: 1016	
	ldr	 x1, [sp, #24]	// id: 1016, l: 1017	
	str	 x1, [x0, #64]	// id: 1017, l: 1018	
	ldr	 x1, [sp, #72]	// id: 1018, l: 1019	
	mov	 x0, x1	// id: 1019, l: 1020	
	lsl	 x0, x0, #3	// id: 1020, l: 1021	
	add	 x0, x0, x1	// id: 1021, l: 1022	
	lsl	 x0, x0, #3	// id: 1022, l: 1023	
	sub	 x0, x0, #0x48	// id: 1023, l: 1024	
	ldr	 x1, [sp, #56]	// id: 1024, l: 1025	
	add	 x0, x1, x0	// id: 1025, l: 1026	
	ldr	 x1, [sp, #16]	// id: 1026, l: 1027	
	str	 x1, [x0, #56]	// id: 1027, l: 1028	
	ldr	 x1, [sp, #72]	// id: 1028, l: 1029	
	mov	 x0, x1	// id: 1029, l: 1030	
	lsl	 x0, x0, #3	// id: 1030, l: 1031	
	add	 x0, x0, x1	// id: 1031, l: 1032	
	lsl	 x0, x0, #3	// id: 1032, l: 1033	
	sub	 x0, x0, #0x48	// id: 1033, l: 1034	
	ldr	 x1, [sp, #56]	// id: 1034, l: 1035	
	add	 x0, x1, x0	// id: 1035, l: 1036	
	ldr	 x1, [sp]	// id: 1036, l: 1037	
	str	 w1, [x0]	// id: 1037, l: 1038	
.L47:	// id: 1038, l: 1039	
	ldr	 x0, [sp, #72]	// id: 1039, l: 1040	
	cmp	 x0, #0x1	// id: 1040, l: 1041	
	beq	 .L51	// id: 1041, l: 1042	
	ldr	 x0, [sp, #72]	// id: 1042, l: 1043	
	lsr	 x1, x0, #63	// id: 1043, l: 1044	
	add	 x0, x1, x0	// id: 1044, l: 1045	
	asr	 x0, x0, #1	// id: 1045, l: 1046	
	mov	 x1, x0	// id: 1046, l: 1047	
	mov	 x0, x1	// id: 1047, l: 1048	
	lsl	 x0, x0, #3	// id: 1048, l: 1049	
	add	 x0, x0, x1	// id: 1049, l: 1050	
	lsl	 x0, x0, #3	// id: 1050, l: 1051	
	sub	 x0, x0, #0x48	// id: 1051, l: 1052	
	ldr	 x1, [sp, #56]	// id: 1052, l: 1053	
	add	 x0, x1, x0	// id: 1053, l: 1054	
	ldr	 x0, [x0, #56]	// id: 1054, l: 1055	
	ldr	 x1, [sp, #16]	// id: 1055, l: 1056	
	cmp	 x1, x0	// id: 1056, l: 1057	
	bgt	 .L49	// id: 1057, l: 1058	
	nop		// id: 1058, l: 1059	
.L51:	// id: 1059, l: 1060	
	nop		// id: 1060, l: 1061	
	add	 sp, sp, #0x50	// id: 1061, l: 1062	
	.cfi_def_cfa_offset	0	// id: 1062, l: 1063	
	ret		// id: 1063, l: 1064	
	.cfi_endproc		// id: 1064, l: 1065	
.LFE5:	// id: 1065, l: 1066	
	.size	insert_new_arc, .-insert_new_arc	// id: 1066, l: 1067	
	.p2align	2, , 0	// id: 1067, l: 1068	
	.globl	replace_weaker_arc	// id: 1068, l: 1069	
	.type	replace_weaker_arc, %function	// id: 1069, l: 1070	
replace_weaker_arc:	// id: 1070, l: 1071	
.LFB6:	// id: 1071, l: 1072	
	.cfi_startproc		// id: 1072, l: 1073	
	sub	 sp, sp, #0x50	// id: 1073, l: 1074	
	.cfi_def_cfa_offset	80	// id: 1074, l: 1075	
	str	 x0, [sp, #56]	// id: 1075, l: 1076	
	str	 x1, [sp, #48]	// id: 1076, l: 1077	
	str	 x2, [sp, #40]	// id: 1077, l: 1078	
	str	 x3, [sp, #32]	// id: 1078, l: 1079	
	str	 x4, [sp, #24]	// id: 1079, l: 1080	
	str	 x5, [sp, #16]	// id: 1080, l: 1081	
	str	 x6, [sp, #8]	// id: 1081, l: 1082	
	ldr	 x0, [sp, #56]	// id: 1082, l: 1083	
	ldr	 x1, [sp, #48]	// id: 1083, l: 1084	
	str	 x1, [x0, #16]	// id: 1084, l: 1085	
	ldr	 x0, [sp, #56]	// id: 1085, l: 1086	
	ldr	 x1, [sp, #40]	// id: 1086, l: 1087	
	str	 x1, [x0, #24]	// id: 1087, l: 1088	
	ldr	 x0, [sp, #56]	// id: 1088, l: 1089	
	ldr	 x1, [sp, #32]	// id: 1089, l: 1090	
	str	 x1, [x0, #64]	// id: 1090, l: 1091	
	ldr	 x0, [sp, #56]	// id: 1091, l: 1092	
	ldr	 x1, [sp, #32]	// id: 1092, l: 1093	
	str	 x1, [x0, #8]	// id: 1093, l: 1094	
	ldr	 x0, [sp, #56]	// id: 1094, l: 1095	
	ldr	 x1, [sp, #24]	// id: 1095, l: 1096	
	str	 x1, [x0, #56]	// id: 1096, l: 1097	
	ldr	 x0, [sp, #8]	// id: 1097, l: 1098	
	mov	 w1, w0	// id: 1098, l: 1099	
	ldr	 x0, [sp, #56]	// id: 1099, l: 1100	
	str	 w1, [x0]	// id: 1100, l: 1101	
	mov	 x0, #0x1                   	// #1	// id: 1101, l: 1102	
	str	 x0, [sp, #72]	// id: 1102, l: 1103	
	ldr	 x0, [sp, #56]	// id: 1103, l: 1104	
	add	 x0, x0, #0x48	// id: 1104, l: 1105	
	ldr	 x1, [x0, #56]	// id: 1105, l: 1106	
	ldr	 x0, [sp, #56]	// id: 1106, l: 1107	
	add	 x0, x0, #0x90	// id: 1107, l: 1108	
	ldr	 x0, [x0, #56]	// id: 1108, l: 1109	
	cmp	 x1, x0	// id: 1109, l: 1110	
	ble	 .L53	// id: 1110, l: 1111	
	mov	 x0, #0x2                   	// #2	// id: 1111, l: 1112	
	b	 .L54	// id: 1112, l: 1113	
.L53:	// id: 1113, l: 1114	
	mov	 x0, #0x3                   	// #3	// id: 1114, l: 1115	
.L54:	// id: 1115, l: 1116	
	str	 x0, [sp, #64]	// id: 1116, l: 1117	
	b	 .L55	// id: 1117, l: 1118	
.L57:	// id: 1118, l: 1119	
	ldr	 x1, [sp, #64]	// id: 1119, l: 1120	
	mov	 x0, x1	// id: 1120, l: 1121	
	lsl	 x0, x0, #3	// id: 1121, l: 1122	
	add	 x0, x0, x1	// id: 1122, l: 1123	
	lsl	 x0, x0, #3	// id: 1123, l: 1124	
	sub	 x0, x0, #0x48	// id: 1124, l: 1125	
	ldr	 x1, [sp, #56]	// id: 1125, l: 1126	
	add	 x2, x1, x0	// id: 1126, l: 1127	
	ldr	 x1, [sp, #72]	// id: 1127, l: 1128	
	mov	 x0, x1	// id: 1128, l: 1129	
	lsl	 x0, x0, #3	// id: 1129, l: 1130	
	add	 x0, x0, x1	// id: 1130, l: 1131	
	lsl	 x0, x0, #3	// id: 1131, l: 1132	
	sub	 x0, x0, #0x48	// id: 1132, l: 1133	
	ldr	 x1, [sp, #56]	// id: 1133, l: 1134	
	add	 x0, x1, x0	// id: 1134, l: 1135	
	ldr	 x1, [x2, #16]	// id: 1135, l: 1136	
	str	 x1, [x0, #16]	// id: 1136, l: 1137	
	ldr	 x1, [sp, #64]	// id: 1137, l: 1138	
	mov	 x0, x1	// id: 1138, l: 1139	
	lsl	 x0, x0, #3	// id: 1139, l: 1140	
	add	 x0, x0, x1	// id: 1140, l: 1141	
	lsl	 x0, x0, #3	// id: 1141, l: 1142	
	sub	 x0, x0, #0x48	// id: 1142, l: 1143	
	ldr	 x1, [sp, #56]	// id: 1143, l: 1144	
	add	 x2, x1, x0	// id: 1144, l: 1145	
	ldr	 x1, [sp, #72]	// id: 1145, l: 1146	
	mov	 x0, x1	// id: 1146, l: 1147	
	lsl	 x0, x0, #3	// id: 1147, l: 1148	
	add	 x0, x0, x1	// id: 1148, l: 1149	
	lsl	 x0, x0, #3	// id: 1149, l: 1150	
	sub	 x0, x0, #0x48	// id: 1150, l: 1151	
	ldr	 x1, [sp, #56]	// id: 1151, l: 1152	
	add	 x0, x1, x0	// id: 1152, l: 1153	
	ldr	 x1, [x2, #24]	// id: 1153, l: 1154	
	str	 x1, [x0, #24]	// id: 1154, l: 1155	
	ldr	 x1, [sp, #64]	// id: 1155, l: 1156	
	mov	 x0, x1	// id: 1156, l: 1157	
	lsl	 x0, x0, #3	// id: 1157, l: 1158	
	add	 x0, x0, x1	// id: 1158, l: 1159	
	lsl	 x0, x0, #3	// id: 1159, l: 1160	
	sub	 x0, x0, #0x48	// id: 1160, l: 1161	
	ldr	 x1, [sp, #56]	// id: 1161, l: 1162	
	add	 x2, x1, x0	// id: 1162, l: 1163	
	ldr	 x1, [sp, #72]	// id: 1163, l: 1164	
	mov	 x0, x1	// id: 1164, l: 1165	
	lsl	 x0, x0, #3	// id: 1165, l: 1166	
	add	 x0, x0, x1	// id: 1166, l: 1167	
	lsl	 x0, x0, #3	// id: 1167, l: 1168	
	sub	 x0, x0, #0x48	// id: 1168, l: 1169	
	ldr	 x1, [sp, #56]	// id: 1169, l: 1170	
	add	 x0, x1, x0	// id: 1170, l: 1171	
	ldr	 x1, [x2, #8]	// id: 1171, l: 1172	
	str	 x1, [x0, #8]	// id: 1172, l: 1173	
	ldr	 x1, [sp, #64]	// id: 1173, l: 1174	
	mov	 x0, x1	// id: 1174, l: 1175	
	lsl	 x0, x0, #3	// id: 1175, l: 1176	
	add	 x0, x0, x1	// id: 1176, l: 1177	
	lsl	 x0, x0, #3	// id: 1177, l: 1178	
	sub	 x0, x0, #0x48	// id: 1178, l: 1179	
	ldr	 x1, [sp, #56]	// id: 1179, l: 1180	
	add	 x2, x1, x0	// id: 1180, l: 1181	
	ldr	 x1, [sp, #72]	// id: 1181, l: 1182	
	mov	 x0, x1	// id: 1182, l: 1183	
	lsl	 x0, x0, #3	// id: 1183, l: 1184	
	add	 x0, x0, x1	// id: 1184, l: 1185	
	lsl	 x0, x0, #3	// id: 1185, l: 1186	
	sub	 x0, x0, #0x48	// id: 1186, l: 1187	
	ldr	 x1, [sp, #56]	// id: 1187, l: 1188	
	add	 x0, x1, x0	// id: 1188, l: 1189	
	ldr	 x1, [x2, #8]	// id: 1189, l: 1190	
	str	 x1, [x0, #64]	// id: 1190, l: 1191	
	ldr	 x1, [sp, #64]	// id: 1191, l: 1192	
	mov	 x0, x1	// id: 1192, l: 1193	
	lsl	 x0, x0, #3	// id: 1193, l: 1194	
	add	 x0, x0, x1	// id: 1194, l: 1195	
	lsl	 x0, x0, #3	// id: 1195, l: 1196	
	sub	 x0, x0, #0x48	// id: 1196, l: 1197	
	ldr	 x1, [sp, #56]	// id: 1197, l: 1198	
	add	 x2, x1, x0	// id: 1198, l: 1199	
	ldr	 x1, [sp, #72]	// id: 1199, l: 1200	
	mov	 x0, x1	// id: 1200, l: 1201	
	lsl	 x0, x0, #3	// id: 1201, l: 1202	
	add	 x0, x0, x1	// id: 1202, l: 1203	
	lsl	 x0, x0, #3	// id: 1203, l: 1204	
	sub	 x0, x0, #0x48	// id: 1204, l: 1205	
	ldr	 x1, [sp, #56]	// id: 1205, l: 1206	
	add	 x0, x1, x0	// id: 1206, l: 1207	
	ldr	 x1, [x2, #56]	// id: 1207, l: 1208	
	str	 x1, [x0, #56]	// id: 1208, l: 1209	
	ldr	 x1, [sp, #64]	// id: 1209, l: 1210	
	mov	 x0, x1	// id: 1210, l: 1211	
	lsl	 x0, x0, #3	// id: 1211, l: 1212	
	add	 x0, x0, x1	// id: 1212, l: 1213	
	lsl	 x0, x0, #3	// id: 1213, l: 1214	
	sub	 x0, x0, #0x48	// id: 1214, l: 1215	
	ldr	 x1, [sp, #56]	// id: 1215, l: 1216	
	add	 x2, x1, x0	// id: 1216, l: 1217	
	ldr	 x1, [sp, #72]	// id: 1217, l: 1218	
	mov	 x0, x1	// id: 1218, l: 1219	
	lsl	 x0, x0, #3	// id: 1219, l: 1220	
	add	 x0, x0, x1	// id: 1220, l: 1221	
	lsl	 x0, x0, #3	// id: 1221, l: 1222	
	sub	 x0, x0, #0x48	// id: 1222, l: 1223	
	ldr	 x1, [sp, #56]	// id: 1223, l: 1224	
	add	 x0, x1, x0	// id: 1224, l: 1225	
	ldr	 w1, [x2]	// id: 1225, l: 1226	
	str	 w1, [x0]	// id: 1226, l: 1227	
	ldr	 x1, [sp, #64]	// id: 1227, l: 1228	
	mov	 x0, x1	// id: 1228, l: 1229	
	lsl	 x0, x0, #3	// id: 1229, l: 1230	
	add	 x0, x0, x1	// id: 1230, l: 1231	
	lsl	 x0, x0, #3	// id: 1231, l: 1232	
	sub	 x0, x0, #0x48	// id: 1232, l: 1233	
	ldr	 x1, [sp, #56]	// id: 1233, l: 1234	
	add	 x0, x1, x0	// id: 1234, l: 1235	
	ldr	 x1, [sp, #48]	// id: 1235, l: 1236	
	str	 x1, [x0, #16]	// id: 1236, l: 1237	
	ldr	 x1, [sp, #64]	// id: 1237, l: 1238	
	mov	 x0, x1	// id: 1238, l: 1239	
	lsl	 x0, x0, #3	// id: 1239, l: 1240	
	add	 x0, x0, x1	// id: 1240, l: 1241	
	lsl	 x0, x0, #3	// id: 1241, l: 1242	
	sub	 x0, x0, #0x48	// id: 1242, l: 1243	
	ldr	 x1, [sp, #56]	// id: 1243, l: 1244	
	add	 x0, x1, x0	// id: 1244, l: 1245	
	ldr	 x1, [sp, #40]	// id: 1245, l: 1246	
	str	 x1, [x0, #24]	// id: 1246, l: 1247	
	ldr	 x1, [sp, #64]	// id: 1247, l: 1248	
	mov	 x0, x1	// id: 1248, l: 1249	
	lsl	 x0, x0, #3	// id: 1249, l: 1250	
	add	 x0, x0, x1	// id: 1250, l: 1251	
	lsl	 x0, x0, #3	// id: 1251, l: 1252	
	sub	 x0, x0, #0x48	// id: 1252, l: 1253	
	ldr	 x1, [sp, #56]	// id: 1253, l: 1254	
	add	 x0, x1, x0	// id: 1254, l: 1255	
	ldr	 x1, [sp, #32]	// id: 1255, l: 1256	
	str	 x1, [x0, #8]	// id: 1256, l: 1257	
	ldr	 x1, [sp, #64]	// id: 1257, l: 1258	
	mov	 x0, x1	// id: 1258, l: 1259	
	lsl	 x0, x0, #3	// id: 1259, l: 1260	
	add	 x0, x0, x1	// id: 1260, l: 1261	
	lsl	 x0, x0, #3	// id: 1261, l: 1262	
	sub	 x0, x0, #0x48	// id: 1262, l: 1263	
	ldr	 x1, [sp, #56]	// id: 1263, l: 1264	
	add	 x0, x1, x0	// id: 1264, l: 1265	
	ldr	 x1, [sp, #32]	// id: 1265, l: 1266	
	str	 x1, [x0, #64]	// id: 1266, l: 1267	
	ldr	 x1, [sp, #64]	// id: 1267, l: 1268	
	mov	 x0, x1	// id: 1268, l: 1269	
	lsl	 x0, x0, #3	// id: 1269, l: 1270	
	add	 x0, x0, x1	// id: 1270, l: 1271	
	lsl	 x0, x0, #3	// id: 1271, l: 1272	
	sub	 x0, x0, #0x48	// id: 1272, l: 1273	
	ldr	 x1, [sp, #56]	// id: 1273, l: 1274	
	add	 x0, x1, x0	// id: 1274, l: 1275	
	ldr	 x1, [sp, #24]	// id: 1275, l: 1276	
	str	 x1, [x0, #56]	// id: 1276, l: 1277	
	ldr	 x1, [sp, #64]	// id: 1277, l: 1278	
	mov	 x0, x1	// id: 1278, l: 1279	
	lsl	 x0, x0, #3	// id: 1279, l: 1280	
	add	 x0, x0, x1	// id: 1280, l: 1281	
	lsl	 x0, x0, #3	// id: 1281, l: 1282	
	sub	 x0, x0, #0x48	// id: 1282, l: 1283	
	ldr	 x1, [sp, #56]	// id: 1283, l: 1284	
	add	 x0, x1, x0	// id: 1284, l: 1285	
	ldr	 x1, [sp, #8]	// id: 1285, l: 1286	
	str	 w1, [x0]	// id: 1286, l: 1287	
	ldr	 x0, [sp, #64]	// id: 1287, l: 1288	
	str	 x0, [sp, #72]	// id: 1288, l: 1289	
	ldr	 x0, [sp, #64]	// id: 1289, l: 1290	
	lsl	 x0, x0, #1	// id: 1290, l: 1291	
	str	 x0, [sp, #64]	// id: 1291, l: 1292	
	ldr	 x1, [sp, #64]	// id: 1292, l: 1293	
	ldr	 x0, [sp, #16]	// id: 1293, l: 1294	
	cmp	 x1, x0	// id: 1294, l: 1295	
	bge	 .L55	// id: 1295, l: 1296	
	ldr	 x1, [sp, #64]	// id: 1296, l: 1297	
	mov	 x0, x1	// id: 1297, l: 1298	
	lsl	 x0, x0, #3	// id: 1298, l: 1299	
	add	 x0, x0, x1	// id: 1299, l: 1300	
	lsl	 x0, x0, #3	// id: 1300, l: 1301	
	sub	 x0, x0, #0x48	// id: 1301, l: 1302	
	ldr	 x1, [sp, #56]	// id: 1302, l: 1303	
	add	 x0, x1, x0	// id: 1303, l: 1304	
	ldr	 x2, [x0, #56]	// id: 1304, l: 1305	
	ldr	 x1, [sp, #64]	// id: 1305, l: 1306	
	mov	 x0, x1	// id: 1306, l: 1307	
	lsl	 x0, x0, #3	// id: 1307, l: 1308	
	add	 x0, x0, x1	// id: 1308, l: 1309	
	lsl	 x0, x0, #3	// id: 1309, l: 1310	
	mov	 x1, x0	// id: 1310, l: 1311	
	ldr	 x0, [sp, #56]	// id: 1311, l: 1312	
	add	 x0, x0, x1	// id: 1312, l: 1313	
	ldr	 x0, [x0, #56]	// id: 1313, l: 1314	
	cmp	 x2, x0	// id: 1314, l: 1315	
	bge	 .L55	// id: 1315, l: 1316	
	ldr	 x0, [sp, #64]	// id: 1316, l: 1317	
	add	 x0, x0, #0x1	// id: 1317, l: 1318	
	str	 x0, [sp, #64]	// id: 1318, l: 1319	
.L55:	// id: 1319, l: 1320	
	ldr	 x1, [sp, #64]	// id: 1320, l: 1321	
	ldr	 x0, [sp, #16]	// id: 1321, l: 1322	
	cmp	 x1, x0	// id: 1322, l: 1323	
	bgt	 .L59	// id: 1323, l: 1324	
	ldr	 x1, [sp, #64]	// id: 1324, l: 1325	
	mov	 x0, x1	// id: 1325, l: 1326	
	lsl	 x0, x0, #3	// id: 1326, l: 1327	
	add	 x0, x0, x1	// id: 1327, l: 1328	
	lsl	 x0, x0, #3	// id: 1328, l: 1329	
	sub	 x0, x0, #0x48	// id: 1329, l: 1330	
	ldr	 x1, [sp, #56]	// id: 1330, l: 1331	
	add	 x0, x1, x0	// id: 1331, l: 1332	
	ldr	 x0, [x0, #56]	// id: 1332, l: 1333	
	ldr	 x1, [sp, #24]	// id: 1333, l: 1334	
	cmp	 x1, x0	// id: 1334, l: 1335	
	blt	 .L57	// id: 1335, l: 1336	
	nop		// id: 1336, l: 1337	
.L59:	// id: 1337, l: 1338	
	nop		// id: 1338, l: 1339	
	add	 sp, sp, #0x50	// id: 1339, l: 1340	
	.cfi_def_cfa_offset	0	// id: 1340, l: 1341	
	ret		// id: 1341, l: 1342	
	.cfi_endproc		// id: 1342, l: 1343	
.LFE6:	// id: 1343, l: 1344	
	.size	replace_weaker_arc, .-replace_weaker_arc	// id: 1344, l: 1345	
	.p2align	2, , 0	// id: 1345, l: 1346	
	.globl	calculate_max_redcost	// id: 1346, l: 1347	
	.type	calculate_max_redcost, %function	// id: 1347, l: 1348	
calculate_max_redcost:	// id: 1348, l: 1349	
.LFB7:	// id: 1349, l: 1350	
	.cfi_startproc		// id: 1350, l: 1351	
	sub	 sp, sp, #0x30	// id: 1351, l: 1352	
	.cfi_def_cfa_offset	48	// id: 1352, l: 1353	
	str	 x0, [sp, #24]	// id: 1353, l: 1354	
	str	 x1, [sp, #16]	// id: 1354, l: 1355	
	str	 x2, [sp, #8]	// id: 1355, l: 1356	
	str	 x3, [sp]	// id: 1356, l: 1357	
	ldr	 x0, [sp, #16]	// id: 1357, l: 1358	
	str	 xzr, [x0]	// id: 1358, l: 1359	
	str	 xzr, [sp, #40]	// id: 1359, l: 1360	
	b	 .L61	// id: 1360, l: 1361	
.L63:	// id: 1361, l: 1362	
	ldr	 x0, [sp, #40]	// id: 1362, l: 1363	
	lsl	 x0, x0, #3	// id: 1363, l: 1364	
	ldr	 x1, [sp, #8]	// id: 1364, l: 1365	
	add	 x0, x1, x0	// id: 1365, l: 1366	
	ldr	 x0, [x0]	// id: 1366, l: 1367	
	ldr	 x0, [x0]	// id: 1367, l: 1368	
	ldr	 x1, [x0, #56]	// id: 1368, l: 1369	
	ldr	 x0, [sp, #16]	// id: 1369, l: 1370	
	ldr	 x0, [x0]	// id: 1370, l: 1371	
	cmp	 x1, x0	// id: 1371, l: 1372	
	ble	 .L62	// id: 1372, l: 1373	
	ldr	 x0, [sp, #40]	// id: 1373, l: 1374	
	lsl	 x0, x0, #3	// id: 1374, l: 1375	
	ldr	 x1, [sp, #8]	// id: 1375, l: 1376	
	add	 x0, x1, x0	// id: 1376, l: 1377	
	ldr	 x0, [x0]	// id: 1377, l: 1378	
	ldr	 x0, [x0]	// id: 1378, l: 1379	
	ldr	 x1, [x0, #56]	// id: 1379, l: 1380	
	ldr	 x0, [sp, #16]	// id: 1380, l: 1381	
	str	 x1, [x0]	// id: 1381, l: 1382	
.L62:	// id: 1382, l: 1383	
	ldr	 x0, [sp, #40]	// id: 1383, l: 1384	
	add	 x0, x0, #0x1	// id: 1384, l: 1385	
	str	 x0, [sp, #40]	// id: 1385, l: 1386	
.L61:	// id: 1386, l: 1387	
	ldr	 x1, [sp, #40]	// id: 1387, l: 1388	
	ldr	 x0, [sp]	// id: 1388, l: 1389	
	cmp	 x1, x0	// id: 1389, l: 1390	
	blt	 .L63	// id: 1390, l: 1391	
	nop		// id: 1391, l: 1392	
	nop		// id: 1392, l: 1393	
	add	 sp, sp, #0x30	// id: 1393, l: 1394	
	.cfi_def_cfa_offset	0	// id: 1394, l: 1395	
	ret		// id: 1395, l: 1396	
	.cfi_endproc		// id: 1396, l: 1397	
.LFE7:	// id: 1397, l: 1398	
	.size	calculate_max_redcost, .-calculate_max_redcost	// id: 1398, l: 1399	
	.p2align	2, , 0	// id: 1399, l: 1400	
	.globl	switch_arcs	// id: 1400, l: 1401	
	.type	switch_arcs, %function	// id: 1401, l: 1402	
switch_arcs:	// id: 1402, l: 1403	
.LFB8:	// id: 1403, l: 1404	
	.cfi_startproc		// id: 1404, l: 1405	
	stp	 x29, x30, [sp, #-208]!	// id: 1405, l: 1406	
	.cfi_def_cfa_offset	208	// id: 1406, l: 1407	
	.cfi_offset	29, -208	// id: 1407, l: 1408	
	.cfi_offset	30, -200	// id: 1408, l: 1409	
	mov	 x29, sp	// id: 1409, l: 1410	
	str	 x0, [sp, #72]	// id: 1410, l: 1411	
	str	 x1, [sp, #64]	// id: 1411, l: 1412	
	str	 x2, [sp, #56]	// id: 1412, l: 1413	
	str	 x3, [sp, #48]	// id: 1413, l: 1414	
	str	 w4, [sp, #44]	// id: 1414, l: 1415	
	str	 x5, [sp, #32]	// id: 1415, l: 1416	
	str	 x6, [sp, #24]	// id: 1416, l: 1417	
	str	 x7, [sp, #16]	// id: 1417, l: 1418	
	str	 xzr, [sp, #176]	// id: 1418, l: 1419	
	str	 xzr, [sp, #200]	// id: 1419, l: 1420	
	ldrsw	 x0, [sp, #44]	// id: 1420, l: 1421	
	str	 x0, [sp, #192]	// id: 1421, l: 1422	
	b	 .L65	// id: 1422, l: 1423	
.L70:	// id: 1423, l: 1424	
	ldr	 x0, [sp, #192]	// id: 1424, l: 1425	
	lsl	 x0, x0, #3	// id: 1425, l: 1426	
	ldr	 x1, [sp, #64]	// id: 1426, l: 1427	
	add	 x0, x1, x0	// id: 1427, l: 1428	
	ldr	 x0, [x0]	// id: 1428, l: 1429	
	ldr	 x2, [sp, #24]	// id: 1429, l: 1430	
	ldr	 x1, [sp, #24]	// id: 1430, l: 1431	
	cmp	 x2, x0	// id: 1431, l: 1432	
	csel	 x0, x1, x0, le	// id: 1432, l: 1433	
	str	 x0, [sp, #168]	// id: 1433, l: 1434	
	str	 xzr, [sp, #184]	// id: 1434, l: 1435	
	b	 .L66	// id: 1435, l: 1436	
.L69:	// id: 1436, l: 1437	
	ldr	 x0, [sp, #192]	// id: 1437, l: 1438	
	lsl	 x0, x0, #3	// id: 1438, l: 1439	
	ldr	 x1, [sp, #56]	// id: 1439, l: 1440	
	add	 x0, x1, x0	// id: 1440, l: 1441	
	ldr	 x2, [x0]	// id: 1441, l: 1442	
	ldr	 x1, [sp, #184]	// id: 1442, l: 1443	
	mov	 x0, x1	// id: 1443, l: 1444	
	lsl	 x0, x0, #3	// id: 1444, l: 1445	
	add	 x0, x0, x1	// id: 1445, l: 1446	
	lsl	 x0, x0, #3	// id: 1446, l: 1447	
	add	 x0, x2, x0	// id: 1447, l: 1448	
	str	 x0, [sp, #160]	// id: 1448, l: 1449	
	ldr	 x0, [sp, #160]	// id: 1449, l: 1450	
	ldrsh	 w0, [x0, #32]	// id: 1450, l: 1451	
	cmp	 w0, #0x0	// id: 1451, l: 1452	
	bne	 .L67	// id: 1452, l: 1453	
	ldr	 x0, [sp, #160]	// id: 1453, l: 1454	
	ldr	 x1, [x0, #56]	// id: 1454, l: 1455	
	ldr	 x0, [sp, #48]	// id: 1455, l: 1456	
	ldr	 x0, [x0, #56]	// id: 1456, l: 1457	
	cmp	 x1, x0	// id: 1457, l: 1458	
	blt	 .L68	// id: 1458, l: 1459	
	ldr	 x0, [sp, #160]	// id: 1459, l: 1460	
	ldr	 x1, [x0, #56]	// id: 1460, l: 1461	
	ldr	 x0, [sp, #48]	// id: 1461, l: 1462	
	ldr	 x0, [x0, #56]	// id: 1462, l: 1463	
	cmp	 x1, x0	// id: 1463, l: 1464	
	bne	 .L67	// id: 1464, l: 1465	
	ldr	 x0, [sp, #160]	// id: 1465, l: 1466	
	ldr	 w1, [x0]	// id: 1466, l: 1467	
	ldr	 x0, [sp, #48]	// id: 1467, l: 1468	
	ldr	 w0, [x0]	// id: 1468, l: 1469	
	cmp	 w1, w0	// id: 1469, l: 1470	
	bge	 .L67	// id: 1470, l: 1471	
.L68:	// id: 1471, l: 1472	
	ldr	 x1, [sp, #160]	// id: 1472, l: 1473	
	add	 x0, sp, #0x58	// id: 1473, l: 1474	
	ldp	 x2, x3, [x1]	// id: 1474, l: 1475	
	stp	 x2, x3, [x0]	// id: 1475, l: 1476	
	ldp	 x2, x3, [x1, #16]	// id: 1476, l: 1477	
	stp	 x2, x3, [x0, #16]	// id: 1477, l: 1478	
	ldp	 x2, x3, [x1, #32]	// id: 1478, l: 1479	
	stp	 x2, x3, [x0, #32]	// id: 1479, l: 1480	
	ldp	 x2, x3, [x1, #48]	// id: 1480, l: 1481	
	stp	 x2, x3, [x0, #48]	// id: 1481, l: 1482	
	ldr	 x1, [x1, #64]	// id: 1482, l: 1483	
	str	 x1, [x0, #64]	// id: 1483, l: 1484	
	ldr	 x0, [sp, #176]	// id: 1484, l: 1485	
	add	 x0, x0, #0x1	// id: 1485, l: 1486	
	str	 x0, [sp, #176]	// id: 1486, l: 1487	
	ldr	 x0, [sp, #160]	// id: 1487, l: 1488	
	ldr	 x1, [sp, #48]	// id: 1488, l: 1489	
	ldp	 x2, x3, [x1]	// id: 1489, l: 1490	
	stp	 x2, x3, [x0]	// id: 1490, l: 1491	
	ldp	 x2, x3, [x1, #16]	// id: 1491, l: 1492	
	stp	 x2, x3, [x0, #16]	// id: 1492, l: 1493	
	ldp	 x2, x3, [x1, #32]	// id: 1493, l: 1494	
	stp	 x2, x3, [x0, #32]	// id: 1494, l: 1495	
	ldp	 x2, x3, [x1, #48]	// id: 1495, l: 1496	
	stp	 x2, x3, [x0, #48]	// id: 1496, l: 1497	
	ldr	 x1, [x1, #64]	// id: 1497, l: 1498	
	str	 x1, [x0, #64]	// id: 1498, l: 1499	
	ldr	 x0, [sp, #104]	// id: 1499, l: 1500	
	ldr	 x1, [sp, #112]	// id: 1500, l: 1501	
	ldr	 x2, [sp, #96]	// id: 1501, l: 1502	
	ldr	 x3, [sp, #144]	// id: 1502, l: 1503	
	ldr	 w4, [sp, #88]	// id: 1503, l: 1504	
	sxtw	 x4, w4	// id: 1504, l: 1505	
	mov	 x6, x4	// id: 1505, l: 1506	
	ldr	 x5, [sp, #32]	// id: 1506, l: 1507	
	mov	 x4, x3	// id: 1507, l: 1508	
	mov	 x3, x2	// id: 1508, l: 1509	
	mov	 x2, x1	// id: 1509, l: 1510	
	mov	 x1, x0	// id: 1510, l: 1511	
	ldr	 x0, [sp, #48]	// id: 1511, l: 1512	
	bl	 replace_weaker_arc	// id: 1512, l: 1513	
.L67:	// id: 1513, l: 1514	
	ldr	 x0, [sp, #184]	// id: 1514, l: 1515	
	add	 x0, x0, #0x1	// id: 1515, l: 1516	
	str	 x0, [sp, #184]	// id: 1516, l: 1517	
.L66:	// id: 1517, l: 1518	
	ldr	 x1, [sp, #184]	// id: 1518, l: 1519	
	ldr	 x0, [sp, #168]	// id: 1519, l: 1520	
	cmp	 x1, x0	// id: 1520, l: 1521	
	blt	 .L69	// id: 1521, l: 1522	
	ldr	 x0, [sp, #200]	// id: 1522, l: 1523	
	add	 x0, x0, #0x1	// id: 1523, l: 1524	
	str	 x0, [sp, #200]	// id: 1524, l: 1525	
	ldr	 x0, [sp, #192]	// id: 1525, l: 1526	
	add	 x0, x0, #0x1	// id: 1526, l: 1527	
	ldr	 x1, [sp, #16]	// id: 1527, l: 1528	
	sdiv	 x2, x0, x1	// id: 1528, l: 1529	
	ldr	 x1, [sp, #16]	// id: 1529, l: 1530	
	mul	 x1, x2, x1	// id: 1530, l: 1531	
	sub	 x0, x0, x1	// id: 1531, l: 1532	
	str	 x0, [sp, #192]	// id: 1532, l: 1533	
.L65:	// id: 1533, l: 1534	
	ldr	 x1, [sp, #200]	// id: 1534, l: 1535	
	ldr	 x0, [sp, #16]	// id: 1535, l: 1536	
	cmp	 x1, x0	// id: 1536, l: 1537	
	blt	 .L70	// id: 1537, l: 1538	
	ldr	 x0, [sp, #176]	// id: 1538, l: 1539	
	ldp	 x29, x30, [sp], #208	// id: 1539, l: 1540	
	.cfi_restore	30	// id: 1540, l: 1541	
	.cfi_restore	29	// id: 1541, l: 1542	
	.cfi_def_cfa_offset	0	// id: 1542, l: 1543	
	ret		// id: 1543, l: 1544	
	.cfi_endproc		// id: 1544, l: 1545	
.LFE8:	// id: 1545, l: 1546	
	.size	switch_arcs, .-switch_arcs	// id: 1546, l: 1547	
	.p2align	2, , 0	// id: 1547, l: 1548	
	.globl	price_out_impl	// id: 1548, l: 1549	
	.type	price_out_impl, %function	// id: 1549, l: 1550	
price_out_impl:	// id: 1550, l: 1551	
.LFB9:	// id: 1551, l: 1552	
	.cfi_startproc		// id: 1552, l: 1553	
	stp	 x29, x30, [sp, #-272]!	// id: 1553, l: 1554	
	.cfi_def_cfa_offset	272	// id: 1554, l: 1555	
	.cfi_offset	29, -272	// id: 1555, l: 1556	
	.cfi_offset	30, -264	// id: 1556, l: 1557	
	mov	 x29, sp	// id: 1557, l: 1558	
	stp	 x19, x20, [sp, #16]	// id: 1558, l: 1559	
	stp	 x21, x22, [sp, #32]	// id: 1559, l: 1560	
	stp	 x23, x24, [sp, #48]	// id: 1560, l: 1561	
	stp	 x25, x26, [sp, #64]	// id: 1561, l: 1562	
	stp	 x27, x28, [sp, #80]	// id: 1562, l: 1563	
	.cfi_offset	19, -256	// id: 1563, l: 1564	
	.cfi_offset	20, -248	// id: 1564, l: 1565	
	.cfi_offset	21, -240	// id: 1565, l: 1566	
	.cfi_offset	22, -232	// id: 1566, l: 1567	
	.cfi_offset	23, -224	// id: 1567, l: 1568	
	.cfi_offset	24, -216	// id: 1568, l: 1569	
	.cfi_offset	25, -208	// id: 1569, l: 1570	
	.cfi_offset	26, -200	// id: 1570, l: 1571	
	.cfi_offset	27, -192	// id: 1571, l: 1572	
	.cfi_offset	28, -184	// id: 1572, l: 1573	
	str	 x0, [sp, #104]	// id: 1573, l: 1574	
	str	 xzr, [sp, #120]	// id: 1574, l: 1575	
	str	 xzr, [sp, #256]	// id: 1575, l: 1576	
	mov	 x0, #0xf                   	// #15	// id: 1576, l: 1577	
	str	 x0, [sp, #208]	// id: 1577, l: 1578	
	mov	 w0, #0x1                   	// #1	// id: 1578, l: 1579	
	strh	 w0, [sp, #238]	// id: 1579, l: 1580	
	str	 xzr, [sp, #224]	// id: 1580, l: 1581	
	ldr	 x0, [sp, #104]	// id: 1581, l: 1582	
	ldr	 x19, [x0, #528]	// id: 1582, l: 1583	
	mov	 x25, #0x1e                  	// #30	// id: 1583, l: 1584	
	mov	 x0, #0x1                   	// #1	// id: 1584, l: 1585	
	str	 x0, [sp, #200]	// id: 1585, l: 1586	
	ldr	 x0, [sp, #200]	// id: 1586, l: 1587	
	lsl	 x0, x0, #3	// id: 1587, l: 1588	
	bl	 malloc	// id: 1588, l: 1589	
	str	 x0, [sp, #192]	// id: 1589, l: 1590	
	ldr	 x0, [sp, #200]	// id: 1590, l: 1591	
	lsl	 x0, x0, #3	// id: 1591, l: 1592	
	bl	 malloc	// id: 1592, l: 1593	
	str	 x0, [sp, #184]	// id: 1593, l: 1594	
	ldr	 x0, [sp, #200]	// id: 1594, l: 1595	
	lsl	 x0, x0, #3	// id: 1595, l: 1596	
	bl	 malloc	// id: 1596, l: 1597	
	str	 x0, [sp, #176]	// id: 1597, l: 1598	
	ldr	 x0, [sp, #200]	// id: 1598, l: 1599	
	lsl	 x0, x0, #3	// id: 1599, l: 1600	
	bl	 malloc	// id: 1600, l: 1601	
	str	 x0, [sp, #168]	// id: 1601, l: 1602	
	ldr	 x0, [sp, #208]	// id: 1602, l: 1603	
	sub	 x0, x19, x0	// id: 1603, l: 1604	
	str	 x0, [sp, #96]	// id: 1604, l: 1605	
	ldr	 x0, [sp, #104]	// id: 1605, l: 1606	
	ldr	 x1, [x0, #408]	// id: 1606, l: 1607	
	mov	 x0, #0x3a98                	// #15000	// id: 1607, l: 1608	
	cmp	 x1, x0	// id: 1608, l: 1609	
	bgt	 .L73	// id: 1609, l: 1610	
	ldr	 x0, [sp, #104]	// id: 1610, l: 1611	
	ldr	 x1, [x0, #424]	// id: 1611, l: 1612	
	ldr	 x0, [sp, #104]	// id: 1612, l: 1613	
	ldr	 x0, [x0, #456]	// id: 1613, l: 1614	
	add	 x1, x1, x0	// id: 1614, l: 1615	
	ldr	 x0, [sp, #104]	// id: 1615, l: 1616	
	ldr	 x0, [x0, #416]	// id: 1616, l: 1617	
	cmp	 x1, x0	// id: 1617, l: 1618	
	ble	 .L74	// id: 1618, l: 1619	
	ldr	 x0, [sp, #104]	// id: 1619, l: 1620	
	ldr	 x1, [x0, #408]	// id: 1620, l: 1621	
	ldr	 x0, [sp, #104]	// id: 1621, l: 1622	
	ldr	 x0, [x0, #408]	// id: 1622, l: 1623	
	mul	 x0, x1, x0	// id: 1623, l: 1624	
	lsr	 x1, x0, #63	// id: 1624, l: 1625	
	add	 x0, x1, x0	// id: 1625, l: 1626	
	asr	 x0, x0, #1	// id: 1626, l: 1627	
	mov	 x1, x0	// id: 1627, l: 1628	
	ldr	 x0, [sp, #104]	// id: 1628, l: 1629	
	ldr	 x0, [x0, #424]	// id: 1629, l: 1630	
	add	 x1, x1, x0	// id: 1630, l: 1631	
	ldr	 x0, [sp, #104]	// id: 1631, l: 1632	
	ldr	 x0, [x0, #416]	// id: 1632, l: 1633	
	cmp	 x1, x0	// id: 1633, l: 1634	
	ble	 .L74	// id: 1634, l: 1635	
	mov	 x0, #0x1                   	// #1	// id: 1635, l: 1636	
	str	 x0, [sp, #256]	// id: 1636, l: 1637	
	ldr	 x0, [sp, #104]	// id: 1637, l: 1638	
	bl	 resize_prob	// id: 1638, l: 1639	
	cmp	 x0, #0x0	// id: 1639, l: 1640	
	beq	 .L75	// id: 1640, l: 1641	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 1641, l: 1642	
	b	 .L114	// id: 1642, l: 1643	
.L75:	// id: 1643, l: 1644	
	adrp	 x0, getOriginalArcPosition	// id: 1644, l: 1645	
	add	 x1, x0, :lo12:getOriginalArcPosition	// id: 1645, l: 1646	
	ldr	 x0, [sp, #104]	// id: 1646, l: 1647	
	bl	 refresh_neighbour_lists	// id: 1647, l: 1648	
	b	 .L74	// id: 1648, l: 1649	
.L73:	// id: 1649, l: 1650	
	ldr	 x0, [sp, #104]	// id: 1650, l: 1651	
	ldr	 x1, [x0, #424]	// id: 1651, l: 1652	
	ldr	 x0, [sp, #104]	// id: 1652, l: 1653	
	ldr	 x0, [x0, #456]	// id: 1653, l: 1654	
	add	 x1, x1, x0	// id: 1654, l: 1655	
	ldr	 x0, [sp, #104]	// id: 1655, l: 1656	
	ldr	 x0, [x0, #416]	// id: 1656, l: 1657	
	cmp	 x1, x0	// id: 1657, l: 1658	
	ble	 .L74	// id: 1658, l: 1659	
	ldr	 x0, [sp, #104]	// id: 1659, l: 1660	
	ldr	 x1, [x0, #408]	// id: 1660, l: 1661	
	ldr	 x0, [sp, #104]	// id: 1661, l: 1662	
	ldr	 x0, [x0, #408]	// id: 1662, l: 1663	
	mul	 x0, x1, x0	// id: 1663, l: 1664	
	lsr	 x1, x0, #63	// id: 1664, l: 1665	
	add	 x0, x1, x0	// id: 1665, l: 1666	
	asr	 x0, x0, #1	// id: 1666, l: 1667	
	mov	 x1, x0	// id: 1667, l: 1668	
	ldr	 x0, [sp, #104]	// id: 1668, l: 1669	
	ldr	 x0, [x0, #424]	// id: 1669, l: 1670	
	add	 x1, x1, x0	// id: 1670, l: 1671	
	ldr	 x0, [sp, #104]	// id: 1671, l: 1672	
	ldr	 x0, [x0, #416]	// id: 1672, l: 1673	
	cmp	 x1, x0	// id: 1673, l: 1674	
	ble	 .L74	// id: 1674, l: 1675	
	mov	 x0, #0x1                   	// #1	// id: 1675, l: 1676	
	str	 x0, [sp, #256]	// id: 1676, l: 1677	
	ldr	 x0, [sp, #104]	// id: 1677, l: 1678	
	bl	 resize_prob	// id: 1678, l: 1679	
	cmp	 x0, #0x0	// id: 1679, l: 1680	
	beq	 .L77	// id: 1680, l: 1681	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 1681, l: 1682	
	b	 .L114	// id: 1682, l: 1683	
.L77:	// id: 1683, l: 1684	
	adrp	 x0, getOriginalArcPosition	// id: 1684, l: 1685	
	add	 x1, x0, :lo12:getOriginalArcPosition	// id: 1685, l: 1686	
	ldr	 x0, [sp, #104]	// id: 1686, l: 1687	
	bl	 refresh_neighbour_lists	// id: 1687, l: 1688	
.L74:	// id: 1688, l: 1689	
	ldr	 x0, [sp, #104]	// id: 1689, l: 1690	
	ldr	 x1, [x0, #408]	// id: 1690, l: 1691	
	mov	 x0, #0x3a98                	// #15000	// id: 1691, l: 1692	
	cmp	 x1, x0	// id: 1692, l: 1693	
	bgt	 .L78	// id: 1693, l: 1694	
	mov	 x0, #0x3e8                 	// #1000	// id: 1694, l: 1695	
	str	 x0, [sp, #216]	// id: 1695, l: 1696	
	b	 .L79	// id: 1696, l: 1697	
.L78:	// id: 1697, l: 1698	
	mov	 x0, #0x7d0                 	// #2000	// id: 1698, l: 1699	
	str	 x0, [sp, #216]	// id: 1699, l: 1700	
.L79:	// id: 1700, l: 1701	
	ldr	 x0, [sp, #104]	// id: 1701, l: 1702	
	ldr	 x28, [x0, #584]	// id: 1702, l: 1703	
	cmp	 x28, #0x0	// id: 1703, l: 1704	
	bne	 .L80	// id: 1704, l: 1705	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 1705, l: 1706	
	b	 .L114	// id: 1706, l: 1707	
.L80:	// id: 1707, l: 1708	
	ldr	 x0, [sp, #104]	// id: 1708, l: 1709	
	ldr	 x1, [x0, #448]	// id: 1709, l: 1710	
	ldr	 x0, [sp, #200]	// id: 1710, l: 1711	
	sdiv	 x0, x1, x0	// id: 1711, l: 1712	
	str	 x0, [sp, #160]	// id: 1712, l: 1713	
	mov	 w0, #0x1                   	// #1	// id: 1713, l: 1714	
	strh	 w0, [sp, #238]	// id: 1714, l: 1715	
	ldr	 x0, [sp, #104]	// id: 1715, l: 1716	
	ldr	 x1, [x0, #416]	// id: 1716, l: 1717	
	ldr	 x0, [sp, #200]	// id: 1717, l: 1718	
	sdiv	 x0, x1, x0	// id: 1718, l: 1719	
	str	 x0, [sp, #152]	// id: 1719, l: 1720	
	mov	 w0, #0x1                   	// #1	// id: 1720, l: 1721	
	strh	 w0, [sp, #236]	// id: 1721, l: 1722	
	str	 xzr, [sp, #112]	// id: 1722, l: 1723	
	str	 xzr, [sp, #224]	// id: 1723, l: 1724	
	str	 wzr, [sp, #148]	// id: 1724, l: 1725	
	ldrsw	 x1, [sp, #148]	// id: 1725, l: 1726	
	ldr	 x0, [sp, #152]	// id: 1726, l: 1727	
	mul	 x0, x1, x0	// id: 1727, l: 1728	
	mov	 x1, x0	// id: 1728, l: 1729	
	mov	 x0, x1	// id: 1729, l: 1730	
	lsl	 x0, x0, #3	// id: 1730, l: 1731	
	add	 x0, x0, x1	// id: 1731, l: 1732	
	lsl	 x0, x0, #3	// id: 1732, l: 1733	
	mov	 x2, x0	// id: 1733, l: 1734	
	ldrsw	 x0, [sp, #148]	// id: 1734, l: 1735	
	lsl	 x0, x0, #3	// id: 1735, l: 1736	
	ldr	 x1, [sp, #168]	// id: 1736, l: 1737	
	add	 x0, x1, x0	// id: 1737, l: 1738	
	add	 x1, x28, x2	// id: 1738, l: 1739	
	str	 x1, [x0]	// id: 1739, l: 1740	
	ldrsw	 x0, [sp, #148]	// id: 1740, l: 1741	
	lsl	 x0, x0, #3	// id: 1741, l: 1742	
	ldr	 x1, [sp, #184]	// id: 1742, l: 1743	
	add	 x0, x1, x0	// id: 1743, l: 1744	
	str	 xzr, [x0]	// id: 1744, l: 1745	
	ldrsw	 x0, [sp, #148]	// id: 1745, l: 1746	
	lsl	 x0, x0, #3	// id: 1746, l: 1747	
	ldr	 x1, [sp, #192]	// id: 1747, l: 1748	
	add	 x0, x1, x0	// id: 1748, l: 1749	
	str	 xzr, [x0]	// id: 1749, l: 1750	
	ldr	 x0, [sp, #104]	// id: 1750, l: 1751	
	ldr	 x1, [x0, #576]	// id: 1751, l: 1752	
	ldrsw	 x2, [sp, #148]	// id: 1752, l: 1753	
	ldr	 x0, [sp, #160]	// id: 1753, l: 1754	
	mul	 x0, x2, x0	// id: 1754, l: 1755	
	mov	 x2, x0	// id: 1755, l: 1756	
	mov	 x0, x2	// id: 1756, l: 1757	
	lsl	 x0, x0, #3	// id: 1757, l: 1758	
	add	 x0, x0, x2	// id: 1758, l: 1759	
	lsl	 x0, x0, #3	// id: 1759, l: 1760	
	add	 x19, x1, x0	// id: 1760, l: 1761	
	ldr	 x0, [sp, #104]	// id: 1761, l: 1762	
	ldr	 x0, [x0, #408]	// id: 1762, l: 1763	
	str	 x0, [sp, #136]	// id: 1763, l: 1764	
	str	 xzr, [sp, #248]	// id: 1764, l: 1765	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 1765, l: 1766	
	str	 x0, [sp, #240]	// id: 1766, l: 1767	
	ldr	 x2, [sp, #160]	// id: 1767, l: 1768	
	ldrsw	 x0, [sp, #148]	// id: 1768, l: 1769	
	lsl	 x0, x0, #3	// id: 1769, l: 1770	
	ldr	 x1, [sp, #176]	// id: 1770, l: 1771	
	add	 x20, x1, x0	// id: 1771, l: 1772	
	mov	 x1, #0x8                   	// #8	// id: 1772, l: 1773	
	mov	 x0, x2	// id: 1773, l: 1774	
	bl	 calloc	// id: 1774, l: 1775	
	str	 x0, [x20]	// id: 1775, l: 1776	
	str	 xzr, [sp, #264]	// id: 1776, l: 1777	
	b	 .L81	// id: 1777, l: 1778	
.L82:	// id: 1778, l: 1779	
	ldr	 x1, [sp, #264]	// id: 1779, l: 1780	
	mov	 x0, x1	// id: 1780, l: 1781	
	lsl	 x0, x0, #3	// id: 1781, l: 1782	
	add	 x0, x0, x1	// id: 1782, l: 1783	
	lsl	 x0, x0, #3	// id: 1783, l: 1784	
	mov	 x2, x0	// id: 1784, l: 1785	
	ldrsw	 x0, [sp, #148]	// id: 1785, l: 1786	
	lsl	 x0, x0, #3	// id: 1786, l: 1787	
	ldr	 x1, [sp, #176]	// id: 1787, l: 1788	
	add	 x0, x1, x0	// id: 1788, l: 1789	
	ldr	 x1, [x0]	// id: 1789, l: 1790	
	ldr	 x0, [sp, #264]	// id: 1790, l: 1791	
	lsl	 x0, x0, #3	// id: 1791, l: 1792	
	add	 x0, x1, x0	// id: 1792, l: 1793	
	add	 x1, x19, x2	// id: 1793, l: 1794	
	str	 x1, [x0]	// id: 1794, l: 1795	
	ldr	 x0, [sp, #264]	// id: 1795, l: 1796	
	add	 x0, x0, #0x1	// id: 1796, l: 1797	
	str	 x0, [sp, #264]	// id: 1797, l: 1798	
.L81:	// id: 1798, l: 1799	
	ldr	 x1, [sp, #264]	// id: 1799, l: 1800	
	ldr	 x0, [sp, #160]	// id: 1800, l: 1801	
	cmp	 x1, x0	// id: 1801, l: 1802	
	blt	 .L82	// id: 1802, l: 1803	
	ldr	 x0, [sp, #104]	// id: 1803, l: 1804	
	ldr	 x20, [x0, #568]	// id: 1804, l: 1805	
	str	 xzr, [sp, #264]	// id: 1805, l: 1806	
	b	 .L83	// id: 1806, l: 1807	
.L85:	// id: 1807, l: 1808	
	ldr	 x0, [sp, #264]	// id: 1808, l: 1809	
	add	 x0, x0, #0x1	// id: 1809, l: 1810	
	str	 x0, [sp, #264]	// id: 1810, l: 1811	
	add	 x20, x20, #0xd8	// id: 1811, l: 1812	
.L83:	// id: 1812, l: 1813	
	ldr	 x1, [sp, #264]	// id: 1813, l: 1814	
	ldr	 x0, [sp, #136]	// id: 1814, l: 1815	
	cmp	 x1, x0	// id: 1815, l: 1816	
	bge	 .L84	// id: 1816, l: 1817	
	add	 x0, x20, #0x48	// id: 1817, l: 1818	
	ldrsh	 w0, [x0, #32]	// id: 1818, l: 1819	
	cmn	 w0, #0x1	// id: 1819, l: 1820	
	beq	 .L85	// id: 1820, l: 1821	
.L84:	// id: 1821, l: 1822	
	mov	 x21, #0x0                   	// #0	// id: 1822, l: 1823	
	b	 .L86	// id: 1823, l: 1824	
.L101:	// id: 1824, l: 1825	
	ldrsh	 w0, [sp, #238]	// id: 1825, l: 1826	
	cmp	 w0, #0x0	// id: 1826, l: 1827	
	bne	 .L87	// id: 1827, l: 1828	
	add	 x0, sp, #0x70	// id: 1828, l: 1829	
	ldr	 x3, [sp, #200]	// id: 1829, l: 1830	
	ldr	 x2, [sp, #176]	// id: 1830, l: 1831	
	mov	 x1, x0	// id: 1831, l: 1832	
	ldr	 x0, [sp, #104]	// id: 1832, l: 1833	
	bl	 calculate_max_redcost	// id: 1833, l: 1834	
.L87:	// id: 1834, l: 1835	
	ldr	 x0, [sp, #264]	// id: 1835, l: 1836	
	ldr	 x1, [sp, #216]	// id: 1836, l: 1837	
	sdiv	 x2, x0, x1	// id: 1837, l: 1838	
	ldr	 x1, [sp, #216]	// id: 1838, l: 1839	
	mul	 x1, x2, x1	// id: 1839, l: 1840	
	sub	 x0, x0, x1	// id: 1840, l: 1841	
	cmp	 x0, #0x0	// id: 1841, l: 1842	
	bne	 .L88	// id: 1842, l: 1843	
	add	 x0, sp, #0x70	// id: 1843, l: 1844	
	ldr	 x3, [sp, #200]	// id: 1844, l: 1845	
	ldr	 x2, [sp, #176]	// id: 1845, l: 1846	
	mov	 x1, x0	// id: 1846, l: 1847	
	ldr	 x0, [sp, #104]	// id: 1847, l: 1848	
	bl	 calculate_max_redcost	// id: 1848, l: 1849	
	ldrsh	 w0, [sp, #238]	// id: 1849, l: 1850	
	cmp	 w0, #0x0	// id: 1850, l: 1851	
	bne	 .L88	// id: 1851, l: 1852	
	ldrsw	 x0, [sp, #148]	// id: 1852, l: 1853	
	lsl	 x0, x0, #3	// id: 1853, l: 1854	
	ldr	 x1, [sp, #184]	// id: 1854, l: 1855	
	add	 x0, x1, x0	// id: 1855, l: 1856	
	ldr	 x1, [sp, #224]	// id: 1856, l: 1857	
	str	 x1, [x0]	// id: 1857, l: 1858	
	ldr	 x7, [sp, #200]	// id: 1858, l: 1859	
	ldr	 x6, [sp, #152]	// id: 1859, l: 1860	
	ldr	 x5, [sp, #160]	// id: 1860, l: 1861	
	ldr	 w4, [sp, #148]	// id: 1861, l: 1862	
	mov	 x3, x19	// id: 1862, l: 1863	
	ldr	 x2, [sp, #168]	// id: 1863, l: 1864	
	ldr	 x1, [sp, #184]	// id: 1864, l: 1865	
	ldr	 x0, [sp, #104]	// id: 1865, l: 1866	
	bl	 switch_arcs	// id: 1866, l: 1867	
	str	 xzr, [sp, #224]	// id: 1867, l: 1868	
	ldrsw	 x0, [sp, #148]	// id: 1868, l: 1869	
	lsl	 x0, x0, #3	// id: 1869, l: 1870	
	ldr	 x1, [sp, #184]	// id: 1870, l: 1871	
	add	 x0, x1, x0	// id: 1871, l: 1872	
	str	 xzr, [x0]	// id: 1872, l: 1873	
.L88:	// id: 1873, l: 1874	
	add	 x0, x20, #0x48	// id: 1874, l: 1875	
	ldrsh	 w0, [x0, #32]	// id: 1875, l: 1876	
	cmn	 w0, #0x1	// id: 1876, l: 1877	
	beq	 .L89	// id: 1877, l: 1878	
	mov	 x1, #0x10                  	// #16	// id: 1878, l: 1879	
	mov	 x0, #0x1                   	// #1	// id: 1879, l: 1880	
	bl	 calloc	// id: 1880, l: 1881	
	mov	 x22, x0	// id: 1881, l: 1882	
	str	 x21, [x22, #8]	// id: 1882, l: 1883	
	add	 x0, x20, #0x48	// id: 1883, l: 1884	
	str	 x0, [x22]	// id: 1884, l: 1885	
	mov	 x21, x22	// id: 1885, l: 1886	
	ldr	 x0, [sp, #240]	// id: 1886, l: 1887	
	add	 x0, x0, #0x1	// id: 1887, l: 1888	
	str	 x0, [sp, #240]	// id: 1888, l: 1889	
.L89:	// id: 1889, l: 1890	
	ldrsh	 w0, [x20, #32]	// id: 1890, l: 1891	
	cmn	 w0, #0x1	// id: 1891, l: 1892	
	beq	 .L90	// id: 1892, l: 1893	
	ldr	 x0, [sp, #264]	// id: 1893, l: 1894	
	ldr	 x1, [sp, #200]	// id: 1894, l: 1895	
	sdiv	 x2, x0, x1	// id: 1895, l: 1896	
	ldr	 x1, [sp, #200]	// id: 1896, l: 1897	
	mul	 x1, x2, x1	// id: 1897, l: 1898	
	sub	 x1, x0, x1	// id: 1898, l: 1899	
	ldrsw	 x0, [sp, #148]	// id: 1899, l: 1900	
	cmp	 x1, x0	// id: 1900, l: 1901	
	beq	 .L91	// id: 1901, l: 1902	
.L90:	// id: 1902, l: 1903	
	ldr	 x1, [sp, #248]	// id: 1903, l: 1904	
	ldr	 x0, [sp, #240]	// id: 1904, l: 1905	
	add	 x0, x1, x0	// id: 1905, l: 1906	
	str	 x0, [sp, #248]	// id: 1906, l: 1907	
	b	 .L92	// id: 1907, l: 1908	
.L91:	// id: 1908, l: 1909	
	ldr	 x26, [x20, #24]	// id: 1909, l: 1910	
	ldr	 w0, [x26, #100]	// id: 1910, l: 1911	
	sxtw	 x1, w0	// id: 1911, l: 1912	
	ldr	 x0, [x20, #64]	// id: 1912, l: 1913	
	sub	 x0, x1, x0	// id: 1913, l: 1914	
	ldr	 x1, [sp, #96]	// id: 1914, l: 1915	
	add	 x0, x1, x0	// id: 1915, l: 1916	
	str	 x0, [sp, #128]	// id: 1916, l: 1917	
	ldr	 x22, [x21, #8]	// id: 1917, l: 1918	
	b	 .L93	// id: 1918, l: 1919	
.L100:	// id: 1919, l: 1920	
	ldr	 x23, [x22]	// id: 1920, l: 1921	
	ldr	 x27, [x23, #16]	// id: 1921, l: 1922	
	ldr	 w0, [x27, #100]	// id: 1922, l: 1923	
	sxtw	 x1, w0	// id: 1923, l: 1924	
	ldr	 x0, [x23, #64]	// id: 1924, l: 1925	
	add	 x0, x1, x0	// id: 1925, l: 1926	
	ldr	 x1, [sp, #128]	// id: 1926, l: 1927	
	cmp	 x1, x0	// id: 1927, l: 1928	
	bge	 .L94	// id: 1928, l: 1929	
	ldr	 x22, [x22, #8]	// id: 1929, l: 1930	
	ldr	 x0, [sp, #248]	// id: 1930, l: 1931	
	add	 x0, x0, #0x1	// id: 1931, l: 1932	
	str	 x0, [sp, #248]	// id: 1932, l: 1933	
	b	 .L93	// id: 1933, l: 1934	
.L94:	// id: 1934, l: 1935	
	ldr	 x0, [x27]	// id: 1935, l: 1936	
	sub	 x1, x25, x0	// id: 1936, l: 1937	
	ldr	 x0, [x26]	// id: 1937, l: 1938	
	add	 x24, x1, x0	// id: 1938, l: 1939	
	cmp	 x24, #0x0	// id: 1939, l: 1940	
	bge	 .L95	// id: 1940, l: 1941	
	ldrsw	 x0, [sp, #148]	// id: 1941, l: 1942	
	lsl	 x0, x0, #3	// id: 1942, l: 1943	
	ldr	 x1, [sp, #192]	// id: 1943, l: 1944	
	add	 x0, x1, x0	// id: 1944, l: 1945	
	ldr	 x0, [x0]	// id: 1945, l: 1946	
	ldr	 x1, [sp, #160]	// id: 1946, l: 1947	
	cmp	 x1, x0	// id: 1947, l: 1948	
	ble	 .L96	// id: 1948, l: 1949	
	ldrsw	 x0, [sp, #148]	// id: 1949, l: 1950	
	lsl	 x0, x0, #3	// id: 1950, l: 1951	
	ldr	 x1, [sp, #192]	// id: 1951, l: 1952	
	add	 x0, x1, x0	// id: 1952, l: 1953	
	ldr	 x1, [x0]	// id: 1953, l: 1954	
	ldr	 x0, [sp, #104]	// id: 1954, l: 1955	
	ldr	 x0, [x0, #424]	// id: 1955, l: 1956	
	ldr	 x7, [sp, #248]	// id: 1956, l: 1957	
	mov	 x6, x0	// id: 1957, l: 1958	
	mov	 x5, x24	// id: 1958, l: 1959	
	mov	 x4, x25	// id: 1959, l: 1960	
	mov	 x3, x26	// id: 1960, l: 1961	
	mov	 x2, x27	// id: 1961, l: 1962	
	mov	 x0, x19	// id: 1962, l: 1963	
	bl	 insert_new_arc	// id: 1963, l: 1964	
	ldrsw	 x0, [sp, #148]	// id: 1964, l: 1965	
	lsl	 x0, x0, #3	// id: 1965, l: 1966	
	ldr	 x1, [sp, #192]	// id: 1966, l: 1967	
	add	 x0, x1, x0	// id: 1967, l: 1968	
	ldr	 x1, [x0]	// id: 1968, l: 1969	
	add	 x1, x1, #0x1	// id: 1969, l: 1970	
	str	 x1, [x0]	// id: 1970, l: 1971	
	b	 .L97	// id: 1971, l: 1972	
.L96:	// id: 1972, l: 1973	
	ldr	 x0, [x19, #56]	// id: 1973, l: 1974	
	cmp	 x24, x0	// id: 1974, l: 1975	
	bge	 .L98	// id: 1975, l: 1976	
	ldrsh	 w0, [sp, #236]	// id: 1976, l: 1977	
	cmp	 w0, #0x0	// id: 1977, l: 1978	
	beq	 .L99	// id: 1978, l: 1979	
	strh	 wzr, [sp, #238]	// id: 1979, l: 1980	
	strh	 wzr, [sp, #236]	// id: 1980, l: 1981	
.L99:	// id: 1981, l: 1982	
	ldrsw	 x0, [sp, #148]	// id: 1982, l: 1983	
	lsl	 x0, x0, #3	// id: 1983, l: 1984	
	ldr	 x1, [sp, #168]	// id: 1984, l: 1985	
	add	 x0, x1, x0	// id: 1985, l: 1986	
	ldr	 x1, [x0]	// id: 1986, l: 1987	
	ldrsw	 x0, [sp, #148]	// id: 1987, l: 1988	
	lsl	 x0, x0, #3	// id: 1988, l: 1989	
	ldr	 x2, [sp, #184]	// id: 1989, l: 1990	
	add	 x0, x2, x0	// id: 1990, l: 1991	
	ldr	 x0, [x0]	// id: 1991, l: 1992	
	mov	 x2, x0	// id: 1992, l: 1993	
	mov	 x0, x2	// id: 1993, l: 1994	
	lsl	 x0, x0, #3	// id: 1994, l: 1995	
	add	 x0, x0, x2	// id: 1995, l: 1996	
	lsl	 x0, x0, #3	// id: 1996, l: 1997	
	add	 x0, x1, x0	// id: 1997, l: 1998	
	mov	 x1, x19	// id: 1998, l: 1999	
	ldp	 x2, x3, [x1]	// id: 1999, l: 2000	
	stp	 x2, x3, [x0]	// id: 2000, l: 2001	
	ldp	 x2, x3, [x1, #16]	// id: 2001, l: 2002	
	stp	 x2, x3, [x0, #16]	// id: 2002, l: 2003	
	ldp	 x2, x3, [x1, #32]	// id: 2003, l: 2004	
	stp	 x2, x3, [x0, #32]	// id: 2004, l: 2005	
	ldp	 x2, x3, [x1, #48]	// id: 2005, l: 2006	
	stp	 x2, x3, [x0, #48]	// id: 2006, l: 2007	
	ldr	 x1, [x1, #64]	// id: 2007, l: 2008	
	str	 x1, [x0, #64]	// id: 2008, l: 2009	
	ldrsw	 x0, [sp, #148]	// id: 2009, l: 2010	
	lsl	 x0, x0, #3	// id: 2010, l: 2011	
	ldr	 x1, [sp, #184]	// id: 2011, l: 2012	
	add	 x0, x1, x0	// id: 2012, l: 2013	
	ldr	 x1, [x0]	// id: 2013, l: 2014	
	add	 x1, x1, #0x1	// id: 2014, l: 2015	
	str	 x1, [x0]	// id: 2015, l: 2016	
	ldr	 x0, [sp, #224]	// id: 2016, l: 2017	
	add	 x0, x0, #0x1	// id: 2017, l: 2018	
	str	 x0, [sp, #224]	// id: 2018, l: 2019	
	ldr	 x6, [sp, #248]	// id: 2019, l: 2020	
	ldr	 x5, [sp, #160]	// id: 2020, l: 2021	
	mov	 x4, x24	// id: 2021, l: 2022	
	mov	 x3, x25	// id: 2022, l: 2023	
	mov	 x2, x26	// id: 2023, l: 2024	
	mov	 x1, x27	// id: 2024, l: 2025	
	mov	 x0, x19	// id: 2025, l: 2026	
	bl	 replace_weaker_arc	// id: 2026, l: 2027	
	b	 .L97	// id: 2027, l: 2028	
.L98:	// id: 2028, l: 2029	
	ldr	 x0, [sp, #112]	// id: 2029, l: 2030	
	cmp	 x24, x0	// id: 2030, l: 2031	
	bge	 .L97	// id: 2031, l: 2032	
	ldrsw	 x0, [sp, #148]	// id: 2032, l: 2033	
	lsl	 x0, x0, #3	// id: 2033, l: 2034	
	ldr	 x1, [sp, #168]	// id: 2034, l: 2035	
	add	 x0, x1, x0	// id: 2035, l: 2036	
	ldr	 x2, [x0]	// id: 2036, l: 2037	
	ldrsw	 x0, [sp, #148]	// id: 2037, l: 2038	
	lsl	 x0, x0, #3	// id: 2038, l: 2039	
	ldr	 x1, [sp, #184]	// id: 2039, l: 2040	
	add	 x0, x1, x0	// id: 2040, l: 2041	
	ldr	 x1, [x0]	// id: 2041, l: 2042	
	add	 x3, x1, #0x1	// id: 2042, l: 2043	
	str	 x3, [x0]	// id: 2043, l: 2044	
	mov	 x0, x1	// id: 2044, l: 2045	
	lsl	 x0, x0, #3	// id: 2045, l: 2046	
	add	 x0, x0, x1	// id: 2046, l: 2047	
	lsl	 x0, x0, #3	// id: 2047, l: 2048	
	add	 x23, x2, x0	// id: 2048, l: 2049	
	str	 x27, [x23, #16]	// id: 2049, l: 2050	
	str	 x26, [x23, #24]	// id: 2050, l: 2051	
	str	 x25, [x23, #64]	// id: 2051, l: 2052	
	str	 x25, [x23, #8]	// id: 2052, l: 2053	
	str	 x24, [x23, #56]	// id: 2053, l: 2054	
	ldr	 x0, [sp, #248]	// id: 2054, l: 2055	
	str	 w0, [x23]	// id: 2055, l: 2056	
	ldr	 x0, [sp, #224]	// id: 2056, l: 2057	
	add	 x0, x0, #0x1	// id: 2057, l: 2058	
	str	 x0, [sp, #224]	// id: 2058, l: 2059	
.L97:	// id: 2059, l: 2060	
	ldrsw	 x0, [sp, #148]	// id: 2060, l: 2061	
	lsl	 x0, x0, #3	// id: 2061, l: 2062	
	ldr	 x1, [sp, #184]	// id: 2062, l: 2063	
	add	 x0, x1, x0	// id: 2063, l: 2064	
	ldr	 x0, [x0]	// id: 2064, l: 2065	
	ldr	 x1, [sp, #152]	// id: 2065, l: 2066	
	cmp	 x1, x0	// id: 2066, l: 2067	
	bne	 .L95	// id: 2067, l: 2068	
	ldrsw	 x0, [sp, #148]	// id: 2068, l: 2069	
	lsl	 x0, x0, #3	// id: 2069, l: 2070	
	ldr	 x1, [sp, #184]	// id: 2070, l: 2071	
	add	 x0, x1, x0	// id: 2071, l: 2072	
	str	 xzr, [x0]	// id: 2072, l: 2073	
.L95:	// id: 2073, l: 2074	
	ldr	 x22, [x22, #8]	// id: 2074, l: 2075	
	ldr	 x0, [sp, #248]	// id: 2075, l: 2076	
	add	 x0, x0, #0x1	// id: 2076, l: 2077	
	str	 x0, [sp, #248]	// id: 2077, l: 2078	
.L93:	// id: 2078, l: 2079	
	cmp	 x22, #0x0	// id: 2079, l: 2080	
	bne	 .L100	// id: 2080, l: 2081	
.L92:	// id: 2081, l: 2082	
	ldr	 x0, [sp, #264]	// id: 2082, l: 2083	
	add	 x0, x0, #0x1	// id: 2083, l: 2084	
	str	 x0, [sp, #264]	// id: 2084, l: 2085	
	add	 x20, x20, #0xd8	// id: 2085, l: 2086	
.L86:	// id: 2086, l: 2087	
	ldr	 x1, [sp, #264]	// id: 2087, l: 2088	
	ldr	 x0, [sp, #136]	// id: 2088, l: 2089	
	cmp	 x1, x0	// id: 2089, l: 2090	
	blt	 .L101	// id: 2090, l: 2091	
	ldrsw	 x0, [sp, #148]	// id: 2091, l: 2092	
	lsl	 x0, x0, #3	// id: 2092, l: 2093	
	ldr	 x1, [sp, #184]	// id: 2093, l: 2094	
	add	 x0, x1, x0	// id: 2094, l: 2095	
	ldr	 x1, [sp, #224]	// id: 2095, l: 2096	
	str	 x1, [x0]	// id: 2096, l: 2097	
	b	 .L102	// id: 2097, l: 2098	
.L103:	// id: 2098, l: 2099	
	mov	 w0, #0x1                   	// #1	// id: 2099, l: 2100	
	strh	 w0, [sp, #238]	// id: 2100, l: 2101	
	ldr	 x7, [sp, #200]	// id: 2101, l: 2102	
	ldr	 x6, [sp, #152]	// id: 2102, l: 2103	
	ldr	 x5, [sp, #160]	// id: 2103, l: 2104	
	ldr	 w4, [sp, #148]	// id: 2104, l: 2105	
	mov	 x3, x19	// id: 2105, l: 2106	
	ldr	 x2, [sp, #168]	// id: 2106, l: 2107	
	ldr	 x1, [sp, #184]	// id: 2107, l: 2108	
	ldr	 x0, [sp, #104]	// id: 2108, l: 2109	
	bl	 switch_arcs	// id: 2109, l: 2110	
	str	 x0, [sp, #224]	// id: 2110, l: 2111	
	ldr	 x0, [sp, #224]	// id: 2111, l: 2112	
	cmp	 x0, #0x0	// id: 2112, l: 2113	
	beq	 .L102	// id: 2113, l: 2114	
	strh	 wzr, [sp, #238]	// id: 2114, l: 2115	
.L102:	// id: 2115, l: 2116	
	ldrsh	 w0, [sp, #238]	// id: 2116, l: 2117	
	cmp	 w0, #0x0	// id: 2117, l: 2118	
	beq	 .L103	// id: 2118, l: 2119	
	b	 .L104	// id: 2119, l: 2120	
.L105:	// id: 2120, l: 2121	
	mov	 x22, x21	// id: 2121, l: 2122	
	ldr	 x21, [x21, #8]	// id: 2122, l: 2123	
	mov	 x0, x22	// id: 2123, l: 2124	
	bl	 free	// id: 2124, l: 2125	
.L104:	// id: 2125, l: 2126	
	ldr	 x0, [x21, #8]	// id: 2126, l: 2127	
	cmp	 x0, #0x0	// id: 2127, l: 2128	
	bne	 .L105	// id: 2128, l: 2129	
	mov	 x0, x21	// id: 2129, l: 2130	
	bl	 free	// id: 2130, l: 2131	
	ldrsw	 x0, [sp, #148]	// id: 2131, l: 2132	
	lsl	 x0, x0, #3	// id: 2132, l: 2133	
	ldr	 x1, [sp, #176]	// id: 2133, l: 2134	
	add	 x0, x1, x0	// id: 2134, l: 2135	
	ldr	 x4, [x0]	// id: 2135, l: 2136	
	ldrsw	 x0, [sp, #148]	// id: 2136, l: 2137	
	lsl	 x0, x0, #3	// id: 2137, l: 2138	
	ldr	 x1, [sp, #192]	// id: 2138, l: 2139	
	add	 x0, x1, x0	// id: 2139, l: 2140	
	ldr	 x0, [x0]	// id: 2140, l: 2141	
	mov	 x1, x0	// id: 2141, l: 2142	
	adrp	 x0, arc_compare	// id: 2142, l: 2143	
	add	 x3, x0, :lo12:arc_compare	// id: 2143, l: 2144	
	mov	 x2, #0x8                   	// #8	// id: 2144, l: 2145	
	mov	 x0, x4	// id: 2145, l: 2146	
	bl	 spec_qsort	// id: 2146, l: 2147	
	add	 x0, sp, #0x78	// id: 2147, l: 2148	
	ldr	 x3, [sp, #176]	// id: 2148, l: 2149	
	ldr	 x2, [sp, #192]	// id: 2149, l: 2150	
	mov	 x1, x0	// id: 2150, l: 2151	
	ldr	 x0, [sp, #104]	// id: 2151, l: 2152	
	bl	 marc_arcs	// id: 2152, l: 2153	
	ldrsw	 x0, [sp, #148]	// id: 2153, l: 2154	
	lsl	 x0, x0, #3	// id: 2154, l: 2155	
	ldr	 x1, [sp, #176]	// id: 2155, l: 2156	
	add	 x0, x1, x0	// id: 2156, l: 2157	
	ldr	 x0, [x0]	// id: 2157, l: 2158	
	bl	 free	// id: 2158, l: 2159	
	ldrsw	 x0, [sp, #148]	// id: 2159, l: 2160	
	lsl	 x0, x0, #3	// id: 2160, l: 2161	
	ldr	 x1, [sp, #192]	// id: 2161, l: 2162	
	add	 x0, x1, x0	// id: 2162, l: 2163	
	ldr	 x0, [x0]	// id: 2163, l: 2164	
	cmp	 x0, #0x0	// id: 2164, l: 2165	
	beq	 .L106	// id: 2165, l: 2166	
	ldr	 x0, [sp, #104]	// id: 2166, l: 2167	
	ldr	 x1, [x0, #576]	// id: 2167, l: 2168	
	ldrsw	 x2, [sp, #148]	// id: 2168, l: 2169	
	ldr	 x0, [sp, #160]	// id: 2169, l: 2170	
	mul	 x0, x2, x0	// id: 2170, l: 2171	
	mov	 x2, x0	// id: 2171, l: 2172	
	mov	 x0, x2	// id: 2172, l: 2173	
	lsl	 x0, x0, #3	// id: 2173, l: 2174	
	add	 x0, x0, x2	// id: 2174, l: 2175	
	lsl	 x0, x0, #3	// id: 2175, l: 2176	
	add	 x19, x1, x0	// id: 2176, l: 2177	
	ldrsw	 x0, [sp, #148]	// id: 2177, l: 2178	
	lsl	 x0, x0, #3	// id: 2178, l: 2179	
	ldr	 x1, [sp, #192]	// id: 2179, l: 2180	
	add	 x0, x1, x0	// id: 2180, l: 2181	
	ldr	 x0, [x0]	// id: 2181, l: 2182	
	mov	 x1, x0	// id: 2182, l: 2183	
	mov	 x0, x1	// id: 2183, l: 2184	
	lsl	 x0, x0, #3	// id: 2184, l: 2185	
	add	 x0, x0, x1	// id: 2185, l: 2186	
	lsl	 x0, x0, #3	// id: 2186, l: 2187	
	add	 x20, x19, x0	// id: 2187, l: 2188	
	ldr	 x0, [sp, #256]	// id: 2188, l: 2189	
	cmp	 x0, #0x0	// id: 2189, l: 2190	
	beq	 .L111	// id: 2190, l: 2191	
	b	 .L108	// id: 2191, l: 2192	
.L110:	// id: 2192, l: 2193	
	ldr	 x0, [x19, #56]	// id: 2193, l: 2194	
	cmp	 x0, #0x1	// id: 2194, l: 2195	
	bne	 .L109	// id: 2195, l: 2196	
	str	 xzr, [x19, #56]	// id: 2196, l: 2197	
	mov	 w0, #0x1                   	// #1	// id: 2197, l: 2198	
	strh	 w0, [x19, #32]	// id: 2198, l: 2199	
	ldr	 w0, [x19]	// id: 2199, l: 2200	
	sxtw	 x0, w0	// id: 2200, l: 2201	
	mov	 x1, x0	// id: 2201, l: 2202	
	ldr	 x0, [sp, #104]	// id: 2202, l: 2203	
	bl	 getArcPosition	// id: 2203, l: 2204	
	mov	 x1, x0	// id: 2204, l: 2205	
	mov	 x0, x1	// id: 2205, l: 2206	
	lsl	 x0, x0, #3	// id: 2206, l: 2207	
	add	 x0, x0, x1	// id: 2207, l: 2208	
	lsl	 x0, x0, #3	// id: 2208, l: 2209	
	add	 x0, x28, x0	// id: 2209, l: 2210	
	mov	 x1, x19	// id: 2210, l: 2211	
	ldp	 x2, x3, [x1]	// id: 2211, l: 2212	
	stp	 x2, x3, [x0]	// id: 2212, l: 2213	
	ldp	 x2, x3, [x1, #16]	// id: 2213, l: 2214	
	stp	 x2, x3, [x0, #16]	// id: 2214, l: 2215	
	ldp	 x2, x3, [x1, #32]	// id: 2215, l: 2216	
	stp	 x2, x3, [x0, #32]	// id: 2216, l: 2217	
	ldp	 x2, x3, [x1, #48]	// id: 2217, l: 2218	
	stp	 x2, x3, [x0, #48]	// id: 2218, l: 2219	
	ldr	 x1, [x1, #64]	// id: 2219, l: 2220	
	str	 x1, [x0, #64]	// id: 2220, l: 2221	
.L109:	// id: 2221, l: 2222	
	add	 x19, x19, #0x48	// id: 2222, l: 2223	
.L108:	// id: 2223, l: 2224	
	cmp	 x19, x20	// id: 2224, l: 2225	
	bne	 .L110	// id: 2225, l: 2226	
	b	 .L106	// id: 2226, l: 2227	
.L113:	// id: 2227, l: 2228	
	ldr	 x0, [x19, #56]	// id: 2228, l: 2229	
	cmp	 x0, #0x1	// id: 2229, l: 2230	
	bne	 .L112	// id: 2230, l: 2231	
	str	 xzr, [x19, #56]	// id: 2231, l: 2232	
	mov	 w0, #0x1                   	// #1	// id: 2232, l: 2233	
	strh	 w0, [x19, #32]	// id: 2233, l: 2234	
	ldr	 x0, [x19, #16]	// id: 2234, l: 2235	
	ldr	 x0, [x0, #56]	// id: 2235, l: 2236	
	str	 x0, [x19, #40]	// id: 2236, l: 2237	
	ldr	 x0, [x19, #16]	// id: 2237, l: 2238	
	str	 x19, [x0, #56]	// id: 2238, l: 2239	
	ldr	 x0, [x19, #24]	// id: 2239, l: 2240	
	ldr	 x0, [x0, #64]	// id: 2240, l: 2241	
	str	 x0, [x19, #48]	// id: 2241, l: 2242	
	ldr	 x0, [x19, #24]	// id: 2242, l: 2243	
	str	 x19, [x0, #64]	// id: 2243, l: 2244	
	ldr	 w0, [x19]	// id: 2244, l: 2245	
	sxtw	 x0, w0	// id: 2245, l: 2246	
	mov	 x1, x0	// id: 2246, l: 2247	
	ldr	 x0, [sp, #104]	// id: 2247, l: 2248	
	bl	 getArcPosition	// id: 2248, l: 2249	
	mov	 x1, x0	// id: 2249, l: 2250	
	mov	 x0, x1	// id: 2250, l: 2251	
	lsl	 x0, x0, #3	// id: 2251, l: 2252	
	add	 x0, x0, x1	// id: 2252, l: 2253	
	lsl	 x0, x0, #3	// id: 2253, l: 2254	
	add	 x0, x28, x0	// id: 2254, l: 2255	
	mov	 x1, x19	// id: 2255, l: 2256	
	ldp	 x2, x3, [x1]	// id: 2256, l: 2257	
	stp	 x2, x3, [x0]	// id: 2257, l: 2258	
	ldp	 x2, x3, [x1, #16]	// id: 2258, l: 2259	
	stp	 x2, x3, [x0, #16]	// id: 2259, l: 2260	
	ldp	 x2, x3, [x1, #32]	// id: 2260, l: 2261	
	stp	 x2, x3, [x0, #32]	// id: 2261, l: 2262	
	ldp	 x2, x3, [x1, #48]	// id: 2262, l: 2263	
	stp	 x2, x3, [x0, #48]	// id: 2263, l: 2264	
	ldr	 x1, [x1, #64]	// id: 2264, l: 2265	
	str	 x1, [x0, #64]	// id: 2265, l: 2266	
.L112:	// id: 2266, l: 2267	
	add	 x19, x19, #0x48	// id: 2267, l: 2268	
.L111:	// id: 2268, l: 2269	
	cmp	 x19, x20	// id: 2269, l: 2270	
	bne	 .L113	// id: 2270, l: 2271	
.L106:	// id: 2271, l: 2272	
	ldr	 x0, [sp, #104]	// id: 2272, l: 2273	
	ldr	 x1, [x0, #440]	// id: 2273, l: 2274	
	ldr	 x0, [sp, #120]	// id: 2274, l: 2275	
	add	 x1, x1, x0	// id: 2275, l: 2276	
	ldr	 x0, [sp, #104]	// id: 2276, l: 2277	
	str	 x1, [x0, #440]	// id: 2277, l: 2278	
	ldr	 x0, [sp, #104]	// id: 2278, l: 2279	
	ldr	 x1, [x0, #448]	// id: 2279, l: 2280	
	ldr	 x0, [sp, #120]	// id: 2280, l: 2281	
	sub	 x1, x1, x0	// id: 2281, l: 2282	
	ldr	 x0, [sp, #104]	// id: 2282, l: 2283	
	str	 x1, [x0, #448]	// id: 2283, l: 2284	
	ldr	 x0, [sp, #104]	// id: 2284, l: 2285	
	ldr	 x0, [x0, #424]	// id: 2285, l: 2286	
	mov	 x2, x0	// id: 2286, l: 2287	
	adrp	 x0, getArcPosition	// id: 2287, l: 2288	
	add	 x1, x0, :lo12:getArcPosition	// id: 2288, l: 2289	
	ldr	 x0, [sp, #104]	// id: 2289, l: 2290	
	bl	 refreshPositions	// id: 2290, l: 2291	
	ldr	 x0, [sp, #104]	// id: 2291, l: 2292	
	ldr	 x1, [x0, #424]	// id: 2292, l: 2293	
	ldr	 x0, [sp, #120]	// id: 2293, l: 2294	
	add	 x1, x1, x0	// id: 2294, l: 2295	
	ldr	 x0, [sp, #104]	// id: 2295, l: 2296	
	str	 x1, [x0, #424]	// id: 2296, l: 2297	
	ldr	 x0, [sp, #104]	// id: 2297, l: 2298	
	ldr	 x1, [x0, #568]	// id: 2298, l: 2299	
	ldr	 x0, [sp, #104]	// id: 2299, l: 2300	
	ldr	 x0, [x0, #424]	// id: 2300, l: 2301	
	mov	 x2, x0	// id: 2301, l: 2302	
	mov	 x0, x2	// id: 2302, l: 2303	
	lsl	 x0, x0, #3	// id: 2303, l: 2304	
	add	 x0, x0, x2	// id: 2304, l: 2305	
	lsl	 x0, x0, #3	// id: 2305, l: 2306	
	add	 x1, x1, x0	// id: 2306, l: 2307	
	ldr	 x0, [sp, #104]	// id: 2307, l: 2308	
	str	 x1, [x0, #576]	// id: 2308, l: 2309	
	ldr	 x0, [sp, #192]	// id: 2309, l: 2310	
	bl	 free	// id: 2310, l: 2311	
	ldr	 x0, [sp, #184]	// id: 2311, l: 2312	
	bl	 free	// id: 2312, l: 2313	
	ldr	 x0, [sp, #176]	// id: 2313, l: 2314	
	bl	 free	// id: 2314, l: 2315	
	ldr	 x0, [sp, #168]	// id: 2315, l: 2316	
	bl	 free	// id: 2316, l: 2317	
	ldr	 x0, [sp, #120]	// id: 2317, l: 2318	
.L114:	// id: 2318, l: 2319	
	ldp	 x19, x20, [sp, #16]	// id: 2319, l: 2320	
	ldp	 x21, x22, [sp, #32]	// id: 2320, l: 2321	
	ldp	 x23, x24, [sp, #48]	// id: 2321, l: 2322	
	ldp	 x25, x26, [sp, #64]	// id: 2322, l: 2323	
	ldp	 x27, x28, [sp, #80]	// id: 2323, l: 2324	
	ldp	 x29, x30, [sp], #272	// id: 2324, l: 2325	
	.cfi_restore	30	// id: 2325, l: 2326	
	.cfi_restore	29	// id: 2326, l: 2327	
	.cfi_restore	27	// id: 2327, l: 2328	
	.cfi_restore	28	// id: 2328, l: 2329	
	.cfi_restore	25	// id: 2329, l: 2330	
	.cfi_restore	26	// id: 2330, l: 2331	
	.cfi_restore	23	// id: 2331, l: 2332	
	.cfi_restore	24	// id: 2332, l: 2333	
	.cfi_restore	21	// id: 2333, l: 2334	
	.cfi_restore	22	// id: 2334, l: 2335	
	.cfi_restore	19	// id: 2335, l: 2336	
	.cfi_restore	20	// id: 2336, l: 2337	
	.cfi_def_cfa_offset	0	// id: 2337, l: 2338	
	ret		// id: 2338, l: 2339	
	.cfi_endproc		// id: 2339, l: 2340	
.LFE9:	// id: 2340, l: 2341	
	.size	price_out_impl, .-price_out_impl	// id: 2341, l: 2342	
	.p2align	2, , 0	// id: 2342, l: 2343	
	.globl	suspend_impl	// id: 2343, l: 2344	
	.type	suspend_impl, %function	// id: 2344, l: 2345	
suspend_impl:	// id: 2345, l: 2346	
.LFB10:	// id: 2346, l: 2347	
	.cfi_startproc		// id: 2347, l: 2348	
	stp	 x29, x30, [sp, #-112]!	// id: 2348, l: 2349	
	.cfi_def_cfa_offset	112	// id: 2349, l: 2350	
	.cfi_offset	29, -112	// id: 2350, l: 2351	
	.cfi_offset	30, -104	// id: 2351, l: 2352	
	mov	 x29, sp	// id: 2352, l: 2353	
	str	 x19, [sp, #16]	// id: 2353, l: 2354	
	.cfi_offset	19, -96	// id: 2354, l: 2355	
	str	 x0, [sp, #56]	// id: 2355, l: 2356	
	str	 x1, [sp, #48]	// id: 2356, l: 2357	
	str	 x2, [sp, #40]	// id: 2357, l: 2358	
	ldr	 x0, [sp, #56]	// id: 2358, l: 2359	
	mov	 x1, #0xfa0                 	// #4000	// id: 2359, l: 2360	
	str	 x1, [x0, #640]	// id: 2360, l: 2361	
	ldr	 x0, [sp, #56]	// id: 2361, l: 2362	
	ldr	 x0, [x0, #424]	// id: 2362, l: 2363	
	sub	 x0, x0, #0x1	// id: 2363, l: 2364	
	mov	 x1, #0xf7cf                	// #63439	// id: 2364, l: 2365	
	movk	 x1, #0xe353, lsl #16	// id: 2365, l: 2366	
	movk	 x1, #0x9ba5, lsl #32	// id: 2366, l: 2367	
	movk	 x1, #0x20c4, lsl #48	// id: 2367, l: 2368	
	smulh	 x1, x0, x1	// id: 2368, l: 2369	
	asr	 x1, x1, #9	// id: 2369, l: 2370	
	asr	 x0, x0, #63	// id: 2370, l: 2371	
	sub	 x0, x1, x0	// id: 2371, l: 2372	
	add	 x1, x0, #0x1	// id: 2372, l: 2373	
	ldr	 x0, [sp, #56]	// id: 2373, l: 2374	
	str	 x1, [x0, #624]	// id: 2374, l: 2375	
	ldr	 x0, [sp, #56]	// id: 2375, l: 2376	
	ldr	 x3, [x0, #624]	// id: 2376, l: 2377	
	ldr	 x0, [sp, #56]	// id: 2377, l: 2378	
	ldr	 x2, [x0, #424]	// id: 2378, l: 2379	
	mov	 x0, #0xf7cf                	// #63439	// id: 2379, l: 2380	
	movk	 x0, #0xe353, lsl #16	// id: 2380, l: 2381	
	movk	 x0, #0x9ba5, lsl #32	// id: 2381, l: 2382	
	movk	 x0, #0x20c4, lsl #48	// id: 2382, l: 2383	
	smulh	 x0, x2, x0	// id: 2383, l: 2384	
	asr	 x1, x0, #9	// id: 2384, l: 2385	
	asr	 x0, x2, #63	// id: 2385, l: 2386	
	sub	 x1, x1, x0	// id: 2386, l: 2387	
	mov	 x0, x1	// id: 2387, l: 2388	
	lsl	 x0, x0, #5	// id: 2388, l: 2389	
	sub	 x0, x0, x1	// id: 2389, l: 2390	
	lsl	 x0, x0, #2	// id: 2390, l: 2391	
	add	 x0, x0, x1	// id: 2391, l: 2392	
	lsl	 x0, x0, #5	// id: 2392, l: 2393	
	sub	 x1, x2, x0	// id: 2393, l: 2394	
	mov	 x0, #0xfa0                 	// #4000	// id: 2394, l: 2395	
	sub	 x0, x0, x1	// id: 2395, l: 2396	
	sub	 x1, x3, x0	// id: 2396, l: 2397	
	ldr	 x0, [sp, #56]	// id: 2397, l: 2398	
	str	 x1, [x0, #632]	// id: 2398, l: 2399	
	b	 .L116	// id: 2399, l: 2400	
.L117:	// id: 2400, l: 2401	
	ldr	 x0, [sp, #56]	// id: 2401, l: 2402	
	ldr	 x1, [x0, #624]	// id: 2402, l: 2403	
	ldr	 x0, [sp, #56]	// id: 2403, l: 2404	
	ldr	 x0, [x0, #632]	// id: 2404, l: 2405	
	add	 x1, x1, x0	// id: 2405, l: 2406	
	ldr	 x0, [sp, #56]	// id: 2406, l: 2407	
	str	 x1, [x0, #632]	// id: 2407, l: 2408	
	ldr	 x0, [sp, #56]	// id: 2408, l: 2409	
	ldr	 x0, [x0, #640]	// id: 2409, l: 2410	
	sub	 x1, x0, #0x1	// id: 2410, l: 2411	
	ldr	 x0, [sp, #56]	// id: 2411, l: 2412	
	str	 x1, [x0, #640]	// id: 2412, l: 2413	
.L116:	// id: 2413, l: 2414	
	ldr	 x0, [sp, #56]	// id: 2414, l: 2415	
	ldr	 x0, [x0, #632]	// id: 2415, l: 2416	
	cmp	 x0, #0x0	// id: 2416, l: 2417	
	blt	 .L117	// id: 2417, l: 2418	
	ldr	 x0, [sp, #40]	// id: 2418, l: 2419	
	cmp	 x0, #0x0	// id: 2419, l: 2420	
	beq	 .L118	// id: 2420, l: 2421	
	ldr	 x0, [sp, #56]	// id: 2421, l: 2422	
	ldr	 x0, [x0, #440]	// id: 2422, l: 2423	
	str	 x0, [sp, #104]	// id: 2423, l: 2424	
	b	 .L119	// id: 2424, l: 2425	
.L118:	// id: 2425, l: 2426	
	ldr	 x0, [sp, #56]	// id: 2426, l: 2427	
	ldr	 x1, [x0, #424]	// id: 2427, l: 2428	
	ldr	 x0, [sp, #56]	// id: 2428, l: 2429	
	ldr	 x0, [x0, #440]	// id: 2429, l: 2430	
	sub	 x0, x1, x0	// id: 2430, l: 2431	
	str	 x0, [sp, #80]	// id: 2431, l: 2432	
	ldr	 x0, [sp, #56]	// id: 2432, l: 2433	
	ldr	 x1, [x0, #424]	// id: 2433, l: 2434	
	ldr	 x0, [sp, #56]	// id: 2434, l: 2435	
	ldr	 x0, [x0, #440]	// id: 2435, l: 2436	
	sub	 x0, x1, x0	// id: 2436, l: 2437	
	str	 x0, [sp, #88]	// id: 2437, l: 2438	
	str	 xzr, [sp, #104]	// id: 2438, l: 2439	
	b	 .L120	// id: 2439, l: 2440	
.L125:	// id: 2440, l: 2441	
	ldr	 x0, [sp, #56]	// id: 2441, l: 2442	
	ldr	 x19, [x0, #568]	// id: 2442, l: 2443	
	ldr	 x1, [sp, #88]	// id: 2443, l: 2444	
	ldr	 x0, [sp, #56]	// id: 2444, l: 2445	
	bl	 getArcPosition	// id: 2445, l: 2446	
	mov	 x1, x0	// id: 2446, l: 2447	
	mov	 x0, x1	// id: 2447, l: 2448	
	lsl	 x0, x0, #3	// id: 2448, l: 2449	
	add	 x0, x0, x1	// id: 2449, l: 2450	
	lsl	 x0, x0, #3	// id: 2450, l: 2451	
	add	 x0, x19, x0	// id: 2451, l: 2452	
	str	 x0, [sp, #72]	// id: 2452, l: 2453	
	ldr	 x0, [sp, #72]	// id: 2453, l: 2454	
	ldrsh	 w0, [x0, #32]	// id: 2454, l: 2455	
	cmp	 w0, #0x1	// id: 2455, l: 2456	
	bne	 .L121	// id: 2456, l: 2457	
	ldr	 x0, [sp, #72]	// id: 2457, l: 2458	
	ldr	 x1, [x0, #8]	// id: 2458, l: 2459	
	ldr	 x0, [sp, #72]	// id: 2459, l: 2460	
	ldr	 x0, [x0, #16]	// id: 2460, l: 2461	
	ldr	 x0, [x0]	// id: 2461, l: 2462	
	sub	 x1, x1, x0	// id: 2462, l: 2463	
	ldr	 x0, [sp, #72]	// id: 2463, l: 2464	
	ldr	 x0, [x0, #24]	// id: 2464, l: 2465	
	ldr	 x0, [x0]	// id: 2465, l: 2466	
	add	 x0, x1, x0	// id: 2466, l: 2467	
	str	 x0, [sp, #96]	// id: 2467, l: 2468	
	b	 .L122	// id: 2468, l: 2469	
.L121:	// id: 2469, l: 2470	
	mov	 x0, #0xfffffffffffffffe    	// #-2	// id: 2470, l: 2471	
	str	 x0, [sp, #96]	// id: 2471, l: 2472	
	ldr	 x0, [sp, #72]	// id: 2472, l: 2473	
	ldrsh	 w0, [x0, #32]	// id: 2473, l: 2474	
	cmp	 w0, #0x0	// id: 2474, l: 2475	
	bne	 .L122	// id: 2475, l: 2476	
	ldr	 x0, [sp, #72]	// id: 2476, l: 2477	
	ldr	 x0, [x0, #16]	// id: 2477, l: 2478	
	ldr	 x0, [x0, #48]	// id: 2478, l: 2479	
	ldr	 x1, [sp, #72]	// id: 2479, l: 2480	
	cmp	 x1, x0	// id: 2480, l: 2481	
	beq	 .L122	// id: 2481, l: 2482	
	ldr	 x0, [sp, #72]	// id: 2482, l: 2483	
	ldr	 x0, [x0, #24]	// id: 2483, l: 2484	
	ldr	 x1, [sp, #72]	// id: 2484, l: 2485	
	str	 x1, [x0, #48]	// id: 2485, l: 2486	
.L122:	// id: 2486, l: 2487	
	ldr	 x1, [sp, #96]	// id: 2487, l: 2488	
	ldr	 x0, [sp, #48]	// id: 2488, l: 2489	
	cmp	 x1, x0	// id: 2489, l: 2490	
	ble	 .L123	// id: 2490, l: 2491	
	ldr	 x0, [sp, #104]	// id: 2491, l: 2492	
	add	 x0, x0, #0x1	// id: 2492, l: 2493	
	str	 x0, [sp, #104]	// id: 2493, l: 2494	
	ldr	 x0, [sp, #72]	// id: 2494, l: 2495	
	mov	 w1, #0xffffffff            	// #-1	// id: 2495, l: 2496	
	str	 w1, [x0]	// id: 2496, l: 2497	
	b	 .L124	// id: 2497, l: 2498	
.L123:	// id: 2498, l: 2499	
	ldr	 x0, [sp, #80]	// id: 2499, l: 2500	
	mov	 w1, w0	// id: 2500, l: 2501	
	ldr	 x0, [sp, #72]	// id: 2501, l: 2502	
	str	 w1, [x0]	// id: 2502, l: 2503	
	ldr	 x0, [sp, #80]	// id: 2503, l: 2504	
	add	 x0, x0, #0x1	// id: 2504, l: 2505	
	str	 x0, [sp, #80]	// id: 2505, l: 2506	
.L124:	// id: 2506, l: 2507	
	ldr	 x0, [sp, #88]	// id: 2507, l: 2508	
	add	 x0, x0, #0x1	// id: 2508, l: 2509	
	str	 x0, [sp, #88]	// id: 2509, l: 2510	
.L120:	// id: 2510, l: 2511	
	ldr	 x0, [sp, #56]	// id: 2511, l: 2512	
	ldr	 x0, [x0, #424]	// id: 2512, l: 2513	
	ldr	 x1, [sp, #88]	// id: 2513, l: 2514	
	cmp	 x1, x0	// id: 2514, l: 2515	
	blt	 .L125	// id: 2515, l: 2516	
.L119:	// id: 2516, l: 2517	
	ldr	 x0, [sp, #104]	// id: 2517, l: 2518	
	cmp	 x0, #0x0	// id: 2518, l: 2519	
	beq	 .L126	// id: 2519, l: 2520	
	ldr	 x0, [sp, #56]	// id: 2520, l: 2521	
	ldr	 x1, [x0, #440]	// id: 2521, l: 2522	
	ldr	 x0, [sp, #104]	// id: 2522, l: 2523	
	sub	 x1, x1, x0	// id: 2523, l: 2524	
	ldr	 x0, [sp, #56]	// id: 2524, l: 2525	
	str	 x1, [x0, #440]	// id: 2525, l: 2526	
	ldr	 x0, [sp, #56]	// id: 2526, l: 2527	
	ldr	 x1, [x0, #448]	// id: 2527, l: 2528	
	ldr	 x0, [sp, #104]	// id: 2528, l: 2529	
	add	 x1, x1, x0	// id: 2529, l: 2530	
	ldr	 x0, [sp, #56]	// id: 2530, l: 2531	
	str	 x1, [x0, #448]	// id: 2531, l: 2532	
	ldr	 x0, [sp, #56]	// id: 2532, l: 2533	
	mov	 x1, #0xfa0                 	// #4000	// id: 2533, l: 2534	
	str	 x1, [x0, #640]	// id: 2534, l: 2535	
	ldr	 x0, [sp, #56]	// id: 2535, l: 2536	
	ldr	 x1, [x0, #424]	// id: 2536, l: 2537	
	ldr	 x0, [sp, #104]	// id: 2537, l: 2538	
	sub	 x0, x1, x0	// id: 2538, l: 2539	
	sub	 x0, x0, #0x1	// id: 2539, l: 2540	
	mov	 x1, #0xf7cf                	// #63439	// id: 2540, l: 2541	
	movk	 x1, #0xe353, lsl #16	// id: 2541, l: 2542	
	movk	 x1, #0x9ba5, lsl #32	// id: 2542, l: 2543	
	movk	 x1, #0x20c4, lsl #48	// id: 2543, l: 2544	
	smulh	 x1, x0, x1	// id: 2544, l: 2545	
	asr	 x1, x1, #9	// id: 2545, l: 2546	
	asr	 x0, x0, #63	// id: 2546, l: 2547	
	sub	 x0, x1, x0	// id: 2547, l: 2548	
	add	 x1, x0, #0x1	// id: 2548, l: 2549	
	ldr	 x0, [sp, #56]	// id: 2549, l: 2550	
	str	 x1, [x0, #624]	// id: 2550, l: 2551	
	ldr	 x0, [sp, #56]	// id: 2551, l: 2552	
	ldr	 x1, [x0, #424]	// id: 2552, l: 2553	
	ldr	 x0, [sp, #104]	// id: 2553, l: 2554	
	sub	 x2, x1, x0	// id: 2554, l: 2555	
	mov	 x0, #0xf7cf                	// #63439	// id: 2555, l: 2556	
	movk	 x0, #0xe353, lsl #16	// id: 2556, l: 2557	
	movk	 x0, #0x9ba5, lsl #32	// id: 2557, l: 2558	
	movk	 x0, #0x20c4, lsl #48	// id: 2558, l: 2559	
	smulh	 x0, x2, x0	// id: 2559, l: 2560	
	asr	 x1, x0, #9	// id: 2560, l: 2561	
	asr	 x0, x2, #63	// id: 2561, l: 2562	
	sub	 x1, x1, x0	// id: 2562, l: 2563	
	mov	 x0, x1	// id: 2563, l: 2564	
	lsl	 x0, x0, #5	// id: 2564, l: 2565	
	sub	 x0, x0, x1	// id: 2565, l: 2566	
	lsl	 x0, x0, #2	// id: 2566, l: 2567	
	add	 x0, x0, x1	// id: 2567, l: 2568	
	lsl	 x0, x0, #5	// id: 2568, l: 2569	
	sub	 x1, x2, x0	// id: 2569, l: 2570	
	cmp	 x1, #0x0	// id: 2570, l: 2571	
	beq	 .L127	// id: 2571, l: 2572	
	ldr	 x0, [sp, #56]	// id: 2572, l: 2573	
	ldr	 x3, [x0, #624]	// id: 2573, l: 2574	
	ldr	 x0, [sp, #56]	// id: 2574, l: 2575	
	ldr	 x1, [x0, #424]	// id: 2575, l: 2576	
	ldr	 x0, [sp, #104]	// id: 2576, l: 2577	
	sub	 x2, x1, x0	// id: 2577, l: 2578	
	mov	 x0, #0xf7cf                	// #63439	// id: 2578, l: 2579	
	movk	 x0, #0xe353, lsl #16	// id: 2579, l: 2580	
	movk	 x0, #0x9ba5, lsl #32	// id: 2580, l: 2581	
	movk	 x0, #0x20c4, lsl #48	// id: 2581, l: 2582	
	smulh	 x0, x2, x0	// id: 2582, l: 2583	
	asr	 x1, x0, #9	// id: 2583, l: 2584	
	asr	 x0, x2, #63	// id: 2584, l: 2585	
	sub	 x1, x1, x0	// id: 2585, l: 2586	
	mov	 x0, x1	// id: 2586, l: 2587	
	lsl	 x0, x0, #5	// id: 2587, l: 2588	
	sub	 x0, x0, x1	// id: 2588, l: 2589	
	lsl	 x0, x0, #2	// id: 2589, l: 2590	
	add	 x0, x0, x1	// id: 2590, l: 2591	
	lsl	 x0, x0, #5	// id: 2591, l: 2592	
	sub	 x1, x2, x0	// id: 2592, l: 2593	
	mov	 x0, #0xfa0                 	// #4000	// id: 2593, l: 2594	
	sub	 x0, x0, x1	// id: 2594, l: 2595	
	sub	 x1, x3, x0	// id: 2595, l: 2596	
	ldr	 x0, [sp, #56]	// id: 2596, l: 2597	
	str	 x1, [x0, #632]	// id: 2597, l: 2598	
	b	 .L129	// id: 2598, l: 2599	
.L127:	// id: 2599, l: 2600	
	ldr	 x0, [sp, #56]	// id: 2600, l: 2601	
	ldr	 x1, [x0, #624]	// id: 2601, l: 2602	
	ldr	 x0, [sp, #56]	// id: 2602, l: 2603	
	str	 x1, [x0, #632]	// id: 2603, l: 2604	
	b	 .L129	// id: 2604, l: 2605	
.L130:	// id: 2605, l: 2606	
	ldr	 x0, [sp, #56]	// id: 2606, l: 2607	
	ldr	 x1, [x0, #624]	// id: 2607, l: 2608	
	ldr	 x0, [sp, #56]	// id: 2608, l: 2609	
	ldr	 x0, [x0, #632]	// id: 2609, l: 2610	
	add	 x1, x1, x0	// id: 2610, l: 2611	
	ldr	 x0, [sp, #56]	// id: 2611, l: 2612	
	str	 x1, [x0, #632]	// id: 2612, l: 2613	
	ldr	 x0, [sp, #56]	// id: 2613, l: 2614	
	ldr	 x0, [x0, #640]	// id: 2614, l: 2615	
	sub	 x1, x0, #0x1	// id: 2615, l: 2616	
	ldr	 x0, [sp, #56]	// id: 2616, l: 2617	
	str	 x1, [x0, #640]	// id: 2617, l: 2618	
.L129:	// id: 2618, l: 2619	
	ldr	 x0, [sp, #56]	// id: 2619, l: 2620	
	ldr	 x0, [x0, #632]	// id: 2620, l: 2621	
	cmp	 x0, #0x0	// id: 2621, l: 2622	
	blt	 .L130	// id: 2622, l: 2623	
	ldr	 x0, [sp, #56]	// id: 2623, l: 2624	
	ldr	 x0, [x0, #424]	// id: 2624, l: 2625	
	mov	 x2, x0	// id: 2625, l: 2626	
	adrp	 x0, getOriginalArcPosition	// id: 2626, l: 2627	
	add	 x1, x0, :lo12:getOriginalArcPosition	// id: 2627, l: 2628	
	ldr	 x0, [sp, #56]	// id: 2628, l: 2629	
	bl	 refreshPositions	// id: 2629, l: 2630	
	ldr	 x0, [sp, #56]	// id: 2630, l: 2631	
	ldr	 x1, [x0, #424]	// id: 2631, l: 2632	
	ldr	 x0, [sp, #104]	// id: 2632, l: 2633	
	sub	 x1, x1, x0	// id: 2633, l: 2634	
	ldr	 x0, [sp, #56]	// id: 2634, l: 2635	
	str	 x1, [x0, #424]	// id: 2635, l: 2636	
	ldr	 x0, [sp, #56]	// id: 2636, l: 2637	
	ldr	 x2, [x0, #576]	// id: 2637, l: 2638	
	ldr	 x1, [sp, #104]	// id: 2638, l: 2639	
	mov	 x0, x1	// id: 2639, l: 2640	
	lsl	 x0, x0, #3	// id: 2640, l: 2641	
	add	 x0, x0, x1	// id: 2641, l: 2642	
	lsl	 x0, x0, #3	// id: 2642, l: 2643	
	neg	 x0, x0	// id: 2643, l: 2644	
	add	 x1, x2, x0	// id: 2644, l: 2645	
	ldr	 x0, [sp, #56]	// id: 2645, l: 2646	
	str	 x1, [x0, #576]	// id: 2646, l: 2647	
	adrp	 x0, getOriginalArcPosition	// id: 2647, l: 2648	
	add	 x1, x0, :lo12:getOriginalArcPosition	// id: 2648, l: 2649	
	ldr	 x0, [sp, #56]	// id: 2649, l: 2650	
	bl	 refresh_neighbour_lists	// id: 2650, l: 2651	
.L126:	// id: 2651, l: 2652	
	ldr	 x0, [sp, #104]	// id: 2652, l: 2653	
	ldr	 x19, [sp, #16]	// id: 2653, l: 2654	
	ldp	 x29, x30, [sp], #112	// id: 2654, l: 2655	
	.cfi_restore	30	// id: 2655, l: 2656	
	.cfi_restore	29	// id: 2656, l: 2657	
	.cfi_restore	19	// id: 2657, l: 2658	
	.cfi_def_cfa_offset	0	// id: 2658, l: 2659	
	ret		// id: 2659, l: 2660	
	.cfi_endproc		// id: 2660, l: 2661	
.LFE10:	// id: 2661, l: 2662	
	.size	suspend_impl, .-suspend_impl	// id: 2662, l: 2663	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 2663, l: 2664	
	.section	.note.GNU-stack, "",@progbits	// id: 2664, l: 2665	
