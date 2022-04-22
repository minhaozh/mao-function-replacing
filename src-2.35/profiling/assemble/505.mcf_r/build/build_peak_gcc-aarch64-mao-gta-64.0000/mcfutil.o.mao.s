	.arch	armv8-a	// id: 0, l: 1	
	.file	"mcfutil.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.p2align	3, , 7	// id: 4, l: 5	
	.globl	refresh_neighbour_lists	// id: 5, l: 6	
	.type	refresh_neighbour_lists, %function	// id: 6, l: 7	
refresh_neighbour_lists:	// id: 7, l: 8	
.LFB25:	// id: 8, l: 9	
	.cfi_startproc		// id: 9, l: 10	
	stp	 x29, x30, [sp, #-48]!	// id: 10, l: 11	
	.cfi_def_cfa_offset	48	// id: 11, l: 12	
	.cfi_offset	29, -48	// id: 12, l: 13	
	.cfi_offset	30, -40	// id: 13, l: 14	
	mov	 x29, sp	// id: 14, l: 15	
	stp	 x19, x20, [sp, #16]	// id: 15, l: 16	
	.cfi_offset	19, -32	// id: 16, l: 17	
	.cfi_offset	20, -24	// id: 17, l: 18	
	mov	 x20, x0	// id: 18, l: 19	
	stp	 x21, x22, [sp, #32]	// id: 19, l: 20	
	.cfi_offset	21, -16	// id: 20, l: 21	
	.cfi_offset	22, -8	// id: 21, l: 22	
	mov	 x22, x1	// id: 22, l: 23	
	ldr	 x2, [x0, #552]	// id: 23, l: 24	
	ldr	 x0, [x0, #560]	// id: 24, l: 25	
	cmp	 x2, x0	// id: 25, l: 26	
	bcs	 .L2	// id: 26, l: 27	
	movi	 v0.4s, #0x0	// id: 27, l: 28	
	.p2align	3, , 7	// id: 28, l: 29	
.L3:	// id: 29, l: 30	
	add	 x2, x2, #0x68	// id: 30, l: 31	
	str	 q0, [x2, #-48]	// id: 31, l: 32	
	cmp	 x0, x2	// id: 32, l: 33	
	bhi	 .L3	// id: 33, l: 34	
.L2:	// id: 34, l: 35	
	ldr	 x0, [x20, #424]	// id: 35, l: 36	
	ldr	 x2, [x20, #568]	// id: 36, l: 37	
	cmp	 x0, #0x0	// id: 37, l: 38	
	ble	 .L1	// id: 38, l: 39	
	mov	 x19, #0x0                   	// #0	// id: 39, l: 40	
	.p2align	3, , 7	// id: 40, l: 41	
.L5:	// id: 41, l: 42	
	ldr	 x3, [x2, #16]	// id: 42, l: 43	
	add	 x19, x19, #0x1	// id: 43, l: 44	
	mov	 x1, x19	// id: 44, l: 45	
	mov	 x0, x20	// id: 45, l: 46	
	ldr	 x4, [x3, #56]	// id: 46, l: 47	
	str	 x4, [x2, #40]	// id: 47, l: 48	
	str	 x2, [x3, #56]	// id: 48, l: 49	
	ldr	 x3, [x2, #24]	// id: 49, l: 50	
	ldr	 x4, [x3, #64]	// id: 50, l: 51	
	str	 x4, [x2, #48]	// id: 51, l: 52	
	str	 x2, [x3, #64]	// id: 52, l: 53	
	ldr	 x21, [x20, #568]	// id: 53, l: 54	
	blr	 x22	// id: 54, l: 55	
	ldr	 x1, [x20, #424]	// id: 55, l: 56	
	add	 x0, x0, x0, lsl #3	// id: 56, l: 57	
	cmp	 x1, x19	// id: 57, l: 58	
	add	 x2, x21, x0, lsl #3	// id: 58, l: 59	
	bgt	 .L5	// id: 59, l: 60	
.L1:	// id: 60, l: 61	
	ldp	 x19, x20, [sp, #16]	// id: 61, l: 62	
	ldp	 x21, x22, [sp, #32]	// id: 62, l: 63	
	ldp	 x29, x30, [sp], #48	// id: 63, l: 64	
	.cfi_restore	30	// id: 64, l: 65	
	.cfi_restore	29	// id: 65, l: 66	
	.cfi_restore	21	// id: 66, l: 67	
	.cfi_restore	22	// id: 67, l: 68	
	.cfi_restore	19	// id: 68, l: 69	
	.cfi_restore	20	// id: 69, l: 70	
	.cfi_def_cfa_offset	0	// id: 70, l: 71	
	ret		// id: 71, l: 72	
	.cfi_endproc		// id: 72, l: 73	
.LFE25:	// id: 73, l: 74	
	.size	refresh_neighbour_lists, .-refresh_neighbour_lists	// id: 74, l: 75	
	.p2align	2, , 0	// id: 75, l: 76	
	.p2align	3, , 7	// id: 76, l: 77	
	.globl	flow_cost	// id: 77, l: 78	
	.type	flow_cost, %function	// id: 78, l: 79	
flow_cost:	// id: 79, l: 80	
.LFB26:	// id: 80, l: 81	
	.cfi_startproc		// id: 81, l: 82	
	ldr	 x2, [x0, #424]	// id: 82, l: 83	
	ldr	 x1, [x0, #568]	// id: 83, l: 84	
	cmp	 x2, #0x0	// id: 84, l: 85	
	ble	 .L11	// id: 85, l: 86	
	add	 x1, x1, #0x20	// id: 86, l: 87	
	mov	 x3, #0x0                   	// #0	// id: 87, l: 88	
	.p2align	3, , 7	// id: 88, l: 89	
.L12:	// id: 89, l: 90	
	ldrsh	 w2, [x1]	// id: 90, l: 91	
	add	 x3, x3, #0x1	// id: 91, l: 92	
	add	 x1, x1, #0x48	// id: 92, l: 93	
	cmp	 w2, #0x2	// id: 93, l: 94	
	cset	 x2, eq  // eq = none	// id: 94, l: 95	
	str	 x2, [x1, #-48]	// id: 95, l: 96	
	ldr	 x2, [x0, #424]	// id: 96, l: 97	
	cmp	 x2, x3	// id: 97, l: 98	
	bgt	 .L12	// id: 98, l: 99	
	ldr	 x3, [x0, #400]	// id: 99, l: 100	
	ldr	 x1, [x0, #552]	// id: 100, l: 101	
	cmp	 x3, #0x0	// id: 101, l: 102	
	ble	 .L13	// id: 102, l: 103	
.L21:	// id: 103, l: 104	
	add	 x1, x1, #0x98	// id: 104, l: 105	
	mov	 x2, #0x1                   	// #1	// id: 105, l: 106	
	.p2align	3, , 7	// id: 106, l: 107	
.L14:	// id: 107, l: 108	
	ldr	 x3, [x1]	// id: 108, l: 109	
	add	 x2, x2, #0x1	// id: 109, l: 110	
	ldr	 x4, [x1, #32]	// id: 110, l: 111	
	add	 x1, x1, #0x68	// id: 111, l: 112	
	str	 x4, [x3, #56]	// id: 112, l: 113	
	ldr	 x3, [x0, #400]	// id: 113, l: 114	
	cmp	 x3, x2	// id: 114, l: 115	
	bge	 .L14	// id: 115, l: 116	
	ldr	 x2, [x0, #424]	// id: 116, l: 117	
.L13:	// id: 117, l: 118	
	cmp	 x2, #0x0	// id: 118, l: 119	
	ldr	 d1, [x0, #528]	// id: 119, l: 120	
	ldr	 x0, [x0, #568]	// id: 120, l: 121	
	ble	 .L23	// id: 121, l: 122	
	add	 x2, x2, x2, lsl #3	// id: 122, l: 123	
	fmov	 d0, xzr	// id: 123, l: 124	
	mov	 x3, #0x0                   	// #0	// id: 124, l: 125	
	add	 x2, x0, x2, lsl #3	// id: 125, l: 126	
	b	 .L20	// id: 126, l: 127	
	.p2align	2, , 3	// id: 127, l: 128	
.L17:	// id: 128, l: 129	
	ldr	 x1, [x0, #8]	// id: 129, l: 130	
	bne	 .L19	// id: 130, l: 131	
	fmov	 x4, d1	// id: 131, l: 132	
	add	 x3, x3, #0x1	// id: 132, l: 133	
	sub	 x1, x1, x4	// id: 133, l: 134	
	fmov	 d2, x1	// id: 134, l: 135	
	add	 d0, d0, d2	// id: 135, l: 136	
.L16:	// id: 136, l: 137	
	add	 x0, x0, #0x48	// id: 137, l: 138	
	cmp	 x0, x2	// id: 138, l: 139	
	beq	 .L32	// id: 139, l: 140	
.L20:	// id: 140, l: 141	
	ldr	 x1, [x0, #56]	// id: 141, l: 142	
	cbz	 x1, .L16	// id: 142, l: 143	
	ldr	 x1, [x0, #16]	// id: 143, l: 144	
	ldr	 w1, [x1, #96]	// id: 144, l: 145	
	cmp	 w1, #0x0	// id: 145, l: 146	
	bge	 .L17	// id: 146, l: 147	
	ldr	 x1, [x0, #24]	// id: 147, l: 148	
	ldr	 w1, [x1, #96]	// id: 148, l: 149	
	cmp	 w1, #0x0	// id: 149, l: 150	
	bgt	 .L16	// id: 150, l: 151	
	ldr	 x1, [x0, #8]	// id: 151, l: 152	
.L19:	// id: 152, l: 153	
	fmov	 d2, x1	// id: 153, l: 154	
	add	 x0, x0, #0x48	// id: 154, l: 155	
	add	 d0, d0, d2	// id: 155, l: 156	
	cmp	 x0, x2	// id: 156, l: 157	
	bne	 .L20	// id: 157, l: 158	
	.p2align	3, , 7	// id: 158, l: 159	
.L32:	// id: 159, l: 160	
	scvtf	 d0, d0	// id: 160, l: 161	
	scvtf	 d2, x3	// id: 161, l: 162	
.L15:	// id: 162, l: 163	
	scvtf	 d1, d1	// id: 163, l: 164	
	fmul	 d1, d1, d2	// id: 164, l: 165	
	fadd	 d0, d1, d0	// id: 165, l: 166	
	ret		// id: 166, l: 167	
	.p2align	2, , 3	// id: 167, l: 168	
.L11:	// id: 168, l: 169	
	ldr	 x2, [x0, #400]	// id: 169, l: 170	
	ldr	 x1, [x0, #552]	// id: 170, l: 171	
	cmp	 x2, #0x0	// id: 171, l: 172	
	bgt	 .L21	// id: 172, l: 173	
	movi	 d0, #0x0	// id: 173, l: 174	
	ldr	 d1, [x0, #528]	// id: 174, l: 175	
	fmov	 d2, d0	// id: 175, l: 176	
	b	 .L15	// id: 176, l: 177	
	.p2align	2, , 3	// id: 177, l: 178	
.L23:	// id: 178, l: 179	
	movi	 d0, #0x0	// id: 179, l: 180	
	fmov	 d2, d0	// id: 180, l: 181	
	b	 .L15	// id: 181, l: 182	
	.cfi_endproc		// id: 182, l: 183	
.LFE26:	// id: 183, l: 184	
	.size	flow_cost, .-flow_cost	// id: 184, l: 185	
	.p2align	2, , 0	// id: 185, l: 186	
	.p2align	3, , 7	// id: 186, l: 187	
	.globl	start	// id: 187, l: 188	
	.type	start, %function	// id: 188, l: 189	
start:	// id: 189, l: 190	
.LFB27:	// id: 190, l: 191	
	.cfi_startproc		// id: 191, l: 192	
	mov	 x0, #0x0                   	// #0	// id: 192, l: 193	
	ret		// id: 193, l: 194	
	.cfi_endproc		// id: 194, l: 195	
.LFE27:	// id: 195, l: 196	
	.size	start, .-start	// id: 196, l: 197	
	.p2align	2, , 0	// id: 197, l: 198	
	.p2align	3, , 7	// id: 198, l: 199	
	.globl	getArcPosition	// id: 199, l: 200	
	.type	getArcPosition, %function	// id: 200, l: 201	
getArcPosition:	// id: 201, l: 202	
.LFB28:	// id: 202, l: 203	
	.cfi_startproc		// id: 203, l: 204	
	ldr	 x2, [x0, #624]	// id: 204, l: 205	
	ldr	 x4, [x0, #632]	// id: 205, l: 206	
	sdiv	 x3, x1, x2	// id: 206, l: 207	
	ldr	 x0, [x0, #640]	// id: 207, l: 208	
	msub	 x1, x3, x2, x1	// id: 208, l: 209	
	cmp	 x4, x1	// id: 209, l: 210	
	bge	 .L35	// id: 210, l: 211	
	sub	 x5, x0, #0x1	// id: 211, l: 212	
	sub	 x1, x1, x4	// id: 212, l: 213	
	mul	 x2, x4, x0	// id: 213, l: 214	
	madd	 x2, x1, x5, x2	// id: 214, l: 215	
	add	 x0, x2, x3	// id: 215, l: 216	
	ret		// id: 216, l: 217	
	.p2align	2, , 3	// id: 217, l: 218	
.L35:	// id: 218, l: 219	
	madd	 x0, x1, x0, x3	// id: 219, l: 220	
	ret		// id: 220, l: 221	
	.cfi_endproc		// id: 221, l: 222	
.LFE28:	// id: 222, l: 223	
	.size	getArcPosition, .-getArcPosition	// id: 223, l: 224	
	.p2align	2, , 0	// id: 224, l: 225	
	.p2align	3, , 7	// id: 225, l: 226	
	.globl	getOriginalArcPosition	// id: 226, l: 227	
	.type	getOriginalArcPosition, %function	// id: 227, l: 228	
getOriginalArcPosition:	// id: 228, l: 229	
.LFB29:	// id: 229, l: 230	
	.cfi_startproc		// id: 230, l: 231	
	mov	 x0, x1	// id: 231, l: 232	
	ret		// id: 232, l: 233	
	.cfi_endproc		// id: 233, l: 234	
.LFE29:	// id: 234, l: 235	
	.size	getOriginalArcPosition, .-getOriginalArcPosition	// id: 235, l: 236	
	.section	.rodata.str1.8, "aMS",@progbits,1	// id: 236, l: 237	
	.p2align	3, , 0	// id: 237, l: 238	
.LC0:	// id: 238, l: 239	
	.string	"ORG_COST: %f"	// id: 239, l: 240	
	.text	0	// id: 240, l: 241	
	.p2align	2, , 0	// id: 241, l: 242	
	.p2align	3, , 7	// id: 242, l: 243	
	.globl	flow_org_cost	// id: 243, l: 244	
	.type	flow_org_cost, %function	// id: 244, l: 245	
flow_org_cost:	// id: 245, l: 246	
.LFB30:	// id: 246, l: 247	
	.cfi_startproc		// id: 247, l: 248	
	stp	 x29, x30, [sp, #-48]!	// id: 248, l: 249	
	.cfi_def_cfa_offset	48	// id: 249, l: 250	
	.cfi_offset	29, -48	// id: 250, l: 251	
	.cfi_offset	30, -40	// id: 251, l: 252	
	mov	 x29, sp	// id: 252, l: 253	
	str	 x19, [sp, #16]	// id: 253, l: 254	
	.cfi_offset	19, -32	// id: 254, l: 255	
	mov	 x19, x0	// id: 255, l: 256	
	stp	 d8, d9, [sp, #32]	// id: 256, l: 257	
	.cfi_offset	72, -16	// id: 257, l: 258	
	.cfi_offset	73, -8	// id: 258, l: 259	
	ldr	 x0, [x0, #424]	// id: 259, l: 260	
	ldr	 x1, [x19, #568]	// id: 260, l: 261	
	cmp	 x0, #0x0	// id: 261, l: 262	
	ble	 .L39	// id: 262, l: 263	
	add	 x1, x1, #0x20	// id: 263, l: 264	
	mov	 x0, #0x0                   	// #0	// id: 264, l: 265	
	.p2align	3, , 7	// id: 265, l: 266	
.L40:	// id: 266, l: 267	
	ldrsh	 w2, [x1]	// id: 267, l: 268	
	add	 x0, x0, #0x1	// id: 268, l: 269	
	add	 x1, x1, #0x48	// id: 269, l: 270	
	cmp	 w2, #0x2	// id: 270, l: 271	
	cset	 x2, eq  // eq = none	// id: 271, l: 272	
	str	 x2, [x1, #-48]	// id: 272, l: 273	
	ldr	 x2, [x19, #424]	// id: 273, l: 274	
	cmp	 x2, x0	// id: 274, l: 275	
	bgt	 .L40	// id: 275, l: 276	
	ldr	 x0, [x19, #400]	// id: 276, l: 277	
	ldr	 x1, [x19, #552]	// id: 277, l: 278	
	cmp	 x0, #0x0	// id: 278, l: 279	
	ble	 .L41	// id: 279, l: 280	
.L49:	// id: 280, l: 281	
	add	 x1, x1, #0x30	// id: 281, l: 282	
	mov	 x0, #0x0                   	// #0	// id: 282, l: 283	
	.p2align	3, , 7	// id: 283, l: 284	
.L42:	// id: 284, l: 285	
	ldr	 x2, [x1]	// id: 285, l: 286	
	add	 x0, x0, #0x1	// id: 286, l: 287	
	ldr	 x3, [x1, #32]	// id: 287, l: 288	
	add	 x1, x1, #0x68	// id: 288, l: 289	
	str	 x3, [x2, #56]	// id: 289, l: 290	
	ldr	 x2, [x19, #400]	// id: 290, l: 291	
	cmp	 x2, x0	// id: 291, l: 292	
	bgt	 .L42	// id: 292, l: 293	
	ldr	 x2, [x19, #424]	// id: 293, l: 294	
.L41:	// id: 294, l: 295	
	cmp	 x2, #0x0	// id: 295, l: 296	
	ldr	 d1, [x19, #528]	// id: 296, l: 297	
	ldr	 x1, [x19, #568]	// id: 297, l: 298	
	ble	 .L51	// id: 298, l: 299	
	add	 x2, x2, x2, lsl #3	// id: 299, l: 300	
	fmov	 d0, xzr	// id: 300, l: 301	
	mov	 x3, #0x0                   	// #0	// id: 301, l: 302	
	add	 x2, x1, x2, lsl #3	// id: 302, l: 303	
	b	 .L48	// id: 303, l: 304	
	.p2align	2, , 3	// id: 304, l: 305	
.L45:	// id: 305, l: 306	
	ldr	 x0, [x1, #64]	// id: 306, l: 307	
	bne	 .L47	// id: 307, l: 308	
	fmov	 x4, d1	// id: 308, l: 309	
	add	 x3, x3, #0x1	// id: 309, l: 310	
	sub	 x0, x0, x4	// id: 310, l: 311	
	fmov	 d2, x0	// id: 311, l: 312	
	add	 d0, d0, d2	// id: 312, l: 313	
.L44:	// id: 313, l: 314	
	add	 x1, x1, #0x48	// id: 314, l: 315	
	cmp	 x1, x2	// id: 315, l: 316	
	beq	 .L61	// id: 316, l: 317	
.L48:	// id: 317, l: 318	
	ldr	 x0, [x1, #56]	// id: 318, l: 319	
	cbz	 x0, .L44	// id: 319, l: 320	
	ldr	 x0, [x1, #16]	// id: 320, l: 321	
	ldr	 w0, [x0, #96]	// id: 321, l: 322	
	cmp	 w0, #0x0	// id: 322, l: 323	
	bge	 .L45	// id: 323, l: 324	
	ldr	 x0, [x1, #24]	// id: 324, l: 325	
	ldr	 w0, [x0, #96]	// id: 325, l: 326	
	cmp	 w0, #0x0	// id: 326, l: 327	
	bgt	 .L44	// id: 327, l: 328	
	ldr	 x0, [x1, #64]	// id: 328, l: 329	
.L47:	// id: 329, l: 330	
	fmov	 d2, x0	// id: 330, l: 331	
	add	 x1, x1, #0x48	// id: 331, l: 332	
	add	 d0, d0, d2	// id: 332, l: 333	
	cmp	 x1, x2	// id: 333, l: 334	
	bne	 .L48	// id: 334, l: 335	
	.p2align	3, , 7	// id: 335, l: 336	
.L61:	// id: 336, l: 337	
	scvtf	 d8, d0	// id: 337, l: 338	
	scvtf	 d9, x3	// id: 338, l: 339	
.L43:	// id: 339, l: 340	
	scvtf	 d0, d1	// id: 340, l: 341	
	adrp	 x0, .LC0	// id: 341, l: 342	
	add	 x0, x0, :lo12:.LC0	// id: 342, l: 343	
	fmul	 d0, d0, d9	// id: 343, l: 344	
	fadd	 d0, d0, d8	// id: 344, l: 345	
	bl	 printf	// id: 345, l: 346	
	ldr	 d0, [x19, #528]	// id: 346, l: 347	
	ldr	 x19, [sp, #16]	// id: 347, l: 348	
	scvtf	 d0, d0	// id: 348, l: 349	
	fmul	 d0, d0, d9	// id: 349, l: 350	
	fadd	 d0, d0, d8	// id: 350, l: 351	
	ldp	 d8, d9, [sp, #32]	// id: 351, l: 352	
	ldp	 x29, x30, [sp], #48	// id: 352, l: 353	
	.cfi_remember_state		// id: 353, l: 354	
	.cfi_restore	30	// id: 354, l: 355	
	.cfi_restore	29	// id: 355, l: 356	
	.cfi_restore	72	// id: 356, l: 357	
	.cfi_restore	73	// id: 357, l: 358	
	.cfi_restore	19	// id: 358, l: 359	
	.cfi_def_cfa_offset	0	// id: 359, l: 360	
	ret		// id: 360, l: 361	
	.p2align	2, , 3	// id: 361, l: 362	
.L39:	// id: 362, l: 363	
	.cfi_restore_state		// id: 363, l: 364	
	ldr	 x0, [x19, #400]	// id: 364, l: 365	
	ldr	 x1, [x19, #552]	// id: 365, l: 366	
	cmp	 x0, #0x0	// id: 366, l: 367	
	bgt	 .L49	// id: 367, l: 368	
	movi	 d8, #0x0	// id: 368, l: 369	
	ldr	 d1, [x19, #528]	// id: 369, l: 370	
	fmov	 d9, d8	// id: 370, l: 371	
	b	 .L43	// id: 371, l: 372	
	.p2align	2, , 3	// id: 372, l: 373	
.L51:	// id: 373, l: 374	
	movi	 d8, #0x0	// id: 374, l: 375	
	fmov	 d9, d8	// id: 375, l: 376	
	b	 .L43	// id: 376, l: 377	
	.cfi_endproc		// id: 377, l: 378	
.LFE30:	// id: 378, l: 379	
	.size	flow_org_cost, .-flow_org_cost	// id: 379, l: 380	
	.section	.rodata.str1.8	// id: 380, l: 381	
	.p2align	3, , 0	// id: 381, l: 382	
.LC1:	// id: 382, l: 383	
	.string	"PRIMAL NETWORK SIMPLEX: "	// id: 383, l: 384	
	.p2align	3, , 0	// id: 384, l: 385	
.LC2:	// id: 385, l: 386	
	.string	"artificial arc with nonzero flow, node %d (%ld)\n"	// id: 386, l: 387	
	.p2align	3, , 0	// id: 387, l: 388	
.LC3:	// id: 388, l: 389	
	.string	"basis primal infeasible (%ld)\n"	// id: 389, l: 390	
	.text	0	// id: 390, l: 391	
	.p2align	2, , 0	// id: 391, l: 392	
	.p2align	3, , 7	// id: 392, l: 393	
	.globl	primal_feasible	// id: 393, l: 394	
	.type	primal_feasible, %function	// id: 394, l: 395	
primal_feasible:	// id: 395, l: 396	
.LFB31:	// id: 396, l: 397	
	.cfi_startproc		// id: 397, l: 398	
	stp	 x29, x30, [sp, #-80]!	// id: 398, l: 399	
	.cfi_def_cfa_offset	80	// id: 399, l: 400	
	.cfi_offset	29, -80	// id: 400, l: 401	
	.cfi_offset	30, -72	// id: 401, l: 402	
	add	 x1, x0, #0x228	// id: 402, l: 403	
	mov	 x29, sp	// id: 403, l: 404	
	stp	 x19, x20, [sp, #16]	// id: 404, l: 405	
	stp	 x21, x22, [sp, #32]	// id: 405, l: 406	
	.cfi_offset	19, -64	// id: 406, l: 407	
	.cfi_offset	20, -56	// id: 407, l: 408	
	.cfi_offset	21, -48	// id: 408, l: 409	
	.cfi_offset	22, -40	// id: 409, l: 410	
	mov	 x21, x0	// id: 410, l: 411	
	stp	 x23, x24, [sp, #48]	// id: 411, l: 412	
	ldp	 x19, x22, [x1]	// id: 412, l: 413	
	.cfi_offset	23, -32	// id: 413, l: 414	
	.cfi_offset	24, -24	// id: 414, l: 415	
	ldp	 x23, x24, [x1, #40]	// id: 415, l: 416	
	add	 x19, x19, #0x68	// id: 416, l: 417	
	cmp	 x22, x19	// id: 417, l: 418	
	bls	 .L68	// id: 418, l: 419	
	stp	 x25, x26, [sp, #64]	// id: 419, l: 420	
	.cfi_offset	26, -8	// id: 420, l: 421	
	.cfi_offset	25, -16	// id: 421, l: 422	
	adrp	 x26, .LC1	// id: 422, l: 423	
	adrp	 x25, .LC2	// id: 423, l: 424	
	add	 x26, x26, :lo12:.LC1	// id: 424, l: 425	
	add	 x25, x25, :lo12:.LC2	// id: 425, l: 426	
	b	 .L63	// id: 426, l: 427	
	.p2align	2, , 3	// id: 427, l: 428	
.L74:	// id: 428, l: 429	
	cmp	 x20, #0x0	// id: 429, l: 430	
	csneg	 x0, x20, x20, ge  // ge = tcont	// id: 430, l: 431	
	cmp	 x0, x1	// id: 431, l: 432	
	bgt	 .L72	// id: 432, l: 433	
.L66:	// id: 433, l: 434	
	add	 x19, x19, #0x68	// id: 434, l: 435	
	cmp	 x22, x19	// id: 435, l: 436	
	bls	 .L73	// id: 436, l: 437	
.L63:	// id: 437, l: 438	
	ldr	 x1, [x19, #48]	// id: 438, l: 439	
	ldr	 x20, [x19, #80]	// id: 439, l: 440	
	cmp	 x23, x1	// id: 440, l: 441	
	ccmp	 x24, x1, #0x0, ls  // ls = plast	// id: 441, l: 442	
	sub	 x0, x20, #0x1	// id: 442, l: 443	
	ldr	 x1, [x21, #512]	// id: 443, l: 444	
	bhi	 .L74	// id: 444, l: 445	
	neg	 x2, x1	// id: 445, l: 446	
	cmp	 x2, x20	// id: 446, l: 447	
	bgt	 .L67	// id: 447, l: 448	
	cmp	 x0, x1	// id: 448, l: 449	
	ble	 .L66	// id: 449, l: 450	
.L67:	// id: 450, l: 451	
	adrp	 x0, .LC1	// id: 451, l: 452	
	add	 x0, x0, :lo12:.LC1	// id: 452, l: 453	
	bl	 printf	// id: 453, l: 454	
	mov	 x1, x20	// id: 454, l: 455	
	adrp	 x0, .LC3	// id: 455, l: 456	
	add	 x0, x0, :lo12:.LC3	// id: 456, l: 457	
	bl	 printf	// id: 457, l: 458	
	str	 xzr, [x21, #488]	// id: 458, l: 459	
	mov	 x0, #0x1                   	// #1	// id: 459, l: 460	
	ldp	 x19, x20, [sp, #16]	// id: 460, l: 461	
	ldp	 x21, x22, [sp, #32]	// id: 461, l: 462	
	ldp	 x23, x24, [sp, #48]	// id: 462, l: 463	
	ldp	 x25, x26, [sp, #64]	// id: 463, l: 464	
	.cfi_remember_state		// id: 464, l: 465	
	.cfi_restore	26	// id: 465, l: 466	
	.cfi_restore	25	// id: 466, l: 467	
	ldp	 x29, x30, [sp], #80	// id: 467, l: 468	
	.cfi_restore	30	// id: 468, l: 469	
	.cfi_restore	29	// id: 469, l: 470	
	.cfi_restore	23	// id: 470, l: 471	
	.cfi_restore	24	// id: 471, l: 472	
	.cfi_restore	21	// id: 472, l: 473	
	.cfi_restore	22	// id: 473, l: 474	
	.cfi_restore	19	// id: 474, l: 475	
	.cfi_restore	20	// id: 475, l: 476	
	.cfi_def_cfa_offset	0	// id: 476, l: 477	
	ret		// id: 477, l: 478	
	.p2align	2, , 3	// id: 478, l: 479	
.L72:	// id: 479, l: 480	
	.cfi_restore_state		// id: 480, l: 481	
	mov	 x0, x26	// id: 481, l: 482	
	bl	 printf	// id: 482, l: 483	
	ldr	 w1, [x19, #96]	// id: 483, l: 484	
	mov	 x2, x20	// id: 484, l: 485	
	mov	 x0, x25	// id: 485, l: 486	
	add	 x19, x19, #0x68	// id: 486, l: 487	
	bl	 printf	// id: 487, l: 488	
	cmp	 x22, x19	// id: 488, l: 489	
	bhi	 .L63	// id: 489, l: 490	
	.p2align	3, , 7	// id: 490, l: 491	
.L73:	// id: 491, l: 492	
	ldp	 x25, x26, [sp, #64]	// id: 492, l: 493	
	.cfi_restore	26	// id: 493, l: 494	
	.cfi_restore	25	// id: 494, l: 495	
.L68:	// id: 495, l: 496	
	mov	 x1, #0x1                   	// #1	// id: 496, l: 497	
	str	 x1, [x21, #488]	// id: 497, l: 498	
	mov	 x0, #0x0                   	// #0	// id: 498, l: 499	
	ldp	 x19, x20, [sp, #16]	// id: 499, l: 500	
	ldp	 x21, x22, [sp, #32]	// id: 500, l: 501	
	ldp	 x23, x24, [sp, #48]	// id: 501, l: 502	
	ldp	 x29, x30, [sp], #80	// id: 502, l: 503	
	.cfi_restore	30	// id: 503, l: 504	
	.cfi_restore	29	// id: 504, l: 505	
	.cfi_restore	23	// id: 505, l: 506	
	.cfi_restore	24	// id: 506, l: 507	
	.cfi_restore	21	// id: 507, l: 508	
	.cfi_restore	22	// id: 508, l: 509	
	.cfi_restore	19	// id: 509, l: 510	
	.cfi_restore	20	// id: 510, l: 511	
	.cfi_def_cfa_offset	0	// id: 511, l: 512	
	ret		// id: 512, l: 513	
	.cfi_endproc		// id: 513, l: 514	
.LFE31:	// id: 514, l: 515	
	.size	primal_feasible, .-primal_feasible	// id: 515, l: 516	
	.section	.rodata.str1.8	// id: 516, l: 517	
	.p2align	3, , 0	// id: 517, l: 518	
.LC4:	// id: 518, l: 519	
	.string	"DUAL NETWORK SIMPLEX: "	// id: 519, l: 520	
	.p2align	3, , 0	// id: 520, l: 521	
.LC5:	// id: 521, l: 522	
	.string	"basis dual infeasible\n"	// id: 522, l: 523	
	.text	0	// id: 523, l: 524	
	.p2align	2, , 0	// id: 524, l: 525	
	.p2align	3, , 7	// id: 525, l: 526	
	.globl	dual_feasible	// id: 526, l: 527	
	.type	dual_feasible, %function	// id: 527, l: 528	
dual_feasible:	// id: 528, l: 529	
.LFB32:	// id: 529, l: 530	
	.cfi_startproc		// id: 530, l: 531	
	ldr	 x1, [x0, #568]	// id: 531, l: 532	
	ldr	 x5, [x0, #576]	// id: 532, l: 533	
	cmp	 x5, x1	// id: 533, l: 534	
	bhi	 .L82	// id: 534, l: 535	
	b	 .L83	// id: 535, l: 536	
	.p2align	2, , 3	// id: 536, l: 537	
.L90:	// id: 537, l: 538	
	tbz	 x3, #31, .L89	// id: 538, l: 539	
.L79:	// id: 539, l: 540	
	add	 x1, x1, #0x48	// id: 540, l: 541	
	cmp	 x5, x1	// id: 541, l: 542	
	bls	 .L83	// id: 542, l: 543	
.L82:	// id: 543, l: 544	
	ldp	 x2, x4, [x1, #16]	// id: 544, l: 545	
	ldr	 x3, [x2]	// id: 545, l: 546	
	ldr	 x2, [x1, #8]	// id: 546, l: 547	
	ldr	 x4, [x4]	// id: 547, l: 548	
	sub	 x2, x2, x3	// id: 548, l: 549	
	ldrsh	 w3, [x1, #32]	// id: 549, l: 550	
	add	 x2, x2, x4	// id: 550, l: 551	
	cmp	 w3, #0x1	// id: 551, l: 552	
	ble	 .L90	// id: 552, l: 553	
	cmp	 w3, #0x2	// id: 553, l: 554	
	bne	 .L79	// id: 554, l: 555	
	ldr	 x3, [x0, #512]	// id: 555, l: 556	
	cmp	 x3, x2	// id: 556, l: 557	
	bge	 .L79	// id: 557, l: 558	
.L81:	// id: 558, l: 559	
	stp	 x29, x30, [sp, #-32]!	// id: 559, l: 560	
	.cfi_def_cfa_offset	32	// id: 560, l: 561	
	.cfi_offset	29, -32	// id: 561, l: 562	
	.cfi_offset	30, -24	// id: 562, l: 563	
	mov	 x2, #0x16                  	// #22	// id: 563, l: 564	
	mov	 x1, #0x1                   	// #1	// id: 564, l: 565	
	mov	 x29, sp	// id: 565, l: 566	
	str	 x19, [sp, #16]	// id: 566, l: 567	
	.cfi_offset	19, -16	// id: 567, l: 568	
	adrp	 x19, stderr	// id: 568, l: 569	
	adrp	 x0, .LC4	// id: 569, l: 570	
	add	 x0, x0, :lo12:.LC4	// id: 570, l: 571	
	ldr	 x3, [x19,:lo12:stderr]	// id: 571, l: 572	
	bl	 fwrite	// id: 572, l: 573	
	ldr	 x3, [x19,:lo12:stderr]	// id: 573, l: 574	
	mov	 x2, #0x16                  	// #22	// id: 574, l: 575	
	mov	 x1, #0x1                   	// #1	// id: 575, l: 576	
	adrp	 x0, .LC5	// id: 576, l: 577	
	add	 x0, x0, :lo12:.LC5	// id: 577, l: 578	
	bl	 fwrite	// id: 578, l: 579	
	mov	 x0, #0x1                   	// #1	// id: 579, l: 580	
	ldr	 x19, [sp, #16]	// id: 580, l: 581	
	ldp	 x29, x30, [sp], #32	// id: 581, l: 582	
	.cfi_restore	30	// id: 582, l: 583	
	.cfi_restore	29	// id: 583, l: 584	
	.cfi_restore	19	// id: 584, l: 585	
	.cfi_def_cfa_offset	0	// id: 585, l: 586	
	ret		// id: 586, l: 587	
	.p2align	2, , 3	// id: 587, l: 588	
.L89:	// id: 588, l: 589	
	ldr	 x3, [x0, #512]	// id: 589, l: 590	
	neg	 x3, x3	// id: 590, l: 591	
	cmp	 x3, x2	// id: 591, l: 592	
	bgt	 .L81	// id: 592, l: 593	
	add	 x1, x1, #0x48	// id: 593, l: 594	
	cmp	 x5, x1	// id: 594, l: 595	
	bhi	 .L82	// id: 595, l: 596	
.L83:	// id: 596, l: 597	
	mov	 x0, #0x0                   	// #0	// id: 597, l: 598	
	ret		// id: 598, l: 599	
	.cfi_endproc		// id: 599, l: 600	
.LFE32:	// id: 600, l: 601	
	.size	dual_feasible, .-dual_feasible	// id: 601, l: 602	
	.p2align	2, , 0	// id: 602, l: 603	
	.p2align	3, , 7	// id: 603, l: 604	
	.globl	getfree	// id: 604, l: 605	
	.type	getfree, %function	// id: 605, l: 606	
getfree:	// id: 606, l: 607	
.LFB33:	// id: 607, l: 608	
	.cfi_startproc		// id: 608, l: 609	
	stp	 x29, x30, [sp, #-32]!	// id: 609, l: 610	
	.cfi_def_cfa_offset	32	// id: 610, l: 611	
	.cfi_offset	29, -32	// id: 611, l: 612	
	.cfi_offset	30, -24	// id: 612, l: 613	
	mov	 x29, sp	// id: 613, l: 614	
	str	 x19, [sp, #16]	// id: 614, l: 615	
	.cfi_offset	19, -16	// id: 615, l: 616	
	mov	 x19, x0	// id: 616, l: 617	
	ldr	 x0, [x0, #552]	// id: 617, l: 618	
	cbz	 x0, .L92	// id: 618, l: 619	
	bl	 free	// id: 619, l: 620	
.L92:	// id: 620, l: 621	
	ldr	 x0, [x19, #568]	// id: 621, l: 622	
	cbz	 x0, .L93	// id: 622, l: 623	
	bl	 free	// id: 623, l: 624	
.L93:	// id: 624, l: 625	
	ldr	 x0, [x19, #592]	// id: 625, l: 626	
	cbz	 x0, .L94	// id: 626, l: 627	
	bl	 free	// id: 627, l: 628	
.L94:	// id: 628, l: 629	
	ldr	 x0, [x19, #584]	// id: 629, l: 630	
	cbz	 x0, .L95	// id: 630, l: 631	
	bl	 free	// id: 631, l: 632	
.L95:	// id: 632, l: 633	
	movi	 v0.4s, #0x0	// id: 633, l: 634	
	add	 x1, x19, #0x200	// id: 634, l: 635	
	str	 xzr, [x19, #600]	// id: 635, l: 636	
	mov	 x0, #0x0                   	// #0	// id: 636, l: 637	
	str	 q0, [x1, #40]	// id: 637, l: 638	
	str	 q0, [x1, #56]	// id: 638, l: 639	
	str	 q0, [x1, #72]	// id: 639, l: 640	
	ldr	 x19, [sp, #16]	// id: 640, l: 641	
	ldp	 x29, x30, [sp], #32	// id: 641, l: 642	
	.cfi_restore	30	// id: 642, l: 643	
	.cfi_restore	29	// id: 643, l: 644	
	.cfi_restore	19	// id: 644, l: 645	
	.cfi_def_cfa_offset	0	// id: 645, l: 646	
	ret		// id: 646, l: 647	
	.cfi_endproc		// id: 647, l: 648	
.LFE33:	// id: 648, l: 649	
	.size	getfree, .-getfree	// id: 649, l: 650	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 650, l: 651	
	.section	.note.GNU-stack, "",@progbits	// id: 651, l: 652	
