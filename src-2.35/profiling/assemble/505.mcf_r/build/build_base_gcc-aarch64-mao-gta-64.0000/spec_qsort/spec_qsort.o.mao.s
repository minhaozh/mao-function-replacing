	.arch	armv8-a	// id: 0, l: 1	
	.file	"spec_qsort.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.type	swapfunc, %function	// id: 4, l: 5	
swapfunc:	// id: 5, l: 6	
.LFB0:	// id: 6, l: 7	
	.cfi_startproc		// id: 7, l: 8	
	sub	 sp, sp, #0x80	// id: 8, l: 9	
	.cfi_def_cfa_offset	128	// id: 9, l: 10	
	str	 x0, [sp, #24]	// id: 10, l: 11	
	str	 x1, [sp, #16]	// id: 11, l: 12	
	str	 w2, [sp, #12]	// id: 12, l: 13	
	str	 w3, [sp, #8]	// id: 13, l: 14	
	str	 w4, [sp, #4]	// id: 14, l: 15	
	ldr	 w0, [sp, #8]	// id: 15, l: 16	
	cmp	 w0, #0x1	// id: 16, l: 17	
	bgt	 .L2	// id: 17, l: 18	
	ldrsw	 x0, [sp, #12]	// id: 18, l: 19	
	lsr	 x0, x0, #3	// id: 19, l: 20	
	str	 x0, [sp, #120]	// id: 20, l: 21	
	ldr	 x0, [sp, #24]	// id: 21, l: 22	
	str	 x0, [sp, #112]	// id: 22, l: 23	
	ldr	 x0, [sp, #16]	// id: 23, l: 24	
	str	 x0, [sp, #104]	// id: 24, l: 25	
.L3:	// id: 25, l: 26	
	ldr	 x0, [sp, #112]	// id: 26, l: 27	
	ldr	 x0, [x0]	// id: 27, l: 28	
	str	 x0, [sp, #40]	// id: 28, l: 29	
	ldr	 x0, [sp, #112]	// id: 29, l: 30	
	add	 x1, x0, #0x8	// id: 30, l: 31	
	str	 x1, [sp, #112]	// id: 31, l: 32	
	ldr	 x1, [sp, #104]	// id: 32, l: 33	
	ldr	 x1, [x1]	// id: 33, l: 34	
	str	 x1, [x0]	// id: 34, l: 35	
	ldr	 x0, [sp, #104]	// id: 35, l: 36	
	add	 x1, x0, #0x8	// id: 36, l: 37	
	str	 x1, [sp, #104]	// id: 37, l: 38	
	ldr	 x1, [sp, #40]	// id: 38, l: 39	
	str	 x1, [x0]	// id: 39, l: 40	
	ldr	 x0, [sp, #120]	// id: 40, l: 41	
	sub	 x0, x0, #0x1	// id: 41, l: 42	
	str	 x0, [sp, #120]	// id: 42, l: 43	
	ldr	 x0, [sp, #120]	// id: 43, l: 44	
	cmp	 x0, #0x0	// id: 44, l: 45	
	bgt	 .L3	// id: 45, l: 46	
	b	 .L8	// id: 46, l: 47	
.L2:	// id: 47, l: 48	
	ldr	 w0, [sp, #4]	// id: 48, l: 49	
	cmp	 w0, #0x1	// id: 49, l: 50	
	bgt	 .L5	// id: 50, l: 51	
	ldrsw	 x0, [sp, #12]	// id: 51, l: 52	
	lsr	 x0, x0, #2	// id: 52, l: 53	
	str	 x0, [sp, #96]	// id: 53, l: 54	
	ldr	 x0, [sp, #24]	// id: 54, l: 55	
	str	 x0, [sp, #88]	// id: 55, l: 56	
	ldr	 x0, [sp, #16]	// id: 56, l: 57	
	str	 x0, [sp, #80]	// id: 57, l: 58	
.L6:	// id: 58, l: 59	
	ldr	 x0, [sp, #88]	// id: 59, l: 60	
	ldr	 w0, [x0]	// id: 60, l: 61	
	str	 w0, [sp, #48]	// id: 61, l: 62	
	ldr	 x0, [sp, #88]	// id: 62, l: 63	
	add	 x1, x0, #0x4	// id: 63, l: 64	
	str	 x1, [sp, #88]	// id: 64, l: 65	
	ldr	 x1, [sp, #80]	// id: 65, l: 66	
	ldr	 w1, [x1]	// id: 66, l: 67	
	str	 w1, [x0]	// id: 67, l: 68	
	ldr	 x0, [sp, #80]	// id: 68, l: 69	
	add	 x1, x0, #0x4	// id: 69, l: 70	
	str	 x1, [sp, #80]	// id: 70, l: 71	
	ldr	 w1, [sp, #48]	// id: 71, l: 72	
	str	 w1, [x0]	// id: 72, l: 73	
	ldr	 x0, [sp, #96]	// id: 73, l: 74	
	sub	 x0, x0, #0x1	// id: 74, l: 75	
	str	 x0, [sp, #96]	// id: 75, l: 76	
	ldr	 x0, [sp, #96]	// id: 76, l: 77	
	cmp	 x0, #0x0	// id: 77, l: 78	
	bgt	 .L6	// id: 78, l: 79	
	b	 .L8	// id: 79, l: 80	
.L5:	// id: 80, l: 81	
	ldrsw	 x0, [sp, #12]	// id: 81, l: 82	
	str	 x0, [sp, #72]	// id: 82, l: 83	
	ldr	 x0, [sp, #24]	// id: 83, l: 84	
	str	 x0, [sp, #64]	// id: 84, l: 85	
	ldr	 x0, [sp, #16]	// id: 85, l: 86	
	str	 x0, [sp, #56]	// id: 86, l: 87	
.L7:	// id: 87, l: 88	
	ldr	 x0, [sp, #64]	// id: 88, l: 89	
	ldrb	 w0, [x0]	// id: 89, l: 90	
	strb	 w0, [sp, #55]	// id: 90, l: 91	
	ldr	 x0, [sp, #64]	// id: 91, l: 92	
	add	 x1, x0, #0x1	// id: 92, l: 93	
	str	 x1, [sp, #64]	// id: 93, l: 94	
	ldr	 x1, [sp, #56]	// id: 94, l: 95	
	ldrb	 w1, [x1]	// id: 95, l: 96	
	strb	 w1, [x0]	// id: 96, l: 97	
	ldr	 x0, [sp, #56]	// id: 97, l: 98	
	add	 x1, x0, #0x1	// id: 98, l: 99	
	str	 x1, [sp, #56]	// id: 99, l: 100	
	ldrb	 w1, [sp, #55]	// id: 100, l: 101	
	strb	 w1, [x0]	// id: 101, l: 102	
	ldr	 x0, [sp, #72]	// id: 102, l: 103	
	sub	 x0, x0, #0x1	// id: 103, l: 104	
	str	 x0, [sp, #72]	// id: 104, l: 105	
	ldr	 x0, [sp, #72]	// id: 105, l: 106	
	cmp	 x0, #0x0	// id: 106, l: 107	
	bgt	 .L7	// id: 107, l: 108	
.L8:	// id: 108, l: 109	
	nop		// id: 109, l: 110	
	add	 sp, sp, #0x80	// id: 110, l: 111	
	.cfi_def_cfa_offset	0	// id: 111, l: 112	
	ret		// id: 112, l: 113	
	.cfi_endproc		// id: 113, l: 114	
.LFE0:	// id: 114, l: 115	
	.size	swapfunc, .-swapfunc	// id: 115, l: 116	
	.p2align	2, , 0	// id: 116, l: 117	
	.type	med3, %function	// id: 117, l: 118	
med3:	// id: 118, l: 119	
.LFB1:	// id: 119, l: 120	
	.cfi_startproc		// id: 120, l: 121	
	stp	 x29, x30, [sp, #-48]!	// id: 121, l: 122	
	.cfi_def_cfa_offset	48	// id: 122, l: 123	
	.cfi_offset	29, -48	// id: 123, l: 124	
	.cfi_offset	30, -40	// id: 124, l: 125	
	mov	 x29, sp	// id: 125, l: 126	
	str	 x0, [sp, #40]	// id: 126, l: 127	
	str	 x1, [sp, #32]	// id: 127, l: 128	
	str	 x2, [sp, #24]	// id: 128, l: 129	
	str	 x3, [sp, #16]	// id: 129, l: 130	
	ldr	 x2, [sp, #16]	// id: 130, l: 131	
	ldr	 x1, [sp, #32]	// id: 131, l: 132	
	ldr	 x0, [sp, #40]	// id: 132, l: 133	
	blr	 x2	// id: 133, l: 134	
	cmp	 w0, #0x0	// id: 134, l: 135	
	bge	 .L10	// id: 135, l: 136	
	ldr	 x2, [sp, #16]	// id: 136, l: 137	
	ldr	 x1, [sp, #24]	// id: 137, l: 138	
	ldr	 x0, [sp, #32]	// id: 138, l: 139	
	blr	 x2	// id: 139, l: 140	
	cmp	 w0, #0x0	// id: 140, l: 141	
	blt	 .L11	// id: 141, l: 142	
	ldr	 x2, [sp, #16]	// id: 142, l: 143	
	ldr	 x1, [sp, #24]	// id: 143, l: 144	
	ldr	 x0, [sp, #40]	// id: 144, l: 145	
	blr	 x2	// id: 145, l: 146	
	cmp	 w0, #0x0	// id: 146, l: 147	
	bge	 .L12	// id: 147, l: 148	
	ldr	 x0, [sp, #24]	// id: 148, l: 149	
	b	 .L20	// id: 149, l: 150	
.L12:	// id: 150, l: 151	
	ldr	 x0, [sp, #40]	// id: 151, l: 152	
	b	 .L20	// id: 152, l: 153	
.L11:	// id: 153, l: 154	
	ldr	 x0, [sp, #32]	// id: 154, l: 155	
	b	 .L20	// id: 155, l: 156	
.L10:	// id: 156, l: 157	
	ldr	 x2, [sp, #16]	// id: 157, l: 158	
	ldr	 x1, [sp, #24]	// id: 158, l: 159	
	ldr	 x0, [sp, #32]	// id: 159, l: 160	
	blr	 x2	// id: 160, l: 161	
	cmp	 w0, #0x0	// id: 161, l: 162	
	bgt	 .L16	// id: 162, l: 163	
	ldr	 x2, [sp, #16]	// id: 163, l: 164	
	ldr	 x1, [sp, #24]	// id: 164, l: 165	
	ldr	 x0, [sp, #40]	// id: 165, l: 166	
	blr	 x2	// id: 166, l: 167	
	cmp	 w0, #0x0	// id: 167, l: 168	
	bge	 .L17	// id: 168, l: 169	
	ldr	 x0, [sp, #40]	// id: 169, l: 170	
	b	 .L20	// id: 170, l: 171	
.L17:	// id: 171, l: 172	
	ldr	 x0, [sp, #24]	// id: 172, l: 173	
	b	 .L20	// id: 173, l: 174	
.L16:	// id: 174, l: 175	
	ldr	 x0, [sp, #32]	// id: 175, l: 176	
.L20:	// id: 176, l: 177	
	ldp	 x29, x30, [sp], #48	// id: 177, l: 178	
	.cfi_restore	30	// id: 178, l: 179	
	.cfi_restore	29	// id: 179, l: 180	
	.cfi_def_cfa_offset	0	// id: 180, l: 181	
	ret		// id: 181, l: 182	
	.cfi_endproc		// id: 182, l: 183	
.LFE1:	// id: 183, l: 184	
	.size	med3, .-med3	// id: 184, l: 185	
	.p2align	2, , 0	// id: 185, l: 186	
	.globl	spec_qsort	// id: 186, l: 187	
	.type	spec_qsort, %function	// id: 187, l: 188	
spec_qsort:	// id: 188, l: 189	
.LFB2:	// id: 189, l: 190	
	.cfi_startproc		// id: 190, l: 191	
	stp	 x29, x30, [sp, #-240]!	// id: 191, l: 192	
	.cfi_def_cfa_offset	240	// id: 192, l: 193	
	.cfi_offset	29, -240	// id: 193, l: 194	
	.cfi_offset	30, -232	// id: 194, l: 195	
	mov	 x29, sp	// id: 195, l: 196	
	str	 x0, [sp, #40]	// id: 196, l: 197	
	str	 x1, [sp, #32]	// id: 197, l: 198	
	str	 x2, [sp, #24]	// id: 198, l: 199	
	str	 x3, [sp, #16]	// id: 199, l: 200	
.L22:	// id: 200, l: 201	
	ldr	 x0, [sp, #40]	// id: 201, l: 202	
	and	 x0, x0, #0x7	// id: 202, l: 203	
	cmp	 x0, #0x0	// id: 203, l: 204	
	bne	 .L23	// id: 204, l: 205	
	ldr	 x0, [sp, #24]	// id: 205, l: 206	
	and	 x0, x0, #0x7	// id: 206, l: 207	
	cmp	 x0, #0x0	// id: 207, l: 208	
	bne	 .L23	// id: 208, l: 209	
	ldr	 x0, [sp, #24]	// id: 209, l: 210	
	cmp	 x0, #0x8	// id: 210, l: 211	
	cset	 w0, ne  // ne = any	// id: 211, l: 212	
	and	 w0, w0, #0xff	// id: 212, l: 213	
	b	 .L24	// id: 213, l: 214	
.L23:	// id: 214, l: 215	
	mov	 w0, #0x2                   	// #2	// id: 215, l: 216	
.L24:	// id: 216, l: 217	
	str	 w0, [sp, #176]	// id: 217, l: 218	
	ldr	 x0, [sp, #40]	// id: 218, l: 219	
	and	 x0, x0, #0x3	// id: 219, l: 220	
	cmp	 x0, #0x0	// id: 220, l: 221	
	bne	 .L25	// id: 221, l: 222	
	ldr	 x0, [sp, #24]	// id: 222, l: 223	
	and	 x0, x0, #0x3	// id: 223, l: 224	
	cmp	 x0, #0x0	// id: 224, l: 225	
	bne	 .L25	// id: 225, l: 226	
	ldr	 x0, [sp, #24]	// id: 226, l: 227	
	cmp	 x0, #0x4	// id: 227, l: 228	
	cset	 w0, ne  // ne = any	// id: 228, l: 229	
	and	 w0, w0, #0xff	// id: 229, l: 230	
	b	 .L26	// id: 230, l: 231	
.L25:	// id: 231, l: 232	
	mov	 w0, #0x2                   	// #2	// id: 232, l: 233	
.L26:	// id: 233, l: 234	
	str	 w0, [sp, #172]	// id: 234, l: 235	
	str	 wzr, [sp, #180]	// id: 235, l: 236	
	ldr	 x0, [sp, #32]	// id: 236, l: 237	
	cmp	 x0, #0x6	// id: 237, l: 238	
	bhi	 .L27	// id: 238, l: 239	
	ldr	 x1, [sp, #40]	// id: 239, l: 240	
	ldr	 x0, [sp, #24]	// id: 240, l: 241	
	add	 x0, x1, x0	// id: 241, l: 242	
	str	 x0, [sp, #192]	// id: 242, l: 243	
	b	 .L28	// id: 243, l: 244	
.L35:	// id: 244, l: 245	
	ldr	 x0, [sp, #192]	// id: 245, l: 246	
	str	 x0, [sp, #200]	// id: 246, l: 247	
	b	 .L29	// id: 247, l: 248	
.L34:	// id: 248, l: 249	
	ldr	 w0, [sp, #176]	// id: 249, l: 250	
	cmp	 w0, #0x0	// id: 250, l: 251	
	bne	 .L30	// id: 251, l: 252	
	ldr	 x0, [sp, #200]	// id: 252, l: 253	
	ldr	 x0, [x0]	// id: 253, l: 254	
	str	 x0, [sp, #56]	// id: 254, l: 255	
	ldr	 x0, [sp, #24]	// id: 255, l: 256	
	neg	 x0, x0	// id: 256, l: 257	
	ldr	 x1, [sp, #200]	// id: 257, l: 258	
	add	 x0, x1, x0	// id: 258, l: 259	
	ldr	 x1, [x0]	// id: 259, l: 260	
	ldr	 x0, [sp, #200]	// id: 260, l: 261	
	str	 x1, [x0]	// id: 261, l: 262	
	ldr	 x0, [sp, #24]	// id: 262, l: 263	
	neg	 x0, x0	// id: 263, l: 264	
	ldr	 x1, [sp, #200]	// id: 264, l: 265	
	add	 x0, x1, x0	// id: 265, l: 266	
	ldr	 x1, [sp, #56]	// id: 266, l: 267	
	str	 x1, [x0]	// id: 267, l: 268	
	b	 .L31	// id: 268, l: 269	
.L30:	// id: 269, l: 270	
	ldr	 w0, [sp, #172]	// id: 270, l: 271	
	cmp	 w0, #0x0	// id: 271, l: 272	
	bne	 .L32	// id: 272, l: 273	
	ldr	 x0, [sp, #200]	// id: 273, l: 274	
	ldr	 w0, [x0]	// id: 274, l: 275	
	str	 w0, [sp, #68]	// id: 275, l: 276	
	ldr	 x0, [sp, #24]	// id: 276, l: 277	
	neg	 x0, x0	// id: 277, l: 278	
	ldr	 x1, [sp, #200]	// id: 278, l: 279	
	add	 x0, x1, x0	// id: 279, l: 280	
	ldr	 w1, [x0]	// id: 280, l: 281	
	ldr	 x0, [sp, #200]	// id: 281, l: 282	
	str	 w1, [x0]	// id: 282, l: 283	
	ldr	 x0, [sp, #24]	// id: 283, l: 284	
	neg	 x0, x0	// id: 284, l: 285	
	ldr	 x1, [sp, #200]	// id: 285, l: 286	
	add	 x0, x1, x0	// id: 286, l: 287	
	ldr	 w1, [sp, #68]	// id: 287, l: 288	
	str	 w1, [x0]	// id: 288, l: 289	
	b	 .L31	// id: 289, l: 290	
.L32:	// id: 290, l: 291	
	ldr	 x0, [sp, #24]	// id: 291, l: 292	
	neg	 x0, x0	// id: 292, l: 293	
	ldr	 x1, [sp, #200]	// id: 293, l: 294	
	add	 x0, x1, x0	// id: 294, l: 295	
	ldr	 x1, [sp, #24]	// id: 295, l: 296	
	ldr	 w4, [sp, #172]	// id: 296, l: 297	
	ldr	 w3, [sp, #176]	// id: 297, l: 298	
	mov	 w2, w1	// id: 298, l: 299	
	mov	 x1, x0	// id: 299, l: 300	
	ldr	 x0, [sp, #200]	// id: 300, l: 301	
	bl	 swapfunc	// id: 301, l: 302	
.L31:	// id: 302, l: 303	
	ldr	 x0, [sp, #24]	// id: 303, l: 304	
	neg	 x0, x0	// id: 304, l: 305	
	ldr	 x1, [sp, #200]	// id: 305, l: 306	
	add	 x0, x1, x0	// id: 306, l: 307	
	str	 x0, [sp, #200]	// id: 307, l: 308	
.L29:	// id: 308, l: 309	
	ldr	 x1, [sp, #200]	// id: 309, l: 310	
	ldr	 x0, [sp, #40]	// id: 310, l: 311	
	cmp	 x1, x0	// id: 311, l: 312	
	bls	 .L33	// id: 312, l: 313	
	ldr	 x0, [sp, #24]	// id: 313, l: 314	
	neg	 x0, x0	// id: 314, l: 315	
	ldr	 x1, [sp, #200]	// id: 315, l: 316	
	add	 x0, x1, x0	// id: 316, l: 317	
	ldr	 x2, [sp, #16]	// id: 317, l: 318	
	ldr	 x1, [sp, #200]	// id: 318, l: 319	
	blr	 x2	// id: 319, l: 320	
	cmp	 w0, #0x0	// id: 320, l: 321	
	bgt	 .L34	// id: 321, l: 322	
.L33:	// id: 322, l: 323	
	ldr	 x1, [sp, #192]	// id: 323, l: 324	
	ldr	 x0, [sp, #24]	// id: 324, l: 325	
	add	 x0, x1, x0	// id: 325, l: 326	
	str	 x0, [sp, #192]	// id: 326, l: 327	
.L28:	// id: 327, l: 328	
	ldr	 x1, [sp, #32]	// id: 328, l: 329	
	ldr	 x0, [sp, #24]	// id: 329, l: 330	
	mul	 x0, x1, x0	// id: 330, l: 331	
	ldr	 x1, [sp, #40]	// id: 331, l: 332	
	add	 x0, x1, x0	// id: 332, l: 333	
	ldr	 x1, [sp, #192]	// id: 333, l: 334	
	cmp	 x1, x0	// id: 334, l: 335	
	bcc	 .L35	// id: 335, l: 336	
	b	 .L21	// id: 336, l: 337	
.L27:	// id: 337, l: 338	
	ldr	 x0, [sp, #32]	// id: 338, l: 339	
	lsr	 x1, x0, #1	// id: 339, l: 340	
	ldr	 x0, [sp, #24]	// id: 340, l: 341	
	mul	 x0, x1, x0	// id: 341, l: 342	
	ldr	 x1, [sp, #40]	// id: 342, l: 343	
	add	 x0, x1, x0	// id: 343, l: 344	
	str	 x0, [sp, #192]	// id: 344, l: 345	
	ldr	 x0, [sp, #32]	// id: 345, l: 346	
	cmp	 x0, #0x7	// id: 346, l: 347	
	bls	 .L37	// id: 347, l: 348	
	ldr	 x0, [sp, #40]	// id: 348, l: 349	
	str	 x0, [sp, #200]	// id: 349, l: 350	
	ldr	 x0, [sp, #32]	// id: 350, l: 351	
	sub	 x1, x0, #0x1	// id: 351, l: 352	
	ldr	 x0, [sp, #24]	// id: 352, l: 353	
	mul	 x0, x1, x0	// id: 353, l: 354	
	ldr	 x1, [sp, #40]	// id: 354, l: 355	
	add	 x0, x1, x0	// id: 355, l: 356	
	str	 x0, [sp, #184]	// id: 356, l: 357	
	ldr	 x0, [sp, #32]	// id: 357, l: 358	
	cmp	 x0, #0x28	// id: 358, l: 359	
	bls	 .L38	// id: 359, l: 360	
	ldr	 x0, [sp, #32]	// id: 360, l: 361	
	lsr	 x0, x0, #3	// id: 361, l: 362	
	ldr	 x1, [sp, #24]	// id: 362, l: 363	
	mul	 x0, x1, x0	// id: 363, l: 364	
	str	 x0, [sp, #160]	// id: 364, l: 365	
	ldr	 x1, [sp, #200]	// id: 365, l: 366	
	ldr	 x0, [sp, #160]	// id: 366, l: 367	
	add	 x4, x1, x0	// id: 367, l: 368	
	ldr	 x0, [sp, #160]	// id: 368, l: 369	
	lsl	 x0, x0, #1	// id: 369, l: 370	
	ldr	 x1, [sp, #200]	// id: 370, l: 371	
	add	 x0, x1, x0	// id: 371, l: 372	
	ldr	 x3, [sp, #16]	// id: 372, l: 373	
	mov	 x2, x0	// id: 373, l: 374	
	mov	 x1, x4	// id: 374, l: 375	
	ldr	 x0, [sp, #200]	// id: 375, l: 376	
	bl	 med3	// id: 376, l: 377	
	str	 x0, [sp, #200]	// id: 377, l: 378	
	ldr	 x0, [sp, #160]	// id: 378, l: 379	
	neg	 x0, x0	// id: 379, l: 380	
	ldr	 x1, [sp, #192]	// id: 380, l: 381	
	add	 x4, x1, x0	// id: 381, l: 382	
	ldr	 x1, [sp, #192]	// id: 382, l: 383	
	ldr	 x0, [sp, #160]	// id: 383, l: 384	
	add	 x0, x1, x0	// id: 384, l: 385	
	ldr	 x3, [sp, #16]	// id: 385, l: 386	
	mov	 x2, x0	// id: 386, l: 387	
	ldr	 x1, [sp, #192]	// id: 387, l: 388	
	mov	 x0, x4	// id: 388, l: 389	
	bl	 med3	// id: 389, l: 390	
	str	 x0, [sp, #192]	// id: 390, l: 391	
	ldr	 x0, [sp, #160]	// id: 391, l: 392	
	lsl	 x0, x0, #1	// id: 392, l: 393	
	neg	 x0, x0	// id: 393, l: 394	
	ldr	 x1, [sp, #184]	// id: 394, l: 395	
	add	 x4, x1, x0	// id: 395, l: 396	
	ldr	 x0, [sp, #160]	// id: 396, l: 397	
	neg	 x0, x0	// id: 397, l: 398	
	ldr	 x1, [sp, #184]	// id: 398, l: 399	
	add	 x0, x1, x0	// id: 399, l: 400	
	ldr	 x3, [sp, #16]	// id: 400, l: 401	
	ldr	 x2, [sp, #184]	// id: 401, l: 402	
	mov	 x1, x0	// id: 402, l: 403	
	mov	 x0, x4	// id: 403, l: 404	
	bl	 med3	// id: 404, l: 405	
	str	 x0, [sp, #184]	// id: 405, l: 406	
.L38:	// id: 406, l: 407	
	ldr	 x3, [sp, #16]	// id: 407, l: 408	
	ldr	 x2, [sp, #184]	// id: 408, l: 409	
	ldr	 x1, [sp, #192]	// id: 409, l: 410	
	ldr	 x0, [sp, #200]	// id: 410, l: 411	
	bl	 med3	// id: 411, l: 412	
	str	 x0, [sp, #192]	// id: 412, l: 413	
.L37:	// id: 413, l: 414	
	ldr	 w0, [sp, #176]	// id: 414, l: 415	
	cmp	 w0, #0x0	// id: 415, l: 416	
	bne	 .L39	// id: 416, l: 417	
	ldr	 x0, [sp, #40]	// id: 417, l: 418	
	ldr	 x0, [x0]	// id: 418, l: 419	
	str	 x0, [sp, #144]	// id: 419, l: 420	
	ldr	 x0, [sp, #192]	// id: 420, l: 421	
	ldr	 x1, [x0]	// id: 421, l: 422	
	ldr	 x0, [sp, #40]	// id: 422, l: 423	
	str	 x1, [x0]	// id: 423, l: 424	
	ldr	 x0, [sp, #192]	// id: 424, l: 425	
	ldr	 x1, [sp, #144]	// id: 425, l: 426	
	str	 x1, [x0]	// id: 426, l: 427	
	b	 .L40	// id: 427, l: 428	
.L39:	// id: 428, l: 429	
	ldr	 w0, [sp, #172]	// id: 429, l: 430	
	cmp	 w0, #0x0	// id: 430, l: 431	
	bne	 .L41	// id: 431, l: 432	
	ldr	 x0, [sp, #40]	// id: 432, l: 433	
	ldr	 w0, [x0]	// id: 433, l: 434	
	str	 w0, [sp, #156]	// id: 434, l: 435	
	ldr	 x0, [sp, #192]	// id: 435, l: 436	
	ldr	 w1, [x0]	// id: 436, l: 437	
	ldr	 x0, [sp, #40]	// id: 437, l: 438	
	str	 w1, [x0]	// id: 438, l: 439	
	ldr	 x0, [sp, #192]	// id: 439, l: 440	
	ldr	 w1, [sp, #156]	// id: 440, l: 441	
	str	 w1, [x0]	// id: 441, l: 442	
	b	 .L40	// id: 442, l: 443	
.L41:	// id: 443, l: 444	
	ldr	 x0, [sp, #24]	// id: 444, l: 445	
	ldr	 w4, [sp, #172]	// id: 445, l: 446	
	ldr	 w3, [sp, #176]	// id: 446, l: 447	
	mov	 w2, w0	// id: 447, l: 448	
	ldr	 x1, [sp, #192]	// id: 448, l: 449	
	ldr	 x0, [sp, #40]	// id: 449, l: 450	
	bl	 swapfunc	// id: 450, l: 451	
.L40:	// id: 451, l: 452	
	ldr	 x1, [sp, #40]	// id: 452, l: 453	
	ldr	 x0, [sp, #24]	// id: 453, l: 454	
	add	 x0, x1, x0	// id: 454, l: 455	
	str	 x0, [sp, #224]	// id: 455, l: 456	
	ldr	 x0, [sp, #224]	// id: 456, l: 457	
	str	 x0, [sp, #232]	// id: 457, l: 458	
	ldr	 x0, [sp, #32]	// id: 458, l: 459	
	sub	 x1, x0, #0x1	// id: 459, l: 460	
	ldr	 x0, [sp, #24]	// id: 460, l: 461	
	mul	 x0, x1, x0	// id: 461, l: 462	
	ldr	 x1, [sp, #40]	// id: 462, l: 463	
	add	 x0, x1, x0	// id: 463, l: 464	
	str	 x0, [sp, #208]	// id: 464, l: 465	
	ldr	 x0, [sp, #208]	// id: 465, l: 466	
	str	 x0, [sp, #216]	// id: 466, l: 467	
	b	 .L42	// id: 467, l: 468	
.L48:	// id: 468, l: 469	
	ldr	 w0, [sp, #140]	// id: 469, l: 470	
	cmp	 w0, #0x0	// id: 470, l: 471	
	bne	 .L43	// id: 471, l: 472	
	mov	 w0, #0x1                   	// #1	// id: 472, l: 473	
	str	 w0, [sp, #180]	// id: 473, l: 474	
	ldr	 w0, [sp, #176]	// id: 474, l: 475	
	cmp	 w0, #0x0	// id: 475, l: 476	
	bne	 .L44	// id: 476, l: 477	
	ldr	 x0, [sp, #232]	// id: 477, l: 478	
	ldr	 x0, [x0]	// id: 478, l: 479	
	str	 x0, [sp, #128]	// id: 479, l: 480	
	ldr	 x0, [sp, #224]	// id: 480, l: 481	
	ldr	 x1, [x0]	// id: 481, l: 482	
	ldr	 x0, [sp, #232]	// id: 482, l: 483	
	str	 x1, [x0]	// id: 483, l: 484	
	ldr	 x0, [sp, #224]	// id: 484, l: 485	
	ldr	 x1, [sp, #128]	// id: 485, l: 486	
	str	 x1, [x0]	// id: 486, l: 487	
	b	 .L45	// id: 487, l: 488	
.L44:	// id: 488, l: 489	
	ldr	 w0, [sp, #172]	// id: 489, l: 490	
	cmp	 w0, #0x0	// id: 490, l: 491	
	bne	 .L46	// id: 491, l: 492	
	ldr	 x0, [sp, #232]	// id: 492, l: 493	
	ldr	 w0, [x0]	// id: 493, l: 494	
	str	 w0, [sp, #136]	// id: 494, l: 495	
	ldr	 x0, [sp, #224]	// id: 495, l: 496	
	ldr	 w1, [x0]	// id: 496, l: 497	
	ldr	 x0, [sp, #232]	// id: 497, l: 498	
	str	 w1, [x0]	// id: 498, l: 499	
	ldr	 x0, [sp, #224]	// id: 499, l: 500	
	ldr	 w1, [sp, #136]	// id: 500, l: 501	
	str	 w1, [x0]	// id: 501, l: 502	
	b	 .L45	// id: 502, l: 503	
.L46:	// id: 503, l: 504	
	ldr	 x0, [sp, #24]	// id: 504, l: 505	
	ldr	 w4, [sp, #172]	// id: 505, l: 506	
	ldr	 w3, [sp, #176]	// id: 506, l: 507	
	mov	 w2, w0	// id: 507, l: 508	
	ldr	 x1, [sp, #224]	// id: 508, l: 509	
	ldr	 x0, [sp, #232]	// id: 509, l: 510	
	bl	 swapfunc	// id: 510, l: 511	
.L45:	// id: 511, l: 512	
	ldr	 x1, [sp, #232]	// id: 512, l: 513	
	ldr	 x0, [sp, #24]	// id: 513, l: 514	
	add	 x0, x1, x0	// id: 514, l: 515	
	str	 x0, [sp, #232]	// id: 515, l: 516	
.L43:	// id: 516, l: 517	
	ldr	 x1, [sp, #224]	// id: 517, l: 518	
	ldr	 x0, [sp, #24]	// id: 518, l: 519	
	add	 x0, x1, x0	// id: 519, l: 520	
	str	 x0, [sp, #224]	// id: 520, l: 521	
.L42:	// id: 521, l: 522	
	ldr	 x1, [sp, #224]	// id: 522, l: 523	
	ldr	 x0, [sp, #216]	// id: 523, l: 524	
	cmp	 x1, x0	// id: 524, l: 525	
	bhi	 .L49	// id: 525, l: 526	
	ldr	 x2, [sp, #16]	// id: 526, l: 527	
	ldr	 x1, [sp, #40]	// id: 527, l: 528	
	ldr	 x0, [sp, #224]	// id: 528, l: 529	
	blr	 x2	// id: 529, l: 530	
	str	 w0, [sp, #140]	// id: 530, l: 531	
	ldr	 w0, [sp, #140]	// id: 531, l: 532	
	cmp	 w0, #0x0	// id: 532, l: 533	
	ble	 .L48	// id: 533, l: 534	
	b	 .L49	// id: 534, l: 535	
.L55:	// id: 535, l: 536	
	ldr	 w0, [sp, #140]	// id: 536, l: 537	
	cmp	 w0, #0x0	// id: 537, l: 538	
	bne	 .L50	// id: 538, l: 539	
	mov	 w0, #0x1                   	// #1	// id: 539, l: 540	
	str	 w0, [sp, #180]	// id: 540, l: 541	
	ldr	 w0, [sp, #176]	// id: 541, l: 542	
	cmp	 w0, #0x0	// id: 542, l: 543	
	bne	 .L51	// id: 543, l: 544	
	ldr	 x0, [sp, #216]	// id: 544, l: 545	
	ldr	 x0, [x0]	// id: 545, l: 546	
	str	 x0, [sp, #112]	// id: 546, l: 547	
	ldr	 x0, [sp, #208]	// id: 547, l: 548	
	ldr	 x1, [x0]	// id: 548, l: 549	
	ldr	 x0, [sp, #216]	// id: 549, l: 550	
	str	 x1, [x0]	// id: 550, l: 551	
	ldr	 x0, [sp, #208]	// id: 551, l: 552	
	ldr	 x1, [sp, #112]	// id: 552, l: 553	
	str	 x1, [x0]	// id: 553, l: 554	
	b	 .L52	// id: 554, l: 555	
.L51:	// id: 555, l: 556	
	ldr	 w0, [sp, #172]	// id: 556, l: 557	
	cmp	 w0, #0x0	// id: 557, l: 558	
	bne	 .L53	// id: 558, l: 559	
	ldr	 x0, [sp, #216]	// id: 559, l: 560	
	ldr	 w0, [x0]	// id: 560, l: 561	
	str	 w0, [sp, #124]	// id: 561, l: 562	
	ldr	 x0, [sp, #208]	// id: 562, l: 563	
	ldr	 w1, [x0]	// id: 563, l: 564	
	ldr	 x0, [sp, #216]	// id: 564, l: 565	
	str	 w1, [x0]	// id: 565, l: 566	
	ldr	 x0, [sp, #208]	// id: 566, l: 567	
	ldr	 w1, [sp, #124]	// id: 567, l: 568	
	str	 w1, [x0]	// id: 568, l: 569	
	b	 .L52	// id: 569, l: 570	
.L53:	// id: 570, l: 571	
	ldr	 x0, [sp, #24]	// id: 571, l: 572	
	ldr	 w4, [sp, #172]	// id: 572, l: 573	
	ldr	 w3, [sp, #176]	// id: 573, l: 574	
	mov	 w2, w0	// id: 574, l: 575	
	ldr	 x1, [sp, #208]	// id: 575, l: 576	
	ldr	 x0, [sp, #216]	// id: 576, l: 577	
	bl	 swapfunc	// id: 577, l: 578	
.L52:	// id: 578, l: 579	
	ldr	 x0, [sp, #24]	// id: 579, l: 580	
	neg	 x0, x0	// id: 580, l: 581	
	ldr	 x1, [sp, #208]	// id: 581, l: 582	
	add	 x0, x1, x0	// id: 582, l: 583	
	str	 x0, [sp, #208]	// id: 583, l: 584	
.L50:	// id: 584, l: 585	
	ldr	 x0, [sp, #24]	// id: 585, l: 586	
	neg	 x0, x0	// id: 586, l: 587	
	ldr	 x1, [sp, #216]	// id: 587, l: 588	
	add	 x0, x1, x0	// id: 588, l: 589	
	str	 x0, [sp, #216]	// id: 589, l: 590	
.L49:	// id: 590, l: 591	
	ldr	 x1, [sp, #224]	// id: 591, l: 592	
	ldr	 x0, [sp, #216]	// id: 592, l: 593	
	cmp	 x1, x0	// id: 593, l: 594	
	bhi	 .L54	// id: 594, l: 595	
	ldr	 x2, [sp, #16]	// id: 595, l: 596	
	ldr	 x1, [sp, #40]	// id: 596, l: 597	
	ldr	 x0, [sp, #216]	// id: 597, l: 598	
	blr	 x2	// id: 598, l: 599	
	str	 w0, [sp, #140]	// id: 599, l: 600	
	ldr	 w0, [sp, #140]	// id: 600, l: 601	
	cmp	 w0, #0x0	// id: 601, l: 602	
	bge	 .L55	// id: 602, l: 603	
.L54:	// id: 603, l: 604	
	ldr	 x1, [sp, #224]	// id: 604, l: 605	
	ldr	 x0, [sp, #216]	// id: 605, l: 606	
	cmp	 x1, x0	// id: 606, l: 607	
	bhi	 .L75	// id: 607, l: 608	
	ldr	 w0, [sp, #176]	// id: 608, l: 609	
	cmp	 w0, #0x0	// id: 609, l: 610	
	bne	 .L58	// id: 610, l: 611	
	ldr	 x0, [sp, #224]	// id: 611, l: 612	
	ldr	 x0, [x0]	// id: 612, l: 613	
	str	 x0, [sp, #96]	// id: 613, l: 614	
	ldr	 x0, [sp, #216]	// id: 614, l: 615	
	ldr	 x1, [x0]	// id: 615, l: 616	
	ldr	 x0, [sp, #224]	// id: 616, l: 617	
	str	 x1, [x0]	// id: 617, l: 618	
	ldr	 x0, [sp, #216]	// id: 618, l: 619	
	ldr	 x1, [sp, #96]	// id: 619, l: 620	
	str	 x1, [x0]	// id: 620, l: 621	
	b	 .L59	// id: 621, l: 622	
.L58:	// id: 622, l: 623	
	ldr	 w0, [sp, #172]	// id: 623, l: 624	
	cmp	 w0, #0x0	// id: 624, l: 625	
	bne	 .L60	// id: 625, l: 626	
	ldr	 x0, [sp, #224]	// id: 626, l: 627	
	ldr	 w0, [x0]	// id: 627, l: 628	
	str	 w0, [sp, #108]	// id: 628, l: 629	
	ldr	 x0, [sp, #216]	// id: 629, l: 630	
	ldr	 w1, [x0]	// id: 630, l: 631	
	ldr	 x0, [sp, #224]	// id: 631, l: 632	
	str	 w1, [x0]	// id: 632, l: 633	
	ldr	 x0, [sp, #216]	// id: 633, l: 634	
	ldr	 w1, [sp, #108]	// id: 634, l: 635	
	str	 w1, [x0]	// id: 635, l: 636	
	b	 .L59	// id: 636, l: 637	
.L60:	// id: 637, l: 638	
	ldr	 x0, [sp, #24]	// id: 638, l: 639	
	ldr	 w4, [sp, #172]	// id: 639, l: 640	
	ldr	 w3, [sp, #176]	// id: 640, l: 641	
	mov	 w2, w0	// id: 641, l: 642	
	ldr	 x1, [sp, #216]	// id: 642, l: 643	
	ldr	 x0, [sp, #224]	// id: 643, l: 644	
	bl	 swapfunc	// id: 644, l: 645	
.L59:	// id: 645, l: 646	
	mov	 w0, #0x1                   	// #1	// id: 646, l: 647	
	str	 w0, [sp, #180]	// id: 647, l: 648	
	ldr	 x1, [sp, #224]	// id: 648, l: 649	
	ldr	 x0, [sp, #24]	// id: 649, l: 650	
	add	 x0, x1, x0	// id: 650, l: 651	
	str	 x0, [sp, #224]	// id: 651, l: 652	
	ldr	 x0, [sp, #24]	// id: 652, l: 653	
	neg	 x0, x0	// id: 653, l: 654	
	ldr	 x1, [sp, #216]	// id: 654, l: 655	
	add	 x0, x1, x0	// id: 655, l: 656	
	str	 x0, [sp, #216]	// id: 656, l: 657	
	b	 .L42	// id: 657, l: 658	
.L75:	// id: 658, l: 659	
	nop		// id: 659, l: 660	
	ldr	 w0, [sp, #180]	// id: 660, l: 661	
	cmp	 w0, #0x0	// id: 661, l: 662	
	bne	 .L62	// id: 662, l: 663	
	ldr	 x1, [sp, #40]	// id: 663, l: 664	
	ldr	 x0, [sp, #24]	// id: 664, l: 665	
	add	 x0, x1, x0	// id: 665, l: 666	
	str	 x0, [sp, #192]	// id: 666, l: 667	
	b	 .L63	// id: 667, l: 668	
.L70:	// id: 668, l: 669	
	ldr	 x0, [sp, #192]	// id: 669, l: 670	
	str	 x0, [sp, #200]	// id: 670, l: 671	
	b	 .L64	// id: 671, l: 672	
.L69:	// id: 672, l: 673	
	ldr	 w0, [sp, #176]	// id: 673, l: 674	
	cmp	 w0, #0x0	// id: 674, l: 675	
	bne	 .L65	// id: 675, l: 676	
	ldr	 x0, [sp, #200]	// id: 676, l: 677	
	ldr	 x0, [x0]	// id: 677, l: 678	
	str	 x0, [sp, #72]	// id: 678, l: 679	
	ldr	 x0, [sp, #24]	// id: 679, l: 680	
	neg	 x0, x0	// id: 680, l: 681	
	ldr	 x1, [sp, #200]	// id: 681, l: 682	
	add	 x0, x1, x0	// id: 682, l: 683	
	ldr	 x1, [x0]	// id: 683, l: 684	
	ldr	 x0, [sp, #200]	// id: 684, l: 685	
	str	 x1, [x0]	// id: 685, l: 686	
	ldr	 x0, [sp, #24]	// id: 686, l: 687	
	neg	 x0, x0	// id: 687, l: 688	
	ldr	 x1, [sp, #200]	// id: 688, l: 689	
	add	 x0, x1, x0	// id: 689, l: 690	
	ldr	 x1, [sp, #72]	// id: 690, l: 691	
	str	 x1, [x0]	// id: 691, l: 692	
	b	 .L66	// id: 692, l: 693	
.L65:	// id: 693, l: 694	
	ldr	 w0, [sp, #172]	// id: 694, l: 695	
	cmp	 w0, #0x0	// id: 695, l: 696	
	bne	 .L67	// id: 696, l: 697	
	ldr	 x0, [sp, #200]	// id: 697, l: 698	
	ldr	 w0, [x0]	// id: 698, l: 699	
	str	 w0, [sp, #84]	// id: 699, l: 700	
	ldr	 x0, [sp, #24]	// id: 700, l: 701	
	neg	 x0, x0	// id: 701, l: 702	
	ldr	 x1, [sp, #200]	// id: 702, l: 703	
	add	 x0, x1, x0	// id: 703, l: 704	
	ldr	 w1, [x0]	// id: 704, l: 705	
	ldr	 x0, [sp, #200]	// id: 705, l: 706	
	str	 w1, [x0]	// id: 706, l: 707	
	ldr	 x0, [sp, #24]	// id: 707, l: 708	
	neg	 x0, x0	// id: 708, l: 709	
	ldr	 x1, [sp, #200]	// id: 709, l: 710	
	add	 x0, x1, x0	// id: 710, l: 711	
	ldr	 w1, [sp, #84]	// id: 711, l: 712	
	str	 w1, [x0]	// id: 712, l: 713	
	b	 .L66	// id: 713, l: 714	
.L67:	// id: 714, l: 715	
	ldr	 x0, [sp, #24]	// id: 715, l: 716	
	neg	 x0, x0	// id: 716, l: 717	
	ldr	 x1, [sp, #200]	// id: 717, l: 718	
	add	 x0, x1, x0	// id: 718, l: 719	
	ldr	 x1, [sp, #24]	// id: 719, l: 720	
	ldr	 w4, [sp, #172]	// id: 720, l: 721	
	ldr	 w3, [sp, #176]	// id: 721, l: 722	
	mov	 w2, w1	// id: 722, l: 723	
	mov	 x1, x0	// id: 723, l: 724	
	ldr	 x0, [sp, #200]	// id: 724, l: 725	
	bl	 swapfunc	// id: 725, l: 726	
.L66:	// id: 726, l: 727	
	ldr	 x0, [sp, #24]	// id: 727, l: 728	
	neg	 x0, x0	// id: 728, l: 729	
	ldr	 x1, [sp, #200]	// id: 729, l: 730	
	add	 x0, x1, x0	// id: 730, l: 731	
	str	 x0, [sp, #200]	// id: 731, l: 732	
.L64:	// id: 732, l: 733	
	ldr	 x1, [sp, #200]	// id: 733, l: 734	
	ldr	 x0, [sp, #40]	// id: 734, l: 735	
	cmp	 x1, x0	// id: 735, l: 736	
	bls	 .L68	// id: 736, l: 737	
	ldr	 x0, [sp, #24]	// id: 737, l: 738	
	neg	 x0, x0	// id: 738, l: 739	
	ldr	 x1, [sp, #200]	// id: 739, l: 740	
	add	 x0, x1, x0	// id: 740, l: 741	
	ldr	 x2, [sp, #16]	// id: 741, l: 742	
	ldr	 x1, [sp, #200]	// id: 742, l: 743	
	blr	 x2	// id: 743, l: 744	
	cmp	 w0, #0x0	// id: 744, l: 745	
	bgt	 .L69	// id: 745, l: 746	
.L68:	// id: 746, l: 747	
	ldr	 x1, [sp, #192]	// id: 747, l: 748	
	ldr	 x0, [sp, #24]	// id: 748, l: 749	
	add	 x0, x1, x0	// id: 749, l: 750	
	str	 x0, [sp, #192]	// id: 750, l: 751	
.L63:	// id: 751, l: 752	
	ldr	 x1, [sp, #32]	// id: 752, l: 753	
	ldr	 x0, [sp, #24]	// id: 753, l: 754	
	mul	 x0, x1, x0	// id: 754, l: 755	
	ldr	 x1, [sp, #40]	// id: 755, l: 756	
	add	 x0, x1, x0	// id: 756, l: 757	
	ldr	 x1, [sp, #192]	// id: 757, l: 758	
	cmp	 x1, x0	// id: 758, l: 759	
	bcc	 .L70	// id: 759, l: 760	
	b	 .L21	// id: 760, l: 761	
.L62:	// id: 761, l: 762	
	ldr	 x1, [sp, #32]	// id: 762, l: 763	
	ldr	 x0, [sp, #24]	// id: 763, l: 764	
	mul	 x0, x1, x0	// id: 764, l: 765	
	ldr	 x1, [sp, #40]	// id: 765, l: 766	
	add	 x0, x1, x0	// id: 766, l: 767	
	str	 x0, [sp, #184]	// id: 767, l: 768	
	ldr	 x1, [sp, #224]	// id: 768, l: 769	
	ldr	 x0, [sp, #232]	// id: 769, l: 770	
	sub	 x1, x1, x0	// id: 770, l: 771	
	ldr	 x2, [sp, #232]	// id: 771, l: 772	
	ldr	 x0, [sp, #40]	// id: 772, l: 773	
	sub	 x0, x2, x0	// id: 773, l: 774	
	cmp	 x1, x0	// id: 774, l: 775	
	csel	 x0, x1, x0, le	// id: 775, l: 776	
	str	 x0, [sp, #88]	// id: 776, l: 777	
	ldr	 x0, [sp, #88]	// id: 777, l: 778	
	cmp	 x0, #0x0	// id: 778, l: 779	
	beq	 .L71	// id: 779, l: 780	
	ldr	 x0, [sp, #88]	// id: 780, l: 781	
	neg	 x0, x0	// id: 781, l: 782	
	ldr	 x1, [sp, #224]	// id: 782, l: 783	
	add	 x0, x1, x0	// id: 783, l: 784	
	ldr	 x1, [sp, #88]	// id: 784, l: 785	
	ldr	 w4, [sp, #172]	// id: 785, l: 786	
	ldr	 w3, [sp, #176]	// id: 786, l: 787	
	mov	 w2, w1	// id: 787, l: 788	
	mov	 x1, x0	// id: 788, l: 789	
	ldr	 x0, [sp, #40]	// id: 789, l: 790	
	bl	 swapfunc	// id: 790, l: 791	
.L71:	// id: 791, l: 792	
	ldr	 x1, [sp, #184]	// id: 792, l: 793	
	ldr	 x0, [sp, #208]	// id: 793, l: 794	
	sub	 x1, x1, x0	// id: 794, l: 795	
	ldr	 x0, [sp, #24]	// id: 795, l: 796	
	sub	 x1, x1, x0	// id: 796, l: 797	
	ldr	 x2, [sp, #208]	// id: 797, l: 798	
	ldr	 x0, [sp, #216]	// id: 798, l: 799	
	sub	 x0, x2, x0	// id: 799, l: 800	
	cmp	 x1, x0	// id: 800, l: 801	
	csel	 x0, x1, x0, le	// id: 801, l: 802	
	str	 x0, [sp, #88]	// id: 802, l: 803	
	ldr	 x0, [sp, #88]	// id: 803, l: 804	
	cmp	 x0, #0x0	// id: 804, l: 805	
	beq	 .L72	// id: 805, l: 806	
	ldr	 x0, [sp, #88]	// id: 806, l: 807	
	neg	 x0, x0	// id: 807, l: 808	
	ldr	 x1, [sp, #184]	// id: 808, l: 809	
	add	 x0, x1, x0	// id: 809, l: 810	
	ldr	 x1, [sp, #88]	// id: 810, l: 811	
	ldr	 w4, [sp, #172]	// id: 811, l: 812	
	ldr	 w3, [sp, #176]	// id: 812, l: 813	
	mov	 w2, w1	// id: 813, l: 814	
	mov	 x1, x0	// id: 814, l: 815	
	ldr	 x0, [sp, #224]	// id: 815, l: 816	
	bl	 swapfunc	// id: 816, l: 817	
.L72:	// id: 817, l: 818	
	ldr	 x1, [sp, #224]	// id: 818, l: 819	
	ldr	 x0, [sp, #232]	// id: 819, l: 820	
	sub	 x0, x1, x0	// id: 820, l: 821	
	str	 x0, [sp, #88]	// id: 821, l: 822	
	ldr	 x1, [sp, #88]	// id: 822, l: 823	
	ldr	 x0, [sp, #24]	// id: 823, l: 824	
	cmp	 x1, x0	// id: 824, l: 825	
	bls	 .L73	// id: 825, l: 826	
	ldr	 x1, [sp, #88]	// id: 826, l: 827	
	ldr	 x0, [sp, #24]	// id: 827, l: 828	
	udiv	 x0, x1, x0	// id: 828, l: 829	
	ldr	 x3, [sp, #16]	// id: 829, l: 830	
	ldr	 x2, [sp, #24]	// id: 830, l: 831	
	mov	 x1, x0	// id: 831, l: 832	
	ldr	 x0, [sp, #40]	// id: 832, l: 833	
	bl	 spec_qsort	// id: 833, l: 834	
.L73:	// id: 834, l: 835	
	ldr	 x1, [sp, #208]	// id: 835, l: 836	
	ldr	 x0, [sp, #216]	// id: 836, l: 837	
	sub	 x0, x1, x0	// id: 837, l: 838	
	str	 x0, [sp, #88]	// id: 838, l: 839	
	ldr	 x1, [sp, #88]	// id: 839, l: 840	
	ldr	 x0, [sp, #24]	// id: 840, l: 841	
	cmp	 x1, x0	// id: 841, l: 842	
	bls	 .L21	// id: 842, l: 843	
	ldr	 x0, [sp, #88]	// id: 843, l: 844	
	neg	 x0, x0	// id: 844, l: 845	
	ldr	 x1, [sp, #184]	// id: 845, l: 846	
	add	 x0, x1, x0	// id: 846, l: 847	
	str	 x0, [sp, #40]	// id: 847, l: 848	
	ldr	 x1, [sp, #88]	// id: 848, l: 849	
	ldr	 x0, [sp, #24]	// id: 849, l: 850	
	udiv	 x0, x1, x0	// id: 850, l: 851	
	str	 x0, [sp, #32]	// id: 851, l: 852	
	b	 .L22	// id: 852, l: 853	
.L21:	// id: 853, l: 854	
	ldp	 x29, x30, [sp], #240	// id: 854, l: 855	
	.cfi_restore	30	// id: 855, l: 856	
	.cfi_restore	29	// id: 856, l: 857	
	.cfi_def_cfa_offset	0	// id: 857, l: 858	
	ret		// id: 858, l: 859	
	.cfi_endproc		// id: 859, l: 860	
.LFE2:	// id: 860, l: 861	
	.size	spec_qsort, .-spec_qsort	// id: 861, l: 862	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 862, l: 863	
	.section	.note.GNU-stack, "",@progbits	// id: 863, l: 864	
