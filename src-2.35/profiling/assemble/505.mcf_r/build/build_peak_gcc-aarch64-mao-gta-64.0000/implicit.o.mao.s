	.arch	armv8-a	// id: 0, l: 1	
	.file	"implicit.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.p2align	3, , 7	// id: 4, l: 5	
	.type	arc_compare, %function	// id: 5, l: 6	
arc_compare:	// id: 6, l: 7	
.LFB25:	// id: 7, l: 8	
	.cfi_startproc		// id: 8, l: 9	
	ldr	 x2, [x0]	// id: 9, l: 10	
	ldr	 x1, [x1]	// id: 10, l: 11	
	ldr	 x3, [x2, #56]	// id: 11, l: 12	
	ldr	 x0, [x1, #56]	// id: 12, l: 13	
	cmp	 x3, x0	// id: 13, l: 14	
	bgt	 .L3	// id: 14, l: 15	
	mov	 w0, #0xffffffff            	// #-1	// id: 15, l: 16	
	blt	 .L1	// id: 16, l: 17	
	ldr	 w1, [x1]	// id: 17, l: 18	
	ldr	 w2, [x2]	// id: 18, l: 19	
	cmp	 w2, w1	// id: 19, l: 20	
	csneg	 w0, w0, w0, lt  // lt = tstop	// id: 20, l: 21	
.L1:	// id: 21, l: 22	
	ret		// id: 22, l: 23	
	.p2align	2, , 3	// id: 23, l: 24	
.L3:	// id: 24, l: 25	
	mov	 w0, #0x1                   	// #1	// id: 25, l: 26	
	ret		// id: 26, l: 27	
	.cfi_endproc		// id: 27, l: 28	
.LFE25:	// id: 28, l: 29	
	.size	arc_compare, .-arc_compare	// id: 29, l: 30	
	.p2align	2, , 0	// id: 30, l: 31	
	.p2align	3, , 7	// id: 31, l: 32	
	.globl	refreshArcPointers	// id: 32, l: 33	
	.type	refreshArcPointers, %function	// id: 33, l: 34	
refreshArcPointers:	// id: 34, l: 35	
.LFB26:	// id: 35, l: 36	
	.cfi_startproc		// id: 36, l: 37	
	stp	 x29, x30, [sp, #-64]!	// id: 37, l: 38	
	.cfi_def_cfa_offset	64	// id: 38, l: 39	
	.cfi_offset	29, -64	// id: 39, l: 40	
	.cfi_offset	30, -56	// id: 40, l: 41	
	mov	 x29, sp	// id: 41, l: 42	
	stp	 x19, x20, [sp, #16]	// id: 42, l: 43	
	.cfi_offset	19, -48	// id: 43, l: 44	
	.cfi_offset	20, -40	// id: 44, l: 45	
	mov	 x20, x0	// id: 45, l: 46	
	ldr	 x0, [x0, #400]	// id: 46, l: 47	
	tbnz	 x0, #63, .L8	// id: 47, l: 48	
	stp	 x23, x24, [sp, #48]	// id: 48, l: 49	
	.cfi_offset	24, -8	// id: 49, l: 50	
	.cfi_offset	23, -16	// id: 50, l: 51	
	mov	 x23, x1	// id: 51, l: 52	
	mov	 x24, x2	// id: 52, l: 53	
	stp	 x21, x22, [sp, #32]	// id: 53, l: 54	
	.cfi_offset	22, -24	// id: 54, l: 55	
	.cfi_offset	21, -32	// id: 55, l: 56	
	mov	 x22, #0x0                   	// #0	// id: 56, l: 57	
	mov	 x21, #0x0                   	// #0	// id: 57, l: 58	
	.p2align	3, , 7	// id: 58, l: 59	
.L12:	// id: 59, l: 60	
	ldr	 x19, [x20, #552]	// id: 60, l: 61	
	mov	 x0, x20	// id: 61, l: 62	
	add	 x21, x21, #0x1	// id: 62, l: 63	
	add	 x19, x19, x22	// id: 63, l: 64	
	add	 x22, x22, #0x68	// id: 64, l: 65	
	ldr	 x1, [x19, #48]	// id: 65, l: 66	
	cbz	 x1, .L9	// id: 66, l: 67	
	ldr	 w2, [x1]	// id: 67, l: 68	
	sxtw	 x1, w2	// id: 68, l: 69	
	tbnz	 x2, #31, .L9	// id: 69, l: 70	
	blr	 x23	// id: 70, l: 71	
	add	 x0, x0, x0, lsl #3	// id: 71, l: 72	
	add	 x0, x24, x0, lsl #3	// id: 72, l: 73	
	str	 x0, [x19, #48]	// id: 73, l: 74	
.L9:	// id: 74, l: 75	
	ldr	 x1, [x19, #64]	// id: 75, l: 76	
	mov	 x0, x20	// id: 76, l: 77	
	cbz	 x1, .L10	// id: 77, l: 78	
	ldr	 w2, [x1]	// id: 78, l: 79	
	sxtw	 x1, w2	// id: 79, l: 80	
	tbnz	 x2, #31, .L10	// id: 80, l: 81	
	blr	 x23	// id: 81, l: 82	
	add	 x0, x0, x0, lsl #3	// id: 82, l: 83	
	add	 x0, x24, x0, lsl #3	// id: 83, l: 84	
	str	 x0, [x19, #64]	// id: 84, l: 85	
.L10:	// id: 85, l: 86	
	ldr	 x1, [x19, #56]	// id: 86, l: 87	
	mov	 x0, x20	// id: 87, l: 88	
	cbz	 x1, .L11	// id: 88, l: 89	
	ldr	 w2, [x1]	// id: 89, l: 90	
	sxtw	 x1, w2	// id: 90, l: 91	
	tbnz	 x2, #31, .L11	// id: 91, l: 92	
	blr	 x23	// id: 92, l: 93	
	add	 x0, x0, x0, lsl #3	// id: 93, l: 94	
	add	 x0, x24, x0, lsl #3	// id: 94, l: 95	
	str	 x0, [x19, #56]	// id: 95, l: 96	
.L11:	// id: 96, l: 97	
	ldr	 x0, [x20, #400]	// id: 97, l: 98	
	cmp	 x0, x21	// id: 98, l: 99	
	bge	 .L12	// id: 99, l: 100	
	ldp	 x21, x22, [sp, #32]	// id: 100, l: 101	
	.cfi_restore	22	// id: 101, l: 102	
	.cfi_restore	21	// id: 102, l: 103	
	ldp	 x23, x24, [sp, #48]	// id: 103, l: 104	
	.cfi_restore	24	// id: 104, l: 105	
	.cfi_restore	23	// id: 105, l: 106	
.L8:	// id: 106, l: 107	
	mov	 x0, #0x0                   	// #0	// id: 107, l: 108	
	ldp	 x19, x20, [sp, #16]	// id: 108, l: 109	
	ldp	 x29, x30, [sp], #64	// id: 109, l: 110	
	.cfi_restore	30	// id: 110, l: 111	
	.cfi_restore	29	// id: 111, l: 112	
	.cfi_restore	19	// id: 112, l: 113	
	.cfi_restore	20	// id: 113, l: 114	
	.cfi_def_cfa_offset	0	// id: 114, l: 115	
	ret		// id: 115, l: 116	
	.cfi_endproc		// id: 116, l: 117	
.LFE26:	// id: 117, l: 118	
	.size	refreshArcPointers, .-refreshArcPointers	// id: 118, l: 119	
	.p2align	2, , 0	// id: 119, l: 120	
	.p2align	3, , 7	// id: 120, l: 121	
	.globl	refreshPositions	// id: 121, l: 122	
	.type	refreshPositions, %function	// id: 122, l: 123	
refreshPositions:	// id: 123, l: 124	
.LFB27:	// id: 124, l: 125	
	.cfi_startproc		// id: 125, l: 126	
	stp	 x29, x30, [sp, #-80]!	// id: 126, l: 127	
	.cfi_def_cfa_offset	80	// id: 127, l: 128	
	.cfi_offset	29, -80	// id: 128, l: 129	
	.cfi_offset	30, -72	// id: 129, l: 130	
	mov	 x29, sp	// id: 130, l: 131	
	stp	 x21, x22, [sp, #32]	// id: 131, l: 132	
	.cfi_offset	21, -48	// id: 132, l: 133	
	.cfi_offset	22, -40	// id: 133, l: 134	
	mov	 x21, x2	// id: 134, l: 135	
	stp	 x23, x24, [sp, #48]	// id: 135, l: 136	
	.cfi_offset	23, -32	// id: 136, l: 137	
	.cfi_offset	24, -24	// id: 137, l: 138	
	mov	 x23, x1	// id: 138, l: 139	
	str	 x25, [sp, #64]	// id: 139, l: 140	
	.cfi_offset	25, -16	// id: 140, l: 141	
	mov	 x25, x0	// id: 141, l: 142	
	ldr	 x22, [x0, #584]	// id: 142, l: 143	
	mov	 x2, x22	// id: 143, l: 144	
	bl	 refreshArcPointers	// id: 144, l: 145	
	cmp	 x21, #0x0	// id: 145, l: 146	
	ble	 .L25	// id: 146, l: 147	
	stp	 x19, x20, [sp, #16]	// id: 147, l: 148	
	.cfi_offset	20, -56	// id: 148, l: 149	
	.cfi_offset	19, -64	// id: 149, l: 150	
	mov	 x24, #0x0                   	// #0	// id: 150, l: 151	
	mov	 x20, #0x0                   	// #0	// id: 151, l: 152	
	ldr	 x3, [x25, #568]	// id: 152, l: 153	
	.p2align	3, , 7	// id: 153, l: 154	
.L27:	// id: 154, l: 155	
	add	 x19, x3, x20	// id: 155, l: 156	
	ldr	 w2, [x3, x20]	// id: 156, l: 157	
	mov	 x0, x25	// id: 157, l: 158	
	add	 x24, x24, #0x1	// id: 158, l: 159	
	add	 x20, x20, #0x48	// id: 159, l: 160	
	sxtw	 x1, w2	// id: 160, l: 161	
	tbnz	 x2, #31, .L26	// id: 161, l: 162	
	blr	 x23	// id: 162, l: 163	
	add	 x0, x0, x0, lsl #3	// id: 163, l: 164	
	ldp	 x4, x5, [x19]	// id: 164, l: 165	
	add	 x3, x22, x0, lsl #3	// id: 165, l: 166	
	stp	 x4, x5, [x3]	// id: 166, l: 167	
	ldp	 x4, x5, [x19, #16]	// id: 167, l: 168	
	stp	 x4, x5, [x3, #16]	// id: 168, l: 169	
	ldp	 x4, x5, [x19, #32]	// id: 169, l: 170	
	stp	 x4, x5, [x3, #32]	// id: 170, l: 171	
	ldp	 x4, x5, [x19, #48]	// id: 171, l: 172	
	stp	 x4, x5, [x3, #48]	// id: 172, l: 173	
	ldr	 x0, [x19, #64]	// id: 173, l: 174	
	str	 x0, [x3, #64]	// id: 174, l: 175	
	ldr	 x3, [x25, #568]	// id: 175, l: 176	
.L26:	// id: 176, l: 177	
	cmp	 x21, x24	// id: 177, l: 178	
	bne	 .L27	// id: 178, l: 179	
	ldp	 x19, x20, [sp, #16]	// id: 179, l: 180	
	.cfi_restore	20	// id: 180, l: 181	
	.cfi_restore	19	// id: 181, l: 182	
.L28:	// id: 182, l: 183	
	add	 x21, x21, x21, lsl #3	// id: 183, l: 184	
	str	 x22, [x25, #568]	// id: 184, l: 185	
	mov	 x0, #0x0                   	// #0	// id: 185, l: 186	
	add	 x22, x22, x21, lsl #3	// id: 186, l: 187	
	str	 x22, [x25, #576]	// id: 187, l: 188	
	str	 x3, [x25, #584]	// id: 188, l: 189	
	ldp	 x21, x22, [sp, #32]	// id: 189, l: 190	
	ldp	 x23, x24, [sp, #48]	// id: 190, l: 191	
	ldr	 x25, [sp, #64]	// id: 191, l: 192	
	ldp	 x29, x30, [sp], #80	// id: 192, l: 193	
	.cfi_remember_state		// id: 193, l: 194	
	.cfi_restore	30	// id: 194, l: 195	
	.cfi_restore	29	// id: 195, l: 196	
	.cfi_restore	25	// id: 196, l: 197	
	.cfi_restore	23	// id: 197, l: 198	
	.cfi_restore	24	// id: 198, l: 199	
	.cfi_restore	21	// id: 199, l: 200	
	.cfi_restore	22	// id: 200, l: 201	
	.cfi_def_cfa_offset	0	// id: 201, l: 202	
	ret		// id: 202, l: 203	
	.p2align	2, , 3	// id: 203, l: 204	
.L25:	// id: 204, l: 205	
	.cfi_restore_state		// id: 205, l: 206	
	ldr	 x3, [x25, #568]	// id: 206, l: 207	
	b	 .L28	// id: 207, l: 208	
	.cfi_endproc		// id: 208, l: 209	
.LFE27:	// id: 209, l: 210	
	.size	refreshPositions, .-refreshPositions	// id: 210, l: 211	
	.p2align	2, , 0	// id: 211, l: 212	
	.p2align	3, , 7	// id: 212, l: 213	
	.globl	marc_arcs	// id: 213, l: 214	
	.type	marc_arcs, %function	// id: 214, l: 215	
marc_arcs:	// id: 215, l: 216	
.LFB28:	// id: 216, l: 217	
	.cfi_startproc		// id: 217, l: 218	
	stp	 x29, x30, [sp, #-64]!	// id: 218, l: 219	
	.cfi_def_cfa_offset	64	// id: 219, l: 220	
	.cfi_offset	29, -64	// id: 220, l: 221	
	.cfi_offset	30, -56	// id: 221, l: 222	
	mov	 x29, sp	// id: 222, l: 223	
	stp	 x19, x20, [sp, #16]	// id: 223, l: 224	
	.cfi_offset	19, -48	// id: 224, l: 225	
	.cfi_offset	20, -40	// id: 225, l: 226	
	mov	 x19, x0	// id: 226, l: 227	
	mov	 x0, #0x8                   	// #8	// id: 227, l: 228	
	stp	 x21, x22, [sp, #32]	// id: 228, l: 229	
	.cfi_offset	21, -32	// id: 229, l: 230	
	.cfi_offset	22, -24	// id: 230, l: 231	
	mov	 x22, x2	// id: 231, l: 232	
	stp	 x23, x24, [sp, #48]	// id: 232, l: 233	
	.cfi_offset	23, -16	// id: 233, l: 234	
	.cfi_offset	24, -8	// id: 234, l: 235	
	mov	 x23, x1	// id: 235, l: 236	
	mov	 x24, x3	// id: 236, l: 237	
	bl	 malloc	// id: 237, l: 238	
	mov	 x21, x0	// id: 238, l: 239	
	mov	 x0, #0x8                   	// #8	// id: 239, l: 240	
	bl	 malloc	// id: 240, l: 241	
	ldr	 x2, [x19, #408]	// id: 241, l: 242	
	mov	 x1, #0x3a98                	// #15000	// id: 242, l: 243	
	ldr	 x4, [x19, #448]	// id: 243, l: 244	
	str	 xzr, [x23]	// id: 244, l: 245	
	cmp	 x2, x1	// id: 245, l: 246	
	mov	 x20, x0	// id: 246, l: 247	
	ldr	 x1, [x22]	// id: 247, l: 248	
	str	 x1, [x23]	// id: 248, l: 249	
	sub	 x5, x4, #0xf4000	// id: 249, l: 250	
	sub	 x4, x4, #0x3d0000	// id: 250, l: 251	
	str	 xzr, [x0]	// id: 251, l: 252	
	sub	 x5, x5, #0x240	// id: 252, l: 253	
	ldr	 x0, [x24]	// id: 253, l: 254	
	sub	 x4, x4, #0x900	// id: 254, l: 255	
	str	 x0, [x21]	// id: 255, l: 256	
	csel	 x5, x4, x5, gt	// id: 256, l: 257	
	cmp	 x1, #0x0	// id: 257, l: 258	
	mov	 x3, #0x0                   	// #0	// id: 258, l: 259	
	ccmp	 x5, #0x0, #0x4, gt	// id: 259, l: 260	
	ldr	 x2, [x19, #424]	// id: 260, l: 261	
	ble	 .L34	// id: 261, l: 262	
	mov	 x6, #0x1                   	// #1	// id: 262, l: 263	
	.p2align	3, , 7	// id: 263, l: 264	
.L36:	// id: 264, l: 265	
	ldr	 x4, [x22]	// id: 265, l: 266	
	cmp	 x4, x3	// id: 266, l: 267	
	ble	 .L35	// id: 267, l: 268	
	ldr	 x4, [x0, x3, lsl #3]	// id: 268, l: 269	
	add	 w1, w2, w3	// id: 269, l: 270	
	add	 x3, x3, #0x1	// id: 270, l: 271	
	str	 x3, [x20]	// id: 271, l: 272	
	str	 w1, [x4]	// id: 272, l: 273	
	add	 x1, x0, x3, lsl #3	// id: 273, l: 274	
	str	 x6, [x4, #56]	// id: 274, l: 275	
	str	 x1, [x21]	// id: 275, l: 276	
	ldr	 x4, [x23]	// id: 276, l: 277	
	cmp	 x4, x5	// id: 277, l: 278	
	csel	 x4, x4, x5, le	// id: 278, l: 279	
	cmp	 x4, x3	// id: 279, l: 280	
	bgt	 .L36	// id: 280, l: 281	
.L34:	// id: 281, l: 282	
	str	 x3, [x23]	// id: 282, l: 283	
	mov	 x2, #0xfa0                 	// #4000	// id: 283, l: 284	
	str	 x2, [x19, #640]	// id: 284, l: 285	
	mov	 x4, #0xf7cf                	// #63439	// id: 285, l: 286	
	ldr	 x0, [x19, #424]	// id: 286, l: 287	
	movk	 x4, #0xe353, lsl #16	// id: 287, l: 288	
	ldr	 x3, [x23]	// id: 288, l: 289	
	movk	 x4, #0x9ba5, lsl #32	// id: 289, l: 290	
	movk	 x4, #0x20c4, lsl #48	// id: 290, l: 291	
	add	 x3, x0, x3	// id: 291, l: 292	
	sub	 x3, x3, #0x1	// id: 292, l: 293	
	smulh	 x1, x3, x4	// id: 293, l: 294	
	asr	 x1, x1, #9	// id: 294, l: 295	
	sub	 x3, x1, x3, asr #63	// id: 295, l: 296	
	add	 x3, x3, #0x1	// id: 296, l: 297	
	str	 x3, [x19, #624]	// id: 297, l: 298	
	ldr	 x1, [x23]	// id: 298, l: 299	
	add	 x0, x0, x1	// id: 299, l: 300	
	smulh	 x4, x0, x4	// id: 300, l: 301	
	asr	 x4, x4, #9	// id: 301, l: 302	
	sub	 x4, x4, x0, asr #63	// id: 302, l: 303	
	lsl	 x1, x4, #5	// id: 303, l: 304	
	sub	 x1, x1, x4	// id: 304, l: 305	
	add	 x4, x4, x1, lsl #2	// id: 305, l: 306	
	subs	 x4, x0, x4, lsl #5	// id: 306, l: 307	
	sub	 x1, x2, x4	// id: 307, l: 308	
	sub	 x1, x3, x1	// id: 308, l: 309	
	csel	 x1, x1, x3, ne  // ne = any	// id: 309, l: 310	
	str	 x1, [x19, #632]	// id: 310, l: 311	
	tbz	 x1, #63, .L38	// id: 311, l: 312	
	mov	 x2, #0xf9f                 	// #3999	// id: 312, l: 313	
	.p2align	3, , 7	// id: 313, l: 314	
.L39:	// id: 314, l: 315	
	mov	 x0, x2	// id: 315, l: 316	
	adds	 x1, x1, x3	// id: 316, l: 317	
	sub	 x2, x2, #0x1	// id: 317, l: 318	
	bmi	 .L39	// id: 318, l: 319	
	str	 x1, [x19, #632]	// id: 319, l: 320	
	str	 x0, [x19, #640]	// id: 320, l: 321	
.L38:	// id: 321, l: 322	
	mov	 x0, x21	// id: 322, l: 323	
	bl	 free	// id: 323, l: 324	
	mov	 x0, x20	// id: 324, l: 325	
	ldp	 x19, x20, [sp, #16]	// id: 325, l: 326	
	ldp	 x21, x22, [sp, #32]	// id: 326, l: 327	
	ldp	 x23, x24, [sp, #48]	// id: 327, l: 328	
	ldp	 x29, x30, [sp], #64	// id: 328, l: 329	
	.cfi_remember_state		// id: 329, l: 330	
	.cfi_restore	30	// id: 330, l: 331	
	.cfi_restore	29	// id: 331, l: 332	
	.cfi_restore	23	// id: 332, l: 333	
	.cfi_restore	24	// id: 333, l: 334	
	.cfi_restore	21	// id: 334, l: 335	
	.cfi_restore	22	// id: 335, l: 336	
	.cfi_restore	19	// id: 336, l: 337	
	.cfi_restore	20	// id: 337, l: 338	
	.cfi_def_cfa_offset	0	// id: 338, l: 339	
	b	 free	// id: 339, l: 340	
.L35:	// id: 340, l: 341	
	.cfi_restore_state		// id: 341, l: 342	
	mov	 x0, #0x0                   	// #0	// id: 342, l: 343	
	str	 wzr, [x0]	// id: 343, l: 344	
	brk	 #0x3e8	// id: 344, l: 345	
	.cfi_endproc		// id: 345, l: 346	
.LFE28:	// id: 346, l: 347	
	.size	marc_arcs, .-marc_arcs	// id: 347, l: 348	
	.section	.rodata.str1.8, "aMS",@progbits,1	// id: 348, l: 349	
	.p2align	3, , 0	// id: 349, l: 350	
.LC0:	// id: 350, l: 351	
	.string	"network %s: not enough memory\n"	// id: 351, l: 352	
	.text	0	// id: 352, l: 353	
	.p2align	2, , 0	// id: 353, l: 354	
	.p2align	3, , 7	// id: 354, l: 355	
	.globl	resize_prob	// id: 355, l: 356	
	.type	resize_prob, %function	// id: 356, l: 357	
resize_prob:	// id: 357, l: 358	
.LFB29:	// id: 358, l: 359	
	.cfi_startproc		// id: 359, l: 360	
	stp	 x29, x30, [sp, #-32]!	// id: 360, l: 361	
	.cfi_def_cfa_offset	32	// id: 361, l: 362	
	.cfi_offset	29, -32	// id: 362, l: 363	
	.cfi_offset	30, -24	// id: 363, l: 364	
	mov	 x29, sp	// id: 364, l: 365	
	str	 x19, [sp, #16]	// id: 365, l: 366	
	.cfi_offset	19, -16	// id: 366, l: 367	
	mov	 x19, x0	// id: 367, l: 368	
	ldp	 x3, x1, [x0, #448]	// id: 368, l: 369	
	ldr	 x2, [x0, #416]	// id: 369, l: 370	
	ldr	 x0, [x0, #568]	// id: 370, l: 371	
	add	 x2, x1, x2	// id: 371, l: 372	
	add	 x3, x3, x1	// id: 372, l: 373	
	str	 x2, [x19, #416]	// id: 373, l: 374	
	add	 x1, x2, x2, lsl #3	// id: 374, l: 375	
	str	 x3, [x19, #448]	// id: 375, l: 376	
	lsl	 x1, x1, #3	// id: 376, l: 377	
	bl	 realloc	// id: 377, l: 378	
	cbz	 x0, .L56	// id: 378, l: 379	
	ldr	 x1, [x19, #424]	// id: 379, l: 380	
	ldr	 x6, [x19, #552]	// id: 380, l: 381	
	add	 x1, x1, x1, lsl #3	// id: 381, l: 382	
	ldr	 x4, [x19, #560]	// id: 382, l: 383	
	add	 x1, x0, x1, lsl #3	// id: 383, l: 384	
	str	 x1, [x19, #576]	// id: 384, l: 385	
	add	 x1, x6, #0x68	// id: 385, l: 386	
	ldr	 x5, [x19, #568]	// id: 386, l: 387	
	str	 x0, [x19, #568]	// id: 387, l: 388	
	cmp	 x1, x4	// id: 388, l: 389	
	bcs	 .L48	// id: 389, l: 390	
	.p2align	3, , 7	// id: 390, l: 391	
.L50:	// id: 391, l: 392	
	ldr	 x2, [x1, #48]	// id: 392, l: 393	
	sub	 x3, x2, x5	// id: 393, l: 394	
	cbz	 x2, .L49	// id: 394, l: 395	
	ldr	 x0, [x1, #24]	// id: 395, l: 396	
	cmp	 x0, x6	// id: 396, l: 397	
	beq	 .L49	// id: 397, l: 398	
	ldr	 x0, [x19, #568]	// id: 398, l: 399	
	add	 x0, x0, x3	// id: 399, l: 400	
	str	 x0, [x1, #48]	// id: 400, l: 401	
.L49:	// id: 401, l: 402	
	add	 x1, x1, #0x68	// id: 402, l: 403	
	cmp	 x4, x1	// id: 403, l: 404	
	bhi	 .L50	// id: 404, l: 405	
.L48:	// id: 405, l: 406	
	ldr	 x1, [x19, #416]	// id: 406, l: 407	
	ldr	 x0, [x19, #584]	// id: 407, l: 408	
	add	 x1, x1, x1, lsl #3	// id: 408, l: 409	
	lsl	 x1, x1, #3	// id: 409, l: 410	
	bl	 realloc	// id: 410, l: 411	
	mov	 x1, x0	// id: 411, l: 412	
	mov	 x0, #0x0                   	// #0	// id: 412, l: 413	
	str	 x1, [x19, #584]	// id: 413, l: 414	
.L45:	// id: 414, l: 415	
	ldr	 x19, [sp, #16]	// id: 415, l: 416	
	ldp	 x29, x30, [sp], #32	// id: 416, l: 417	
	.cfi_remember_state		// id: 417, l: 418	
	.cfi_restore	30	// id: 418, l: 419	
	.cfi_restore	29	// id: 419, l: 420	
	.cfi_restore	19	// id: 420, l: 421	
	.cfi_def_cfa_offset	0	// id: 421, l: 422	
	ret		// id: 422, l: 423	
.L56:	// id: 423, l: 424	
	.cfi_restore_state		// id: 424, l: 425	
	mov	 x1, x19	// id: 425, l: 426	
	adrp	 x0, .LC0	// id: 426, l: 427	
	add	 x0, x0, :lo12:.LC0	// id: 427, l: 428	
	bl	 printf	// id: 428, l: 429	
	adrp	 x0, stdout	// id: 429, l: 430	
	ldr	 x0, [x0,:lo12:stdout]	// id: 430, l: 431	
	bl	 fflush	// id: 431, l: 432	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 432, l: 433	
	b	 .L45	// id: 433, l: 434	
	.cfi_endproc		// id: 434, l: 435	
.LFE29:	// id: 435, l: 436	
	.size	resize_prob, .-resize_prob	// id: 436, l: 437	
	.p2align	2, , 0	// id: 437, l: 438	
	.p2align	3, , 7	// id: 438, l: 439	
	.globl	insert_new_arc	// id: 439, l: 440	
	.type	insert_new_arc, %function	// id: 440, l: 441	
insert_new_arc:	// id: 441, l: 442	
.LFB30:	// id: 442, l: 443	
	.cfi_startproc		// id: 443, l: 444	
	add	 x9, x1, x1, lsl #3	// id: 444, l: 445	
	add	 x6, x1, #0x1	// id: 445, l: 446	
	mov	 w11, w7	// id: 446, l: 447	
	lsl	 x9, x9, #3	// id: 447, l: 448	
	add	 x8, x0, x9	// id: 448, l: 449	
	stp	 x4, x2, [x8, #8]	// id: 449, l: 450	
	str	 x3, [x8, #24]	// id: 450, l: 451	
	stp	 x5, x4, [x8, #56]	// id: 451, l: 452	
	str	 w7, [x0, x9]	// id: 452, l: 453	
	cbnz	 x1, .L58	// id: 453, l: 454	
	b	 .L57	// id: 454, l: 455	
	.p2align	2, , 3	// id: 455, l: 456	
.L60:	// id: 456, l: 457	
	ldr	 x10, [x1, #16]	// id: 457, l: 458	
	str	 x10, [x9, #16]	// id: 458, l: 459	
	cmp	 x6, #0x1	// id: 459, l: 460	
	ldr	 x10, [x1, #24]	// id: 460, l: 461	
	str	 x10, [x9, #24]	// id: 461, l: 462	
	ldr	 x10, [x1, #8]	// id: 462, l: 463	
	str	 x10, [x9, #8]	// id: 463, l: 464	
	str	 x10, [x9, #64]	// id: 464, l: 465	
	ldr	 x10, [x1, #56]	// id: 465, l: 466	
	str	 x10, [x9, #56]	// id: 466, l: 467	
	ldr	 w9, [x0, x7]	// id: 467, l: 468	
	str	 w9, [x0, x8]	// id: 468, l: 469	
	stp	 x4, x2, [x1, #8]	// id: 469, l: 470	
	str	 x3, [x1, #24]	// id: 470, l: 471	
	stp	 x5, x4, [x1, #56]	// id: 471, l: 472	
	str	 w11, [x0, x7]	// id: 472, l: 473	
	beq	 .L57	// id: 473, l: 474	
.L58:	// id: 474, l: 475	
	add	 x1, x6, x6, lsr #63	// id: 475, l: 476	
	add	 x8, x6, x6, lsl #3	// id: 476, l: 477	
	asr	 x6, x1, #1	// id: 477, l: 478	
	lsl	 x8, x8, #3	// id: 478, l: 479	
	sub	 x8, x8, #0x48	// id: 479, l: 480	
	add	 x7, x6, x6, lsl #3	// id: 480, l: 481	
	add	 x9, x0, x8	// id: 481, l: 482	
	lsl	 x7, x7, #3	// id: 482, l: 483	
	sub	 x7, x7, #0x48	// id: 483, l: 484	
	add	 x1, x0, x7	// id: 484, l: 485	
	ldr	 x10, [x1, #56]	// id: 485, l: 486	
	cmp	 x10, x5	// id: 486, l: 487	
	blt	 .L60	// id: 487, l: 488	
.L57:	// id: 488, l: 489	
	ret		// id: 489, l: 490	
	.cfi_endproc		// id: 490, l: 491	
.LFE30:	// id: 491, l: 492	
	.size	insert_new_arc, .-insert_new_arc	// id: 492, l: 493	
	.p2align	2, , 0	// id: 493, l: 494	
	.p2align	3, , 7	// id: 494, l: 495	
	.globl	replace_weaker_arc	// id: 495, l: 496	
	.type	replace_weaker_arc, %function	// id: 496, l: 497	
replace_weaker_arc:	// id: 497, l: 498	
.LFB31:	// id: 498, l: 499	
	.cfi_startproc		// id: 499, l: 500	
	mov	 x9, x0	// id: 500, l: 501	
	stp	 x3, x1, [x0, #8]	// id: 501, l: 502	
	mov	 x7, #0x2                   	// #2	// id: 502, l: 503	
	str	 x2, [x0, #24]	// id: 503, l: 504	
	mov	 x11, #0x3                   	// #3	// id: 504, l: 505	
	stp	 x4, x3, [x0, #56]	// id: 505, l: 506	
	mov	 x8, #0x48                  	// #72	// id: 506, l: 507	
	mov	 x12, #0x90                  	// #144	// id: 507, l: 508	
	str	 w6, [x9], #72	// id: 508, l: 509	
	ldr	 x10, [x9, #56]	// id: 509, l: 510	
	ldr	 x9, [x0, #200]	// id: 510, l: 511	
	cmp	 x10, x9	// id: 511, l: 512	
	csel	 x7, x7, x11, gt	// id: 512, l: 513	
	csel	 x8, x8, x12, gt	// id: 513, l: 514	
	cmp	 x7, x5	// id: 514, l: 515	
	bgt	 .L65	// id: 515, l: 516	
	add	 x8, x0, x8	// id: 516, l: 517	
	mov	 x13, #0x1                   	// #1	// id: 517, l: 518	
	ldr	 x9, [x8, #56]	// id: 518, l: 519	
	.p2align	3, , 7	// id: 519, l: 520	
.L68:	// id: 520, l: 521	
	add	 x10, x13, x13, lsl #3	// id: 521, l: 522	
	add	 x8, x7, x7, lsl #3	// id: 522, l: 523	
	cmp	 x4, x9	// id: 523, l: 524	
	lsl	 x10, x10, #3	// id: 524, l: 525	
	mov	 x13, x7	// id: 525, l: 526	
	lsl	 x8, x8, #3	// id: 526, l: 527	
	sub	 x10, x10, #0x48	// id: 527, l: 528	
	sub	 x8, x8, #0x48	// id: 528, l: 529	
	add	 x11, x0, x10	// id: 529, l: 530	
	add	 x9, x0, x8	// id: 530, l: 531	
	bge	 .L65	// id: 531, l: 532	
	ldr	 x14, [x9, #16]	// id: 532, l: 533	
	str	 x14, [x11, #16]	// id: 533, l: 534	
	lsl	 x12, x7, #1	// id: 534, l: 535	
	cmp	 x5, x7, lsl #1	// id: 535, l: 536	
	ldr	 x14, [x9, #24]	// id: 536, l: 537	
	str	 x14, [x11, #24]	// id: 537, l: 538	
	add	 x7, x12, x7, lsl #4	// id: 538, l: 539	
	ldr	 x14, [x9, #8]	// id: 539, l: 540	
	str	 x14, [x11, #8]	// id: 540, l: 541	
	str	 x14, [x11, #64]	// id: 541, l: 542	
	add	 x7, x0, x7, lsl #3	// id: 542, l: 543	
	ldr	 x14, [x9, #56]	// id: 543, l: 544	
	str	 x14, [x11, #56]	// id: 544, l: 545	
	ldr	 w11, [x0, x8]	// id: 545, l: 546	
	str	 w11, [x0, x10]	// id: 546, l: 547	
	stp	 x3, x1, [x9, #8]	// id: 547, l: 548	
	str	 x2, [x9, #24]	// id: 548, l: 549	
	stp	 x4, x3, [x9, #56]	// id: 549, l: 550	
	str	 w6, [x0, x8]	// id: 550, l: 551	
	ble	 .L69	// id: 551, l: 552	
	ldr	 x9, [x7, #-16]	// id: 552, l: 553	
	ldr	 x7, [x7, #56]	// id: 553, l: 554	
	cmp	 x9, x7	// id: 554, l: 555	
	bge	 .L70	// id: 555, l: 556	
	add	 x12, x12, #0x1	// id: 556, l: 557	
.L69:	// id: 557, l: 558	
	cmp	 x12, x5	// id: 558, l: 559	
	bgt	 .L65	// id: 559, l: 560	
	add	 x7, x12, x12, lsl #3	// id: 560, l: 561	
	add	 x7, x0, x7, lsl #3	// id: 561, l: 562	
	ldr	 x9, [x7, #-16]	// id: 562, l: 563	
.L70:	// id: 563, l: 564	
	mov	 x7, x12	// id: 564, l: 565	
	b	 .L68	// id: 565, l: 566	
	.p2align	2, , 3	// id: 566, l: 567	
.L65:	// id: 567, l: 568	
	ret		// id: 568, l: 569	
	.cfi_endproc		// id: 569, l: 570	
.LFE31:	// id: 570, l: 571	
	.size	replace_weaker_arc, .-replace_weaker_arc	// id: 571, l: 572	
	.p2align	2, , 0	// id: 572, l: 573	
	.p2align	3, , 7	// id: 573, l: 574	
	.type	switch_arcs.constprop.0, %function	// id: 574, l: 575	
switch_arcs.constprop.0:	// id: 575, l: 576	
.LFB36:	// id: 576, l: 577	
	.cfi_startproc		// id: 577, l: 578	
	stp	 x29, x30, [sp, #-48]!	// id: 578, l: 579	
	.cfi_def_cfa_offset	48	// id: 579, l: 580	
	.cfi_offset	29, -48	// id: 580, l: 581	
	.cfi_offset	30, -40	// id: 581, l: 582	
	mov	 x29, sp	// id: 582, l: 583	
	stp	 x19, x20, [sp, #16]	// id: 583, l: 584	
	stp	 x21, x22, [sp, #32]	// id: 584, l: 585	
	.cfi_offset	19, -32	// id: 585, l: 586	
	.cfi_offset	20, -24	// id: 586, l: 587	
	.cfi_offset	21, -16	// id: 587, l: 588	
	.cfi_offset	22, -8	// id: 588, l: 589	
	ldr	 x19, [x0]	// id: 589, l: 590	
	cmp	 x19, x4	// id: 590, l: 591	
	csel	 x19, x19, x4, le	// id: 591, l: 592	
	cmp	 x19, #0x0	// id: 592, l: 593	
	ble	 .L81	// id: 593, l: 594	
	mov	 x20, x1	// id: 594, l: 595	
	mov	 x18, x2	// id: 595, l: 596	
	mov	 x21, x3	// id: 596, l: 597	
	mov	 x22, #0x0                   	// #0	// id: 597, l: 598	
	mov	 x15, #0x0                   	// #0	// id: 598, l: 599	
	b	 .L77	// id: 599, l: 600	
	.p2align	2, , 3	// id: 600, l: 601	
.L78:	// id: 601, l: 602	
	beq	 .L84	// id: 602, l: 603	
.L79:	// id: 603, l: 604	
	add	 x15, x15, #0x1	// id: 604, l: 605	
	cmp	 x19, x15	// id: 605, l: 606	
	beq	 .L74	// id: 606, l: 607	
.L77:	// id: 607, l: 608	
	add	 x6, x15, x15, lsl #3	// id: 608, l: 609	
	ldr	 x2, [x20]	// id: 609, l: 610	
	lsl	 x6, x6, #3	// id: 610, l: 611	
	add	 x7, x2, x6	// id: 611, l: 612	
	ldrsh	 w0, [x7, #32]	// id: 612, l: 613	
	cbnz	 w0, .L79	// id: 613, l: 614	
	ldr	 x4, [x7, #56]	// id: 614, l: 615	
	mov	 x5, x21	// id: 615, l: 616	
	ldr	 x1, [x18, #56]	// id: 616, l: 617	
	mov	 x0, x18	// id: 617, l: 618	
	cmp	 x4, x1	// id: 618, l: 619	
	bge	 .L78	// id: 619, l: 620	
	ldr	 w6, [x2, x6]	// id: 620, l: 621	
.L80:	// id: 621, l: 622	
	ldp	 x8, x9, [x18]	// id: 622, l: 623	
	sxtw	 x6, w6	// id: 623, l: 624	
	ldp	 x3, x1, [x7, #8]	// id: 624, l: 625	
	stp	 x8, x9, [x7]	// id: 625, l: 626	
	add	 x22, x22, #0x1	// id: 626, l: 627	
	ldp	 x8, x9, [x18, #16]	// id: 627, l: 628	
	ldr	 x2, [x7, #24]	// id: 628, l: 629	
	stp	 x8, x9, [x7, #16]	// id: 629, l: 630	
	ldp	 x8, x9, [x18, #32]	// id: 630, l: 631	
	stp	 x8, x9, [x7, #32]	// id: 631, l: 632	
	ldp	 x8, x9, [x18, #48]	// id: 632, l: 633	
	stp	 x8, x9, [x7, #48]	// id: 633, l: 634	
	ldr	 x8, [x18, #64]	// id: 634, l: 635	
	str	 x8, [x7, #64]	// id: 635, l: 636	
	bl	 replace_weaker_arc	// id: 636, l: 637	
	add	 x15, x15, #0x1	// id: 637, l: 638	
	cmp	 x19, x15	// id: 638, l: 639	
	bne	 .L77	// id: 639, l: 640	
.L74:	// id: 640, l: 641	
	mov	 x0, x22	// id: 641, l: 642	
	ldp	 x19, x20, [sp, #16]	// id: 642, l: 643	
	ldp	 x21, x22, [sp, #32]	// id: 643, l: 644	
	ldp	 x29, x30, [sp], #48	// id: 644, l: 645	
	.cfi_remember_state		// id: 645, l: 646	
	.cfi_restore	30	// id: 646, l: 647	
	.cfi_restore	29	// id: 647, l: 648	
	.cfi_restore	21	// id: 648, l: 649	
	.cfi_restore	22	// id: 649, l: 650	
	.cfi_restore	19	// id: 650, l: 651	
	.cfi_restore	20	// id: 651, l: 652	
	.cfi_def_cfa_offset	0	// id: 652, l: 653	
	ret		// id: 653, l: 654	
	.p2align	2, , 3	// id: 654, l: 655	
.L84:	// id: 655, l: 656	
	.cfi_restore_state		// id: 656, l: 657	
	ldr	 w6, [x2, x6]	// id: 657, l: 658	
	ldr	 w1, [x18]	// id: 658, l: 659	
	cmp	 w6, w1	// id: 659, l: 660	
	blt	 .L80	// id: 660, l: 661	
	b	 .L79	// id: 661, l: 662	
.L81:	// id: 662, l: 663	
	mov	 x22, #0x0                   	// #0	// id: 663, l: 664	
	mov	 x0, x22	// id: 664, l: 665	
	ldp	 x19, x20, [sp, #16]	// id: 665, l: 666	
	ldp	 x21, x22, [sp, #32]	// id: 666, l: 667	
	ldp	 x29, x30, [sp], #48	// id: 667, l: 668	
	.cfi_restore	30	// id: 668, l: 669	
	.cfi_restore	29	// id: 669, l: 670	
	.cfi_restore	21	// id: 670, l: 671	
	.cfi_restore	22	// id: 671, l: 672	
	.cfi_restore	19	// id: 672, l: 673	
	.cfi_restore	20	// id: 673, l: 674	
	.cfi_def_cfa_offset	0	// id: 674, l: 675	
	ret		// id: 675, l: 676	
	.cfi_endproc		// id: 676, l: 677	
.LFE36:	// id: 677, l: 678	
	.size	switch_arcs.constprop.0, .-switch_arcs.constprop.0	// id: 678, l: 679	
	.p2align	2, , 0	// id: 679, l: 680	
	.p2align	3, , 7	// id: 680, l: 681	
	.globl	calculate_max_redcost	// id: 681, l: 682	
	.type	calculate_max_redcost, %function	// id: 682, l: 683	
calculate_max_redcost:	// id: 683, l: 684	
.LFB32:	// id: 684, l: 685	
	.cfi_startproc		// id: 685, l: 686	
	str	 xzr, [x1]	// id: 686, l: 687	
	cmp	 x3, #0x0	// id: 687, l: 688	
	ble	 .L85	// id: 688, l: 689	
	add	 x3, x2, x3, lsl #3	// id: 689, l: 690	
	mov	 x4, #0x0                   	// #0	// id: 690, l: 691	
	.p2align	3, , 7	// id: 691, l: 692	
.L88:	// id: 692, l: 693	
	ldr	 x0, [x2]	// id: 693, l: 694	
	add	 x2, x2, #0x8	// id: 694, l: 695	
	ldr	 x0, [x0]	// id: 695, l: 696	
	ldr	 x0, [x0, #56]	// id: 696, l: 697	
	cmp	 x0, x4	// id: 697, l: 698	
	ble	 .L87	// id: 698, l: 699	
	mov	 x4, x0	// id: 699, l: 700	
	str	 x0, [x1]	// id: 700, l: 701	
.L87:	// id: 701, l: 702	
	cmp	 x3, x2	// id: 702, l: 703	
	bne	 .L88	// id: 703, l: 704	
.L85:	// id: 704, l: 705	
	ret		// id: 705, l: 706	
	.cfi_endproc		// id: 706, l: 707	
.LFE32:	// id: 707, l: 708	
	.size	calculate_max_redcost, .-calculate_max_redcost	// id: 708, l: 709	
	.p2align	2, , 0	// id: 709, l: 710	
	.p2align	3, , 7	// id: 710, l: 711	
	.globl	switch_arcs	// id: 711, l: 712	
	.type	switch_arcs, %function	// id: 712, l: 713	
switch_arcs:	// id: 713, l: 714	
.LFB33:	// id: 714, l: 715	
	.cfi_startproc		// id: 715, l: 716	
	stp	 x29, x30, [sp, #-96]!	// id: 716, l: 717	
	.cfi_def_cfa_offset	96	// id: 717, l: 718	
	.cfi_offset	29, -96	// id: 718, l: 719	
	.cfi_offset	30, -88	// id: 719, l: 720	
	cmp	 x7, #0x0	// id: 720, l: 721	
	mov	 x29, sp	// id: 721, l: 722	
	str	 x27, [sp, #80]	// id: 722, l: 723	
	.cfi_offset	27, -16	// id: 723, l: 724	
	ble	 .L99	// id: 724, l: 725	
	mov	 x18, x7	// id: 725, l: 726	
	mov	 x0, x3	// id: 726, l: 727	
	stp	 x19, x20, [sp, #16]	// id: 727, l: 728	
	.cfi_offset	20, -72	// id: 728, l: 729	
	.cfi_offset	19, -80	// id: 729, l: 730	
	mov	 x20, x6	// id: 730, l: 731	
	mov	 x27, #0x0                   	// #0	// id: 731, l: 732	
	stp	 x21, x22, [sp, #32]	// id: 732, l: 733	
	.cfi_offset	22, -56	// id: 733, l: 734	
	.cfi_offset	21, -64	// id: 734, l: 735	
	mov	 x21, x1	// id: 735, l: 736	
	mov	 x22, x2	// id: 736, l: 737	
	stp	 x25, x26, [sp, #64]	// id: 737, l: 738	
	.cfi_offset	26, -24	// id: 738, l: 739	
	.cfi_offset	25, -32	// id: 739, l: 740	
	sxtw	 x26, w4	// id: 740, l: 741	
	mov	 x19, #0x0                   	// #0	// id: 741, l: 742	
	stp	 x23, x24, [sp, #48]	// id: 742, l: 743	
	.cfi_offset	24, -40	// id: 743, l: 744	
	.cfi_offset	23, -48	// id: 744, l: 745	
	.p2align	3, , 7	// id: 745, l: 746	
.L98:	// id: 746, l: 747	
	lsl	 x25, x26, #3	// id: 747, l: 748	
	ldr	 x24, [x21, x26, lsl #3]	// id: 748, l: 749	
	cmp	 x24, x20	// id: 749, l: 750	
	csel	 x24, x24, x20, le	// id: 750, l: 751	
	cmp	 x24, #0x0	// id: 751, l: 752	
	ble	 .L93	// id: 752, l: 753	
	add	 x25, x22, x25	// id: 753, l: 754	
	mov	 x23, #0x0                   	// #0	// id: 754, l: 755	
	mov	 x15, #0x0                   	// #0	// id: 755, l: 756	
	b	 .L97	// id: 756, l: 757	
	.p2align	2, , 3	// id: 757, l: 758	
.L95:	// id: 758, l: 759	
	beq	 .L103	// id: 759, l: 760	
.L94:	// id: 760, l: 761	
	add	 x15, x15, #0x1	// id: 761, l: 762	
	add	 x23, x23, #0x48	// id: 762, l: 763	
	cmp	 x24, x15	// id: 763, l: 764	
	beq	 .L93	// id: 764, l: 765	
.L97:	// id: 765, l: 766	
	ldr	 x8, [x25]	// id: 766, l: 767	
	add	 x8, x8, x23	// id: 767, l: 768	
	ldrsh	 w1, [x8, #32]	// id: 768, l: 769	
	cbnz	 w1, .L94	// id: 769, l: 770	
	ldr	 x1, [x0, #56]	// id: 770, l: 771	
	ldr	 x4, [x8, #56]	// id: 771, l: 772	
	cmp	 x4, x1	// id: 772, l: 773	
	bge	 .L95	// id: 773, l: 774	
	ldr	 w6, [x8]	// id: 774, l: 775	
.L96:	// id: 775, l: 776	
	ldp	 x10, x11, [x0]	// id: 776, l: 777	
	sxtw	 x6, w6	// id: 777, l: 778	
	ldp	 x3, x1, [x8, #8]	// id: 778, l: 779	
	stp	 x10, x11, [x8]	// id: 779, l: 780	
	add	 x27, x27, #0x1	// id: 780, l: 781	
	ldp	 x10, x11, [x0, #16]	// id: 781, l: 782	
	add	 x23, x23, #0x48	// id: 782, l: 783	
	ldr	 x2, [x8, #24]	// id: 783, l: 784	
	stp	 x10, x11, [x8, #16]	// id: 784, l: 785	
	ldp	 x10, x11, [x0, #32]	// id: 785, l: 786	
	stp	 x10, x11, [x8, #32]	// id: 786, l: 787	
	ldp	 x10, x11, [x0, #48]	// id: 787, l: 788	
	stp	 x10, x11, [x8, #48]	// id: 788, l: 789	
	ldr	 x7, [x0, #64]	// id: 789, l: 790	
	str	 x7, [x8, #64]	// id: 790, l: 791	
	bl	 replace_weaker_arc	// id: 791, l: 792	
	add	 x15, x15, #0x1	// id: 792, l: 793	
	cmp	 x24, x15	// id: 793, l: 794	
	bne	 .L97	// id: 794, l: 795	
	.p2align	3, , 7	// id: 795, l: 796	
.L93:	// id: 796, l: 797	
	add	 x26, x26, #0x1	// id: 797, l: 798	
	add	 x19, x19, #0x1	// id: 798, l: 799	
	cmp	 x18, x19	// id: 799, l: 800	
	sdiv	 x1, x26, x18	// id: 800, l: 801	
	msub	 x26, x1, x18, x26	// id: 801, l: 802	
	bne	 .L98	// id: 802, l: 803	
	mov	 x0, x27	// id: 803, l: 804	
	ldp	 x19, x20, [sp, #16]	// id: 804, l: 805	
	.cfi_remember_state		// id: 805, l: 806	
	.cfi_restore	20	// id: 806, l: 807	
	.cfi_restore	19	// id: 807, l: 808	
	ldp	 x21, x22, [sp, #32]	// id: 808, l: 809	
	.cfi_restore	22	// id: 809, l: 810	
	.cfi_restore	21	// id: 810, l: 811	
	ldp	 x23, x24, [sp, #48]	// id: 811, l: 812	
	.cfi_restore	24	// id: 812, l: 813	
	.cfi_restore	23	// id: 813, l: 814	
	ldp	 x25, x26, [sp, #64]	// id: 814, l: 815	
	.cfi_restore	26	// id: 815, l: 816	
	.cfi_restore	25	// id: 816, l: 817	
	ldr	 x27, [sp, #80]	// id: 817, l: 818	
	ldp	 x29, x30, [sp], #96	// id: 818, l: 819	
	.cfi_restore	30	// id: 819, l: 820	
	.cfi_restore	29	// id: 820, l: 821	
	.cfi_restore	27	// id: 821, l: 822	
	.cfi_def_cfa_offset	0	// id: 822, l: 823	
	ret		// id: 823, l: 824	
	.p2align	2, , 3	// id: 824, l: 825	
.L103:	// id: 825, l: 826	
	.cfi_restore_state		// id: 826, l: 827	
	ldr	 w1, [x0]	// id: 827, l: 828	
	ldr	 w6, [x8]	// id: 828, l: 829	
	cmp	 w6, w1	// id: 829, l: 830	
	bge	 .L94	// id: 830, l: 831	
	b	 .L96	// id: 831, l: 832	
.L99:	// id: 832, l: 833	
	.cfi_restore	19	// id: 833, l: 834	
	.cfi_restore	20	// id: 834, l: 835	
	.cfi_restore	21	// id: 835, l: 836	
	.cfi_restore	22	// id: 836, l: 837	
	.cfi_restore	23	// id: 837, l: 838	
	.cfi_restore	24	// id: 838, l: 839	
	.cfi_restore	25	// id: 839, l: 840	
	.cfi_restore	26	// id: 840, l: 841	
	mov	 x27, #0x0                   	// #0	// id: 841, l: 842	
	mov	 x0, x27	// id: 842, l: 843	
	ldr	 x27, [sp, #80]	// id: 843, l: 844	
	ldp	 x29, x30, [sp], #96	// id: 844, l: 845	
	.cfi_restore	30	// id: 845, l: 846	
	.cfi_restore	29	// id: 846, l: 847	
	.cfi_restore	27	// id: 847, l: 848	
	.cfi_def_cfa_offset	0	// id: 848, l: 849	
	ret		// id: 849, l: 850	
	.cfi_endproc		// id: 850, l: 851	
.LFE33:	// id: 851, l: 852	
	.size	switch_arcs, .-switch_arcs	// id: 852, l: 853	
	.p2align	2, , 0	// id: 853, l: 854	
	.p2align	3, , 7	// id: 854, l: 855	
	.globl	price_out_impl	// id: 855, l: 856	
	.type	price_out_impl, %function	// id: 856, l: 857	
price_out_impl:	// id: 857, l: 858	
.LFB34:	// id: 858, l: 859	
	.cfi_startproc		// id: 859, l: 860	
	stp	 x29, x30, [sp, #-208]!	// id: 860, l: 861	
	.cfi_def_cfa_offset	208	// id: 861, l: 862	
	.cfi_offset	29, -208	// id: 862, l: 863	
	.cfi_offset	30, -200	// id: 863, l: 864	
	mov	 x29, sp	// id: 864, l: 865	
	stp	 x19, x20, [sp, #16]	// id: 865, l: 866	
	.cfi_offset	19, -192	// id: 866, l: 867	
	.cfi_offset	20, -184	// id: 867, l: 868	
	mov	 x19, x0	// id: 868, l: 869	
	mov	 x0, #0x8                   	// #8	// id: 869, l: 870	
	stp	 x21, x22, [sp, #32]	// id: 870, l: 871	
	stp	 x23, x24, [sp, #48]	// id: 871, l: 872	
	stp	 x27, x28, [sp, #80]	// id: 872, l: 873	
	str	 xzr, [sp, #200]	// id: 873, l: 874	
	.cfi_offset	21, -176	// id: 874, l: 875	
	.cfi_offset	22, -168	// id: 875, l: 876	
	.cfi_offset	23, -160	// id: 876, l: 877	
	.cfi_offset	24, -152	// id: 877, l: 878	
	.cfi_offset	27, -128	// id: 878, l: 879	
	.cfi_offset	28, -120	// id: 879, l: 880	
	ldr	 x22, [x19, #528]	// id: 880, l: 881	
	bl	 malloc	// id: 881, l: 882	
	mov	 x21, x0	// id: 882, l: 883	
	mov	 x0, #0x8                   	// #8	// id: 883, l: 884	
	bl	 malloc	// id: 884, l: 885	
	mov	 x20, x0	// id: 885, l: 886	
	mov	 x0, #0x8                   	// #8	// id: 886, l: 887	
	bl	 malloc	// id: 887, l: 888	
	mov	 x27, x0	// id: 888, l: 889	
	mov	 x0, #0x8                   	// #8	// id: 889, l: 890	
	str	 x27, [sp, #160]	// id: 890, l: 891	
	bl	 malloc	// id: 891, l: 892	
	sub	 x1, x22, #0xf	// id: 892, l: 893	
	stp	 x0, x1, [sp, #136]	// id: 893, l: 894	
	mov	 x2, #0x3a98                	// #15000	// id: 894, l: 895	
	ldr	 x3, [x19, #408]	// id: 895, l: 896	
	str	 x3, [sp, #120]	// id: 896, l: 897	
	ldr	 x1, [x19, #424]	// id: 897, l: 898	
	cmp	 x3, x2	// id: 898, l: 899	
	ldr	 x0, [x19, #456]	// id: 899, l: 900	
	ldr	 x2, [x19, #416]	// id: 900, l: 901	
	add	 x0, x1, x0	// id: 901, l: 902	
	bgt	 .L105	// id: 902, l: 903	
	cmp	 x0, x2	// id: 903, l: 904	
	ble	 .L146	// id: 904, l: 905	
	mul	 x0, x3, x3	// id: 905, l: 906	
	mov	 x3, #0x3e8                 	// #1000	// id: 906, l: 907	
	str	 x3, [sp, #168]	// id: 907, l: 908	
	str	 xzr, [sp, #184]	// id: 908, l: 909	
	add	 x0, x0, x0, lsr #63	// id: 909, l: 910	
	add	 x1, x1, x0, asr #1	// id: 910, l: 911	
	cmp	 x1, x2	// id: 911, l: 912	
	ble	 .L106	// id: 912, l: 913	
.L109:	// id: 913, l: 914	
	mov	 x0, x19	// id: 914, l: 915	
	bl	 resize_prob	// id: 915, l: 916	
	cbnz	 x0, .L110	// id: 916, l: 917	
	mov	 x0, x19	// id: 917, l: 918	
	adrp	 x1, getOriginalArcPosition	// id: 918, l: 919	
	add	 x1, x1, :lo12:getOriginalArcPosition	// id: 919, l: 920	
	bl	 refresh_neighbour_lists	// id: 920, l: 921	
	ldr	 x0, [x19, #408]	// id: 921, l: 922	
	mov	 x1, #0x3a98                	// #15000	// id: 922, l: 923	
	mov	 x24, #0x3e8                 	// #1000	// id: 923, l: 924	
	mov	 x2, x0	// id: 924, l: 925	
	mov	 x0, #0x7d0                 	// #2000	// id: 925, l: 926	
	cmp	 x2, x1	// id: 926, l: 927	
	mov	 x1, #0x1                   	// #1	// id: 927, l: 928	
	csel	 x0, x24, x0, le	// id: 928, l: 929	
	str	 x2, [sp, #120]	// id: 929, l: 930	
	str	 x0, [sp, #168]	// id: 930, l: 931	
	str	 x1, [sp, #184]	// id: 931, l: 932	
	b	 .L106	// id: 932, l: 933	
	.p2align	2, , 3	// id: 933, l: 934	
.L105:	// id: 934, l: 935	
	cmp	 x0, x2	// id: 935, l: 936	
	bgt	 .L184	// id: 936, l: 937	
.L149:	// id: 937, l: 938	
	mov	 x0, #0x7d0                 	// #2000	// id: 938, l: 939	
	str	 x0, [sp, #168]	// id: 939, l: 940	
	str	 xzr, [sp, #184]	// id: 940, l: 941	
.L106:	// id: 941, l: 942	
	ldr	 x0, [x19, #584]	// id: 942, l: 943	
	str	 x0, [sp, #176]	// id: 943, l: 944	
	cbz	 x0, .L110	// id: 944, l: 945	
	ldr	 x2, [sp, #136]	// id: 945, l: 946	
	stp	 x25, x26, [sp, #64]	// id: 946, l: 947	
	.cfi_offset	26, -136	// id: 947, l: 948	
	.cfi_offset	25, -144	// id: 948, l: 949	
	mov	 x1, #0x8                   	// #8	// id: 949, l: 950	
	ldr	 x22, [x19, #448]	// id: 950, l: 951	
	str	 x0, [x2]	// id: 951, l: 952	
	ldr	 x2, [x19, #416]	// id: 952, l: 953	
	str	 xzr, [x20]	// id: 953, l: 954	
	str	 xzr, [x21]	// id: 954, l: 955	
	mov	 x0, x22	// id: 955, l: 956	
	str	 x2, [sp, #112]	// id: 956, l: 957	
	ldr	 x24, [x19, #576]	// id: 957, l: 958	
	bl	 calloc	// id: 958, l: 959	
	ldr	 x4, [sp, #160]	// id: 959, l: 960	
	cmp	 x22, #0x0	// id: 960, l: 961	
	str	 x0, [x4]	// id: 961, l: 962	
	ble	 .L111	// id: 962, l: 963	
	str	 x24, [x0]	// id: 963, l: 964	
	cmp	 x22, #0x1	// id: 964, l: 965	
	beq	 .L111	// id: 965, l: 966	
	add	 x1, x24, #0x48	// id: 966, l: 967	
	lsl	 x3, x22, #3	// id: 967, l: 968	
	mov	 x0, #0x8                   	// #8	// id: 968, l: 969	
	.p2align	3, , 7	// id: 969, l: 970	
.L112:	// id: 970, l: 971	
	ldr	 x2, [x4]	// id: 971, l: 972	
	str	 x1, [x2, x0]	// id: 972, l: 973	
	add	 x0, x0, #0x8	// id: 973, l: 974	
	cmp	 x3, x0	// id: 974, l: 975	
	add	 x1, x1, #0x48	// id: 975, l: 976	
	bne	 .L112	// id: 976, l: 977	
.L111:	// id: 977, l: 978	
	ldr	 x0, [sp, #120]	// id: 978, l: 979	
	mov	 x25, #0x0                   	// #0	// id: 979, l: 980	
	ldr	 x23, [x19, #568]	// id: 980, l: 981	
	mov	 x1, x0	// id: 981, l: 982	
	cmp	 x0, #0x0	// id: 982, l: 983	
	bgt	 .L113	// id: 983, l: 984	
	b	 .L114	// id: 984, l: 985	
	.p2align	2, , 3	// id: 985, l: 986	
.L115:	// id: 986, l: 987	
	add	 x25, x25, #0x1	// id: 987, l: 988	
	add	 x23, x23, #0xd8	// id: 988, l: 989	
	cmp	 x1, x25	// id: 989, l: 990	
	beq	 .L114	// id: 990, l: 991	
.L113:	// id: 991, l: 992	
	ldrsh	 w0, [x23, #104]	// id: 992, l: 993	
	cmn	 w0, #0x1	// id: 993, l: 994	
	beq	 .L115	// id: 994, l: 995	
	ldr	 x0, [sp, #120]	// id: 995, l: 996	
	cmp	 x0, x25	// id: 996, l: 997	
	ble	 .L114	// id: 997, l: 998	
	str	 x19, [sp, #152]	// id: 998, l: 999	
	mov	 x19, x20	// id: 999, l: 1000	
	mov	 x20, x25	// id: 1000, l: 1001	
	mov	 x25, x23	// id: 1001, l: 1002	
	ldr	 x23, [sp, #168]	// id: 1002, l: 1003	
	mov	 w0, #0x1                   	// #1	// id: 1003, l: 1004	
	mov	 x28, #0x0                   	// #0	// id: 1004, l: 1005	
	mov	 x27, #0x0                   	// #0	// id: 1005, l: 1006	
	mov	 x26, #0x1e                  	// #30	// id: 1006, l: 1007	
	str	 xzr, [sp, #96]	// id: 1007, l: 1008	
	str	 w0, [sp, #108]	// id: 1008, l: 1009	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 1009, l: 1010	
	str	 x0, [sp, #128]	// id: 1010, l: 1011	
	.p2align	3, , 7	// id: 1011, l: 1012	
.L128:	// id: 1012, l: 1013	
	sdiv	 x0, x20, x23	// id: 1013, l: 1014	
	ldr	 w1, [sp, #108]	// id: 1014, l: 1015	
	msub	 x0, x0, x23, x20	// id: 1015, l: 1016	
	cbz	 w1, .L185	// id: 1016, l: 1017	
.L117:	// id: 1017, l: 1018	
	ldrsh	 w0, [x25, #104]	// id: 1018, l: 1019	
	cmn	 w0, #0x1	// id: 1019, l: 1020	
	beq	 .L118	// id: 1020, l: 1021	
	mov	 x1, #0x10                  	// #16	// id: 1021, l: 1022	
	mov	 x0, #0x1                   	// #1	// id: 1022, l: 1023	
	bl	 calloc	// id: 1023, l: 1024	
	str	 x28, [x0, #8]	// id: 1024, l: 1025	
	ldr	 x1, [sp, #128]	// id: 1025, l: 1026	
	mov	 x28, x0	// id: 1026, l: 1027	
	add	 x1, x1, #0x1	// id: 1027, l: 1028	
	str	 x1, [sp, #128]	// id: 1028, l: 1029	
	add	 x1, x25, #0x48	// id: 1029, l: 1030	
	str	 x1, [x0]	// id: 1030, l: 1031	
.L118:	// id: 1031, l: 1032	
	ldrsh	 w0, [x25, #32]	// id: 1032, l: 1033	
	cmn	 w0, #0x1	// id: 1033, l: 1034	
	beq	 .L186	// id: 1034, l: 1035	
	ldr	 x10, [x25, #24]	// id: 1035, l: 1036	
	ldr	 x0, [x25, #64]	// id: 1036, l: 1037	
	ldrsw	 x18, [x10, #100]	// id: 1037, l: 1038	
	ldr	 x15, [x28, #8]	// id: 1038, l: 1039	
	sub	 x18, x18, x0	// id: 1039, l: 1040	
	ldr	 x0, [sp, #144]	// id: 1040, l: 1041	
	add	 x18, x18, x0	// id: 1041, l: 1042	
	cbz	 x15, .L120	// id: 1042, l: 1043	
	mov	 x0, x24	// id: 1043, l: 1044	
	mov	 x24, x20	// id: 1044, l: 1045	
	mov	 x20, x19	// id: 1045, l: 1046	
	mov	 x19, x10	// id: 1046, l: 1047	
	b	 .L127	// id: 1047, l: 1048	
	.p2align	2, , 3	// id: 1048, l: 1049	
.L123:	// id: 1049, l: 1050	
	ldr	 x15, [x15, #8]	// id: 1050, l: 1051	
	cbz	 x15, .L187	// id: 1051, l: 1052	
.L127:	// id: 1052, l: 1053	
	ldr	 x3, [x15]	// id: 1053, l: 1054	
	mov	 x7, x27	// id: 1054, l: 1055	
	add	 x27, x27, #0x1	// id: 1055, l: 1056	
	ldr	 x2, [x3, #16]	// id: 1056, l: 1057	
	ldr	 x1, [x3, #64]	// id: 1057, l: 1058	
	ldrsw	 x3, [x2, #100]	// id: 1058, l: 1059	
	add	 x3, x3, x1	// id: 1059, l: 1060	
	cmp	 x3, x18	// id: 1060, l: 1061	
	bgt	 .L123	// id: 1061, l: 1062	
	ldr	 x4, [x2]	// id: 1062, l: 1063	
	ldr	 x5, [x19]	// id: 1063, l: 1064	
	sub	 x4, x26, x4	// id: 1064, l: 1065	
	adds	 x4, x4, x5	// id: 1065, l: 1066	
	bpl	 .L123	// id: 1066, l: 1067	
	ldr	 x1, [x21]	// id: 1067, l: 1068	
	cmp	 x22, x1	// id: 1068, l: 1069	
	bgt	 .L188	// id: 1069, l: 1070	
	ldr	 x3, [x0, #56]	// id: 1070, l: 1071	
	ldr	 x1, [x20]	// id: 1071, l: 1072	
	cmp	 x3, x4	// id: 1072, l: 1073	
	bgt	 .L189	// id: 1073, l: 1074	
	ldr	 x5, [sp, #136]	// id: 1074, l: 1075	
	add	 x3, x1, x1, lsl #3	// id: 1075, l: 1076	
	add	 x1, x1, #0x1	// id: 1076, l: 1077	
	str	 x1, [x20]	// id: 1077, l: 1078	
	ldr	 x1, [sp, #96]	// id: 1078, l: 1079	
	lsl	 x3, x3, #3	// id: 1079, l: 1080	
	ldr	 x6, [x5]	// id: 1080, l: 1081	
	add	 x1, x1, #0x1	// id: 1081, l: 1082	
	str	 x1, [sp, #96]	// id: 1082, l: 1083	
	sub	 w5, w27, #0x1	// id: 1083, l: 1084	
	add	 x1, x6, x3	// id: 1084, l: 1085	
	stp	 x26, x2, [x1, #8]	// id: 1085, l: 1086	
	str	 x19, [x1, #24]	// id: 1086, l: 1087	
	stp	 x4, x26, [x1, #56]	// id: 1087, l: 1088	
	str	 w5, [x6, x3]	// id: 1088, l: 1089	
	ldr	 x1, [x20]	// id: 1089, l: 1090	
.L125:	// id: 1090, l: 1091	
	ldr	 x2, [sp, #112]	// id: 1091, l: 1092	
	cmp	 x2, x1	// id: 1092, l: 1093	
	bne	 .L123	// id: 1093, l: 1094	
	str	 xzr, [x20]	// id: 1094, l: 1095	
	ldr	 x15, [x15, #8]	// id: 1095, l: 1096	
	cbnz	 x15, .L127	// id: 1096, l: 1097	
	.p2align	3, , 7	// id: 1097, l: 1098	
.L187:	// id: 1098, l: 1099	
	mov	 x19, x20	// id: 1099, l: 1100	
	mov	 x20, x24	// id: 1100, l: 1101	
	mov	 x24, x0	// id: 1101, l: 1102	
.L120:	// id: 1102, l: 1103	
	ldr	 x0, [sp, #120]	// id: 1103, l: 1104	
	add	 x20, x20, #0x1	// id: 1104, l: 1105	
	add	 x25, x25, #0xd8	// id: 1105, l: 1106	
	cmp	 x0, x20	// id: 1106, l: 1107	
	bne	 .L128	// id: 1107, l: 1108	
.L192:	// id: 1108, l: 1109	
	mov	 x20, x19	// id: 1109, l: 1110	
	ldr	 x0, [sp, #96]	// id: 1110, l: 1111	
	str	 x0, [x20]	// id: 1111, l: 1112	
	ldr	 w0, [sp, #108]	// id: 1112, l: 1113	
	ldr	 x19, [sp, #152]	// id: 1113, l: 1114	
	cbnz	 w0, .L130	// id: 1114, l: 1115	
	ldr	 x23, [sp, #112]	// id: 1115, l: 1116	
	ldr	 x25, [sp, #136]	// id: 1116, l: 1117	
	.p2align	3, , 7	// id: 1117, l: 1118	
.L131:	// id: 1118, l: 1119	
	mov	 x4, x23	// id: 1119, l: 1120	
	mov	 x3, x22	// id: 1120, l: 1121	
	mov	 x2, x24	// id: 1121, l: 1122	
	mov	 x1, x25	// id: 1122, l: 1123	
	mov	 x0, x20	// id: 1123, l: 1124	
	bl	 switch_arcs.constprop.0	// id: 1124, l: 1125	
	cbnz	 x0, .L131	// id: 1125, l: 1126	
.L130:	// id: 1126, l: 1127	
	ldr	 x22, [x28, #8]	// id: 1127, l: 1128	
	mov	 x0, x28	// id: 1128, l: 1129	
	cbnz	 x22, .L132	// id: 1129, l: 1130	
	b	 .L190	// id: 1130, l: 1131	
	.p2align	2, , 3	// id: 1131, l: 1132	
.L152:	// id: 1132, l: 1133	
	mov	 x22, x1	// id: 1133, l: 1134	
.L132:	// id: 1134, l: 1135	
	bl	 free	// id: 1135, l: 1136	
	ldr	 x1, [x22, #8]	// id: 1136, l: 1137	
	mov	 x0, x22	// id: 1137, l: 1138	
	cbnz	 x1, .L152	// id: 1138, l: 1139	
.L133:	// id: 1139, l: 1140	
	mov	 x0, x22	// id: 1140, l: 1141	
	bl	 free	// id: 1141, l: 1142	
	ldr	 x22, [sp, #160]	// id: 1142, l: 1143	
	mov	 x2, #0x8                   	// #8	// id: 1143, l: 1144	
	ldr	 x1, [x21]	// id: 1144, l: 1145	
	adrp	 x3, arc_compare	// id: 1145, l: 1146	
	ldr	 x0, [x22]	// id: 1146, l: 1147	
	add	 x3, x3, :lo12:arc_compare	// id: 1147, l: 1148	
	bl	 spec_qsort	// id: 1148, l: 1149	
	mov	 x3, x22	// id: 1149, l: 1150	
	mov	 x2, x21	// id: 1150, l: 1151	
	add	 x1, sp, #0xc8	// id: 1151, l: 1152	
	mov	 x0, x19	// id: 1152, l: 1153	
	bl	 marc_arcs	// id: 1153, l: 1154	
	ldr	 x0, [x22]	// id: 1154, l: 1155	
	bl	 free	// id: 1155, l: 1156	
	ldr	 x0, [x21]	// id: 1156, l: 1157	
	cbz	 x0, .L139	// id: 1157, l: 1158	
	ldr	 x22, [x19, #576]	// id: 1158, l: 1159	
	add	 x0, x0, x0, lsl #3	// id: 1159, l: 1160	
	add	 x23, x22, x0, lsl #3	// id: 1160, l: 1161	
	ldr	 x0, [sp, #184]	// id: 1161, l: 1162	
	cmp	 x22, x23	// id: 1162, l: 1163	
	cbnz	 x0, .L137	// id: 1163, l: 1164	
	beq	 .L139	// id: 1164, l: 1165	
	ldr	 x24, [sp, #176]	// id: 1165, l: 1166	
	b	 .L138	// id: 1166, l: 1167	
	.p2align	2, , 3	// id: 1167, l: 1168	
.L142:	// id: 1168, l: 1169	
	add	 x22, x22, #0x48	// id: 1169, l: 1170	
	cmp	 x23, x22	// id: 1170, l: 1171	
	beq	 .L139	// id: 1171, l: 1172	
.L138:	// id: 1172, l: 1173	
	ldr	 x0, [x22, #56]	// id: 1173, l: 1174	
	cmp	 x0, #0x1	// id: 1174, l: 1175	
	bne	 .L142	// id: 1175, l: 1176	
	ldr	 x1, [x22, #16]	// id: 1176, l: 1177	
	strh	 w0, [x22, #32]	// id: 1177, l: 1178	
	str	 xzr, [x22, #56]	// id: 1178, l: 1179	
	mov	 x0, x19	// id: 1179, l: 1180	
	ldr	 x2, [x1, #56]	// id: 1180, l: 1181	
	str	 x2, [x22, #40]	// id: 1181, l: 1182	
	str	 x22, [x1, #56]	// id: 1182, l: 1183	
	ldr	 x1, [x22, #24]	// id: 1183, l: 1184	
	ldr	 x2, [x1, #64]	// id: 1184, l: 1185	
	str	 x2, [x22, #48]	// id: 1185, l: 1186	
	str	 x22, [x1, #64]	// id: 1186, l: 1187	
	add	 x22, x22, #0x48	// id: 1187, l: 1188	
	ldrsw	 x1, [x22, #-72]	// id: 1188, l: 1189	
	bl	 getArcPosition	// id: 1189, l: 1190	
	add	 x0, x0, x0, lsl #3	// id: 1190, l: 1191	
	ldp	 x2, x3, [x22, #-72]	// id: 1191, l: 1192	
	add	 x0, x24, x0, lsl #3	// id: 1192, l: 1193	
	stp	 x2, x3, [x0]	// id: 1193, l: 1194	
	ldp	 x2, x3, [x22, #-56]	// id: 1194, l: 1195	
	stp	 x2, x3, [x0, #16]	// id: 1195, l: 1196	
	ldp	 x2, x3, [x22, #-40]	// id: 1196, l: 1197	
	stp	 x2, x3, [x0, #32]	// id: 1197, l: 1198	
	ldp	 x2, x3, [x22, #-24]	// id: 1198, l: 1199	
	stp	 x2, x3, [x0, #48]	// id: 1199, l: 1200	
	ldr	 x1, [x22, #-8]	// id: 1200, l: 1201	
	str	 x1, [x0, #64]	// id: 1201, l: 1202	
	cmp	 x23, x22	// id: 1202, l: 1203	
	bne	 .L138	// id: 1203, l: 1204	
	.p2align	3, , 7	// id: 1204, l: 1205	
.L139:	// id: 1205, l: 1206	
	ldp	 x0, x2, [x19, #440]	// id: 1206, l: 1207	
	adrp	 x1, getArcPosition	// id: 1207, l: 1208	
	ldr	 x3, [sp, #200]	// id: 1208, l: 1209	
	add	 x1, x1, :lo12:getArcPosition	// id: 1209, l: 1210	
	ldr	 x23, [x19, #584]	// id: 1210, l: 1211	
	add	 x0, x0, x3	// id: 1211, l: 1212	
	sub	 x2, x2, x3	// id: 1212, l: 1213	
	stp	 x0, x2, [x19, #440]	// id: 1213, l: 1214	
	mov	 x0, x19	// id: 1214, l: 1215	
	mov	 x2, x23	// id: 1215, l: 1216	
	ldr	 x22, [x19, #424]	// id: 1216, l: 1217	
	bl	 refreshArcPointers	// id: 1217, l: 1218	
	cmp	 x22, #0x0	// id: 1218, l: 1219	
	ble	 .L191	// id: 1219, l: 1220	
	ldr	 x2, [x19, #568]	// id: 1220, l: 1221	
	mov	 x24, #0x0                   	// #0	// id: 1221, l: 1222	
	.p2align	3, , 7	// id: 1222, l: 1223	
.L144:	// id: 1223, l: 1224	
	add	 x0, x24, x24, lsl #3	// id: 1224, l: 1225	
	lsl	 x0, x0, #3	// id: 1225, l: 1226	
	add	 x25, x2, x0	// id: 1226, l: 1227	
	ldr	 w1, [x2, x0]	// id: 1227, l: 1228	
	tbnz	 x1, #31, .L143	// id: 1228, l: 1229	
	sxtw	 x1, w1	// id: 1229, l: 1230	
	mov	 x0, x19	// id: 1230, l: 1231	
	bl	 getArcPosition	// id: 1231, l: 1232	
	add	 x0, x0, x0, lsl #3	// id: 1232, l: 1233	
	ldp	 x2, x3, [x25]	// id: 1233, l: 1234	
	add	 x0, x23, x0, lsl #3	// id: 1234, l: 1235	
	stp	 x2, x3, [x0]	// id: 1235, l: 1236	
	ldp	 x2, x3, [x25, #16]	// id: 1236, l: 1237	
	stp	 x2, x3, [x0, #16]	// id: 1237, l: 1238	
	ldp	 x2, x3, [x25, #32]	// id: 1238, l: 1239	
	stp	 x2, x3, [x0, #32]	// id: 1239, l: 1240	
	ldp	 x2, x3, [x25, #48]	// id: 1240, l: 1241	
	stp	 x2, x3, [x0, #48]	// id: 1241, l: 1242	
	ldr	 x1, [x25, #64]	// id: 1242, l: 1243	
	str	 x1, [x0, #64]	// id: 1243, l: 1244	
	ldr	 x2, [x19, #568]	// id: 1244, l: 1245	
.L143:	// id: 1245, l: 1246	
	add	 x24, x24, #0x1	// id: 1246, l: 1247	
	cmp	 x22, x24	// id: 1247, l: 1248	
	bne	 .L144	// id: 1248, l: 1249	
.L145:	// id: 1249, l: 1250	
	ldr	 x22, [sp, #200]	// id: 1250, l: 1251	
	str	 x23, [x19, #568]	// id: 1251, l: 1252	
	ldr	 x1, [x19, #424]	// id: 1252, l: 1253	
	str	 x2, [x19, #584]	// id: 1253, l: 1254	
	mov	 x0, x21	// id: 1254, l: 1255	
	add	 x1, x22, x1	// id: 1255, l: 1256	
	str	 x1, [x19, #424]	// id: 1256, l: 1257	
	add	 x1, x1, x1, lsl #3	// id: 1257, l: 1258	
	add	 x23, x23, x1, lsl #3	// id: 1258, l: 1259	
	str	 x23, [x19, #576]	// id: 1259, l: 1260	
	bl	 free	// id: 1260, l: 1261	
	mov	 x0, x20	// id: 1261, l: 1262	
	bl	 free	// id: 1262, l: 1263	
	ldr	 x0, [sp, #160]	// id: 1263, l: 1264	
	bl	 free	// id: 1264, l: 1265	
	ldr	 x0, [sp, #136]	// id: 1265, l: 1266	
	bl	 free	// id: 1266, l: 1267	
	ldp	 x25, x26, [sp, #64]	// id: 1267, l: 1268	
	.cfi_restore	26	// id: 1268, l: 1269	
	.cfi_restore	25	// id: 1269, l: 1270	
.L104:	// id: 1270, l: 1271	
	mov	 x0, x22	// id: 1271, l: 1272	
	ldp	 x19, x20, [sp, #16]	// id: 1272, l: 1273	
	ldp	 x21, x22, [sp, #32]	// id: 1273, l: 1274	
	ldp	 x23, x24, [sp, #48]	// id: 1274, l: 1275	
	ldp	 x27, x28, [sp, #80]	// id: 1275, l: 1276	
	ldp	 x29, x30, [sp], #208	// id: 1276, l: 1277	
	.cfi_remember_state		// id: 1277, l: 1278	
	.cfi_restore	30	// id: 1278, l: 1279	
	.cfi_restore	29	// id: 1279, l: 1280	
	.cfi_restore	27	// id: 1280, l: 1281	
	.cfi_restore	28	// id: 1281, l: 1282	
	.cfi_restore	23	// id: 1282, l: 1283	
	.cfi_restore	24	// id: 1283, l: 1284	
	.cfi_restore	21	// id: 1284, l: 1285	
	.cfi_restore	22	// id: 1285, l: 1286	
	.cfi_restore	19	// id: 1286, l: 1287	
	.cfi_restore	20	// id: 1287, l: 1288	
	.cfi_def_cfa_offset	0	// id: 1288, l: 1289	
	ret		// id: 1289, l: 1290	
.L184:	// id: 1290, l: 1291	
	.cfi_restore_state		// id: 1291, l: 1292	
	mul	 x0, x3, x3	// id: 1292, l: 1293	
	add	 x1, x1, x0, asr #1	// id: 1293, l: 1294	
	cmp	 x1, x2	// id: 1294, l: 1295	
	ble	 .L149	// id: 1295, l: 1296	
	b	 .L109	// id: 1296, l: 1297	
.L146:	// id: 1297, l: 1298	
	mov	 x0, #0x3e8                 	// #1000	// id: 1298, l: 1299	
	str	 x0, [sp, #168]	// id: 1299, l: 1300	
	str	 xzr, [sp, #184]	// id: 1300, l: 1301	
	b	 .L106	// id: 1301, l: 1302	
	.p2align	2, , 3	// id: 1302, l: 1303	
.L185:	// id: 1303, l: 1304	
	.cfi_offset	25, -144	// id: 1304, l: 1305	
	.cfi_offset	26, -136	// id: 1305, l: 1306	
	cbnz	 x0, .L117	// id: 1306, l: 1307	
	ldr	 x4, [sp, #112]	// id: 1307, l: 1308	
	mov	 x3, x22	// id: 1308, l: 1309	
	ldr	 x1, [sp, #136]	// id: 1309, l: 1310	
	mov	 x2, x24	// id: 1310, l: 1311	
	ldr	 x0, [sp, #96]	// id: 1311, l: 1312	
	str	 x0, [x19]	// id: 1312, l: 1313	
	mov	 x0, x19	// id: 1313, l: 1314	
	bl	 switch_arcs.constprop.0	// id: 1314, l: 1315	
	str	 xzr, [x19]	// id: 1315, l: 1316	
	str	 xzr, [sp, #96]	// id: 1316, l: 1317	
	b	 .L117	// id: 1317, l: 1318	
	.p2align	2, , 3	// id: 1318, l: 1319	
.L189:	// id: 1319, l: 1320	
	ldr	 x3, [sp, #136]	// id: 1320, l: 1321	
	add	 x1, x1, x1, lsl #3	// id: 1321, l: 1322	
	mov	 x6, x7	// id: 1322, l: 1323	
	mov	 x5, x22	// id: 1323, l: 1324	
	ldp	 x10, x11, [x0]	// id: 1324, l: 1325	
	str	 wzr, [sp, #108]	// id: 1325, l: 1326	
	ldr	 x3, [x3]	// id: 1326, l: 1327	
	add	 x7, x3, x1, lsl #3	// id: 1327, l: 1328	
	mov	 x1, x2	// id: 1328, l: 1329	
	ldr	 x2, [sp, #96]	// id: 1329, l: 1330	
	mov	 x3, #0x1e                  	// #30	// id: 1330, l: 1331	
	stp	 x10, x11, [x7]	// id: 1331, l: 1332	
	add	 x2, x2, #0x1	// id: 1332, l: 1333	
	ldp	 x10, x11, [x0, #16]	// id: 1333, l: 1334	
	stp	 x10, x11, [x7, #16]	// id: 1334, l: 1335	
	ldp	 x10, x11, [x0, #32]	// id: 1335, l: 1336	
	stp	 x10, x11, [x7, #32]	// id: 1336, l: 1337	
	ldp	 x10, x11, [x0, #48]	// id: 1337, l: 1338	
	stp	 x10, x11, [x7, #48]	// id: 1338, l: 1339	
	ldr	 x9, [x0, #64]	// id: 1339, l: 1340	
	str	 x9, [x7, #64]	// id: 1340, l: 1341	
	str	 x2, [sp, #96]	// id: 1341, l: 1342	
	mov	 x2, x19	// id: 1342, l: 1343	
	ldr	 x7, [x20]	// id: 1343, l: 1344	
	add	 x7, x7, #0x1	// id: 1344, l: 1345	
	str	 x7, [x20]	// id: 1345, l: 1346	
	bl	 replace_weaker_arc	// id: 1346, l: 1347	
	ldr	 x1, [x20]	// id: 1347, l: 1348	
	b	 .L125	// id: 1348, l: 1349	
	.p2align	2, , 3	// id: 1349, l: 1350	
.L188:	// id: 1350, l: 1351	
	ldr	 x3, [sp, #152]	// id: 1351, l: 1352	
	mov	 x5, x4	// id: 1352, l: 1353	
	mov	 x4, #0x1e                  	// #30	// id: 1353, l: 1354	
	ldr	 x6, [x3, #424]	// id: 1354, l: 1355	
	mov	 x3, x19	// id: 1355, l: 1356	
	bl	 insert_new_arc	// id: 1356, l: 1357	
	ldr	 x2, [x21]	// id: 1357, l: 1358	
	ldr	 x1, [x20]	// id: 1358, l: 1359	
	add	 x2, x2, #0x1	// id: 1359, l: 1360	
	str	 x2, [x21]	// id: 1360, l: 1361	
	b	 .L125	// id: 1361, l: 1362	
	.p2align	2, , 3	// id: 1362, l: 1363	
.L186:	// id: 1363, l: 1364	
	ldr	 x0, [sp, #128]	// id: 1364, l: 1365	
	add	 x20, x20, #0x1	// id: 1365, l: 1366	
	add	 x25, x25, #0xd8	// id: 1366, l: 1367	
	add	 x27, x27, x0	// id: 1367, l: 1368	
	ldr	 x0, [sp, #120]	// id: 1368, l: 1369	
	cmp	 x0, x20	// id: 1369, l: 1370	
	bne	 .L128	// id: 1370, l: 1371	
	b	 .L192	// id: 1371, l: 1372	
.L137:	// id: 1372, l: 1373	
	beq	 .L139	// id: 1373, l: 1374	
	ldr	 x24, [sp, #176]	// id: 1374, l: 1375	
	b	 .L141	// id: 1375, l: 1376	
	.p2align	2, , 3	// id: 1376, l: 1377	
.L140:	// id: 1377, l: 1378	
	add	 x22, x22, #0x48	// id: 1378, l: 1379	
	cmp	 x23, x22	// id: 1379, l: 1380	
	beq	 .L139	// id: 1380, l: 1381	
.L141:	// id: 1381, l: 1382	
	ldr	 x2, [x22, #56]	// id: 1382, l: 1383	
	cmp	 x2, #0x1	// id: 1383, l: 1384	
	bne	 .L140	// id: 1384, l: 1385	
	ldrsw	 x1, [x22]	// id: 1385, l: 1386	
	mov	 x0, x19	// id: 1386, l: 1387	
	strh	 w2, [x22, #32]	// id: 1387, l: 1388	
	str	 xzr, [x22, #56]	// id: 1388, l: 1389	
	bl	 getArcPosition	// id: 1389, l: 1390	
	add	 x0, x0, x0, lsl #3	// id: 1390, l: 1391	
	ldp	 x2, x3, [x22]	// id: 1391, l: 1392	
	add	 x0, x24, x0, lsl #3	// id: 1392, l: 1393	
	stp	 x2, x3, [x0]	// id: 1393, l: 1394	
	ldp	 x2, x3, [x22, #16]	// id: 1394, l: 1395	
	stp	 x2, x3, [x0, #16]	// id: 1395, l: 1396	
	ldp	 x2, x3, [x22, #32]	// id: 1396, l: 1397	
	stp	 x2, x3, [x0, #32]	// id: 1397, l: 1398	
	ldp	 x2, x3, [x22, #48]	// id: 1398, l: 1399	
	stp	 x2, x3, [x0, #48]	// id: 1399, l: 1400	
	ldr	 x1, [x22, #64]	// id: 1400, l: 1401	
	str	 x1, [x0, #64]	// id: 1401, l: 1402	
	b	 .L140	// id: 1402, l: 1403	
.L191:	// id: 1403, l: 1404	
	ldr	 x2, [x19, #568]	// id: 1404, l: 1405	
	b	 .L145	// id: 1405, l: 1406	
.L190:	// id: 1406, l: 1407	
	mov	 x22, x28	// id: 1407, l: 1408	
	b	 .L133	// id: 1408, l: 1409	
.L110:	// id: 1409, l: 1410	
	.cfi_restore	25	// id: 1410, l: 1411	
	.cfi_restore	26	// id: 1411, l: 1412	
	mov	 x22, #0xffffffffffffffff    	// #-1	// id: 1412, l: 1413	
	b	 .L104	// id: 1413, l: 1414	
.L114:	// id: 1414, l: 1415	
	.cfi_offset	25, -144	// id: 1415, l: 1416	
	.cfi_offset	26, -136	// id: 1416, l: 1417	
	mov	 x0, #0x0                   	// #0	// id: 1417, l: 1418	
	str	 xzr, [x20]	// id: 1418, l: 1419	
	ldr	 x0, [x0, #8]	// id: 1419, l: 1420	
	brk	 #0x3e8	// id: 1420, l: 1421	
	.cfi_endproc		// id: 1421, l: 1422	
.LFE34:	// id: 1422, l: 1423	
	.size	price_out_impl, .-price_out_impl	// id: 1423, l: 1424	
	.p2align	2, , 0	// id: 1424, l: 1425	
	.p2align	3, , 7	// id: 1425, l: 1426	
	.globl	suspend_impl	// id: 1426, l: 1427	
	.type	suspend_impl, %function	// id: 1427, l: 1428	
suspend_impl:	// id: 1428, l: 1429	
.LFB35:	// id: 1429, l: 1430	
	.cfi_startproc		// id: 1430, l: 1431	
	stp	 x29, x30, [sp, #-80]!	// id: 1431, l: 1432	
	.cfi_def_cfa_offset	80	// id: 1432, l: 1433	
	.cfi_offset	29, -80	// id: 1433, l: 1434	
	.cfi_offset	30, -72	// id: 1434, l: 1435	
	mov	 x3, #0xf7cf                	// #63439	// id: 1435, l: 1436	
	movk	 x3, #0xe353, lsl #16	// id: 1436, l: 1437	
	mov	 x29, sp	// id: 1437, l: 1438	
	stp	 x19, x20, [sp, #16]	// id: 1438, l: 1439	
	.cfi_offset	19, -64	// id: 1439, l: 1440	
	.cfi_offset	20, -56	// id: 1440, l: 1441	
	mov	 x19, x0	// id: 1441, l: 1442	
	movk	 x3, #0x9ba5, lsl #32	// id: 1442, l: 1443	
	stp	 x21, x22, [sp, #32]	// id: 1443, l: 1444	
	movk	 x3, #0x20c4, lsl #48	// id: 1444, l: 1445	
	mov	 x20, x2	// id: 1445, l: 1446	
	stp	 x25, x26, [sp, #64]	// id: 1446, l: 1447	
	.cfi_offset	21, -48	// id: 1447, l: 1448	
	.cfi_offset	22, -40	// id: 1448, l: 1449	
	.cfi_offset	25, -16	// id: 1449, l: 1450	
	.cfi_offset	26, -8	// id: 1450, l: 1451	
	mov	 x21, x1	// id: 1451, l: 1452	
	mov	 x0, #0xfa0                 	// #4000	// id: 1452, l: 1453	
	ldr	 x25, [x19, #424]	// id: 1453, l: 1454	
	str	 x0, [x19, #640]	// id: 1454, l: 1455	
	sub	 x1, x25, #0x1	// id: 1455, l: 1456	
	smulh	 x2, x25, x3	// id: 1456, l: 1457	
	smulh	 x4, x1, x3	// id: 1457, l: 1458	
	asr	 x2, x2, #9	// id: 1458, l: 1459	
	sub	 x3, x2, x25, asr #63	// id: 1459, l: 1460	
	asr	 x4, x4, #9	// id: 1460, l: 1461	
	lsl	 x2, x3, #5	// id: 1461, l: 1462	
	sub	 x1, x4, x1, asr #63	// id: 1462, l: 1463	
	sub	 x2, x2, x3	// id: 1463, l: 1464	
	add	 x1, x1, #0x1	// id: 1464, l: 1465	
	str	 x1, [x19, #624]	// id: 1465, l: 1466	
	add	 x2, x3, x2, lsl #2	// id: 1466, l: 1467	
	sub	 x2, x25, x2, lsl #5	// id: 1467, l: 1468	
	sub	 x0, x0, x2	// id: 1468, l: 1469	
	sub	 x0, x1, x0	// id: 1469, l: 1470	
	str	 x0, [x19, #632]	// id: 1470, l: 1471	
	tbz	 x0, #63, .L194	// id: 1471, l: 1472	
	mov	 x3, #0xf9f                 	// #3999	// id: 1472, l: 1473	
	.p2align	3, , 7	// id: 1473, l: 1474	
.L195:	// id: 1474, l: 1475	
	mov	 x2, x3	// id: 1475, l: 1476	
	adds	 x0, x0, x1	// id: 1476, l: 1477	
	sub	 x3, x3, #0x1	// id: 1477, l: 1478	
	bmi	 .L195	// id: 1478, l: 1479	
	str	 x0, [x19, #632]	// id: 1479, l: 1480	
	str	 x2, [x19, #640]	// id: 1480, l: 1481	
.L194:	// id: 1481, l: 1482	
	ldr	 x22, [x19, #440]	// id: 1482, l: 1483	
	cbnz	 x20, .L196	// id: 1483, l: 1484	
	stp	 x23, x24, [sp, #48]	// id: 1484, l: 1485	
	.cfi_offset	24, -24	// id: 1485, l: 1486	
	.cfi_offset	23, -32	// id: 1486, l: 1487	
	sub	 x22, x25, x22	// id: 1487, l: 1488	
	cmp	 x25, x22	// id: 1488, l: 1489	
	mov	 x26, x22	// id: 1489, l: 1490	
	mov	 w23, #0xffffffff            	// #-1	// id: 1490, l: 1491	
	ble	 .L225	// id: 1491, l: 1492	
	.p2align	3, , 7	// id: 1492, l: 1493	
.L197:	// id: 1493, l: 1494	
	mov	 x1, x22	// id: 1494, l: 1495	
	mov	 x0, x19	// id: 1495, l: 1496	
	ldr	 x24, [x19, #568]	// id: 1496, l: 1497	
	bl	 getArcPosition	// id: 1497, l: 1498	
	add	 x0, x0, x0, lsl #3	// id: 1498, l: 1499	
	mov	 x2, #0xfffffffffffffffe    	// #-2	// id: 1499, l: 1500	
	lsl	 x0, x0, #3	// id: 1500, l: 1501	
	add	 x1, x24, x0	// id: 1501, l: 1502	
	ldrsh	 w3, [x1, #32]	// id: 1502, l: 1503	
	cmp	 w3, #0x1	// id: 1503, l: 1504	
	beq	 .L226	// id: 1504, l: 1505	
	cbnz	 w3, .L200	// id: 1505, l: 1506	
	ldr	 x3, [x1, #16]	// id: 1506, l: 1507	
	ldr	 x3, [x3, #48]	// id: 1507, l: 1508	
	cmp	 x3, x1	// id: 1508, l: 1509	
	beq	 .L200	// id: 1509, l: 1510	
	ldr	 x3, [x1, #24]	// id: 1510, l: 1511	
	str	 x1, [x3, #48]	// id: 1511, l: 1512	
.L200:	// id: 1512, l: 1513	
	cmp	 x2, x21	// id: 1513, l: 1514	
	ble	 .L201	// id: 1514, l: 1515	
	str	 w23, [x24, x0]	// id: 1515, l: 1516	
	add	 x22, x22, #0x1	// id: 1516, l: 1517	
	add	 x20, x20, #0x1	// id: 1517, l: 1518	
	ldr	 x25, [x19, #424]	// id: 1518, l: 1519	
	cmp	 x22, x25	// id: 1519, l: 1520	
	blt	 .L197	// id: 1520, l: 1521	
	mov	 x22, x20	// id: 1521, l: 1522	
	b	 .L203	// id: 1522, l: 1523	
	.p2align	2, , 3	// id: 1523, l: 1524	
.L201:	// id: 1524, l: 1525	
	str	 w26, [x24, x0]	// id: 1525, l: 1526	
	add	 x22, x22, #0x1	// id: 1526, l: 1527	
	add	 x26, x26, #0x1	// id: 1527, l: 1528	
	ldr	 x25, [x19, #424]	// id: 1528, l: 1529	
	cmp	 x25, x22	// id: 1529, l: 1530	
	bgt	 .L197	// id: 1530, l: 1531	
	ldp	 x23, x24, [sp, #48]	// id: 1531, l: 1532	
	.cfi_restore	24	// id: 1532, l: 1533	
	.cfi_restore	23	// id: 1533, l: 1534	
	mov	 x22, x20	// id: 1534, l: 1535	
.L196:	// id: 1535, l: 1536	
	cbnz	 x22, .L227	// id: 1536, l: 1537	
.L204:	// id: 1537, l: 1538	
	mov	 x22, #0x0                   	// #0	// id: 1538, l: 1539	
	mov	 x0, x22	// id: 1539, l: 1540	
	ldp	 x19, x20, [sp, #16]	// id: 1540, l: 1541	
	ldp	 x21, x22, [sp, #32]	// id: 1541, l: 1542	
	ldp	 x25, x26, [sp, #64]	// id: 1542, l: 1543	
	ldp	 x29, x30, [sp], #80	// id: 1543, l: 1544	
	.cfi_restore	30	// id: 1544, l: 1545	
	.cfi_restore	29	// id: 1545, l: 1546	
	.cfi_restore	25	// id: 1546, l: 1547	
	.cfi_restore	26	// id: 1547, l: 1548	
	.cfi_restore	21	// id: 1548, l: 1549	
	.cfi_restore	22	// id: 1549, l: 1550	
	.cfi_restore	19	// id: 1550, l: 1551	
	.cfi_restore	20	// id: 1551, l: 1552	
	.cfi_def_cfa_offset	0	// id: 1552, l: 1553	
	ret		// id: 1553, l: 1554	
	.p2align	2, , 3	// id: 1554, l: 1555	
.L226:	// id: 1555, l: 1556	
	.cfi_def_cfa_offset	80	// id: 1556, l: 1557	
	.cfi_offset	19, -64	// id: 1557, l: 1558	
	.cfi_offset	20, -56	// id: 1558, l: 1559	
	.cfi_offset	21, -48	// id: 1559, l: 1560	
	.cfi_offset	22, -40	// id: 1560, l: 1561	
	.cfi_offset	23, -32	// id: 1561, l: 1562	
	.cfi_offset	24, -24	// id: 1562, l: 1563	
	.cfi_offset	25, -16	// id: 1563, l: 1564	
	.cfi_offset	26, -8	// id: 1564, l: 1565	
	.cfi_offset	29, -80	// id: 1565, l: 1566	
	.cfi_offset	30, -72	// id: 1566, l: 1567	
	ldp	 x2, x4, [x1, #16]	// id: 1567, l: 1568	
	ldr	 x3, [x2]	// id: 1568, l: 1569	
	ldr	 x2, [x1, #8]	// id: 1569, l: 1570	
	ldr	 x1, [x4]	// id: 1570, l: 1571	
	sub	 x2, x2, x3	// id: 1571, l: 1572	
	add	 x2, x2, x1	// id: 1572, l: 1573	
	b	 .L200	// id: 1573, l: 1574	
	.p2align	2, , 3	// id: 1574, l: 1575	
.L227:	// id: 1575, l: 1576	
	.cfi_restore	23	// id: 1576, l: 1577	
	.cfi_restore	24	// id: 1577, l: 1578	
	stp	 x23, x24, [sp, #48]	// id: 1578, l: 1579	
	.cfi_offset	24, -24	// id: 1579, l: 1580	
	.cfi_offset	23, -32	// id: 1580, l: 1581	
.L203:	// id: 1581, l: 1582	
	mov	 x0, #0xf7cf                	// #63439	// id: 1582, l: 1583	
	movk	 x0, #0xe353, lsl #16	// id: 1583, l: 1584	
	sub	 x20, x25, x22	// id: 1584, l: 1585	
	movk	 x0, #0x9ba5, lsl #32	// id: 1585, l: 1586	
	sub	 x1, x20, #0x1	// id: 1586, l: 1587	
	movk	 x0, #0x20c4, lsl #48	// id: 1587, l: 1588	
	mov	 x2, #0xfa0                 	// #4000	// id: 1588, l: 1589	
	ldp	 x6, x4, [x19, #440]	// id: 1589, l: 1590	
	smulh	 x3, x20, x0	// id: 1590, l: 1591	
	smulh	 x0, x1, x0	// id: 1591, l: 1592	
	str	 x2, [x19, #640]	// id: 1592, l: 1593	
	asr	 x3, x3, #9	// id: 1593, l: 1594	
	sub	 x3, x3, x20, asr #63	// id: 1594, l: 1595	
	asr	 x0, x0, #9	// id: 1595, l: 1596	
	sub	 x1, x0, x1, asr #63	// id: 1596, l: 1597	
	add	 x0, x4, x22	// id: 1597, l: 1598	
	lsl	 x5, x3, #5	// id: 1598, l: 1599	
	add	 x1, x1, #0x1	// id: 1599, l: 1600	
	sub	 x5, x5, x3	// id: 1600, l: 1601	
	sub	 x6, x6, x22	// id: 1601, l: 1602	
	stp	 x6, x0, [x19, #440]	// id: 1602, l: 1603	
	add	 x3, x3, x5, lsl #2	// id: 1603, l: 1604	
	str	 x1, [x19, #624]	// id: 1604, l: 1605	
	subs	 x3, x20, x3, lsl #5	// id: 1605, l: 1606	
	sub	 x0, x2, x3	// id: 1606, l: 1607	
	sub	 x0, x1, x0	// id: 1607, l: 1608	
	csel	 x0, x0, x1, ne  // ne = any	// id: 1608, l: 1609	
	str	 x0, [x19, #632]	// id: 1609, l: 1610	
	tbz	 x0, #63, .L206	// id: 1610, l: 1611	
	.p2align	3, , 7	// id: 1611, l: 1612	
.L207:	// id: 1612, l: 1613	
	sub	 x2, x2, #0x1	// id: 1613, l: 1614	
	adds	 x0, x0, x1	// id: 1614, l: 1615	
	bmi	 .L207	// id: 1615, l: 1616	
	str	 x0, [x19, #632]	// id: 1616, l: 1617	
	str	 x2, [x19, #640]	// id: 1617, l: 1618	
.L206:	// id: 1618, l: 1619	
	ldr	 x21, [x19, #584]	// id: 1619, l: 1620	
	adrp	 x23, getOriginalArcPosition	// id: 1620, l: 1621	
	add	 x23, x23, :lo12:getOriginalArcPosition	// id: 1621, l: 1622	
	mov	 x0, x19	// id: 1622, l: 1623	
	mov	 x1, x23	// id: 1623, l: 1624	
	mov	 x2, x21	// id: 1624, l: 1625	
	bl	 refreshArcPointers	// id: 1625, l: 1626	
	cmp	 x25, #0x0	// id: 1626, l: 1627	
	ldr	 x3, [x19, #568]	// id: 1627, l: 1628	
	ble	 .L211	// id: 1628, l: 1629	
	mov	 x24, #0x0                   	// #0	// id: 1629, l: 1630	
	.p2align	3, , 7	// id: 1630, l: 1631	
.L210:	// id: 1631, l: 1632	
	add	 x1, x24, x24, lsl #3	// id: 1632, l: 1633	
	mov	 x0, x19	// id: 1633, l: 1634	
	add	 x24, x24, #0x1	// id: 1634, l: 1635	
	lsl	 x1, x1, #3	// id: 1635, l: 1636	
	add	 x26, x3, x1	// id: 1636, l: 1637	
	ldr	 w2, [x3, x1]	// id: 1637, l: 1638	
	sxtw	 x1, w2	// id: 1638, l: 1639	
	tbnz	 x2, #31, .L209	// id: 1639, l: 1640	
	bl	 getOriginalArcPosition	// id: 1640, l: 1641	
	add	 x0, x0, x0, lsl #3	// id: 1641, l: 1642	
	ldp	 x2, x3, [x26]	// id: 1642, l: 1643	
	add	 x0, x21, x0, lsl #3	// id: 1643, l: 1644	
	stp	 x2, x3, [x0]	// id: 1644, l: 1645	
	ldp	 x2, x3, [x26, #16]	// id: 1645, l: 1646	
	stp	 x2, x3, [x0, #16]	// id: 1646, l: 1647	
	ldp	 x2, x3, [x26, #32]	// id: 1647, l: 1648	
	stp	 x2, x3, [x0, #32]	// id: 1648, l: 1649	
	ldp	 x2, x3, [x26, #48]	// id: 1649, l: 1650	
	stp	 x2, x3, [x0, #48]	// id: 1650, l: 1651	
	ldr	 x1, [x26, #64]	// id: 1651, l: 1652	
	str	 x1, [x0, #64]	// id: 1652, l: 1653	
	ldr	 x3, [x19, #568]	// id: 1653, l: 1654	
.L209:	// id: 1654, l: 1655	
	cmp	 x24, x25	// id: 1655, l: 1656	
	bne	 .L210	// id: 1656, l: 1657	
.L211:	// id: 1657, l: 1658	
	ldr	 x0, [x19, #424]	// id: 1658, l: 1659	
	add	 x20, x20, x20, lsl #3	// id: 1659, l: 1660	
	str	 x21, [x19, #568]	// id: 1660, l: 1661	
	mov	 x1, x23	// id: 1661, l: 1662	
	add	 x20, x21, x20, lsl #3	// id: 1662, l: 1663	
	sub	 x0, x0, x22	// id: 1663, l: 1664	
	str	 x0, [x19, #424]	// id: 1664, l: 1665	
	mov	 x0, x19	// id: 1665, l: 1666	
	str	 x20, [x19, #576]	// id: 1666, l: 1667	
	str	 x3, [x19, #584]	// id: 1667, l: 1668	
	bl	 refresh_neighbour_lists	// id: 1668, l: 1669	
	mov	 x0, x22	// id: 1669, l: 1670	
	ldp	 x19, x20, [sp, #16]	// id: 1670, l: 1671	
	ldp	 x21, x22, [sp, #32]	// id: 1671, l: 1672	
	ldp	 x23, x24, [sp, #48]	// id: 1672, l: 1673	
	.cfi_remember_state		// id: 1673, l: 1674	
	.cfi_restore	24	// id: 1674, l: 1675	
	.cfi_restore	23	// id: 1675, l: 1676	
	ldp	 x25, x26, [sp, #64]	// id: 1676, l: 1677	
	ldp	 x29, x30, [sp], #80	// id: 1677, l: 1678	
	.cfi_restore	30	// id: 1678, l: 1679	
	.cfi_restore	29	// id: 1679, l: 1680	
	.cfi_restore	25	// id: 1680, l: 1681	
	.cfi_restore	26	// id: 1681, l: 1682	
	.cfi_restore	21	// id: 1682, l: 1683	
	.cfi_restore	22	// id: 1683, l: 1684	
	.cfi_restore	19	// id: 1684, l: 1685	
	.cfi_restore	20	// id: 1685, l: 1686	
	.cfi_def_cfa_offset	0	// id: 1686, l: 1687	
	ret		// id: 1687, l: 1688	
.L225:	// id: 1688, l: 1689	
	.cfi_restore_state		// id: 1689, l: 1690	
	ldp	 x23, x24, [sp, #48]	// id: 1690, l: 1691	
	.cfi_restore	24	// id: 1691, l: 1692	
	.cfi_restore	23	// id: 1692, l: 1693	
	b	 .L204	// id: 1693, l: 1694	
	.cfi_endproc		// id: 1694, l: 1695	
.LFE35:	// id: 1695, l: 1696	
	.size	suspend_impl, .-suspend_impl	// id: 1696, l: 1697	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 1697, l: 1698	
	.section	.note.GNU-stack, "",@progbits	// id: 1698, l: 1699	
