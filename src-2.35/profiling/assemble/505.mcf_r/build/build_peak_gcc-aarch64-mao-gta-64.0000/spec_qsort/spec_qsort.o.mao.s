	.arch	armv8-a	// id: 0, l: 1	
	.file	"spec_qsort.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.p2align	3, , 7	// id: 4, l: 5	
	.globl	spec_qsort	// id: 5, l: 6	
	.type	spec_qsort, %function	// id: 6, l: 7	
spec_qsort:	// id: 7, l: 8	
.LFB6:	// id: 8, l: 9	
	.cfi_startproc		// id: 9, l: 10	
.L2:	// id: 10, l: 11	
	stp	 x29, x30, [sp, #-400]!	// id: 11, l: 12	
	.cfi_def_cfa_offset	400	// id: 12, l: 13	
	.cfi_offset	29, -400	// id: 13, l: 14	
	.cfi_offset	30, -392	// id: 14, l: 15	
	cmp	 w2, #0x0	// id: 15, l: 16	
	mov	 x4, #0x1                   	// #1	// id: 16, l: 17	
	mov	 x29, sp	// id: 17, l: 18	
	stp	 x25, x26, [sp, #64]	// id: 18, l: 19	
	.cfi_offset	25, -336	// id: 19, l: 20	
	.cfi_offset	26, -328	// id: 20, l: 21	
	mov	 x25, x2	// id: 21, l: 22	
	sxtw	 x2, w2	// id: 22, l: 23	
	csel	 x7, x2, x4, gt	// id: 23, l: 24	
	stp	 x19, x20, [sp, #16]	// id: 24, l: 25	
	lsr	 x6, x2, #2	// id: 25, l: 26	
	.cfi_offset	19, -384	// id: 26, l: 27	
	.cfi_offset	20, -376	// id: 27, l: 28	
	mov	 x20, x0	// id: 28, l: 29	
	cmp	 x6, #0x0	// id: 29, l: 30	
	mov	 x0, x2	// id: 30, l: 31	
	str	 x2, [sp, #368]	// id: 31, l: 32	
	lsr	 x2, x2, #3	// id: 32, l: 33	
	csel	 x5, x6, x4, gt	// id: 33, l: 34	
	cmp	 x2, #0x0	// id: 34, l: 35	
	str	 x2, [sp, #176]	// id: 35, l: 36	
	csel	 x2, x2, x4, gt	// id: 36, l: 37	
	and	 x8, x5, #0xfffffffffffffffc	// id: 37, l: 38	
	and	 x10, x2, #0xfffffffffffffffe	// id: 38, l: 39	
	stp	 x2, x10, [sp, #152]	// id: 39, l: 40	
	lsr	 x4, x2, #1	// id: 40, l: 41	
	sub	 x2, x6, x8	// id: 41, l: 42	
	str	 x1, [sp, #120]	// id: 42, l: 43	
	sub	 x1, x2, #0x1	// id: 43, l: 44	
	stp	 x5, x8, [sp, #232]	// id: 44, l: 45	
	lsr	 x5, x5, #2	// id: 45, l: 46	
	str	 x1, [sp, #288]	// id: 46, l: 47	
	sub	 x1, x2, #0x2	// id: 47, l: 48	
	str	 x1, [sp, #304]	// id: 48, l: 49	
	lsl	 x1, x8, #2	// id: 49, l: 50	
	and	 x9, x7, #0xfffffffffffffff0	// id: 50, l: 51	
	str	 x1, [sp, #248]	// id: 51, l: 52	
	lsl	 x1, x5, #4	// id: 52, l: 53	
	sub	 x0, x0, x9	// id: 53, l: 54	
	str	 x1, [sp, #256]	// id: 54, l: 55	
	lsl	 x1, x4, #4	// id: 55, l: 56	
	str	 x1, [sp, #168]	// id: 56, l: 57	
	sub	 x1, x0, #0x1	// id: 57, l: 58	
	str	 x1, [sp, #208]	// id: 58, l: 59	
	sub	 x1, x0, #0x2	// id: 59, l: 60	
	str	 x1, [sp, #216]	// id: 60, l: 61	
	sub	 x1, x0, #0x3	// id: 61, l: 62	
	str	 x1, [sp, #224]	// id: 62, l: 63	
	sub	 x1, x0, #0x4	// id: 63, l: 64	
	stp	 x21, x22, [sp, #32]	// id: 64, l: 65	
	.cfi_offset	21, -368	// id: 65, l: 66	
	.cfi_offset	22, -360	// id: 66, l: 67	
	mov	 x21, x3	// id: 67, l: 68	
	lsl	 x22, x10, #3	// id: 68, l: 69	
	stp	 x23, x24, [sp, #48]	// id: 69, l: 70	
	.cfi_offset	23, -352	// id: 70, l: 71	
	.cfi_offset	24, -344	// id: 71, l: 72	
	mov	 w23, #0x2                   	// #2	// id: 72, l: 73	
	stp	 x27, x28, [sp, #80]	// id: 73, l: 74	
	.cfi_offset	27, -320	// id: 74, l: 75	
	.cfi_offset	28, -312	// id: 75, l: 76	
	stp	 x7, x9, [sp, #184]	// id: 76, l: 77	
	str	 x1, [sp, #272]	// id: 77, l: 78	
	sub	 x1, x0, #0x5	// id: 78, l: 79	
	str	 x6, [sp, #336]	// id: 79, l: 80	
	str	 x1, [sp, #280]	// id: 80, l: 81	
	sub	 x1, x0, #0x6	// id: 81, l: 82	
	str	 x1, [sp, #296]	// id: 82, l: 83	
	sub	 x1, x0, #0x7	// id: 83, l: 84	
	str	 x1, [sp, #312]	// id: 84, l: 85	
	sub	 x1, x0, #0x8	// id: 85, l: 86	
	str	 x1, [sp, #328]	// id: 86, l: 87	
	sub	 x1, x0, #0x9	// id: 87, l: 88	
	str	 x1, [sp, #344]	// id: 88, l: 89	
	sub	 x1, x0, #0xa	// id: 89, l: 90	
	str	 x1, [sp, #352]	// id: 90, l: 91	
	sub	 x1, x0, #0xb	// id: 91, l: 92	
	str	 x1, [sp, #360]	// id: 92, l: 93	
	sub	 x1, x0, #0xc	// id: 93, l: 94	
	str	 x25, [sp, #104]	// id: 94, l: 95	
	str	 x1, [sp, #376]	// id: 95, l: 96	
	sub	 x1, x0, #0xd	// id: 96, l: 97	
	sub	 x0, x0, #0xe	// id: 97, l: 98	
	stp	 x1, x0, [sp, #384]	// id: 98, l: 99	
	sub	 x0, x6, #0x6	// id: 99, l: 100	
	str	 x0, [sp, #264]	// id: 100, l: 101	
	ldr	 x0, [sp, #104]	// id: 101, l: 102	
	str	 w25, [sp, #148]	// id: 102, l: 103	
	str	 x9, [sp, #200]	// id: 103, l: 104	
	orr	 x0, x20, x0	// id: 104, l: 105	
	tst	 x0, #0x7	// id: 105, l: 106	
	beq	 .L383	// id: 106, l: 107	
.L3:	// id: 107, l: 108	
	tst	 x0, #0x3	// id: 108, l: 109	
	mov	 w26, #0x2                   	// #2	// id: 109, l: 110	
	beq	 .L384	// id: 110, l: 111	
.L4:	// id: 111, l: 112	
	ldr	 x0, [sp, #120]	// id: 112, l: 113	
	cmp	 x0, #0x6	// id: 113, l: 114	
	bls	 .L385	// id: 114, l: 115	
.L5:	// id: 115, l: 116	
	ldr	 x1, [sp, #104]	// id: 116, l: 117	
	lsr	 x3, x0, #1	// id: 117, l: 118	
	sub	 x2, x0, #0x1	// id: 118, l: 119	
	cmp	 x0, #0x7	// id: 119, l: 120	
	madd	 x25, x3, x1, x20	// id: 120, l: 121	
	madd	 x28, x2, x1, x20	// id: 121, l: 122	
	beq	 .L31	// id: 122, l: 123	
	cmp	 x0, #0x28	// id: 123, l: 124	
	mov	 x19, x28	// id: 124, l: 125	
	mov	 x24, x20	// id: 125, l: 126	
	bhi	 .L386	// id: 126, l: 127	
.L32:	// id: 127, l: 128	
	mov	 x1, x25	// id: 128, l: 129	
	mov	 x0, x24	// id: 129, l: 130	
	blr	 x21	// id: 130, l: 131	
	mov	 x1, x19	// id: 131, l: 132	
	tbnz	 x0, #31, .L387	// id: 132, l: 133	
	mov	 x0, x25	// id: 133, l: 134	
	blr	 x21	// id: 134, l: 135	
	cmp	 w0, #0x0	// id: 135, l: 136	
	ble	 .L388	// id: 136, l: 137	
.L31:	// id: 137, l: 138	
	cbnz	 w23, .L39	// id: 138, l: 139	
.L391:	// id: 139, l: 140	
	ldr	 x1, [x25]	// id: 140, l: 141	
	ldr	 x0, [x20]	// id: 141, l: 142	
	str	 x1, [x20]	// id: 142, l: 143	
	str	 x0, [x25]	// id: 143, l: 144	
.L40:	// id: 144, l: 145	
	ldr	 x0, [sp, #104]	// id: 145, l: 146	
	add	 x0, x20, x0	// id: 146, l: 147	
	str	 x0, [sp, #320]	// id: 147, l: 148	
	cmp	 x28, x0	// id: 148, l: 149	
	bcc	 .L59	// id: 149, l: 150	
.L392:	// id: 150, l: 151	
	mov	 x25, x0	// id: 151, l: 152	
	str	 x0, [sp, #128]	// id: 152, l: 153	
	ldr	 x0, [sp, #176]	// id: 153, l: 154	
	mov	 x27, x28	// id: 154, l: 155	
	mov	 w24, #0x0                   	// #0	// id: 155, l: 156	
	sub	 x0, x0, #0x6	// id: 156, l: 157	
	str	 x0, [sp, #136]	// id: 157, l: 158	
	mov	 x0, x20	// id: 158, l: 159	
	mov	 x20, x25	// id: 159, l: 160	
	mov	 x25, x0	// id: 160, l: 161	
	.p2align	3, , 7	// id: 161, l: 162	
.L60:	// id: 162, l: 163	
	mov	 x1, x25	// id: 163, l: 164	
	mov	 x0, x20	// id: 164, l: 165	
	blr	 x21	// id: 165, l: 166	
	str	 x20, [sp, #112]	// id: 166, l: 167	
	cmp	 w0, #0x0	// id: 167, l: 168	
	ble	 .L84	// id: 168, l: 169	
	cmp	 x27, x20	// id: 169, l: 170	
	bcc	 .L380	// id: 170, l: 171	
	ldr	 x0, [sp, #104]	// id: 171, l: 172	
	neg	 x19, x0	// id: 172, l: 173	
	b	 .L107	// id: 173, l: 174	
	.p2align	2, , 3	// id: 174, l: 175	
.L390:	// id: 175, l: 176	
	ldr	 x4, [x28]	// id: 176, l: 177	
	ldr	 x0, [x27]	// id: 177, l: 178	
	str	 x4, [x27]	// id: 178, l: 179	
	str	 x0, [x28]	// id: 179, l: 180	
.L88:	// id: 180, l: 181	
	add	 x28, x28, x19	// id: 181, l: 182	
	mov	 w24, #0x1                   	// #1	// id: 182, l: 183	
.L86:	// id: 183, l: 184	
	add	 x27, x27, x19	// id: 184, l: 185	
	cmp	 x27, x20	// id: 185, l: 186	
	bcc	 .L380	// id: 186, l: 187	
.L107:	// id: 187, l: 188	
	mov	 x1, x25	// id: 188, l: 189	
	mov	 x0, x27	// id: 189, l: 190	
	blr	 x21	// id: 190, l: 191	
	cmp	 w0, #0x0	// id: 191, l: 192	
	blt	 .L389	// id: 192, l: 193	
	bne	 .L86	// id: 193, l: 194	
	cbz	 w23, .L390	// id: 194, l: 195	
	cbnz	 w26, .L89	// id: 195, l: 196	
	ldr	 w4, [x28]	// id: 196, l: 197	
	ldr	 w0, [x27]	// id: 197, l: 198	
	str	 w4, [x27]	// id: 198, l: 199	
	str	 w0, [x28]	// id: 199, l: 200	
	b	 .L88	// id: 200, l: 201	
.L388:	// id: 201, l: 202	
	mov	 x1, x19	// id: 202, l: 203	
	mov	 x0, x24	// id: 203, l: 204	
	blr	 x21	// id: 204, l: 205	
	cmp	 w0, #0x0	// id: 205, l: 206	
	csel	 x25, x24, x19, lt  // lt = tstop	// id: 206, l: 207	
	cbz	 w23, .L391	// id: 207, l: 208	
.L39:	// id: 208, l: 209	
	cbnz	 w26, .L41	// id: 209, l: 210	
	ldr	 w1, [x25]	// id: 210, l: 211	
	ldr	 w0, [x20]	// id: 211, l: 212	
	str	 w1, [x20]	// id: 212, l: 213	
	str	 w0, [x25]	// id: 213, l: 214	
	ldr	 x0, [sp, #104]	// id: 214, l: 215	
	add	 x0, x20, x0	// id: 215, l: 216	
	str	 x0, [sp, #320]	// id: 216, l: 217	
	cmp	 x28, x0	// id: 217, l: 218	
	bcs	 .L392	// id: 218, l: 219	
.L59:	// id: 219, l: 220	
	ldr	 x25, [sp, #104]	// id: 220, l: 221	
	mov	 w1, w26	// id: 221, l: 222	
	ldr	 x0, [sp, #120]	// id: 222, l: 223	
	madd	 x0, x0, x25, x20	// id: 223, l: 224	
	str	 x0, [sp, #112]	// id: 224, l: 225	
.L61:	// id: 225, l: 226	
	ldr	 x24, [sp, #320]	// id: 226, l: 227	
	cmp	 x24, x0	// id: 227, l: 228	
	bcs	 .L1	// id: 228, l: 229	
	ldr	 x0, [sp, #336]	// id: 229, l: 230	
	mov	 w19, w1	// id: 230, l: 231	
	mov	 x26, #0x10                  	// #16	// id: 231, l: 232	
	sub	 x26, x26, x25	// id: 232, l: 233	
	sub	 x28, x0, #0x6	// id: 233, l: 234	
	str	 x26, [sp, #104]	// id: 234, l: 235	
	str	 x28, [sp, #128]	// id: 235, l: 236	
.L109:	// id: 236, l: 237	
	cmp	 x20, x24	// id: 237, l: 238	
	bcs	 .L154	// id: 238, l: 239	
	ldr	 x0, [sp, #176]	// id: 239, l: 240	
	neg	 x27, x25	// id: 240, l: 241	
	sub	 x0, x0, #0x6	// id: 241, l: 242	
	str	 x0, [sp, #120]	// id: 242, l: 243	
	mov	 x0, x27	// id: 243, l: 244	
	mov	 x27, x24	// id: 244, l: 245	
	mov	 x26, x0	// id: 245, l: 246	
	b	 .L152	// id: 246, l: 247	
	.p2align	2, , 3	// id: 247, l: 248	
.L393:	// id: 248, l: 249	
	ldr	 x4, [x28, x26]	// id: 249, l: 250	
	ldr	 x0, [x28]	// id: 250, l: 251	
	str	 x4, [x28]	// id: 251, l: 252	
	str	 x0, [x28, x26]	// id: 252, l: 253	
.L133:	// id: 253, l: 254	
	cmp	 x20, x27	// id: 254, l: 255	
	bcs	 .L154	// id: 255, l: 256	
.L152:	// id: 256, l: 257	
	mov	 x28, x27	// id: 257, l: 258	
	sub	 x27, x27, x25	// id: 258, l: 259	
	mov	 x1, x28	// id: 259, l: 260	
	mov	 x0, x27	// id: 260, l: 261	
	blr	 x21	// id: 261, l: 262	
	cmp	 w0, #0x0	// id: 262, l: 263	
	ble	 .L154	// id: 263, l: 264	
	cbz	 w23, .L393	// id: 264, l: 265	
	cbnz	 w19, .L134	// id: 265, l: 266	
	ldr	 w4, [x28, x26]	// id: 266, l: 267	
	cmp	 x20, x27	// id: 267, l: 268	
	ldr	 w0, [x28]	// id: 268, l: 269	
	str	 w4, [x28]	// id: 269, l: 270	
	str	 w0, [x28, x26]	// id: 270, l: 271	
	bcc	 .L152	// id: 271, l: 272	
.L154:	// id: 272, l: 273	
	ldr	 x0, [sp, #112]	// id: 273, l: 274	
	add	 x24, x24, x25	// id: 274, l: 275	
	cmp	 x24, x0	// id: 275, l: 276	
	bcc	 .L109	// id: 276, l: 277	
.L1:	// id: 277, l: 278	
	ldp	 x19, x20, [sp, #16]	// id: 278, l: 279	
	ldp	 x21, x22, [sp, #32]	// id: 279, l: 280	
	ldp	 x23, x24, [sp, #48]	// id: 280, l: 281	
	ldp	 x25, x26, [sp, #64]	// id: 281, l: 282	
	ldp	 x27, x28, [sp, #80]	// id: 282, l: 283	
	ldp	 x29, x30, [sp], #400	// id: 283, l: 284	
	.cfi_remember_state		// id: 284, l: 285	
	.cfi_restore	30	// id: 285, l: 286	
	.cfi_restore	29	// id: 286, l: 287	
	.cfi_restore	27	// id: 287, l: 288	
	.cfi_restore	28	// id: 288, l: 289	
	.cfi_restore	25	// id: 289, l: 290	
	.cfi_restore	26	// id: 290, l: 291	
	.cfi_restore	23	// id: 291, l: 292	
	.cfi_restore	24	// id: 292, l: 293	
	.cfi_restore	21	// id: 293, l: 294	
	.cfi_restore	22	// id: 294, l: 295	
	.cfi_restore	19	// id: 295, l: 296	
	.cfi_restore	20	// id: 296, l: 297	
	.cfi_def_cfa_offset	0	// id: 297, l: 298	
	ret		// id: 298, l: 299	
	.p2align	2, , 3	// id: 299, l: 300	
.L389:	// id: 300, l: 301	
	.cfi_restore_state		// id: 301, l: 302	
	cbnz	 w23, .L394	// id: 302, l: 303	
	ldr	 x5, [x27]	// id: 303, l: 304	
	ldr	 x0, [x20]	// id: 304, l: 305	
	str	 x5, [x20]	// id: 305, l: 306	
	str	 x0, [x27]	// id: 306, l: 307	
.L112:	// id: 307, l: 308	
	ldr	 x0, [sp, #104]	// id: 308, l: 309	
	add	 x27, x27, x19	// id: 309, l: 310	
	mov	 w24, #0x1                   	// #1	// id: 310, l: 311	
	add	 x4, x0, x20	// id: 311, l: 312	
	str	 x4, [sp, #112]	// id: 312, l: 313	
.L131:	// id: 313, l: 314	
	mov	 x20, x4	// id: 314, l: 315	
	cmp	 x27, x4	// id: 315, l: 316	
	bcs	 .L60	// id: 316, l: 317	
.L380:	// id: 317, l: 318	
	mov	 x0, x27	// id: 318, l: 319	
	mov	 x27, x28	// id: 319, l: 320	
	mov	 x28, x0	// id: 320, l: 321	
	mov	 x20, x25	// id: 321, l: 322	
	ldr	 x1, [sp, #104]	// id: 322, l: 323	
	ldr	 x0, [sp, #120]	// id: 323, l: 324	
	madd	 x19, x0, x1, x25	// id: 324, l: 325	
	cbz	 w24, .L395	// id: 325, l: 326	
	sub	 x4, x19, x27	// id: 326, l: 327	
	sub	 x24, x27, x28	// id: 327, l: 328	
	sub	 x2, x4, x1	// id: 328, l: 329	
	ldr	 x1, [sp, #112]	// id: 329, l: 330	
	ldr	 x0, [sp, #128]	// id: 330, l: 331	
	sub	 x1, x1, x0	// id: 331, l: 332	
	sub	 x0, x0, x25	// id: 332, l: 333	
	cmp	 x0, x1	// id: 333, l: 334	
	csel	 x0, x0, x1, le	// id: 334, l: 335	
	cmp	 x2, x24	// id: 335, l: 336	
	csel	 x3, x2, x24, le	// id: 336, l: 337	
	cbnz	 x0, .L396	// id: 337, l: 338	
	cbnz	 x3, .L170	// id: 338, l: 339	
.L177:	// id: 339, l: 340	
	ldr	 x0, [sp, #104]	// id: 340, l: 341	
	cmp	 x0, x1	// id: 341, l: 342	
	bcc	 .L397	// id: 342, l: 343	
.L172:	// id: 343, l: 344	
	ldr	 x0, [sp, #104]	// id: 344, l: 345	
	cmp	 x0, x24	// id: 345, l: 346	
	bcs	 .L1	// id: 346, l: 347	
	udiv	 x0, x24, x0	// id: 347, l: 348	
	sub	 x20, x19, x24	// id: 348, l: 349	
	mov	 w23, #0x2                   	// #2	// id: 349, l: 350	
	str	 x0, [sp, #120]	// id: 350, l: 351	
	ldr	 x0, [sp, #104]	// id: 351, l: 352	
	orr	 x0, x20, x0	// id: 352, l: 353	
	tst	 x0, #0x7	// id: 353, l: 354	
	bne	 .L3	// id: 354, l: 355	
.L383:	// id: 355, l: 356	
	ldr	 x1, [sp, #104]	// id: 356, l: 357	
	mov	 w26, #0x2                   	// #2	// id: 357, l: 358	
	cmp	 x1, #0x8	// id: 358, l: 359	
	cset	 w23, ne  // ne = any	// id: 359, l: 360	
	tst	 x0, #0x3	// id: 360, l: 361	
	bne	 .L4	// id: 361, l: 362	
.L384:	// id: 362, l: 363	
	ldr	 x0, [sp, #104]	// id: 363, l: 364	
	cmp	 x0, #0x4	// id: 364, l: 365	
	ldr	 x0, [sp, #120]	// id: 365, l: 366	
	cset	 w26, ne  // ne = any	// id: 366, l: 367	
	cmp	 x0, #0x6	// id: 367, l: 368	
	bhi	 .L5	// id: 368, l: 369	
.L385:	// id: 369, l: 370	
	ldr	 x25, [sp, #104]	// id: 370, l: 371	
	mov	 w19, w26	// id: 371, l: 372	
	add	 x26, x20, x25	// id: 372, l: 373	
	madd	 x0, x0, x25, x20	// id: 373, l: 374	
	str	 x0, [sp, #120]	// id: 374, l: 375	
	cmp	 x0, x26	// id: 375, l: 376	
	bls	 .L1	// id: 376, l: 377	
	ldr	 x1, [sp, #336]	// id: 377, l: 378	
	mov	 x0, #0x10                  	// #16	// id: 378, l: 379	
	sub	 x0, x0, x25	// id: 379, l: 380	
	str	 x0, [sp, #112]	// id: 380, l: 381	
	sub	 x1, x1, #0x6	// id: 381, l: 382	
	str	 x1, [sp, #128]	// id: 382, l: 383	
.L6:	// id: 383, l: 384	
	cmp	 x20, x26	// id: 384, l: 385	
	bcs	 .L30	// id: 385, l: 386	
	ldr	 x0, [sp, #176]	// id: 386, l: 387	
	neg	 x27, x25	// id: 387, l: 388	
	mov	 x24, x27	// id: 388, l: 389	
	mov	 x27, x26	// id: 389, l: 390	
	sub	 x0, x0, #0x6	// id: 390, l: 391	
	str	 x0, [sp, #104]	// id: 391, l: 392	
	b	 .L28	// id: 392, l: 393	
	.p2align	2, , 3	// id: 393, l: 394	
.L398:	// id: 394, l: 395	
	ldr	 x1, [x28, x24]	// id: 395, l: 396	
	ldr	 x0, [x28]	// id: 396, l: 397	
	str	 x1, [x28]	// id: 397, l: 398	
	str	 x0, [x28, x24]	// id: 398, l: 399	
.L9:	// id: 399, l: 400	
	cmp	 x20, x27	// id: 400, l: 401	
	bcs	 .L30	// id: 401, l: 402	
.L28:	// id: 402, l: 403	
	mov	 x28, x27	// id: 403, l: 404	
	sub	 x27, x27, x25	// id: 404, l: 405	
	mov	 x1, x28	// id: 405, l: 406	
	mov	 x0, x27	// id: 406, l: 407	
	blr	 x21	// id: 407, l: 408	
	cmp	 w0, #0x0	// id: 408, l: 409	
	ble	 .L30	// id: 409, l: 410	
	cbz	 w23, .L398	// id: 410, l: 411	
	cbnz	 w19, .L10	// id: 411, l: 412	
	ldr	 w1, [x28, x24]	// id: 412, l: 413	
	cmp	 x20, x27	// id: 413, l: 414	
	ldr	 w0, [x28]	// id: 414, l: 415	
	str	 w1, [x28]	// id: 415, l: 416	
	str	 w0, [x28, x24]	// id: 416, l: 417	
	bcc	 .L28	// id: 417, l: 418	
.L30:	// id: 418, l: 419	
	ldr	 x0, [sp, #120]	// id: 419, l: 420	
	add	 x26, x26, x25	// id: 420, l: 421	
	cmp	 x0, x26	// id: 421, l: 422	
	bhi	 .L6	// id: 422, l: 423	
	ldp	 x19, x20, [sp, #16]	// id: 423, l: 424	
	ldp	 x21, x22, [sp, #32]	// id: 424, l: 425	
	ldp	 x23, x24, [sp, #48]	// id: 425, l: 426	
	ldp	 x25, x26, [sp, #64]	// id: 426, l: 427	
	ldp	 x27, x28, [sp, #80]	// id: 427, l: 428	
	ldp	 x29, x30, [sp], #400	// id: 428, l: 429	
	.cfi_remember_state		// id: 429, l: 430	
	.cfi_restore	30	// id: 430, l: 431	
	.cfi_restore	29	// id: 431, l: 432	
	.cfi_restore	27	// id: 432, l: 433	
	.cfi_restore	28	// id: 433, l: 434	
	.cfi_restore	25	// id: 434, l: 435	
	.cfi_restore	26	// id: 435, l: 436	
	.cfi_restore	23	// id: 436, l: 437	
	.cfi_restore	24	// id: 437, l: 438	
	.cfi_restore	21	// id: 438, l: 439	
	.cfi_restore	22	// id: 439, l: 440	
	.cfi_restore	19	// id: 440, l: 441	
	.cfi_restore	20	// id: 441, l: 442	
	.cfi_def_cfa_offset	0	// id: 442, l: 443	
	ret		// id: 443, l: 444	
	.p2align	2, , 3	// id: 444, l: 445	
.L89:	// id: 445, l: 446	
	.cfi_restore_state		// id: 446, l: 447	
	add	 x0, x28, #0xf	// id: 447, l: 448	
	cmp	 w23, #0x1	// id: 448, l: 449	
	sub	 x0, x0, x27	// id: 449, l: 450	
	beq	 .L399	// id: 450, l: 451	
	cmp	 w26, #0x1	// id: 451, l: 452	
	beq	 .L400	// id: 452, l: 453	
	cmp	 x0, #0x1e	// id: 453, l: 454	
	ldr	 w0, [sp, #148]	// id: 454, l: 455	
	ccmp	 w0, #0xf, #0x4, hi  // hi = pmore	// id: 455, l: 456	
	ble	 .L220	// id: 456, l: 457	
	ldr	 x1, [sp, #200]	// id: 457, l: 458	
	mov	 x0, #0x0                   	// #0	// id: 458, l: 459	
	.p2align	3, , 7	// id: 459, l: 460	
.L103:	// id: 460, l: 461	
	ldr	 q1, [x28, x0]	// id: 461, l: 462	
	ldr	 q0, [x27, x0]	// id: 462, l: 463	
	str	 q1, [x27, x0]	// id: 463, l: 464	
	str	 q0, [x28, x0]	// id: 464, l: 465	
	add	 x0, x0, #0x10	// id: 465, l: 466	
	cmp	 x0, x1	// id: 466, l: 467	
	bne	 .L103	// id: 467, l: 468	
	ldp	 x0, x1, [sp, #184]	// id: 468, l: 469	
	cmp	 x0, x1	// id: 469, l: 470	
	add	 x4, x27, x1	// id: 470, l: 471	
	add	 x0, x28, x1	// id: 471, l: 472	
	beq	 .L88	// id: 472, l: 473	
	ldrb	 w6, [x28, x1]	// id: 473, l: 474	
	ldrb	 w5, [x27, x1]	// id: 474, l: 475	
	strb	 w6, [x27, x1]	// id: 475, l: 476	
	ldr	 x2, [sp, #208]	// id: 476, l: 477	
	strb	 w5, [x28, x1]	// id: 477, l: 478	
	cmp	 x2, #0x0	// id: 478, l: 479	
	ble	 .L88	// id: 479, l: 480	
	ldrb	 w6, [x0, #1]	// id: 480, l: 481	
	ldrb	 w5, [x4, #1]	// id: 481, l: 482	
	strb	 w6, [x4, #1]	// id: 482, l: 483	
	ldr	 x1, [sp, #216]	// id: 483, l: 484	
	strb	 w5, [x0, #1]	// id: 484, l: 485	
	cmp	 x1, #0x0	// id: 485, l: 486	
	ble	 .L88	// id: 486, l: 487	
	ldrb	 w6, [x0, #2]	// id: 487, l: 488	
	ldrb	 w5, [x4, #2]	// id: 488, l: 489	
	strb	 w6, [x4, #2]	// id: 489, l: 490	
	ldr	 x1, [sp, #224]	// id: 490, l: 491	
	strb	 w5, [x0, #2]	// id: 491, l: 492	
	cmp	 x1, #0x0	// id: 492, l: 493	
	ble	 .L88	// id: 493, l: 494	
	ldrb	 w6, [x0, #3]	// id: 494, l: 495	
	ldrb	 w5, [x4, #3]	// id: 495, l: 496	
	strb	 w6, [x4, #3]	// id: 496, l: 497	
	ldr	 x1, [sp, #272]	// id: 497, l: 498	
	strb	 w5, [x0, #3]	// id: 498, l: 499	
	cmp	 x1, #0x0	// id: 499, l: 500	
	ble	 .L88	// id: 500, l: 501	
	ldrb	 w6, [x0, #4]	// id: 501, l: 502	
	ldrb	 w5, [x4, #4]	// id: 502, l: 503	
	strb	 w6, [x4, #4]	// id: 503, l: 504	
	ldr	 x1, [sp, #280]	// id: 504, l: 505	
	strb	 w5, [x0, #4]	// id: 505, l: 506	
	cmp	 x1, #0x0	// id: 506, l: 507	
	ble	 .L88	// id: 507, l: 508	
	ldrb	 w6, [x0, #5]	// id: 508, l: 509	
	ldrb	 w5, [x4, #5]	// id: 509, l: 510	
	strb	 w6, [x4, #5]	// id: 510, l: 511	
	ldr	 x1, [sp, #296]	// id: 511, l: 512	
	strb	 w5, [x0, #5]	// id: 512, l: 513	
	cmp	 x1, #0x0	// id: 513, l: 514	
	ble	 .L88	// id: 514, l: 515	
	ldrb	 w6, [x0, #6]	// id: 515, l: 516	
	ldrb	 w5, [x4, #6]	// id: 516, l: 517	
	strb	 w6, [x4, #6]	// id: 517, l: 518	
	ldr	 x1, [sp, #312]	// id: 518, l: 519	
	strb	 w5, [x0, #6]	// id: 519, l: 520	
	cmp	 x1, #0x0	// id: 520, l: 521	
	ble	 .L88	// id: 521, l: 522	
	ldrb	 w6, [x0, #7]	// id: 522, l: 523	
	ldrb	 w5, [x4, #7]	// id: 523, l: 524	
	strb	 w6, [x4, #7]	// id: 524, l: 525	
	ldr	 x1, [sp, #328]	// id: 525, l: 526	
	strb	 w5, [x0, #7]	// id: 526, l: 527	
	cmp	 x1, #0x0	// id: 527, l: 528	
	ble	 .L88	// id: 528, l: 529	
	ldrb	 w6, [x0, #8]	// id: 529, l: 530	
	ldrb	 w5, [x4, #8]	// id: 530, l: 531	
	strb	 w6, [x4, #8]	// id: 531, l: 532	
	ldr	 x1, [sp, #344]	// id: 532, l: 533	
	strb	 w5, [x0, #8]	// id: 533, l: 534	
	cmp	 x1, #0x0	// id: 534, l: 535	
	ble	 .L88	// id: 535, l: 536	
	ldrb	 w6, [x0, #9]	// id: 536, l: 537	
	ldrb	 w5, [x4, #9]	// id: 537, l: 538	
	strb	 w6, [x4, #9]	// id: 538, l: 539	
	ldr	 x1, [sp, #352]	// id: 539, l: 540	
	strb	 w5, [x0, #9]	// id: 540, l: 541	
	cmp	 x1, #0x0	// id: 541, l: 542	
	ble	 .L88	// id: 542, l: 543	
	ldrb	 w6, [x0, #10]	// id: 543, l: 544	
	ldrb	 w5, [x4, #10]	// id: 544, l: 545	
	strb	 w6, [x4, #10]	// id: 545, l: 546	
	ldr	 x1, [sp, #360]	// id: 546, l: 547	
	strb	 w5, [x0, #10]	// id: 547, l: 548	
	cmp	 x1, #0x0	// id: 548, l: 549	
	ble	 .L88	// id: 549, l: 550	
	ldrb	 w6, [x0, #11]	// id: 550, l: 551	
	ldrb	 w5, [x4, #11]	// id: 551, l: 552	
	strb	 w6, [x4, #11]	// id: 552, l: 553	
	ldr	 x1, [sp, #376]	// id: 553, l: 554	
	strb	 w5, [x0, #11]	// id: 554, l: 555	
	cmp	 x1, #0x0	// id: 555, l: 556	
	ble	 .L88	// id: 556, l: 557	
	ldrb	 w6, [x0, #12]	// id: 557, l: 558	
	ldrb	 w5, [x4, #12]	// id: 558, l: 559	
	strb	 w6, [x4, #12]	// id: 559, l: 560	
	ldr	 x1, [sp, #384]	// id: 560, l: 561	
	strb	 w5, [x0, #12]	// id: 561, l: 562	
	cmp	 x1, #0x0	// id: 562, l: 563	
	ble	 .L88	// id: 563, l: 564	
	ldrb	 w6, [x0, #13]	// id: 564, l: 565	
	ldrb	 w5, [x4, #13]	// id: 565, l: 566	
	strb	 w6, [x4, #13]	// id: 566, l: 567	
	ldr	 x1, [sp, #392]	// id: 567, l: 568	
	strb	 w5, [x0, #13]	// id: 568, l: 569	
	cmp	 x1, #0x0	// id: 569, l: 570	
	ble	 .L88	// id: 570, l: 571	
	ldrb	 w6, [x0, #14]	// id: 571, l: 572	
	ldrb	 w5, [x4, #14]	// id: 572, l: 573	
	strb	 w6, [x4, #14]	// id: 573, l: 574	
	strb	 w5, [x0, #14]	// id: 574, l: 575	
	b	 .L88	// id: 575, l: 576	
	.p2align	2, , 3	// id: 576, l: 577	
.L394:	// id: 577, l: 578	
	cbnz	 w26, .L113	// id: 578, l: 579	
	ldr	 w5, [x27]	// id: 579, l: 580	
	ldr	 w0, [x20]	// id: 580, l: 581	
	str	 w5, [x20]	// id: 581, l: 582	
	str	 w0, [x27]	// id: 582, l: 583	
	b	 .L112	// id: 583, l: 584	
	.p2align	2, , 3	// id: 584, l: 585	
.L399:	// id: 585, l: 586	
	cmp	 x0, #0x1e	// id: 586, l: 587	
	mov	 x1, #0xfffffffffffffff9    	// #-7	// id: 587, l: 588	
	ldr	 x0, [sp, #136]	// id: 588, l: 589	
	movk	 x1, #0x7fff, lsl #48	// id: 589, l: 590	
	ccmp	 x0, x1, #0x2, hi  // hi = pmore	// id: 590, l: 591	
	mov	 x0, #0x0                   	// #0	// id: 591, l: 592	
	bhi	 .L218	// id: 592, l: 593	
	ldr	 x1, [sp, #168]	// id: 593, l: 594	
	.p2align	3, , 7	// id: 594, l: 595	
.L92:	// id: 595, l: 596	
	ldr	 q1, [x28, x0]	// id: 596, l: 597	
	ldr	 q0, [x27, x0]	// id: 597, l: 598	
	str	 q1, [x27, x0]	// id: 598, l: 599	
	str	 q0, [x28, x0]	// id: 599, l: 600	
	add	 x0, x0, #0x10	// id: 600, l: 601	
	cmp	 x1, x0	// id: 601, l: 602	
	bne	 .L92	// id: 602, l: 603	
	ldp	 x0, x1, [sp, #152]	// id: 603, l: 604	
	cmp	 x0, x1	// id: 604, l: 605	
	beq	 .L88	// id: 605, l: 606	
	ldr	 x4, [x28, x22]	// id: 606, l: 607	
	ldr	 x0, [x27, x22]	// id: 607, l: 608	
	str	 x4, [x27, x22]	// id: 608, l: 609	
	str	 x0, [x28, x22]	// id: 609, l: 610	
	b	 .L88	// id: 610, l: 611	
	.p2align	2, , 3	// id: 611, l: 612	
.L84:	// id: 612, l: 613	
	bne	 .L62	// id: 613, l: 614	
	cbnz	 w23, .L63	// id: 614, l: 615	
	ldr	 x1, [sp, #128]	// id: 615, l: 616	
	ldr	 x5, [x20]	// id: 616, l: 617	
	ldr	 x0, [x1]	// id: 617, l: 618	
	str	 x5, [x1]	// id: 618, l: 619	
	str	 x0, [x20]	// id: 619, l: 620	
.L64:	// id: 620, l: 621	
	ldr	 x1, [sp, #104]	// id: 621, l: 622	
	mov	 w24, #0x1                   	// #1	// id: 622, l: 623	
	ldr	 x0, [sp, #128]	// id: 623, l: 624	
	add	 x0, x0, x1	// id: 624, l: 625	
	str	 x0, [sp, #128]	// id: 625, l: 626	
.L62:	// id: 626, l: 627	
	ldr	 x0, [sp, #104]	// id: 627, l: 628	
	add	 x4, x0, x20	// id: 628, l: 629	
	str	 x4, [sp, #112]	// id: 629, l: 630	
	b	 .L131	// id: 630, l: 631	
	.p2align	2, , 3	// id: 631, l: 632	
.L400:	// id: 632, l: 633	
	cmp	 x0, #0x1e	// id: 633, l: 634	
	mov	 x1, #0xfffffffffffffff9    	// #-7	// id: 634, l: 635	
	ldr	 x0, [sp, #264]	// id: 635, l: 636	
	movk	 x1, #0x7fff, lsl #48	// id: 636, l: 637	
	ccmp	 x0, x1, #0x2, hi  // hi = pmore	// id: 637, l: 638	
	mov	 x0, #0x0                   	// #0	// id: 638, l: 639	
	bhi	 .L219	// id: 639, l: 640	
	ldr	 x1, [sp, #256]	// id: 640, l: 641	
	.p2align	3, , 7	// id: 641, l: 642	
.L97:	// id: 642, l: 643	
	ldr	 q1, [x28, x0]	// id: 643, l: 644	
	ldr	 q0, [x27, x0]	// id: 644, l: 645	
	str	 q1, [x27, x0]	// id: 645, l: 646	
	str	 q0, [x28, x0]	// id: 646, l: 647	
	add	 x0, x0, #0x10	// id: 647, l: 648	
	cmp	 x1, x0	// id: 648, l: 649	
	bne	 .L97	// id: 649, l: 650	
	ldp	 x0, x1, [sp, #232]	// id: 650, l: 651	
	cmp	 x0, x1	// id: 651, l: 652	
	ldr	 x1, [sp, #248]	// id: 652, l: 653	
	add	 x4, x27, x1	// id: 653, l: 654	
	add	 x0, x28, x1	// id: 654, l: 655	
	beq	 .L88	// id: 655, l: 656	
	ldr	 w6, [x28, x1]	// id: 656, l: 657	
	ldr	 w5, [x27, x1]	// id: 657, l: 658	
	str	 w6, [x27, x1]	// id: 658, l: 659	
	ldr	 x2, [sp, #288]	// id: 659, l: 660	
	str	 w5, [x28, x1]	// id: 660, l: 661	
	cmp	 x2, #0x0	// id: 661, l: 662	
	ble	 .L88	// id: 662, l: 663	
	ldr	 w6, [x0, #4]	// id: 663, l: 664	
	ldr	 w5, [x4, #4]	// id: 664, l: 665	
	str	 w6, [x4, #4]	// id: 665, l: 666	
	ldr	 x1, [sp, #304]	// id: 666, l: 667	
	str	 w5, [x0, #4]	// id: 667, l: 668	
	cmp	 x1, #0x0	// id: 668, l: 669	
	ble	 .L88	// id: 669, l: 670	
	ldr	 w6, [x0, #8]	// id: 670, l: 671	
	ldr	 w5, [x4, #8]	// id: 671, l: 672	
	str	 w6, [x4, #8]	// id: 672, l: 673	
	str	 w5, [x0, #8]	// id: 673, l: 674	
	b	 .L88	// id: 674, l: 675	
	.p2align	2, , 3	// id: 675, l: 676	
.L113:	// id: 676, l: 677	
	add	 x0, x27, #0xf	// id: 677, l: 678	
	cmp	 w23, #0x1	// id: 678, l: 679	
	sub	 x0, x0, x20	// id: 679, l: 680	
	beq	 .L401	// id: 680, l: 681	
	cmp	 w26, #0x1	// id: 681, l: 682	
	beq	 .L402	// id: 682, l: 683	
	cmp	 x0, #0x1e	// id: 683, l: 684	
	ldr	 w0, [sp, #148]	// id: 684, l: 685	
	ccmp	 w0, #0xf, #0x4, hi  // hi = pmore	// id: 685, l: 686	
	ble	 .L223	// id: 686, l: 687	
	ldr	 x1, [sp, #200]	// id: 687, l: 688	
	mov	 x0, #0x0                   	// #0	// id: 688, l: 689	
	.p2align	3, , 7	// id: 689, l: 690	
.L127:	// id: 690, l: 691	
	ldr	 q1, [x27, x0]	// id: 691, l: 692	
	ldr	 q0, [x20, x0]	// id: 692, l: 693	
	str	 q1, [x20, x0]	// id: 693, l: 694	
	str	 q0, [x27, x0]	// id: 694, l: 695	
	add	 x0, x0, #0x10	// id: 695, l: 696	
	cmp	 x1, x0	// id: 696, l: 697	
	bne	 .L127	// id: 697, l: 698	
	ldp	 x0, x1, [sp, #184]	// id: 698, l: 699	
	cmp	 x0, x1	// id: 699, l: 700	
	add	 x5, x20, x1	// id: 700, l: 701	
	add	 x0, x27, x1	// id: 701, l: 702	
	beq	 .L112	// id: 702, l: 703	
	ldrb	 w7, [x27, x1]	// id: 703, l: 704	
	ldrb	 w6, [x20, x1]	// id: 704, l: 705	
	strb	 w7, [x20, x1]	// id: 705, l: 706	
	ldr	 x2, [sp, #208]	// id: 706, l: 707	
	strb	 w6, [x27, x1]	// id: 707, l: 708	
	cmp	 x2, #0x0	// id: 708, l: 709	
	ble	 .L112	// id: 709, l: 710	
	ldrb	 w7, [x0, #1]	// id: 710, l: 711	
	ldrb	 w6, [x5, #1]	// id: 711, l: 712	
	strb	 w7, [x5, #1]	// id: 712, l: 713	
	ldr	 x1, [sp, #216]	// id: 713, l: 714	
	strb	 w6, [x0, #1]	// id: 714, l: 715	
	cmp	 x1, #0x0	// id: 715, l: 716	
	ble	 .L112	// id: 716, l: 717	
	ldrb	 w7, [x0, #2]	// id: 717, l: 718	
	ldrb	 w6, [x5, #2]	// id: 718, l: 719	
	strb	 w7, [x5, #2]	// id: 719, l: 720	
	ldr	 x1, [sp, #224]	// id: 720, l: 721	
	strb	 w6, [x0, #2]	// id: 721, l: 722	
	cmp	 x1, #0x0	// id: 722, l: 723	
	ble	 .L112	// id: 723, l: 724	
	ldrb	 w7, [x0, #3]	// id: 724, l: 725	
	ldrb	 w6, [x5, #3]	// id: 725, l: 726	
	strb	 w7, [x5, #3]	// id: 726, l: 727	
	ldr	 x1, [sp, #272]	// id: 727, l: 728	
	strb	 w6, [x0, #3]	// id: 728, l: 729	
	cmp	 x1, #0x0	// id: 729, l: 730	
	ble	 .L112	// id: 730, l: 731	
	ldrb	 w7, [x0, #4]	// id: 731, l: 732	
	ldrb	 w6, [x5, #4]	// id: 732, l: 733	
	strb	 w7, [x5, #4]	// id: 733, l: 734	
	ldr	 x1, [sp, #280]	// id: 734, l: 735	
	strb	 w6, [x0, #4]	// id: 735, l: 736	
	cmp	 x1, #0x0	// id: 736, l: 737	
	ble	 .L112	// id: 737, l: 738	
	ldrb	 w7, [x0, #5]	// id: 738, l: 739	
	ldrb	 w6, [x5, #5]	// id: 739, l: 740	
	strb	 w7, [x5, #5]	// id: 740, l: 741	
	ldr	 x1, [sp, #296]	// id: 741, l: 742	
	strb	 w6, [x0, #5]	// id: 742, l: 743	
	cmp	 x1, #0x0	// id: 743, l: 744	
	ble	 .L112	// id: 744, l: 745	
	ldrb	 w7, [x0, #6]	// id: 745, l: 746	
	ldrb	 w6, [x5, #6]	// id: 746, l: 747	
	strb	 w7, [x5, #6]	// id: 747, l: 748	
	ldr	 x1, [sp, #312]	// id: 748, l: 749	
	strb	 w6, [x0, #6]	// id: 749, l: 750	
	cmp	 x1, #0x0	// id: 750, l: 751	
	ble	 .L112	// id: 751, l: 752	
	ldrb	 w7, [x0, #7]	// id: 752, l: 753	
	ldrb	 w6, [x5, #7]	// id: 753, l: 754	
	strb	 w7, [x5, #7]	// id: 754, l: 755	
	ldr	 x1, [sp, #328]	// id: 755, l: 756	
	strb	 w6, [x0, #7]	// id: 756, l: 757	
	cmp	 x1, #0x0	// id: 757, l: 758	
	ble	 .L112	// id: 758, l: 759	
	ldrb	 w7, [x0, #8]	// id: 759, l: 760	
	ldrb	 w6, [x5, #8]	// id: 760, l: 761	
	strb	 w7, [x5, #8]	// id: 761, l: 762	
	ldr	 x1, [sp, #344]	// id: 762, l: 763	
	strb	 w6, [x0, #8]	// id: 763, l: 764	
	cmp	 x1, #0x0	// id: 764, l: 765	
	ble	 .L112	// id: 765, l: 766	
	ldrb	 w7, [x0, #9]	// id: 766, l: 767	
	ldrb	 w6, [x5, #9]	// id: 767, l: 768	
	strb	 w7, [x5, #9]	// id: 768, l: 769	
	ldr	 x1, [sp, #352]	// id: 769, l: 770	
	strb	 w6, [x0, #9]	// id: 770, l: 771	
	cmp	 x1, #0x0	// id: 771, l: 772	
	ble	 .L112	// id: 772, l: 773	
	ldrb	 w7, [x0, #10]	// id: 773, l: 774	
	ldrb	 w6, [x5, #10]	// id: 774, l: 775	
	strb	 w7, [x5, #10]	// id: 775, l: 776	
	ldr	 x1, [sp, #360]	// id: 776, l: 777	
	strb	 w6, [x0, #10]	// id: 777, l: 778	
	cmp	 x1, #0x0	// id: 778, l: 779	
	ble	 .L112	// id: 779, l: 780	
	ldrb	 w7, [x0, #11]	// id: 780, l: 781	
	ldrb	 w6, [x5, #11]	// id: 781, l: 782	
	strb	 w7, [x5, #11]	// id: 782, l: 783	
	ldr	 x1, [sp, #376]	// id: 783, l: 784	
	strb	 w6, [x0, #11]	// id: 784, l: 785	
	cmp	 x1, #0x0	// id: 785, l: 786	
	ble	 .L112	// id: 786, l: 787	
	ldrb	 w7, [x0, #12]	// id: 787, l: 788	
	ldrb	 w6, [x5, #12]	// id: 788, l: 789	
	strb	 w7, [x5, #12]	// id: 789, l: 790	
	ldr	 x1, [sp, #384]	// id: 790, l: 791	
	strb	 w6, [x0, #12]	// id: 791, l: 792	
	cmp	 x1, #0x0	// id: 792, l: 793	
	ble	 .L112	// id: 793, l: 794	
	ldrb	 w7, [x0, #13]	// id: 794, l: 795	
	ldrb	 w6, [x5, #13]	// id: 795, l: 796	
	strb	 w7, [x5, #13]	// id: 796, l: 797	
	ldr	 x1, [sp, #392]	// id: 797, l: 798	
	strb	 w6, [x0, #13]	// id: 798, l: 799	
	cmp	 x1, #0x0	// id: 799, l: 800	
	ble	 .L112	// id: 800, l: 801	
	ldrb	 w7, [x0, #14]	// id: 801, l: 802	
	ldrb	 w6, [x5, #14]	// id: 802, l: 803	
	strb	 w7, [x5, #14]	// id: 803, l: 804	
	strb	 w6, [x0, #14]	// id: 804, l: 805	
	b	 .L112	// id: 805, l: 806	
.L63:	// id: 806, l: 807	
	cbnz	 w26, .L65	// id: 807, l: 808	
	ldr	 x1, [sp, #128]	// id: 808, l: 809	
	ldr	 w5, [x20]	// id: 809, l: 810	
	ldr	 w0, [x1]	// id: 810, l: 811	
	str	 w5, [x1]	// id: 811, l: 812	
	str	 w0, [x20]	// id: 812, l: 813	
	b	 .L64	// id: 813, l: 814	
.L401:	// id: 814, l: 815	
	cmp	 x0, #0x1e	// id: 815, l: 816	
	mov	 x1, #0xfffffffffffffff9    	// #-7	// id: 816, l: 817	
	ldr	 x0, [sp, #136]	// id: 817, l: 818	
	movk	 x1, #0x7fff, lsl #48	// id: 818, l: 819	
	ccmp	 x0, x1, #0x2, hi  // hi = pmore	// id: 819, l: 820	
	mov	 x0, #0x0                   	// #0	// id: 820, l: 821	
	bhi	 .L221	// id: 821, l: 822	
	ldr	 x1, [sp, #168]	// id: 822, l: 823	
	.p2align	3, , 7	// id: 823, l: 824	
.L116:	// id: 824, l: 825	
	ldr	 q1, [x27, x0]	// id: 825, l: 826	
	ldr	 q0, [x20, x0]	// id: 826, l: 827	
	str	 q1, [x20, x0]	// id: 827, l: 828	
	str	 q0, [x27, x0]	// id: 828, l: 829	
	add	 x0, x0, #0x10	// id: 829, l: 830	
	cmp	 x1, x0	// id: 830, l: 831	
	bne	 .L116	// id: 831, l: 832	
	ldp	 x0, x1, [sp, #152]	// id: 832, l: 833	
	cmp	 x0, x1	// id: 833, l: 834	
	beq	 .L112	// id: 834, l: 835	
	ldr	 x5, [x27, x22]	// id: 835, l: 836	
	ldr	 x0, [x20, x22]	// id: 836, l: 837	
	str	 x5, [x20, x22]	// id: 837, l: 838	
	str	 x0, [x27, x22]	// id: 838, l: 839	
	b	 .L112	// id: 839, l: 840	
.L218:	// id: 840, l: 841	
	ldr	 x3, [sp, #176]	// id: 841, l: 842	
	.p2align	3, , 7	// id: 842, l: 843	
.L91:	// id: 843, l: 844	
	ldr	 x2, [x28, x0, lsl #3]	// id: 844, l: 845	
	ldr	 x1, [x27, x0, lsl #3]	// id: 845, l: 846	
	str	 x2, [x27, x0, lsl #3]	// id: 846, l: 847	
	str	 x1, [x28, x0, lsl #3]	// id: 847, l: 848	
	add	 x0, x0, #0x1	// id: 848, l: 849	
	sub	 x1, x3, x0	// id: 849, l: 850	
	cmp	 x1, #0x0	// id: 850, l: 851	
	bgt	 .L91	// id: 851, l: 852	
	b	 .L88	// id: 852, l: 853	
.L134:	// id: 853, l: 854	
	cmp	 w23, #0x1	// id: 854, l: 855	
	ldr	 x0, [sp, #104]	// id: 855, l: 856	
	beq	 .L403	// id: 856, l: 857	
	cmp	 w19, #0x1	// id: 857, l: 858	
	beq	 .L404	// id: 858, l: 859	
	cmp	 x0, #0x0	// id: 859, l: 860	
	add	 x0, x28, #0x10	// id: 860, l: 861	
	ccmp	 x27, x0, #0x2, gt	// id: 861, l: 862	
	ldr	 w0, [sp, #148]	// id: 862, l: 863	
	ccmp	 w0, #0xf, #0x4, cs  // cs = hs, nlast	// id: 863, l: 864	
	ble	 .L226	// id: 864, l: 865	
	ldr	 x1, [sp, #200]	// id: 865, l: 866	
	mov	 x0, #0x0                   	// #0	// id: 866, l: 867	
	.p2align	3, , 7	// id: 867, l: 868	
.L148:	// id: 868, l: 869	
	ldr	 q1, [x27, x0]	// id: 869, l: 870	
	ldr	 q0, [x28, x0]	// id: 870, l: 871	
	str	 q1, [x28, x0]	// id: 871, l: 872	
	str	 q0, [x27, x0]	// id: 872, l: 873	
	add	 x0, x0, #0x10	// id: 873, l: 874	
	cmp	 x0, x1	// id: 874, l: 875	
	bne	 .L148	// id: 875, l: 876	
	ldp	 x0, x1, [sp, #184]	// id: 876, l: 877	
	cmp	 x0, x1	// id: 877, l: 878	
	add	 x4, x28, x1	// id: 878, l: 879	
	add	 x0, x27, x1	// id: 879, l: 880	
	beq	 .L133	// id: 880, l: 881	
	ldrb	 w6, [x27, x1]	// id: 881, l: 882	
	ldrb	 w5, [x28, x1]	// id: 882, l: 883	
	strb	 w6, [x28, x1]	// id: 883, l: 884	
	ldr	 x2, [sp, #208]	// id: 884, l: 885	
	strb	 w5, [x27, x1]	// id: 885, l: 886	
	cmp	 x2, #0x0	// id: 886, l: 887	
	ble	 .L133	// id: 887, l: 888	
	ldr	 x1, [sp, #216]	// id: 888, l: 889	
	ldrb	 w5, [x0, #1]	// id: 889, l: 890	
	cmp	 x1, #0x0	// id: 890, l: 891	
	ldrb	 w1, [x4, #1]	// id: 891, l: 892	
	strb	 w5, [x4, #1]	// id: 892, l: 893	
	strb	 w1, [x0, #1]	// id: 893, l: 894	
	ble	 .L133	// id: 894, l: 895	
	ldr	 x1, [sp, #224]	// id: 895, l: 896	
	ldrb	 w5, [x0, #2]	// id: 896, l: 897	
	cmp	 x1, #0x0	// id: 897, l: 898	
	ldrb	 w1, [x4, #2]	// id: 898, l: 899	
	strb	 w5, [x4, #2]	// id: 899, l: 900	
	strb	 w1, [x0, #2]	// id: 900, l: 901	
	ble	 .L133	// id: 901, l: 902	
	ldr	 x1, [sp, #272]	// id: 902, l: 903	
	ldrb	 w5, [x0, #3]	// id: 903, l: 904	
	cmp	 x1, #0x0	// id: 904, l: 905	
	ldrb	 w1, [x4, #3]	// id: 905, l: 906	
	strb	 w5, [x4, #3]	// id: 906, l: 907	
	strb	 w1, [x0, #3]	// id: 907, l: 908	
	ble	 .L133	// id: 908, l: 909	
	ldr	 x1, [sp, #280]	// id: 909, l: 910	
	ldrb	 w5, [x0, #4]	// id: 910, l: 911	
	cmp	 x1, #0x0	// id: 911, l: 912	
	ldrb	 w1, [x4, #4]	// id: 912, l: 913	
	strb	 w5, [x4, #4]	// id: 913, l: 914	
	strb	 w1, [x0, #4]	// id: 914, l: 915	
	ble	 .L133	// id: 915, l: 916	
	ldr	 x1, [sp, #296]	// id: 916, l: 917	
	ldrb	 w5, [x0, #5]	// id: 917, l: 918	
	cmp	 x1, #0x0	// id: 918, l: 919	
	ldrb	 w1, [x4, #5]	// id: 919, l: 920	
	strb	 w5, [x4, #5]	// id: 920, l: 921	
	strb	 w1, [x0, #5]	// id: 921, l: 922	
	ble	 .L133	// id: 922, l: 923	
	ldr	 x1, [sp, #312]	// id: 923, l: 924	
	ldrb	 w5, [x0, #6]	// id: 924, l: 925	
	cmp	 x1, #0x0	// id: 925, l: 926	
	ldrb	 w1, [x4, #6]	// id: 926, l: 927	
	strb	 w5, [x4, #6]	// id: 927, l: 928	
	strb	 w1, [x0, #6]	// id: 928, l: 929	
	ble	 .L133	// id: 929, l: 930	
	ldr	 x1, [sp, #328]	// id: 930, l: 931	
	ldrb	 w5, [x0, #7]	// id: 931, l: 932	
	cmp	 x1, #0x0	// id: 932, l: 933	
	ldrb	 w1, [x4, #7]	// id: 933, l: 934	
	strb	 w5, [x4, #7]	// id: 934, l: 935	
	strb	 w1, [x0, #7]	// id: 935, l: 936	
	ble	 .L133	// id: 936, l: 937	
	ldr	 x1, [sp, #344]	// id: 937, l: 938	
	ldrb	 w5, [x0, #8]	// id: 938, l: 939	
	cmp	 x1, #0x0	// id: 939, l: 940	
	ldrb	 w1, [x4, #8]	// id: 940, l: 941	
	strb	 w5, [x4, #8]	// id: 941, l: 942	
	strb	 w1, [x0, #8]	// id: 942, l: 943	
	ble	 .L133	// id: 943, l: 944	
	ldr	 x1, [sp, #352]	// id: 944, l: 945	
	ldrb	 w5, [x0, #9]	// id: 945, l: 946	
	cmp	 x1, #0x0	// id: 946, l: 947	
	ldrb	 w1, [x4, #9]	// id: 947, l: 948	
	strb	 w5, [x4, #9]	// id: 948, l: 949	
	strb	 w1, [x0, #9]	// id: 949, l: 950	
	ble	 .L133	// id: 950, l: 951	
	ldr	 x1, [sp, #360]	// id: 951, l: 952	
	ldrb	 w5, [x0, #10]	// id: 952, l: 953	
	cmp	 x1, #0x0	// id: 953, l: 954	
	ldrb	 w1, [x4, #10]	// id: 954, l: 955	
	strb	 w5, [x4, #10]	// id: 955, l: 956	
	strb	 w1, [x0, #10]	// id: 956, l: 957	
	ble	 .L133	// id: 957, l: 958	
	ldr	 x1, [sp, #376]	// id: 958, l: 959	
	ldrb	 w5, [x0, #11]	// id: 959, l: 960	
	cmp	 x1, #0x0	// id: 960, l: 961	
	ldrb	 w1, [x4, #11]	// id: 961, l: 962	
	strb	 w5, [x4, #11]	// id: 962, l: 963	
	strb	 w1, [x0, #11]	// id: 963, l: 964	
	ble	 .L133	// id: 964, l: 965	
	ldr	 x1, [sp, #384]	// id: 965, l: 966	
	ldrb	 w5, [x0, #12]	// id: 966, l: 967	
	cmp	 x1, #0x0	// id: 967, l: 968	
	ldrb	 w1, [x4, #12]	// id: 968, l: 969	
	strb	 w5, [x4, #12]	// id: 969, l: 970	
	strb	 w1, [x0, #12]	// id: 970, l: 971	
	ble	 .L133	// id: 971, l: 972	
	ldr	 x1, [sp, #392]	// id: 972, l: 973	
	ldrb	 w5, [x0, #13]	// id: 973, l: 974	
	cmp	 x1, #0x0	// id: 974, l: 975	
	ldrb	 w1, [x4, #13]	// id: 975, l: 976	
	strb	 w5, [x4, #13]	// id: 976, l: 977	
	strb	 w1, [x0, #13]	// id: 977, l: 978	
	ble	 .L133	// id: 978, l: 979	
	ldrb	 w5, [x0, #14]	// id: 979, l: 980	
	ldrb	 w1, [x4, #14]	// id: 980, l: 981	
	strb	 w5, [x4, #14]	// id: 981, l: 982	
	strb	 w1, [x0, #14]	// id: 982, l: 983	
	b	 .L133	// id: 983, l: 984	
	.p2align	2, , 3	// id: 984, l: 985	
.L220:	// id: 985, l: 986	
	ldr	 x4, [sp, #368]	// id: 986, l: 987	
	mov	 x0, #0x0                   	// #0	// id: 987, l: 988	
	.p2align	3, , 7	// id: 988, l: 989	
.L102:	// id: 989, l: 990	
	ldrb	 w2, [x28, x0]	// id: 990, l: 991	
	sub	 x4, x4, #0x1	// id: 991, l: 992	
	ldrb	 w1, [x27, x0]	// id: 992, l: 993	
	cmp	 x4, #0x0	// id: 993, l: 994	
	strb	 w2, [x27, x0]	// id: 994, l: 995	
	strb	 w1, [x28, x0]	// id: 995, l: 996	
	add	 x0, x0, #0x1	// id: 996, l: 997	
	bgt	 .L102	// id: 997, l: 998	
	b	 .L88	// id: 998, l: 999	
.L403:	// id: 999, l: 1000	
	cmp	 x0, #0x0	// id: 1000, l: 1001	
	add	 x0, x28, #0x10	// id: 1001, l: 1002	
	ccmp	 x27, x0, #0x2, gt	// id: 1002, l: 1003	
	mov	 x1, #0xfffffffffffffff9    	// #-7	// id: 1003, l: 1004	
	ldr	 x0, [sp, #120]	// id: 1004, l: 1005	
	movk	 x1, #0x7fff, lsl #48	// id: 1005, l: 1006	
	ccmp	 x0, x1, #0x2, cs  // cs = hs, nlast	// id: 1006, l: 1007	
	mov	 x0, #0x0                   	// #0	// id: 1007, l: 1008	
	bhi	 .L224	// id: 1008, l: 1009	
	ldr	 x1, [sp, #168]	// id: 1009, l: 1010	
	.p2align	3, , 7	// id: 1010, l: 1011	
.L137:	// id: 1011, l: 1012	
	ldr	 q1, [x27, x0]	// id: 1012, l: 1013	
	ldr	 q0, [x28, x0]	// id: 1013, l: 1014	
	str	 q1, [x28, x0]	// id: 1014, l: 1015	
	str	 q0, [x27, x0]	// id: 1015, l: 1016	
	add	 x0, x0, #0x10	// id: 1016, l: 1017	
	cmp	 x0, x1	// id: 1017, l: 1018	
	bne	 .L137	// id: 1018, l: 1019	
	ldp	 x0, x1, [sp, #152]	// id: 1019, l: 1020	
	cmp	 x0, x1	// id: 1020, l: 1021	
	beq	 .L133	// id: 1021, l: 1022	
	ldr	 x4, [x27, x22]	// id: 1022, l: 1023	
	ldr	 x0, [x28, x22]	// id: 1023, l: 1024	
	str	 x4, [x28, x22]	// id: 1024, l: 1025	
	str	 x0, [x27, x22]	// id: 1025, l: 1026	
	b	 .L133	// id: 1026, l: 1027	
.L402:	// id: 1027, l: 1028	
	cmp	 x0, #0x1e	// id: 1028, l: 1029	
	mov	 x1, #0xfffffffffffffff9    	// #-7	// id: 1029, l: 1030	
	ldr	 x0, [sp, #264]	// id: 1030, l: 1031	
	movk	 x1, #0x7fff, lsl #48	// id: 1031, l: 1032	
	ccmp	 x0, x1, #0x2, hi  // hi = pmore	// id: 1032, l: 1033	
	mov	 x0, #0x0                   	// #0	// id: 1033, l: 1034	
	bhi	 .L222	// id: 1034, l: 1035	
	ldr	 x1, [sp, #256]	// id: 1035, l: 1036	
	.p2align	3, , 7	// id: 1036, l: 1037	
.L121:	// id: 1037, l: 1038	
	ldr	 q1, [x27, x0]	// id: 1038, l: 1039	
	ldr	 q0, [x20, x0]	// id: 1039, l: 1040	
	str	 q1, [x20, x0]	// id: 1040, l: 1041	
	str	 q0, [x27, x0]	// id: 1041, l: 1042	
	add	 x0, x0, #0x10	// id: 1042, l: 1043	
	cmp	 x1, x0	// id: 1043, l: 1044	
	bne	 .L121	// id: 1044, l: 1045	
	ldp	 x0, x1, [sp, #232]	// id: 1045, l: 1046	
	cmp	 x0, x1	// id: 1046, l: 1047	
	ldr	 x1, [sp, #248]	// id: 1047, l: 1048	
	add	 x5, x20, x1	// id: 1048, l: 1049	
	add	 x0, x27, x1	// id: 1049, l: 1050	
	beq	 .L112	// id: 1050, l: 1051	
	ldr	 w7, [x27, x1]	// id: 1051, l: 1052	
	ldr	 w6, [x20, x1]	// id: 1052, l: 1053	
	str	 w7, [x20, x1]	// id: 1053, l: 1054	
	ldr	 x2, [sp, #288]	// id: 1054, l: 1055	
	str	 w6, [x27, x1]	// id: 1055, l: 1056	
	cmp	 x2, #0x0	// id: 1056, l: 1057	
	ble	 .L112	// id: 1057, l: 1058	
	ldr	 w7, [x0, #4]	// id: 1058, l: 1059	
	ldr	 w6, [x5, #4]	// id: 1059, l: 1060	
	str	 w7, [x5, #4]	// id: 1060, l: 1061	
	ldr	 x1, [sp, #304]	// id: 1061, l: 1062	
	str	 w6, [x0, #4]	// id: 1062, l: 1063	
	cmp	 x1, #0x0	// id: 1063, l: 1064	
	ble	 .L112	// id: 1064, l: 1065	
	ldr	 w7, [x0, #8]	// id: 1065, l: 1066	
	ldr	 w6, [x5, #8]	// id: 1066, l: 1067	
	str	 w7, [x5, #8]	// id: 1067, l: 1068	
	str	 w6, [x0, #8]	// id: 1068, l: 1069	
	b	 .L112	// id: 1069, l: 1070	
.L397:	// id: 1070, l: 1071	
	udiv	 x1, x1, x0	// id: 1071, l: 1072	
	mov	 x2, x0	// id: 1072, l: 1073	
	mov	 x3, x21	// id: 1073, l: 1074	
	mov	 x0, x20	// id: 1074, l: 1075	
	bl	 spec_qsort	// id: 1075, l: 1076	
	b	 .L172	// id: 1076, l: 1077	
.L219:	// id: 1077, l: 1078	
	ldr	 x3, [sp, #336]	// id: 1078, l: 1079	
	.p2align	3, , 7	// id: 1079, l: 1080	
.L96:	// id: 1080, l: 1081	
	ldr	 w2, [x28, x0, lsl #2]	// id: 1081, l: 1082	
	ldr	 w1, [x27, x0, lsl #2]	// id: 1082, l: 1083	
	str	 w2, [x27, x0, lsl #2]	// id: 1083, l: 1084	
	str	 w1, [x28, x0, lsl #2]	// id: 1084, l: 1085	
	add	 x0, x0, #0x1	// id: 1085, l: 1086	
	sub	 x1, x3, x0	// id: 1086, l: 1087	
	cmp	 x1, #0x0	// id: 1087, l: 1088	
	bgt	 .L96	// id: 1088, l: 1089	
	b	 .L88	// id: 1089, l: 1090	
.L396:	// id: 1090, l: 1091	
	ldr	 x2, [sp, #112]	// id: 1091, l: 1092	
	cmp	 w23, #0x2	// id: 1092, l: 1093	
	sub	 x4, x2, x0	// id: 1093, l: 1094	
	bne	 .L405	// id: 1094, l: 1095	
	cmp	 w26, #0x2	// id: 1095, l: 1096	
	bne	 .L406	// id: 1096, l: 1097	
	sub	 x2, x2, x0	// id: 1097, l: 1098	
	add	 x6, x25, #0x10	// id: 1098, l: 1099	
	add	 x2, x2, #0x10	// id: 1099, l: 1100	
	sxtw	 x5, w0	// id: 1100, l: 1101	
	cmp	 x25, x2	// id: 1101, l: 1102	
	ccmp	 x4, x6, #0x2, cc  // cc = lo, ul, last	// id: 1102, l: 1103	
	ccmp	 w0, #0xf, #0x4, cs  // cs = hs, nlast	// id: 1103, l: 1104	
	ble	 .L229	// id: 1104, l: 1105	
	cmp	 w0, #0x0	// id: 1105, l: 1106	
	mov	 x0, #0x0                   	// #0	// id: 1106, l: 1107	
	csinc	 x7, x5, xzr, gt	// id: 1107, l: 1108	
	and	 x2, x7, #0xfffffffffffffff0	// id: 1108, l: 1109	
.L167:	// id: 1109, l: 1110	
	ldr	 q1, [x4, x0]	// id: 1110, l: 1111	
	ldr	 q0, [x20, x0]	// id: 1111, l: 1112	
	str	 q1, [x20, x0]	// id: 1112, l: 1113	
	str	 q0, [x4, x0]	// id: 1113, l: 1114	
	add	 x0, x0, #0x10	// id: 1114, l: 1115	
	cmp	 x0, x2	// id: 1115, l: 1116	
	bne	 .L167	// id: 1116, l: 1117	
	and	 x6, x7, #0xfffffffffffffff0	// id: 1117, l: 1118	
	sub	 x5, x5, x6	// id: 1118, l: 1119	
	cmp	 x7, x6	// id: 1119, l: 1120	
	add	 x2, x20, x6	// id: 1120, l: 1121	
	add	 x0, x4, x6	// id: 1121, l: 1122	
	beq	 .L169	// id: 1122, l: 1123	
	ldrb	 w9, [x4, x6]	// id: 1123, l: 1124	
	sub	 x7, x5, #0x1	// id: 1124, l: 1125	
	ldrb	 w8, [x20, x6]	// id: 1125, l: 1126	
	cmp	 x7, #0x0	// id: 1126, l: 1127	
	strb	 w9, [x20, x6]	// id: 1127, l: 1128	
	strb	 w8, [x4, x6]	// id: 1128, l: 1129	
	ble	 .L169	// id: 1129, l: 1130	
	ldrb	 w6, [x0, #1]	// id: 1130, l: 1131	
	cmp	 x5, #0x2	// id: 1131, l: 1132	
	ldrb	 w4, [x2, #1]	// id: 1132, l: 1133	
	strb	 w6, [x2, #1]	// id: 1133, l: 1134	
	strb	 w4, [x0, #1]	// id: 1134, l: 1135	
	beq	 .L169	// id: 1135, l: 1136	
	ldrb	 w6, [x0, #2]	// id: 1136, l: 1137	
	cmp	 x5, #0x3	// id: 1137, l: 1138	
	ldrb	 w4, [x2, #2]	// id: 1138, l: 1139	
	strb	 w6, [x2, #2]	// id: 1139, l: 1140	
	strb	 w4, [x0, #2]	// id: 1140, l: 1141	
	beq	 .L169	// id: 1141, l: 1142	
	ldrb	 w6, [x0, #3]	// id: 1142, l: 1143	
	cmp	 x5, #0x4	// id: 1143, l: 1144	
	ldrb	 w4, [x2, #3]	// id: 1144, l: 1145	
	strb	 w6, [x2, #3]	// id: 1145, l: 1146	
	strb	 w4, [x0, #3]	// id: 1146, l: 1147	
	beq	 .L169	// id: 1147, l: 1148	
	ldrb	 w6, [x0, #4]	// id: 1148, l: 1149	
	cmp	 x5, #0x5	// id: 1149, l: 1150	
	ldrb	 w4, [x2, #4]	// id: 1150, l: 1151	
	strb	 w6, [x2, #4]	// id: 1151, l: 1152	
	strb	 w4, [x0, #4]	// id: 1152, l: 1153	
	beq	 .L169	// id: 1153, l: 1154	
	ldrb	 w6, [x0, #5]	// id: 1154, l: 1155	
	cmp	 x5, #0x6	// id: 1155, l: 1156	
	ldrb	 w4, [x2, #5]	// id: 1156, l: 1157	
	strb	 w6, [x2, #5]	// id: 1157, l: 1158	
	strb	 w4, [x0, #5]	// id: 1158, l: 1159	
	beq	 .L169	// id: 1159, l: 1160	
	ldrb	 w6, [x0, #6]	// id: 1160, l: 1161	
	cmp	 x5, #0x7	// id: 1161, l: 1162	
	ldrb	 w4, [x2, #6]	// id: 1162, l: 1163	
	strb	 w6, [x2, #6]	// id: 1163, l: 1164	
	strb	 w4, [x0, #6]	// id: 1164, l: 1165	
	beq	 .L169	// id: 1165, l: 1166	
	ldrb	 w6, [x0, #7]	// id: 1166, l: 1167	
	cmp	 x5, #0x8	// id: 1167, l: 1168	
	ldrb	 w4, [x2, #7]	// id: 1168, l: 1169	
	strb	 w6, [x2, #7]	// id: 1169, l: 1170	
	strb	 w4, [x0, #7]	// id: 1170, l: 1171	
	beq	 .L169	// id: 1171, l: 1172	
	ldrb	 w6, [x0, #8]	// id: 1172, l: 1173	
	cmp	 x5, #0x9	// id: 1173, l: 1174	
	ldrb	 w4, [x2, #8]	// id: 1174, l: 1175	
	strb	 w6, [x2, #8]	// id: 1175, l: 1176	
	strb	 w4, [x0, #8]	// id: 1176, l: 1177	
	beq	 .L169	// id: 1177, l: 1178	
	ldrb	 w6, [x0, #9]	// id: 1178, l: 1179	
	cmp	 x5, #0xa	// id: 1179, l: 1180	
	ldrb	 w4, [x2, #9]	// id: 1180, l: 1181	
	strb	 w6, [x2, #9]	// id: 1181, l: 1182	
	strb	 w4, [x0, #9]	// id: 1182, l: 1183	
	beq	 .L169	// id: 1183, l: 1184	
	ldrb	 w6, [x0, #10]	// id: 1184, l: 1185	
	cmp	 x5, #0xb	// id: 1185, l: 1186	
	ldrb	 w4, [x2, #10]	// id: 1186, l: 1187	
	strb	 w6, [x2, #10]	// id: 1187, l: 1188	
	strb	 w4, [x0, #10]	// id: 1188, l: 1189	
	beq	 .L169	// id: 1189, l: 1190	
	ldrb	 w6, [x0, #11]	// id: 1190, l: 1191	
	cmp	 x5, #0xc	// id: 1191, l: 1192	
	ldrb	 w4, [x2, #11]	// id: 1192, l: 1193	
	strb	 w6, [x2, #11]	// id: 1193, l: 1194	
	strb	 w4, [x0, #11]	// id: 1194, l: 1195	
	beq	 .L169	// id: 1195, l: 1196	
	ldrb	 w6, [x0, #12]	// id: 1196, l: 1197	
	cmp	 x5, #0xd	// id: 1197, l: 1198	
	ldrb	 w4, [x2, #12]	// id: 1198, l: 1199	
	strb	 w6, [x2, #12]	// id: 1199, l: 1200	
	strb	 w4, [x0, #12]	// id: 1200, l: 1201	
	beq	 .L169	// id: 1201, l: 1202	
	ldrb	 w6, [x0, #13]	// id: 1202, l: 1203	
	cmp	 x5, #0xe	// id: 1203, l: 1204	
	ldrb	 w4, [x2, #13]	// id: 1204, l: 1205	
	strb	 w6, [x2, #13]	// id: 1205, l: 1206	
	strb	 w4, [x0, #13]	// id: 1206, l: 1207	
	beq	 .L169	// id: 1207, l: 1208	
	ldrb	 w5, [x0, #14]	// id: 1208, l: 1209	
	ldrb	 w4, [x2, #14]	// id: 1209, l: 1210	
	strb	 w5, [x2, #14]	// id: 1210, l: 1211	
	strb	 w4, [x0, #14]	// id: 1211, l: 1212	
.L169:	// id: 1212, l: 1213	
	cbz	 x3, .L177	// id: 1213, l: 1214	
.L419:	// id: 1214, l: 1215	
	sub	 x4, x19, x3	// id: 1215, l: 1216	
	mov	 w2, w3	// id: 1216, l: 1217	
.L180:	// id: 1217, l: 1218	
	ldr	 x5, [sp, #112]	// id: 1218, l: 1219	
	add	 x0, x4, #0xf	// id: 1219, l: 1220	
	sxtw	 x3, w2	// id: 1220, l: 1221	
	sub	 x0, x0, x5	// id: 1221, l: 1222	
	cmp	 x0, #0x1e	// id: 1222, l: 1223	
	ccmp	 w2, #0xf, #0x4, hi  // hi = pmore	// id: 1223, l: 1224	
	ble	 .L232	// id: 1224, l: 1225	
	cmp	 w2, #0x0	// id: 1225, l: 1226	
	mov	 x0, #0x0                   	// #0	// id: 1226, l: 1227	
	csinc	 x6, x3, xzr, gt	// id: 1227, l: 1228	
	and	 x2, x6, #0xfffffffffffffff0	// id: 1228, l: 1229	
.L187:	// id: 1229, l: 1230	
	ldr	 q1, [x4, x0]	// id: 1230, l: 1231	
	ldr	 q0, [x5, x0]	// id: 1231, l: 1232	
	str	 q1, [x5, x0]	// id: 1232, l: 1233	
	str	 q0, [x4, x0]	// id: 1233, l: 1234	
	add	 x0, x0, #0x10	// id: 1234, l: 1235	
	cmp	 x2, x0	// id: 1235, l: 1236	
	bne	 .L187	// id: 1236, l: 1237	
	ldr	 x9, [sp, #112]	// id: 1237, l: 1238	
	and	 x5, x6, #0xfffffffffffffff0	// id: 1238, l: 1239	
	sub	 x3, x3, x5	// id: 1239, l: 1240	
	cmp	 x6, x5	// id: 1240, l: 1241	
	add	 x0, x4, x5	// id: 1241, l: 1242	
	add	 x2, x9, x5	// id: 1242, l: 1243	
	beq	 .L177	// id: 1243, l: 1244	
	ldrb	 w8, [x4, x5]	// id: 1244, l: 1245	
	sub	 x6, x3, #0x1	// id: 1245, l: 1246	
	ldrb	 w7, [x9, x5]	// id: 1246, l: 1247	
	cmp	 x6, #0x0	// id: 1247, l: 1248	
	strb	 w8, [x9, x5]	// id: 1248, l: 1249	
	strb	 w7, [x4, x5]	// id: 1249, l: 1250	
	ble	 .L177	// id: 1250, l: 1251	
	ldrb	 w5, [x0, #1]	// id: 1251, l: 1252	
	cmp	 x3, #0x2	// id: 1252, l: 1253	
	ldrb	 w4, [x2, #1]	// id: 1253, l: 1254	
	strb	 w5, [x2, #1]	// id: 1254, l: 1255	
	strb	 w4, [x0, #1]	// id: 1255, l: 1256	
	beq	 .L177	// id: 1256, l: 1257	
	ldrb	 w5, [x0, #2]	// id: 1257, l: 1258	
	cmp	 x3, #0x3	// id: 1258, l: 1259	
	ldrb	 w4, [x2, #2]	// id: 1259, l: 1260	
	strb	 w5, [x2, #2]	// id: 1260, l: 1261	
	strb	 w4, [x0, #2]	// id: 1261, l: 1262	
	beq	 .L177	// id: 1262, l: 1263	
	ldrb	 w5, [x0, #3]	// id: 1263, l: 1264	
	cmp	 x3, #0x4	// id: 1264, l: 1265	
	ldrb	 w4, [x2, #3]	// id: 1265, l: 1266	
	strb	 w5, [x2, #3]	// id: 1266, l: 1267	
	strb	 w4, [x0, #3]	// id: 1267, l: 1268	
	beq	 .L177	// id: 1268, l: 1269	
	ldrb	 w5, [x0, #4]	// id: 1269, l: 1270	
	cmp	 x3, #0x5	// id: 1270, l: 1271	
	ldrb	 w4, [x2, #4]	// id: 1271, l: 1272	
	strb	 w5, [x2, #4]	// id: 1272, l: 1273	
	strb	 w4, [x0, #4]	// id: 1273, l: 1274	
	beq	 .L177	// id: 1274, l: 1275	
	ldrb	 w5, [x0, #5]	// id: 1275, l: 1276	
	cmp	 x3, #0x6	// id: 1276, l: 1277	
	ldrb	 w4, [x2, #5]	// id: 1277, l: 1278	
	strb	 w5, [x2, #5]	// id: 1278, l: 1279	
	strb	 w4, [x0, #5]	// id: 1279, l: 1280	
	beq	 .L177	// id: 1280, l: 1281	
	ldrb	 w5, [x0, #6]	// id: 1281, l: 1282	
	cmp	 x3, #0x7	// id: 1282, l: 1283	
	ldrb	 w4, [x2, #6]	// id: 1283, l: 1284	
	strb	 w5, [x2, #6]	// id: 1284, l: 1285	
	strb	 w4, [x0, #6]	// id: 1285, l: 1286	
	beq	 .L177	// id: 1286, l: 1287	
	ldrb	 w5, [x0, #7]	// id: 1287, l: 1288	
	cmp	 x3, #0x8	// id: 1288, l: 1289	
	ldrb	 w4, [x2, #7]	// id: 1289, l: 1290	
	strb	 w5, [x2, #7]	// id: 1290, l: 1291	
	strb	 w4, [x0, #7]	// id: 1291, l: 1292	
	beq	 .L177	// id: 1292, l: 1293	
	ldrb	 w5, [x0, #8]	// id: 1293, l: 1294	
	cmp	 x3, #0x9	// id: 1294, l: 1295	
	ldrb	 w4, [x2, #8]	// id: 1295, l: 1296	
	strb	 w5, [x2, #8]	// id: 1296, l: 1297	
	strb	 w4, [x0, #8]	// id: 1297, l: 1298	
	beq	 .L177	// id: 1298, l: 1299	
	ldrb	 w5, [x0, #9]	// id: 1299, l: 1300	
	cmp	 x3, #0xa	// id: 1300, l: 1301	
	ldrb	 w4, [x2, #9]	// id: 1301, l: 1302	
	strb	 w5, [x2, #9]	// id: 1302, l: 1303	
	strb	 w4, [x0, #9]	// id: 1303, l: 1304	
	beq	 .L177	// id: 1304, l: 1305	
	ldrb	 w5, [x0, #10]	// id: 1305, l: 1306	
	cmp	 x3, #0xb	// id: 1306, l: 1307	
	ldrb	 w4, [x2, #10]	// id: 1307, l: 1308	
	strb	 w5, [x2, #10]	// id: 1308, l: 1309	
	strb	 w4, [x0, #10]	// id: 1309, l: 1310	
	beq	 .L177	// id: 1310, l: 1311	
	ldrb	 w5, [x0, #11]	// id: 1311, l: 1312	
	cmp	 x3, #0xc	// id: 1312, l: 1313	
	ldrb	 w4, [x2, #11]	// id: 1313, l: 1314	
	strb	 w5, [x2, #11]	// id: 1314, l: 1315	
	strb	 w4, [x0, #11]	// id: 1315, l: 1316	
	beq	 .L177	// id: 1316, l: 1317	
	ldrb	 w5, [x0, #12]	// id: 1317, l: 1318	
	cmp	 x3, #0xd	// id: 1318, l: 1319	
	ldrb	 w4, [x2, #12]	// id: 1319, l: 1320	
	strb	 w5, [x2, #12]	// id: 1320, l: 1321	
	strb	 w4, [x0, #12]	// id: 1321, l: 1322	
	beq	 .L177	// id: 1322, l: 1323	
	ldrb	 w4, [x0, #13]	// id: 1323, l: 1324	
	cmp	 x3, #0xe	// id: 1324, l: 1325	
	ldrb	 w3, [x2, #13]	// id: 1325, l: 1326	
	strb	 w4, [x2, #13]	// id: 1326, l: 1327	
	strb	 w3, [x0, #13]	// id: 1327, l: 1328	
	beq	 .L177	// id: 1328, l: 1329	
	ldrb	 w4, [x0, #14]	// id: 1329, l: 1330	
	ldrb	 w3, [x2, #14]	// id: 1330, l: 1331	
	strb	 w4, [x2, #14]	// id: 1331, l: 1332	
	strb	 w3, [x0, #14]	// id: 1332, l: 1333	
	b	 .L177	// id: 1333, l: 1334	
	.p2align	2, , 3	// id: 1334, l: 1335	
.L387:	// id: 1335, l: 1336	
	mov	 x0, x25	// id: 1336, l: 1337	
	blr	 x21	// id: 1337, l: 1338	
	tbnz	 x0, #31, .L31	// id: 1338, l: 1339	
	mov	 x1, x19	// id: 1339, l: 1340	
	mov	 x0, x24	// id: 1340, l: 1341	
	blr	 x21	// id: 1341, l: 1342	
	cmp	 w0, #0x0	// id: 1342, l: 1343	
	csel	 x25, x19, x24, lt  // lt = tstop	// id: 1343, l: 1344	
	b	 .L31	// id: 1344, l: 1345	
.L386:	// id: 1345, l: 1346	
	lsr	 x19, x0, #3	// id: 1346, l: 1347	
	mov	 x0, x20	// id: 1347, l: 1348	
	mul	 x19, x19, x1	// id: 1348, l: 1349	
	add	 x24, x20, x19	// id: 1349, l: 1350	
	mov	 x1, x24	// id: 1350, l: 1351	
	blr	 x21	// id: 1351, l: 1352	
	lsl	 x1, x19, #1	// id: 1352, l: 1353	
	str	 x1, [sp, #112]	// id: 1353, l: 1354	
	add	 x27, x24, x19	// id: 1354, l: 1355	
	mov	 x1, x27	// id: 1355, l: 1356	
	tbnz	 x0, #31, .L407	// id: 1356, l: 1357	
	mov	 x0, x24	// id: 1357, l: 1358	
	blr	 x21	// id: 1358, l: 1359	
	cmp	 w0, #0x0	// id: 1359, l: 1360	
	ble	 .L408	// id: 1360, l: 1361	
.L34:	// id: 1361, l: 1362	
	sub	 x27, x25, x19	// id: 1362, l: 1363	
	mov	 x1, x25	// id: 1363, l: 1364	
	mov	 x0, x27	// id: 1364, l: 1365	
	blr	 x21	// id: 1365, l: 1366	
	add	 x1, x25, x19	// id: 1366, l: 1367	
	str	 x1, [sp, #112]	// id: 1367, l: 1368	
	tbnz	 x0, #31, .L409	// id: 1368, l: 1369	
.L35:	// id: 1369, l: 1370	
	mov	 x0, x25	// id: 1370, l: 1371	
	blr	 x21	// id: 1371, l: 1372	
	cmp	 w0, #0x0	// id: 1372, l: 1373	
	ble	 .L410	// id: 1373, l: 1374	
.L36:	// id: 1374, l: 1375	
	lsl	 x0, x19, #1	// id: 1375, l: 1376	
	sub	 x27, x28, x0	// id: 1376, l: 1377	
	add	 x19, x27, x19	// id: 1377, l: 1378	
	mov	 x0, x27	// id: 1378, l: 1379	
	mov	 x1, x19	// id: 1379, l: 1380	
	blr	 x21	// id: 1380, l: 1381	
	mov	 x1, x28	// id: 1381, l: 1382	
	tbnz	 x0, #31, .L411	// id: 1382, l: 1383	
.L37:	// id: 1383, l: 1384	
	mov	 x0, x19	// id: 1384, l: 1385	
	blr	 x21	// id: 1385, l: 1386	
	cmp	 w0, #0x0	// id: 1386, l: 1387	
	bgt	 .L32	// id: 1387, l: 1388	
	mov	 x1, x28	// id: 1388, l: 1389	
	mov	 x0, x27	// id: 1389, l: 1390	
	blr	 x21	// id: 1390, l: 1391	
	cmp	 w0, #0x0	// id: 1391, l: 1392	
	csel	 x19, x27, x28, lt  // lt = tstop	// id: 1392, l: 1393	
	b	 .L32	// id: 1393, l: 1394	
.L170:	// id: 1394, l: 1395	
	cmp	 w23, #0x2	// id: 1395, l: 1396	
	sub	 x4, x19, x3	// id: 1396, l: 1397	
	mov	 w2, w3	// id: 1397, l: 1398	
	bne	 .L196	// id: 1398, l: 1399	
	cmp	 w26, #0x2	// id: 1399, l: 1400	
	beq	 .L180	// id: 1400, l: 1401	
.L193:	// id: 1401, l: 1402	
	ldr	 x6, [sp, #112]	// id: 1402, l: 1403	
	sxtw	 x3, w2	// id: 1403, l: 1404	
	add	 x2, x4, #0xf	// id: 1404, l: 1405	
	lsr	 x0, x3, #2	// id: 1405, l: 1406	
	sub	 x2, x2, x6	// id: 1406, l: 1407	
	cmp	 x2, #0x1e	// id: 1407, l: 1408	
	mov	 x3, #0xfffffffffffffff9    	// #-7	// id: 1408, l: 1409	
	sub	 x2, x0, #0x6	// id: 1409, l: 1410	
	movk	 x3, #0x7fff, lsl #48	// id: 1410, l: 1411	
	ccmp	 x2, x3, #0x2, hi  // hi = pmore	// id: 1411, l: 1412	
	bhi	 .L231	// id: 1412, l: 1413	
	cmp	 x0, #0x0	// id: 1413, l: 1414	
	mov	 x2, #0x0                   	// #0	// id: 1414, l: 1415	
	csinc	 x5, x0, xzr, gt	// id: 1415, l: 1416	
	lsr	 x3, x5, #2	// id: 1416, l: 1417	
	lsl	 x3, x3, #4	// id: 1417, l: 1418	
.L182:	// id: 1418, l: 1419	
	ldr	 q1, [x4, x2]	// id: 1419, l: 1420	
	ldr	 q0, [x6, x2]	// id: 1420, l: 1421	
	str	 q1, [x6, x2]	// id: 1421, l: 1422	
	str	 q0, [x4, x2]	// id: 1422, l: 1423	
	add	 x2, x2, #0x10	// id: 1423, l: 1424	
	cmp	 x2, x3	// id: 1424, l: 1425	
	bne	 .L182	// id: 1425, l: 1426	
	and	 x3, x5, #0xfffffffffffffffc	// id: 1426, l: 1427	
	ldr	 x9, [sp, #112]	// id: 1427, l: 1428	
	lsl	 x2, x3, #2	// id: 1428, l: 1429	
	cmp	 x5, x3	// id: 1429, l: 1430	
	sub	 x0, x0, x3	// id: 1430, l: 1431	
	add	 x5, x9, x2	// id: 1431, l: 1432	
	add	 x2, x4, x2	// id: 1432, l: 1433	
	beq	 .L177	// id: 1433, l: 1434	
	ldr	 w8, [x4, x3, lsl #2]	// id: 1434, l: 1435	
	sub	 x6, x0, #0x1	// id: 1435, l: 1436	
	ldr	 w7, [x9, x3, lsl #2]	// id: 1436, l: 1437	
	cmp	 x6, #0x0	// id: 1437, l: 1438	
	str	 w8, [x9, x3, lsl #2]	// id: 1438, l: 1439	
	str	 w7, [x4, x3, lsl #2]	// id: 1439, l: 1440	
	ble	 .L177	// id: 1440, l: 1441	
	ldr	 w3, [x2, #4]	// id: 1441, l: 1442	
	cmp	 x0, #0x2	// id: 1442, l: 1443	
	ldr	 w0, [x5, #4]	// id: 1443, l: 1444	
	str	 w3, [x5, #4]	// id: 1444, l: 1445	
	str	 w0, [x2, #4]	// id: 1445, l: 1446	
	beq	 .L177	// id: 1446, l: 1447	
	ldr	 w3, [x2, #8]	// id: 1447, l: 1448	
	ldr	 w0, [x5, #8]	// id: 1448, l: 1449	
	str	 w3, [x5, #8]	// id: 1449, l: 1450	
	str	 w0, [x2, #8]	// id: 1450, l: 1451	
	b	 .L177	// id: 1451, l: 1452	
.L404:	// id: 1452, l: 1453	
	cmp	 x0, #0x0	// id: 1453, l: 1454	
	add	 x0, x28, #0x10	// id: 1454, l: 1455	
	ccmp	 x27, x0, #0x2, gt	// id: 1455, l: 1456	
	mov	 x1, #0xfffffffffffffff9    	// #-7	// id: 1456, l: 1457	
	ldr	 x0, [sp, #128]	// id: 1457, l: 1458	
	movk	 x1, #0x7fff, lsl #48	// id: 1458, l: 1459	
	ccmp	 x0, x1, #0x2, cs  // cs = hs, nlast	// id: 1459, l: 1460	
	mov	 x0, #0x0                   	// #0	// id: 1460, l: 1461	
	bhi	 .L225	// id: 1461, l: 1462	
	ldr	 x1, [sp, #256]	// id: 1462, l: 1463	
	.p2align	3, , 7	// id: 1463, l: 1464	
.L142:	// id: 1464, l: 1465	
	ldr	 q1, [x27, x0]	// id: 1465, l: 1466	
	ldr	 q0, [x28, x0]	// id: 1466, l: 1467	
	str	 q1, [x28, x0]	// id: 1467, l: 1468	
	str	 q0, [x27, x0]	// id: 1468, l: 1469	
	add	 x0, x0, #0x10	// id: 1469, l: 1470	
	cmp	 x0, x1	// id: 1470, l: 1471	
	bne	 .L142	// id: 1471, l: 1472	
	ldp	 x0, x1, [sp, #232]	// id: 1472, l: 1473	
	cmp	 x0, x1	// id: 1473, l: 1474	
	ldr	 x1, [sp, #248]	// id: 1474, l: 1475	
	add	 x4, x28, x1	// id: 1475, l: 1476	
	add	 x0, x27, x1	// id: 1476, l: 1477	
	beq	 .L133	// id: 1477, l: 1478	
	ldr	 w6, [x27, x1]	// id: 1478, l: 1479	
	ldr	 w5, [x28, x1]	// id: 1479, l: 1480	
	str	 w6, [x28, x1]	// id: 1480, l: 1481	
	ldr	 x2, [sp, #288]	// id: 1481, l: 1482	
	str	 w5, [x27, x1]	// id: 1482, l: 1483	
	cmp	 x2, #0x0	// id: 1483, l: 1484	
	ble	 .L133	// id: 1484, l: 1485	
	ldr	 x1, [sp, #304]	// id: 1485, l: 1486	
	ldr	 w5, [x0, #4]	// id: 1486, l: 1487	
	cmp	 x1, #0x0	// id: 1487, l: 1488	
	ldr	 w1, [x4, #4]	// id: 1488, l: 1489	
	str	 w5, [x4, #4]	// id: 1489, l: 1490	
	str	 w1, [x0, #4]	// id: 1490, l: 1491	
	ble	 .L133	// id: 1491, l: 1492	
	ldr	 w5, [x0, #8]	// id: 1492, l: 1493	
	ldr	 w1, [x4, #8]	// id: 1493, l: 1494	
	str	 w5, [x4, #8]	// id: 1494, l: 1495	
	str	 w1, [x0, #8]	// id: 1495, l: 1496	
	b	 .L133	// id: 1496, l: 1497	
.L65:	// id: 1497, l: 1498	
	ldr	 x1, [sp, #128]	// id: 1498, l: 1499	
	add	 x0, x20, #0xf	// id: 1499, l: 1500	
	cmp	 w23, #0x1	// id: 1500, l: 1501	
	sub	 x0, x0, x1	// id: 1501, l: 1502	
	beq	 .L412	// id: 1502, l: 1503	
	cmp	 w26, #0x1	// id: 1503, l: 1504	
	beq	 .L413	// id: 1504, l: 1505	
	cmp	 x0, #0x1e	// id: 1505, l: 1506	
	ldr	 w0, [sp, #148]	// id: 1506, l: 1507	
	ccmp	 w0, #0xf, #0x4, hi  // hi = pmore	// id: 1507, l: 1508	
	ble	 .L217	// id: 1508, l: 1509	
	ldr	 x2, [sp, #200]	// id: 1509, l: 1510	
	mov	 x0, #0x0                   	// #0	// id: 1510, l: 1511	
.L79:	// id: 1511, l: 1512	
	ldr	 q1, [x20, x0]	// id: 1512, l: 1513	
	ldr	 q0, [x1, x0]	// id: 1513, l: 1514	
	str	 q1, [x1, x0]	// id: 1514, l: 1515	
	str	 q0, [x20, x0]	// id: 1515, l: 1516	
	add	 x0, x0, #0x10	// id: 1516, l: 1517	
	cmp	 x2, x0	// id: 1517, l: 1518	
	bne	 .L79	// id: 1518, l: 1519	
	ldp	 x0, x1, [sp, #184]	// id: 1519, l: 1520	
	ldr	 x2, [sp, #128]	// id: 1520, l: 1521	
	cmp	 x0, x1	// id: 1521, l: 1522	
	add	 x5, x2, x1	// id: 1522, l: 1523	
	add	 x0, x20, x1	// id: 1523, l: 1524	
	beq	 .L64	// id: 1524, l: 1525	
	ldrb	 w7, [x20, x1]	// id: 1525, l: 1526	
	ldrb	 w6, [x2, x1]	// id: 1526, l: 1527	
	strb	 w7, [x2, x1]	// id: 1527, l: 1528	
	ldr	 x3, [sp, #208]	// id: 1528, l: 1529	
	strb	 w6, [x20, x1]	// id: 1529, l: 1530	
	cmp	 x3, #0x0	// id: 1530, l: 1531	
	ble	 .L64	// id: 1531, l: 1532	
	ldrb	 w7, [x0, #1]	// id: 1532, l: 1533	
	ldrb	 w6, [x5, #1]	// id: 1533, l: 1534	
	strb	 w7, [x5, #1]	// id: 1534, l: 1535	
	ldr	 x1, [sp, #216]	// id: 1535, l: 1536	
	strb	 w6, [x0, #1]	// id: 1536, l: 1537	
	cmp	 x1, #0x0	// id: 1537, l: 1538	
	ble	 .L64	// id: 1538, l: 1539	
	ldrb	 w7, [x0, #2]	// id: 1539, l: 1540	
	ldrb	 w6, [x5, #2]	// id: 1540, l: 1541	
	strb	 w7, [x5, #2]	// id: 1541, l: 1542	
	ldr	 x1, [sp, #224]	// id: 1542, l: 1543	
	strb	 w6, [x0, #2]	// id: 1543, l: 1544	
	cmp	 x1, #0x0	// id: 1544, l: 1545	
	ble	 .L64	// id: 1545, l: 1546	
	ldrb	 w7, [x0, #3]	// id: 1546, l: 1547	
	ldrb	 w6, [x5, #3]	// id: 1547, l: 1548	
	strb	 w7, [x5, #3]	// id: 1548, l: 1549	
	ldr	 x1, [sp, #272]	// id: 1549, l: 1550	
	strb	 w6, [x0, #3]	// id: 1550, l: 1551	
	cmp	 x1, #0x0	// id: 1551, l: 1552	
	ble	 .L64	// id: 1552, l: 1553	
	ldrb	 w7, [x0, #4]	// id: 1553, l: 1554	
	ldrb	 w6, [x5, #4]	// id: 1554, l: 1555	
	strb	 w7, [x5, #4]	// id: 1555, l: 1556	
	ldr	 x1, [sp, #280]	// id: 1556, l: 1557	
	strb	 w6, [x0, #4]	// id: 1557, l: 1558	
	cmp	 x1, #0x0	// id: 1558, l: 1559	
	ble	 .L64	// id: 1559, l: 1560	
	ldrb	 w7, [x0, #5]	// id: 1560, l: 1561	
	ldrb	 w6, [x5, #5]	// id: 1561, l: 1562	
	strb	 w7, [x5, #5]	// id: 1562, l: 1563	
	ldr	 x1, [sp, #296]	// id: 1563, l: 1564	
	strb	 w6, [x0, #5]	// id: 1564, l: 1565	
	cmp	 x1, #0x0	// id: 1565, l: 1566	
	ble	 .L64	// id: 1566, l: 1567	
	ldrb	 w7, [x0, #6]	// id: 1567, l: 1568	
	ldrb	 w6, [x5, #6]	// id: 1568, l: 1569	
	strb	 w7, [x5, #6]	// id: 1569, l: 1570	
	ldr	 x1, [sp, #312]	// id: 1570, l: 1571	
	strb	 w6, [x0, #6]	// id: 1571, l: 1572	
	cmp	 x1, #0x0	// id: 1572, l: 1573	
	ble	 .L64	// id: 1573, l: 1574	
	ldrb	 w7, [x0, #7]	// id: 1574, l: 1575	
	ldrb	 w6, [x5, #7]	// id: 1575, l: 1576	
	strb	 w7, [x5, #7]	// id: 1576, l: 1577	
	ldr	 x1, [sp, #328]	// id: 1577, l: 1578	
	strb	 w6, [x0, #7]	// id: 1578, l: 1579	
	cmp	 x1, #0x0	// id: 1579, l: 1580	
	ble	 .L64	// id: 1580, l: 1581	
	ldrb	 w7, [x0, #8]	// id: 1581, l: 1582	
	ldrb	 w6, [x5, #8]	// id: 1582, l: 1583	
	strb	 w7, [x5, #8]	// id: 1583, l: 1584	
	ldr	 x1, [sp, #344]	// id: 1584, l: 1585	
	strb	 w6, [x0, #8]	// id: 1585, l: 1586	
	cmp	 x1, #0x0	// id: 1586, l: 1587	
	ble	 .L64	// id: 1587, l: 1588	
	ldrb	 w7, [x0, #9]	// id: 1588, l: 1589	
	ldrb	 w6, [x5, #9]	// id: 1589, l: 1590	
	strb	 w7, [x5, #9]	// id: 1590, l: 1591	
	ldr	 x1, [sp, #352]	// id: 1591, l: 1592	
	strb	 w6, [x0, #9]	// id: 1592, l: 1593	
	cmp	 x1, #0x0	// id: 1593, l: 1594	
	ble	 .L64	// id: 1594, l: 1595	
	ldrb	 w7, [x0, #10]	// id: 1595, l: 1596	
	ldrb	 w6, [x5, #10]	// id: 1596, l: 1597	
	strb	 w7, [x5, #10]	// id: 1597, l: 1598	
	ldr	 x1, [sp, #360]	// id: 1598, l: 1599	
	strb	 w6, [x0, #10]	// id: 1599, l: 1600	
	cmp	 x1, #0x0	// id: 1600, l: 1601	
	ble	 .L64	// id: 1601, l: 1602	
	ldrb	 w7, [x0, #11]	// id: 1602, l: 1603	
	ldrb	 w6, [x5, #11]	// id: 1603, l: 1604	
	strb	 w7, [x5, #11]	// id: 1604, l: 1605	
	ldr	 x1, [sp, #376]	// id: 1605, l: 1606	
	strb	 w6, [x0, #11]	// id: 1606, l: 1607	
	cmp	 x1, #0x0	// id: 1607, l: 1608	
	ble	 .L64	// id: 1608, l: 1609	
	ldrb	 w7, [x0, #12]	// id: 1609, l: 1610	
	ldrb	 w6, [x5, #12]	// id: 1610, l: 1611	
	strb	 w7, [x5, #12]	// id: 1611, l: 1612	
	ldr	 x1, [sp, #384]	// id: 1612, l: 1613	
	strb	 w6, [x0, #12]	// id: 1613, l: 1614	
	cmp	 x1, #0x0	// id: 1614, l: 1615	
	ble	 .L64	// id: 1615, l: 1616	
	ldrb	 w7, [x0, #13]	// id: 1616, l: 1617	
	ldrb	 w6, [x5, #13]	// id: 1617, l: 1618	
	strb	 w7, [x5, #13]	// id: 1618, l: 1619	
	ldr	 x1, [sp, #392]	// id: 1619, l: 1620	
	strb	 w6, [x0, #13]	// id: 1620, l: 1621	
	cmp	 x1, #0x0	// id: 1621, l: 1622	
	ble	 .L64	// id: 1622, l: 1623	
	ldrb	 w7, [x0, #14]	// id: 1623, l: 1624	
	ldrb	 w6, [x5, #14]	// id: 1624, l: 1625	
	strb	 w7, [x5, #14]	// id: 1625, l: 1626	
	strb	 w6, [x0, #14]	// id: 1626, l: 1627	
	b	 .L64	// id: 1627, l: 1628	
	.p2align	2, , 3	// id: 1628, l: 1629	
.L41:	// id: 1629, l: 1630	
	add	 x0, x20, #0xf	// id: 1630, l: 1631	
	cmp	 w23, #0x1	// id: 1631, l: 1632	
	beq	 .L414	// id: 1632, l: 1633	
	sub	 x0, x0, x25	// id: 1633, l: 1634	
	cmp	 w26, #0x1	// id: 1634, l: 1635	
	beq	 .L415	// id: 1635, l: 1636	
	cmp	 x0, #0x1e	// id: 1636, l: 1637	
	ldr	 w0, [sp, #148]	// id: 1637, l: 1638	
	ccmp	 w0, #0xf, #0x4, hi  // hi = pmore	// id: 1638, l: 1639	
	ble	 .L214	// id: 1639, l: 1640	
	ldr	 x1, [sp, #200]	// id: 1640, l: 1641	
	mov	 x0, #0x0                   	// #0	// id: 1641, l: 1642	
.L55:	// id: 1642, l: 1643	
	ldr	 q1, [x25, x0]	// id: 1643, l: 1644	
	ldr	 q0, [x20, x0]	// id: 1644, l: 1645	
	str	 q1, [x20, x0]	// id: 1645, l: 1646	
	str	 q0, [x25, x0]	// id: 1646, l: 1647	
	add	 x0, x0, #0x10	// id: 1647, l: 1648	
	cmp	 x0, x1	// id: 1648, l: 1649	
	bne	 .L55	// id: 1649, l: 1650	
	ldp	 x0, x2, [sp, #184]	// id: 1650, l: 1651	
	cmp	 x0, x2	// id: 1651, l: 1652	
	add	 x1, x20, x2	// id: 1652, l: 1653	
	add	 x0, x25, x2	// id: 1653, l: 1654	
	beq	 .L40	// id: 1654, l: 1655	
	ldrb	 w5, [x25, x2]	// id: 1655, l: 1656	
	ldrb	 w4, [x20, x2]	// id: 1656, l: 1657	
	strb	 w5, [x20, x2]	// id: 1657, l: 1658	
	ldr	 x3, [sp, #208]	// id: 1658, l: 1659	
	strb	 w4, [x25, x2]	// id: 1659, l: 1660	
	cmp	 x3, #0x0	// id: 1660, l: 1661	
	ble	 .L40	// id: 1661, l: 1662	
	ldrb	 w4, [x0, #1]	// id: 1662, l: 1663	
	ldrb	 w3, [x1, #1]	// id: 1663, l: 1664	
	strb	 w4, [x1, #1]	// id: 1664, l: 1665	
	ldr	 x2, [sp, #216]	// id: 1665, l: 1666	
	strb	 w3, [x0, #1]	// id: 1666, l: 1667	
	cmp	 x2, #0x0	// id: 1667, l: 1668	
	ble	 .L40	// id: 1668, l: 1669	
	ldrb	 w4, [x0, #2]	// id: 1669, l: 1670	
	ldrb	 w3, [x1, #2]	// id: 1670, l: 1671	
	strb	 w4, [x1, #2]	// id: 1671, l: 1672	
	ldr	 x2, [sp, #224]	// id: 1672, l: 1673	
	strb	 w3, [x0, #2]	// id: 1673, l: 1674	
	cmp	 x2, #0x0	// id: 1674, l: 1675	
	ble	 .L40	// id: 1675, l: 1676	
	ldrb	 w4, [x0, #3]	// id: 1676, l: 1677	
	ldrb	 w3, [x1, #3]	// id: 1677, l: 1678	
	strb	 w4, [x1, #3]	// id: 1678, l: 1679	
	ldr	 x2, [sp, #272]	// id: 1679, l: 1680	
	strb	 w3, [x0, #3]	// id: 1680, l: 1681	
	cmp	 x2, #0x0	// id: 1681, l: 1682	
	ble	 .L40	// id: 1682, l: 1683	
	ldrb	 w4, [x0, #4]	// id: 1683, l: 1684	
	ldrb	 w3, [x1, #4]	// id: 1684, l: 1685	
	strb	 w4, [x1, #4]	// id: 1685, l: 1686	
	ldr	 x2, [sp, #280]	// id: 1686, l: 1687	
	strb	 w3, [x0, #4]	// id: 1687, l: 1688	
	cmp	 x2, #0x0	// id: 1688, l: 1689	
	ble	 .L40	// id: 1689, l: 1690	
	ldrb	 w4, [x0, #5]	// id: 1690, l: 1691	
	ldrb	 w3, [x1, #5]	// id: 1691, l: 1692	
	strb	 w4, [x1, #5]	// id: 1692, l: 1693	
	ldr	 x2, [sp, #296]	// id: 1693, l: 1694	
	strb	 w3, [x0, #5]	// id: 1694, l: 1695	
	cmp	 x2, #0x0	// id: 1695, l: 1696	
	ble	 .L40	// id: 1696, l: 1697	
	ldrb	 w4, [x0, #6]	// id: 1697, l: 1698	
	ldrb	 w3, [x1, #6]	// id: 1698, l: 1699	
	strb	 w4, [x1, #6]	// id: 1699, l: 1700	
	ldr	 x2, [sp, #312]	// id: 1700, l: 1701	
	strb	 w3, [x0, #6]	// id: 1701, l: 1702	
	cmp	 x2, #0x0	// id: 1702, l: 1703	
	ble	 .L40	// id: 1703, l: 1704	
	ldrb	 w4, [x0, #7]	// id: 1704, l: 1705	
	ldrb	 w3, [x1, #7]	// id: 1705, l: 1706	
	strb	 w4, [x1, #7]	// id: 1706, l: 1707	
	ldr	 x2, [sp, #328]	// id: 1707, l: 1708	
	strb	 w3, [x0, #7]	// id: 1708, l: 1709	
	cmp	 x2, #0x0	// id: 1709, l: 1710	
	ble	 .L40	// id: 1710, l: 1711	
	ldrb	 w4, [x0, #8]	// id: 1711, l: 1712	
	ldrb	 w3, [x1, #8]	// id: 1712, l: 1713	
	strb	 w4, [x1, #8]	// id: 1713, l: 1714	
	ldr	 x2, [sp, #344]	// id: 1714, l: 1715	
	strb	 w3, [x0, #8]	// id: 1715, l: 1716	
	cmp	 x2, #0x0	// id: 1716, l: 1717	
	ble	 .L40	// id: 1717, l: 1718	
	ldrb	 w4, [x0, #9]	// id: 1718, l: 1719	
	ldrb	 w3, [x1, #9]	// id: 1719, l: 1720	
	strb	 w4, [x1, #9]	// id: 1720, l: 1721	
	ldr	 x2, [sp, #352]	// id: 1721, l: 1722	
	strb	 w3, [x0, #9]	// id: 1722, l: 1723	
	cmp	 x2, #0x0	// id: 1723, l: 1724	
	ble	 .L40	// id: 1724, l: 1725	
	ldrb	 w4, [x0, #10]	// id: 1725, l: 1726	
	ldrb	 w3, [x1, #10]	// id: 1726, l: 1727	
	strb	 w4, [x1, #10]	// id: 1727, l: 1728	
	ldr	 x2, [sp, #360]	// id: 1728, l: 1729	
	strb	 w3, [x0, #10]	// id: 1729, l: 1730	
	cmp	 x2, #0x0	// id: 1730, l: 1731	
	ble	 .L40	// id: 1731, l: 1732	
	ldrb	 w4, [x0, #11]	// id: 1732, l: 1733	
	ldrb	 w3, [x1, #11]	// id: 1733, l: 1734	
	strb	 w4, [x1, #11]	// id: 1734, l: 1735	
	ldr	 x2, [sp, #376]	// id: 1735, l: 1736	
	strb	 w3, [x0, #11]	// id: 1736, l: 1737	
	cmp	 x2, #0x0	// id: 1737, l: 1738	
	ble	 .L40	// id: 1738, l: 1739	
	ldrb	 w4, [x0, #12]	// id: 1739, l: 1740	
	ldrb	 w3, [x1, #12]	// id: 1740, l: 1741	
	strb	 w4, [x1, #12]	// id: 1741, l: 1742	
	ldr	 x2, [sp, #384]	// id: 1742, l: 1743	
	strb	 w3, [x0, #12]	// id: 1743, l: 1744	
	cmp	 x2, #0x0	// id: 1744, l: 1745	
	ble	 .L40	// id: 1745, l: 1746	
	ldrb	 w4, [x0, #13]	// id: 1746, l: 1747	
	ldrb	 w3, [x1, #13]	// id: 1747, l: 1748	
	strb	 w4, [x1, #13]	// id: 1748, l: 1749	
	ldr	 x2, [sp, #392]	// id: 1749, l: 1750	
	strb	 w3, [x0, #13]	// id: 1750, l: 1751	
	cmp	 x2, #0x0	// id: 1751, l: 1752	
	ble	 .L40	// id: 1752, l: 1753	
	ldrb	 w4, [x0, #14]	// id: 1753, l: 1754	
	ldrb	 w3, [x1, #14]	// id: 1754, l: 1755	
	strb	 w4, [x1, #14]	// id: 1755, l: 1756	
	strb	 w3, [x0, #14]	// id: 1756, l: 1757	
	b	 .L40	// id: 1757, l: 1758	
	.p2align	2, , 3	// id: 1758, l: 1759	
.L405:	// id: 1759, l: 1760	
	sxtw	 x0, w0	// id: 1760, l: 1761	
	add	 x5, x4, #0x10	// id: 1761, l: 1762	
	add	 x2, x25, #0x10	// id: 1762, l: 1763	
	cmp	 x25, x5	// id: 1763, l: 1764	
	lsr	 x0, x0, #3	// id: 1764, l: 1765	
	ccmp	 x4, x2, #0x2, cc  // cc = lo, ul, last	// id: 1765, l: 1766	
	mov	 x5, #0xfffffffffffffff9    	// #-7	// id: 1766, l: 1767	
	sub	 x2, x0, #0x6	// id: 1767, l: 1768	
	movk	 x5, #0x7fff, lsl #48	// id: 1768, l: 1769	
	ccmp	 x2, x5, #0x2, cs  // cs = hs, nlast	// id: 1769, l: 1770	
	bhi	 .L227	// id: 1770, l: 1771	
	cmp	 x0, #0x0	// id: 1771, l: 1772	
	mov	 x2, #0x0                   	// #0	// id: 1772, l: 1773	
	csinc	 x0, x0, xzr, gt	// id: 1773, l: 1774	
	lsr	 x5, x0, #1	// id: 1774, l: 1775	
	lsl	 x5, x5, #4	// id: 1775, l: 1776	
.L158:	// id: 1776, l: 1777	
	ldr	 q1, [x4, x2]	// id: 1777, l: 1778	
	ldr	 q0, [x20, x2]	// id: 1778, l: 1779	
	str	 q1, [x20, x2]	// id: 1779, l: 1780	
	str	 q0, [x4, x2]	// id: 1780, l: 1781	
	add	 x2, x2, #0x10	// id: 1781, l: 1782	
	cmp	 x2, x5	// id: 1782, l: 1783	
	bne	 .L158	// id: 1783, l: 1784	
	and	 x2, x0, #0xfffffffffffffffe	// id: 1784, l: 1785	
	tbz	 x0, #0, .L160	// id: 1785, l: 1786	
	ldr	 x5, [x4, x2, lsl #3]	// id: 1786, l: 1787	
	ldr	 x0, [x20, x2, lsl #3]	// id: 1787, l: 1788	
	str	 x5, [x20, x2, lsl #3]	// id: 1788, l: 1789	
	str	 x0, [x4, x2, lsl #3]	// id: 1789, l: 1790	
.L160:	// id: 1790, l: 1791	
	cbz	 x3, .L177	// id: 1791, l: 1792	
.L418:	// id: 1792, l: 1793	
	sub	 x4, x19, x3	// id: 1793, l: 1794	
	mov	 w2, w3	// id: 1794, l: 1795	
.L196:	// id: 1795, l: 1796	
	ldr	 x5, [sp, #112]	// id: 1796, l: 1797	
	sxtw	 x3, w2	// id: 1797, l: 1798	
	add	 x0, x4, #0xf	// id: 1798, l: 1799	
	lsr	 x2, x3, #3	// id: 1799, l: 1800	
	sub	 x0, x0, x5	// id: 1800, l: 1801	
	cmp	 x0, #0x1e	// id: 1801, l: 1802	
	mov	 x3, #0xfffffffffffffff9    	// #-7	// id: 1802, l: 1803	
	sub	 x0, x2, #0x6	// id: 1803, l: 1804	
	movk	 x3, #0x7fff, lsl #48	// id: 1804, l: 1805	
	ccmp	 x0, x3, #0x2, hi  // hi = pmore	// id: 1805, l: 1806	
	bhi	 .L230	// id: 1806, l: 1807	
	cmp	 x2, #0x0	// id: 1807, l: 1808	
	mov	 x0, #0x0                   	// #0	// id: 1808, l: 1809	
	csinc	 x2, x2, xzr, gt	// id: 1809, l: 1810	
	lsr	 x3, x2, #1	// id: 1810, l: 1811	
	lsl	 x3, x3, #4	// id: 1811, l: 1812	
.L175:	// id: 1812, l: 1813	
	ldr	 q1, [x4, x0]	// id: 1813, l: 1814	
	ldr	 q0, [x5, x0]	// id: 1814, l: 1815	
	str	 q1, [x5, x0]	// id: 1815, l: 1816	
	str	 q0, [x4, x0]	// id: 1816, l: 1817	
	add	 x0, x0, #0x10	// id: 1817, l: 1818	
	cmp	 x3, x0	// id: 1818, l: 1819	
	bne	 .L175	// id: 1819, l: 1820	
	and	 x0, x2, #0xfffffffffffffffe	// id: 1820, l: 1821	
	tbz	 x2, #0, .L177	// id: 1821, l: 1822	
	ldr	 x5, [sp, #112]	// id: 1822, l: 1823	
	ldr	 x3, [x4, x0, lsl #3]	// id: 1823, l: 1824	
	ldr	 x2, [x5, x0, lsl #3]	// id: 1824, l: 1825	
	str	 x3, [x5, x0, lsl #3]	// id: 1825, l: 1826	
	str	 x2, [x4, x0, lsl #3]	// id: 1826, l: 1827	
	b	 .L177	// id: 1827, l: 1828	
.L406:	// id: 1828, l: 1829	
	sub	 x5, x2, x0	// id: 1829, l: 1830	
	sxtw	 x0, w0	// id: 1830, l: 1831	
	add	 x5, x5, #0x10	// id: 1831, l: 1832	
	add	 x2, x25, #0x10	// id: 1832, l: 1833	
	cmp	 x25, x5	// id: 1833, l: 1834	
	lsr	 x0, x0, #2	// id: 1834, l: 1835	
	ccmp	 x4, x2, #0x2, cc  // cc = lo, ul, last	// id: 1835, l: 1836	
	mov	 x5, #0xfffffffffffffff9    	// #-7	// id: 1836, l: 1837	
	sub	 x2, x0, #0x6	// id: 1837, l: 1838	
	movk	 x5, #0x7fff, lsl #48	// id: 1838, l: 1839	
	ccmp	 x2, x5, #0x2, cs  // cs = hs, nlast	// id: 1839, l: 1840	
	bhi	 .L228	// id: 1840, l: 1841	
	cmp	 x0, #0x0	// id: 1841, l: 1842	
	mov	 x2, #0x0                   	// #0	// id: 1842, l: 1843	
	csinc	 x6, x0, xzr, gt	// id: 1843, l: 1844	
	lsr	 x5, x6, #2	// id: 1844, l: 1845	
	lsl	 x5, x5, #4	// id: 1845, l: 1846	
.L163:	// id: 1846, l: 1847	
	ldr	 q1, [x4, x2]	// id: 1847, l: 1848	
	ldr	 q0, [x20, x2]	// id: 1848, l: 1849	
	str	 q1, [x20, x2]	// id: 1849, l: 1850	
	str	 q0, [x4, x2]	// id: 1850, l: 1851	
	add	 x2, x2, #0x10	// id: 1851, l: 1852	
	cmp	 x2, x5	// id: 1852, l: 1853	
	bne	 .L163	// id: 1853, l: 1854	
	and	 x5, x6, #0xfffffffffffffffc	// id: 1854, l: 1855	
	cmp	 x6, x5	// id: 1855, l: 1856	
	sub	 x0, x0, x5	// id: 1856, l: 1857	
	lsl	 x2, x5, #2	// id: 1857, l: 1858	
	add	 x6, x20, x2	// id: 1858, l: 1859	
	add	 x2, x4, x2	// id: 1859, l: 1860	
	beq	 .L165	// id: 1860, l: 1861	
	ldr	 w9, [x4, x5, lsl #2]	// id: 1861, l: 1862	
	sub	 x7, x0, #0x1	// id: 1862, l: 1863	
	ldr	 w8, [x20, x5, lsl #2]	// id: 1863, l: 1864	
	cmp	 x7, #0x0	// id: 1864, l: 1865	
	str	 w9, [x20, x5, lsl #2]	// id: 1865, l: 1866	
	str	 w8, [x4, x5, lsl #2]	// id: 1866, l: 1867	
	ble	 .L165	// id: 1867, l: 1868	
	ldr	 w4, [x2, #4]	// id: 1868, l: 1869	
	cmp	 x0, #0x2	// id: 1869, l: 1870	
	ldr	 w0, [x6, #4]	// id: 1870, l: 1871	
	str	 w4, [x6, #4]	// id: 1871, l: 1872	
	str	 w0, [x2, #4]	// id: 1872, l: 1873	
	beq	 .L165	// id: 1873, l: 1874	
	ldr	 w4, [x2, #8]	// id: 1874, l: 1875	
	ldr	 w0, [x6, #8]	// id: 1875, l: 1876	
	str	 w4, [x6, #8]	// id: 1876, l: 1877	
	str	 w0, [x2, #8]	// id: 1877, l: 1878	
.L165:	// id: 1878, l: 1879	
	cbz	 x3, .L177	// id: 1879, l: 1880	
.L420:	// id: 1880, l: 1881	
	sub	 x4, x19, x3	// id: 1881, l: 1882	
	mov	 w2, w3	// id: 1882, l: 1883	
	b	 .L193	// id: 1883, l: 1884	
.L414:	// id: 1884, l: 1885	
	ldr	 x1, [sp, #176]	// id: 1885, l: 1886	
	sub	 x0, x0, x25	// id: 1886, l: 1887	
	cmp	 x0, #0x1e	// id: 1887, l: 1888	
	sub	 x1, x1, #0x6	// id: 1888, l: 1889	
	mov	 x0, x1	// id: 1889, l: 1890	
	mov	 x1, #0xfffffffffffffff9    	// #-7	// id: 1890, l: 1891	
	movk	 x1, #0x7fff, lsl #48	// id: 1891, l: 1892	
	ccmp	 x0, x1, #0x2, hi  // hi = pmore	// id: 1892, l: 1893	
	mov	 x0, #0x0                   	// #0	// id: 1893, l: 1894	
	bhi	 .L43	// id: 1894, l: 1895	
	ldr	 x1, [sp, #168]	// id: 1895, l: 1896	
.L44:	// id: 1896, l: 1897	
	ldr	 q1, [x25, x0]	// id: 1897, l: 1898	
	ldr	 q0, [x20, x0]	// id: 1898, l: 1899	
	str	 q1, [x20, x0]	// id: 1899, l: 1900	
	str	 q0, [x25, x0]	// id: 1900, l: 1901	
	add	 x0, x0, #0x10	// id: 1901, l: 1902	
	cmp	 x0, x1	// id: 1902, l: 1903	
	bne	 .L44	// id: 1903, l: 1904	
	ldp	 x0, x1, [sp, #152]	// id: 1904, l: 1905	
	cmp	 x0, x1	// id: 1905, l: 1906	
	beq	 .L40	// id: 1906, l: 1907	
	ldr	 x1, [x25, x22]	// id: 1907, l: 1908	
	ldr	 x0, [x20, x22]	// id: 1908, l: 1909	
	str	 x1, [x20, x22]	// id: 1909, l: 1910	
	str	 x0, [x25, x22]	// id: 1910, l: 1911	
	b	 .L40	// id: 1911, l: 1912	
.L43:	// id: 1912, l: 1913	
	ldr	 x2, [x25, x0, lsl #3]	// id: 1913, l: 1914	
	ldr	 x1, [x20, x0, lsl #3]	// id: 1914, l: 1915	
	str	 x2, [x20, x0, lsl #3]	// id: 1915, l: 1916	
	str	 x1, [x25, x0, lsl #3]	// id: 1916, l: 1917	
	add	 x0, x0, #0x1	// id: 1917, l: 1918	
	ldr	 x1, [sp, #176]	// id: 1918, l: 1919	
	sub	 x1, x1, x0	// id: 1919, l: 1920	
	cmp	 x1, #0x0	// id: 1920, l: 1921	
	bgt	 .L43	// id: 1921, l: 1922	
	b	 .L40	// id: 1922, l: 1923	
.L413:	// id: 1923, l: 1924	
	cmp	 x0, #0x1e	// id: 1924, l: 1925	
	mov	 x2, #0xfffffffffffffff9    	// #-7	// id: 1925, l: 1926	
	ldr	 x0, [sp, #264]	// id: 1926, l: 1927	
	movk	 x2, #0x7fff, lsl #48	// id: 1927, l: 1928	
	ccmp	 x0, x2, #0x2, hi  // hi = pmore	// id: 1928, l: 1929	
	mov	 x0, #0x0                   	// #0	// id: 1929, l: 1930	
	bhi	 .L72	// id: 1930, l: 1931	
	ldr	 x2, [sp, #256]	// id: 1931, l: 1932	
.L73:	// id: 1932, l: 1933	
	ldr	 q1, [x20, x0]	// id: 1933, l: 1934	
	ldr	 q0, [x1, x0]	// id: 1934, l: 1935	
	str	 q1, [x1, x0]	// id: 1935, l: 1936	
	str	 q0, [x20, x0]	// id: 1936, l: 1937	
	add	 x0, x0, #0x10	// id: 1937, l: 1938	
	cmp	 x2, x0	// id: 1938, l: 1939	
	bne	 .L73	// id: 1939, l: 1940	
	ldp	 x0, x1, [sp, #232]	// id: 1940, l: 1941	
	ldr	 x2, [sp, #128]	// id: 1941, l: 1942	
	cmp	 x0, x1	// id: 1942, l: 1943	
	ldr	 x1, [sp, #248]	// id: 1943, l: 1944	
	add	 x5, x2, x1	// id: 1944, l: 1945	
	add	 x0, x20, x1	// id: 1945, l: 1946	
	beq	 .L64	// id: 1946, l: 1947	
	ldr	 w7, [x20, x1]	// id: 1947, l: 1948	
	ldr	 w6, [x2, x1]	// id: 1948, l: 1949	
	str	 w7, [x2, x1]	// id: 1949, l: 1950	
	ldr	 x3, [sp, #288]	// id: 1950, l: 1951	
	str	 w6, [x20, x1]	// id: 1951, l: 1952	
	cmp	 x3, #0x0	// id: 1952, l: 1953	
	ble	 .L64	// id: 1953, l: 1954	
	ldr	 w7, [x0, #4]	// id: 1954, l: 1955	
	ldr	 w6, [x5, #4]	// id: 1955, l: 1956	
	str	 w7, [x5, #4]	// id: 1956, l: 1957	
	ldr	 x1, [sp, #304]	// id: 1957, l: 1958	
	str	 w6, [x0, #4]	// id: 1958, l: 1959	
	cmp	 x1, #0x0	// id: 1959, l: 1960	
	ble	 .L64	// id: 1960, l: 1961	
	ldr	 w7, [x0, #8]	// id: 1961, l: 1962	
	ldr	 w6, [x5, #8]	// id: 1962, l: 1963	
	str	 w7, [x5, #8]	// id: 1963, l: 1964	
	str	 w6, [x0, #8]	// id: 1964, l: 1965	
	b	 .L64	// id: 1965, l: 1966	
.L72:	// id: 1966, l: 1967	
	ldr	 w3, [x20, x0, lsl #2]	// id: 1967, l: 1968	
	ldr	 w2, [x1, x0, lsl #2]	// id: 1968, l: 1969	
	str	 w3, [x1, x0, lsl #2]	// id: 1969, l: 1970	
	str	 w2, [x20, x0, lsl #2]	// id: 1970, l: 1971	
	add	 x0, x0, #0x1	// id: 1971, l: 1972	
	ldr	 x2, [sp, #336]	// id: 1972, l: 1973	
	sub	 x2, x2, x0	// id: 1973, l: 1974	
	cmp	 x2, #0x0	// id: 1974, l: 1975	
	bgt	 .L72	// id: 1975, l: 1976	
	b	 .L64	// id: 1976, l: 1977	
.L410:	// id: 1977, l: 1978	
	ldr	 x1, [sp, #112]	// id: 1978, l: 1979	
	mov	 x0, x27	// id: 1979, l: 1980	
	blr	 x21	// id: 1980, l: 1981	
	cmp	 w0, #0x0	// id: 1981, l: 1982	
	ldr	 x1, [sp, #112]	// id: 1982, l: 1983	
	lsl	 x0, x19, #1	// id: 1983, l: 1984	
	csel	 x25, x27, x1, lt  // lt = tstop	// id: 1984, l: 1985	
	sub	 x27, x28, x0	// id: 1985, l: 1986	
	add	 x19, x27, x19	// id: 1986, l: 1987	
	mov	 x0, x27	// id: 1987, l: 1988	
	mov	 x1, x19	// id: 1988, l: 1989	
	blr	 x21	// id: 1989, l: 1990	
	mov	 x1, x28	// id: 1990, l: 1991	
	tbz	 x0, #31, .L37	// id: 1991, l: 1992	
.L411:	// id: 1992, l: 1993	
	mov	 x0, x19	// id: 1993, l: 1994	
	blr	 x21	// id: 1994, l: 1995	
	tbnz	 x0, #31, .L32	// id: 1995, l: 1996	
	mov	 x1, x28	// id: 1996, l: 1997	
	mov	 x0, x27	// id: 1997, l: 1998	
	blr	 x21	// id: 1998, l: 1999	
	cmp	 w0, #0x0	// id: 1999, l: 2000	
	csel	 x19, x28, x27, lt  // lt = tstop	// id: 2000, l: 2001	
	b	 .L32	// id: 2001, l: 2002	
.L408:	// id: 2002, l: 2003	
	mov	 x1, x27	// id: 2003, l: 2004	
	mov	 x0, x20	// id: 2004, l: 2005	
	blr	 x21	// id: 2005, l: 2006	
	cmp	 w0, #0x0	// id: 2006, l: 2007	
	csel	 x24, x20, x27, lt  // lt = tstop	// id: 2007, l: 2008	
	sub	 x27, x25, x19	// id: 2008, l: 2009	
	mov	 x1, x25	// id: 2009, l: 2010	
	mov	 x0, x27	// id: 2010, l: 2011	
	blr	 x21	// id: 2011, l: 2012	
	add	 x1, x25, x19	// id: 2012, l: 2013	
	str	 x1, [sp, #112]	// id: 2013, l: 2014	
	tbz	 x0, #31, .L35	// id: 2014, l: 2015	
.L409:	// id: 2015, l: 2016	
	mov	 x0, x25	// id: 2016, l: 2017	
	blr	 x21	// id: 2017, l: 2018	
	tbnz	 x0, #31, .L36	// id: 2018, l: 2019	
	ldr	 x1, [sp, #112]	// id: 2019, l: 2020	
	mov	 x0, x27	// id: 2020, l: 2021	
	blr	 x21	// id: 2021, l: 2022	
	cmp	 w0, #0x0	// id: 2022, l: 2023	
	ldr	 x1, [sp, #112]	// id: 2023, l: 2024	
	csel	 x25, x1, x27, lt  // lt = tstop	// id: 2024, l: 2025	
	b	 .L36	// id: 2025, l: 2026	
.L221:	// id: 2026, l: 2027	
	ldr	 x3, [sp, #176]	// id: 2027, l: 2028	
	.p2align	3, , 7	// id: 2028, l: 2029	
.L115:	// id: 2029, l: 2030	
	ldr	 x2, [x27, x0, lsl #3]	// id: 2030, l: 2031	
	ldr	 x1, [x20, x0, lsl #3]	// id: 2031, l: 2032	
	str	 x2, [x20, x0, lsl #3]	// id: 2032, l: 2033	
	str	 x1, [x27, x0, lsl #3]	// id: 2033, l: 2034	
	add	 x0, x0, #0x1	// id: 2034, l: 2035	
	sub	 x1, x3, x0	// id: 2035, l: 2036	
	cmp	 x1, #0x0	// id: 2036, l: 2037	
	bgt	 .L115	// id: 2037, l: 2038	
	b	 .L112	// id: 2038, l: 2039	
.L407:	// id: 2039, l: 2040	
	mov	 x0, x24	// id: 2040, l: 2041	
	blr	 x21	// id: 2041, l: 2042	
	tbnz	 x0, #31, .L34	// id: 2042, l: 2043	
	mov	 x1, x27	// id: 2043, l: 2044	
	mov	 x0, x20	// id: 2044, l: 2045	
	blr	 x21	// id: 2045, l: 2046	
	cmp	 w0, #0x0	// id: 2046, l: 2047	
	csel	 x24, x27, x20, lt  // lt = tstop	// id: 2047, l: 2048	
	b	 .L34	// id: 2048, l: 2049	
.L223:	// id: 2049, l: 2050	
	ldr	 x5, [sp, #368]	// id: 2050, l: 2051	
	mov	 x0, #0x0                   	// #0	// id: 2051, l: 2052	
.L126:	// id: 2052, l: 2053	
	ldrb	 w2, [x27, x0]	// id: 2053, l: 2054	
	sub	 x5, x5, #0x1	// id: 2054, l: 2055	
	ldrb	 w1, [x20, x0]	// id: 2055, l: 2056	
	cmp	 x5, #0x0	// id: 2056, l: 2057	
	strb	 w2, [x20, x0]	// id: 2057, l: 2058	
	strb	 w1, [x27, x0]	// id: 2058, l: 2059	
	add	 x0, x0, #0x1	// id: 2059, l: 2060	
	bgt	 .L126	// id: 2060, l: 2061	
	b	 .L112	// id: 2061, l: 2062	
.L395:	// id: 2062, l: 2063	
	mov	 x25, x1	// id: 2063, l: 2064	
	mov	 x0, x19	// id: 2064, l: 2065	
	mov	 w1, w26	// id: 2065, l: 2066	
	str	 x19, [sp, #112]	// id: 2066, l: 2067	
	b	 .L61	// id: 2067, l: 2068	
.L412:	// id: 2068, l: 2069	
	cmp	 x0, #0x1e	// id: 2069, l: 2070	
	mov	 x2, #0xfffffffffffffff9    	// #-7	// id: 2070, l: 2071	
	ldr	 x0, [sp, #136]	// id: 2071, l: 2072	
	movk	 x2, #0x7fff, lsl #48	// id: 2072, l: 2073	
	ccmp	 x0, x2, #0x2, hi  // hi = pmore	// id: 2073, l: 2074	
	mov	 x0, #0x0                   	// #0	// id: 2074, l: 2075	
	bhi	 .L67	// id: 2075, l: 2076	
	ldr	 x2, [sp, #168]	// id: 2076, l: 2077	
.L68:	// id: 2077, l: 2078	
	ldr	 q1, [x20, x0]	// id: 2078, l: 2079	
	ldr	 q0, [x1, x0]	// id: 2079, l: 2080	
	str	 q1, [x1, x0]	// id: 2080, l: 2081	
	str	 q0, [x20, x0]	// id: 2081, l: 2082	
	add	 x0, x0, #0x10	// id: 2082, l: 2083	
	cmp	 x0, x2	// id: 2083, l: 2084	
	bne	 .L68	// id: 2084, l: 2085	
	ldp	 x0, x1, [sp, #152]	// id: 2085, l: 2086	
	cmp	 x0, x1	// id: 2086, l: 2087	
	beq	 .L64	// id: 2087, l: 2088	
	ldr	 x1, [sp, #128]	// id: 2088, l: 2089	
	ldr	 x5, [x20, x22]	// id: 2089, l: 2090	
	ldr	 x0, [x1, x22]	// id: 2090, l: 2091	
	str	 x5, [x1, x22]	// id: 2091, l: 2092	
	str	 x0, [x20, x22]	// id: 2092, l: 2093	
	b	 .L64	// id: 2093, l: 2094	
.L67:	// id: 2094, l: 2095	
	ldr	 x3, [x20, x0, lsl #3]	// id: 2095, l: 2096	
	ldr	 x2, [x1, x0, lsl #3]	// id: 2096, l: 2097	
	str	 x3, [x1, x0, lsl #3]	// id: 2097, l: 2098	
	str	 x2, [x20, x0, lsl #3]	// id: 2098, l: 2099	
	add	 x0, x0, #0x1	// id: 2099, l: 2100	
	ldr	 x2, [sp, #176]	// id: 2100, l: 2101	
	sub	 x2, x2, x0	// id: 2101, l: 2102	
	cmp	 x2, #0x0	// id: 2102, l: 2103	
	bgt	 .L67	// id: 2103, l: 2104	
	b	 .L64	// id: 2104, l: 2105	
	.p2align	2, , 3	// id: 2105, l: 2106	
.L10:	// id: 2106, l: 2107	
	cmp	 w23, #0x1	// id: 2107, l: 2108	
	ldr	 x0, [sp, #112]	// id: 2108, l: 2109	
	beq	 .L416	// id: 2109, l: 2110	
	cmp	 w19, #0x1	// id: 2110, l: 2111	
	beq	 .L417	// id: 2111, l: 2112	
	cmp	 x0, #0x0	// id: 2112, l: 2113	
	add	 x0, x28, #0x10	// id: 2113, l: 2114	
	ccmp	 x27, x0, #0x2, gt	// id: 2114, l: 2115	
	ldr	 w0, [sp, #148]	// id: 2115, l: 2116	
	ccmp	 w0, #0xf, #0x4, cs  // cs = hs, nlast	// id: 2116, l: 2117	
	ble	 .L202	// id: 2117, l: 2118	
	ldr	 x1, [sp, #200]	// id: 2118, l: 2119	
	mov	 x0, #0x0                   	// #0	// id: 2119, l: 2120	
	.p2align	3, , 7	// id: 2120, l: 2121	
.L24:	// id: 2121, l: 2122	
	ldr	 q1, [x27, x0]	// id: 2122, l: 2123	
	ldr	 q0, [x28, x0]	// id: 2123, l: 2124	
	str	 q1, [x28, x0]	// id: 2124, l: 2125	
	str	 q0, [x27, x0]	// id: 2125, l: 2126	
	add	 x0, x0, #0x10	// id: 2126, l: 2127	
	cmp	 x0, x1	// id: 2127, l: 2128	
	bne	 .L24	// id: 2128, l: 2129	
	ldp	 x0, x2, [sp, #184]	// id: 2129, l: 2130	
	cmp	 x0, x2	// id: 2130, l: 2131	
	add	 x1, x28, x2	// id: 2131, l: 2132	
	add	 x0, x27, x2	// id: 2132, l: 2133	
	beq	 .L9	// id: 2133, l: 2134	
	ldrb	 w5, [x27, x2]	// id: 2134, l: 2135	
	ldrb	 w4, [x28, x2]	// id: 2135, l: 2136	
	strb	 w5, [x28, x2]	// id: 2136, l: 2137	
	ldr	 x3, [sp, #208]	// id: 2137, l: 2138	
	strb	 w4, [x27, x2]	// id: 2138, l: 2139	
	cmp	 x3, #0x0	// id: 2139, l: 2140	
	ble	 .L9	// id: 2140, l: 2141	
	ldrb	 w5, [x0, #1]	// id: 2141, l: 2142	
	ldrb	 w4, [x1, #1]	// id: 2142, l: 2143	
	strb	 w5, [x1, #1]	// id: 2143, l: 2144	
	ldr	 x2, [sp, #216]	// id: 2144, l: 2145	
	strb	 w4, [x0, #1]	// id: 2145, l: 2146	
	cmp	 x2, #0x0	// id: 2146, l: 2147	
	ble	 .L9	// id: 2147, l: 2148	
	ldrb	 w5, [x0, #2]	// id: 2148, l: 2149	
	ldrb	 w4, [x1, #2]	// id: 2149, l: 2150	
	strb	 w5, [x1, #2]	// id: 2150, l: 2151	
	ldr	 x2, [sp, #224]	// id: 2151, l: 2152	
	strb	 w4, [x0, #2]	// id: 2152, l: 2153	
	cmp	 x2, #0x0	// id: 2153, l: 2154	
	ble	 .L9	// id: 2154, l: 2155	
	ldrb	 w5, [x0, #3]	// id: 2155, l: 2156	
	ldrb	 w4, [x1, #3]	// id: 2156, l: 2157	
	strb	 w5, [x1, #3]	// id: 2157, l: 2158	
	ldr	 x2, [sp, #272]	// id: 2158, l: 2159	
	strb	 w4, [x0, #3]	// id: 2159, l: 2160	
	cmp	 x2, #0x0	// id: 2160, l: 2161	
	ble	 .L9	// id: 2161, l: 2162	
	ldrb	 w5, [x0, #4]	// id: 2162, l: 2163	
	ldrb	 w4, [x1, #4]	// id: 2163, l: 2164	
	strb	 w5, [x1, #4]	// id: 2164, l: 2165	
	ldr	 x2, [sp, #280]	// id: 2165, l: 2166	
	strb	 w4, [x0, #4]	// id: 2166, l: 2167	
	cmp	 x2, #0x0	// id: 2167, l: 2168	
	ble	 .L9	// id: 2168, l: 2169	
	ldrb	 w5, [x0, #5]	// id: 2169, l: 2170	
	ldrb	 w4, [x1, #5]	// id: 2170, l: 2171	
	strb	 w5, [x1, #5]	// id: 2171, l: 2172	
	ldr	 x2, [sp, #296]	// id: 2172, l: 2173	
	strb	 w4, [x0, #5]	// id: 2173, l: 2174	
	cmp	 x2, #0x0	// id: 2174, l: 2175	
	ble	 .L9	// id: 2175, l: 2176	
	ldrb	 w5, [x0, #6]	// id: 2176, l: 2177	
	ldrb	 w4, [x1, #6]	// id: 2177, l: 2178	
	strb	 w5, [x1, #6]	// id: 2178, l: 2179	
	ldr	 x2, [sp, #312]	// id: 2179, l: 2180	
	strb	 w4, [x0, #6]	// id: 2180, l: 2181	
	cmp	 x2, #0x0	// id: 2181, l: 2182	
	ble	 .L9	// id: 2182, l: 2183	
	ldrb	 w5, [x0, #7]	// id: 2183, l: 2184	
	ldrb	 w4, [x1, #7]	// id: 2184, l: 2185	
	strb	 w5, [x1, #7]	// id: 2185, l: 2186	
	ldr	 x2, [sp, #328]	// id: 2186, l: 2187	
	strb	 w4, [x0, #7]	// id: 2187, l: 2188	
	cmp	 x2, #0x0	// id: 2188, l: 2189	
	ble	 .L9	// id: 2189, l: 2190	
	ldrb	 w5, [x0, #8]	// id: 2190, l: 2191	
	ldrb	 w4, [x1, #8]	// id: 2191, l: 2192	
	strb	 w5, [x1, #8]	// id: 2192, l: 2193	
	ldr	 x2, [sp, #344]	// id: 2193, l: 2194	
	strb	 w4, [x0, #8]	// id: 2194, l: 2195	
	cmp	 x2, #0x0	// id: 2195, l: 2196	
	ble	 .L9	// id: 2196, l: 2197	
	ldrb	 w5, [x0, #9]	// id: 2197, l: 2198	
	ldrb	 w4, [x1, #9]	// id: 2198, l: 2199	
	strb	 w5, [x1, #9]	// id: 2199, l: 2200	
	ldr	 x2, [sp, #352]	// id: 2200, l: 2201	
	strb	 w4, [x0, #9]	// id: 2201, l: 2202	
	cmp	 x2, #0x0	// id: 2202, l: 2203	
	ble	 .L9	// id: 2203, l: 2204	
	ldrb	 w5, [x0, #10]	// id: 2204, l: 2205	
	ldrb	 w4, [x1, #10]	// id: 2205, l: 2206	
	strb	 w5, [x1, #10]	// id: 2206, l: 2207	
	ldr	 x2, [sp, #360]	// id: 2207, l: 2208	
	strb	 w4, [x0, #10]	// id: 2208, l: 2209	
	cmp	 x2, #0x0	// id: 2209, l: 2210	
	ble	 .L9	// id: 2210, l: 2211	
	ldrb	 w5, [x0, #11]	// id: 2211, l: 2212	
	ldrb	 w4, [x1, #11]	// id: 2212, l: 2213	
	strb	 w5, [x1, #11]	// id: 2213, l: 2214	
	ldr	 x2, [sp, #376]	// id: 2214, l: 2215	
	strb	 w4, [x0, #11]	// id: 2215, l: 2216	
	cmp	 x2, #0x0	// id: 2216, l: 2217	
	ble	 .L9	// id: 2217, l: 2218	
	ldrb	 w5, [x0, #12]	// id: 2218, l: 2219	
	ldrb	 w4, [x1, #12]	// id: 2219, l: 2220	
	strb	 w5, [x1, #12]	// id: 2220, l: 2221	
	ldr	 x2, [sp, #384]	// id: 2221, l: 2222	
	strb	 w4, [x0, #12]	// id: 2222, l: 2223	
	cmp	 x2, #0x0	// id: 2223, l: 2224	
	ble	 .L9	// id: 2224, l: 2225	
	ldrb	 w5, [x0, #13]	// id: 2225, l: 2226	
	ldrb	 w4, [x1, #13]	// id: 2226, l: 2227	
	strb	 w5, [x1, #13]	// id: 2227, l: 2228	
	ldr	 x2, [sp, #392]	// id: 2228, l: 2229	
	strb	 w4, [x0, #13]	// id: 2229, l: 2230	
	cmp	 x2, #0x0	// id: 2230, l: 2231	
	ble	 .L9	// id: 2231, l: 2232	
	ldrb	 w5, [x0, #14]	// id: 2232, l: 2233	
	ldrb	 w4, [x1, #14]	// id: 2233, l: 2234	
	strb	 w5, [x1, #14]	// id: 2234, l: 2235	
	strb	 w4, [x0, #14]	// id: 2235, l: 2236	
	b	 .L9	// id: 2236, l: 2237	
.L416:	// id: 2237, l: 2238	
	cmp	 x0, #0x0	// id: 2238, l: 2239	
	add	 x0, x28, #0x10	// id: 2239, l: 2240	
	ccmp	 x27, x0, #0x2, gt	// id: 2240, l: 2241	
	mov	 x1, #0xfffffffffffffff9    	// #-7	// id: 2241, l: 2242	
	ldr	 x0, [sp, #104]	// id: 2242, l: 2243	
	movk	 x1, #0x7fff, lsl #48	// id: 2243, l: 2244	
	ccmp	 x0, x1, #0x2, cs  // cs = hs, nlast	// id: 2244, l: 2245	
	mov	 x0, #0x0                   	// #0	// id: 2245, l: 2246	
	bhi	 .L200	// id: 2246, l: 2247	
	ldr	 x1, [sp, #168]	// id: 2247, l: 2248	
	.p2align	3, , 7	// id: 2248, l: 2249	
.L13:	// id: 2249, l: 2250	
	ldr	 q1, [x27, x0]	// id: 2250, l: 2251	
	ldr	 q0, [x28, x0]	// id: 2251, l: 2252	
	str	 q1, [x28, x0]	// id: 2252, l: 2253	
	str	 q0, [x27, x0]	// id: 2253, l: 2254	
	add	 x0, x0, #0x10	// id: 2254, l: 2255	
	cmp	 x0, x1	// id: 2255, l: 2256	
	bne	 .L13	// id: 2256, l: 2257	
	ldp	 x0, x1, [sp, #152]	// id: 2257, l: 2258	
	cmp	 x0, x1	// id: 2258, l: 2259	
	beq	 .L9	// id: 2259, l: 2260	
	ldr	 x1, [x27, x22]	// id: 2260, l: 2261	
	ldr	 x0, [x28, x22]	// id: 2261, l: 2262	
	str	 x1, [x28, x22]	// id: 2262, l: 2263	
	str	 x0, [x27, x22]	// id: 2263, l: 2264	
	b	 .L9	// id: 2264, l: 2265	
.L417:	// id: 2265, l: 2266	
	cmp	 x0, #0x0	// id: 2266, l: 2267	
	add	 x0, x28, #0x10	// id: 2267, l: 2268	
	ccmp	 x27, x0, #0x2, gt	// id: 2268, l: 2269	
	mov	 x1, #0xfffffffffffffff9    	// #-7	// id: 2269, l: 2270	
	ldr	 x0, [sp, #128]	// id: 2270, l: 2271	
	movk	 x1, #0x7fff, lsl #48	// id: 2271, l: 2272	
	ccmp	 x0, x1, #0x2, cs  // cs = hs, nlast	// id: 2272, l: 2273	
	mov	 x0, #0x0                   	// #0	// id: 2273, l: 2274	
	bhi	 .L201	// id: 2274, l: 2275	
	ldr	 x1, [sp, #256]	// id: 2275, l: 2276	
	.p2align	3, , 7	// id: 2276, l: 2277	
.L18:	// id: 2277, l: 2278	
	ldr	 q1, [x27, x0]	// id: 2278, l: 2279	
	ldr	 q0, [x28, x0]	// id: 2279, l: 2280	
	str	 q1, [x28, x0]	// id: 2280, l: 2281	
	str	 q0, [x27, x0]	// id: 2281, l: 2282	
	add	 x0, x0, #0x10	// id: 2282, l: 2283	
	cmp	 x0, x1	// id: 2283, l: 2284	
	bne	 .L18	// id: 2284, l: 2285	
	ldp	 x0, x1, [sp, #232]	// id: 2285, l: 2286	
	ldr	 x2, [sp, #248]	// id: 2286, l: 2287	
	cmp	 x0, x1	// id: 2287, l: 2288	
	add	 x1, x28, x2	// id: 2288, l: 2289	
	add	 x0, x27, x2	// id: 2289, l: 2290	
	beq	 .L9	// id: 2290, l: 2291	
	ldr	 w5, [x27, x2]	// id: 2291, l: 2292	
	ldr	 w4, [x28, x2]	// id: 2292, l: 2293	
	str	 w5, [x28, x2]	// id: 2293, l: 2294	
	ldr	 x3, [sp, #288]	// id: 2294, l: 2295	
	str	 w4, [x27, x2]	// id: 2295, l: 2296	
	cmp	 x3, #0x0	// id: 2296, l: 2297	
	ble	 .L9	// id: 2297, l: 2298	
	ldr	 w5, [x0, #4]	// id: 2298, l: 2299	
	ldr	 w4, [x1, #4]	// id: 2299, l: 2300	
	str	 w5, [x1, #4]	// id: 2300, l: 2301	
	ldr	 x2, [sp, #304]	// id: 2301, l: 2302	
	str	 w4, [x0, #4]	// id: 2302, l: 2303	
	cmp	 x2, #0x0	// id: 2303, l: 2304	
	ble	 .L9	// id: 2304, l: 2305	
	ldr	 w5, [x0, #8]	// id: 2305, l: 2306	
	ldr	 w4, [x1, #8]	// id: 2306, l: 2307	
	str	 w5, [x1, #8]	// id: 2307, l: 2308	
	str	 w4, [x0, #8]	// id: 2308, l: 2309	
	b	 .L9	// id: 2309, l: 2310	
.L200:	// id: 2310, l: 2311	
	ldr	 x3, [sp, #176]	// id: 2311, l: 2312	
.L12:	// id: 2312, l: 2313	
	ldr	 x2, [x27, x0, lsl #3]	// id: 2313, l: 2314	
	ldr	 x1, [x28, x0, lsl #3]	// id: 2314, l: 2315	
	str	 x2, [x28, x0, lsl #3]	// id: 2315, l: 2316	
	str	 x1, [x27, x0, lsl #3]	// id: 2316, l: 2317	
	add	 x0, x0, #0x1	// id: 2317, l: 2318	
	sub	 x1, x3, x0	// id: 2318, l: 2319	
	cmp	 x1, #0x0	// id: 2319, l: 2320	
	bgt	 .L12	// id: 2320, l: 2321	
	b	 .L9	// id: 2321, l: 2322	
.L222:	// id: 2322, l: 2323	
	ldr	 x3, [sp, #336]	// id: 2323, l: 2324	
.L120:	// id: 2324, l: 2325	
	ldr	 w2, [x27, x0, lsl #2]	// id: 2325, l: 2326	
	ldr	 w1, [x20, x0, lsl #2]	// id: 2326, l: 2327	
	str	 w2, [x20, x0, lsl #2]	// id: 2327, l: 2328	
	str	 w1, [x27, x0, lsl #2]	// id: 2328, l: 2329	
	add	 x0, x0, #0x1	// id: 2329, l: 2330	
	sub	 x1, x3, x0	// id: 2330, l: 2331	
	cmp	 x1, #0x0	// id: 2331, l: 2332	
	bgt	 .L120	// id: 2332, l: 2333	
	b	 .L112	// id: 2333, l: 2334	
.L224:	// id: 2334, l: 2335	
	ldr	 x3, [sp, #176]	// id: 2335, l: 2336	
.L136:	// id: 2336, l: 2337	
	ldr	 x2, [x27, x0, lsl #3]	// id: 2337, l: 2338	
	ldr	 x1, [x28, x0, lsl #3]	// id: 2338, l: 2339	
	str	 x2, [x28, x0, lsl #3]	// id: 2339, l: 2340	
	str	 x1, [x27, x0, lsl #3]	// id: 2340, l: 2341	
	add	 x0, x0, #0x1	// id: 2341, l: 2342	
	sub	 x1, x3, x0	// id: 2342, l: 2343	
	cmp	 x1, #0x0	// id: 2343, l: 2344	
	bgt	 .L136	// id: 2344, l: 2345	
	b	 .L133	// id: 2345, l: 2346	
.L202:	// id: 2346, l: 2347	
	ldr	 x1, [sp, #368]	// id: 2347, l: 2348	
	mov	 x0, #0x0                   	// #0	// id: 2348, l: 2349	
.L23:	// id: 2349, l: 2350	
	ldrb	 w3, [x27, x0]	// id: 2350, l: 2351	
	sub	 x1, x1, #0x1	// id: 2351, l: 2352	
	ldrb	 w2, [x28, x0]	// id: 2352, l: 2353	
	cmp	 x1, #0x0	// id: 2353, l: 2354	
	strb	 w3, [x28, x0]	// id: 2354, l: 2355	
	strb	 w2, [x27, x0]	// id: 2355, l: 2356	
	add	 x0, x0, #0x1	// id: 2356, l: 2357	
	bgt	 .L23	// id: 2357, l: 2358	
	b	 .L9	// id: 2358, l: 2359	
.L226:	// id: 2359, l: 2360	
	ldr	 x4, [sp, #368]	// id: 2360, l: 2361	
	mov	 x0, #0x0                   	// #0	// id: 2361, l: 2362	
.L147:	// id: 2362, l: 2363	
	ldrb	 w2, [x27, x0]	// id: 2363, l: 2364	
	sub	 x4, x4, #0x1	// id: 2364, l: 2365	
	ldrb	 w1, [x28, x0]	// id: 2365, l: 2366	
	cmp	 x4, #0x0	// id: 2366, l: 2367	
	strb	 w2, [x28, x0]	// id: 2367, l: 2368	
	strb	 w1, [x27, x0]	// id: 2368, l: 2369	
	add	 x0, x0, #0x1	// id: 2369, l: 2370	
	bgt	 .L147	// id: 2370, l: 2371	
	b	 .L133	// id: 2371, l: 2372	
.L230:	// id: 2372, l: 2373	
	mov	 x3, x5	// id: 2373, l: 2374	
	mov	 x0, #0x0                   	// #0	// id: 2374, l: 2375	
.L174:	// id: 2375, l: 2376	
	ldr	 x6, [x4, x0, lsl #3]	// id: 2376, l: 2377	
	ldr	 x5, [x3, x0, lsl #3]	// id: 2377, l: 2378	
	str	 x6, [x3, x0, lsl #3]	// id: 2378, l: 2379	
	str	 x5, [x4, x0, lsl #3]	// id: 2379, l: 2380	
	add	 x0, x0, #0x1	// id: 2380, l: 2381	
	sub	 x5, x2, x0	// id: 2381, l: 2382	
	cmp	 x5, #0x0	// id: 2382, l: 2383	
	bgt	 .L174	// id: 2383, l: 2384	
	b	 .L177	// id: 2384, l: 2385	
.L227:	// id: 2385, l: 2386	
	mov	 x2, #0x0                   	// #0	// id: 2386, l: 2387	
.L157:	// id: 2387, l: 2388	
	ldr	 x6, [x4, x2, lsl #3]	// id: 2388, l: 2389	
	ldr	 x5, [x20, x2, lsl #3]	// id: 2389, l: 2390	
	str	 x6, [x20, x2, lsl #3]	// id: 2390, l: 2391	
	str	 x5, [x4, x2, lsl #3]	// id: 2391, l: 2392	
	add	 x2, x2, #0x1	// id: 2392, l: 2393	
	sub	 x5, x0, x2	// id: 2393, l: 2394	
	cmp	 x5, #0x0	// id: 2394, l: 2395	
	bgt	 .L157	// id: 2395, l: 2396	
	cbz	 x3, .L177	// id: 2396, l: 2397	
	b	 .L418	// id: 2397, l: 2398	
.L415:	// id: 2398, l: 2399	
	cmp	 x0, #0x1e	// id: 2399, l: 2400	
	mov	 x1, #0xfffffffffffffff9    	// #-7	// id: 2400, l: 2401	
	ldr	 x0, [sp, #264]	// id: 2401, l: 2402	
	movk	 x1, #0x7fff, lsl #48	// id: 2402, l: 2403	
	ccmp	 x0, x1, #0x2, hi  // hi = pmore	// id: 2403, l: 2404	
	mov	 x0, #0x0                   	// #0	// id: 2404, l: 2405	
	bhi	 .L48	// id: 2405, l: 2406	
	ldr	 x1, [sp, #256]	// id: 2406, l: 2407	
.L49:	// id: 2407, l: 2408	
	ldr	 q1, [x25, x0]	// id: 2408, l: 2409	
	ldr	 q0, [x20, x0]	// id: 2409, l: 2410	
	str	 q1, [x20, x0]	// id: 2410, l: 2411	
	str	 q0, [x25, x0]	// id: 2411, l: 2412	
	add	 x0, x0, #0x10	// id: 2412, l: 2413	
	cmp	 x0, x1	// id: 2413, l: 2414	
	bne	 .L49	// id: 2414, l: 2415	
	ldp	 x0, x1, [sp, #232]	// id: 2415, l: 2416	
	ldr	 x2, [sp, #248]	// id: 2416, l: 2417	
	cmp	 x0, x1	// id: 2417, l: 2418	
	add	 x1, x20, x2	// id: 2418, l: 2419	
	add	 x0, x25, x2	// id: 2419, l: 2420	
	beq	 .L40	// id: 2420, l: 2421	
	ldr	 w5, [x25, x2]	// id: 2421, l: 2422	
	ldr	 w4, [x20, x2]	// id: 2422, l: 2423	
	str	 w5, [x20, x2]	// id: 2423, l: 2424	
	ldr	 x3, [sp, #288]	// id: 2424, l: 2425	
	str	 w4, [x25, x2]	// id: 2425, l: 2426	
	cmp	 x3, #0x0	// id: 2426, l: 2427	
	ble	 .L40	// id: 2427, l: 2428	
	ldr	 w4, [x0, #4]	// id: 2428, l: 2429	
	ldr	 w3, [x1, #4]	// id: 2429, l: 2430	
	str	 w4, [x1, #4]	// id: 2430, l: 2431	
	ldr	 x2, [sp, #304]	// id: 2431, l: 2432	
	str	 w3, [x0, #4]	// id: 2432, l: 2433	
	cmp	 x2, #0x0	// id: 2433, l: 2434	
	ble	 .L40	// id: 2434, l: 2435	
	ldr	 w4, [x0, #8]	// id: 2435, l: 2436	
	ldr	 w3, [x1, #8]	// id: 2436, l: 2437	
	str	 w4, [x1, #8]	// id: 2437, l: 2438	
	str	 w3, [x0, #8]	// id: 2438, l: 2439	
	b	 .L40	// id: 2439, l: 2440	
.L48:	// id: 2440, l: 2441	
	ldr	 w2, [x25, x0, lsl #2]	// id: 2441, l: 2442	
	ldr	 w1, [x20, x0, lsl #2]	// id: 2442, l: 2443	
	str	 w2, [x20, x0, lsl #2]	// id: 2443, l: 2444	
	str	 w1, [x25, x0, lsl #2]	// id: 2444, l: 2445	
	add	 x0, x0, #0x1	// id: 2445, l: 2446	
	ldr	 x1, [sp, #336]	// id: 2446, l: 2447	
	sub	 x1, x1, x0	// id: 2447, l: 2448	
	cmp	 x1, #0x0	// id: 2448, l: 2449	
	bgt	 .L48	// id: 2449, l: 2450	
	b	 .L40	// id: 2450, l: 2451	
.L225:	// id: 2451, l: 2452	
	ldr	 x3, [sp, #336]	// id: 2452, l: 2453	
.L141:	// id: 2453, l: 2454	
	ldr	 w2, [x27, x0, lsl #2]	// id: 2454, l: 2455	
	ldr	 w1, [x28, x0, lsl #2]	// id: 2455, l: 2456	
	str	 w2, [x28, x0, lsl #2]	// id: 2456, l: 2457	
	str	 w1, [x27, x0, lsl #2]	// id: 2457, l: 2458	
	add	 x0, x0, #0x1	// id: 2458, l: 2459	
	sub	 x1, x3, x0	// id: 2459, l: 2460	
	cmp	 x1, #0x0	// id: 2460, l: 2461	
	bgt	 .L141	// id: 2461, l: 2462	
	b	 .L133	// id: 2462, l: 2463	
.L201:	// id: 2463, l: 2464	
	ldr	 x3, [sp, #336]	// id: 2464, l: 2465	
.L17:	// id: 2465, l: 2466	
	ldr	 w2, [x27, x0, lsl #2]	// id: 2466, l: 2467	
	ldr	 w1, [x28, x0, lsl #2]	// id: 2467, l: 2468	
	str	 w2, [x28, x0, lsl #2]	// id: 2468, l: 2469	
	str	 w1, [x27, x0, lsl #2]	// id: 2469, l: 2470	
	add	 x0, x0, #0x1	// id: 2470, l: 2471	
	sub	 x1, x3, x0	// id: 2471, l: 2472	
	cmp	 x1, #0x0	// id: 2472, l: 2473	
	bgt	 .L17	// id: 2473, l: 2474	
	b	 .L9	// id: 2474, l: 2475	
.L229:	// id: 2475, l: 2476	
	mov	 x0, #0x0                   	// #0	// id: 2476, l: 2477	
.L166:	// id: 2477, l: 2478	
	ldrb	 w6, [x4, x0]	// id: 2478, l: 2479	
	sub	 x5, x5, #0x1	// id: 2479, l: 2480	
	ldrb	 w2, [x20, x0]	// id: 2480, l: 2481	
	cmp	 x5, #0x0	// id: 2481, l: 2482	
	strb	 w6, [x20, x0]	// id: 2482, l: 2483	
	strb	 w2, [x4, x0]	// id: 2483, l: 2484	
	add	 x0, x0, #0x1	// id: 2484, l: 2485	
	bgt	 .L166	// id: 2485, l: 2486	
	cbz	 x3, .L177	// id: 2486, l: 2487	
	b	 .L419	// id: 2487, l: 2488	
.L232:	// id: 2488, l: 2489	
	mov	 x2, x5	// id: 2489, l: 2490	
	mov	 x0, #0x0                   	// #0	// id: 2490, l: 2491	
.L186:	// id: 2491, l: 2492	
	ldrb	 w6, [x4, x0]	// id: 2492, l: 2493	
	sub	 x3, x3, #0x1	// id: 2493, l: 2494	
	ldrb	 w5, [x2, x0]	// id: 2494, l: 2495	
	cmp	 x3, #0x0	// id: 2495, l: 2496	
	strb	 w6, [x2, x0]	// id: 2496, l: 2497	
	strb	 w5, [x4, x0]	// id: 2497, l: 2498	
	add	 x0, x0, #0x1	// id: 2498, l: 2499	
	bgt	 .L186	// id: 2499, l: 2500	
	b	 .L177	// id: 2500, l: 2501	
.L231:	// id: 2501, l: 2502	
	mov	 x3, x6	// id: 2502, l: 2503	
	mov	 x2, #0x0                   	// #0	// id: 2503, l: 2504	
.L181:	// id: 2504, l: 2505	
	ldr	 w6, [x4, x2, lsl #2]	// id: 2505, l: 2506	
	ldr	 w5, [x3, x2, lsl #2]	// id: 2506, l: 2507	
	str	 w6, [x3, x2, lsl #2]	// id: 2507, l: 2508	
	str	 w5, [x4, x2, lsl #2]	// id: 2508, l: 2509	
	add	 x2, x2, #0x1	// id: 2509, l: 2510	
	sub	 x5, x0, x2	// id: 2510, l: 2511	
	cmp	 x5, #0x0	// id: 2511, l: 2512	
	bgt	 .L181	// id: 2512, l: 2513	
	b	 .L177	// id: 2513, l: 2514	
.L228:	// id: 2514, l: 2515	
	mov	 x2, #0x0                   	// #0	// id: 2515, l: 2516	
.L162:	// id: 2516, l: 2517	
	ldr	 w6, [x4, x2, lsl #2]	// id: 2517, l: 2518	
	ldr	 w5, [x20, x2, lsl #2]	// id: 2518, l: 2519	
	str	 w6, [x20, x2, lsl #2]	// id: 2519, l: 2520	
	str	 w5, [x4, x2, lsl #2]	// id: 2520, l: 2521	
	add	 x2, x2, #0x1	// id: 2521, l: 2522	
	sub	 x5, x0, x2	// id: 2522, l: 2523	
	cmp	 x5, #0x0	// id: 2523, l: 2524	
	bgt	 .L162	// id: 2524, l: 2525	
	cbz	 x3, .L177	// id: 2525, l: 2526	
	b	 .L420	// id: 2526, l: 2527	
.L217:	// id: 2527, l: 2528	
	ldr	 x5, [sp, #368]	// id: 2528, l: 2529	
	mov	 x0, #0x0                   	// #0	// id: 2529, l: 2530	
.L78:	// id: 2530, l: 2531	
	ldrb	 w3, [x20, x0]	// id: 2531, l: 2532	
	sub	 x5, x5, #0x1	// id: 2532, l: 2533	
	ldrb	 w2, [x1, x0]	// id: 2533, l: 2534	
	cmp	 x5, #0x0	// id: 2534, l: 2535	
	strb	 w3, [x1, x0]	// id: 2535, l: 2536	
	strb	 w2, [x20, x0]	// id: 2536, l: 2537	
	add	 x0, x0, #0x1	// id: 2537, l: 2538	
	bgt	 .L78	// id: 2538, l: 2539	
	b	 .L64	// id: 2539, l: 2540	
.L214:	// id: 2540, l: 2541	
	ldr	 x1, [sp, #368]	// id: 2541, l: 2542	
	mov	 x0, #0x0                   	// #0	// id: 2542, l: 2543	
.L54:	// id: 2543, l: 2544	
	ldrb	 w3, [x25, x0]	// id: 2544, l: 2545	
	sub	 x1, x1, #0x1	// id: 2545, l: 2546	
	ldrb	 w2, [x20, x0]	// id: 2546, l: 2547	
	cmp	 x1, #0x0	// id: 2547, l: 2548	
	strb	 w3, [x20, x0]	// id: 2548, l: 2549	
	strb	 w2, [x25, x0]	// id: 2549, l: 2550	
	add	 x0, x0, #0x1	// id: 2550, l: 2551	
	bgt	 .L54	// id: 2551, l: 2552	
	b	 .L40	// id: 2552, l: 2553	
	.cfi_endproc		// id: 2553, l: 2554	
.LFE6:	// id: 2554, l: 2555	
	.size	spec_qsort, .-spec_qsort	// id: 2555, l: 2556	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 2556, l: 2557	
	.section	.note.GNU-stack, "",@progbits	// id: 2557, l: 2558	
