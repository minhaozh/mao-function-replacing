	.arch	armv8-a	// id: 0, l: 1	
	.file	"lbm.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.section	.rodata	// id: 3, l: 4	
	.p2align	3, , 0	// id: 4, l: 5	
.LC0:	// id: 5, l: 6	
	.string	"LBM_allocateGrid: could not allocate %.1f MByte\n"	// id: 6, l: 7	
	.p2align	3, , 0	// id: 7, l: 8	
.LC1:	// id: 8, l: 9	
	.string	"LBM_allocateGrid: allocated %.1f MByte\n"	// id: 9, l: 10	
	.text	0	// id: 10, l: 11	
	.p2align	2, , 0	// id: 11, l: 12	
	.globl	LBM_allocateGrid	// id: 12, l: 13	
	.type	LBM_allocateGrid, %function	// id: 13, l: 14	
LBM_allocateGrid:	// id: 14, l: 15	
.LFB2:	// id: 15, l: 16	
	.cfi_startproc		// id: 16, l: 17	
	stp	 x29, x30, [sp, #-48]!	// id: 17, l: 18	
	.cfi_def_cfa_offset	48	// id: 18, l: 19	
	.cfi_offset	29, -48	// id: 19, l: 20	
	.cfi_offset	30, -40	// id: 20, l: 21	
	mov	 x29, sp	// id: 21, l: 22	
	str	 x0, [sp, #24]	// id: 22, l: 23	
	mov	 x0, #0x1a80                	// #6784	// id: 23, l: 24	
	movk	 x0, #0x6, lsl #16	// id: 24, l: 25	
	str	 x0, [sp, #40]	// id: 25, l: 26	
	ldr	 x1, [sp, #40]	// id: 26, l: 27	
	mov	 x0, #0x5d40                	// #23872	// id: 27, l: 28	
	movk	 x0, #0xc6, lsl #16	// id: 28, l: 29	
	add	 x0, x1, x0	// id: 29, l: 30	
	lsl	 x0, x0, #4	// id: 30, l: 31	
	str	 x0, [sp, #32]	// id: 31, l: 32	
	ldr	 x0, [sp, #32]	// id: 32, l: 33	
	bl	 malloc	// id: 33, l: 34	
	mov	 x1, x0	// id: 34, l: 35	
	ldr	 x0, [sp, #24]	// id: 35, l: 36	
	str	 x1, [x0]	// id: 36, l: 37	
	ldr	 x0, [sp, #24]	// id: 37, l: 38	
	ldr	 x0, [x0]	// id: 38, l: 39	
	cmp	 x0, #0x0	// id: 39, l: 40	
	bne	 .L2	// id: 40, l: 41	
	ldr	 d0, [sp, #32]	// id: 41, l: 42	
	ucvtf	 d0, d0	// id: 42, l: 43	
	mov	 x0, #0x4130000000000000    	// #4697254411347427328	// id: 43, l: 44	
	fmov	 d1, x0	// id: 44, l: 45	
	fdiv	 d0, d0, d1	// id: 45, l: 46	
	adrp	 x0, .LC0	// id: 46, l: 47	
	add	 x0, x0, :lo12:.LC0	// id: 47, l: 48	
	bl	 printf	// id: 48, l: 49	
	mov	 w0, #0x1                   	// #1	// id: 49, l: 50	
	bl	 exit	// id: 50, l: 51	
.L2:	// id: 51, l: 52	
	ldr	 d0, [sp, #32]	// id: 52, l: 53	
	ucvtf	 d0, d0	// id: 53, l: 54	
	mov	 x0, #0x4130000000000000    	// #4697254411347427328	// id: 54, l: 55	
	fmov	 d1, x0	// id: 55, l: 56	
	fdiv	 d0, d0, d1	// id: 56, l: 57	
	adrp	 x0, .LC1	// id: 57, l: 58	
	add	 x0, x0, :lo12:.LC1	// id: 58, l: 59	
	bl	 printf	// id: 59, l: 60	
	ldr	 x0, [sp, #24]	// id: 60, l: 61	
	ldr	 x1, [x0]	// id: 61, l: 62	
	ldr	 x0, [sp, #40]	// id: 62, l: 63	
	lsl	 x0, x0, #3	// id: 63, l: 64	
	add	 x1, x1, x0	// id: 64, l: 65	
	ldr	 x0, [sp, #24]	// id: 65, l: 66	
	str	 x1, [x0]	// id: 66, l: 67	
	nop		// id: 67, l: 68	
	ldp	 x29, x30, [sp], #48	// id: 68, l: 69	
	.cfi_restore	30	// id: 69, l: 70	
	.cfi_restore	29	// id: 70, l: 71	
	.cfi_def_cfa_offset	0	// id: 71, l: 72	
	ret		// id: 72, l: 73	
	.cfi_endproc		// id: 73, l: 74	
.LFE2:	// id: 74, l: 75	
	.size	LBM_allocateGrid, .-LBM_allocateGrid	// id: 75, l: 76	
	.p2align	2, , 0	// id: 76, l: 77	
	.globl	LBM_freeGrid	// id: 77, l: 78	
	.type	LBM_freeGrid, %function	// id: 78, l: 79	
LBM_freeGrid:	// id: 79, l: 80	
.LFB3:	// id: 80, l: 81	
	.cfi_startproc		// id: 81, l: 82	
	stp	 x29, x30, [sp, #-48]!	// id: 82, l: 83	
	.cfi_def_cfa_offset	48	// id: 83, l: 84	
	.cfi_offset	29, -48	// id: 84, l: 85	
	.cfi_offset	30, -40	// id: 85, l: 86	
	mov	 x29, sp	// id: 86, l: 87	
	str	 x0, [sp, #24]	// id: 87, l: 88	
	mov	 x0, #0x1a80                	// #6784	// id: 88, l: 89	
	movk	 x0, #0x6, lsl #16	// id: 89, l: 90	
	str	 x0, [sp, #40]	// id: 90, l: 91	
	ldr	 x0, [sp, #24]	// id: 91, l: 92	
	ldr	 x1, [x0]	// id: 92, l: 93	
	ldr	 x0, [sp, #40]	// id: 93, l: 94	
	lsl	 x0, x0, #3	// id: 94, l: 95	
	neg	 x0, x0	// id: 95, l: 96	
	add	 x0, x1, x0	// id: 96, l: 97	
	bl	 free	// id: 97, l: 98	
	ldr	 x0, [sp, #24]	// id: 98, l: 99	
	str	 xzr, [x0]	// id: 99, l: 100	
	nop		// id: 100, l: 101	
	ldp	 x29, x30, [sp], #48	// id: 101, l: 102	
	.cfi_restore	30	// id: 102, l: 103	
	.cfi_restore	29	// id: 103, l: 104	
	.cfi_def_cfa_offset	0	// id: 104, l: 105	
	ret		// id: 105, l: 106	
	.cfi_endproc		// id: 106, l: 107	
.LFE3:	// id: 107, l: 108	
	.size	LBM_freeGrid, .-LBM_freeGrid	// id: 108, l: 109	
	.p2align	2, , 0	// id: 109, l: 110	
	.globl	LBM_initializeGrid	// id: 110, l: 111	
	.type	LBM_initializeGrid, %function	// id: 111, l: 112	
LBM_initializeGrid:	// id: 112, l: 113	
.LFB4:	// id: 113, l: 114	
	.cfi_startproc		// id: 114, l: 115	
	sub	 sp, sp, #0x20	// id: 115, l: 116	
	.cfi_def_cfa_offset	32	// id: 116, l: 117	
	str	 x0, [sp, #8]	// id: 117, l: 118	
	mov	 w0, #0xe580                	// #58752	// id: 118, l: 119	
	movk	 w0, #0xfff9, lsl #16	// id: 119, l: 120	
	str	 w0, [sp, #28]	// id: 120, l: 121	
	b	 .L5	// id: 121, l: 122	
.L6:	// id: 122, l: 123	
	ldrsw	 x0, [sp, #28]	// id: 123, l: 124	
	lsl	 x0, x0, #3	// id: 124, l: 125	
	ldr	 x1, [sp, #8]	// id: 125, l: 126	
	add	 x0, x1, x0	// id: 126, l: 127	
	mov	 x1, #0x5555555555555555    	// #6148914691236517205	// id: 127, l: 128	
	movk	 x1, #0x3fd5, lsl #48	// id: 128, l: 129	
	fmov	 d0, x1	// id: 129, l: 130	
	str	 d0, [x0]	// id: 130, l: 131	
	ldr	 w0, [sp, #28]	// id: 131, l: 132	
	add	 w0, w0, #0x1	// id: 132, l: 133	
	sxtw	 x0, w0	// id: 133, l: 134	
	lsl	 x0, x0, #3	// id: 134, l: 135	
	ldr	 x1, [sp, #8]	// id: 135, l: 136	
	add	 x0, x1, x0	// id: 136, l: 137	
	adrp	 x1, .LC2	// id: 137, l: 138	
	ldr	 d0, [x1,:lo12:.LC2]	// id: 138, l: 139	
	str	 d0, [x0]	// id: 139, l: 140	
	ldr	 w0, [sp, #28]	// id: 140, l: 141	
	add	 w0, w0, #0x2	// id: 141, l: 142	
	sxtw	 x0, w0	// id: 142, l: 143	
	lsl	 x0, x0, #3	// id: 143, l: 144	
	ldr	 x1, [sp, #8]	// id: 144, l: 145	
	add	 x0, x1, x0	// id: 145, l: 146	
	adrp	 x1, .LC2	// id: 146, l: 147	
	ldr	 d0, [x1,:lo12:.LC2]	// id: 147, l: 148	
	str	 d0, [x0]	// id: 148, l: 149	
	ldr	 w0, [sp, #28]	// id: 149, l: 150	
	add	 w0, w0, #0x3	// id: 150, l: 151	
	sxtw	 x0, w0	// id: 151, l: 152	
	lsl	 x0, x0, #3	// id: 152, l: 153	
	ldr	 x1, [sp, #8]	// id: 153, l: 154	
	add	 x0, x1, x0	// id: 154, l: 155	
	adrp	 x1, .LC2	// id: 155, l: 156	
	ldr	 d0, [x1,:lo12:.LC2]	// id: 156, l: 157	
	str	 d0, [x0]	// id: 157, l: 158	
	ldr	 w0, [sp, #28]	// id: 158, l: 159	
	add	 w0, w0, #0x4	// id: 159, l: 160	
	sxtw	 x0, w0	// id: 160, l: 161	
	lsl	 x0, x0, #3	// id: 161, l: 162	
	ldr	 x1, [sp, #8]	// id: 162, l: 163	
	add	 x0, x1, x0	// id: 163, l: 164	
	adrp	 x1, .LC2	// id: 164, l: 165	
	ldr	 d0, [x1,:lo12:.LC2]	// id: 165, l: 166	
	str	 d0, [x0]	// id: 166, l: 167	
	ldr	 w0, [sp, #28]	// id: 167, l: 168	
	add	 w0, w0, #0x5	// id: 168, l: 169	
	sxtw	 x0, w0	// id: 169, l: 170	
	lsl	 x0, x0, #3	// id: 170, l: 171	
	ldr	 x1, [sp, #8]	// id: 171, l: 172	
	add	 x0, x1, x0	// id: 172, l: 173	
	adrp	 x1, .LC2	// id: 173, l: 174	
	ldr	 d0, [x1,:lo12:.LC2]	// id: 174, l: 175	
	str	 d0, [x0]	// id: 175, l: 176	
	ldr	 w0, [sp, #28]	// id: 176, l: 177	
	add	 w0, w0, #0x6	// id: 177, l: 178	
	sxtw	 x0, w0	// id: 178, l: 179	
	lsl	 x0, x0, #3	// id: 179, l: 180	
	ldr	 x1, [sp, #8]	// id: 180, l: 181	
	add	 x0, x1, x0	// id: 181, l: 182	
	adrp	 x1, .LC2	// id: 182, l: 183	
	ldr	 d0, [x1,:lo12:.LC2]	// id: 183, l: 184	
	str	 d0, [x0]	// id: 184, l: 185	
	ldr	 w0, [sp, #28]	// id: 185, l: 186	
	add	 w0, w0, #0x7	// id: 186, l: 187	
	sxtw	 x0, w0	// id: 187, l: 188	
	lsl	 x0, x0, #3	// id: 188, l: 189	
	ldr	 x1, [sp, #8]	// id: 189, l: 190	
	add	 x0, x1, x0	// id: 190, l: 191	
	adrp	 x1, .LC3	// id: 191, l: 192	
	ldr	 d0, [x1,:lo12:.LC3]	// id: 192, l: 193	
	str	 d0, [x0]	// id: 193, l: 194	
	ldr	 w0, [sp, #28]	// id: 194, l: 195	
	add	 w0, w0, #0x8	// id: 195, l: 196	
	sxtw	 x0, w0	// id: 196, l: 197	
	lsl	 x0, x0, #3	// id: 197, l: 198	
	ldr	 x1, [sp, #8]	// id: 198, l: 199	
	add	 x0, x1, x0	// id: 199, l: 200	
	adrp	 x1, .LC3	// id: 200, l: 201	
	ldr	 d0, [x1,:lo12:.LC3]	// id: 201, l: 202	
	str	 d0, [x0]	// id: 202, l: 203	
	ldr	 w0, [sp, #28]	// id: 203, l: 204	
	add	 w0, w0, #0x9	// id: 204, l: 205	
	sxtw	 x0, w0	// id: 205, l: 206	
	lsl	 x0, x0, #3	// id: 206, l: 207	
	ldr	 x1, [sp, #8]	// id: 207, l: 208	
	add	 x0, x1, x0	// id: 208, l: 209	
	adrp	 x1, .LC3	// id: 209, l: 210	
	ldr	 d0, [x1,:lo12:.LC3]	// id: 210, l: 211	
	str	 d0, [x0]	// id: 211, l: 212	
	ldr	 w0, [sp, #28]	// id: 212, l: 213	
	add	 w0, w0, #0xa	// id: 213, l: 214	
	sxtw	 x0, w0	// id: 214, l: 215	
	lsl	 x0, x0, #3	// id: 215, l: 216	
	ldr	 x1, [sp, #8]	// id: 216, l: 217	
	add	 x0, x1, x0	// id: 217, l: 218	
	adrp	 x1, .LC3	// id: 218, l: 219	
	ldr	 d0, [x1,:lo12:.LC3]	// id: 219, l: 220	
	str	 d0, [x0]	// id: 220, l: 221	
	ldr	 w0, [sp, #28]	// id: 221, l: 222	
	add	 w0, w0, #0xb	// id: 222, l: 223	
	sxtw	 x0, w0	// id: 223, l: 224	
	lsl	 x0, x0, #3	// id: 224, l: 225	
	ldr	 x1, [sp, #8]	// id: 225, l: 226	
	add	 x0, x1, x0	// id: 226, l: 227	
	adrp	 x1, .LC3	// id: 227, l: 228	
	ldr	 d0, [x1,:lo12:.LC3]	// id: 228, l: 229	
	str	 d0, [x0]	// id: 229, l: 230	
	ldr	 w0, [sp, #28]	// id: 230, l: 231	
	add	 w0, w0, #0xc	// id: 231, l: 232	
	sxtw	 x0, w0	// id: 232, l: 233	
	lsl	 x0, x0, #3	// id: 233, l: 234	
	ldr	 x1, [sp, #8]	// id: 234, l: 235	
	add	 x0, x1, x0	// id: 235, l: 236	
	adrp	 x1, .LC3	// id: 236, l: 237	
	ldr	 d0, [x1,:lo12:.LC3]	// id: 237, l: 238	
	str	 d0, [x0]	// id: 238, l: 239	
	ldr	 w0, [sp, #28]	// id: 239, l: 240	
	add	 w0, w0, #0xd	// id: 240, l: 241	
	sxtw	 x0, w0	// id: 241, l: 242	
	lsl	 x0, x0, #3	// id: 242, l: 243	
	ldr	 x1, [sp, #8]	// id: 243, l: 244	
	add	 x0, x1, x0	// id: 244, l: 245	
	adrp	 x1, .LC3	// id: 245, l: 246	
	ldr	 d0, [x1,:lo12:.LC3]	// id: 246, l: 247	
	str	 d0, [x0]	// id: 247, l: 248	
	ldr	 w0, [sp, #28]	// id: 248, l: 249	
	add	 w0, w0, #0xe	// id: 249, l: 250	
	sxtw	 x0, w0	// id: 250, l: 251	
	lsl	 x0, x0, #3	// id: 251, l: 252	
	ldr	 x1, [sp, #8]	// id: 252, l: 253	
	add	 x0, x1, x0	// id: 253, l: 254	
	adrp	 x1, .LC3	// id: 254, l: 255	
	ldr	 d0, [x1,:lo12:.LC3]	// id: 255, l: 256	
	str	 d0, [x0]	// id: 256, l: 257	
	ldr	 w0, [sp, #28]	// id: 257, l: 258	
	add	 w0, w0, #0xf	// id: 258, l: 259	
	sxtw	 x0, w0	// id: 259, l: 260	
	lsl	 x0, x0, #3	// id: 260, l: 261	
	ldr	 x1, [sp, #8]	// id: 261, l: 262	
	add	 x0, x1, x0	// id: 262, l: 263	
	adrp	 x1, .LC3	// id: 263, l: 264	
	ldr	 d0, [x1,:lo12:.LC3]	// id: 264, l: 265	
	str	 d0, [x0]	// id: 265, l: 266	
	ldr	 w0, [sp, #28]	// id: 266, l: 267	
	add	 w0, w0, #0x10	// id: 267, l: 268	
	sxtw	 x0, w0	// id: 268, l: 269	
	lsl	 x0, x0, #3	// id: 269, l: 270	
	ldr	 x1, [sp, #8]	// id: 270, l: 271	
	add	 x0, x1, x0	// id: 271, l: 272	
	adrp	 x1, .LC3	// id: 272, l: 273	
	ldr	 d0, [x1,:lo12:.LC3]	// id: 273, l: 274	
	str	 d0, [x0]	// id: 274, l: 275	
	ldr	 w0, [sp, #28]	// id: 275, l: 276	
	add	 w0, w0, #0x11	// id: 276, l: 277	
	sxtw	 x0, w0	// id: 277, l: 278	
	lsl	 x0, x0, #3	// id: 278, l: 279	
	ldr	 x1, [sp, #8]	// id: 279, l: 280	
	add	 x0, x1, x0	// id: 280, l: 281	
	adrp	 x1, .LC3	// id: 281, l: 282	
	ldr	 d0, [x1,:lo12:.LC3]	// id: 282, l: 283	
	str	 d0, [x0]	// id: 283, l: 284	
	ldr	 w0, [sp, #28]	// id: 284, l: 285	
	add	 w0, w0, #0x12	// id: 285, l: 286	
	sxtw	 x0, w0	// id: 286, l: 287	
	lsl	 x0, x0, #3	// id: 287, l: 288	
	ldr	 x1, [sp, #8]	// id: 288, l: 289	
	add	 x0, x1, x0	// id: 289, l: 290	
	adrp	 x1, .LC3	// id: 290, l: 291	
	ldr	 d0, [x1,:lo12:.LC3]	// id: 291, l: 292	
	str	 d0, [x0]	// id: 292, l: 293	
	ldr	 w0, [sp, #28]	// id: 293, l: 294	
	add	 w0, w0, #0x13	// id: 294, l: 295	
	sxtw	 x0, w0	// id: 295, l: 296	
	lsl	 x0, x0, #3	// id: 296, l: 297	
	ldr	 x1, [sp, #8]	// id: 297, l: 298	
	add	 x0, x1, x0	// id: 298, l: 299	
	str	 x0, [sp, #16]	// id: 299, l: 300	
	ldr	 x0, [sp, #16]	// id: 300, l: 301	
	str	 wzr, [x0]	// id: 301, l: 302	
	ldr	 w0, [sp, #28]	// id: 302, l: 303	
	add	 w0, w0, #0x14	// id: 303, l: 304	
	str	 w0, [sp, #28]	// id: 304, l: 305	
.L5:	// id: 305, l: 306	
	ldr	 w1, [sp, #28]	// id: 306, l: 307	
	mov	 w0, #0xd4ff                	// #54527	// id: 307, l: 308	
	movk	 w0, #0x192, lsl #16	// id: 308, l: 309	
	cmp	 w1, w0	// id: 309, l: 310	
	ble	 .L6	// id: 310, l: 311	
	nop		// id: 311, l: 312	
	nop		// id: 312, l: 313	
	add	 sp, sp, #0x20	// id: 313, l: 314	
	.cfi_def_cfa_offset	0	// id: 314, l: 315	
	ret		// id: 315, l: 316	
	.cfi_endproc		// id: 316, l: 317	
.LFE4:	// id: 317, l: 318	
	.size	LBM_initializeGrid, .-LBM_initializeGrid	// id: 318, l: 319	
	.p2align	2, , 0	// id: 319, l: 320	
	.globl	LBM_swapGrids	// id: 320, l: 321	
	.type	LBM_swapGrids, %function	// id: 321, l: 322	
LBM_swapGrids:	// id: 322, l: 323	
.LFB5:	// id: 323, l: 324	
	.cfi_startproc		// id: 324, l: 325	
	sub	 sp, sp, #0x20	// id: 325, l: 326	
	.cfi_def_cfa_offset	32	// id: 326, l: 327	
	str	 x0, [sp, #8]	// id: 327, l: 328	
	str	 x1, [sp]	// id: 328, l: 329	
	ldr	 x0, [sp, #8]	// id: 329, l: 330	
	ldr	 x0, [x0]	// id: 330, l: 331	
	str	 x0, [sp, #24]	// id: 331, l: 332	
	ldr	 x0, [sp]	// id: 332, l: 333	
	ldr	 x1, [x0]	// id: 333, l: 334	
	ldr	 x0, [sp, #8]	// id: 334, l: 335	
	str	 x1, [x0]	// id: 335, l: 336	
	ldr	 x0, [sp]	// id: 336, l: 337	
	ldr	 x1, [sp, #24]	// id: 337, l: 338	
	str	 x1, [x0]	// id: 338, l: 339	
	nop		// id: 339, l: 340	
	add	 sp, sp, #0x20	// id: 340, l: 341	
	.cfi_def_cfa_offset	0	// id: 341, l: 342	
	ret		// id: 342, l: 343	
	.cfi_endproc		// id: 343, l: 344	
.LFE5:	// id: 344, l: 345	
	.size	LBM_swapGrids, .-LBM_swapGrids	// id: 345, l: 346	
	.section	.rodata	// id: 346, l: 347	
	.p2align	3, , 0	// id: 347, l: 348	
.LC4:	// id: 348, l: 349	
	.string	"rb"	// id: 349, l: 350	
	.text	0	// id: 350, l: 351	
	.p2align	2, , 0	// id: 351, l: 352	
	.globl	LBM_loadObstacleFile	// id: 352, l: 353	
	.type	LBM_loadObstacleFile, %function	// id: 353, l: 354	
LBM_loadObstacleFile:	// id: 354, l: 355	
.LFB6:	// id: 355, l: 356	
	.cfi_startproc		// id: 356, l: 357	
	stp	 x29, x30, [sp, #-64]!	// id: 357, l: 358	
	.cfi_def_cfa_offset	64	// id: 358, l: 359	
	.cfi_offset	29, -64	// id: 359, l: 360	
	.cfi_offset	30, -56	// id: 360, l: 361	
	mov	 x29, sp	// id: 361, l: 362	
	str	 x0, [sp, #24]	// id: 362, l: 363	
	str	 x1, [sp, #16]	// id: 363, l: 364	
	adrp	 x0, .LC4	// id: 364, l: 365	
	add	 x1, x0, :lo12:.LC4	// id: 365, l: 366	
	ldr	 x0, [sp, #16]	// id: 366, l: 367	
	bl	 fopen	// id: 367, l: 368	
	str	 x0, [sp, #40]	// id: 368, l: 369	
	str	 wzr, [sp, #52]	// id: 369, l: 370	
	b	 .L9	// id: 370, l: 371	
.L15:	// id: 371, l: 372	
	str	 wzr, [sp, #56]	// id: 372, l: 373	
	b	 .L10	// id: 373, l: 374	
.L14:	// id: 374, l: 375	
	str	 wzr, [sp, #60]	// id: 375, l: 376	
	b	 .L11	// id: 376, l: 377	
.L13:	// id: 377, l: 378	
	ldr	 x0, [sp, #40]	// id: 378, l: 379	
	bl	 fgetc	// id: 379, l: 380	
	cmp	 w0, #0x2e	// id: 380, l: 381	
	beq	 .L12	// id: 381, l: 382	
	ldr	 w1, [sp, #56]	// id: 382, l: 383	
	mov	 w0, #0x64                  	// #100	// id: 383, l: 384	
	mul	 w1, w1, w0	// id: 384, l: 385	
	ldr	 w0, [sp, #60]	// id: 385, l: 386	
	add	 w1, w1, w0	// id: 386, l: 387	
	ldr	 w2, [sp, #52]	// id: 387, l: 388	
	mov	 w0, #0x2710                	// #10000	// id: 388, l: 389	
	mul	 w0, w2, w0	// id: 389, l: 390	
	add	 w1, w1, w0	// id: 390, l: 391	
	mov	 w0, w1	// id: 391, l: 392	
	lsl	 w0, w0, #2	// id: 392, l: 393	
	add	 w0, w0, w1	// id: 393, l: 394	
	lsl	 w0, w0, #2	// id: 394, l: 395	
	add	 w0, w0, #0x13	// id: 395, l: 396	
	sxtw	 x0, w0	// id: 396, l: 397	
	lsl	 x0, x0, #3	// id: 397, l: 398	
	ldr	 x1, [sp, #24]	// id: 398, l: 399	
	add	 x0, x1, x0	// id: 399, l: 400	
	str	 x0, [sp, #32]	// id: 400, l: 401	
	ldr	 x0, [sp, #32]	// id: 401, l: 402	
	ldr	 w0, [x0]	// id: 402, l: 403	
	orr	 w1, w0, #0x1	// id: 403, l: 404	
	ldr	 x0, [sp, #32]	// id: 404, l: 405	
	str	 w1, [x0]	// id: 405, l: 406	
.L12:	// id: 406, l: 407	
	ldr	 w0, [sp, #60]	// id: 407, l: 408	
	add	 w0, w0, #0x1	// id: 408, l: 409	
	str	 w0, [sp, #60]	// id: 409, l: 410	
.L11:	// id: 410, l: 411	
	ldr	 w0, [sp, #60]	// id: 411, l: 412	
	cmp	 w0, #0x63	// id: 412, l: 413	
	ble	 .L13	// id: 413, l: 414	
	ldr	 x0, [sp, #40]	// id: 414, l: 415	
	bl	 fgetc	// id: 415, l: 416	
	ldr	 w0, [sp, #56]	// id: 416, l: 417	
	add	 w0, w0, #0x1	// id: 417, l: 418	
	str	 w0, [sp, #56]	// id: 418, l: 419	
.L10:	// id: 419, l: 420	
	ldr	 w0, [sp, #56]	// id: 420, l: 421	
	cmp	 w0, #0x63	// id: 421, l: 422	
	ble	 .L14	// id: 422, l: 423	
	ldr	 x0, [sp, #40]	// id: 423, l: 424	
	bl	 fgetc	// id: 424, l: 425	
	ldr	 w0, [sp, #52]	// id: 425, l: 426	
	add	 w0, w0, #0x1	// id: 426, l: 427	
	str	 w0, [sp, #52]	// id: 427, l: 428	
.L9:	// id: 428, l: 429	
	ldr	 w0, [sp, #52]	// id: 429, l: 430	
	cmp	 w0, #0x81	// id: 430, l: 431	
	ble	 .L15	// id: 431, l: 432	
	ldr	 x0, [sp, #40]	// id: 432, l: 433	
	bl	 fclose	// id: 433, l: 434	
	nop		// id: 434, l: 435	
	ldp	 x29, x30, [sp], #64	// id: 435, l: 436	
	.cfi_restore	30	// id: 436, l: 437	
	.cfi_restore	29	// id: 437, l: 438	
	.cfi_def_cfa_offset	0	// id: 438, l: 439	
	ret		// id: 439, l: 440	
	.cfi_endproc		// id: 440, l: 441	
.LFE6:	// id: 441, l: 442	
	.size	LBM_loadObstacleFile, .-LBM_loadObstacleFile	// id: 442, l: 443	
	.p2align	2, , 0	// id: 443, l: 444	
	.globl	LBM_initializeSpecialCellsForLDC	// id: 444, l: 445	
	.type	LBM_initializeSpecialCellsForLDC, %function	// id: 445, l: 446	
LBM_initializeSpecialCellsForLDC:	// id: 446, l: 447	
.LFB7:	// id: 447, l: 448	
	.cfi_startproc		// id: 448, l: 449	
	sub	 sp, sp, #0x30	// id: 449, l: 450	
	.cfi_def_cfa_offset	48	// id: 450, l: 451	
	str	 x0, [sp, #8]	// id: 451, l: 452	
	mov	 w0, #0xfffffffe            	// #-2	// id: 452, l: 453	
	str	 w0, [sp, #36]	// id: 453, l: 454	
	b	 .L17	// id: 454, l: 455	
.L26:	// id: 455, l: 456	
	str	 wzr, [sp, #40]	// id: 456, l: 457	
	b	 .L18	// id: 457, l: 458	
.L25:	// id: 458, l: 459	
	str	 wzr, [sp, #44]	// id: 459, l: 460	
	b	 .L19	// id: 460, l: 461	
.L24:	// id: 461, l: 462	
	ldr	 w0, [sp, #44]	// id: 462, l: 463	
	cmp	 w0, #0x0	// id: 463, l: 464	
	beq	 .L20	// id: 464, l: 465	
	ldr	 w0, [sp, #44]	// id: 465, l: 466	
	cmp	 w0, #0x63	// id: 466, l: 467	
	beq	 .L20	// id: 467, l: 468	
	ldr	 w0, [sp, #40]	// id: 468, l: 469	
	cmp	 w0, #0x0	// id: 469, l: 470	
	beq	 .L20	// id: 470, l: 471	
	ldr	 w0, [sp, #40]	// id: 471, l: 472	
	cmp	 w0, #0x63	// id: 472, l: 473	
	beq	 .L20	// id: 473, l: 474	
	ldr	 w0, [sp, #36]	// id: 474, l: 475	
	cmp	 w0, #0x0	// id: 475, l: 476	
	beq	 .L20	// id: 476, l: 477	
	ldr	 w0, [sp, #36]	// id: 477, l: 478	
	cmp	 w0, #0x81	// id: 478, l: 479	
	bne	 .L21	// id: 479, l: 480	
.L20:	// id: 480, l: 481	
	ldr	 w1, [sp, #40]	// id: 481, l: 482	
	mov	 w0, #0x64                  	// #100	// id: 482, l: 483	
	mul	 w1, w1, w0	// id: 483, l: 484	
	ldr	 w0, [sp, #44]	// id: 484, l: 485	
	add	 w1, w1, w0	// id: 485, l: 486	
	ldr	 w2, [sp, #36]	// id: 486, l: 487	
	mov	 w0, #0x2710                	// #10000	// id: 487, l: 488	
	mul	 w0, w2, w0	// id: 488, l: 489	
	add	 w1, w1, w0	// id: 489, l: 490	
	mov	 w0, w1	// id: 490, l: 491	
	lsl	 w0, w0, #2	// id: 491, l: 492	
	add	 w0, w0, w1	// id: 492, l: 493	
	lsl	 w0, w0, #2	// id: 493, l: 494	
	add	 w0, w0, #0x13	// id: 494, l: 495	
	sxtw	 x0, w0	// id: 495, l: 496	
	lsl	 x0, x0, #3	// id: 496, l: 497	
	ldr	 x1, [sp, #8]	// id: 497, l: 498	
	add	 x0, x1, x0	// id: 498, l: 499	
	str	 x0, [sp, #16]	// id: 499, l: 500	
	ldr	 x0, [sp, #16]	// id: 500, l: 501	
	ldr	 w0, [x0]	// id: 501, l: 502	
	orr	 w1, w0, #0x1	// id: 502, l: 503	
	ldr	 x0, [sp, #16]	// id: 503, l: 504	
	str	 w1, [x0]	// id: 504, l: 505	
	b	 .L22	// id: 505, l: 506	
.L21:	// id: 506, l: 507	
	ldr	 w0, [sp, #36]	// id: 507, l: 508	
	cmp	 w0, #0x1	// id: 508, l: 509	
	beq	 .L23	// id: 509, l: 510	
	ldr	 w0, [sp, #36]	// id: 510, l: 511	
	cmp	 w0, #0x80	// id: 511, l: 512	
	bne	 .L22	// id: 512, l: 513	
.L23:	// id: 513, l: 514	
	ldr	 w0, [sp, #44]	// id: 514, l: 515	
	cmp	 w0, #0x1	// id: 515, l: 516	
	ble	 .L22	// id: 516, l: 517	
	ldr	 w0, [sp, #44]	// id: 517, l: 518	
	cmp	 w0, #0x61	// id: 518, l: 519	
	bgt	 .L22	// id: 519, l: 520	
	ldr	 w0, [sp, #40]	// id: 520, l: 521	
	cmp	 w0, #0x1	// id: 521, l: 522	
	ble	 .L22	// id: 522, l: 523	
	ldr	 w0, [sp, #40]	// id: 523, l: 524	
	cmp	 w0, #0x61	// id: 524, l: 525	
	bgt	 .L22	// id: 525, l: 526	
	ldr	 w1, [sp, #40]	// id: 526, l: 527	
	mov	 w0, #0x64                  	// #100	// id: 527, l: 528	
	mul	 w1, w1, w0	// id: 528, l: 529	
	ldr	 w0, [sp, #44]	// id: 529, l: 530	
	add	 w1, w1, w0	// id: 530, l: 531	
	ldr	 w2, [sp, #36]	// id: 531, l: 532	
	mov	 w0, #0x2710                	// #10000	// id: 532, l: 533	
	mul	 w0, w2, w0	// id: 533, l: 534	
	add	 w1, w1, w0	// id: 534, l: 535	
	mov	 w0, w1	// id: 535, l: 536	
	lsl	 w0, w0, #2	// id: 536, l: 537	
	add	 w0, w0, w1	// id: 537, l: 538	
	lsl	 w0, w0, #2	// id: 538, l: 539	
	add	 w0, w0, #0x13	// id: 539, l: 540	
	sxtw	 x0, w0	// id: 540, l: 541	
	lsl	 x0, x0, #3	// id: 541, l: 542	
	ldr	 x1, [sp, #8]	// id: 542, l: 543	
	add	 x0, x1, x0	// id: 543, l: 544	
	str	 x0, [sp, #24]	// id: 544, l: 545	
	ldr	 x0, [sp, #24]	// id: 545, l: 546	
	ldr	 w0, [x0]	// id: 546, l: 547	
	orr	 w1, w0, #0x2	// id: 547, l: 548	
	ldr	 x0, [sp, #24]	// id: 548, l: 549	
	str	 w1, [x0]	// id: 549, l: 550	
.L22:	// id: 550, l: 551	
	ldr	 w0, [sp, #44]	// id: 551, l: 552	
	add	 w0, w0, #0x1	// id: 552, l: 553	
	str	 w0, [sp, #44]	// id: 553, l: 554	
.L19:	// id: 554, l: 555	
	ldr	 w0, [sp, #44]	// id: 555, l: 556	
	cmp	 w0, #0x63	// id: 556, l: 557	
	ble	 .L24	// id: 557, l: 558	
	ldr	 w0, [sp, #40]	// id: 558, l: 559	
	add	 w0, w0, #0x1	// id: 559, l: 560	
	str	 w0, [sp, #40]	// id: 560, l: 561	
.L18:	// id: 561, l: 562	
	ldr	 w0, [sp, #40]	// id: 562, l: 563	
	cmp	 w0, #0x63	// id: 563, l: 564	
	ble	 .L25	// id: 564, l: 565	
	ldr	 w0, [sp, #36]	// id: 565, l: 566	
	add	 w0, w0, #0x1	// id: 566, l: 567	
	str	 w0, [sp, #36]	// id: 567, l: 568	
.L17:	// id: 568, l: 569	
	ldr	 w0, [sp, #36]	// id: 569, l: 570	
	cmp	 w0, #0x83	// id: 570, l: 571	
	ble	 .L26	// id: 571, l: 572	
	nop		// id: 572, l: 573	
	nop		// id: 573, l: 574	
	add	 sp, sp, #0x30	// id: 574, l: 575	
	.cfi_def_cfa_offset	0	// id: 575, l: 576	
	ret		// id: 576, l: 577	
	.cfi_endproc		// id: 577, l: 578	
.LFE7:	// id: 578, l: 579	
	.size	LBM_initializeSpecialCellsForLDC, .-LBM_initializeSpecialCellsForLDC	// id: 579, l: 580	
	.p2align	2, , 0	// id: 580, l: 581	
	.globl	LBM_initializeSpecialCellsForChannel	// id: 581, l: 582	
	.type	LBM_initializeSpecialCellsForChannel, %function	// id: 582, l: 583	
LBM_initializeSpecialCellsForChannel:	// id: 583, l: 584	
.LFB8:	// id: 584, l: 585	
	.cfi_startproc		// id: 585, l: 586	
	sub	 sp, sp, #0x30	// id: 586, l: 587	
	.cfi_def_cfa_offset	48	// id: 587, l: 588	
	str	 x0, [sp, #8]	// id: 588, l: 589	
	mov	 w0, #0xfffffffe            	// #-2	// id: 589, l: 590	
	str	 w0, [sp, #36]	// id: 590, l: 591	
	b	 .L28	// id: 591, l: 592	
.L36:	// id: 592, l: 593	
	str	 wzr, [sp, #40]	// id: 593, l: 594	
	b	 .L29	// id: 594, l: 595	
.L35:	// id: 595, l: 596	
	str	 wzr, [sp, #44]	// id: 596, l: 597	
	b	 .L30	// id: 597, l: 598	
.L34:	// id: 598, l: 599	
	ldr	 w0, [sp, #44]	// id: 599, l: 600	
	cmp	 w0, #0x0	// id: 600, l: 601	
	beq	 .L31	// id: 601, l: 602	
	ldr	 w0, [sp, #44]	// id: 602, l: 603	
	cmp	 w0, #0x63	// id: 603, l: 604	
	beq	 .L31	// id: 604, l: 605	
	ldr	 w0, [sp, #40]	// id: 605, l: 606	
	cmp	 w0, #0x0	// id: 606, l: 607	
	beq	 .L31	// id: 607, l: 608	
	ldr	 w0, [sp, #40]	// id: 608, l: 609	
	cmp	 w0, #0x63	// id: 609, l: 610	
	bne	 .L32	// id: 610, l: 611	
.L31:	// id: 611, l: 612	
	ldr	 w1, [sp, #40]	// id: 612, l: 613	
	mov	 w0, #0x64                  	// #100	// id: 613, l: 614	
	mul	 w1, w1, w0	// id: 614, l: 615	
	ldr	 w0, [sp, #44]	// id: 615, l: 616	
	add	 w1, w1, w0	// id: 616, l: 617	
	ldr	 w2, [sp, #36]	// id: 617, l: 618	
	mov	 w0, #0x2710                	// #10000	// id: 618, l: 619	
	mul	 w0, w2, w0	// id: 619, l: 620	
	add	 w1, w1, w0	// id: 620, l: 621	
	mov	 w0, w1	// id: 621, l: 622	
	lsl	 w0, w0, #2	// id: 622, l: 623	
	add	 w0, w0, w1	// id: 623, l: 624	
	lsl	 w0, w0, #2	// id: 624, l: 625	
	add	 w0, w0, #0x13	// id: 625, l: 626	
	sxtw	 x0, w0	// id: 626, l: 627	
	lsl	 x0, x0, #3	// id: 627, l: 628	
	ldr	 x1, [sp, #8]	// id: 628, l: 629	
	add	 x0, x1, x0	// id: 629, l: 630	
	str	 x0, [sp, #24]	// id: 630, l: 631	
	ldr	 x0, [sp, #24]	// id: 631, l: 632	
	ldr	 w0, [x0]	// id: 632, l: 633	
	orr	 w1, w0, #0x1	// id: 633, l: 634	
	ldr	 x0, [sp, #24]	// id: 634, l: 635	
	str	 w1, [x0]	// id: 635, l: 636	
	ldr	 w0, [sp, #36]	// id: 636, l: 637	
	cmp	 w0, #0x0	// id: 637, l: 638	
	beq	 .L33	// id: 638, l: 639	
	ldr	 w0, [sp, #36]	// id: 639, l: 640	
	cmp	 w0, #0x81	// id: 640, l: 641	
	bne	 .L32	// id: 641, l: 642	
.L33:	// id: 642, l: 643	
	ldr	 w1, [sp, #40]	// id: 643, l: 644	
	mov	 w0, #0x64                  	// #100	// id: 644, l: 645	
	mul	 w1, w1, w0	// id: 645, l: 646	
	ldr	 w0, [sp, #44]	// id: 646, l: 647	
	add	 w1, w1, w0	// id: 647, l: 648	
	ldr	 w2, [sp, #36]	// id: 648, l: 649	
	mov	 w0, #0x2710                	// #10000	// id: 649, l: 650	
	mul	 w0, w2, w0	// id: 650, l: 651	
	add	 w1, w1, w0	// id: 651, l: 652	
	mov	 w0, w1	// id: 652, l: 653	
	lsl	 w0, w0, #2	// id: 653, l: 654	
	add	 w0, w0, w1	// id: 654, l: 655	
	lsl	 w0, w0, #2	// id: 655, l: 656	
	add	 w0, w0, #0x13	// id: 656, l: 657	
	sxtw	 x0, w0	// id: 657, l: 658	
	lsl	 x0, x0, #3	// id: 658, l: 659	
	ldr	 x1, [sp, #8]	// id: 659, l: 660	
	add	 x0, x1, x0	// id: 660, l: 661	
	ldr	 w0, [x0]	// id: 661, l: 662	
	and	 w0, w0, #0x1	// id: 662, l: 663	
	cmp	 w0, #0x0	// id: 663, l: 664	
	bne	 .L32	// id: 664, l: 665	
	ldr	 w1, [sp, #40]	// id: 665, l: 666	
	mov	 w0, #0x64                  	// #100	// id: 666, l: 667	
	mul	 w1, w1, w0	// id: 667, l: 668	
	ldr	 w0, [sp, #44]	// id: 668, l: 669	
	add	 w1, w1, w0	// id: 669, l: 670	
	ldr	 w2, [sp, #36]	// id: 670, l: 671	
	mov	 w0, #0x2710                	// #10000	// id: 671, l: 672	
	mul	 w0, w2, w0	// id: 672, l: 673	
	add	 w1, w1, w0	// id: 673, l: 674	
	mov	 w0, w1	// id: 674, l: 675	
	lsl	 w0, w0, #2	// id: 675, l: 676	
	add	 w0, w0, w1	// id: 676, l: 677	
	lsl	 w0, w0, #2	// id: 677, l: 678	
	add	 w0, w0, #0x13	// id: 678, l: 679	
	sxtw	 x0, w0	// id: 679, l: 680	
	lsl	 x0, x0, #3	// id: 680, l: 681	
	ldr	 x1, [sp, #8]	// id: 681, l: 682	
	add	 x0, x1, x0	// id: 682, l: 683	
	str	 x0, [sp, #16]	// id: 683, l: 684	
	ldr	 x0, [sp, #16]	// id: 684, l: 685	
	ldr	 w0, [x0]	// id: 685, l: 686	
	orr	 w1, w0, #0x4	// id: 686, l: 687	
	ldr	 x0, [sp, #16]	// id: 687, l: 688	
	str	 w1, [x0]	// id: 688, l: 689	
.L32:	// id: 689, l: 690	
	ldr	 w0, [sp, #44]	// id: 690, l: 691	
	add	 w0, w0, #0x1	// id: 691, l: 692	
	str	 w0, [sp, #44]	// id: 692, l: 693	
.L30:	// id: 693, l: 694	
	ldr	 w0, [sp, #44]	// id: 694, l: 695	
	cmp	 w0, #0x63	// id: 695, l: 696	
	ble	 .L34	// id: 696, l: 697	
	ldr	 w0, [sp, #40]	// id: 697, l: 698	
	add	 w0, w0, #0x1	// id: 698, l: 699	
	str	 w0, [sp, #40]	// id: 699, l: 700	
.L29:	// id: 700, l: 701	
	ldr	 w0, [sp, #40]	// id: 701, l: 702	
	cmp	 w0, #0x63	// id: 702, l: 703	
	ble	 .L35	// id: 703, l: 704	
	ldr	 w0, [sp, #36]	// id: 704, l: 705	
	add	 w0, w0, #0x1	// id: 705, l: 706	
	str	 w0, [sp, #36]	// id: 706, l: 707	
.L28:	// id: 707, l: 708	
	ldr	 w0, [sp, #36]	// id: 708, l: 709	
	cmp	 w0, #0x83	// id: 709, l: 710	
	ble	 .L36	// id: 710, l: 711	
	nop		// id: 711, l: 712	
	nop		// id: 712, l: 713	
	add	 sp, sp, #0x30	// id: 713, l: 714	
	.cfi_def_cfa_offset	0	// id: 714, l: 715	
	ret		// id: 715, l: 716	
	.cfi_endproc		// id: 716, l: 717	
.LFE8:	// id: 717, l: 718	
	.size	LBM_initializeSpecialCellsForChannel, .-LBM_initializeSpecialCellsForChannel	// id: 718, l: 719	
	.p2align	2, , 0	// id: 719, l: 720	
	.globl	LBM_performStreamCollideBGK	// id: 720, l: 721	
	.type	LBM_performStreamCollideBGK, %function	// id: 721, l: 722	
LBM_performStreamCollideBGK:	// id: 722, l: 723	
.LFB9:	// id: 723, l: 724	
	.cfi_startproc		// id: 724, l: 725	
	sub	 sp, sp, #0x40	// id: 725, l: 726	
	.cfi_def_cfa_offset	64	// id: 726, l: 727	
	str	 x0, [sp, #8]	// id: 727, l: 728	
	str	 x1, [sp]	// id: 728, l: 729	
	str	 wzr, [sp, #60]	// id: 729, l: 730	
	b	 .L38	// id: 730, l: 731	
.L42:	// id: 731, l: 732	
	ldr	 w0, [sp, #60]	// id: 732, l: 733	
	add	 w0, w0, #0x13	// id: 733, l: 734	
	sxtw	 x0, w0	// id: 734, l: 735	
	lsl	 x0, x0, #3	// id: 735, l: 736	
	ldr	 x1, [sp, #8]	// id: 736, l: 737	
	add	 x0, x1, x0	// id: 737, l: 738	
	ldr	 w0, [x0]	// id: 738, l: 739	
	and	 w0, w0, #0x1	// id: 739, l: 740	
	cmp	 w0, #0x0	// id: 740, l: 741	
	beq	 .L39	// id: 741, l: 742	
	ldrsw	 x0, [sp, #60]	// id: 742, l: 743	
	lsl	 x0, x0, #3	// id: 743, l: 744	
	ldr	 x1, [sp, #8]	// id: 744, l: 745	
	add	 x1, x1, x0	// id: 745, l: 746	
	ldrsw	 x0, [sp, #60]	// id: 746, l: 747	
	lsl	 x0, x0, #3	// id: 747, l: 748	
	ldr	 x2, [sp]	// id: 748, l: 749	
	add	 x0, x2, x0	// id: 749, l: 750	
	ldr	 d0, [x1]	// id: 750, l: 751	
	str	 d0, [x0]	// id: 751, l: 752	
	ldr	 w0, [sp, #60]	// id: 752, l: 753	
	add	 w0, w0, #0x1	// id: 753, l: 754	
	sxtw	 x0, w0	// id: 754, l: 755	
	lsl	 x0, x0, #3	// id: 755, l: 756	
	ldr	 x1, [sp, #8]	// id: 756, l: 757	
	add	 x1, x1, x0	// id: 757, l: 758	
	ldr	 w0, [sp, #60]	// id: 758, l: 759	
	sub	 w0, w0, #0x7ce	// id: 759, l: 760	
	sxtw	 x0, w0	// id: 760, l: 761	
	lsl	 x0, x0, #3	// id: 761, l: 762	
	ldr	 x2, [sp]	// id: 762, l: 763	
	add	 x0, x2, x0	// id: 763, l: 764	
	ldr	 d0, [x1]	// id: 764, l: 765	
	str	 d0, [x0]	// id: 765, l: 766	
	ldr	 w0, [sp, #60]	// id: 766, l: 767	
	add	 w0, w0, #0x2	// id: 767, l: 768	
	sxtw	 x0, w0	// id: 768, l: 769	
	lsl	 x0, x0, #3	// id: 769, l: 770	
	ldr	 x1, [sp, #8]	// id: 770, l: 771	
	add	 x1, x1, x0	// id: 771, l: 772	
	ldr	 w0, [sp, #60]	// id: 772, l: 773	
	add	 w0, w0, #0x7d1	// id: 773, l: 774	
	sxtw	 x0, w0	// id: 774, l: 775	
	lsl	 x0, x0, #3	// id: 775, l: 776	
	ldr	 x2, [sp]	// id: 776, l: 777	
	add	 x0, x2, x0	// id: 777, l: 778	
	ldr	 d0, [x1]	// id: 778, l: 779	
	str	 d0, [x0]	// id: 779, l: 780	
	ldr	 w0, [sp, #60]	// id: 780, l: 781	
	add	 w0, w0, #0x3	// id: 781, l: 782	
	sxtw	 x0, w0	// id: 782, l: 783	
	lsl	 x0, x0, #3	// id: 783, l: 784	
	ldr	 x1, [sp, #8]	// id: 784, l: 785	
	add	 x1, x1, x0	// id: 785, l: 786	
	ldr	 w0, [sp, #60]	// id: 786, l: 787	
	sub	 w0, w0, #0x10	// id: 787, l: 788	
	sxtw	 x0, w0	// id: 788, l: 789	
	lsl	 x0, x0, #3	// id: 789, l: 790	
	ldr	 x2, [sp]	// id: 790, l: 791	
	add	 x0, x2, x0	// id: 791, l: 792	
	ldr	 d0, [x1]	// id: 792, l: 793	
	str	 d0, [x0]	// id: 793, l: 794	
	ldr	 w0, [sp, #60]	// id: 794, l: 795	
	add	 w0, w0, #0x4	// id: 795, l: 796	
	sxtw	 x0, w0	// id: 796, l: 797	
	lsl	 x0, x0, #3	// id: 797, l: 798	
	ldr	 x1, [sp, #8]	// id: 798, l: 799	
	add	 x1, x1, x0	// id: 799, l: 800	
	ldr	 w0, [sp, #60]	// id: 800, l: 801	
	add	 w0, w0, #0x17	// id: 801, l: 802	
	sxtw	 x0, w0	// id: 802, l: 803	
	lsl	 x0, x0, #3	// id: 803, l: 804	
	ldr	 x2, [sp]	// id: 804, l: 805	
	add	 x0, x2, x0	// id: 805, l: 806	
	ldr	 d0, [x1]	// id: 806, l: 807	
	str	 d0, [x0]	// id: 807, l: 808	
	ldr	 w0, [sp, #60]	// id: 808, l: 809	
	add	 w0, w0, #0x5	// id: 809, l: 810	
	sxtw	 x0, w0	// id: 810, l: 811	
	lsl	 x0, x0, #3	// id: 811, l: 812	
	ldr	 x1, [sp, #8]	// id: 812, l: 813	
	add	 x1, x1, x0	// id: 813, l: 814	
	ldr	 w2, [sp, #60]	// id: 814, l: 815	
	mov	 w0, #0xf2c6                	// #62150	// id: 815, l: 816	
	movk	 w0, #0xfffc, lsl #16	// id: 816, l: 817	
	add	 w0, w2, w0	// id: 817, l: 818	
	sxtw	 x0, w0	// id: 818, l: 819	
	lsl	 x0, x0, #3	// id: 819, l: 820	
	ldr	 x2, [sp]	// id: 820, l: 821	
	add	 x0, x2, x0	// id: 821, l: 822	
	ldr	 d0, [x1]	// id: 822, l: 823	
	str	 d0, [x0]	// id: 823, l: 824	
	ldr	 w0, [sp, #60]	// id: 824, l: 825	
	add	 w0, w0, #0x6	// id: 825, l: 826	
	sxtw	 x0, w0	// id: 826, l: 827	
	lsl	 x0, x0, #3	// id: 827, l: 828	
	ldr	 x1, [sp, #8]	// id: 828, l: 829	
	add	 x1, x1, x0	// id: 829, l: 830	
	ldr	 w2, [sp, #60]	// id: 830, l: 831	
	mov	 w0, #0xd45                 	// #3397	// id: 831, l: 832	
	movk	 w0, #0x3, lsl #16	// id: 832, l: 833	
	add	 w0, w2, w0	// id: 833, l: 834	
	sxtw	 x0, w0	// id: 834, l: 835	
	lsl	 x0, x0, #3	// id: 835, l: 836	
	ldr	 x2, [sp]	// id: 836, l: 837	
	add	 x0, x2, x0	// id: 837, l: 838	
	ldr	 d0, [x1]	// id: 838, l: 839	
	str	 d0, [x0]	// id: 839, l: 840	
	ldr	 w0, [sp, #60]	// id: 840, l: 841	
	add	 w0, w0, #0x7	// id: 841, l: 842	
	sxtw	 x0, w0	// id: 842, l: 843	
	lsl	 x0, x0, #3	// id: 843, l: 844	
	ldr	 x1, [sp, #8]	// id: 844, l: 845	
	add	 x1, x1, x0	// id: 845, l: 846	
	ldr	 w0, [sp, #60]	// id: 846, l: 847	
	sub	 w0, w0, #0x7da	// id: 847, l: 848	
	sxtw	 x0, w0	// id: 848, l: 849	
	lsl	 x0, x0, #3	// id: 849, l: 850	
	ldr	 x2, [sp]	// id: 850, l: 851	
	add	 x0, x2, x0	// id: 851, l: 852	
	ldr	 d0, [x1]	// id: 852, l: 853	
	str	 d0, [x0]	// id: 853, l: 854	
	ldr	 w0, [sp, #60]	// id: 854, l: 855	
	add	 w0, w0, #0x8	// id: 855, l: 856	
	sxtw	 x0, w0	// id: 856, l: 857	
	lsl	 x0, x0, #3	// id: 857, l: 858	
	ldr	 x1, [sp, #8]	// id: 858, l: 859	
	add	 x1, x1, x0	// id: 859, l: 860	
	ldr	 w0, [sp, #60]	// id: 860, l: 861	
	sub	 w0, w0, #0x7b3	// id: 861, l: 862	
	sxtw	 x0, w0	// id: 862, l: 863	
	lsl	 x0, x0, #3	// id: 863, l: 864	
	ldr	 x2, [sp]	// id: 864, l: 865	
	add	 x0, x2, x0	// id: 865, l: 866	
	ldr	 d0, [x1]	// id: 866, l: 867	
	str	 d0, [x0]	// id: 867, l: 868	
	ldr	 w0, [sp, #60]	// id: 868, l: 869	
	add	 w0, w0, #0x9	// id: 869, l: 870	
	sxtw	 x0, w0	// id: 870, l: 871	
	lsl	 x0, x0, #3	// id: 871, l: 872	
	ldr	 x1, [sp, #8]	// id: 872, l: 873	
	add	 x1, x1, x0	// id: 873, l: 874	
	ldr	 w0, [sp, #60]	// id: 874, l: 875	
	add	 w0, w0, #0x7c4	// id: 875, l: 876	
	sxtw	 x0, w0	// id: 876, l: 877	
	lsl	 x0, x0, #3	// id: 877, l: 878	
	ldr	 x2, [sp]	// id: 878, l: 879	
	add	 x0, x2, x0	// id: 879, l: 880	
	ldr	 d0, [x1]	// id: 880, l: 881	
	str	 d0, [x0]	// id: 881, l: 882	
	ldr	 w0, [sp, #60]	// id: 882, l: 883	
	add	 w0, w0, #0xa	// id: 883, l: 884	
	sxtw	 x0, w0	// id: 884, l: 885	
	lsl	 x0, x0, #3	// id: 885, l: 886	
	ldr	 x1, [sp, #8]	// id: 886, l: 887	
	add	 x1, x1, x0	// id: 887, l: 888	
	ldr	 w0, [sp, #60]	// id: 888, l: 889	
	add	 w0, w0, #0x7eb	// id: 889, l: 890	
	sxtw	 x0, w0	// id: 890, l: 891	
	lsl	 x0, x0, #3	// id: 891, l: 892	
	ldr	 x2, [sp]	// id: 892, l: 893	
	add	 x0, x2, x0	// id: 893, l: 894	
	ldr	 d0, [x1]	// id: 894, l: 895	
	str	 d0, [x0]	// id: 895, l: 896	
	ldr	 w0, [sp, #60]	// id: 896, l: 897	
	add	 w0, w0, #0xb	// id: 897, l: 898	
	sxtw	 x0, w0	// id: 898, l: 899	
	lsl	 x0, x0, #3	// id: 899, l: 900	
	ldr	 x1, [sp, #8]	// id: 900, l: 901	
	add	 x1, x1, x0	// id: 901, l: 902	
	ldr	 w2, [sp, #60]	// id: 902, l: 903	
	mov	 w0, #0xeafe                	// #60158	// id: 903, l: 904	
	movk	 w0, #0xfffc, lsl #16	// id: 904, l: 905	
	add	 w0, w2, w0	// id: 905, l: 906	
	sxtw	 x0, w0	// id: 906, l: 907	
	lsl	 x0, x0, #3	// id: 907, l: 908	
	ldr	 x2, [sp]	// id: 908, l: 909	
	add	 x0, x2, x0	// id: 909, l: 910	
	ldr	 d0, [x1]	// id: 910, l: 911	
	str	 d0, [x0]	// id: 911, l: 912	
	ldr	 w0, [sp, #60]	// id: 912, l: 913	
	add	 w0, w0, #0xc	// id: 913, l: 914	
	sxtw	 x0, w0	// id: 914, l: 915	
	lsl	 x0, x0, #3	// id: 915, l: 916	
	ldr	 x1, [sp, #8]	// id: 916, l: 917	
	add	 x1, x1, x0	// id: 917, l: 918	
	ldr	 w2, [sp, #60]	// id: 918, l: 919	
	mov	 w0, #0x57d                 	// #1405	// id: 919, l: 920	
	movk	 w0, #0x3, lsl #16	// id: 920, l: 921	
	add	 w0, w2, w0	// id: 921, l: 922	
	sxtw	 x0, w0	// id: 922, l: 923	
	lsl	 x0, x0, #3	// id: 923, l: 924	
	ldr	 x2, [sp]	// id: 924, l: 925	
	add	 x0, x2, x0	// id: 925, l: 926	
	ldr	 d0, [x1]	// id: 926, l: 927	
	str	 d0, [x0]	// id: 927, l: 928	
	ldr	 w0, [sp, #60]	// id: 928, l: 929	
	add	 w0, w0, #0xd	// id: 929, l: 930	
	sxtw	 x0, w0	// id: 930, l: 931	
	lsl	 x0, x0, #3	// id: 931, l: 932	
	ldr	 x1, [sp, #8]	// id: 932, l: 933	
	add	 x1, x1, x0	// id: 933, l: 934	
	ldr	 w2, [sp, #60]	// id: 934, l: 935	
	mov	 w0, #0xfa9c                	// #64156	// id: 935, l: 936	
	movk	 w0, #0xfffc, lsl #16	// id: 936, l: 937	
	add	 w0, w2, w0	// id: 937, l: 938	
	sxtw	 x0, w0	// id: 938, l: 939	
	lsl	 x0, x0, #3	// id: 939, l: 940	
	ldr	 x2, [sp]	// id: 940, l: 941	
	add	 x0, x2, x0	// id: 941, l: 942	
	ldr	 d0, [x1]	// id: 942, l: 943	
	str	 d0, [x0]	// id: 943, l: 944	
	ldr	 w0, [sp, #60]	// id: 944, l: 945	
	add	 w0, w0, #0xe	// id: 945, l: 946	
	sxtw	 x0, w0	// id: 946, l: 947	
	lsl	 x0, x0, #3	// id: 947, l: 948	
	ldr	 x1, [sp, #8]	// id: 948, l: 949	
	add	 x1, x1, x0	// id: 949, l: 950	
	ldr	 w2, [sp, #60]	// id: 950, l: 951	
	mov	 w0, #0x151b                	// #5403	// id: 951, l: 952	
	movk	 w0, #0x3, lsl #16	// id: 952, l: 953	
	add	 w0, w2, w0	// id: 953, l: 954	
	sxtw	 x0, w0	// id: 954, l: 955	
	lsl	 x0, x0, #3	// id: 955, l: 956	
	ldr	 x2, [sp]	// id: 956, l: 957	
	add	 x0, x2, x0	// id: 957, l: 958	
	ldr	 d0, [x1]	// id: 958, l: 959	
	str	 d0, [x0]	// id: 959, l: 960	
	ldr	 w0, [sp, #60]	// id: 960, l: 961	
	add	 w0, w0, #0xf	// id: 961, l: 962	
	sxtw	 x0, w0	// id: 962, l: 963	
	lsl	 x0, x0, #3	// id: 963, l: 964	
	ldr	 x1, [sp, #8]	// id: 964, l: 965	
	add	 x1, x1, x0	// id: 965, l: 966	
	ldr	 w2, [sp, #60]	// id: 966, l: 967	
	mov	 w0, #0xf2be                	// #62142	// id: 967, l: 968	
	movk	 w0, #0xfffc, lsl #16	// id: 968, l: 969	
	add	 w0, w2, w0	// id: 969, l: 970	
	sxtw	 x0, w0	// id: 970, l: 971	
	lsl	 x0, x0, #3	// id: 971, l: 972	
	ldr	 x2, [sp]	// id: 972, l: 973	
	add	 x0, x2, x0	// id: 973, l: 974	
	ldr	 d0, [x1]	// id: 974, l: 975	
	str	 d0, [x0]	// id: 975, l: 976	
	ldr	 w0, [sp, #60]	// id: 976, l: 977	
	add	 w0, w0, #0x10	// id: 977, l: 978	
	sxtw	 x0, w0	// id: 978, l: 979	
	lsl	 x0, x0, #3	// id: 979, l: 980	
	ldr	 x1, [sp, #8]	// id: 980, l: 981	
	add	 x1, x1, x0	// id: 981, l: 982	
	ldr	 w2, [sp, #60]	// id: 982, l: 983	
	mov	 w0, #0xd3d                 	// #3389	// id: 983, l: 984	
	movk	 w0, #0x3, lsl #16	// id: 984, l: 985	
	add	 w0, w2, w0	// id: 985, l: 986	
	sxtw	 x0, w0	// id: 986, l: 987	
	lsl	 x0, x0, #3	// id: 987, l: 988	
	ldr	 x2, [sp]	// id: 988, l: 989	
	add	 x0, x2, x0	// id: 989, l: 990	
	ldr	 d0, [x1]	// id: 990, l: 991	
	str	 d0, [x0]	// id: 991, l: 992	
	ldr	 w0, [sp, #60]	// id: 992, l: 993	
	add	 w0, w0, #0x11	// id: 993, l: 994	
	sxtw	 x0, w0	// id: 994, l: 995	
	lsl	 x0, x0, #3	// id: 995, l: 996	
	ldr	 x1, [sp, #8]	// id: 996, l: 997	
	add	 x1, x1, x0	// id: 997, l: 998	
	ldr	 w2, [sp, #60]	// id: 998, l: 999	
	mov	 w0, #0xf2e4                	// #62180	// id: 999, l: 1000	
	movk	 w0, #0xfffc, lsl #16	// id: 1000, l: 1001	
	add	 w0, w2, w0	// id: 1001, l: 1002	
	sxtw	 x0, w0	// id: 1002, l: 1003	
	lsl	 x0, x0, #3	// id: 1003, l: 1004	
	ldr	 x2, [sp]	// id: 1004, l: 1005	
	add	 x0, x2, x0	// id: 1005, l: 1006	
	ldr	 d0, [x1]	// id: 1006, l: 1007	
	str	 d0, [x0]	// id: 1007, l: 1008	
	ldr	 w0, [sp, #60]	// id: 1008, l: 1009	
	add	 w0, w0, #0x12	// id: 1009, l: 1010	
	sxtw	 x0, w0	// id: 1010, l: 1011	
	lsl	 x0, x0, #3	// id: 1011, l: 1012	
	ldr	 x1, [sp, #8]	// id: 1012, l: 1013	
	add	 x1, x1, x0	// id: 1013, l: 1014	
	ldr	 w2, [sp, #60]	// id: 1014, l: 1015	
	mov	 w0, #0xd63                 	// #3427	// id: 1015, l: 1016	
	movk	 w0, #0x3, lsl #16	// id: 1016, l: 1017	
	add	 w0, w2, w0	// id: 1017, l: 1018	
	sxtw	 x0, w0	// id: 1018, l: 1019	
	lsl	 x0, x0, #3	// id: 1019, l: 1020	
	ldr	 x2, [sp]	// id: 1020, l: 1021	
	add	 x0, x2, x0	// id: 1021, l: 1022	
	ldr	 d0, [x1]	// id: 1022, l: 1023	
	str	 d0, [x0]	// id: 1023, l: 1024	
	b	 .L40	// id: 1024, l: 1025	
.L39:	// id: 1025, l: 1026	
	ldrsw	 x0, [sp, #60]	// id: 1026, l: 1027	
	lsl	 x0, x0, #3	// id: 1027, l: 1028	
	ldr	 x1, [sp, #8]	// id: 1028, l: 1029	
	add	 x0, x1, x0	// id: 1029, l: 1030	
	ldr	 d1, [x0]	// id: 1030, l: 1031	
	ldr	 w0, [sp, #60]	// id: 1031, l: 1032	
	add	 w0, w0, #0x1	// id: 1032, l: 1033	
	sxtw	 x0, w0	// id: 1033, l: 1034	
	lsl	 x0, x0, #3	// id: 1034, l: 1035	
	ldr	 x1, [sp, #8]	// id: 1035, l: 1036	
	add	 x0, x1, x0	// id: 1036, l: 1037	
	ldr	 d0, [x0]	// id: 1037, l: 1038	
	fadd	 d1, d1, d0	// id: 1038, l: 1039	
	ldr	 w0, [sp, #60]	// id: 1039, l: 1040	
	add	 w0, w0, #0x2	// id: 1040, l: 1041	
	sxtw	 x0, w0	// id: 1041, l: 1042	
	lsl	 x0, x0, #3	// id: 1042, l: 1043	
	ldr	 x1, [sp, #8]	// id: 1043, l: 1044	
	add	 x0, x1, x0	// id: 1044, l: 1045	
	ldr	 d0, [x0]	// id: 1045, l: 1046	
	fadd	 d1, d1, d0	// id: 1046, l: 1047	
	ldr	 w0, [sp, #60]	// id: 1047, l: 1048	
	add	 w0, w0, #0x3	// id: 1048, l: 1049	
	sxtw	 x0, w0	// id: 1049, l: 1050	
	lsl	 x0, x0, #3	// id: 1050, l: 1051	
	ldr	 x1, [sp, #8]	// id: 1051, l: 1052	
	add	 x0, x1, x0	// id: 1052, l: 1053	
	ldr	 d0, [x0]	// id: 1053, l: 1054	
	fadd	 d1, d1, d0	// id: 1054, l: 1055	
	ldr	 w0, [sp, #60]	// id: 1055, l: 1056	
	add	 w0, w0, #0x4	// id: 1056, l: 1057	
	sxtw	 x0, w0	// id: 1057, l: 1058	
	lsl	 x0, x0, #3	// id: 1058, l: 1059	
	ldr	 x1, [sp, #8]	// id: 1059, l: 1060	
	add	 x0, x1, x0	// id: 1060, l: 1061	
	ldr	 d0, [x0]	// id: 1061, l: 1062	
	fadd	 d1, d1, d0	// id: 1062, l: 1063	
	ldr	 w0, [sp, #60]	// id: 1063, l: 1064	
	add	 w0, w0, #0x5	// id: 1064, l: 1065	
	sxtw	 x0, w0	// id: 1065, l: 1066	
	lsl	 x0, x0, #3	// id: 1066, l: 1067	
	ldr	 x1, [sp, #8]	// id: 1067, l: 1068	
	add	 x0, x1, x0	// id: 1068, l: 1069	
	ldr	 d0, [x0]	// id: 1069, l: 1070	
	fadd	 d1, d1, d0	// id: 1070, l: 1071	
	ldr	 w0, [sp, #60]	// id: 1071, l: 1072	
	add	 w0, w0, #0x6	// id: 1072, l: 1073	
	sxtw	 x0, w0	// id: 1073, l: 1074	
	lsl	 x0, x0, #3	// id: 1074, l: 1075	
	ldr	 x1, [sp, #8]	// id: 1075, l: 1076	
	add	 x0, x1, x0	// id: 1076, l: 1077	
	ldr	 d0, [x0]	// id: 1077, l: 1078	
	fadd	 d1, d1, d0	// id: 1078, l: 1079	
	ldr	 w0, [sp, #60]	// id: 1079, l: 1080	
	add	 w0, w0, #0x7	// id: 1080, l: 1081	
	sxtw	 x0, w0	// id: 1081, l: 1082	
	lsl	 x0, x0, #3	// id: 1082, l: 1083	
	ldr	 x1, [sp, #8]	// id: 1083, l: 1084	
	add	 x0, x1, x0	// id: 1084, l: 1085	
	ldr	 d0, [x0]	// id: 1085, l: 1086	
	fadd	 d1, d1, d0	// id: 1086, l: 1087	
	ldr	 w0, [sp, #60]	// id: 1087, l: 1088	
	add	 w0, w0, #0x8	// id: 1088, l: 1089	
	sxtw	 x0, w0	// id: 1089, l: 1090	
	lsl	 x0, x0, #3	// id: 1090, l: 1091	
	ldr	 x1, [sp, #8]	// id: 1091, l: 1092	
	add	 x0, x1, x0	// id: 1092, l: 1093	
	ldr	 d0, [x0]	// id: 1093, l: 1094	
	fadd	 d1, d1, d0	// id: 1094, l: 1095	
	ldr	 w0, [sp, #60]	// id: 1095, l: 1096	
	add	 w0, w0, #0x9	// id: 1096, l: 1097	
	sxtw	 x0, w0	// id: 1097, l: 1098	
	lsl	 x0, x0, #3	// id: 1098, l: 1099	
	ldr	 x1, [sp, #8]	// id: 1099, l: 1100	
	add	 x0, x1, x0	// id: 1100, l: 1101	
	ldr	 d0, [x0]	// id: 1101, l: 1102	
	fadd	 d1, d1, d0	// id: 1102, l: 1103	
	ldr	 w0, [sp, #60]	// id: 1103, l: 1104	
	add	 w0, w0, #0xa	// id: 1104, l: 1105	
	sxtw	 x0, w0	// id: 1105, l: 1106	
	lsl	 x0, x0, #3	// id: 1106, l: 1107	
	ldr	 x1, [sp, #8]	// id: 1107, l: 1108	
	add	 x0, x1, x0	// id: 1108, l: 1109	
	ldr	 d0, [x0]	// id: 1109, l: 1110	
	fadd	 d1, d1, d0	// id: 1110, l: 1111	
	ldr	 w0, [sp, #60]	// id: 1111, l: 1112	
	add	 w0, w0, #0xb	// id: 1112, l: 1113	
	sxtw	 x0, w0	// id: 1113, l: 1114	
	lsl	 x0, x0, #3	// id: 1114, l: 1115	
	ldr	 x1, [sp, #8]	// id: 1115, l: 1116	
	add	 x0, x1, x0	// id: 1116, l: 1117	
	ldr	 d0, [x0]	// id: 1117, l: 1118	
	fadd	 d1, d1, d0	// id: 1118, l: 1119	
	ldr	 w0, [sp, #60]	// id: 1119, l: 1120	
	add	 w0, w0, #0xc	// id: 1120, l: 1121	
	sxtw	 x0, w0	// id: 1121, l: 1122	
	lsl	 x0, x0, #3	// id: 1122, l: 1123	
	ldr	 x1, [sp, #8]	// id: 1123, l: 1124	
	add	 x0, x1, x0	// id: 1124, l: 1125	
	ldr	 d0, [x0]	// id: 1125, l: 1126	
	fadd	 d1, d1, d0	// id: 1126, l: 1127	
	ldr	 w0, [sp, #60]	// id: 1127, l: 1128	
	add	 w0, w0, #0xd	// id: 1128, l: 1129	
	sxtw	 x0, w0	// id: 1129, l: 1130	
	lsl	 x0, x0, #3	// id: 1130, l: 1131	
	ldr	 x1, [sp, #8]	// id: 1131, l: 1132	
	add	 x0, x1, x0	// id: 1132, l: 1133	
	ldr	 d0, [x0]	// id: 1133, l: 1134	
	fadd	 d1, d1, d0	// id: 1134, l: 1135	
	ldr	 w0, [sp, #60]	// id: 1135, l: 1136	
	add	 w0, w0, #0xe	// id: 1136, l: 1137	
	sxtw	 x0, w0	// id: 1137, l: 1138	
	lsl	 x0, x0, #3	// id: 1138, l: 1139	
	ldr	 x1, [sp, #8]	// id: 1139, l: 1140	
	add	 x0, x1, x0	// id: 1140, l: 1141	
	ldr	 d0, [x0]	// id: 1141, l: 1142	
	fadd	 d1, d1, d0	// id: 1142, l: 1143	
	ldr	 w0, [sp, #60]	// id: 1143, l: 1144	
	add	 w0, w0, #0xf	// id: 1144, l: 1145	
	sxtw	 x0, w0	// id: 1145, l: 1146	
	lsl	 x0, x0, #3	// id: 1146, l: 1147	
	ldr	 x1, [sp, #8]	// id: 1147, l: 1148	
	add	 x0, x1, x0	// id: 1148, l: 1149	
	ldr	 d0, [x0]	// id: 1149, l: 1150	
	fadd	 d1, d1, d0	// id: 1150, l: 1151	
	ldr	 w0, [sp, #60]	// id: 1151, l: 1152	
	add	 w0, w0, #0x10	// id: 1152, l: 1153	
	sxtw	 x0, w0	// id: 1153, l: 1154	
	lsl	 x0, x0, #3	// id: 1154, l: 1155	
	ldr	 x1, [sp, #8]	// id: 1155, l: 1156	
	add	 x0, x1, x0	// id: 1156, l: 1157	
	ldr	 d0, [x0]	// id: 1157, l: 1158	
	fadd	 d1, d1, d0	// id: 1158, l: 1159	
	ldr	 w0, [sp, #60]	// id: 1159, l: 1160	
	add	 w0, w0, #0x11	// id: 1160, l: 1161	
	sxtw	 x0, w0	// id: 1161, l: 1162	
	lsl	 x0, x0, #3	// id: 1162, l: 1163	
	ldr	 x1, [sp, #8]	// id: 1163, l: 1164	
	add	 x0, x1, x0	// id: 1164, l: 1165	
	ldr	 d0, [x0]	// id: 1165, l: 1166	
	fadd	 d1, d1, d0	// id: 1166, l: 1167	
	ldr	 w0, [sp, #60]	// id: 1167, l: 1168	
	add	 w0, w0, #0x12	// id: 1168, l: 1169	
	sxtw	 x0, w0	// id: 1169, l: 1170	
	lsl	 x0, x0, #3	// id: 1170, l: 1171	
	ldr	 x1, [sp, #8]	// id: 1171, l: 1172	
	add	 x0, x1, x0	// id: 1172, l: 1173	
	ldr	 d0, [x0]	// id: 1173, l: 1174	
	fadd	 d0, d1, d0	// id: 1174, l: 1175	
	str	 d0, [sp, #24]	// id: 1175, l: 1176	
	ldr	 w0, [sp, #60]	// id: 1176, l: 1177	
	add	 w0, w0, #0x3	// id: 1177, l: 1178	
	sxtw	 x0, w0	// id: 1178, l: 1179	
	lsl	 x0, x0, #3	// id: 1179, l: 1180	
	ldr	 x1, [sp, #8]	// id: 1180, l: 1181	
	add	 x0, x1, x0	// id: 1181, l: 1182	
	ldr	 d1, [x0]	// id: 1182, l: 1183	
	ldr	 w0, [sp, #60]	// id: 1183, l: 1184	
	add	 w0, w0, #0x4	// id: 1184, l: 1185	
	sxtw	 x0, w0	// id: 1185, l: 1186	
	lsl	 x0, x0, #3	// id: 1186, l: 1187	
	ldr	 x1, [sp, #8]	// id: 1187, l: 1188	
	add	 x0, x1, x0	// id: 1188, l: 1189	
	ldr	 d0, [x0]	// id: 1189, l: 1190	
	fsub	 d1, d1, d0	// id: 1190, l: 1191	
	ldr	 w0, [sp, #60]	// id: 1191, l: 1192	
	add	 w0, w0, #0x7	// id: 1192, l: 1193	
	sxtw	 x0, w0	// id: 1193, l: 1194	
	lsl	 x0, x0, #3	// id: 1194, l: 1195	
	ldr	 x1, [sp, #8]	// id: 1195, l: 1196	
	add	 x0, x1, x0	// id: 1196, l: 1197	
	ldr	 d0, [x0]	// id: 1197, l: 1198	
	fadd	 d1, d1, d0	// id: 1198, l: 1199	
	ldr	 w0, [sp, #60]	// id: 1199, l: 1200	
	add	 w0, w0, #0x8	// id: 1200, l: 1201	
	sxtw	 x0, w0	// id: 1201, l: 1202	
	lsl	 x0, x0, #3	// id: 1202, l: 1203	
	ldr	 x1, [sp, #8]	// id: 1203, l: 1204	
	add	 x0, x1, x0	// id: 1204, l: 1205	
	ldr	 d0, [x0]	// id: 1205, l: 1206	
	fsub	 d1, d1, d0	// id: 1206, l: 1207	
	ldr	 w0, [sp, #60]	// id: 1207, l: 1208	
	add	 w0, w0, #0x9	// id: 1208, l: 1209	
	sxtw	 x0, w0	// id: 1209, l: 1210	
	lsl	 x0, x0, #3	// id: 1210, l: 1211	
	ldr	 x1, [sp, #8]	// id: 1211, l: 1212	
	add	 x0, x1, x0	// id: 1212, l: 1213	
	ldr	 d0, [x0]	// id: 1213, l: 1214	
	fadd	 d1, d1, d0	// id: 1214, l: 1215	
	ldr	 w0, [sp, #60]	// id: 1215, l: 1216	
	add	 w0, w0, #0xa	// id: 1216, l: 1217	
	sxtw	 x0, w0	// id: 1217, l: 1218	
	lsl	 x0, x0, #3	// id: 1218, l: 1219	
	ldr	 x1, [sp, #8]	// id: 1219, l: 1220	
	add	 x0, x1, x0	// id: 1220, l: 1221	
	ldr	 d0, [x0]	// id: 1221, l: 1222	
	fsub	 d1, d1, d0	// id: 1222, l: 1223	
	ldr	 w0, [sp, #60]	// id: 1223, l: 1224	
	add	 w0, w0, #0xf	// id: 1224, l: 1225	
	sxtw	 x0, w0	// id: 1225, l: 1226	
	lsl	 x0, x0, #3	// id: 1226, l: 1227	
	ldr	 x1, [sp, #8]	// id: 1227, l: 1228	
	add	 x0, x1, x0	// id: 1228, l: 1229	
	ldr	 d0, [x0]	// id: 1229, l: 1230	
	fadd	 d1, d1, d0	// id: 1230, l: 1231	
	ldr	 w0, [sp, #60]	// id: 1231, l: 1232	
	add	 w0, w0, #0x10	// id: 1232, l: 1233	
	sxtw	 x0, w0	// id: 1233, l: 1234	
	lsl	 x0, x0, #3	// id: 1234, l: 1235	
	ldr	 x1, [sp, #8]	// id: 1235, l: 1236	
	add	 x0, x1, x0	// id: 1236, l: 1237	
	ldr	 d0, [x0]	// id: 1237, l: 1238	
	fadd	 d1, d1, d0	// id: 1238, l: 1239	
	ldr	 w0, [sp, #60]	// id: 1239, l: 1240	
	add	 w0, w0, #0x11	// id: 1240, l: 1241	
	sxtw	 x0, w0	// id: 1241, l: 1242	
	lsl	 x0, x0, #3	// id: 1242, l: 1243	
	ldr	 x1, [sp, #8]	// id: 1243, l: 1244	
	add	 x0, x1, x0	// id: 1244, l: 1245	
	ldr	 d0, [x0]	// id: 1245, l: 1246	
	fsub	 d1, d1, d0	// id: 1246, l: 1247	
	ldr	 w0, [sp, #60]	// id: 1247, l: 1248	
	add	 w0, w0, #0x12	// id: 1248, l: 1249	
	sxtw	 x0, w0	// id: 1249, l: 1250	
	lsl	 x0, x0, #3	// id: 1250, l: 1251	
	ldr	 x1, [sp, #8]	// id: 1251, l: 1252	
	add	 x0, x1, x0	// id: 1252, l: 1253	
	ldr	 d0, [x0]	// id: 1253, l: 1254	
	fsub	 d0, d1, d0	// id: 1254, l: 1255	
	str	 d0, [sp, #48]	// id: 1255, l: 1256	
	ldr	 w0, [sp, #60]	// id: 1256, l: 1257	
	add	 w0, w0, #0x1	// id: 1257, l: 1258	
	sxtw	 x0, w0	// id: 1258, l: 1259	
	lsl	 x0, x0, #3	// id: 1259, l: 1260	
	ldr	 x1, [sp, #8]	// id: 1260, l: 1261	
	add	 x0, x1, x0	// id: 1261, l: 1262	
	ldr	 d1, [x0]	// id: 1262, l: 1263	
	ldr	 w0, [sp, #60]	// id: 1263, l: 1264	
	add	 w0, w0, #0x2	// id: 1264, l: 1265	
	sxtw	 x0, w0	// id: 1265, l: 1266	
	lsl	 x0, x0, #3	// id: 1266, l: 1267	
	ldr	 x1, [sp, #8]	// id: 1267, l: 1268	
	add	 x0, x1, x0	// id: 1268, l: 1269	
	ldr	 d0, [x0]	// id: 1269, l: 1270	
	fsub	 d1, d1, d0	// id: 1270, l: 1271	
	ldr	 w0, [sp, #60]	// id: 1271, l: 1272	
	add	 w0, w0, #0x7	// id: 1272, l: 1273	
	sxtw	 x0, w0	// id: 1273, l: 1274	
	lsl	 x0, x0, #3	// id: 1274, l: 1275	
	ldr	 x1, [sp, #8]	// id: 1275, l: 1276	
	add	 x0, x1, x0	// id: 1276, l: 1277	
	ldr	 d0, [x0]	// id: 1277, l: 1278	
	fadd	 d1, d1, d0	// id: 1278, l: 1279	
	ldr	 w0, [sp, #60]	// id: 1279, l: 1280	
	add	 w0, w0, #0x8	// id: 1280, l: 1281	
	sxtw	 x0, w0	// id: 1281, l: 1282	
	lsl	 x0, x0, #3	// id: 1282, l: 1283	
	ldr	 x1, [sp, #8]	// id: 1283, l: 1284	
	add	 x0, x1, x0	// id: 1284, l: 1285	
	ldr	 d0, [x0]	// id: 1285, l: 1286	
	fadd	 d1, d1, d0	// id: 1286, l: 1287	
	ldr	 w0, [sp, #60]	// id: 1287, l: 1288	
	add	 w0, w0, #0x9	// id: 1288, l: 1289	
	sxtw	 x0, w0	// id: 1289, l: 1290	
	lsl	 x0, x0, #3	// id: 1290, l: 1291	
	ldr	 x1, [sp, #8]	// id: 1291, l: 1292	
	add	 x0, x1, x0	// id: 1292, l: 1293	
	ldr	 d0, [x0]	// id: 1293, l: 1294	
	fsub	 d1, d1, d0	// id: 1294, l: 1295	
	ldr	 w0, [sp, #60]	// id: 1295, l: 1296	
	add	 w0, w0, #0xa	// id: 1296, l: 1297	
	sxtw	 x0, w0	// id: 1297, l: 1298	
	lsl	 x0, x0, #3	// id: 1298, l: 1299	
	ldr	 x1, [sp, #8]	// id: 1299, l: 1300	
	add	 x0, x1, x0	// id: 1300, l: 1301	
	ldr	 d0, [x0]	// id: 1301, l: 1302	
	fsub	 d1, d1, d0	// id: 1302, l: 1303	
	ldr	 w0, [sp, #60]	// id: 1303, l: 1304	
	add	 w0, w0, #0xb	// id: 1304, l: 1305	
	sxtw	 x0, w0	// id: 1305, l: 1306	
	lsl	 x0, x0, #3	// id: 1306, l: 1307	
	ldr	 x1, [sp, #8]	// id: 1307, l: 1308	
	add	 x0, x1, x0	// id: 1308, l: 1309	
	ldr	 d0, [x0]	// id: 1309, l: 1310	
	fadd	 d1, d1, d0	// id: 1310, l: 1311	
	ldr	 w0, [sp, #60]	// id: 1311, l: 1312	
	add	 w0, w0, #0xc	// id: 1312, l: 1313	
	sxtw	 x0, w0	// id: 1313, l: 1314	
	lsl	 x0, x0, #3	// id: 1314, l: 1315	
	ldr	 x1, [sp, #8]	// id: 1315, l: 1316	
	add	 x0, x1, x0	// id: 1316, l: 1317	
	ldr	 d0, [x0]	// id: 1317, l: 1318	
	fadd	 d1, d1, d0	// id: 1318, l: 1319	
	ldr	 w0, [sp, #60]	// id: 1319, l: 1320	
	add	 w0, w0, #0xd	// id: 1320, l: 1321	
	sxtw	 x0, w0	// id: 1321, l: 1322	
	lsl	 x0, x0, #3	// id: 1322, l: 1323	
	ldr	 x1, [sp, #8]	// id: 1323, l: 1324	
	add	 x0, x1, x0	// id: 1324, l: 1325	
	ldr	 d0, [x0]	// id: 1325, l: 1326	
	fsub	 d1, d1, d0	// id: 1326, l: 1327	
	ldr	 w0, [sp, #60]	// id: 1327, l: 1328	
	add	 w0, w0, #0xe	// id: 1328, l: 1329	
	sxtw	 x0, w0	// id: 1329, l: 1330	
	lsl	 x0, x0, #3	// id: 1330, l: 1331	
	ldr	 x1, [sp, #8]	// id: 1331, l: 1332	
	add	 x0, x1, x0	// id: 1332, l: 1333	
	ldr	 d0, [x0]	// id: 1333, l: 1334	
	fsub	 d0, d1, d0	// id: 1334, l: 1335	
	str	 d0, [sp, #40]	// id: 1335, l: 1336	
	ldr	 w0, [sp, #60]	// id: 1336, l: 1337	
	add	 w0, w0, #0x5	// id: 1337, l: 1338	
	sxtw	 x0, w0	// id: 1338, l: 1339	
	lsl	 x0, x0, #3	// id: 1339, l: 1340	
	ldr	 x1, [sp, #8]	// id: 1340, l: 1341	
	add	 x0, x1, x0	// id: 1341, l: 1342	
	ldr	 d1, [x0]	// id: 1342, l: 1343	
	ldr	 w0, [sp, #60]	// id: 1343, l: 1344	
	add	 w0, w0, #0x6	// id: 1344, l: 1345	
	sxtw	 x0, w0	// id: 1345, l: 1346	
	lsl	 x0, x0, #3	// id: 1346, l: 1347	
	ldr	 x1, [sp, #8]	// id: 1347, l: 1348	
	add	 x0, x1, x0	// id: 1348, l: 1349	
	ldr	 d0, [x0]	// id: 1349, l: 1350	
	fsub	 d1, d1, d0	// id: 1350, l: 1351	
	ldr	 w0, [sp, #60]	// id: 1351, l: 1352	
	add	 w0, w0, #0xb	// id: 1352, l: 1353	
	sxtw	 x0, w0	// id: 1353, l: 1354	
	lsl	 x0, x0, #3	// id: 1354, l: 1355	
	ldr	 x1, [sp, #8]	// id: 1355, l: 1356	
	add	 x0, x1, x0	// id: 1356, l: 1357	
	ldr	 d0, [x0]	// id: 1357, l: 1358	
	fadd	 d1, d1, d0	// id: 1358, l: 1359	
	ldr	 w0, [sp, #60]	// id: 1359, l: 1360	
	add	 w0, w0, #0xc	// id: 1360, l: 1361	
	sxtw	 x0, w0	// id: 1361, l: 1362	
	lsl	 x0, x0, #3	// id: 1362, l: 1363	
	ldr	 x1, [sp, #8]	// id: 1363, l: 1364	
	add	 x0, x1, x0	// id: 1364, l: 1365	
	ldr	 d0, [x0]	// id: 1365, l: 1366	
	fsub	 d1, d1, d0	// id: 1366, l: 1367	
	ldr	 w0, [sp, #60]	// id: 1367, l: 1368	
	add	 w0, w0, #0xd	// id: 1368, l: 1369	
	sxtw	 x0, w0	// id: 1369, l: 1370	
	lsl	 x0, x0, #3	// id: 1370, l: 1371	
	ldr	 x1, [sp, #8]	// id: 1371, l: 1372	
	add	 x0, x1, x0	// id: 1372, l: 1373	
	ldr	 d0, [x0]	// id: 1373, l: 1374	
	fadd	 d1, d1, d0	// id: 1374, l: 1375	
	ldr	 w0, [sp, #60]	// id: 1375, l: 1376	
	add	 w0, w0, #0xe	// id: 1376, l: 1377	
	sxtw	 x0, w0	// id: 1377, l: 1378	
	lsl	 x0, x0, #3	// id: 1378, l: 1379	
	ldr	 x1, [sp, #8]	// id: 1379, l: 1380	
	add	 x0, x1, x0	// id: 1380, l: 1381	
	ldr	 d0, [x0]	// id: 1381, l: 1382	
	fsub	 d1, d1, d0	// id: 1382, l: 1383	
	ldr	 w0, [sp, #60]	// id: 1383, l: 1384	
	add	 w0, w0, #0xf	// id: 1384, l: 1385	
	sxtw	 x0, w0	// id: 1385, l: 1386	
	lsl	 x0, x0, #3	// id: 1386, l: 1387	
	ldr	 x1, [sp, #8]	// id: 1387, l: 1388	
	add	 x0, x1, x0	// id: 1388, l: 1389	
	ldr	 d0, [x0]	// id: 1389, l: 1390	
	fadd	 d1, d1, d0	// id: 1390, l: 1391	
	ldr	 w0, [sp, #60]	// id: 1391, l: 1392	
	add	 w0, w0, #0x10	// id: 1392, l: 1393	
	sxtw	 x0, w0	// id: 1393, l: 1394	
	lsl	 x0, x0, #3	// id: 1394, l: 1395	
	ldr	 x1, [sp, #8]	// id: 1395, l: 1396	
	add	 x0, x1, x0	// id: 1396, l: 1397	
	ldr	 d0, [x0]	// id: 1397, l: 1398	
	fsub	 d1, d1, d0	// id: 1398, l: 1399	
	ldr	 w0, [sp, #60]	// id: 1399, l: 1400	
	add	 w0, w0, #0x11	// id: 1400, l: 1401	
	sxtw	 x0, w0	// id: 1401, l: 1402	
	lsl	 x0, x0, #3	// id: 1402, l: 1403	
	ldr	 x1, [sp, #8]	// id: 1403, l: 1404	
	add	 x0, x1, x0	// id: 1404, l: 1405	
	ldr	 d0, [x0]	// id: 1405, l: 1406	
	fadd	 d1, d1, d0	// id: 1406, l: 1407	
	ldr	 w0, [sp, #60]	// id: 1407, l: 1408	
	add	 w0, w0, #0x12	// id: 1408, l: 1409	
	sxtw	 x0, w0	// id: 1409, l: 1410	
	lsl	 x0, x0, #3	// id: 1410, l: 1411	
	ldr	 x1, [sp, #8]	// id: 1411, l: 1412	
	add	 x0, x1, x0	// id: 1412, l: 1413	
	ldr	 d0, [x0]	// id: 1413, l: 1414	
	fsub	 d0, d1, d0	// id: 1414, l: 1415	
	str	 d0, [sp, #32]	// id: 1415, l: 1416	
	ldr	 d0, [sp, #24]	// id: 1416, l: 1417	
	ldr	 d1, [sp, #48]	// id: 1417, l: 1418	
	fdiv	 d0, d1, d0	// id: 1418, l: 1419	
	str	 d0, [sp, #48]	// id: 1419, l: 1420	
	ldr	 d0, [sp, #24]	// id: 1420, l: 1421	
	ldr	 d1, [sp, #40]	// id: 1421, l: 1422	
	fdiv	 d0, d1, d0	// id: 1422, l: 1423	
	str	 d0, [sp, #40]	// id: 1423, l: 1424	
	ldr	 d0, [sp, #24]	// id: 1424, l: 1425	
	ldr	 d1, [sp, #32]	// id: 1425, l: 1426	
	fdiv	 d0, d1, d0	// id: 1426, l: 1427	
	str	 d0, [sp, #32]	// id: 1427, l: 1428	
	ldr	 w0, [sp, #60]	// id: 1428, l: 1429	
	add	 w0, w0, #0x13	// id: 1429, l: 1430	
	sxtw	 x0, w0	// id: 1430, l: 1431	
	lsl	 x0, x0, #3	// id: 1431, l: 1432	
	ldr	 x1, [sp, #8]	// id: 1432, l: 1433	
	add	 x0, x1, x0	// id: 1433, l: 1434	
	ldr	 w0, [x0]	// id: 1434, l: 1435	
	and	 w0, w0, #0x2	// id: 1435, l: 1436	
	cmp	 w0, #0x0	// id: 1436, l: 1437	
	beq	 .L41	// id: 1437, l: 1438	
	adrp	 x0, .LC5	// id: 1438, l: 1439	
	ldr	 d0, [x0,:lo12:.LC5]	// id: 1439, l: 1440	
	str	 d0, [sp, #48]	// id: 1440, l: 1441	
	adrp	 x0, .LC6	// id: 1441, l: 1442	
	ldr	 d0, [x0,:lo12:.LC6]	// id: 1442, l: 1443	
	str	 d0, [sp, #40]	// id: 1443, l: 1444	
	str	 xzr, [sp, #32]	// id: 1444, l: 1445	
.L41:	// id: 1445, l: 1446	
	ldr	 d0, [sp, #48]	// id: 1446, l: 1447	
	fmul	 d1, d0, d0	// id: 1447, l: 1448	
	ldr	 d0, [sp, #40]	// id: 1448, l: 1449	
	fmul	 d0, d0, d0	// id: 1449, l: 1450	
	fadd	 d1, d1, d0	// id: 1450, l: 1451	
	ldr	 d0, [sp, #32]	// id: 1451, l: 1452	
	fmul	 d0, d0, d0	// id: 1452, l: 1453	
	fadd	 d1, d1, d0	// id: 1453, l: 1454	
	fmov	 d0, #1.500000000000000000e+00	// id: 1454, l: 1455	
	fmul	 d0, d1, d0	// id: 1455, l: 1456	
	str	 d0, [sp, #16]	// id: 1456, l: 1457	
	ldrsw	 x0, [sp, #60]	// id: 1457, l: 1458	
	lsl	 x0, x0, #3	// id: 1458, l: 1459	
	ldr	 x1, [sp, #8]	// id: 1459, l: 1460	
	add	 x0, x1, x0	// id: 1460, l: 1461	
	ldr	 d0, [x0]	// id: 1461, l: 1462	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 1462, l: 1463	
	movk	 x0, #0xbfee, lsl #48	// id: 1463, l: 1464	
	fmov	 d1, x0	// id: 1464, l: 1465	
	fmul	 d1, d0, d1	// id: 1465, l: 1466	
	ldr	 d0, [sp, #24]	// id: 1466, l: 1467	
	mov	 x0, #0xcccccccccccccccc    	// #-3689348814741910324	// id: 1467, l: 1468	
	movk	 x0, #0x3fe4, lsl #48	// id: 1468, l: 1469	
	fmov	 d2, x0	// id: 1469, l: 1470	
	fmul	 d2, d0, d2	// id: 1470, l: 1471	
	fmov	 d3, #1.000000000000000000e+00	// id: 1471, l: 1472	
	ldr	 d0, [sp, #16]	// id: 1472, l: 1473	
	fsub	 d0, d3, d0	// id: 1473, l: 1474	
	fmul	 d0, d2, d0	// id: 1474, l: 1475	
	ldrsw	 x0, [sp, #60]	// id: 1475, l: 1476	
	lsl	 x0, x0, #3	// id: 1476, l: 1477	
	ldr	 x1, [sp]	// id: 1477, l: 1478	
	add	 x0, x1, x0	// id: 1478, l: 1479	
	fadd	 d0, d1, d0	// id: 1479, l: 1480	
	str	 d0, [x0]	// id: 1480, l: 1481	
	ldr	 w0, [sp, #60]	// id: 1481, l: 1482	
	add	 w0, w0, #0x1	// id: 1482, l: 1483	
	sxtw	 x0, w0	// id: 1483, l: 1484	
	lsl	 x0, x0, #3	// id: 1484, l: 1485	
	ldr	 x1, [sp, #8]	// id: 1485, l: 1486	
	add	 x0, x1, x0	// id: 1486, l: 1487	
	ldr	 d0, [x0]	// id: 1487, l: 1488	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 1488, l: 1489	
	movk	 x0, #0xbfee, lsl #48	// id: 1489, l: 1490	
	fmov	 d1, x0	// id: 1490, l: 1491	
	fmul	 d1, d0, d1	// id: 1491, l: 1492	
	ldr	 d0, [sp, #24]	// id: 1492, l: 1493	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 1493, l: 1494	
	movk	 x0, #0x3fbb, lsl #48	// id: 1494, l: 1495	
	fmov	 d2, x0	// id: 1495, l: 1496	
	fmul	 d2, d0, d2	// id: 1496, l: 1497	
	ldr	 d3, [sp, #40]	// id: 1497, l: 1498	
	fmov	 d0, #4.500000000000000000e+00	// id: 1498, l: 1499	
	fmul	 d3, d3, d0	// id: 1499, l: 1500	
	fmov	 d0, #3.000000000000000000e+00	// id: 1500, l: 1501	
	fadd	 d3, d3, d0	// id: 1501, l: 1502	
	ldr	 d0, [sp, #40]	// id: 1502, l: 1503	
	fmul	 d3, d3, d0	// id: 1503, l: 1504	
	fmov	 d0, #1.000000000000000000e+00	// id: 1504, l: 1505	
	fadd	 d3, d3, d0	// id: 1505, l: 1506	
	ldr	 d0, [sp, #16]	// id: 1506, l: 1507	
	fsub	 d0, d3, d0	// id: 1507, l: 1508	
	fmul	 d0, d2, d0	// id: 1508, l: 1509	
	ldr	 w0, [sp, #60]	// id: 1509, l: 1510	
	add	 w0, w0, #0x7d1	// id: 1510, l: 1511	
	sxtw	 x0, w0	// id: 1511, l: 1512	
	lsl	 x0, x0, #3	// id: 1512, l: 1513	
	ldr	 x1, [sp]	// id: 1513, l: 1514	
	add	 x0, x1, x0	// id: 1514, l: 1515	
	fadd	 d0, d1, d0	// id: 1515, l: 1516	
	str	 d0, [x0]	// id: 1516, l: 1517	
	ldr	 w0, [sp, #60]	// id: 1517, l: 1518	
	add	 w0, w0, #0x2	// id: 1518, l: 1519	
	sxtw	 x0, w0	// id: 1519, l: 1520	
	lsl	 x0, x0, #3	// id: 1520, l: 1521	
	ldr	 x1, [sp, #8]	// id: 1521, l: 1522	
	add	 x0, x1, x0	// id: 1522, l: 1523	
	ldr	 d0, [x0]	// id: 1523, l: 1524	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 1524, l: 1525	
	movk	 x0, #0xbfee, lsl #48	// id: 1525, l: 1526	
	fmov	 d1, x0	// id: 1526, l: 1527	
	fmul	 d1, d0, d1	// id: 1527, l: 1528	
	ldr	 d0, [sp, #24]	// id: 1528, l: 1529	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 1529, l: 1530	
	movk	 x0, #0x3fbb, lsl #48	// id: 1530, l: 1531	
	fmov	 d2, x0	// id: 1531, l: 1532	
	fmul	 d2, d0, d2	// id: 1532, l: 1533	
	ldr	 d3, [sp, #40]	// id: 1533, l: 1534	
	fmov	 d0, #4.500000000000000000e+00	// id: 1534, l: 1535	
	fmul	 d3, d3, d0	// id: 1535, l: 1536	
	fmov	 d0, #3.000000000000000000e+00	// id: 1536, l: 1537	
	fsub	 d3, d3, d0	// id: 1537, l: 1538	
	ldr	 d0, [sp, #40]	// id: 1538, l: 1539	
	fmul	 d3, d3, d0	// id: 1539, l: 1540	
	fmov	 d0, #1.000000000000000000e+00	// id: 1540, l: 1541	
	fadd	 d3, d3, d0	// id: 1541, l: 1542	
	ldr	 d0, [sp, #16]	// id: 1542, l: 1543	
	fsub	 d0, d3, d0	// id: 1543, l: 1544	
	fmul	 d0, d2, d0	// id: 1544, l: 1545	
	ldr	 w0, [sp, #60]	// id: 1545, l: 1546	
	sub	 w0, w0, #0x7ce	// id: 1546, l: 1547	
	sxtw	 x0, w0	// id: 1547, l: 1548	
	lsl	 x0, x0, #3	// id: 1548, l: 1549	
	ldr	 x1, [sp]	// id: 1549, l: 1550	
	add	 x0, x1, x0	// id: 1550, l: 1551	
	fadd	 d0, d1, d0	// id: 1551, l: 1552	
	str	 d0, [x0]	// id: 1552, l: 1553	
	ldr	 w0, [sp, #60]	// id: 1553, l: 1554	
	add	 w0, w0, #0x3	// id: 1554, l: 1555	
	sxtw	 x0, w0	// id: 1555, l: 1556	
	lsl	 x0, x0, #3	// id: 1556, l: 1557	
	ldr	 x1, [sp, #8]	// id: 1557, l: 1558	
	add	 x0, x1, x0	// id: 1558, l: 1559	
	ldr	 d0, [x0]	// id: 1559, l: 1560	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 1560, l: 1561	
	movk	 x0, #0xbfee, lsl #48	// id: 1561, l: 1562	
	fmov	 d1, x0	// id: 1562, l: 1563	
	fmul	 d1, d0, d1	// id: 1563, l: 1564	
	ldr	 d0, [sp, #24]	// id: 1564, l: 1565	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 1565, l: 1566	
	movk	 x0, #0x3fbb, lsl #48	// id: 1566, l: 1567	
	fmov	 d2, x0	// id: 1567, l: 1568	
	fmul	 d2, d0, d2	// id: 1568, l: 1569	
	ldr	 d3, [sp, #48]	// id: 1569, l: 1570	
	fmov	 d0, #4.500000000000000000e+00	// id: 1570, l: 1571	
	fmul	 d3, d3, d0	// id: 1571, l: 1572	
	fmov	 d0, #3.000000000000000000e+00	// id: 1572, l: 1573	
	fadd	 d3, d3, d0	// id: 1573, l: 1574	
	ldr	 d0, [sp, #48]	// id: 1574, l: 1575	
	fmul	 d3, d3, d0	// id: 1575, l: 1576	
	fmov	 d0, #1.000000000000000000e+00	// id: 1576, l: 1577	
	fadd	 d3, d3, d0	// id: 1577, l: 1578	
	ldr	 d0, [sp, #16]	// id: 1578, l: 1579	
	fsub	 d0, d3, d0	// id: 1579, l: 1580	
	fmul	 d0, d2, d0	// id: 1580, l: 1581	
	ldr	 w0, [sp, #60]	// id: 1581, l: 1582	
	add	 w0, w0, #0x17	// id: 1582, l: 1583	
	sxtw	 x0, w0	// id: 1583, l: 1584	
	lsl	 x0, x0, #3	// id: 1584, l: 1585	
	ldr	 x1, [sp]	// id: 1585, l: 1586	
	add	 x0, x1, x0	// id: 1586, l: 1587	
	fadd	 d0, d1, d0	// id: 1587, l: 1588	
	str	 d0, [x0]	// id: 1588, l: 1589	
	ldr	 w0, [sp, #60]	// id: 1589, l: 1590	
	add	 w0, w0, #0x4	// id: 1590, l: 1591	
	sxtw	 x0, w0	// id: 1591, l: 1592	
	lsl	 x0, x0, #3	// id: 1592, l: 1593	
	ldr	 x1, [sp, #8]	// id: 1593, l: 1594	
	add	 x0, x1, x0	// id: 1594, l: 1595	
	ldr	 d0, [x0]	// id: 1595, l: 1596	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 1596, l: 1597	
	movk	 x0, #0xbfee, lsl #48	// id: 1597, l: 1598	
	fmov	 d1, x0	// id: 1598, l: 1599	
	fmul	 d1, d0, d1	// id: 1599, l: 1600	
	ldr	 d0, [sp, #24]	// id: 1600, l: 1601	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 1601, l: 1602	
	movk	 x0, #0x3fbb, lsl #48	// id: 1602, l: 1603	
	fmov	 d2, x0	// id: 1603, l: 1604	
	fmul	 d2, d0, d2	// id: 1604, l: 1605	
	ldr	 d3, [sp, #48]	// id: 1605, l: 1606	
	fmov	 d0, #4.500000000000000000e+00	// id: 1606, l: 1607	
	fmul	 d3, d3, d0	// id: 1607, l: 1608	
	fmov	 d0, #3.000000000000000000e+00	// id: 1608, l: 1609	
	fsub	 d3, d3, d0	// id: 1609, l: 1610	
	ldr	 d0, [sp, #48]	// id: 1610, l: 1611	
	fmul	 d3, d3, d0	// id: 1611, l: 1612	
	fmov	 d0, #1.000000000000000000e+00	// id: 1612, l: 1613	
	fadd	 d3, d3, d0	// id: 1613, l: 1614	
	ldr	 d0, [sp, #16]	// id: 1614, l: 1615	
	fsub	 d0, d3, d0	// id: 1615, l: 1616	
	fmul	 d0, d2, d0	// id: 1616, l: 1617	
	ldr	 w0, [sp, #60]	// id: 1617, l: 1618	
	sub	 w0, w0, #0x10	// id: 1618, l: 1619	
	sxtw	 x0, w0	// id: 1619, l: 1620	
	lsl	 x0, x0, #3	// id: 1620, l: 1621	
	ldr	 x1, [sp]	// id: 1621, l: 1622	
	add	 x0, x1, x0	// id: 1622, l: 1623	
	fadd	 d0, d1, d0	// id: 1623, l: 1624	
	str	 d0, [x0]	// id: 1624, l: 1625	
	ldr	 w0, [sp, #60]	// id: 1625, l: 1626	
	add	 w0, w0, #0x5	// id: 1626, l: 1627	
	sxtw	 x0, w0	// id: 1627, l: 1628	
	lsl	 x0, x0, #3	// id: 1628, l: 1629	
	ldr	 x1, [sp, #8]	// id: 1629, l: 1630	
	add	 x0, x1, x0	// id: 1630, l: 1631	
	ldr	 d0, [x0]	// id: 1631, l: 1632	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 1632, l: 1633	
	movk	 x0, #0xbfee, lsl #48	// id: 1633, l: 1634	
	fmov	 d1, x0	// id: 1634, l: 1635	
	fmul	 d1, d0, d1	// id: 1635, l: 1636	
	ldr	 d0, [sp, #24]	// id: 1636, l: 1637	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 1637, l: 1638	
	movk	 x0, #0x3fbb, lsl #48	// id: 1638, l: 1639	
	fmov	 d2, x0	// id: 1639, l: 1640	
	fmul	 d2, d0, d2	// id: 1640, l: 1641	
	ldr	 d3, [sp, #32]	// id: 1641, l: 1642	
	fmov	 d0, #4.500000000000000000e+00	// id: 1642, l: 1643	
	fmul	 d3, d3, d0	// id: 1643, l: 1644	
	fmov	 d0, #3.000000000000000000e+00	// id: 1644, l: 1645	
	fadd	 d3, d3, d0	// id: 1645, l: 1646	
	ldr	 d0, [sp, #32]	// id: 1646, l: 1647	
	fmul	 d3, d3, d0	// id: 1647, l: 1648	
	fmov	 d0, #1.000000000000000000e+00	// id: 1648, l: 1649	
	fadd	 d3, d3, d0	// id: 1649, l: 1650	
	ldr	 d0, [sp, #16]	// id: 1650, l: 1651	
	fsub	 d0, d3, d0	// id: 1651, l: 1652	
	fmul	 d0, d2, d0	// id: 1652, l: 1653	
	ldr	 w1, [sp, #60]	// id: 1653, l: 1654	
	mov	 w0, #0xd45                 	// #3397	// id: 1654, l: 1655	
	movk	 w0, #0x3, lsl #16	// id: 1655, l: 1656	
	add	 w0, w1, w0	// id: 1656, l: 1657	
	sxtw	 x0, w0	// id: 1657, l: 1658	
	lsl	 x0, x0, #3	// id: 1658, l: 1659	
	ldr	 x1, [sp]	// id: 1659, l: 1660	
	add	 x0, x1, x0	// id: 1660, l: 1661	
	fadd	 d0, d1, d0	// id: 1661, l: 1662	
	str	 d0, [x0]	// id: 1662, l: 1663	
	ldr	 w0, [sp, #60]	// id: 1663, l: 1664	
	add	 w0, w0, #0x6	// id: 1664, l: 1665	
	sxtw	 x0, w0	// id: 1665, l: 1666	
	lsl	 x0, x0, #3	// id: 1666, l: 1667	
	ldr	 x1, [sp, #8]	// id: 1667, l: 1668	
	add	 x0, x1, x0	// id: 1668, l: 1669	
	ldr	 d0, [x0]	// id: 1669, l: 1670	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 1670, l: 1671	
	movk	 x0, #0xbfee, lsl #48	// id: 1671, l: 1672	
	fmov	 d1, x0	// id: 1672, l: 1673	
	fmul	 d1, d0, d1	// id: 1673, l: 1674	
	ldr	 d0, [sp, #24]	// id: 1674, l: 1675	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 1675, l: 1676	
	movk	 x0, #0x3fbb, lsl #48	// id: 1676, l: 1677	
	fmov	 d2, x0	// id: 1677, l: 1678	
	fmul	 d2, d0, d2	// id: 1678, l: 1679	
	ldr	 d3, [sp, #32]	// id: 1679, l: 1680	
	fmov	 d0, #4.500000000000000000e+00	// id: 1680, l: 1681	
	fmul	 d3, d3, d0	// id: 1681, l: 1682	
	fmov	 d0, #3.000000000000000000e+00	// id: 1682, l: 1683	
	fsub	 d3, d3, d0	// id: 1683, l: 1684	
	ldr	 d0, [sp, #32]	// id: 1684, l: 1685	
	fmul	 d3, d3, d0	// id: 1685, l: 1686	
	fmov	 d0, #1.000000000000000000e+00	// id: 1686, l: 1687	
	fadd	 d3, d3, d0	// id: 1687, l: 1688	
	ldr	 d0, [sp, #16]	// id: 1688, l: 1689	
	fsub	 d0, d3, d0	// id: 1689, l: 1690	
	fmul	 d0, d2, d0	// id: 1690, l: 1691	
	ldr	 w1, [sp, #60]	// id: 1691, l: 1692	
	mov	 w0, #0xf2c6                	// #62150	// id: 1692, l: 1693	
	movk	 w0, #0xfffc, lsl #16	// id: 1693, l: 1694	
	add	 w0, w1, w0	// id: 1694, l: 1695	
	sxtw	 x0, w0	// id: 1695, l: 1696	
	lsl	 x0, x0, #3	// id: 1696, l: 1697	
	ldr	 x1, [sp]	// id: 1697, l: 1698	
	add	 x0, x1, x0	// id: 1698, l: 1699	
	fadd	 d0, d1, d0	// id: 1699, l: 1700	
	str	 d0, [x0]	// id: 1700, l: 1701	
	ldr	 w0, [sp, #60]	// id: 1701, l: 1702	
	add	 w0, w0, #0x7	// id: 1702, l: 1703	
	sxtw	 x0, w0	// id: 1703, l: 1704	
	lsl	 x0, x0, #3	// id: 1704, l: 1705	
	ldr	 x1, [sp, #8]	// id: 1705, l: 1706	
	add	 x0, x1, x0	// id: 1706, l: 1707	
	ldr	 d0, [x0]	// id: 1707, l: 1708	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 1708, l: 1709	
	movk	 x0, #0xbfee, lsl #48	// id: 1709, l: 1710	
	fmov	 d1, x0	// id: 1710, l: 1711	
	fmul	 d1, d0, d1	// id: 1711, l: 1712	
	ldr	 d0, [sp, #24]	// id: 1712, l: 1713	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 1713, l: 1714	
	movk	 x0, #0x3fab, lsl #48	// id: 1714, l: 1715	
	fmov	 d2, x0	// id: 1715, l: 1716	
	fmul	 d2, d0, d2	// id: 1716, l: 1717	
	ldr	 d3, [sp, #48]	// id: 1717, l: 1718	
	ldr	 d0, [sp, #40]	// id: 1718, l: 1719	
	fadd	 d3, d3, d0	// id: 1719, l: 1720	
	ldr	 d4, [sp, #48]	// id: 1720, l: 1721	
	ldr	 d0, [sp, #40]	// id: 1721, l: 1722	
	fadd	 d4, d4, d0	// id: 1722, l: 1723	
	fmov	 d0, #4.500000000000000000e+00	// id: 1723, l: 1724	
	fmul	 d4, d4, d0	// id: 1724, l: 1725	
	fmov	 d0, #3.000000000000000000e+00	// id: 1725, l: 1726	
	fadd	 d0, d4, d0	// id: 1726, l: 1727	
	fmul	 d3, d3, d0	// id: 1727, l: 1728	
	fmov	 d0, #1.000000000000000000e+00	// id: 1728, l: 1729	
	fadd	 d3, d3, d0	// id: 1729, l: 1730	
	ldr	 d0, [sp, #16]	// id: 1730, l: 1731	
	fsub	 d0, d3, d0	// id: 1731, l: 1732	
	fmul	 d0, d2, d0	// id: 1732, l: 1733	
	ldr	 w0, [sp, #60]	// id: 1733, l: 1734	
	add	 w0, w0, #0x7eb	// id: 1734, l: 1735	
	sxtw	 x0, w0	// id: 1735, l: 1736	
	lsl	 x0, x0, #3	// id: 1736, l: 1737	
	ldr	 x1, [sp]	// id: 1737, l: 1738	
	add	 x0, x1, x0	// id: 1738, l: 1739	
	fadd	 d0, d1, d0	// id: 1739, l: 1740	
	str	 d0, [x0]	// id: 1740, l: 1741	
	ldr	 w0, [sp, #60]	// id: 1741, l: 1742	
	add	 w0, w0, #0x8	// id: 1742, l: 1743	
	sxtw	 x0, w0	// id: 1743, l: 1744	
	lsl	 x0, x0, #3	// id: 1744, l: 1745	
	ldr	 x1, [sp, #8]	// id: 1745, l: 1746	
	add	 x0, x1, x0	// id: 1746, l: 1747	
	ldr	 d0, [x0]	// id: 1747, l: 1748	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 1748, l: 1749	
	movk	 x0, #0xbfee, lsl #48	// id: 1749, l: 1750	
	fmov	 d1, x0	// id: 1750, l: 1751	
	fmul	 d1, d0, d1	// id: 1751, l: 1752	
	ldr	 d0, [sp, #24]	// id: 1752, l: 1753	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 1753, l: 1754	
	movk	 x0, #0x3fab, lsl #48	// id: 1754, l: 1755	
	fmov	 d2, x0	// id: 1755, l: 1756	
	fmul	 d2, d0, d2	// id: 1756, l: 1757	
	ldr	 d3, [sp, #40]	// id: 1757, l: 1758	
	ldr	 d0, [sp, #48]	// id: 1758, l: 1759	
	fsub	 d3, d3, d0	// id: 1759, l: 1760	
	ldr	 d4, [sp, #40]	// id: 1760, l: 1761	
	ldr	 d0, [sp, #48]	// id: 1761, l: 1762	
	fsub	 d4, d4, d0	// id: 1762, l: 1763	
	fmov	 d0, #4.500000000000000000e+00	// id: 1763, l: 1764	
	fmul	 d4, d4, d0	// id: 1764, l: 1765	
	fmov	 d0, #3.000000000000000000e+00	// id: 1765, l: 1766	
	fadd	 d0, d4, d0	// id: 1766, l: 1767	
	fmul	 d3, d3, d0	// id: 1767, l: 1768	
	fmov	 d0, #1.000000000000000000e+00	// id: 1768, l: 1769	
	fadd	 d3, d3, d0	// id: 1769, l: 1770	
	ldr	 d0, [sp, #16]	// id: 1770, l: 1771	
	fsub	 d0, d3, d0	// id: 1771, l: 1772	
	fmul	 d0, d2, d0	// id: 1772, l: 1773	
	ldr	 w0, [sp, #60]	// id: 1773, l: 1774	
	add	 w0, w0, #0x7c4	// id: 1774, l: 1775	
	sxtw	 x0, w0	// id: 1775, l: 1776	
	lsl	 x0, x0, #3	// id: 1776, l: 1777	
	ldr	 x1, [sp]	// id: 1777, l: 1778	
	add	 x0, x1, x0	// id: 1778, l: 1779	
	fadd	 d0, d1, d0	// id: 1779, l: 1780	
	str	 d0, [x0]	// id: 1780, l: 1781	
	ldr	 w0, [sp, #60]	// id: 1781, l: 1782	
	add	 w0, w0, #0x9	// id: 1782, l: 1783	
	sxtw	 x0, w0	// id: 1783, l: 1784	
	lsl	 x0, x0, #3	// id: 1784, l: 1785	
	ldr	 x1, [sp, #8]	// id: 1785, l: 1786	
	add	 x0, x1, x0	// id: 1786, l: 1787	
	ldr	 d0, [x0]	// id: 1787, l: 1788	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 1788, l: 1789	
	movk	 x0, #0xbfee, lsl #48	// id: 1789, l: 1790	
	fmov	 d1, x0	// id: 1790, l: 1791	
	fmul	 d1, d0, d1	// id: 1791, l: 1792	
	ldr	 d0, [sp, #24]	// id: 1792, l: 1793	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 1793, l: 1794	
	movk	 x0, #0x3fab, lsl #48	// id: 1794, l: 1795	
	fmov	 d2, x0	// id: 1795, l: 1796	
	fmul	 d2, d0, d2	// id: 1796, l: 1797	
	ldr	 d3, [sp, #48]	// id: 1797, l: 1798	
	ldr	 d0, [sp, #40]	// id: 1798, l: 1799	
	fsub	 d3, d3, d0	// id: 1799, l: 1800	
	ldr	 d4, [sp, #48]	// id: 1800, l: 1801	
	ldr	 d0, [sp, #40]	// id: 1801, l: 1802	
	fsub	 d4, d4, d0	// id: 1802, l: 1803	
	fmov	 d0, #4.500000000000000000e+00	// id: 1803, l: 1804	
	fmul	 d4, d4, d0	// id: 1804, l: 1805	
	fmov	 d0, #3.000000000000000000e+00	// id: 1805, l: 1806	
	fadd	 d0, d4, d0	// id: 1806, l: 1807	
	fmul	 d3, d3, d0	// id: 1807, l: 1808	
	fmov	 d0, #1.000000000000000000e+00	// id: 1808, l: 1809	
	fadd	 d3, d3, d0	// id: 1809, l: 1810	
	ldr	 d0, [sp, #16]	// id: 1810, l: 1811	
	fsub	 d0, d3, d0	// id: 1811, l: 1812	
	fmul	 d0, d2, d0	// id: 1812, l: 1813	
	ldr	 w0, [sp, #60]	// id: 1813, l: 1814	
	sub	 w0, w0, #0x7b3	// id: 1814, l: 1815	
	sxtw	 x0, w0	// id: 1815, l: 1816	
	lsl	 x0, x0, #3	// id: 1816, l: 1817	
	ldr	 x1, [sp]	// id: 1817, l: 1818	
	add	 x0, x1, x0	// id: 1818, l: 1819	
	fadd	 d0, d1, d0	// id: 1819, l: 1820	
	str	 d0, [x0]	// id: 1820, l: 1821	
	ldr	 w0, [sp, #60]	// id: 1821, l: 1822	
	add	 w0, w0, #0xa	// id: 1822, l: 1823	
	sxtw	 x0, w0	// id: 1823, l: 1824	
	lsl	 x0, x0, #3	// id: 1824, l: 1825	
	ldr	 x1, [sp, #8]	// id: 1825, l: 1826	
	add	 x0, x1, x0	// id: 1826, l: 1827	
	ldr	 d0, [x0]	// id: 1827, l: 1828	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 1828, l: 1829	
	movk	 x0, #0xbfee, lsl #48	// id: 1829, l: 1830	
	fmov	 d1, x0	// id: 1830, l: 1831	
	fmul	 d1, d0, d1	// id: 1831, l: 1832	
	ldr	 d0, [sp, #24]	// id: 1832, l: 1833	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 1833, l: 1834	
	movk	 x0, #0x3fab, lsl #48	// id: 1834, l: 1835	
	fmov	 d2, x0	// id: 1835, l: 1836	
	fmul	 d2, d0, d2	// id: 1836, l: 1837	
	ldr	 d0, [sp, #48]	// id: 1837, l: 1838	
	fneg	 d3, d0	// id: 1838, l: 1839	
	ldr	 d0, [sp, #40]	// id: 1839, l: 1840	
	fsub	 d3, d3, d0	// id: 1840, l: 1841	
	ldr	 d0, [sp, #48]	// id: 1841, l: 1842	
	fneg	 d4, d0	// id: 1842, l: 1843	
	ldr	 d0, [sp, #40]	// id: 1843, l: 1844	
	fsub	 d4, d4, d0	// id: 1844, l: 1845	
	fmov	 d0, #4.500000000000000000e+00	// id: 1845, l: 1846	
	fmul	 d4, d4, d0	// id: 1846, l: 1847	
	fmov	 d0, #3.000000000000000000e+00	// id: 1847, l: 1848	
	fadd	 d0, d4, d0	// id: 1848, l: 1849	
	fmul	 d3, d3, d0	// id: 1849, l: 1850	
	fmov	 d0, #1.000000000000000000e+00	// id: 1850, l: 1851	
	fadd	 d3, d3, d0	// id: 1851, l: 1852	
	ldr	 d0, [sp, #16]	// id: 1852, l: 1853	
	fsub	 d0, d3, d0	// id: 1853, l: 1854	
	fmul	 d0, d2, d0	// id: 1854, l: 1855	
	ldr	 w0, [sp, #60]	// id: 1855, l: 1856	
	sub	 w0, w0, #0x7da	// id: 1856, l: 1857	
	sxtw	 x0, w0	// id: 1857, l: 1858	
	lsl	 x0, x0, #3	// id: 1858, l: 1859	
	ldr	 x1, [sp]	// id: 1859, l: 1860	
	add	 x0, x1, x0	// id: 1860, l: 1861	
	fadd	 d0, d1, d0	// id: 1861, l: 1862	
	str	 d0, [x0]	// id: 1862, l: 1863	
	ldr	 w0, [sp, #60]	// id: 1863, l: 1864	
	add	 w0, w0, #0xb	// id: 1864, l: 1865	
	sxtw	 x0, w0	// id: 1865, l: 1866	
	lsl	 x0, x0, #3	// id: 1866, l: 1867	
	ldr	 x1, [sp, #8]	// id: 1867, l: 1868	
	add	 x0, x1, x0	// id: 1868, l: 1869	
	ldr	 d0, [x0]	// id: 1869, l: 1870	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 1870, l: 1871	
	movk	 x0, #0xbfee, lsl #48	// id: 1871, l: 1872	
	fmov	 d1, x0	// id: 1872, l: 1873	
	fmul	 d1, d0, d1	// id: 1873, l: 1874	
	ldr	 d0, [sp, #24]	// id: 1874, l: 1875	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 1875, l: 1876	
	movk	 x0, #0x3fab, lsl #48	// id: 1876, l: 1877	
	fmov	 d2, x0	// id: 1877, l: 1878	
	fmul	 d2, d0, d2	// id: 1878, l: 1879	
	ldr	 d3, [sp, #40]	// id: 1879, l: 1880	
	ldr	 d0, [sp, #32]	// id: 1880, l: 1881	
	fadd	 d3, d3, d0	// id: 1881, l: 1882	
	ldr	 d4, [sp, #40]	// id: 1882, l: 1883	
	ldr	 d0, [sp, #32]	// id: 1883, l: 1884	
	fadd	 d4, d4, d0	// id: 1884, l: 1885	
	fmov	 d0, #4.500000000000000000e+00	// id: 1885, l: 1886	
	fmul	 d4, d4, d0	// id: 1886, l: 1887	
	fmov	 d0, #3.000000000000000000e+00	// id: 1887, l: 1888	
	fadd	 d0, d4, d0	// id: 1888, l: 1889	
	fmul	 d3, d3, d0	// id: 1889, l: 1890	
	fmov	 d0, #1.000000000000000000e+00	// id: 1890, l: 1891	
	fadd	 d3, d3, d0	// id: 1891, l: 1892	
	ldr	 d0, [sp, #16]	// id: 1892, l: 1893	
	fsub	 d0, d3, d0	// id: 1893, l: 1894	
	fmul	 d0, d2, d0	// id: 1894, l: 1895	
	ldr	 w1, [sp, #60]	// id: 1895, l: 1896	
	mov	 w0, #0x151b                	// #5403	// id: 1896, l: 1897	
	movk	 w0, #0x3, lsl #16	// id: 1897, l: 1898	
	add	 w0, w1, w0	// id: 1898, l: 1899	
	sxtw	 x0, w0	// id: 1899, l: 1900	
	lsl	 x0, x0, #3	// id: 1900, l: 1901	
	ldr	 x1, [sp]	// id: 1901, l: 1902	
	add	 x0, x1, x0	// id: 1902, l: 1903	
	fadd	 d0, d1, d0	// id: 1903, l: 1904	
	str	 d0, [x0]	// id: 1904, l: 1905	
	ldr	 w0, [sp, #60]	// id: 1905, l: 1906	
	add	 w0, w0, #0xc	// id: 1906, l: 1907	
	sxtw	 x0, w0	// id: 1907, l: 1908	
	lsl	 x0, x0, #3	// id: 1908, l: 1909	
	ldr	 x1, [sp, #8]	// id: 1909, l: 1910	
	add	 x0, x1, x0	// id: 1910, l: 1911	
	ldr	 d0, [x0]	// id: 1911, l: 1912	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 1912, l: 1913	
	movk	 x0, #0xbfee, lsl #48	// id: 1913, l: 1914	
	fmov	 d1, x0	// id: 1914, l: 1915	
	fmul	 d1, d0, d1	// id: 1915, l: 1916	
	ldr	 d0, [sp, #24]	// id: 1916, l: 1917	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 1917, l: 1918	
	movk	 x0, #0x3fab, lsl #48	// id: 1918, l: 1919	
	fmov	 d2, x0	// id: 1919, l: 1920	
	fmul	 d2, d0, d2	// id: 1920, l: 1921	
	ldr	 d3, [sp, #40]	// id: 1921, l: 1922	
	ldr	 d0, [sp, #32]	// id: 1922, l: 1923	
	fsub	 d3, d3, d0	// id: 1923, l: 1924	
	ldr	 d4, [sp, #40]	// id: 1924, l: 1925	
	ldr	 d0, [sp, #32]	// id: 1925, l: 1926	
	fsub	 d4, d4, d0	// id: 1926, l: 1927	
	fmov	 d0, #4.500000000000000000e+00	// id: 1927, l: 1928	
	fmul	 d4, d4, d0	// id: 1928, l: 1929	
	fmov	 d0, #3.000000000000000000e+00	// id: 1929, l: 1930	
	fadd	 d0, d4, d0	// id: 1930, l: 1931	
	fmul	 d3, d3, d0	// id: 1931, l: 1932	
	fmov	 d0, #1.000000000000000000e+00	// id: 1932, l: 1933	
	fadd	 d3, d3, d0	// id: 1933, l: 1934	
	ldr	 d0, [sp, #16]	// id: 1934, l: 1935	
	fsub	 d0, d3, d0	// id: 1935, l: 1936	
	fmul	 d0, d2, d0	// id: 1936, l: 1937	
	ldr	 w1, [sp, #60]	// id: 1937, l: 1938	
	mov	 w0, #0xfa9c                	// #64156	// id: 1938, l: 1939	
	movk	 w0, #0xfffc, lsl #16	// id: 1939, l: 1940	
	add	 w0, w1, w0	// id: 1940, l: 1941	
	sxtw	 x0, w0	// id: 1941, l: 1942	
	lsl	 x0, x0, #3	// id: 1942, l: 1943	
	ldr	 x1, [sp]	// id: 1943, l: 1944	
	add	 x0, x1, x0	// id: 1944, l: 1945	
	fadd	 d0, d1, d0	// id: 1945, l: 1946	
	str	 d0, [x0]	// id: 1946, l: 1947	
	ldr	 w0, [sp, #60]	// id: 1947, l: 1948	
	add	 w0, w0, #0xd	// id: 1948, l: 1949	
	sxtw	 x0, w0	// id: 1949, l: 1950	
	lsl	 x0, x0, #3	// id: 1950, l: 1951	
	ldr	 x1, [sp, #8]	// id: 1951, l: 1952	
	add	 x0, x1, x0	// id: 1952, l: 1953	
	ldr	 d0, [x0]	// id: 1953, l: 1954	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 1954, l: 1955	
	movk	 x0, #0xbfee, lsl #48	// id: 1955, l: 1956	
	fmov	 d1, x0	// id: 1956, l: 1957	
	fmul	 d1, d0, d1	// id: 1957, l: 1958	
	ldr	 d0, [sp, #24]	// id: 1958, l: 1959	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 1959, l: 1960	
	movk	 x0, #0x3fab, lsl #48	// id: 1960, l: 1961	
	fmov	 d2, x0	// id: 1961, l: 1962	
	fmul	 d2, d0, d2	// id: 1962, l: 1963	
	ldr	 d3, [sp, #32]	// id: 1963, l: 1964	
	ldr	 d0, [sp, #40]	// id: 1964, l: 1965	
	fsub	 d3, d3, d0	// id: 1965, l: 1966	
	ldr	 d4, [sp, #32]	// id: 1966, l: 1967	
	ldr	 d0, [sp, #40]	// id: 1967, l: 1968	
	fsub	 d4, d4, d0	// id: 1968, l: 1969	
	fmov	 d0, #4.500000000000000000e+00	// id: 1969, l: 1970	
	fmul	 d4, d4, d0	// id: 1970, l: 1971	
	fmov	 d0, #3.000000000000000000e+00	// id: 1971, l: 1972	
	fadd	 d0, d4, d0	// id: 1972, l: 1973	
	fmul	 d3, d3, d0	// id: 1973, l: 1974	
	fmov	 d0, #1.000000000000000000e+00	// id: 1974, l: 1975	
	fadd	 d3, d3, d0	// id: 1975, l: 1976	
	ldr	 d0, [sp, #16]	// id: 1976, l: 1977	
	fsub	 d0, d3, d0	// id: 1977, l: 1978	
	fmul	 d0, d2, d0	// id: 1978, l: 1979	
	ldr	 w1, [sp, #60]	// id: 1979, l: 1980	
	mov	 w0, #0x57d                 	// #1405	// id: 1980, l: 1981	
	movk	 w0, #0x3, lsl #16	// id: 1981, l: 1982	
	add	 w0, w1, w0	// id: 1982, l: 1983	
	sxtw	 x0, w0	// id: 1983, l: 1984	
	lsl	 x0, x0, #3	// id: 1984, l: 1985	
	ldr	 x1, [sp]	// id: 1985, l: 1986	
	add	 x0, x1, x0	// id: 1986, l: 1987	
	fadd	 d0, d1, d0	// id: 1987, l: 1988	
	str	 d0, [x0]	// id: 1988, l: 1989	
	ldr	 w0, [sp, #60]	// id: 1989, l: 1990	
	add	 w0, w0, #0xe	// id: 1990, l: 1991	
	sxtw	 x0, w0	// id: 1991, l: 1992	
	lsl	 x0, x0, #3	// id: 1992, l: 1993	
	ldr	 x1, [sp, #8]	// id: 1993, l: 1994	
	add	 x0, x1, x0	// id: 1994, l: 1995	
	ldr	 d0, [x0]	// id: 1995, l: 1996	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 1996, l: 1997	
	movk	 x0, #0xbfee, lsl #48	// id: 1997, l: 1998	
	fmov	 d1, x0	// id: 1998, l: 1999	
	fmul	 d1, d0, d1	// id: 1999, l: 2000	
	ldr	 d0, [sp, #24]	// id: 2000, l: 2001	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 2001, l: 2002	
	movk	 x0, #0x3fab, lsl #48	// id: 2002, l: 2003	
	fmov	 d2, x0	// id: 2003, l: 2004	
	fmul	 d2, d0, d2	// id: 2004, l: 2005	
	ldr	 d0, [sp, #40]	// id: 2005, l: 2006	
	fneg	 d3, d0	// id: 2006, l: 2007	
	ldr	 d0, [sp, #32]	// id: 2007, l: 2008	
	fsub	 d3, d3, d0	// id: 2008, l: 2009	
	ldr	 d0, [sp, #40]	// id: 2009, l: 2010	
	fneg	 d4, d0	// id: 2010, l: 2011	
	ldr	 d0, [sp, #32]	// id: 2011, l: 2012	
	fsub	 d4, d4, d0	// id: 2012, l: 2013	
	fmov	 d0, #4.500000000000000000e+00	// id: 2013, l: 2014	
	fmul	 d4, d4, d0	// id: 2014, l: 2015	
	fmov	 d0, #3.000000000000000000e+00	// id: 2015, l: 2016	
	fadd	 d0, d4, d0	// id: 2016, l: 2017	
	fmul	 d3, d3, d0	// id: 2017, l: 2018	
	fmov	 d0, #1.000000000000000000e+00	// id: 2018, l: 2019	
	fadd	 d3, d3, d0	// id: 2019, l: 2020	
	ldr	 d0, [sp, #16]	// id: 2020, l: 2021	
	fsub	 d0, d3, d0	// id: 2021, l: 2022	
	fmul	 d0, d2, d0	// id: 2022, l: 2023	
	ldr	 w1, [sp, #60]	// id: 2023, l: 2024	
	mov	 w0, #0xeafe                	// #60158	// id: 2024, l: 2025	
	movk	 w0, #0xfffc, lsl #16	// id: 2025, l: 2026	
	add	 w0, w1, w0	// id: 2026, l: 2027	
	sxtw	 x0, w0	// id: 2027, l: 2028	
	lsl	 x0, x0, #3	// id: 2028, l: 2029	
	ldr	 x1, [sp]	// id: 2029, l: 2030	
	add	 x0, x1, x0	// id: 2030, l: 2031	
	fadd	 d0, d1, d0	// id: 2031, l: 2032	
	str	 d0, [x0]	// id: 2032, l: 2033	
	ldr	 w0, [sp, #60]	// id: 2033, l: 2034	
	add	 w0, w0, #0xf	// id: 2034, l: 2035	
	sxtw	 x0, w0	// id: 2035, l: 2036	
	lsl	 x0, x0, #3	// id: 2036, l: 2037	
	ldr	 x1, [sp, #8]	// id: 2037, l: 2038	
	add	 x0, x1, x0	// id: 2038, l: 2039	
	ldr	 d0, [x0]	// id: 2039, l: 2040	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 2040, l: 2041	
	movk	 x0, #0xbfee, lsl #48	// id: 2041, l: 2042	
	fmov	 d1, x0	// id: 2042, l: 2043	
	fmul	 d1, d0, d1	// id: 2043, l: 2044	
	ldr	 d0, [sp, #24]	// id: 2044, l: 2045	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 2045, l: 2046	
	movk	 x0, #0x3fab, lsl #48	// id: 2046, l: 2047	
	fmov	 d2, x0	// id: 2047, l: 2048	
	fmul	 d2, d0, d2	// id: 2048, l: 2049	
	ldr	 d3, [sp, #48]	// id: 2049, l: 2050	
	ldr	 d0, [sp, #32]	// id: 2050, l: 2051	
	fadd	 d3, d3, d0	// id: 2051, l: 2052	
	ldr	 d4, [sp, #48]	// id: 2052, l: 2053	
	ldr	 d0, [sp, #32]	// id: 2053, l: 2054	
	fadd	 d4, d4, d0	// id: 2054, l: 2055	
	fmov	 d0, #4.500000000000000000e+00	// id: 2055, l: 2056	
	fmul	 d4, d4, d0	// id: 2056, l: 2057	
	fmov	 d0, #3.000000000000000000e+00	// id: 2057, l: 2058	
	fadd	 d0, d4, d0	// id: 2058, l: 2059	
	fmul	 d3, d3, d0	// id: 2059, l: 2060	
	fmov	 d0, #1.000000000000000000e+00	// id: 2060, l: 2061	
	fadd	 d3, d3, d0	// id: 2061, l: 2062	
	ldr	 d0, [sp, #16]	// id: 2062, l: 2063	
	fsub	 d0, d3, d0	// id: 2063, l: 2064	
	fmul	 d0, d2, d0	// id: 2064, l: 2065	
	ldr	 w1, [sp, #60]	// id: 2065, l: 2066	
	mov	 w0, #0xd63                 	// #3427	// id: 2066, l: 2067	
	movk	 w0, #0x3, lsl #16	// id: 2067, l: 2068	
	add	 w0, w1, w0	// id: 2068, l: 2069	
	sxtw	 x0, w0	// id: 2069, l: 2070	
	lsl	 x0, x0, #3	// id: 2070, l: 2071	
	ldr	 x1, [sp]	// id: 2071, l: 2072	
	add	 x0, x1, x0	// id: 2072, l: 2073	
	fadd	 d0, d1, d0	// id: 2073, l: 2074	
	str	 d0, [x0]	// id: 2074, l: 2075	
	ldr	 w0, [sp, #60]	// id: 2075, l: 2076	
	add	 w0, w0, #0x10	// id: 2076, l: 2077	
	sxtw	 x0, w0	// id: 2077, l: 2078	
	lsl	 x0, x0, #3	// id: 2078, l: 2079	
	ldr	 x1, [sp, #8]	// id: 2079, l: 2080	
	add	 x0, x1, x0	// id: 2080, l: 2081	
	ldr	 d0, [x0]	// id: 2081, l: 2082	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 2082, l: 2083	
	movk	 x0, #0xbfee, lsl #48	// id: 2083, l: 2084	
	fmov	 d1, x0	// id: 2084, l: 2085	
	fmul	 d1, d0, d1	// id: 2085, l: 2086	
	ldr	 d0, [sp, #24]	// id: 2086, l: 2087	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 2087, l: 2088	
	movk	 x0, #0x3fab, lsl #48	// id: 2088, l: 2089	
	fmov	 d2, x0	// id: 2089, l: 2090	
	fmul	 d2, d0, d2	// id: 2090, l: 2091	
	ldr	 d3, [sp, #48]	// id: 2091, l: 2092	
	ldr	 d0, [sp, #32]	// id: 2092, l: 2093	
	fsub	 d3, d3, d0	// id: 2093, l: 2094	
	ldr	 d4, [sp, #48]	// id: 2094, l: 2095	
	ldr	 d0, [sp, #32]	// id: 2095, l: 2096	
	fsub	 d4, d4, d0	// id: 2096, l: 2097	
	fmov	 d0, #4.500000000000000000e+00	// id: 2097, l: 2098	
	fmul	 d4, d4, d0	// id: 2098, l: 2099	
	fmov	 d0, #3.000000000000000000e+00	// id: 2099, l: 2100	
	fadd	 d0, d4, d0	// id: 2100, l: 2101	
	fmul	 d3, d3, d0	// id: 2101, l: 2102	
	fmov	 d0, #1.000000000000000000e+00	// id: 2102, l: 2103	
	fadd	 d3, d3, d0	// id: 2103, l: 2104	
	ldr	 d0, [sp, #16]	// id: 2104, l: 2105	
	fsub	 d0, d3, d0	// id: 2105, l: 2106	
	fmul	 d0, d2, d0	// id: 2106, l: 2107	
	ldr	 w1, [sp, #60]	// id: 2107, l: 2108	
	mov	 w0, #0xf2e4                	// #62180	// id: 2108, l: 2109	
	movk	 w0, #0xfffc, lsl #16	// id: 2109, l: 2110	
	add	 w0, w1, w0	// id: 2110, l: 2111	
	sxtw	 x0, w0	// id: 2111, l: 2112	
	lsl	 x0, x0, #3	// id: 2112, l: 2113	
	ldr	 x1, [sp]	// id: 2113, l: 2114	
	add	 x0, x1, x0	// id: 2114, l: 2115	
	fadd	 d0, d1, d0	// id: 2115, l: 2116	
	str	 d0, [x0]	// id: 2116, l: 2117	
	ldr	 w0, [sp, #60]	// id: 2117, l: 2118	
	add	 w0, w0, #0x11	// id: 2118, l: 2119	
	sxtw	 x0, w0	// id: 2119, l: 2120	
	lsl	 x0, x0, #3	// id: 2120, l: 2121	
	ldr	 x1, [sp, #8]	// id: 2121, l: 2122	
	add	 x0, x1, x0	// id: 2122, l: 2123	
	ldr	 d0, [x0]	// id: 2123, l: 2124	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 2124, l: 2125	
	movk	 x0, #0xbfee, lsl #48	// id: 2125, l: 2126	
	fmov	 d1, x0	// id: 2126, l: 2127	
	fmul	 d1, d0, d1	// id: 2127, l: 2128	
	ldr	 d0, [sp, #24]	// id: 2128, l: 2129	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 2129, l: 2130	
	movk	 x0, #0x3fab, lsl #48	// id: 2130, l: 2131	
	fmov	 d2, x0	// id: 2131, l: 2132	
	fmul	 d2, d0, d2	// id: 2132, l: 2133	
	ldr	 d3, [sp, #32]	// id: 2133, l: 2134	
	ldr	 d0, [sp, #48]	// id: 2134, l: 2135	
	fsub	 d3, d3, d0	// id: 2135, l: 2136	
	ldr	 d4, [sp, #32]	// id: 2136, l: 2137	
	ldr	 d0, [sp, #48]	// id: 2137, l: 2138	
	fsub	 d4, d4, d0	// id: 2138, l: 2139	
	fmov	 d0, #4.500000000000000000e+00	// id: 2139, l: 2140	
	fmul	 d4, d4, d0	// id: 2140, l: 2141	
	fmov	 d0, #3.000000000000000000e+00	// id: 2141, l: 2142	
	fadd	 d0, d4, d0	// id: 2142, l: 2143	
	fmul	 d3, d3, d0	// id: 2143, l: 2144	
	fmov	 d0, #1.000000000000000000e+00	// id: 2144, l: 2145	
	fadd	 d3, d3, d0	// id: 2145, l: 2146	
	ldr	 d0, [sp, #16]	// id: 2146, l: 2147	
	fsub	 d0, d3, d0	// id: 2147, l: 2148	
	fmul	 d0, d2, d0	// id: 2148, l: 2149	
	ldr	 w1, [sp, #60]	// id: 2149, l: 2150	
	mov	 w0, #0xd3d                 	// #3389	// id: 2150, l: 2151	
	movk	 w0, #0x3, lsl #16	// id: 2151, l: 2152	
	add	 w0, w1, w0	// id: 2152, l: 2153	
	sxtw	 x0, w0	// id: 2153, l: 2154	
	lsl	 x0, x0, #3	// id: 2154, l: 2155	
	ldr	 x1, [sp]	// id: 2155, l: 2156	
	add	 x0, x1, x0	// id: 2156, l: 2157	
	fadd	 d0, d1, d0	// id: 2157, l: 2158	
	str	 d0, [x0]	// id: 2158, l: 2159	
	ldr	 w0, [sp, #60]	// id: 2159, l: 2160	
	add	 w0, w0, #0x12	// id: 2160, l: 2161	
	sxtw	 x0, w0	// id: 2161, l: 2162	
	lsl	 x0, x0, #3	// id: 2162, l: 2163	
	ldr	 x1, [sp, #8]	// id: 2163, l: 2164	
	add	 x0, x1, x0	// id: 2164, l: 2165	
	ldr	 d0, [x0]	// id: 2165, l: 2166	
	mov	 x0, #0x6666666666666666    	// #7378697629483820646	// id: 2166, l: 2167	
	movk	 x0, #0xbfee, lsl #48	// id: 2167, l: 2168	
	fmov	 d1, x0	// id: 2168, l: 2169	
	fmul	 d1, d0, d1	// id: 2169, l: 2170	
	ldr	 d0, [sp, #24]	// id: 2170, l: 2171	
	mov	 x0, #0xbbbbbbbbbbbbbbbb    	// #-4919131752989213765	// id: 2171, l: 2172	
	movk	 x0, #0x3fab, lsl #48	// id: 2172, l: 2173	
	fmov	 d2, x0	// id: 2173, l: 2174	
	fmul	 d2, d0, d2	// id: 2174, l: 2175	
	ldr	 d0, [sp, #48]	// id: 2175, l: 2176	
	fneg	 d3, d0	// id: 2176, l: 2177	
	ldr	 d0, [sp, #32]	// id: 2177, l: 2178	
	fsub	 d3, d3, d0	// id: 2178, l: 2179	
	ldr	 d0, [sp, #48]	// id: 2179, l: 2180	
	fneg	 d4, d0	// id: 2180, l: 2181	
	ldr	 d0, [sp, #32]	// id: 2181, l: 2182	
	fsub	 d4, d4, d0	// id: 2182, l: 2183	
	fmov	 d0, #4.500000000000000000e+00	// id: 2183, l: 2184	
	fmul	 d4, d4, d0	// id: 2184, l: 2185	
	fmov	 d0, #3.000000000000000000e+00	// id: 2185, l: 2186	
	fadd	 d0, d4, d0	// id: 2186, l: 2187	
	fmul	 d3, d3, d0	// id: 2187, l: 2188	
	fmov	 d0, #1.000000000000000000e+00	// id: 2188, l: 2189	
	fadd	 d3, d3, d0	// id: 2189, l: 2190	
	ldr	 d0, [sp, #16]	// id: 2190, l: 2191	
	fsub	 d0, d3, d0	// id: 2191, l: 2192	
	fmul	 d0, d2, d0	// id: 2192, l: 2193	
	ldr	 w1, [sp, #60]	// id: 2193, l: 2194	
	mov	 w0, #0xf2be                	// #62142	// id: 2194, l: 2195	
	movk	 w0, #0xfffc, lsl #16	// id: 2195, l: 2196	
	add	 w0, w1, w0	// id: 2196, l: 2197	
	sxtw	 x0, w0	// id: 2197, l: 2198	
	lsl	 x0, x0, #3	// id: 2198, l: 2199	
	ldr	 x1, [sp]	// id: 2199, l: 2200	
	add	 x0, x1, x0	// id: 2200, l: 2201	
	fadd	 d0, d1, d0	// id: 2201, l: 2202	
	str	 d0, [x0]	// id: 2202, l: 2203	
.L40:	// id: 2203, l: 2204	
	ldr	 w0, [sp, #60]	// id: 2204, l: 2205	
	add	 w0, w0, #0x14	// id: 2205, l: 2206	
	str	 w0, [sp, #60]	// id: 2206, l: 2207	
.L38:	// id: 2207, l: 2208	
	ldr	 w1, [sp, #60]	// id: 2208, l: 2209	
	mov	 w0, #0xba7f                	// #47743	// id: 2209, l: 2210	
	movk	 w0, #0x18c, lsl #16	// id: 2210, l: 2211	
	cmp	 w1, w0	// id: 2211, l: 2212	
	ble	 .L42	// id: 2212, l: 2213	
	nop		// id: 2213, l: 2214	
	nop		// id: 2214, l: 2215	
	add	 sp, sp, #0x40	// id: 2215, l: 2216	
	.cfi_def_cfa_offset	0	// id: 2216, l: 2217	
	ret		// id: 2217, l: 2218	
	.cfi_endproc		// id: 2218, l: 2219	
.LFE9:	// id: 2219, l: 2220	
	.size	LBM_performStreamCollideBGK, .-LBM_performStreamCollideBGK	// id: 2220, l: 2221	
	.p2align	2, , 0	// id: 2221, l: 2222	
	.globl	LBM_performStreamCollideTRT	// id: 2222, l: 2223	
	.type	LBM_performStreamCollideTRT, %function	// id: 2223, l: 2224	
LBM_performStreamCollideTRT:	// id: 2224, l: 2225	
.LFB10:	// id: 2225, l: 2226	
	.cfi_startproc		// id: 2226, l: 2227	
	sub	 sp, sp, #0x2d0	// id: 2227, l: 2228	
	.cfi_def_cfa_offset	720	// id: 2228, l: 2229	
	str	 x0, [sp, #8]	// id: 2229, l: 2230	
	str	 x1, [sp]	// id: 2230, l: 2231	
	adrp	 x0, .LC7	// id: 2231, l: 2232	
	ldr	 d0, [x0,:lo12:.LC7]	// id: 2232, l: 2233	
	str	 d0, [sp, #680]	// id: 2233, l: 2234	
	str	 wzr, [sp, #716]	// id: 2234, l: 2235	
	b	 .L44	// id: 2235, l: 2236	
.L48:	// id: 2236, l: 2237	
	ldr	 w0, [sp, #716]	// id: 2237, l: 2238	
	add	 w0, w0, #0x13	// id: 2238, l: 2239	
	sxtw	 x0, w0	// id: 2239, l: 2240	
	lsl	 x0, x0, #3	// id: 2240, l: 2241	
	ldr	 x1, [sp, #8]	// id: 2241, l: 2242	
	add	 x0, x1, x0	// id: 2242, l: 2243	
	ldr	 w0, [x0]	// id: 2243, l: 2244	
	and	 w0, w0, #0x1	// id: 2244, l: 2245	
	cmp	 w0, #0x0	// id: 2245, l: 2246	
	beq	 .L45	// id: 2246, l: 2247	
	ldrsw	 x0, [sp, #716]	// id: 2247, l: 2248	
	lsl	 x0, x0, #3	// id: 2248, l: 2249	
	ldr	 x1, [sp, #8]	// id: 2249, l: 2250	
	add	 x1, x1, x0	// id: 2250, l: 2251	
	ldrsw	 x0, [sp, #716]	// id: 2251, l: 2252	
	lsl	 x0, x0, #3	// id: 2252, l: 2253	
	ldr	 x2, [sp]	// id: 2253, l: 2254	
	add	 x0, x2, x0	// id: 2254, l: 2255	
	ldr	 d0, [x1]	// id: 2255, l: 2256	
	str	 d0, [x0]	// id: 2256, l: 2257	
	ldr	 w0, [sp, #716]	// id: 2257, l: 2258	
	add	 w0, w0, #0x1	// id: 2258, l: 2259	
	sxtw	 x0, w0	// id: 2259, l: 2260	
	lsl	 x0, x0, #3	// id: 2260, l: 2261	
	ldr	 x1, [sp, #8]	// id: 2261, l: 2262	
	add	 x1, x1, x0	// id: 2262, l: 2263	
	ldr	 w0, [sp, #716]	// id: 2263, l: 2264	
	sub	 w0, w0, #0x7ce	// id: 2264, l: 2265	
	sxtw	 x0, w0	// id: 2265, l: 2266	
	lsl	 x0, x0, #3	// id: 2266, l: 2267	
	ldr	 x2, [sp]	// id: 2267, l: 2268	
	add	 x0, x2, x0	// id: 2268, l: 2269	
	ldr	 d0, [x1]	// id: 2269, l: 2270	
	str	 d0, [x0]	// id: 2270, l: 2271	
	ldr	 w0, [sp, #716]	// id: 2271, l: 2272	
	add	 w0, w0, #0x2	// id: 2272, l: 2273	
	sxtw	 x0, w0	// id: 2273, l: 2274	
	lsl	 x0, x0, #3	// id: 2274, l: 2275	
	ldr	 x1, [sp, #8]	// id: 2275, l: 2276	
	add	 x1, x1, x0	// id: 2276, l: 2277	
	ldr	 w0, [sp, #716]	// id: 2277, l: 2278	
	add	 w0, w0, #0x7d1	// id: 2278, l: 2279	
	sxtw	 x0, w0	// id: 2279, l: 2280	
	lsl	 x0, x0, #3	// id: 2280, l: 2281	
	ldr	 x2, [sp]	// id: 2281, l: 2282	
	add	 x0, x2, x0	// id: 2282, l: 2283	
	ldr	 d0, [x1]	// id: 2283, l: 2284	
	str	 d0, [x0]	// id: 2284, l: 2285	
	ldr	 w0, [sp, #716]	// id: 2285, l: 2286	
	add	 w0, w0, #0x3	// id: 2286, l: 2287	
	sxtw	 x0, w0	// id: 2287, l: 2288	
	lsl	 x0, x0, #3	// id: 2288, l: 2289	
	ldr	 x1, [sp, #8]	// id: 2289, l: 2290	
	add	 x1, x1, x0	// id: 2290, l: 2291	
	ldr	 w0, [sp, #716]	// id: 2291, l: 2292	
	sub	 w0, w0, #0x10	// id: 2292, l: 2293	
	sxtw	 x0, w0	// id: 2293, l: 2294	
	lsl	 x0, x0, #3	// id: 2294, l: 2295	
	ldr	 x2, [sp]	// id: 2295, l: 2296	
	add	 x0, x2, x0	// id: 2296, l: 2297	
	ldr	 d0, [x1]	// id: 2297, l: 2298	
	str	 d0, [x0]	// id: 2298, l: 2299	
	ldr	 w0, [sp, #716]	// id: 2299, l: 2300	
	add	 w0, w0, #0x4	// id: 2300, l: 2301	
	sxtw	 x0, w0	// id: 2301, l: 2302	
	lsl	 x0, x0, #3	// id: 2302, l: 2303	
	ldr	 x1, [sp, #8]	// id: 2303, l: 2304	
	add	 x1, x1, x0	// id: 2304, l: 2305	
	ldr	 w0, [sp, #716]	// id: 2305, l: 2306	
	add	 w0, w0, #0x17	// id: 2306, l: 2307	
	sxtw	 x0, w0	// id: 2307, l: 2308	
	lsl	 x0, x0, #3	// id: 2308, l: 2309	
	ldr	 x2, [sp]	// id: 2309, l: 2310	
	add	 x0, x2, x0	// id: 2310, l: 2311	
	ldr	 d0, [x1]	// id: 2311, l: 2312	
	str	 d0, [x0]	// id: 2312, l: 2313	
	ldr	 w0, [sp, #716]	// id: 2313, l: 2314	
	add	 w0, w0, #0x5	// id: 2314, l: 2315	
	sxtw	 x0, w0	// id: 2315, l: 2316	
	lsl	 x0, x0, #3	// id: 2316, l: 2317	
	ldr	 x1, [sp, #8]	// id: 2317, l: 2318	
	add	 x1, x1, x0	// id: 2318, l: 2319	
	ldr	 w2, [sp, #716]	// id: 2319, l: 2320	
	mov	 w0, #0xf2c6                	// #62150	// id: 2320, l: 2321	
	movk	 w0, #0xfffc, lsl #16	// id: 2321, l: 2322	
	add	 w0, w2, w0	// id: 2322, l: 2323	
	sxtw	 x0, w0	// id: 2323, l: 2324	
	lsl	 x0, x0, #3	// id: 2324, l: 2325	
	ldr	 x2, [sp]	// id: 2325, l: 2326	
	add	 x0, x2, x0	// id: 2326, l: 2327	
	ldr	 d0, [x1]	// id: 2327, l: 2328	
	str	 d0, [x0]	// id: 2328, l: 2329	
	ldr	 w0, [sp, #716]	// id: 2329, l: 2330	
	add	 w0, w0, #0x6	// id: 2330, l: 2331	
	sxtw	 x0, w0	// id: 2331, l: 2332	
	lsl	 x0, x0, #3	// id: 2332, l: 2333	
	ldr	 x1, [sp, #8]	// id: 2333, l: 2334	
	add	 x1, x1, x0	// id: 2334, l: 2335	
	ldr	 w2, [sp, #716]	// id: 2335, l: 2336	
	mov	 w0, #0xd45                 	// #3397	// id: 2336, l: 2337	
	movk	 w0, #0x3, lsl #16	// id: 2337, l: 2338	
	add	 w0, w2, w0	// id: 2338, l: 2339	
	sxtw	 x0, w0	// id: 2339, l: 2340	
	lsl	 x0, x0, #3	// id: 2340, l: 2341	
	ldr	 x2, [sp]	// id: 2341, l: 2342	
	add	 x0, x2, x0	// id: 2342, l: 2343	
	ldr	 d0, [x1]	// id: 2343, l: 2344	
	str	 d0, [x0]	// id: 2344, l: 2345	
	ldr	 w0, [sp, #716]	// id: 2345, l: 2346	
	add	 w0, w0, #0x7	// id: 2346, l: 2347	
	sxtw	 x0, w0	// id: 2347, l: 2348	
	lsl	 x0, x0, #3	// id: 2348, l: 2349	
	ldr	 x1, [sp, #8]	// id: 2349, l: 2350	
	add	 x1, x1, x0	// id: 2350, l: 2351	
	ldr	 w0, [sp, #716]	// id: 2351, l: 2352	
	sub	 w0, w0, #0x7da	// id: 2352, l: 2353	
	sxtw	 x0, w0	// id: 2353, l: 2354	
	lsl	 x0, x0, #3	// id: 2354, l: 2355	
	ldr	 x2, [sp]	// id: 2355, l: 2356	
	add	 x0, x2, x0	// id: 2356, l: 2357	
	ldr	 d0, [x1]	// id: 2357, l: 2358	
	str	 d0, [x0]	// id: 2358, l: 2359	
	ldr	 w0, [sp, #716]	// id: 2359, l: 2360	
	add	 w0, w0, #0x8	// id: 2360, l: 2361	
	sxtw	 x0, w0	// id: 2361, l: 2362	
	lsl	 x0, x0, #3	// id: 2362, l: 2363	
	ldr	 x1, [sp, #8]	// id: 2363, l: 2364	
	add	 x1, x1, x0	// id: 2364, l: 2365	
	ldr	 w0, [sp, #716]	// id: 2365, l: 2366	
	sub	 w0, w0, #0x7b3	// id: 2366, l: 2367	
	sxtw	 x0, w0	// id: 2367, l: 2368	
	lsl	 x0, x0, #3	// id: 2368, l: 2369	
	ldr	 x2, [sp]	// id: 2369, l: 2370	
	add	 x0, x2, x0	// id: 2370, l: 2371	
	ldr	 d0, [x1]	// id: 2371, l: 2372	
	str	 d0, [x0]	// id: 2372, l: 2373	
	ldr	 w0, [sp, #716]	// id: 2373, l: 2374	
	add	 w0, w0, #0x9	// id: 2374, l: 2375	
	sxtw	 x0, w0	// id: 2375, l: 2376	
	lsl	 x0, x0, #3	// id: 2376, l: 2377	
	ldr	 x1, [sp, #8]	// id: 2377, l: 2378	
	add	 x1, x1, x0	// id: 2378, l: 2379	
	ldr	 w0, [sp, #716]	// id: 2379, l: 2380	
	add	 w0, w0, #0x7c4	// id: 2380, l: 2381	
	sxtw	 x0, w0	// id: 2381, l: 2382	
	lsl	 x0, x0, #3	// id: 2382, l: 2383	
	ldr	 x2, [sp]	// id: 2383, l: 2384	
	add	 x0, x2, x0	// id: 2384, l: 2385	
	ldr	 d0, [x1]	// id: 2385, l: 2386	
	str	 d0, [x0]	// id: 2386, l: 2387	
	ldr	 w0, [sp, #716]	// id: 2387, l: 2388	
	add	 w0, w0, #0xa	// id: 2388, l: 2389	
	sxtw	 x0, w0	// id: 2389, l: 2390	
	lsl	 x0, x0, #3	// id: 2390, l: 2391	
	ldr	 x1, [sp, #8]	// id: 2391, l: 2392	
	add	 x1, x1, x0	// id: 2392, l: 2393	
	ldr	 w0, [sp, #716]	// id: 2393, l: 2394	
	add	 w0, w0, #0x7eb	// id: 2394, l: 2395	
	sxtw	 x0, w0	// id: 2395, l: 2396	
	lsl	 x0, x0, #3	// id: 2396, l: 2397	
	ldr	 x2, [sp]	// id: 2397, l: 2398	
	add	 x0, x2, x0	// id: 2398, l: 2399	
	ldr	 d0, [x1]	// id: 2399, l: 2400	
	str	 d0, [x0]	// id: 2400, l: 2401	
	ldr	 w0, [sp, #716]	// id: 2401, l: 2402	
	add	 w0, w0, #0xb	// id: 2402, l: 2403	
	sxtw	 x0, w0	// id: 2403, l: 2404	
	lsl	 x0, x0, #3	// id: 2404, l: 2405	
	ldr	 x1, [sp, #8]	// id: 2405, l: 2406	
	add	 x1, x1, x0	// id: 2406, l: 2407	
	ldr	 w2, [sp, #716]	// id: 2407, l: 2408	
	mov	 w0, #0xeafe                	// #60158	// id: 2408, l: 2409	
	movk	 w0, #0xfffc, lsl #16	// id: 2409, l: 2410	
	add	 w0, w2, w0	// id: 2410, l: 2411	
	sxtw	 x0, w0	// id: 2411, l: 2412	
	lsl	 x0, x0, #3	// id: 2412, l: 2413	
	ldr	 x2, [sp]	// id: 2413, l: 2414	
	add	 x0, x2, x0	// id: 2414, l: 2415	
	ldr	 d0, [x1]	// id: 2415, l: 2416	
	str	 d0, [x0]	// id: 2416, l: 2417	
	ldr	 w0, [sp, #716]	// id: 2417, l: 2418	
	add	 w0, w0, #0xc	// id: 2418, l: 2419	
	sxtw	 x0, w0	// id: 2419, l: 2420	
	lsl	 x0, x0, #3	// id: 2420, l: 2421	
	ldr	 x1, [sp, #8]	// id: 2421, l: 2422	
	add	 x1, x1, x0	// id: 2422, l: 2423	
	ldr	 w2, [sp, #716]	// id: 2423, l: 2424	
	mov	 w0, #0x57d                 	// #1405	// id: 2424, l: 2425	
	movk	 w0, #0x3, lsl #16	// id: 2425, l: 2426	
	add	 w0, w2, w0	// id: 2426, l: 2427	
	sxtw	 x0, w0	// id: 2427, l: 2428	
	lsl	 x0, x0, #3	// id: 2428, l: 2429	
	ldr	 x2, [sp]	// id: 2429, l: 2430	
	add	 x0, x2, x0	// id: 2430, l: 2431	
	ldr	 d0, [x1]	// id: 2431, l: 2432	
	str	 d0, [x0]	// id: 2432, l: 2433	
	ldr	 w0, [sp, #716]	// id: 2433, l: 2434	
	add	 w0, w0, #0xd	// id: 2434, l: 2435	
	sxtw	 x0, w0	// id: 2435, l: 2436	
	lsl	 x0, x0, #3	// id: 2436, l: 2437	
	ldr	 x1, [sp, #8]	// id: 2437, l: 2438	
	add	 x1, x1, x0	// id: 2438, l: 2439	
	ldr	 w2, [sp, #716]	// id: 2439, l: 2440	
	mov	 w0, #0xfa9c                	// #64156	// id: 2440, l: 2441	
	movk	 w0, #0xfffc, lsl #16	// id: 2441, l: 2442	
	add	 w0, w2, w0	// id: 2442, l: 2443	
	sxtw	 x0, w0	// id: 2443, l: 2444	
	lsl	 x0, x0, #3	// id: 2444, l: 2445	
	ldr	 x2, [sp]	// id: 2445, l: 2446	
	add	 x0, x2, x0	// id: 2446, l: 2447	
	ldr	 d0, [x1]	// id: 2447, l: 2448	
	str	 d0, [x0]	// id: 2448, l: 2449	
	ldr	 w0, [sp, #716]	// id: 2449, l: 2450	
	add	 w0, w0, #0xe	// id: 2450, l: 2451	
	sxtw	 x0, w0	// id: 2451, l: 2452	
	lsl	 x0, x0, #3	// id: 2452, l: 2453	
	ldr	 x1, [sp, #8]	// id: 2453, l: 2454	
	add	 x1, x1, x0	// id: 2454, l: 2455	
	ldr	 w2, [sp, #716]	// id: 2455, l: 2456	
	mov	 w0, #0x151b                	// #5403	// id: 2456, l: 2457	
	movk	 w0, #0x3, lsl #16	// id: 2457, l: 2458	
	add	 w0, w2, w0	// id: 2458, l: 2459	
	sxtw	 x0, w0	// id: 2459, l: 2460	
	lsl	 x0, x0, #3	// id: 2460, l: 2461	
	ldr	 x2, [sp]	// id: 2461, l: 2462	
	add	 x0, x2, x0	// id: 2462, l: 2463	
	ldr	 d0, [x1]	// id: 2463, l: 2464	
	str	 d0, [x0]	// id: 2464, l: 2465	
	ldr	 w0, [sp, #716]	// id: 2465, l: 2466	
	add	 w0, w0, #0xf	// id: 2466, l: 2467	
	sxtw	 x0, w0	// id: 2467, l: 2468	
	lsl	 x0, x0, #3	// id: 2468, l: 2469	
	ldr	 x1, [sp, #8]	// id: 2469, l: 2470	
	add	 x1, x1, x0	// id: 2470, l: 2471	
	ldr	 w2, [sp, #716]	// id: 2471, l: 2472	
	mov	 w0, #0xf2be                	// #62142	// id: 2472, l: 2473	
	movk	 w0, #0xfffc, lsl #16	// id: 2473, l: 2474	
	add	 w0, w2, w0	// id: 2474, l: 2475	
	sxtw	 x0, w0	// id: 2475, l: 2476	
	lsl	 x0, x0, #3	// id: 2476, l: 2477	
	ldr	 x2, [sp]	// id: 2477, l: 2478	
	add	 x0, x2, x0	// id: 2478, l: 2479	
	ldr	 d0, [x1]	// id: 2479, l: 2480	
	str	 d0, [x0]	// id: 2480, l: 2481	
	ldr	 w0, [sp, #716]	// id: 2481, l: 2482	
	add	 w0, w0, #0x10	// id: 2482, l: 2483	
	sxtw	 x0, w0	// id: 2483, l: 2484	
	lsl	 x0, x0, #3	// id: 2484, l: 2485	
	ldr	 x1, [sp, #8]	// id: 2485, l: 2486	
	add	 x1, x1, x0	// id: 2486, l: 2487	
	ldr	 w2, [sp, #716]	// id: 2487, l: 2488	
	mov	 w0, #0xd3d                 	// #3389	// id: 2488, l: 2489	
	movk	 w0, #0x3, lsl #16	// id: 2489, l: 2490	
	add	 w0, w2, w0	// id: 2490, l: 2491	
	sxtw	 x0, w0	// id: 2491, l: 2492	
	lsl	 x0, x0, #3	// id: 2492, l: 2493	
	ldr	 x2, [sp]	// id: 2493, l: 2494	
	add	 x0, x2, x0	// id: 2494, l: 2495	
	ldr	 d0, [x1]	// id: 2495, l: 2496	
	str	 d0, [x0]	// id: 2496, l: 2497	
	ldr	 w0, [sp, #716]	// id: 2497, l: 2498	
	add	 w0, w0, #0x11	// id: 2498, l: 2499	
	sxtw	 x0, w0	// id: 2499, l: 2500	
	lsl	 x0, x0, #3	// id: 2500, l: 2501	
	ldr	 x1, [sp, #8]	// id: 2501, l: 2502	
	add	 x1, x1, x0	// id: 2502, l: 2503	
	ldr	 w2, [sp, #716]	// id: 2503, l: 2504	
	mov	 w0, #0xf2e4                	// #62180	// id: 2504, l: 2505	
	movk	 w0, #0xfffc, lsl #16	// id: 2505, l: 2506	
	add	 w0, w2, w0	// id: 2506, l: 2507	
	sxtw	 x0, w0	// id: 2507, l: 2508	
	lsl	 x0, x0, #3	// id: 2508, l: 2509	
	ldr	 x2, [sp]	// id: 2509, l: 2510	
	add	 x0, x2, x0	// id: 2510, l: 2511	
	ldr	 d0, [x1]	// id: 2511, l: 2512	
	str	 d0, [x0]	// id: 2512, l: 2513	
	ldr	 w0, [sp, #716]	// id: 2513, l: 2514	
	add	 w0, w0, #0x12	// id: 2514, l: 2515	
	sxtw	 x0, w0	// id: 2515, l: 2516	
	lsl	 x0, x0, #3	// id: 2516, l: 2517	
	ldr	 x1, [sp, #8]	// id: 2517, l: 2518	
	add	 x1, x1, x0	// id: 2518, l: 2519	
	ldr	 w2, [sp, #716]	// id: 2519, l: 2520	
	mov	 w0, #0xd63                 	// #3427	// id: 2520, l: 2521	
	movk	 w0, #0x3, lsl #16	// id: 2521, l: 2522	
	add	 w0, w2, w0	// id: 2522, l: 2523	
	sxtw	 x0, w0	// id: 2523, l: 2524	
	lsl	 x0, x0, #3	// id: 2524, l: 2525	
	ldr	 x2, [sp]	// id: 2525, l: 2526	
	add	 x0, x2, x0	// id: 2526, l: 2527	
	ldr	 d0, [x1]	// id: 2527, l: 2528	
	str	 d0, [x0]	// id: 2528, l: 2529	
	b	 .L46	// id: 2529, l: 2530	
.L45:	// id: 2530, l: 2531	
	ldrsw	 x0, [sp, #716]	// id: 2531, l: 2532	
	lsl	 x0, x0, #3	// id: 2532, l: 2533	
	ldr	 x1, [sp, #8]	// id: 2533, l: 2534	
	add	 x0, x1, x0	// id: 2534, l: 2535	
	ldr	 d1, [x0]	// id: 2535, l: 2536	
	ldr	 w0, [sp, #716]	// id: 2536, l: 2537	
	add	 w0, w0, #0x1	// id: 2537, l: 2538	
	sxtw	 x0, w0	// id: 2538, l: 2539	
	lsl	 x0, x0, #3	// id: 2539, l: 2540	
	ldr	 x1, [sp, #8]	// id: 2540, l: 2541	
	add	 x0, x1, x0	// id: 2541, l: 2542	
	ldr	 d0, [x0]	// id: 2542, l: 2543	
	fadd	 d1, d1, d0	// id: 2543, l: 2544	
	ldr	 w0, [sp, #716]	// id: 2544, l: 2545	
	add	 w0, w0, #0x2	// id: 2545, l: 2546	
	sxtw	 x0, w0	// id: 2546, l: 2547	
	lsl	 x0, x0, #3	// id: 2547, l: 2548	
	ldr	 x1, [sp, #8]	// id: 2548, l: 2549	
	add	 x0, x1, x0	// id: 2549, l: 2550	
	ldr	 d0, [x0]	// id: 2550, l: 2551	
	fadd	 d1, d1, d0	// id: 2551, l: 2552	
	ldr	 w0, [sp, #716]	// id: 2552, l: 2553	
	add	 w0, w0, #0x3	// id: 2553, l: 2554	
	sxtw	 x0, w0	// id: 2554, l: 2555	
	lsl	 x0, x0, #3	// id: 2555, l: 2556	
	ldr	 x1, [sp, #8]	// id: 2556, l: 2557	
	add	 x0, x1, x0	// id: 2557, l: 2558	
	ldr	 d0, [x0]	// id: 2558, l: 2559	
	fadd	 d1, d1, d0	// id: 2559, l: 2560	
	ldr	 w0, [sp, #716]	// id: 2560, l: 2561	
	add	 w0, w0, #0x4	// id: 2561, l: 2562	
	sxtw	 x0, w0	// id: 2562, l: 2563	
	lsl	 x0, x0, #3	// id: 2563, l: 2564	
	ldr	 x1, [sp, #8]	// id: 2564, l: 2565	
	add	 x0, x1, x0	// id: 2565, l: 2566	
	ldr	 d0, [x0]	// id: 2566, l: 2567	
	fadd	 d1, d1, d0	// id: 2567, l: 2568	
	ldr	 w0, [sp, #716]	// id: 2568, l: 2569	
	add	 w0, w0, #0x5	// id: 2569, l: 2570	
	sxtw	 x0, w0	// id: 2570, l: 2571	
	lsl	 x0, x0, #3	// id: 2571, l: 2572	
	ldr	 x1, [sp, #8]	// id: 2572, l: 2573	
	add	 x0, x1, x0	// id: 2573, l: 2574	
	ldr	 d0, [x0]	// id: 2574, l: 2575	
	fadd	 d1, d1, d0	// id: 2575, l: 2576	
	ldr	 w0, [sp, #716]	// id: 2576, l: 2577	
	add	 w0, w0, #0x6	// id: 2577, l: 2578	
	sxtw	 x0, w0	// id: 2578, l: 2579	
	lsl	 x0, x0, #3	// id: 2579, l: 2580	
	ldr	 x1, [sp, #8]	// id: 2580, l: 2581	
	add	 x0, x1, x0	// id: 2581, l: 2582	
	ldr	 d0, [x0]	// id: 2582, l: 2583	
	fadd	 d1, d1, d0	// id: 2583, l: 2584	
	ldr	 w0, [sp, #716]	// id: 2584, l: 2585	
	add	 w0, w0, #0x7	// id: 2585, l: 2586	
	sxtw	 x0, w0	// id: 2586, l: 2587	
	lsl	 x0, x0, #3	// id: 2587, l: 2588	
	ldr	 x1, [sp, #8]	// id: 2588, l: 2589	
	add	 x0, x1, x0	// id: 2589, l: 2590	
	ldr	 d0, [x0]	// id: 2590, l: 2591	
	fadd	 d1, d1, d0	// id: 2591, l: 2592	
	ldr	 w0, [sp, #716]	// id: 2592, l: 2593	
	add	 w0, w0, #0x8	// id: 2593, l: 2594	
	sxtw	 x0, w0	// id: 2594, l: 2595	
	lsl	 x0, x0, #3	// id: 2595, l: 2596	
	ldr	 x1, [sp, #8]	// id: 2596, l: 2597	
	add	 x0, x1, x0	// id: 2597, l: 2598	
	ldr	 d0, [x0]	// id: 2598, l: 2599	
	fadd	 d1, d1, d0	// id: 2599, l: 2600	
	ldr	 w0, [sp, #716]	// id: 2600, l: 2601	
	add	 w0, w0, #0x9	// id: 2601, l: 2602	
	sxtw	 x0, w0	// id: 2602, l: 2603	
	lsl	 x0, x0, #3	// id: 2603, l: 2604	
	ldr	 x1, [sp, #8]	// id: 2604, l: 2605	
	add	 x0, x1, x0	// id: 2605, l: 2606	
	ldr	 d0, [x0]	// id: 2606, l: 2607	
	fadd	 d1, d1, d0	// id: 2607, l: 2608	
	ldr	 w0, [sp, #716]	// id: 2608, l: 2609	
	add	 w0, w0, #0xa	// id: 2609, l: 2610	
	sxtw	 x0, w0	// id: 2610, l: 2611	
	lsl	 x0, x0, #3	// id: 2611, l: 2612	
	ldr	 x1, [sp, #8]	// id: 2612, l: 2613	
	add	 x0, x1, x0	// id: 2613, l: 2614	
	ldr	 d0, [x0]	// id: 2614, l: 2615	
	fadd	 d1, d1, d0	// id: 2615, l: 2616	
	ldr	 w0, [sp, #716]	// id: 2616, l: 2617	
	add	 w0, w0, #0xb	// id: 2617, l: 2618	
	sxtw	 x0, w0	// id: 2618, l: 2619	
	lsl	 x0, x0, #3	// id: 2619, l: 2620	
	ldr	 x1, [sp, #8]	// id: 2620, l: 2621	
	add	 x0, x1, x0	// id: 2621, l: 2622	
	ldr	 d0, [x0]	// id: 2622, l: 2623	
	fadd	 d1, d1, d0	// id: 2623, l: 2624	
	ldr	 w0, [sp, #716]	// id: 2624, l: 2625	
	add	 w0, w0, #0xc	// id: 2625, l: 2626	
	sxtw	 x0, w0	// id: 2626, l: 2627	
	lsl	 x0, x0, #3	// id: 2627, l: 2628	
	ldr	 x1, [sp, #8]	// id: 2628, l: 2629	
	add	 x0, x1, x0	// id: 2629, l: 2630	
	ldr	 d0, [x0]	// id: 2630, l: 2631	
	fadd	 d1, d1, d0	// id: 2631, l: 2632	
	ldr	 w0, [sp, #716]	// id: 2632, l: 2633	
	add	 w0, w0, #0xd	// id: 2633, l: 2634	
	sxtw	 x0, w0	// id: 2634, l: 2635	
	lsl	 x0, x0, #3	// id: 2635, l: 2636	
	ldr	 x1, [sp, #8]	// id: 2636, l: 2637	
	add	 x0, x1, x0	// id: 2637, l: 2638	
	ldr	 d0, [x0]	// id: 2638, l: 2639	
	fadd	 d1, d1, d0	// id: 2639, l: 2640	
	ldr	 w0, [sp, #716]	// id: 2640, l: 2641	
	add	 w0, w0, #0xe	// id: 2641, l: 2642	
	sxtw	 x0, w0	// id: 2642, l: 2643	
	lsl	 x0, x0, #3	// id: 2643, l: 2644	
	ldr	 x1, [sp, #8]	// id: 2644, l: 2645	
	add	 x0, x1, x0	// id: 2645, l: 2646	
	ldr	 d0, [x0]	// id: 2646, l: 2647	
	fadd	 d1, d1, d0	// id: 2647, l: 2648	
	ldr	 w0, [sp, #716]	// id: 2648, l: 2649	
	add	 w0, w0, #0xf	// id: 2649, l: 2650	
	sxtw	 x0, w0	// id: 2650, l: 2651	
	lsl	 x0, x0, #3	// id: 2651, l: 2652	
	ldr	 x1, [sp, #8]	// id: 2652, l: 2653	
	add	 x0, x1, x0	// id: 2653, l: 2654	
	ldr	 d0, [x0]	// id: 2654, l: 2655	
	fadd	 d1, d1, d0	// id: 2655, l: 2656	
	ldr	 w0, [sp, #716]	// id: 2656, l: 2657	
	add	 w0, w0, #0x10	// id: 2657, l: 2658	
	sxtw	 x0, w0	// id: 2658, l: 2659	
	lsl	 x0, x0, #3	// id: 2659, l: 2660	
	ldr	 x1, [sp, #8]	// id: 2660, l: 2661	
	add	 x0, x1, x0	// id: 2661, l: 2662	
	ldr	 d0, [x0]	// id: 2662, l: 2663	
	fadd	 d1, d1, d0	// id: 2663, l: 2664	
	ldr	 w0, [sp, #716]	// id: 2664, l: 2665	
	add	 w0, w0, #0x11	// id: 2665, l: 2666	
	sxtw	 x0, w0	// id: 2666, l: 2667	
	lsl	 x0, x0, #3	// id: 2667, l: 2668	
	ldr	 x1, [sp, #8]	// id: 2668, l: 2669	
	add	 x0, x1, x0	// id: 2669, l: 2670	
	ldr	 d0, [x0]	// id: 2670, l: 2671	
	fadd	 d1, d1, d0	// id: 2671, l: 2672	
	ldr	 w0, [sp, #716]	// id: 2672, l: 2673	
	add	 w0, w0, #0x12	// id: 2673, l: 2674	
	sxtw	 x0, w0	// id: 2674, l: 2675	
	lsl	 x0, x0, #3	// id: 2675, l: 2676	
	ldr	 x1, [sp, #8]	// id: 2676, l: 2677	
	add	 x0, x1, x0	// id: 2677, l: 2678	
	ldr	 d0, [x0]	// id: 2678, l: 2679	
	fadd	 d0, d1, d0	// id: 2679, l: 2680	
	str	 d0, [sp, #672]	// id: 2680, l: 2681	
	ldr	 w0, [sp, #716]	// id: 2681, l: 2682	
	add	 w0, w0, #0x3	// id: 2682, l: 2683	
	sxtw	 x0, w0	// id: 2683, l: 2684	
	lsl	 x0, x0, #3	// id: 2684, l: 2685	
	ldr	 x1, [sp, #8]	// id: 2685, l: 2686	
	add	 x0, x1, x0	// id: 2686, l: 2687	
	ldr	 d1, [x0]	// id: 2687, l: 2688	
	ldr	 w0, [sp, #716]	// id: 2688, l: 2689	
	add	 w0, w0, #0x4	// id: 2689, l: 2690	
	sxtw	 x0, w0	// id: 2690, l: 2691	
	lsl	 x0, x0, #3	// id: 2691, l: 2692	
	ldr	 x1, [sp, #8]	// id: 2692, l: 2693	
	add	 x0, x1, x0	// id: 2693, l: 2694	
	ldr	 d0, [x0]	// id: 2694, l: 2695	
	fsub	 d1, d1, d0	// id: 2695, l: 2696	
	ldr	 w0, [sp, #716]	// id: 2696, l: 2697	
	add	 w0, w0, #0x7	// id: 2697, l: 2698	
	sxtw	 x0, w0	// id: 2698, l: 2699	
	lsl	 x0, x0, #3	// id: 2699, l: 2700	
	ldr	 x1, [sp, #8]	// id: 2700, l: 2701	
	add	 x0, x1, x0	// id: 2701, l: 2702	
	ldr	 d0, [x0]	// id: 2702, l: 2703	
	fadd	 d1, d1, d0	// id: 2703, l: 2704	
	ldr	 w0, [sp, #716]	// id: 2704, l: 2705	
	add	 w0, w0, #0x8	// id: 2705, l: 2706	
	sxtw	 x0, w0	// id: 2706, l: 2707	
	lsl	 x0, x0, #3	// id: 2707, l: 2708	
	ldr	 x1, [sp, #8]	// id: 2708, l: 2709	
	add	 x0, x1, x0	// id: 2709, l: 2710	
	ldr	 d0, [x0]	// id: 2710, l: 2711	
	fsub	 d1, d1, d0	// id: 2711, l: 2712	
	ldr	 w0, [sp, #716]	// id: 2712, l: 2713	
	add	 w0, w0, #0x9	// id: 2713, l: 2714	
	sxtw	 x0, w0	// id: 2714, l: 2715	
	lsl	 x0, x0, #3	// id: 2715, l: 2716	
	ldr	 x1, [sp, #8]	// id: 2716, l: 2717	
	add	 x0, x1, x0	// id: 2717, l: 2718	
	ldr	 d0, [x0]	// id: 2718, l: 2719	
	fadd	 d1, d1, d0	// id: 2719, l: 2720	
	ldr	 w0, [sp, #716]	// id: 2720, l: 2721	
	add	 w0, w0, #0xa	// id: 2721, l: 2722	
	sxtw	 x0, w0	// id: 2722, l: 2723	
	lsl	 x0, x0, #3	// id: 2723, l: 2724	
	ldr	 x1, [sp, #8]	// id: 2724, l: 2725	
	add	 x0, x1, x0	// id: 2725, l: 2726	
	ldr	 d0, [x0]	// id: 2726, l: 2727	
	fsub	 d1, d1, d0	// id: 2727, l: 2728	
	ldr	 w0, [sp, #716]	// id: 2728, l: 2729	
	add	 w0, w0, #0xf	// id: 2729, l: 2730	
	sxtw	 x0, w0	// id: 2730, l: 2731	
	lsl	 x0, x0, #3	// id: 2731, l: 2732	
	ldr	 x1, [sp, #8]	// id: 2732, l: 2733	
	add	 x0, x1, x0	// id: 2733, l: 2734	
	ldr	 d0, [x0]	// id: 2734, l: 2735	
	fadd	 d1, d1, d0	// id: 2735, l: 2736	
	ldr	 w0, [sp, #716]	// id: 2736, l: 2737	
	add	 w0, w0, #0x10	// id: 2737, l: 2738	
	sxtw	 x0, w0	// id: 2738, l: 2739	
	lsl	 x0, x0, #3	// id: 2739, l: 2740	
	ldr	 x1, [sp, #8]	// id: 2740, l: 2741	
	add	 x0, x1, x0	// id: 2741, l: 2742	
	ldr	 d0, [x0]	// id: 2742, l: 2743	
	fadd	 d1, d1, d0	// id: 2743, l: 2744	
	ldr	 w0, [sp, #716]	// id: 2744, l: 2745	
	add	 w0, w0, #0x11	// id: 2745, l: 2746	
	sxtw	 x0, w0	// id: 2746, l: 2747	
	lsl	 x0, x0, #3	// id: 2747, l: 2748	
	ldr	 x1, [sp, #8]	// id: 2748, l: 2749	
	add	 x0, x1, x0	// id: 2749, l: 2750	
	ldr	 d0, [x0]	// id: 2750, l: 2751	
	fsub	 d1, d1, d0	// id: 2751, l: 2752	
	ldr	 w0, [sp, #716]	// id: 2752, l: 2753	
	add	 w0, w0, #0x12	// id: 2753, l: 2754	
	sxtw	 x0, w0	// id: 2754, l: 2755	
	lsl	 x0, x0, #3	// id: 2755, l: 2756	
	ldr	 x1, [sp, #8]	// id: 2756, l: 2757	
	add	 x0, x1, x0	// id: 2757, l: 2758	
	ldr	 d0, [x0]	// id: 2758, l: 2759	
	fsub	 d0, d1, d0	// id: 2759, l: 2760	
	str	 d0, [sp, #704]	// id: 2760, l: 2761	
	ldr	 w0, [sp, #716]	// id: 2761, l: 2762	
	add	 w0, w0, #0x1	// id: 2762, l: 2763	
	sxtw	 x0, w0	// id: 2763, l: 2764	
	lsl	 x0, x0, #3	// id: 2764, l: 2765	
	ldr	 x1, [sp, #8]	// id: 2765, l: 2766	
	add	 x0, x1, x0	// id: 2766, l: 2767	
	ldr	 d1, [x0]	// id: 2767, l: 2768	
	ldr	 w0, [sp, #716]	// id: 2768, l: 2769	
	add	 w0, w0, #0x2	// id: 2769, l: 2770	
	sxtw	 x0, w0	// id: 2770, l: 2771	
	lsl	 x0, x0, #3	// id: 2771, l: 2772	
	ldr	 x1, [sp, #8]	// id: 2772, l: 2773	
	add	 x0, x1, x0	// id: 2773, l: 2774	
	ldr	 d0, [x0]	// id: 2774, l: 2775	
	fsub	 d1, d1, d0	// id: 2775, l: 2776	
	ldr	 w0, [sp, #716]	// id: 2776, l: 2777	
	add	 w0, w0, #0x7	// id: 2777, l: 2778	
	sxtw	 x0, w0	// id: 2778, l: 2779	
	lsl	 x0, x0, #3	// id: 2779, l: 2780	
	ldr	 x1, [sp, #8]	// id: 2780, l: 2781	
	add	 x0, x1, x0	// id: 2781, l: 2782	
	ldr	 d0, [x0]	// id: 2782, l: 2783	
	fadd	 d1, d1, d0	// id: 2783, l: 2784	
	ldr	 w0, [sp, #716]	// id: 2784, l: 2785	
	add	 w0, w0, #0x8	// id: 2785, l: 2786	
	sxtw	 x0, w0	// id: 2786, l: 2787	
	lsl	 x0, x0, #3	// id: 2787, l: 2788	
	ldr	 x1, [sp, #8]	// id: 2788, l: 2789	
	add	 x0, x1, x0	// id: 2789, l: 2790	
	ldr	 d0, [x0]	// id: 2790, l: 2791	
	fadd	 d1, d1, d0	// id: 2791, l: 2792	
	ldr	 w0, [sp, #716]	// id: 2792, l: 2793	
	add	 w0, w0, #0x9	// id: 2793, l: 2794	
	sxtw	 x0, w0	// id: 2794, l: 2795	
	lsl	 x0, x0, #3	// id: 2795, l: 2796	
	ldr	 x1, [sp, #8]	// id: 2796, l: 2797	
	add	 x0, x1, x0	// id: 2797, l: 2798	
	ldr	 d0, [x0]	// id: 2798, l: 2799	
	fsub	 d1, d1, d0	// id: 2799, l: 2800	
	ldr	 w0, [sp, #716]	// id: 2800, l: 2801	
	add	 w0, w0, #0xa	// id: 2801, l: 2802	
	sxtw	 x0, w0	// id: 2802, l: 2803	
	lsl	 x0, x0, #3	// id: 2803, l: 2804	
	ldr	 x1, [sp, #8]	// id: 2804, l: 2805	
	add	 x0, x1, x0	// id: 2805, l: 2806	
	ldr	 d0, [x0]	// id: 2806, l: 2807	
	fsub	 d1, d1, d0	// id: 2807, l: 2808	
	ldr	 w0, [sp, #716]	// id: 2808, l: 2809	
	add	 w0, w0, #0xb	// id: 2809, l: 2810	
	sxtw	 x0, w0	// id: 2810, l: 2811	
	lsl	 x0, x0, #3	// id: 2811, l: 2812	
	ldr	 x1, [sp, #8]	// id: 2812, l: 2813	
	add	 x0, x1, x0	// id: 2813, l: 2814	
	ldr	 d0, [x0]	// id: 2814, l: 2815	
	fadd	 d1, d1, d0	// id: 2815, l: 2816	
	ldr	 w0, [sp, #716]	// id: 2816, l: 2817	
	add	 w0, w0, #0xc	// id: 2817, l: 2818	
	sxtw	 x0, w0	// id: 2818, l: 2819	
	lsl	 x0, x0, #3	// id: 2819, l: 2820	
	ldr	 x1, [sp, #8]	// id: 2820, l: 2821	
	add	 x0, x1, x0	// id: 2821, l: 2822	
	ldr	 d0, [x0]	// id: 2822, l: 2823	
	fadd	 d1, d1, d0	// id: 2823, l: 2824	
	ldr	 w0, [sp, #716]	// id: 2824, l: 2825	
	add	 w0, w0, #0xd	// id: 2825, l: 2826	
	sxtw	 x0, w0	// id: 2826, l: 2827	
	lsl	 x0, x0, #3	// id: 2827, l: 2828	
	ldr	 x1, [sp, #8]	// id: 2828, l: 2829	
	add	 x0, x1, x0	// id: 2829, l: 2830	
	ldr	 d0, [x0]	// id: 2830, l: 2831	
	fsub	 d1, d1, d0	// id: 2831, l: 2832	
	ldr	 w0, [sp, #716]	// id: 2832, l: 2833	
	add	 w0, w0, #0xe	// id: 2833, l: 2834	
	sxtw	 x0, w0	// id: 2834, l: 2835	
	lsl	 x0, x0, #3	// id: 2835, l: 2836	
	ldr	 x1, [sp, #8]	// id: 2836, l: 2837	
	add	 x0, x1, x0	// id: 2837, l: 2838	
	ldr	 d0, [x0]	// id: 2838, l: 2839	
	fsub	 d0, d1, d0	// id: 2839, l: 2840	
	str	 d0, [sp, #696]	// id: 2840, l: 2841	
	ldr	 w0, [sp, #716]	// id: 2841, l: 2842	
	add	 w0, w0, #0x5	// id: 2842, l: 2843	
	sxtw	 x0, w0	// id: 2843, l: 2844	
	lsl	 x0, x0, #3	// id: 2844, l: 2845	
	ldr	 x1, [sp, #8]	// id: 2845, l: 2846	
	add	 x0, x1, x0	// id: 2846, l: 2847	
	ldr	 d1, [x0]	// id: 2847, l: 2848	
	ldr	 w0, [sp, #716]	// id: 2848, l: 2849	
	add	 w0, w0, #0x6	// id: 2849, l: 2850	
	sxtw	 x0, w0	// id: 2850, l: 2851	
	lsl	 x0, x0, #3	// id: 2851, l: 2852	
	ldr	 x1, [sp, #8]	// id: 2852, l: 2853	
	add	 x0, x1, x0	// id: 2853, l: 2854	
	ldr	 d0, [x0]	// id: 2854, l: 2855	
	fsub	 d1, d1, d0	// id: 2855, l: 2856	
	ldr	 w0, [sp, #716]	// id: 2856, l: 2857	
	add	 w0, w0, #0xb	// id: 2857, l: 2858	
	sxtw	 x0, w0	// id: 2858, l: 2859	
	lsl	 x0, x0, #3	// id: 2859, l: 2860	
	ldr	 x1, [sp, #8]	// id: 2860, l: 2861	
	add	 x0, x1, x0	// id: 2861, l: 2862	
	ldr	 d0, [x0]	// id: 2862, l: 2863	
	fadd	 d1, d1, d0	// id: 2863, l: 2864	
	ldr	 w0, [sp, #716]	// id: 2864, l: 2865	
	add	 w0, w0, #0xc	// id: 2865, l: 2866	
	sxtw	 x0, w0	// id: 2866, l: 2867	
	lsl	 x0, x0, #3	// id: 2867, l: 2868	
	ldr	 x1, [sp, #8]	// id: 2868, l: 2869	
	add	 x0, x1, x0	// id: 2869, l: 2870	
	ldr	 d0, [x0]	// id: 2870, l: 2871	
	fsub	 d1, d1, d0	// id: 2871, l: 2872	
	ldr	 w0, [sp, #716]	// id: 2872, l: 2873	
	add	 w0, w0, #0xd	// id: 2873, l: 2874	
	sxtw	 x0, w0	// id: 2874, l: 2875	
	lsl	 x0, x0, #3	// id: 2875, l: 2876	
	ldr	 x1, [sp, #8]	// id: 2876, l: 2877	
	add	 x0, x1, x0	// id: 2877, l: 2878	
	ldr	 d0, [x0]	// id: 2878, l: 2879	
	fadd	 d1, d1, d0	// id: 2879, l: 2880	
	ldr	 w0, [sp, #716]	// id: 2880, l: 2881	
	add	 w0, w0, #0xe	// id: 2881, l: 2882	
	sxtw	 x0, w0	// id: 2882, l: 2883	
	lsl	 x0, x0, #3	// id: 2883, l: 2884	
	ldr	 x1, [sp, #8]	// id: 2884, l: 2885	
	add	 x0, x1, x0	// id: 2885, l: 2886	
	ldr	 d0, [x0]	// id: 2886, l: 2887	
	fsub	 d1, d1, d0	// id: 2887, l: 2888	
	ldr	 w0, [sp, #716]	// id: 2888, l: 2889	
	add	 w0, w0, #0xf	// id: 2889, l: 2890	
	sxtw	 x0, w0	// id: 2890, l: 2891	
	lsl	 x0, x0, #3	// id: 2891, l: 2892	
	ldr	 x1, [sp, #8]	// id: 2892, l: 2893	
	add	 x0, x1, x0	// id: 2893, l: 2894	
	ldr	 d0, [x0]	// id: 2894, l: 2895	
	fadd	 d1, d1, d0	// id: 2895, l: 2896	
	ldr	 w0, [sp, #716]	// id: 2896, l: 2897	
	add	 w0, w0, #0x10	// id: 2897, l: 2898	
	sxtw	 x0, w0	// id: 2898, l: 2899	
	lsl	 x0, x0, #3	// id: 2899, l: 2900	
	ldr	 x1, [sp, #8]	// id: 2900, l: 2901	
	add	 x0, x1, x0	// id: 2901, l: 2902	
	ldr	 d0, [x0]	// id: 2902, l: 2903	
	fsub	 d1, d1, d0	// id: 2903, l: 2904	
	ldr	 w0, [sp, #716]	// id: 2904, l: 2905	
	add	 w0, w0, #0x11	// id: 2905, l: 2906	
	sxtw	 x0, w0	// id: 2906, l: 2907	
	lsl	 x0, x0, #3	// id: 2907, l: 2908	
	ldr	 x1, [sp, #8]	// id: 2908, l: 2909	
	add	 x0, x1, x0	// id: 2909, l: 2910	
	ldr	 d0, [x0]	// id: 2910, l: 2911	
	fadd	 d1, d1, d0	// id: 2911, l: 2912	
	ldr	 w0, [sp, #716]	// id: 2912, l: 2913	
	add	 w0, w0, #0x12	// id: 2913, l: 2914	
	sxtw	 x0, w0	// id: 2914, l: 2915	
	lsl	 x0, x0, #3	// id: 2915, l: 2916	
	ldr	 x1, [sp, #8]	// id: 2916, l: 2917	
	add	 x0, x1, x0	// id: 2917, l: 2918	
	ldr	 d0, [x0]	// id: 2918, l: 2919	
	fsub	 d0, d1, d0	// id: 2919, l: 2920	
	str	 d0, [sp, #688]	// id: 2920, l: 2921	
	ldr	 d0, [sp, #672]	// id: 2921, l: 2922	
	ldr	 d1, [sp, #704]	// id: 2922, l: 2923	
	fdiv	 d0, d1, d0	// id: 2923, l: 2924	
	str	 d0, [sp, #704]	// id: 2924, l: 2925	
	ldr	 d0, [sp, #672]	// id: 2925, l: 2926	
	ldr	 d1, [sp, #696]	// id: 2926, l: 2927	
	fdiv	 d0, d1, d0	// id: 2927, l: 2928	
	str	 d0, [sp, #696]	// id: 2928, l: 2929	
	ldr	 d0, [sp, #672]	// id: 2929, l: 2930	
	ldr	 d1, [sp, #688]	// id: 2930, l: 2931	
	fdiv	 d0, d1, d0	// id: 2931, l: 2932	
	str	 d0, [sp, #688]	// id: 2932, l: 2933	
	ldr	 w0, [sp, #716]	// id: 2933, l: 2934	
	add	 w0, w0, #0x13	// id: 2934, l: 2935	
	sxtw	 x0, w0	// id: 2935, l: 2936	
	lsl	 x0, x0, #3	// id: 2936, l: 2937	
	ldr	 x1, [sp, #8]	// id: 2937, l: 2938	
	add	 x0, x1, x0	// id: 2938, l: 2939	
	ldr	 w0, [x0]	// id: 2939, l: 2940	
	and	 w0, w0, #0x2	// id: 2940, l: 2941	
	cmp	 w0, #0x0	// id: 2941, l: 2942	
	beq	 .L47	// id: 2942, l: 2943	
	adrp	 x0, .LC5	// id: 2943, l: 2944	
	ldr	 d0, [x0,:lo12:.LC5]	// id: 2944, l: 2945	
	str	 d0, [sp, #704]	// id: 2945, l: 2946	
	adrp	 x0, .LC6	// id: 2946, l: 2947	
	ldr	 d0, [x0,:lo12:.LC6]	// id: 2947, l: 2948	
	str	 d0, [sp, #696]	// id: 2948, l: 2949	
	str	 xzr, [sp, #688]	// id: 2949, l: 2950	
.L47:	// id: 2950, l: 2951	
	ldr	 d0, [sp, #704]	// id: 2951, l: 2952	
	fmul	 d1, d0, d0	// id: 2952, l: 2953	
	ldr	 d0, [sp, #696]	// id: 2953, l: 2954	
	fmul	 d0, d0, d0	// id: 2954, l: 2955	
	fadd	 d1, d1, d0	// id: 2955, l: 2956	
	ldr	 d0, [sp, #688]	// id: 2956, l: 2957	
	fmul	 d0, d0, d0	// id: 2957, l: 2958	
	fadd	 d1, d1, d0	// id: 2958, l: 2959	
	fmov	 d0, #1.500000000000000000e+00	// id: 2959, l: 2960	
	fmul	 d0, d1, d0	// id: 2960, l: 2961	
	str	 d0, [sp, #664]	// id: 2961, l: 2962	
	ldr	 d0, [sp, #672]	// id: 2962, l: 2963	
	mov	 x0, #0x5555555555555555    	// #6148914691236517205	// id: 2963, l: 2964	
	movk	 x0, #0x3fd5, lsl #48	// id: 2964, l: 2965	
	fmov	 d1, x0	// id: 2965, l: 2966	
	fmul	 d1, d0, d1	// id: 2966, l: 2967	
	fmov	 d2, #1.000000000000000000e+00	// id: 2967, l: 2968	
	ldr	 d0, [sp, #664]	// id: 2968, l: 2969	
	fsub	 d0, d2, d0	// id: 2969, l: 2970	
	fmul	 d0, d1, d0	// id: 2970, l: 2971	
	str	 d0, [sp, #184]	// id: 2971, l: 2972	
	ldr	 d0, [sp, #672]	// id: 2972, l: 2973	
	adrp	 x0, .LC2	// id: 2973, l: 2974	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 2974, l: 2975	
	fmul	 d1, d0, d1	// id: 2975, l: 2976	
	ldr	 d2, [sp, #696]	// id: 2976, l: 2977	
	fmov	 d0, #4.500000000000000000e+00	// id: 2977, l: 2978	
	fmul	 d2, d2, d0	// id: 2978, l: 2979	
	ldr	 d0, [sp, #696]	// id: 2979, l: 2980	
	fmul	 d2, d2, d0	// id: 2980, l: 2981	
	fmov	 d0, #1.000000000000000000e+00	// id: 2981, l: 2982	
	fadd	 d2, d2, d0	// id: 2982, l: 2983	
	ldr	 d0, [sp, #664]	// id: 2983, l: 2984	
	fsub	 d0, d2, d0	// id: 2984, l: 2985	
	fmul	 d0, d1, d0	// id: 2985, l: 2986	
	str	 d0, [sp, #200]	// id: 2986, l: 2987	
	ldr	 d0, [sp, #200]	// id: 2987, l: 2988	
	str	 d0, [sp, #192]	// id: 2988, l: 2989	
	ldr	 d0, [sp, #672]	// id: 2989, l: 2990	
	adrp	 x0, .LC2	// id: 2990, l: 2991	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 2991, l: 2992	
	fmul	 d1, d0, d1	// id: 2992, l: 2993	
	ldr	 d2, [sp, #704]	// id: 2993, l: 2994	
	fmov	 d0, #4.500000000000000000e+00	// id: 2994, l: 2995	
	fmul	 d2, d2, d0	// id: 2995, l: 2996	
	ldr	 d0, [sp, #704]	// id: 2996, l: 2997	
	fmul	 d2, d2, d0	// id: 2997, l: 2998	
	fmov	 d0, #1.000000000000000000e+00	// id: 2998, l: 2999	
	fadd	 d2, d2, d0	// id: 2999, l: 3000	
	ldr	 d0, [sp, #664]	// id: 3000, l: 3001	
	fsub	 d0, d2, d0	// id: 3001, l: 3002	
	fmul	 d0, d1, d0	// id: 3002, l: 3003	
	str	 d0, [sp, #216]	// id: 3003, l: 3004	
	ldr	 d0, [sp, #216]	// id: 3004, l: 3005	
	str	 d0, [sp, #208]	// id: 3005, l: 3006	
	ldr	 d0, [sp, #672]	// id: 3006, l: 3007	
	adrp	 x0, .LC2	// id: 3007, l: 3008	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 3008, l: 3009	
	fmul	 d1, d0, d1	// id: 3009, l: 3010	
	ldr	 d2, [sp, #688]	// id: 3010, l: 3011	
	fmov	 d0, #4.500000000000000000e+00	// id: 3011, l: 3012	
	fmul	 d2, d2, d0	// id: 3012, l: 3013	
	ldr	 d0, [sp, #688]	// id: 3013, l: 3014	
	fmul	 d2, d2, d0	// id: 3014, l: 3015	
	fmov	 d0, #1.000000000000000000e+00	// id: 3015, l: 3016	
	fadd	 d2, d2, d0	// id: 3016, l: 3017	
	ldr	 d0, [sp, #664]	// id: 3017, l: 3018	
	fsub	 d0, d2, d0	// id: 3018, l: 3019	
	fmul	 d0, d1, d0	// id: 3019, l: 3020	
	str	 d0, [sp, #232]	// id: 3020, l: 3021	
	ldr	 d0, [sp, #232]	// id: 3021, l: 3022	
	str	 d0, [sp, #224]	// id: 3022, l: 3023	
	ldr	 d0, [sp, #672]	// id: 3023, l: 3024	
	adrp	 x0, .LC3	// id: 3024, l: 3025	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 3025, l: 3026	
	fmul	 d1, d0, d1	// id: 3026, l: 3027	
	ldr	 d2, [sp, #704]	// id: 3027, l: 3028	
	ldr	 d0, [sp, #696]	// id: 3028, l: 3029	
	fadd	 d2, d2, d0	// id: 3029, l: 3030	
	fmov	 d0, #4.500000000000000000e+00	// id: 3030, l: 3031	
	fmul	 d2, d2, d0	// id: 3031, l: 3032	
	ldr	 d3, [sp, #704]	// id: 3032, l: 3033	
	ldr	 d0, [sp, #696]	// id: 3033, l: 3034	
	fadd	 d0, d3, d0	// id: 3034, l: 3035	
	fmul	 d2, d2, d0	// id: 3035, l: 3036	
	fmov	 d0, #1.000000000000000000e+00	// id: 3036, l: 3037	
	fadd	 d2, d2, d0	// id: 3037, l: 3038	
	ldr	 d0, [sp, #664]	// id: 3038, l: 3039	
	fsub	 d0, d2, d0	// id: 3039, l: 3040	
	fmul	 d0, d1, d0	// id: 3040, l: 3041	
	str	 d0, [sp, #264]	// id: 3041, l: 3042	
	ldr	 d0, [sp, #264]	// id: 3042, l: 3043	
	str	 d0, [sp, #240]	// id: 3043, l: 3044	
	ldr	 d0, [sp, #672]	// id: 3044, l: 3045	
	adrp	 x0, .LC3	// id: 3045, l: 3046	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 3046, l: 3047	
	fmul	 d1, d0, d1	// id: 3047, l: 3048	
	ldr	 d2, [sp, #696]	// id: 3048, l: 3049	
	ldr	 d0, [sp, #704]	// id: 3049, l: 3050	
	fsub	 d2, d2, d0	// id: 3050, l: 3051	
	fmov	 d0, #4.500000000000000000e+00	// id: 3051, l: 3052	
	fmul	 d2, d2, d0	// id: 3052, l: 3053	
	ldr	 d3, [sp, #696]	// id: 3053, l: 3054	
	ldr	 d0, [sp, #704]	// id: 3054, l: 3055	
	fsub	 d0, d3, d0	// id: 3055, l: 3056	
	fmul	 d2, d2, d0	// id: 3056, l: 3057	
	fmov	 d0, #1.000000000000000000e+00	// id: 3057, l: 3058	
	fadd	 d2, d2, d0	// id: 3058, l: 3059	
	ldr	 d0, [sp, #664]	// id: 3059, l: 3060	
	fsub	 d0, d2, d0	// id: 3060, l: 3061	
	fmul	 d0, d1, d0	// id: 3061, l: 3062	
	str	 d0, [sp, #256]	// id: 3062, l: 3063	
	ldr	 d0, [sp, #256]	// id: 3063, l: 3064	
	str	 d0, [sp, #248]	// id: 3064, l: 3065	
	ldr	 d0, [sp, #672]	// id: 3065, l: 3066	
	adrp	 x0, .LC3	// id: 3066, l: 3067	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 3067, l: 3068	
	fmul	 d1, d0, d1	// id: 3068, l: 3069	
	ldr	 d2, [sp, #696]	// id: 3069, l: 3070	
	ldr	 d0, [sp, #688]	// id: 3070, l: 3071	
	fadd	 d2, d2, d0	// id: 3071, l: 3072	
	fmov	 d0, #4.500000000000000000e+00	// id: 3072, l: 3073	
	fmul	 d2, d2, d0	// id: 3073, l: 3074	
	ldr	 d3, [sp, #696]	// id: 3074, l: 3075	
	ldr	 d0, [sp, #688]	// id: 3075, l: 3076	
	fadd	 d0, d3, d0	// id: 3076, l: 3077	
	fmul	 d2, d2, d0	// id: 3077, l: 3078	
	fmov	 d0, #1.000000000000000000e+00	// id: 3078, l: 3079	
	fadd	 d2, d2, d0	// id: 3079, l: 3080	
	ldr	 d0, [sp, #664]	// id: 3080, l: 3081	
	fsub	 d0, d2, d0	// id: 3081, l: 3082	
	fmul	 d0, d1, d0	// id: 3082, l: 3083	
	str	 d0, [sp, #296]	// id: 3083, l: 3084	
	ldr	 d0, [sp, #296]	// id: 3084, l: 3085	
	str	 d0, [sp, #272]	// id: 3085, l: 3086	
	ldr	 d0, [sp, #672]	// id: 3086, l: 3087	
	adrp	 x0, .LC3	// id: 3087, l: 3088	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 3088, l: 3089	
	fmul	 d1, d0, d1	// id: 3089, l: 3090	
	ldr	 d2, [sp, #696]	// id: 3090, l: 3091	
	ldr	 d0, [sp, #688]	// id: 3091, l: 3092	
	fsub	 d2, d2, d0	// id: 3092, l: 3093	
	fmov	 d0, #4.500000000000000000e+00	// id: 3093, l: 3094	
	fmul	 d2, d2, d0	// id: 3094, l: 3095	
	ldr	 d3, [sp, #696]	// id: 3095, l: 3096	
	ldr	 d0, [sp, #688]	// id: 3096, l: 3097	
	fsub	 d0, d3, d0	// id: 3097, l: 3098	
	fmul	 d2, d2, d0	// id: 3098, l: 3099	
	fmov	 d0, #1.000000000000000000e+00	// id: 3099, l: 3100	
	fadd	 d2, d2, d0	// id: 3100, l: 3101	
	ldr	 d0, [sp, #664]	// id: 3101, l: 3102	
	fsub	 d0, d2, d0	// id: 3102, l: 3103	
	fmul	 d0, d1, d0	// id: 3103, l: 3104	
	str	 d0, [sp, #288]	// id: 3104, l: 3105	
	ldr	 d0, [sp, #288]	// id: 3105, l: 3106	
	str	 d0, [sp, #280]	// id: 3106, l: 3107	
	ldr	 d0, [sp, #672]	// id: 3107, l: 3108	
	adrp	 x0, .LC3	// id: 3108, l: 3109	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 3109, l: 3110	
	fmul	 d1, d0, d1	// id: 3110, l: 3111	
	ldr	 d2, [sp, #704]	// id: 3111, l: 3112	
	ldr	 d0, [sp, #688]	// id: 3112, l: 3113	
	fadd	 d2, d2, d0	// id: 3113, l: 3114	
	fmov	 d0, #4.500000000000000000e+00	// id: 3114, l: 3115	
	fmul	 d2, d2, d0	// id: 3115, l: 3116	
	ldr	 d3, [sp, #704]	// id: 3116, l: 3117	
	ldr	 d0, [sp, #688]	// id: 3117, l: 3118	
	fadd	 d0, d3, d0	// id: 3118, l: 3119	
	fmul	 d2, d2, d0	// id: 3119, l: 3120	
	fmov	 d0, #1.000000000000000000e+00	// id: 3120, l: 3121	
	fadd	 d2, d2, d0	// id: 3121, l: 3122	
	ldr	 d0, [sp, #664]	// id: 3122, l: 3123	
	fsub	 d0, d2, d0	// id: 3123, l: 3124	
	fmul	 d0, d1, d0	// id: 3124, l: 3125	
	str	 d0, [sp, #328]	// id: 3125, l: 3126	
	ldr	 d0, [sp, #328]	// id: 3126, l: 3127	
	str	 d0, [sp, #304]	// id: 3127, l: 3128	
	ldr	 d0, [sp, #672]	// id: 3128, l: 3129	
	adrp	 x0, .LC3	// id: 3129, l: 3130	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 3130, l: 3131	
	fmul	 d1, d0, d1	// id: 3131, l: 3132	
	ldr	 d2, [sp, #704]	// id: 3132, l: 3133	
	ldr	 d0, [sp, #688]	// id: 3133, l: 3134	
	fsub	 d2, d2, d0	// id: 3134, l: 3135	
	fmov	 d0, #4.500000000000000000e+00	// id: 3135, l: 3136	
	fmul	 d2, d2, d0	// id: 3136, l: 3137	
	ldr	 d3, [sp, #704]	// id: 3137, l: 3138	
	ldr	 d0, [sp, #688]	// id: 3138, l: 3139	
	fsub	 d0, d3, d0	// id: 3139, l: 3140	
	fmul	 d2, d2, d0	// id: 3140, l: 3141	
	fmov	 d0, #1.000000000000000000e+00	// id: 3141, l: 3142	
	fadd	 d2, d2, d0	// id: 3142, l: 3143	
	ldr	 d0, [sp, #664]	// id: 3143, l: 3144	
	fsub	 d0, d2, d0	// id: 3144, l: 3145	
	fmul	 d0, d1, d0	// id: 3145, l: 3146	
	str	 d0, [sp, #320]	// id: 3146, l: 3147	
	ldr	 d0, [sp, #320]	// id: 3147, l: 3148	
	str	 d0, [sp, #312]	// id: 3148, l: 3149	
	str	 xzr, [sp, #24]	// id: 3149, l: 3150	
	ldr	 d0, [sp, #672]	// id: 3150, l: 3151	
	adrp	 x0, .LC2	// id: 3151, l: 3152	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 3152, l: 3153	
	fmul	 d1, d0, d1	// id: 3153, l: 3154	
	fmov	 d0, #3.000000000000000000e+00	// id: 3154, l: 3155	
	fmul	 d1, d1, d0	// id: 3155, l: 3156	
	ldr	 d0, [sp, #696]	// id: 3156, l: 3157	
	fmul	 d0, d1, d0	// id: 3157, l: 3158	
	str	 d0, [sp, #32]	// id: 3158, l: 3159	
	ldr	 d0, [sp, #32]	// id: 3159, l: 3160	
	fneg	 d0, d0	// id: 3160, l: 3161	
	str	 d0, [sp, #40]	// id: 3161, l: 3162	
	ldr	 d0, [sp, #672]	// id: 3162, l: 3163	
	adrp	 x0, .LC2	// id: 3163, l: 3164	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 3164, l: 3165	
	fmul	 d1, d0, d1	// id: 3165, l: 3166	
	fmov	 d0, #3.000000000000000000e+00	// id: 3166, l: 3167	
	fmul	 d1, d1, d0	// id: 3167, l: 3168	
	ldr	 d0, [sp, #704]	// id: 3168, l: 3169	
	fmul	 d0, d1, d0	// id: 3169, l: 3170	
	str	 d0, [sp, #48]	// id: 3170, l: 3171	
	ldr	 d0, [sp, #48]	// id: 3171, l: 3172	
	fneg	 d0, d0	// id: 3172, l: 3173	
	str	 d0, [sp, #56]	// id: 3173, l: 3174	
	ldr	 d0, [sp, #672]	// id: 3174, l: 3175	
	adrp	 x0, .LC2	// id: 3175, l: 3176	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 3176, l: 3177	
	fmul	 d1, d0, d1	// id: 3177, l: 3178	
	fmov	 d0, #3.000000000000000000e+00	// id: 3178, l: 3179	
	fmul	 d1, d1, d0	// id: 3179, l: 3180	
	ldr	 d0, [sp, #688]	// id: 3180, l: 3181	
	fmul	 d0, d1, d0	// id: 3181, l: 3182	
	str	 d0, [sp, #64]	// id: 3182, l: 3183	
	ldr	 d0, [sp, #64]	// id: 3183, l: 3184	
	fneg	 d0, d0	// id: 3184, l: 3185	
	str	 d0, [sp, #72]	// id: 3185, l: 3186	
	ldr	 d0, [sp, #672]	// id: 3186, l: 3187	
	adrp	 x0, .LC3	// id: 3187, l: 3188	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 3188, l: 3189	
	fmul	 d1, d0, d1	// id: 3189, l: 3190	
	fmov	 d0, #3.000000000000000000e+00	// id: 3190, l: 3191	
	fmul	 d1, d1, d0	// id: 3191, l: 3192	
	ldr	 d2, [sp, #704]	// id: 3192, l: 3193	
	ldr	 d0, [sp, #696]	// id: 3193, l: 3194	
	fadd	 d0, d2, d0	// id: 3194, l: 3195	
	fmul	 d0, d1, d0	// id: 3195, l: 3196	
	str	 d0, [sp, #80]	// id: 3196, l: 3197	
	ldr	 d0, [sp, #80]	// id: 3197, l: 3198	
	fneg	 d0, d0	// id: 3198, l: 3199	
	str	 d0, [sp, #104]	// id: 3199, l: 3200	
	ldr	 d0, [sp, #672]	// id: 3200, l: 3201	
	adrp	 x0, .LC3	// id: 3201, l: 3202	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 3202, l: 3203	
	fmul	 d1, d0, d1	// id: 3203, l: 3204	
	fmov	 d0, #3.000000000000000000e+00	// id: 3204, l: 3205	
	fmul	 d1, d1, d0	// id: 3205, l: 3206	
	ldr	 d2, [sp, #696]	// id: 3206, l: 3207	
	ldr	 d0, [sp, #704]	// id: 3207, l: 3208	
	fsub	 d0, d2, d0	// id: 3208, l: 3209	
	fmul	 d0, d1, d0	// id: 3209, l: 3210	
	str	 d0, [sp, #88]	// id: 3210, l: 3211	
	ldr	 d0, [sp, #88]	// id: 3211, l: 3212	
	fneg	 d0, d0	// id: 3212, l: 3213	
	str	 d0, [sp, #96]	// id: 3213, l: 3214	
	ldr	 d0, [sp, #672]	// id: 3214, l: 3215	
	adrp	 x0, .LC3	// id: 3215, l: 3216	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 3216, l: 3217	
	fmul	 d1, d0, d1	// id: 3217, l: 3218	
	fmov	 d0, #3.000000000000000000e+00	// id: 3218, l: 3219	
	fmul	 d1, d1, d0	// id: 3219, l: 3220	
	ldr	 d2, [sp, #696]	// id: 3220, l: 3221	
	ldr	 d0, [sp, #688]	// id: 3221, l: 3222	
	fadd	 d0, d2, d0	// id: 3222, l: 3223	
	fmul	 d0, d1, d0	// id: 3223, l: 3224	
	str	 d0, [sp, #112]	// id: 3224, l: 3225	
	ldr	 d0, [sp, #112]	// id: 3225, l: 3226	
	fneg	 d0, d0	// id: 3226, l: 3227	
	str	 d0, [sp, #136]	// id: 3227, l: 3228	
	ldr	 d0, [sp, #672]	// id: 3228, l: 3229	
	adrp	 x0, .LC3	// id: 3229, l: 3230	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 3230, l: 3231	
	fmul	 d1, d0, d1	// id: 3231, l: 3232	
	fmov	 d0, #3.000000000000000000e+00	// id: 3232, l: 3233	
	fmul	 d1, d1, d0	// id: 3233, l: 3234	
	ldr	 d2, [sp, #696]	// id: 3234, l: 3235	
	ldr	 d0, [sp, #688]	// id: 3235, l: 3236	
	fsub	 d0, d2, d0	// id: 3236, l: 3237	
	fmul	 d0, d1, d0	// id: 3237, l: 3238	
	str	 d0, [sp, #120]	// id: 3238, l: 3239	
	ldr	 d0, [sp, #120]	// id: 3239, l: 3240	
	fneg	 d0, d0	// id: 3240, l: 3241	
	str	 d0, [sp, #128]	// id: 3241, l: 3242	
	ldr	 d0, [sp, #672]	// id: 3242, l: 3243	
	adrp	 x0, .LC3	// id: 3243, l: 3244	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 3244, l: 3245	
	fmul	 d1, d0, d1	// id: 3245, l: 3246	
	fmov	 d0, #3.000000000000000000e+00	// id: 3246, l: 3247	
	fmul	 d1, d1, d0	// id: 3247, l: 3248	
	ldr	 d2, [sp, #704]	// id: 3248, l: 3249	
	ldr	 d0, [sp, #688]	// id: 3249, l: 3250	
	fadd	 d0, d2, d0	// id: 3250, l: 3251	
	fmul	 d0, d1, d0	// id: 3251, l: 3252	
	str	 d0, [sp, #144]	// id: 3252, l: 3253	
	ldr	 d0, [sp, #144]	// id: 3253, l: 3254	
	fneg	 d0, d0	// id: 3254, l: 3255	
	str	 d0, [sp, #168]	// id: 3255, l: 3256	
	ldr	 d0, [sp, #672]	// id: 3256, l: 3257	
	adrp	 x0, .LC3	// id: 3257, l: 3258	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 3258, l: 3259	
	fmul	 d1, d0, d1	// id: 3259, l: 3260	
	fmov	 d0, #3.000000000000000000e+00	// id: 3260, l: 3261	
	fmul	 d1, d1, d0	// id: 3261, l: 3262	
	ldr	 d2, [sp, #704]	// id: 3262, l: 3263	
	ldr	 d0, [sp, #688]	// id: 3263, l: 3264	
	fsub	 d0, d2, d0	// id: 3264, l: 3265	
	fmul	 d0, d1, d0	// id: 3265, l: 3266	
	str	 d0, [sp, #152]	// id: 3266, l: 3267	
	ldr	 d0, [sp, #152]	// id: 3267, l: 3268	
	fneg	 d0, d0	// id: 3268, l: 3269	
	str	 d0, [sp, #160]	// id: 3269, l: 3270	
	ldrsw	 x0, [sp, #716]	// id: 3270, l: 3271	
	lsl	 x0, x0, #3	// id: 3271, l: 3272	
	ldr	 x1, [sp, #8]	// id: 3272, l: 3273	
	add	 x0, x1, x0	// id: 3273, l: 3274	
	ldr	 d0, [x0]	// id: 3274, l: 3275	
	str	 d0, [sp, #504]	// id: 3275, l: 3276	
	ldr	 w0, [sp, #716]	// id: 3276, l: 3277	
	add	 w0, w0, #0x1	// id: 3277, l: 3278	
	sxtw	 x0, w0	// id: 3278, l: 3279	
	lsl	 x0, x0, #3	// id: 3279, l: 3280	
	ldr	 x1, [sp, #8]	// id: 3280, l: 3281	
	add	 x0, x1, x0	// id: 3281, l: 3282	
	ldr	 d1, [x0]	// id: 3282, l: 3283	
	ldr	 w0, [sp, #716]	// id: 3283, l: 3284	
	add	 w0, w0, #0x2	// id: 3284, l: 3285	
	sxtw	 x0, w0	// id: 3285, l: 3286	
	lsl	 x0, x0, #3	// id: 3286, l: 3287	
	ldr	 x1, [sp, #8]	// id: 3287, l: 3288	
	add	 x0, x1, x0	// id: 3288, l: 3289	
	ldr	 d0, [x0]	// id: 3289, l: 3290	
	fadd	 d1, d1, d0	// id: 3290, l: 3291	
	fmov	 d0, #5.000000000000000000e-01	// id: 3291, l: 3292	
	fmul	 d0, d1, d0	// id: 3292, l: 3293	
	str	 d0, [sp, #520]	// id: 3293, l: 3294	
	ldr	 d0, [sp, #520]	// id: 3294, l: 3295	
	str	 d0, [sp, #512]	// id: 3295, l: 3296	
	ldr	 w0, [sp, #716]	// id: 3296, l: 3297	
	add	 w0, w0, #0x3	// id: 3297, l: 3298	
	sxtw	 x0, w0	// id: 3298, l: 3299	
	lsl	 x0, x0, #3	// id: 3299, l: 3300	
	ldr	 x1, [sp, #8]	// id: 3300, l: 3301	
	add	 x0, x1, x0	// id: 3301, l: 3302	
	ldr	 d1, [x0]	// id: 3302, l: 3303	
	ldr	 w0, [sp, #716]	// id: 3303, l: 3304	
	add	 w0, w0, #0x4	// id: 3304, l: 3305	
	sxtw	 x0, w0	// id: 3305, l: 3306	
	lsl	 x0, x0, #3	// id: 3306, l: 3307	
	ldr	 x1, [sp, #8]	// id: 3307, l: 3308	
	add	 x0, x1, x0	// id: 3308, l: 3309	
	ldr	 d0, [x0]	// id: 3309, l: 3310	
	fadd	 d1, d1, d0	// id: 3310, l: 3311	
	fmov	 d0, #5.000000000000000000e-01	// id: 3311, l: 3312	
	fmul	 d0, d1, d0	// id: 3312, l: 3313	
	str	 d0, [sp, #536]	// id: 3313, l: 3314	
	ldr	 d0, [sp, #536]	// id: 3314, l: 3315	
	str	 d0, [sp, #528]	// id: 3315, l: 3316	
	ldr	 w0, [sp, #716]	// id: 3316, l: 3317	
	add	 w0, w0, #0x5	// id: 3317, l: 3318	
	sxtw	 x0, w0	// id: 3318, l: 3319	
	lsl	 x0, x0, #3	// id: 3319, l: 3320	
	ldr	 x1, [sp, #8]	// id: 3320, l: 3321	
	add	 x0, x1, x0	// id: 3321, l: 3322	
	ldr	 d1, [x0]	// id: 3322, l: 3323	
	ldr	 w0, [sp, #716]	// id: 3323, l: 3324	
	add	 w0, w0, #0x6	// id: 3324, l: 3325	
	sxtw	 x0, w0	// id: 3325, l: 3326	
	lsl	 x0, x0, #3	// id: 3326, l: 3327	
	ldr	 x1, [sp, #8]	// id: 3327, l: 3328	
	add	 x0, x1, x0	// id: 3328, l: 3329	
	ldr	 d0, [x0]	// id: 3329, l: 3330	
	fadd	 d1, d1, d0	// id: 3330, l: 3331	
	fmov	 d0, #5.000000000000000000e-01	// id: 3331, l: 3332	
	fmul	 d0, d1, d0	// id: 3332, l: 3333	
	str	 d0, [sp, #552]	// id: 3333, l: 3334	
	ldr	 d0, [sp, #552]	// id: 3334, l: 3335	
	str	 d0, [sp, #544]	// id: 3335, l: 3336	
	ldr	 w0, [sp, #716]	// id: 3336, l: 3337	
	add	 w0, w0, #0x7	// id: 3337, l: 3338	
	sxtw	 x0, w0	// id: 3338, l: 3339	
	lsl	 x0, x0, #3	// id: 3339, l: 3340	
	ldr	 x1, [sp, #8]	// id: 3340, l: 3341	
	add	 x0, x1, x0	// id: 3341, l: 3342	
	ldr	 d1, [x0]	// id: 3342, l: 3343	
	ldr	 w0, [sp, #716]	// id: 3343, l: 3344	
	add	 w0, w0, #0xa	// id: 3344, l: 3345	
	sxtw	 x0, w0	// id: 3345, l: 3346	
	lsl	 x0, x0, #3	// id: 3346, l: 3347	
	ldr	 x1, [sp, #8]	// id: 3347, l: 3348	
	add	 x0, x1, x0	// id: 3348, l: 3349	
	ldr	 d0, [x0]	// id: 3349, l: 3350	
	fadd	 d1, d1, d0	// id: 3350, l: 3351	
	fmov	 d0, #5.000000000000000000e-01	// id: 3351, l: 3352	
	fmul	 d0, d1, d0	// id: 3352, l: 3353	
	str	 d0, [sp, #584]	// id: 3353, l: 3354	
	ldr	 d0, [sp, #584]	// id: 3354, l: 3355	
	str	 d0, [sp, #560]	// id: 3355, l: 3356	
	ldr	 w0, [sp, #716]	// id: 3356, l: 3357	
	add	 w0, w0, #0x8	// id: 3357, l: 3358	
	sxtw	 x0, w0	// id: 3358, l: 3359	
	lsl	 x0, x0, #3	// id: 3359, l: 3360	
	ldr	 x1, [sp, #8]	// id: 3360, l: 3361	
	add	 x0, x1, x0	// id: 3361, l: 3362	
	ldr	 d1, [x0]	// id: 3362, l: 3363	
	ldr	 w0, [sp, #716]	// id: 3363, l: 3364	
	add	 w0, w0, #0x9	// id: 3364, l: 3365	
	sxtw	 x0, w0	// id: 3365, l: 3366	
	lsl	 x0, x0, #3	// id: 3366, l: 3367	
	ldr	 x1, [sp, #8]	// id: 3367, l: 3368	
	add	 x0, x1, x0	// id: 3368, l: 3369	
	ldr	 d0, [x0]	// id: 3369, l: 3370	
	fadd	 d1, d1, d0	// id: 3370, l: 3371	
	fmov	 d0, #5.000000000000000000e-01	// id: 3371, l: 3372	
	fmul	 d0, d1, d0	// id: 3372, l: 3373	
	str	 d0, [sp, #576]	// id: 3373, l: 3374	
	ldr	 d0, [sp, #576]	// id: 3374, l: 3375	
	str	 d0, [sp, #568]	// id: 3375, l: 3376	
	ldr	 w0, [sp, #716]	// id: 3376, l: 3377	
	add	 w0, w0, #0xb	// id: 3377, l: 3378	
	sxtw	 x0, w0	// id: 3378, l: 3379	
	lsl	 x0, x0, #3	// id: 3379, l: 3380	
	ldr	 x1, [sp, #8]	// id: 3380, l: 3381	
	add	 x0, x1, x0	// id: 3381, l: 3382	
	ldr	 d1, [x0]	// id: 3382, l: 3383	
	ldr	 w0, [sp, #716]	// id: 3383, l: 3384	
	add	 w0, w0, #0xe	// id: 3384, l: 3385	
	sxtw	 x0, w0	// id: 3385, l: 3386	
	lsl	 x0, x0, #3	// id: 3386, l: 3387	
	ldr	 x1, [sp, #8]	// id: 3387, l: 3388	
	add	 x0, x1, x0	// id: 3388, l: 3389	
	ldr	 d0, [x0]	// id: 3389, l: 3390	
	fadd	 d1, d1, d0	// id: 3390, l: 3391	
	fmov	 d0, #5.000000000000000000e-01	// id: 3391, l: 3392	
	fmul	 d0, d1, d0	// id: 3392, l: 3393	
	str	 d0, [sp, #616]	// id: 3393, l: 3394	
	ldr	 d0, [sp, #616]	// id: 3394, l: 3395	
	str	 d0, [sp, #592]	// id: 3395, l: 3396	
	ldr	 w0, [sp, #716]	// id: 3396, l: 3397	
	add	 w0, w0, #0xc	// id: 3397, l: 3398	
	sxtw	 x0, w0	// id: 3398, l: 3399	
	lsl	 x0, x0, #3	// id: 3399, l: 3400	
	ldr	 x1, [sp, #8]	// id: 3400, l: 3401	
	add	 x0, x1, x0	// id: 3401, l: 3402	
	ldr	 d1, [x0]	// id: 3402, l: 3403	
	ldr	 w0, [sp, #716]	// id: 3403, l: 3404	
	add	 w0, w0, #0xd	// id: 3404, l: 3405	
	sxtw	 x0, w0	// id: 3405, l: 3406	
	lsl	 x0, x0, #3	// id: 3406, l: 3407	
	ldr	 x1, [sp, #8]	// id: 3407, l: 3408	
	add	 x0, x1, x0	// id: 3408, l: 3409	
	ldr	 d0, [x0]	// id: 3409, l: 3410	
	fadd	 d1, d1, d0	// id: 3410, l: 3411	
	fmov	 d0, #5.000000000000000000e-01	// id: 3411, l: 3412	
	fmul	 d0, d1, d0	// id: 3412, l: 3413	
	str	 d0, [sp, #608]	// id: 3413, l: 3414	
	ldr	 d0, [sp, #608]	// id: 3414, l: 3415	
	str	 d0, [sp, #600]	// id: 3415, l: 3416	
	ldr	 w0, [sp, #716]	// id: 3416, l: 3417	
	add	 w0, w0, #0xf	// id: 3417, l: 3418	
	sxtw	 x0, w0	// id: 3418, l: 3419	
	lsl	 x0, x0, #3	// id: 3419, l: 3420	
	ldr	 x1, [sp, #8]	// id: 3420, l: 3421	
	add	 x0, x1, x0	// id: 3421, l: 3422	
	ldr	 d1, [x0]	// id: 3422, l: 3423	
	ldr	 w0, [sp, #716]	// id: 3423, l: 3424	
	add	 w0, w0, #0x12	// id: 3424, l: 3425	
	sxtw	 x0, w0	// id: 3425, l: 3426	
	lsl	 x0, x0, #3	// id: 3426, l: 3427	
	ldr	 x1, [sp, #8]	// id: 3427, l: 3428	
	add	 x0, x1, x0	// id: 3428, l: 3429	
	ldr	 d0, [x0]	// id: 3429, l: 3430	
	fadd	 d1, d1, d0	// id: 3430, l: 3431	
	fmov	 d0, #5.000000000000000000e-01	// id: 3431, l: 3432	
	fmul	 d0, d1, d0	// id: 3432, l: 3433	
	str	 d0, [sp, #648]	// id: 3433, l: 3434	
	ldr	 d0, [sp, #648]	// id: 3434, l: 3435	
	str	 d0, [sp, #624]	// id: 3435, l: 3436	
	ldr	 w0, [sp, #716]	// id: 3436, l: 3437	
	add	 w0, w0, #0x10	// id: 3437, l: 3438	
	sxtw	 x0, w0	// id: 3438, l: 3439	
	lsl	 x0, x0, #3	// id: 3439, l: 3440	
	ldr	 x1, [sp, #8]	// id: 3440, l: 3441	
	add	 x0, x1, x0	// id: 3441, l: 3442	
	ldr	 d1, [x0]	// id: 3442, l: 3443	
	ldr	 w0, [sp, #716]	// id: 3443, l: 3444	
	add	 w0, w0, #0x11	// id: 3444, l: 3445	
	sxtw	 x0, w0	// id: 3445, l: 3446	
	lsl	 x0, x0, #3	// id: 3446, l: 3447	
	ldr	 x1, [sp, #8]	// id: 3447, l: 3448	
	add	 x0, x1, x0	// id: 3448, l: 3449	
	ldr	 d0, [x0]	// id: 3449, l: 3450	
	fadd	 d1, d1, d0	// id: 3450, l: 3451	
	fmov	 d0, #5.000000000000000000e-01	// id: 3451, l: 3452	
	fmul	 d0, d1, d0	// id: 3452, l: 3453	
	str	 d0, [sp, #640]	// id: 3453, l: 3454	
	ldr	 d0, [sp, #640]	// id: 3454, l: 3455	
	str	 d0, [sp, #632]	// id: 3455, l: 3456	
	str	 xzr, [sp, #344]	// id: 3456, l: 3457	
	ldr	 w0, [sp, #716]	// id: 3457, l: 3458	
	add	 w0, w0, #0x1	// id: 3458, l: 3459	
	sxtw	 x0, w0	// id: 3459, l: 3460	
	lsl	 x0, x0, #3	// id: 3460, l: 3461	
	ldr	 x1, [sp, #8]	// id: 3461, l: 3462	
	add	 x0, x1, x0	// id: 3462, l: 3463	
	ldr	 d1, [x0]	// id: 3463, l: 3464	
	ldr	 w0, [sp, #716]	// id: 3464, l: 3465	
	add	 w0, w0, #0x2	// id: 3465, l: 3466	
	sxtw	 x0, w0	// id: 3466, l: 3467	
	lsl	 x0, x0, #3	// id: 3467, l: 3468	
	ldr	 x1, [sp, #8]	// id: 3468, l: 3469	
	add	 x0, x1, x0	// id: 3469, l: 3470	
	ldr	 d0, [x0]	// id: 3470, l: 3471	
	fsub	 d1, d1, d0	// id: 3471, l: 3472	
	fmov	 d0, #5.000000000000000000e-01	// id: 3472, l: 3473	
	fmul	 d0, d1, d0	// id: 3473, l: 3474	
	str	 d0, [sp, #352]	// id: 3474, l: 3475	
	ldr	 d0, [sp, #352]	// id: 3475, l: 3476	
	fneg	 d0, d0	// id: 3476, l: 3477	
	str	 d0, [sp, #360]	// id: 3477, l: 3478	
	ldr	 w0, [sp, #716]	// id: 3478, l: 3479	
	add	 w0, w0, #0x3	// id: 3479, l: 3480	
	sxtw	 x0, w0	// id: 3480, l: 3481	
	lsl	 x0, x0, #3	// id: 3481, l: 3482	
	ldr	 x1, [sp, #8]	// id: 3482, l: 3483	
	add	 x0, x1, x0	// id: 3483, l: 3484	
	ldr	 d1, [x0]	// id: 3484, l: 3485	
	ldr	 w0, [sp, #716]	// id: 3485, l: 3486	
	add	 w0, w0, #0x4	// id: 3486, l: 3487	
	sxtw	 x0, w0	// id: 3487, l: 3488	
	lsl	 x0, x0, #3	// id: 3488, l: 3489	
	ldr	 x1, [sp, #8]	// id: 3489, l: 3490	
	add	 x0, x1, x0	// id: 3490, l: 3491	
	ldr	 d0, [x0]	// id: 3491, l: 3492	
	fsub	 d1, d1, d0	// id: 3492, l: 3493	
	fmov	 d0, #5.000000000000000000e-01	// id: 3493, l: 3494	
	fmul	 d0, d1, d0	// id: 3494, l: 3495	
	str	 d0, [sp, #368]	// id: 3495, l: 3496	
	ldr	 d0, [sp, #368]	// id: 3496, l: 3497	
	fneg	 d0, d0	// id: 3497, l: 3498	
	str	 d0, [sp, #376]	// id: 3498, l: 3499	
	ldr	 w0, [sp, #716]	// id: 3499, l: 3500	
	add	 w0, w0, #0x5	// id: 3500, l: 3501	
	sxtw	 x0, w0	// id: 3501, l: 3502	
	lsl	 x0, x0, #3	// id: 3502, l: 3503	
	ldr	 x1, [sp, #8]	// id: 3503, l: 3504	
	add	 x0, x1, x0	// id: 3504, l: 3505	
	ldr	 d1, [x0]	// id: 3505, l: 3506	
	ldr	 w0, [sp, #716]	// id: 3506, l: 3507	
	add	 w0, w0, #0x6	// id: 3507, l: 3508	
	sxtw	 x0, w0	// id: 3508, l: 3509	
	lsl	 x0, x0, #3	// id: 3509, l: 3510	
	ldr	 x1, [sp, #8]	// id: 3510, l: 3511	
	add	 x0, x1, x0	// id: 3511, l: 3512	
	ldr	 d0, [x0]	// id: 3512, l: 3513	
	fsub	 d1, d1, d0	// id: 3513, l: 3514	
	fmov	 d0, #5.000000000000000000e-01	// id: 3514, l: 3515	
	fmul	 d0, d1, d0	// id: 3515, l: 3516	
	str	 d0, [sp, #384]	// id: 3516, l: 3517	
	ldr	 d0, [sp, #384]	// id: 3517, l: 3518	
	fneg	 d0, d0	// id: 3518, l: 3519	
	str	 d0, [sp, #392]	// id: 3519, l: 3520	
	ldr	 w0, [sp, #716]	// id: 3520, l: 3521	
	add	 w0, w0, #0x7	// id: 3521, l: 3522	
	sxtw	 x0, w0	// id: 3522, l: 3523	
	lsl	 x0, x0, #3	// id: 3523, l: 3524	
	ldr	 x1, [sp, #8]	// id: 3524, l: 3525	
	add	 x0, x1, x0	// id: 3525, l: 3526	
	ldr	 d1, [x0]	// id: 3526, l: 3527	
	ldr	 w0, [sp, #716]	// id: 3527, l: 3528	
	add	 w0, w0, #0xa	// id: 3528, l: 3529	
	sxtw	 x0, w0	// id: 3529, l: 3530	
	lsl	 x0, x0, #3	// id: 3530, l: 3531	
	ldr	 x1, [sp, #8]	// id: 3531, l: 3532	
	add	 x0, x1, x0	// id: 3532, l: 3533	
	ldr	 d0, [x0]	// id: 3533, l: 3534	
	fsub	 d1, d1, d0	// id: 3534, l: 3535	
	fmov	 d0, #5.000000000000000000e-01	// id: 3535, l: 3536	
	fmul	 d0, d1, d0	// id: 3536, l: 3537	
	str	 d0, [sp, #400]	// id: 3537, l: 3538	
	ldr	 d0, [sp, #400]	// id: 3538, l: 3539	
	fneg	 d0, d0	// id: 3539, l: 3540	
	str	 d0, [sp, #424]	// id: 3540, l: 3541	
	ldr	 w0, [sp, #716]	// id: 3541, l: 3542	
	add	 w0, w0, #0x8	// id: 3542, l: 3543	
	sxtw	 x0, w0	// id: 3543, l: 3544	
	lsl	 x0, x0, #3	// id: 3544, l: 3545	
	ldr	 x1, [sp, #8]	// id: 3545, l: 3546	
	add	 x0, x1, x0	// id: 3546, l: 3547	
	ldr	 d1, [x0]	// id: 3547, l: 3548	
	ldr	 w0, [sp, #716]	// id: 3548, l: 3549	
	add	 w0, w0, #0x9	// id: 3549, l: 3550	
	sxtw	 x0, w0	// id: 3550, l: 3551	
	lsl	 x0, x0, #3	// id: 3551, l: 3552	
	ldr	 x1, [sp, #8]	// id: 3552, l: 3553	
	add	 x0, x1, x0	// id: 3553, l: 3554	
	ldr	 d0, [x0]	// id: 3554, l: 3555	
	fsub	 d1, d1, d0	// id: 3555, l: 3556	
	fmov	 d0, #5.000000000000000000e-01	// id: 3556, l: 3557	
	fmul	 d0, d1, d0	// id: 3557, l: 3558	
	str	 d0, [sp, #408]	// id: 3558, l: 3559	
	ldr	 d0, [sp, #408]	// id: 3559, l: 3560	
	fneg	 d0, d0	// id: 3560, l: 3561	
	str	 d0, [sp, #416]	// id: 3561, l: 3562	
	ldr	 w0, [sp, #716]	// id: 3562, l: 3563	
	add	 w0, w0, #0xb	// id: 3563, l: 3564	
	sxtw	 x0, w0	// id: 3564, l: 3565	
	lsl	 x0, x0, #3	// id: 3565, l: 3566	
	ldr	 x1, [sp, #8]	// id: 3566, l: 3567	
	add	 x0, x1, x0	// id: 3567, l: 3568	
	ldr	 d1, [x0]	// id: 3568, l: 3569	
	ldr	 w0, [sp, #716]	// id: 3569, l: 3570	
	add	 w0, w0, #0xe	// id: 3570, l: 3571	
	sxtw	 x0, w0	// id: 3571, l: 3572	
	lsl	 x0, x0, #3	// id: 3572, l: 3573	
	ldr	 x1, [sp, #8]	// id: 3573, l: 3574	
	add	 x0, x1, x0	// id: 3574, l: 3575	
	ldr	 d0, [x0]	// id: 3575, l: 3576	
	fsub	 d1, d1, d0	// id: 3576, l: 3577	
	fmov	 d0, #5.000000000000000000e-01	// id: 3577, l: 3578	
	fmul	 d0, d1, d0	// id: 3578, l: 3579	
	str	 d0, [sp, #432]	// id: 3579, l: 3580	
	ldr	 d0, [sp, #432]	// id: 3580, l: 3581	
	fneg	 d0, d0	// id: 3581, l: 3582	
	str	 d0, [sp, #456]	// id: 3582, l: 3583	
	ldr	 w0, [sp, #716]	// id: 3583, l: 3584	
	add	 w0, w0, #0xc	// id: 3584, l: 3585	
	sxtw	 x0, w0	// id: 3585, l: 3586	
	lsl	 x0, x0, #3	// id: 3586, l: 3587	
	ldr	 x1, [sp, #8]	// id: 3587, l: 3588	
	add	 x0, x1, x0	// id: 3588, l: 3589	
	ldr	 d1, [x0]	// id: 3589, l: 3590	
	ldr	 w0, [sp, #716]	// id: 3590, l: 3591	
	add	 w0, w0, #0xd	// id: 3591, l: 3592	
	sxtw	 x0, w0	// id: 3592, l: 3593	
	lsl	 x0, x0, #3	// id: 3593, l: 3594	
	ldr	 x1, [sp, #8]	// id: 3594, l: 3595	
	add	 x0, x1, x0	// id: 3595, l: 3596	
	ldr	 d0, [x0]	// id: 3596, l: 3597	
	fsub	 d1, d1, d0	// id: 3597, l: 3598	
	fmov	 d0, #5.000000000000000000e-01	// id: 3598, l: 3599	
	fmul	 d0, d1, d0	// id: 3599, l: 3600	
	str	 d0, [sp, #440]	// id: 3600, l: 3601	
	ldr	 d0, [sp, #440]	// id: 3601, l: 3602	
	fneg	 d0, d0	// id: 3602, l: 3603	
	str	 d0, [sp, #448]	// id: 3603, l: 3604	
	ldr	 w0, [sp, #716]	// id: 3604, l: 3605	
	add	 w0, w0, #0xf	// id: 3605, l: 3606	
	sxtw	 x0, w0	// id: 3606, l: 3607	
	lsl	 x0, x0, #3	// id: 3607, l: 3608	
	ldr	 x1, [sp, #8]	// id: 3608, l: 3609	
	add	 x0, x1, x0	// id: 3609, l: 3610	
	ldr	 d1, [x0]	// id: 3610, l: 3611	
	ldr	 w0, [sp, #716]	// id: 3611, l: 3612	
	add	 w0, w0, #0x12	// id: 3612, l: 3613	
	sxtw	 x0, w0	// id: 3613, l: 3614	
	lsl	 x0, x0, #3	// id: 3614, l: 3615	
	ldr	 x1, [sp, #8]	// id: 3615, l: 3616	
	add	 x0, x1, x0	// id: 3616, l: 3617	
	ldr	 d0, [x0]	// id: 3617, l: 3618	
	fsub	 d1, d1, d0	// id: 3618, l: 3619	
	fmov	 d0, #5.000000000000000000e-01	// id: 3619, l: 3620	
	fmul	 d0, d1, d0	// id: 3620, l: 3621	
	str	 d0, [sp, #464]	// id: 3621, l: 3622	
	ldr	 d0, [sp, #464]	// id: 3622, l: 3623	
	fneg	 d0, d0	// id: 3623, l: 3624	
	str	 d0, [sp, #488]	// id: 3624, l: 3625	
	ldr	 w0, [sp, #716]	// id: 3625, l: 3626	
	add	 w0, w0, #0x10	// id: 3626, l: 3627	
	sxtw	 x0, w0	// id: 3627, l: 3628	
	lsl	 x0, x0, #3	// id: 3628, l: 3629	
	ldr	 x1, [sp, #8]	// id: 3629, l: 3630	
	add	 x0, x1, x0	// id: 3630, l: 3631	
	ldr	 d1, [x0]	// id: 3631, l: 3632	
	ldr	 w0, [sp, #716]	// id: 3632, l: 3633	
	add	 w0, w0, #0x11	// id: 3633, l: 3634	
	sxtw	 x0, w0	// id: 3634, l: 3635	
	lsl	 x0, x0, #3	// id: 3635, l: 3636	
	ldr	 x1, [sp, #8]	// id: 3636, l: 3637	
	add	 x0, x1, x0	// id: 3637, l: 3638	
	ldr	 d0, [x0]	// id: 3638, l: 3639	
	fsub	 d1, d1, d0	// id: 3639, l: 3640	
	fmov	 d0, #5.000000000000000000e-01	// id: 3640, l: 3641	
	fmul	 d0, d1, d0	// id: 3641, l: 3642	
	str	 d0, [sp, #472]	// id: 3642, l: 3643	
	ldr	 d0, [sp, #472]	// id: 3643, l: 3644	
	fneg	 d0, d0	// id: 3644, l: 3645	
	str	 d0, [sp, #480]	// id: 3645, l: 3646	
	ldrsw	 x0, [sp, #716]	// id: 3646, l: 3647	
	lsl	 x0, x0, #3	// id: 3647, l: 3648	
	ldr	 x1, [sp, #8]	// id: 3648, l: 3649	
	add	 x0, x1, x0	// id: 3649, l: 3650	
	ldr	 d1, [x0]	// id: 3650, l: 3651	
	ldr	 d2, [sp, #504]	// id: 3651, l: 3652	
	ldr	 d0, [sp, #184]	// id: 3652, l: 3653	
	fsub	 d0, d2, d0	// id: 3653, l: 3654	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 3654, l: 3655	
	movk	 x0, #0x3fff, lsl #48	// id: 3655, l: 3656	
	fmov	 d2, x0	// id: 3656, l: 3657	
	fmul	 d0, d0, d2	// id: 3657, l: 3658	
	ldrsw	 x0, [sp, #716]	// id: 3658, l: 3659	
	lsl	 x0, x0, #3	// id: 3659, l: 3660	
	ldr	 x1, [sp]	// id: 3660, l: 3661	
	add	 x0, x1, x0	// id: 3661, l: 3662	
	fsub	 d0, d1, d0	// id: 3662, l: 3663	
	str	 d0, [x0]	// id: 3663, l: 3664	
	ldr	 w0, [sp, #716]	// id: 3664, l: 3665	
	add	 w0, w0, #0x1	// id: 3665, l: 3666	
	sxtw	 x0, w0	// id: 3666, l: 3667	
	lsl	 x0, x0, #3	// id: 3667, l: 3668	
	ldr	 x1, [sp, #8]	// id: 3668, l: 3669	
	add	 x0, x1, x0	// id: 3669, l: 3670	
	ldr	 d1, [x0]	// id: 3670, l: 3671	
	ldr	 d2, [sp, #512]	// id: 3671, l: 3672	
	ldr	 d0, [sp, #192]	// id: 3672, l: 3673	
	fsub	 d0, d2, d0	// id: 3673, l: 3674	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 3674, l: 3675	
	movk	 x0, #0x3fff, lsl #48	// id: 3675, l: 3676	
	fmov	 d2, x0	// id: 3676, l: 3677	
	fmul	 d0, d0, d2	// id: 3677, l: 3678	
	fsub	 d1, d1, d0	// id: 3678, l: 3679	
	ldr	 d2, [sp, #352]	// id: 3679, l: 3680	
	ldr	 d0, [sp, #32]	// id: 3680, l: 3681	
	fsub	 d2, d2, d0	// id: 3681, l: 3682	
	ldr	 d0, [sp, #680]	// id: 3682, l: 3683	
	fmul	 d0, d2, d0	// id: 3683, l: 3684	
	ldr	 w0, [sp, #716]	// id: 3684, l: 3685	
	add	 w0, w0, #0x7d1	// id: 3685, l: 3686	
	sxtw	 x0, w0	// id: 3686, l: 3687	
	lsl	 x0, x0, #3	// id: 3687, l: 3688	
	ldr	 x1, [sp]	// id: 3688, l: 3689	
	add	 x0, x1, x0	// id: 3689, l: 3690	
	fsub	 d0, d1, d0	// id: 3690, l: 3691	
	str	 d0, [x0]	// id: 3691, l: 3692	
	ldr	 w0, [sp, #716]	// id: 3692, l: 3693	
	add	 w0, w0, #0x2	// id: 3693, l: 3694	
	sxtw	 x0, w0	// id: 3694, l: 3695	
	lsl	 x0, x0, #3	// id: 3695, l: 3696	
	ldr	 x1, [sp, #8]	// id: 3696, l: 3697	
	add	 x0, x1, x0	// id: 3697, l: 3698	
	ldr	 d1, [x0]	// id: 3698, l: 3699	
	ldr	 d2, [sp, #520]	// id: 3699, l: 3700	
	ldr	 d0, [sp, #200]	// id: 3700, l: 3701	
	fsub	 d0, d2, d0	// id: 3701, l: 3702	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 3702, l: 3703	
	movk	 x0, #0x3fff, lsl #48	// id: 3703, l: 3704	
	fmov	 d2, x0	// id: 3704, l: 3705	
	fmul	 d0, d0, d2	// id: 3705, l: 3706	
	fsub	 d1, d1, d0	// id: 3706, l: 3707	
	ldr	 d2, [sp, #360]	// id: 3707, l: 3708	
	ldr	 d0, [sp, #40]	// id: 3708, l: 3709	
	fsub	 d2, d2, d0	// id: 3709, l: 3710	
	ldr	 d0, [sp, #680]	// id: 3710, l: 3711	
	fmul	 d0, d2, d0	// id: 3711, l: 3712	
	ldr	 w0, [sp, #716]	// id: 3712, l: 3713	
	sub	 w0, w0, #0x7ce	// id: 3713, l: 3714	
	sxtw	 x0, w0	// id: 3714, l: 3715	
	lsl	 x0, x0, #3	// id: 3715, l: 3716	
	ldr	 x1, [sp]	// id: 3716, l: 3717	
	add	 x0, x1, x0	// id: 3717, l: 3718	
	fsub	 d0, d1, d0	// id: 3718, l: 3719	
	str	 d0, [x0]	// id: 3719, l: 3720	
	ldr	 w0, [sp, #716]	// id: 3720, l: 3721	
	add	 w0, w0, #0x3	// id: 3721, l: 3722	
	sxtw	 x0, w0	// id: 3722, l: 3723	
	lsl	 x0, x0, #3	// id: 3723, l: 3724	
	ldr	 x1, [sp, #8]	// id: 3724, l: 3725	
	add	 x0, x1, x0	// id: 3725, l: 3726	
	ldr	 d1, [x0]	// id: 3726, l: 3727	
	ldr	 d2, [sp, #528]	// id: 3727, l: 3728	
	ldr	 d0, [sp, #208]	// id: 3728, l: 3729	
	fsub	 d0, d2, d0	// id: 3729, l: 3730	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 3730, l: 3731	
	movk	 x0, #0x3fff, lsl #48	// id: 3731, l: 3732	
	fmov	 d2, x0	// id: 3732, l: 3733	
	fmul	 d0, d0, d2	// id: 3733, l: 3734	
	fsub	 d1, d1, d0	// id: 3734, l: 3735	
	ldr	 d2, [sp, #368]	// id: 3735, l: 3736	
	ldr	 d0, [sp, #48]	// id: 3736, l: 3737	
	fsub	 d2, d2, d0	// id: 3737, l: 3738	
	ldr	 d0, [sp, #680]	// id: 3738, l: 3739	
	fmul	 d0, d2, d0	// id: 3739, l: 3740	
	ldr	 w0, [sp, #716]	// id: 3740, l: 3741	
	add	 w0, w0, #0x17	// id: 3741, l: 3742	
	sxtw	 x0, w0	// id: 3742, l: 3743	
	lsl	 x0, x0, #3	// id: 3743, l: 3744	
	ldr	 x1, [sp]	// id: 3744, l: 3745	
	add	 x0, x1, x0	// id: 3745, l: 3746	
	fsub	 d0, d1, d0	// id: 3746, l: 3747	
	str	 d0, [x0]	// id: 3747, l: 3748	
	ldr	 w0, [sp, #716]	// id: 3748, l: 3749	
	add	 w0, w0, #0x4	// id: 3749, l: 3750	
	sxtw	 x0, w0	// id: 3750, l: 3751	
	lsl	 x0, x0, #3	// id: 3751, l: 3752	
	ldr	 x1, [sp, #8]	// id: 3752, l: 3753	
	add	 x0, x1, x0	// id: 3753, l: 3754	
	ldr	 d1, [x0]	// id: 3754, l: 3755	
	ldr	 d2, [sp, #536]	// id: 3755, l: 3756	
	ldr	 d0, [sp, #216]	// id: 3756, l: 3757	
	fsub	 d0, d2, d0	// id: 3757, l: 3758	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 3758, l: 3759	
	movk	 x0, #0x3fff, lsl #48	// id: 3759, l: 3760	
	fmov	 d2, x0	// id: 3760, l: 3761	
	fmul	 d0, d0, d2	// id: 3761, l: 3762	
	fsub	 d1, d1, d0	// id: 3762, l: 3763	
	ldr	 d2, [sp, #376]	// id: 3763, l: 3764	
	ldr	 d0, [sp, #56]	// id: 3764, l: 3765	
	fsub	 d2, d2, d0	// id: 3765, l: 3766	
	ldr	 d0, [sp, #680]	// id: 3766, l: 3767	
	fmul	 d0, d2, d0	// id: 3767, l: 3768	
	ldr	 w0, [sp, #716]	// id: 3768, l: 3769	
	sub	 w0, w0, #0x10	// id: 3769, l: 3770	
	sxtw	 x0, w0	// id: 3770, l: 3771	
	lsl	 x0, x0, #3	// id: 3771, l: 3772	
	ldr	 x1, [sp]	// id: 3772, l: 3773	
	add	 x0, x1, x0	// id: 3773, l: 3774	
	fsub	 d0, d1, d0	// id: 3774, l: 3775	
	str	 d0, [x0]	// id: 3775, l: 3776	
	ldr	 w0, [sp, #716]	// id: 3776, l: 3777	
	add	 w0, w0, #0x5	// id: 3777, l: 3778	
	sxtw	 x0, w0	// id: 3778, l: 3779	
	lsl	 x0, x0, #3	// id: 3779, l: 3780	
	ldr	 x1, [sp, #8]	// id: 3780, l: 3781	
	add	 x0, x1, x0	// id: 3781, l: 3782	
	ldr	 d1, [x0]	// id: 3782, l: 3783	
	ldr	 d2, [sp, #544]	// id: 3783, l: 3784	
	ldr	 d0, [sp, #224]	// id: 3784, l: 3785	
	fsub	 d0, d2, d0	// id: 3785, l: 3786	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 3786, l: 3787	
	movk	 x0, #0x3fff, lsl #48	// id: 3787, l: 3788	
	fmov	 d2, x0	// id: 3788, l: 3789	
	fmul	 d0, d0, d2	// id: 3789, l: 3790	
	fsub	 d1, d1, d0	// id: 3790, l: 3791	
	ldr	 d2, [sp, #384]	// id: 3791, l: 3792	
	ldr	 d0, [sp, #64]	// id: 3792, l: 3793	
	fsub	 d2, d2, d0	// id: 3793, l: 3794	
	ldr	 d0, [sp, #680]	// id: 3794, l: 3795	
	fmul	 d0, d2, d0	// id: 3795, l: 3796	
	ldr	 w1, [sp, #716]	// id: 3796, l: 3797	
	mov	 w0, #0xd45                 	// #3397	// id: 3797, l: 3798	
	movk	 w0, #0x3, lsl #16	// id: 3798, l: 3799	
	add	 w0, w1, w0	// id: 3799, l: 3800	
	sxtw	 x0, w0	// id: 3800, l: 3801	
	lsl	 x0, x0, #3	// id: 3801, l: 3802	
	ldr	 x1, [sp]	// id: 3802, l: 3803	
	add	 x0, x1, x0	// id: 3803, l: 3804	
	fsub	 d0, d1, d0	// id: 3804, l: 3805	
	str	 d0, [x0]	// id: 3805, l: 3806	
	ldr	 w0, [sp, #716]	// id: 3806, l: 3807	
	add	 w0, w0, #0x6	// id: 3807, l: 3808	
	sxtw	 x0, w0	// id: 3808, l: 3809	
	lsl	 x0, x0, #3	// id: 3809, l: 3810	
	ldr	 x1, [sp, #8]	// id: 3810, l: 3811	
	add	 x0, x1, x0	// id: 3811, l: 3812	
	ldr	 d1, [x0]	// id: 3812, l: 3813	
	ldr	 d2, [sp, #552]	// id: 3813, l: 3814	
	ldr	 d0, [sp, #232]	// id: 3814, l: 3815	
	fsub	 d0, d2, d0	// id: 3815, l: 3816	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 3816, l: 3817	
	movk	 x0, #0x3fff, lsl #48	// id: 3817, l: 3818	
	fmov	 d2, x0	// id: 3818, l: 3819	
	fmul	 d0, d0, d2	// id: 3819, l: 3820	
	fsub	 d1, d1, d0	// id: 3820, l: 3821	
	ldr	 d2, [sp, #392]	// id: 3821, l: 3822	
	ldr	 d0, [sp, #72]	// id: 3822, l: 3823	
	fsub	 d2, d2, d0	// id: 3823, l: 3824	
	ldr	 d0, [sp, #680]	// id: 3824, l: 3825	
	fmul	 d0, d2, d0	// id: 3825, l: 3826	
	ldr	 w1, [sp, #716]	// id: 3826, l: 3827	
	mov	 w0, #0xf2c6                	// #62150	// id: 3827, l: 3828	
	movk	 w0, #0xfffc, lsl #16	// id: 3828, l: 3829	
	add	 w0, w1, w0	// id: 3829, l: 3830	
	sxtw	 x0, w0	// id: 3830, l: 3831	
	lsl	 x0, x0, #3	// id: 3831, l: 3832	
	ldr	 x1, [sp]	// id: 3832, l: 3833	
	add	 x0, x1, x0	// id: 3833, l: 3834	
	fsub	 d0, d1, d0	// id: 3834, l: 3835	
	str	 d0, [x0]	// id: 3835, l: 3836	
	ldr	 w0, [sp, #716]	// id: 3836, l: 3837	
	add	 w0, w0, #0x7	// id: 3837, l: 3838	
	sxtw	 x0, w0	// id: 3838, l: 3839	
	lsl	 x0, x0, #3	// id: 3839, l: 3840	
	ldr	 x1, [sp, #8]	// id: 3840, l: 3841	
	add	 x0, x1, x0	// id: 3841, l: 3842	
	ldr	 d1, [x0]	// id: 3842, l: 3843	
	ldr	 d2, [sp, #560]	// id: 3843, l: 3844	
	ldr	 d0, [sp, #240]	// id: 3844, l: 3845	
	fsub	 d0, d2, d0	// id: 3845, l: 3846	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 3846, l: 3847	
	movk	 x0, #0x3fff, lsl #48	// id: 3847, l: 3848	
	fmov	 d2, x0	// id: 3848, l: 3849	
	fmul	 d0, d0, d2	// id: 3849, l: 3850	
	fsub	 d1, d1, d0	// id: 3850, l: 3851	
	ldr	 d2, [sp, #400]	// id: 3851, l: 3852	
	ldr	 d0, [sp, #80]	// id: 3852, l: 3853	
	fsub	 d2, d2, d0	// id: 3853, l: 3854	
	ldr	 d0, [sp, #680]	// id: 3854, l: 3855	
	fmul	 d0, d2, d0	// id: 3855, l: 3856	
	ldr	 w0, [sp, #716]	// id: 3856, l: 3857	
	add	 w0, w0, #0x7eb	// id: 3857, l: 3858	
	sxtw	 x0, w0	// id: 3858, l: 3859	
	lsl	 x0, x0, #3	// id: 3859, l: 3860	
	ldr	 x1, [sp]	// id: 3860, l: 3861	
	add	 x0, x1, x0	// id: 3861, l: 3862	
	fsub	 d0, d1, d0	// id: 3862, l: 3863	
	str	 d0, [x0]	// id: 3863, l: 3864	
	ldr	 w0, [sp, #716]	// id: 3864, l: 3865	
	add	 w0, w0, #0x8	// id: 3865, l: 3866	
	sxtw	 x0, w0	// id: 3866, l: 3867	
	lsl	 x0, x0, #3	// id: 3867, l: 3868	
	ldr	 x1, [sp, #8]	// id: 3868, l: 3869	
	add	 x0, x1, x0	// id: 3869, l: 3870	
	ldr	 d1, [x0]	// id: 3870, l: 3871	
	ldr	 d2, [sp, #568]	// id: 3871, l: 3872	
	ldr	 d0, [sp, #248]	// id: 3872, l: 3873	
	fsub	 d0, d2, d0	// id: 3873, l: 3874	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 3874, l: 3875	
	movk	 x0, #0x3fff, lsl #48	// id: 3875, l: 3876	
	fmov	 d2, x0	// id: 3876, l: 3877	
	fmul	 d0, d0, d2	// id: 3877, l: 3878	
	fsub	 d1, d1, d0	// id: 3878, l: 3879	
	ldr	 d2, [sp, #408]	// id: 3879, l: 3880	
	ldr	 d0, [sp, #88]	// id: 3880, l: 3881	
	fsub	 d2, d2, d0	// id: 3881, l: 3882	
	ldr	 d0, [sp, #680]	// id: 3882, l: 3883	
	fmul	 d0, d2, d0	// id: 3883, l: 3884	
	ldr	 w0, [sp, #716]	// id: 3884, l: 3885	
	add	 w0, w0, #0x7c4	// id: 3885, l: 3886	
	sxtw	 x0, w0	// id: 3886, l: 3887	
	lsl	 x0, x0, #3	// id: 3887, l: 3888	
	ldr	 x1, [sp]	// id: 3888, l: 3889	
	add	 x0, x1, x0	// id: 3889, l: 3890	
	fsub	 d0, d1, d0	// id: 3890, l: 3891	
	str	 d0, [x0]	// id: 3891, l: 3892	
	ldr	 w0, [sp, #716]	// id: 3892, l: 3893	
	add	 w0, w0, #0x9	// id: 3893, l: 3894	
	sxtw	 x0, w0	// id: 3894, l: 3895	
	lsl	 x0, x0, #3	// id: 3895, l: 3896	
	ldr	 x1, [sp, #8]	// id: 3896, l: 3897	
	add	 x0, x1, x0	// id: 3897, l: 3898	
	ldr	 d1, [x0]	// id: 3898, l: 3899	
	ldr	 d2, [sp, #576]	// id: 3899, l: 3900	
	ldr	 d0, [sp, #256]	// id: 3900, l: 3901	
	fsub	 d0, d2, d0	// id: 3901, l: 3902	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 3902, l: 3903	
	movk	 x0, #0x3fff, lsl #48	// id: 3903, l: 3904	
	fmov	 d2, x0	// id: 3904, l: 3905	
	fmul	 d0, d0, d2	// id: 3905, l: 3906	
	fsub	 d1, d1, d0	// id: 3906, l: 3907	
	ldr	 d2, [sp, #416]	// id: 3907, l: 3908	
	ldr	 d0, [sp, #96]	// id: 3908, l: 3909	
	fsub	 d2, d2, d0	// id: 3909, l: 3910	
	ldr	 d0, [sp, #680]	// id: 3910, l: 3911	
	fmul	 d0, d2, d0	// id: 3911, l: 3912	
	ldr	 w0, [sp, #716]	// id: 3912, l: 3913	
	sub	 w0, w0, #0x7b3	// id: 3913, l: 3914	
	sxtw	 x0, w0	// id: 3914, l: 3915	
	lsl	 x0, x0, #3	// id: 3915, l: 3916	
	ldr	 x1, [sp]	// id: 3916, l: 3917	
	add	 x0, x1, x0	// id: 3917, l: 3918	
	fsub	 d0, d1, d0	// id: 3918, l: 3919	
	str	 d0, [x0]	// id: 3919, l: 3920	
	ldr	 w0, [sp, #716]	// id: 3920, l: 3921	
	add	 w0, w0, #0xa	// id: 3921, l: 3922	
	sxtw	 x0, w0	// id: 3922, l: 3923	
	lsl	 x0, x0, #3	// id: 3923, l: 3924	
	ldr	 x1, [sp, #8]	// id: 3924, l: 3925	
	add	 x0, x1, x0	// id: 3925, l: 3926	
	ldr	 d1, [x0]	// id: 3926, l: 3927	
	ldr	 d2, [sp, #584]	// id: 3927, l: 3928	
	ldr	 d0, [sp, #264]	// id: 3928, l: 3929	
	fsub	 d0, d2, d0	// id: 3929, l: 3930	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 3930, l: 3931	
	movk	 x0, #0x3fff, lsl #48	// id: 3931, l: 3932	
	fmov	 d2, x0	// id: 3932, l: 3933	
	fmul	 d0, d0, d2	// id: 3933, l: 3934	
	fsub	 d1, d1, d0	// id: 3934, l: 3935	
	ldr	 d2, [sp, #424]	// id: 3935, l: 3936	
	ldr	 d0, [sp, #104]	// id: 3936, l: 3937	
	fsub	 d2, d2, d0	// id: 3937, l: 3938	
	ldr	 d0, [sp, #680]	// id: 3938, l: 3939	
	fmul	 d0, d2, d0	// id: 3939, l: 3940	
	ldr	 w0, [sp, #716]	// id: 3940, l: 3941	
	sub	 w0, w0, #0x7da	// id: 3941, l: 3942	
	sxtw	 x0, w0	// id: 3942, l: 3943	
	lsl	 x0, x0, #3	// id: 3943, l: 3944	
	ldr	 x1, [sp]	// id: 3944, l: 3945	
	add	 x0, x1, x0	// id: 3945, l: 3946	
	fsub	 d0, d1, d0	// id: 3946, l: 3947	
	str	 d0, [x0]	// id: 3947, l: 3948	
	ldr	 w0, [sp, #716]	// id: 3948, l: 3949	
	add	 w0, w0, #0xb	// id: 3949, l: 3950	
	sxtw	 x0, w0	// id: 3950, l: 3951	
	lsl	 x0, x0, #3	// id: 3951, l: 3952	
	ldr	 x1, [sp, #8]	// id: 3952, l: 3953	
	add	 x0, x1, x0	// id: 3953, l: 3954	
	ldr	 d1, [x0]	// id: 3954, l: 3955	
	ldr	 d2, [sp, #592]	// id: 3955, l: 3956	
	ldr	 d0, [sp, #272]	// id: 3956, l: 3957	
	fsub	 d0, d2, d0	// id: 3957, l: 3958	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 3958, l: 3959	
	movk	 x0, #0x3fff, lsl #48	// id: 3959, l: 3960	
	fmov	 d2, x0	// id: 3960, l: 3961	
	fmul	 d0, d0, d2	// id: 3961, l: 3962	
	fsub	 d1, d1, d0	// id: 3962, l: 3963	
	ldr	 d2, [sp, #432]	// id: 3963, l: 3964	
	ldr	 d0, [sp, #112]	// id: 3964, l: 3965	
	fsub	 d2, d2, d0	// id: 3965, l: 3966	
	ldr	 d0, [sp, #680]	// id: 3966, l: 3967	
	fmul	 d0, d2, d0	// id: 3967, l: 3968	
	ldr	 w1, [sp, #716]	// id: 3968, l: 3969	
	mov	 w0, #0x151b                	// #5403	// id: 3969, l: 3970	
	movk	 w0, #0x3, lsl #16	// id: 3970, l: 3971	
	add	 w0, w1, w0	// id: 3971, l: 3972	
	sxtw	 x0, w0	// id: 3972, l: 3973	
	lsl	 x0, x0, #3	// id: 3973, l: 3974	
	ldr	 x1, [sp]	// id: 3974, l: 3975	
	add	 x0, x1, x0	// id: 3975, l: 3976	
	fsub	 d0, d1, d0	// id: 3976, l: 3977	
	str	 d0, [x0]	// id: 3977, l: 3978	
	ldr	 w0, [sp, #716]	// id: 3978, l: 3979	
	add	 w0, w0, #0xc	// id: 3979, l: 3980	
	sxtw	 x0, w0	// id: 3980, l: 3981	
	lsl	 x0, x0, #3	// id: 3981, l: 3982	
	ldr	 x1, [sp, #8]	// id: 3982, l: 3983	
	add	 x0, x1, x0	// id: 3983, l: 3984	
	ldr	 d1, [x0]	// id: 3984, l: 3985	
	ldr	 d2, [sp, #600]	// id: 3985, l: 3986	
	ldr	 d0, [sp, #280]	// id: 3986, l: 3987	
	fsub	 d0, d2, d0	// id: 3987, l: 3988	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 3988, l: 3989	
	movk	 x0, #0x3fff, lsl #48	// id: 3989, l: 3990	
	fmov	 d2, x0	// id: 3990, l: 3991	
	fmul	 d0, d0, d2	// id: 3991, l: 3992	
	fsub	 d1, d1, d0	// id: 3992, l: 3993	
	ldr	 d2, [sp, #440]	// id: 3993, l: 3994	
	ldr	 d0, [sp, #120]	// id: 3994, l: 3995	
	fsub	 d2, d2, d0	// id: 3995, l: 3996	
	ldr	 d0, [sp, #680]	// id: 3996, l: 3997	
	fmul	 d0, d2, d0	// id: 3997, l: 3998	
	ldr	 w1, [sp, #716]	// id: 3998, l: 3999	
	mov	 w0, #0xfa9c                	// #64156	// id: 3999, l: 4000	
	movk	 w0, #0xfffc, lsl #16	// id: 4000, l: 4001	
	add	 w0, w1, w0	// id: 4001, l: 4002	
	sxtw	 x0, w0	// id: 4002, l: 4003	
	lsl	 x0, x0, #3	// id: 4003, l: 4004	
	ldr	 x1, [sp]	// id: 4004, l: 4005	
	add	 x0, x1, x0	// id: 4005, l: 4006	
	fsub	 d0, d1, d0	// id: 4006, l: 4007	
	str	 d0, [x0]	// id: 4007, l: 4008	
	ldr	 w0, [sp, #716]	// id: 4008, l: 4009	
	add	 w0, w0, #0xd	// id: 4009, l: 4010	
	sxtw	 x0, w0	// id: 4010, l: 4011	
	lsl	 x0, x0, #3	// id: 4011, l: 4012	
	ldr	 x1, [sp, #8]	// id: 4012, l: 4013	
	add	 x0, x1, x0	// id: 4013, l: 4014	
	ldr	 d1, [x0]	// id: 4014, l: 4015	
	ldr	 d2, [sp, #608]	// id: 4015, l: 4016	
	ldr	 d0, [sp, #288]	// id: 4016, l: 4017	
	fsub	 d0, d2, d0	// id: 4017, l: 4018	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 4018, l: 4019	
	movk	 x0, #0x3fff, lsl #48	// id: 4019, l: 4020	
	fmov	 d2, x0	// id: 4020, l: 4021	
	fmul	 d0, d0, d2	// id: 4021, l: 4022	
	fsub	 d1, d1, d0	// id: 4022, l: 4023	
	ldr	 d2, [sp, #448]	// id: 4023, l: 4024	
	ldr	 d0, [sp, #128]	// id: 4024, l: 4025	
	fsub	 d2, d2, d0	// id: 4025, l: 4026	
	ldr	 d0, [sp, #680]	// id: 4026, l: 4027	
	fmul	 d0, d2, d0	// id: 4027, l: 4028	
	ldr	 w1, [sp, #716]	// id: 4028, l: 4029	
	mov	 w0, #0x57d                 	// #1405	// id: 4029, l: 4030	
	movk	 w0, #0x3, lsl #16	// id: 4030, l: 4031	
	add	 w0, w1, w0	// id: 4031, l: 4032	
	sxtw	 x0, w0	// id: 4032, l: 4033	
	lsl	 x0, x0, #3	// id: 4033, l: 4034	
	ldr	 x1, [sp]	// id: 4034, l: 4035	
	add	 x0, x1, x0	// id: 4035, l: 4036	
	fsub	 d0, d1, d0	// id: 4036, l: 4037	
	str	 d0, [x0]	// id: 4037, l: 4038	
	ldr	 w0, [sp, #716]	// id: 4038, l: 4039	
	add	 w0, w0, #0xe	// id: 4039, l: 4040	
	sxtw	 x0, w0	// id: 4040, l: 4041	
	lsl	 x0, x0, #3	// id: 4041, l: 4042	
	ldr	 x1, [sp, #8]	// id: 4042, l: 4043	
	add	 x0, x1, x0	// id: 4043, l: 4044	
	ldr	 d1, [x0]	// id: 4044, l: 4045	
	ldr	 d2, [sp, #616]	// id: 4045, l: 4046	
	ldr	 d0, [sp, #296]	// id: 4046, l: 4047	
	fsub	 d0, d2, d0	// id: 4047, l: 4048	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 4048, l: 4049	
	movk	 x0, #0x3fff, lsl #48	// id: 4049, l: 4050	
	fmov	 d2, x0	// id: 4050, l: 4051	
	fmul	 d0, d0, d2	// id: 4051, l: 4052	
	fsub	 d1, d1, d0	// id: 4052, l: 4053	
	ldr	 d2, [sp, #456]	// id: 4053, l: 4054	
	ldr	 d0, [sp, #136]	// id: 4054, l: 4055	
	fsub	 d2, d2, d0	// id: 4055, l: 4056	
	ldr	 d0, [sp, #680]	// id: 4056, l: 4057	
	fmul	 d0, d2, d0	// id: 4057, l: 4058	
	ldr	 w1, [sp, #716]	// id: 4058, l: 4059	
	mov	 w0, #0xeafe                	// #60158	// id: 4059, l: 4060	
	movk	 w0, #0xfffc, lsl #16	// id: 4060, l: 4061	
	add	 w0, w1, w0	// id: 4061, l: 4062	
	sxtw	 x0, w0	// id: 4062, l: 4063	
	lsl	 x0, x0, #3	// id: 4063, l: 4064	
	ldr	 x1, [sp]	// id: 4064, l: 4065	
	add	 x0, x1, x0	// id: 4065, l: 4066	
	fsub	 d0, d1, d0	// id: 4066, l: 4067	
	str	 d0, [x0]	// id: 4067, l: 4068	
	ldr	 w0, [sp, #716]	// id: 4068, l: 4069	
	add	 w0, w0, #0xf	// id: 4069, l: 4070	
	sxtw	 x0, w0	// id: 4070, l: 4071	
	lsl	 x0, x0, #3	// id: 4071, l: 4072	
	ldr	 x1, [sp, #8]	// id: 4072, l: 4073	
	add	 x0, x1, x0	// id: 4073, l: 4074	
	ldr	 d1, [x0]	// id: 4074, l: 4075	
	ldr	 d2, [sp, #624]	// id: 4075, l: 4076	
	ldr	 d0, [sp, #304]	// id: 4076, l: 4077	
	fsub	 d0, d2, d0	// id: 4077, l: 4078	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 4078, l: 4079	
	movk	 x0, #0x3fff, lsl #48	// id: 4079, l: 4080	
	fmov	 d2, x0	// id: 4080, l: 4081	
	fmul	 d0, d0, d2	// id: 4081, l: 4082	
	fsub	 d1, d1, d0	// id: 4082, l: 4083	
	ldr	 d2, [sp, #464]	// id: 4083, l: 4084	
	ldr	 d0, [sp, #144]	// id: 4084, l: 4085	
	fsub	 d2, d2, d0	// id: 4085, l: 4086	
	ldr	 d0, [sp, #680]	// id: 4086, l: 4087	
	fmul	 d0, d2, d0	// id: 4087, l: 4088	
	ldr	 w1, [sp, #716]	// id: 4088, l: 4089	
	mov	 w0, #0xd63                 	// #3427	// id: 4089, l: 4090	
	movk	 w0, #0x3, lsl #16	// id: 4090, l: 4091	
	add	 w0, w1, w0	// id: 4091, l: 4092	
	sxtw	 x0, w0	// id: 4092, l: 4093	
	lsl	 x0, x0, #3	// id: 4093, l: 4094	
	ldr	 x1, [sp]	// id: 4094, l: 4095	
	add	 x0, x1, x0	// id: 4095, l: 4096	
	fsub	 d0, d1, d0	// id: 4096, l: 4097	
	str	 d0, [x0]	// id: 4097, l: 4098	
	ldr	 w0, [sp, #716]	// id: 4098, l: 4099	
	add	 w0, w0, #0x10	// id: 4099, l: 4100	
	sxtw	 x0, w0	// id: 4100, l: 4101	
	lsl	 x0, x0, #3	// id: 4101, l: 4102	
	ldr	 x1, [sp, #8]	// id: 4102, l: 4103	
	add	 x0, x1, x0	// id: 4103, l: 4104	
	ldr	 d1, [x0]	// id: 4104, l: 4105	
	ldr	 d2, [sp, #632]	// id: 4105, l: 4106	
	ldr	 d0, [sp, #312]	// id: 4106, l: 4107	
	fsub	 d0, d2, d0	// id: 4107, l: 4108	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 4108, l: 4109	
	movk	 x0, #0x3fff, lsl #48	// id: 4109, l: 4110	
	fmov	 d2, x0	// id: 4110, l: 4111	
	fmul	 d0, d0, d2	// id: 4111, l: 4112	
	fsub	 d1, d1, d0	// id: 4112, l: 4113	
	ldr	 d2, [sp, #472]	// id: 4113, l: 4114	
	ldr	 d0, [sp, #152]	// id: 4114, l: 4115	
	fsub	 d2, d2, d0	// id: 4115, l: 4116	
	ldr	 d0, [sp, #680]	// id: 4116, l: 4117	
	fmul	 d0, d2, d0	// id: 4117, l: 4118	
	ldr	 w1, [sp, #716]	// id: 4118, l: 4119	
	mov	 w0, #0xf2e4                	// #62180	// id: 4119, l: 4120	
	movk	 w0, #0xfffc, lsl #16	// id: 4120, l: 4121	
	add	 w0, w1, w0	// id: 4121, l: 4122	
	sxtw	 x0, w0	// id: 4122, l: 4123	
	lsl	 x0, x0, #3	// id: 4123, l: 4124	
	ldr	 x1, [sp]	// id: 4124, l: 4125	
	add	 x0, x1, x0	// id: 4125, l: 4126	
	fsub	 d0, d1, d0	// id: 4126, l: 4127	
	str	 d0, [x0]	// id: 4127, l: 4128	
	ldr	 w0, [sp, #716]	// id: 4128, l: 4129	
	add	 w0, w0, #0x11	// id: 4129, l: 4130	
	sxtw	 x0, w0	// id: 4130, l: 4131	
	lsl	 x0, x0, #3	// id: 4131, l: 4132	
	ldr	 x1, [sp, #8]	// id: 4132, l: 4133	
	add	 x0, x1, x0	// id: 4133, l: 4134	
	ldr	 d1, [x0]	// id: 4134, l: 4135	
	ldr	 d2, [sp, #640]	// id: 4135, l: 4136	
	ldr	 d0, [sp, #320]	// id: 4136, l: 4137	
	fsub	 d0, d2, d0	// id: 4137, l: 4138	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 4138, l: 4139	
	movk	 x0, #0x3fff, lsl #48	// id: 4139, l: 4140	
	fmov	 d2, x0	// id: 4140, l: 4141	
	fmul	 d0, d0, d2	// id: 4141, l: 4142	
	fsub	 d1, d1, d0	// id: 4142, l: 4143	
	ldr	 d2, [sp, #480]	// id: 4143, l: 4144	
	ldr	 d0, [sp, #160]	// id: 4144, l: 4145	
	fsub	 d2, d2, d0	// id: 4145, l: 4146	
	ldr	 d0, [sp, #680]	// id: 4146, l: 4147	
	fmul	 d0, d2, d0	// id: 4147, l: 4148	
	ldr	 w1, [sp, #716]	// id: 4148, l: 4149	
	mov	 w0, #0xd3d                 	// #3389	// id: 4149, l: 4150	
	movk	 w0, #0x3, lsl #16	// id: 4150, l: 4151	
	add	 w0, w1, w0	// id: 4151, l: 4152	
	sxtw	 x0, w0	// id: 4152, l: 4153	
	lsl	 x0, x0, #3	// id: 4153, l: 4154	
	ldr	 x1, [sp]	// id: 4154, l: 4155	
	add	 x0, x1, x0	// id: 4155, l: 4156	
	fsub	 d0, d1, d0	// id: 4156, l: 4157	
	str	 d0, [x0]	// id: 4157, l: 4158	
	ldr	 w0, [sp, #716]	// id: 4158, l: 4159	
	add	 w0, w0, #0x12	// id: 4159, l: 4160	
	sxtw	 x0, w0	// id: 4160, l: 4161	
	lsl	 x0, x0, #3	// id: 4161, l: 4162	
	ldr	 x1, [sp, #8]	// id: 4162, l: 4163	
	add	 x0, x1, x0	// id: 4163, l: 4164	
	ldr	 d1, [x0]	// id: 4164, l: 4165	
	ldr	 d2, [sp, #648]	// id: 4165, l: 4166	
	ldr	 d0, [sp, #328]	// id: 4166, l: 4167	
	fsub	 d0, d2, d0	// id: 4167, l: 4168	
	mov	 x0, #0x3333333333333333    	// #3689348814741910323	// id: 4168, l: 4169	
	movk	 x0, #0x3fff, lsl #48	// id: 4169, l: 4170	
	fmov	 d2, x0	// id: 4170, l: 4171	
	fmul	 d0, d0, d2	// id: 4171, l: 4172	
	fsub	 d1, d1, d0	// id: 4172, l: 4173	
	ldr	 d2, [sp, #488]	// id: 4173, l: 4174	
	ldr	 d0, [sp, #168]	// id: 4174, l: 4175	
	fsub	 d2, d2, d0	// id: 4175, l: 4176	
	ldr	 d0, [sp, #680]	// id: 4176, l: 4177	
	fmul	 d0, d2, d0	// id: 4177, l: 4178	
	ldr	 w1, [sp, #716]	// id: 4178, l: 4179	
	mov	 w0, #0xf2be                	// #62142	// id: 4179, l: 4180	
	movk	 w0, #0xfffc, lsl #16	// id: 4180, l: 4181	
	add	 w0, w1, w0	// id: 4181, l: 4182	
	sxtw	 x0, w0	// id: 4182, l: 4183	
	lsl	 x0, x0, #3	// id: 4183, l: 4184	
	ldr	 x1, [sp]	// id: 4184, l: 4185	
	add	 x0, x1, x0	// id: 4185, l: 4186	
	fsub	 d0, d1, d0	// id: 4186, l: 4187	
	str	 d0, [x0]	// id: 4187, l: 4188	
.L46:	// id: 4188, l: 4189	
	ldr	 w0, [sp, #716]	// id: 4189, l: 4190	
	add	 w0, w0, #0x14	// id: 4190, l: 4191	
	str	 w0, [sp, #716]	// id: 4191, l: 4192	
.L44:	// id: 4192, l: 4193	
	ldr	 w1, [sp, #716]	// id: 4193, l: 4194	
	mov	 w0, #0xba7f                	// #47743	// id: 4194, l: 4195	
	movk	 w0, #0x18c, lsl #16	// id: 4195, l: 4196	
	cmp	 w1, w0	// id: 4196, l: 4197	
	ble	 .L48	// id: 4197, l: 4198	
	nop		// id: 4198, l: 4199	
	nop		// id: 4199, l: 4200	
	add	 sp, sp, #0x2d0	// id: 4200, l: 4201	
	.cfi_def_cfa_offset	0	// id: 4201, l: 4202	
	ret		// id: 4202, l: 4203	
	.cfi_endproc		// id: 4203, l: 4204	
.LFE10:	// id: 4204, l: 4205	
	.size	LBM_performStreamCollideTRT, .-LBM_performStreamCollideTRT	// id: 4205, l: 4206	
	.p2align	2, , 0	// id: 4206, l: 4207	
	.globl	LBM_handleInOutFlow	// id: 4207, l: 4208	
	.type	LBM_handleInOutFlow, %function	// id: 4208, l: 4209	
LBM_handleInOutFlow:	// id: 4209, l: 4210	
.LFB11:	// id: 4210, l: 4211	
	.cfi_startproc		// id: 4211, l: 4212	
	sub	 sp, sp, #0x90	// id: 4212, l: 4213	
	.cfi_def_cfa_offset	144	// id: 4213, l: 4214	
	str	 x0, [sp, #8]	// id: 4214, l: 4215	
	str	 wzr, [sp, #140]	// id: 4215, l: 4216	
	b	 .L50	// id: 4216, l: 4217	
.L51:	// id: 4217, l: 4218	
	ldr	 w1, [sp, #140]	// id: 4218, l: 4219	
	mov	 w0, #0xd40                 	// #3392	// id: 4219, l: 4220	
	movk	 w0, #0x3, lsl #16	// id: 4220, l: 4221	
	add	 w0, w1, w0	// id: 4221, l: 4222	
	sxtw	 x0, w0	// id: 4222, l: 4223	
	lsl	 x0, x0, #3	// id: 4223, l: 4224	
	ldr	 x1, [sp, #8]	// id: 4224, l: 4225	
	add	 x0, x1, x0	// id: 4225, l: 4226	
	ldr	 d1, [x0]	// id: 4226, l: 4227	
	ldr	 w1, [sp, #140]	// id: 4227, l: 4228	
	mov	 w0, #0xd41                 	// #3393	// id: 4228, l: 4229	
	movk	 w0, #0x3, lsl #16	// id: 4229, l: 4230	
	add	 w0, w1, w0	// id: 4230, l: 4231	
	sxtw	 x0, w0	// id: 4231, l: 4232	
	lsl	 x0, x0, #3	// id: 4232, l: 4233	
	ldr	 x1, [sp, #8]	// id: 4233, l: 4234	
	add	 x0, x1, x0	// id: 4234, l: 4235	
	ldr	 d0, [x0]	// id: 4235, l: 4236	
	fadd	 d1, d1, d0	// id: 4236, l: 4237	
	ldr	 w1, [sp, #140]	// id: 4237, l: 4238	
	mov	 w0, #0xd42                 	// #3394	// id: 4238, l: 4239	
	movk	 w0, #0x3, lsl #16	// id: 4239, l: 4240	
	add	 w0, w1, w0	// id: 4240, l: 4241	
	sxtw	 x0, w0	// id: 4241, l: 4242	
	lsl	 x0, x0, #3	// id: 4242, l: 4243	
	ldr	 x1, [sp, #8]	// id: 4243, l: 4244	
	add	 x0, x1, x0	// id: 4244, l: 4245	
	ldr	 d0, [x0]	// id: 4245, l: 4246	
	fadd	 d1, d1, d0	// id: 4246, l: 4247	
	ldr	 w1, [sp, #140]	// id: 4247, l: 4248	
	mov	 w0, #0xd43                 	// #3395	// id: 4248, l: 4249	
	movk	 w0, #0x3, lsl #16	// id: 4249, l: 4250	
	add	 w0, w1, w0	// id: 4250, l: 4251	
	sxtw	 x0, w0	// id: 4251, l: 4252	
	lsl	 x0, x0, #3	// id: 4252, l: 4253	
	ldr	 x1, [sp, #8]	// id: 4253, l: 4254	
	add	 x0, x1, x0	// id: 4254, l: 4255	
	ldr	 d0, [x0]	// id: 4255, l: 4256	
	fadd	 d1, d1, d0	// id: 4256, l: 4257	
	ldr	 w1, [sp, #140]	// id: 4257, l: 4258	
	mov	 w0, #0xd44                 	// #3396	// id: 4258, l: 4259	
	movk	 w0, #0x3, lsl #16	// id: 4259, l: 4260	
	add	 w0, w1, w0	// id: 4260, l: 4261	
	sxtw	 x0, w0	// id: 4261, l: 4262	
	lsl	 x0, x0, #3	// id: 4262, l: 4263	
	ldr	 x1, [sp, #8]	// id: 4263, l: 4264	
	add	 x0, x1, x0	// id: 4264, l: 4265	
	ldr	 d0, [x0]	// id: 4265, l: 4266	
	fadd	 d1, d1, d0	// id: 4266, l: 4267	
	ldr	 w1, [sp, #140]	// id: 4267, l: 4268	
	mov	 w0, #0xd45                 	// #3397	// id: 4268, l: 4269	
	movk	 w0, #0x3, lsl #16	// id: 4269, l: 4270	
	add	 w0, w1, w0	// id: 4270, l: 4271	
	sxtw	 x0, w0	// id: 4271, l: 4272	
	lsl	 x0, x0, #3	// id: 4272, l: 4273	
	ldr	 x1, [sp, #8]	// id: 4273, l: 4274	
	add	 x0, x1, x0	// id: 4274, l: 4275	
	ldr	 d0, [x0]	// id: 4275, l: 4276	
	fadd	 d1, d1, d0	// id: 4276, l: 4277	
	ldr	 w1, [sp, #140]	// id: 4277, l: 4278	
	mov	 w0, #0xd46                 	// #3398	// id: 4278, l: 4279	
	movk	 w0, #0x3, lsl #16	// id: 4279, l: 4280	
	add	 w0, w1, w0	// id: 4280, l: 4281	
	sxtw	 x0, w0	// id: 4281, l: 4282	
	lsl	 x0, x0, #3	// id: 4282, l: 4283	
	ldr	 x1, [sp, #8]	// id: 4283, l: 4284	
	add	 x0, x1, x0	// id: 4284, l: 4285	
	ldr	 d0, [x0]	// id: 4285, l: 4286	
	fadd	 d1, d1, d0	// id: 4286, l: 4287	
	ldr	 w1, [sp, #140]	// id: 4287, l: 4288	
	mov	 w0, #0xd47                 	// #3399	// id: 4288, l: 4289	
	movk	 w0, #0x3, lsl #16	// id: 4289, l: 4290	
	add	 w0, w1, w0	// id: 4290, l: 4291	
	sxtw	 x0, w0	// id: 4291, l: 4292	
	lsl	 x0, x0, #3	// id: 4292, l: 4293	
	ldr	 x1, [sp, #8]	// id: 4293, l: 4294	
	add	 x0, x1, x0	// id: 4294, l: 4295	
	ldr	 d0, [x0]	// id: 4295, l: 4296	
	fadd	 d1, d1, d0	// id: 4296, l: 4297	
	ldr	 w1, [sp, #140]	// id: 4297, l: 4298	
	mov	 w0, #0xd48                 	// #3400	// id: 4298, l: 4299	
	movk	 w0, #0x3, lsl #16	// id: 4299, l: 4300	
	add	 w0, w1, w0	// id: 4300, l: 4301	
	sxtw	 x0, w0	// id: 4301, l: 4302	
	lsl	 x0, x0, #3	// id: 4302, l: 4303	
	ldr	 x1, [sp, #8]	// id: 4303, l: 4304	
	add	 x0, x1, x0	// id: 4304, l: 4305	
	ldr	 d0, [x0]	// id: 4305, l: 4306	
	fadd	 d1, d1, d0	// id: 4306, l: 4307	
	ldr	 w1, [sp, #140]	// id: 4307, l: 4308	
	mov	 w0, #0xd49                 	// #3401	// id: 4308, l: 4309	
	movk	 w0, #0x3, lsl #16	// id: 4309, l: 4310	
	add	 w0, w1, w0	// id: 4310, l: 4311	
	sxtw	 x0, w0	// id: 4311, l: 4312	
	lsl	 x0, x0, #3	// id: 4312, l: 4313	
	ldr	 x1, [sp, #8]	// id: 4313, l: 4314	
	add	 x0, x1, x0	// id: 4314, l: 4315	
	ldr	 d0, [x0]	// id: 4315, l: 4316	
	fadd	 d1, d1, d0	// id: 4316, l: 4317	
	ldr	 w1, [sp, #140]	// id: 4317, l: 4318	
	mov	 w0, #0xd4a                 	// #3402	// id: 4318, l: 4319	
	movk	 w0, #0x3, lsl #16	// id: 4319, l: 4320	
	add	 w0, w1, w0	// id: 4320, l: 4321	
	sxtw	 x0, w0	// id: 4321, l: 4322	
	lsl	 x0, x0, #3	// id: 4322, l: 4323	
	ldr	 x1, [sp, #8]	// id: 4323, l: 4324	
	add	 x0, x1, x0	// id: 4324, l: 4325	
	ldr	 d0, [x0]	// id: 4325, l: 4326	
	fadd	 d1, d1, d0	// id: 4326, l: 4327	
	ldr	 w1, [sp, #140]	// id: 4327, l: 4328	
	mov	 w0, #0xd4b                 	// #3403	// id: 4328, l: 4329	
	movk	 w0, #0x3, lsl #16	// id: 4329, l: 4330	
	add	 w0, w1, w0	// id: 4330, l: 4331	
	sxtw	 x0, w0	// id: 4331, l: 4332	
	lsl	 x0, x0, #3	// id: 4332, l: 4333	
	ldr	 x1, [sp, #8]	// id: 4333, l: 4334	
	add	 x0, x1, x0	// id: 4334, l: 4335	
	ldr	 d0, [x0]	// id: 4335, l: 4336	
	fadd	 d1, d1, d0	// id: 4336, l: 4337	
	ldr	 w1, [sp, #140]	// id: 4337, l: 4338	
	mov	 w0, #0xd4c                 	// #3404	// id: 4338, l: 4339	
	movk	 w0, #0x3, lsl #16	// id: 4339, l: 4340	
	add	 w0, w1, w0	// id: 4340, l: 4341	
	sxtw	 x0, w0	// id: 4341, l: 4342	
	lsl	 x0, x0, #3	// id: 4342, l: 4343	
	ldr	 x1, [sp, #8]	// id: 4343, l: 4344	
	add	 x0, x1, x0	// id: 4344, l: 4345	
	ldr	 d0, [x0]	// id: 4345, l: 4346	
	fadd	 d1, d1, d0	// id: 4346, l: 4347	
	ldr	 w1, [sp, #140]	// id: 4347, l: 4348	
	mov	 w0, #0xd4d                 	// #3405	// id: 4348, l: 4349	
	movk	 w0, #0x3, lsl #16	// id: 4349, l: 4350	
	add	 w0, w1, w0	// id: 4350, l: 4351	
	sxtw	 x0, w0	// id: 4351, l: 4352	
	lsl	 x0, x0, #3	// id: 4352, l: 4353	
	ldr	 x1, [sp, #8]	// id: 4353, l: 4354	
	add	 x0, x1, x0	// id: 4354, l: 4355	
	ldr	 d0, [x0]	// id: 4355, l: 4356	
	fadd	 d1, d1, d0	// id: 4356, l: 4357	
	ldr	 w1, [sp, #140]	// id: 4357, l: 4358	
	mov	 w0, #0xd4e                 	// #3406	// id: 4358, l: 4359	
	movk	 w0, #0x3, lsl #16	// id: 4359, l: 4360	
	add	 w0, w1, w0	// id: 4360, l: 4361	
	sxtw	 x0, w0	// id: 4361, l: 4362	
	lsl	 x0, x0, #3	// id: 4362, l: 4363	
	ldr	 x1, [sp, #8]	// id: 4363, l: 4364	
	add	 x0, x1, x0	// id: 4364, l: 4365	
	ldr	 d0, [x0]	// id: 4365, l: 4366	
	fadd	 d1, d1, d0	// id: 4366, l: 4367	
	ldr	 w1, [sp, #140]	// id: 4367, l: 4368	
	mov	 w0, #0xd4f                 	// #3407	// id: 4368, l: 4369	
	movk	 w0, #0x3, lsl #16	// id: 4369, l: 4370	
	add	 w0, w1, w0	// id: 4370, l: 4371	
	sxtw	 x0, w0	// id: 4371, l: 4372	
	lsl	 x0, x0, #3	// id: 4372, l: 4373	
	ldr	 x1, [sp, #8]	// id: 4373, l: 4374	
	add	 x0, x1, x0	// id: 4374, l: 4375	
	ldr	 d0, [x0]	// id: 4375, l: 4376	
	fadd	 d1, d1, d0	// id: 4376, l: 4377	
	ldr	 w1, [sp, #140]	// id: 4377, l: 4378	
	mov	 w0, #0xd50                 	// #3408	// id: 4378, l: 4379	
	movk	 w0, #0x3, lsl #16	// id: 4379, l: 4380	
	add	 w0, w1, w0	// id: 4380, l: 4381	
	sxtw	 x0, w0	// id: 4381, l: 4382	
	lsl	 x0, x0, #3	// id: 4382, l: 4383	
	ldr	 x1, [sp, #8]	// id: 4383, l: 4384	
	add	 x0, x1, x0	// id: 4384, l: 4385	
	ldr	 d0, [x0]	// id: 4385, l: 4386	
	fadd	 d1, d1, d0	// id: 4386, l: 4387	
	ldr	 w1, [sp, #140]	// id: 4387, l: 4388	
	mov	 w0, #0xd51                 	// #3409	// id: 4388, l: 4389	
	movk	 w0, #0x3, lsl #16	// id: 4389, l: 4390	
	add	 w0, w1, w0	// id: 4390, l: 4391	
	sxtw	 x0, w0	// id: 4391, l: 4392	
	lsl	 x0, x0, #3	// id: 4392, l: 4393	
	ldr	 x1, [sp, #8]	// id: 4393, l: 4394	
	add	 x0, x1, x0	// id: 4394, l: 4395	
	ldr	 d0, [x0]	// id: 4395, l: 4396	
	fadd	 d1, d1, d0	// id: 4396, l: 4397	
	ldr	 w1, [sp, #140]	// id: 4397, l: 4398	
	mov	 w0, #0xd52                 	// #3410	// id: 4398, l: 4399	
	movk	 w0, #0x3, lsl #16	// id: 4399, l: 4400	
	add	 w0, w1, w0	// id: 4400, l: 4401	
	sxtw	 x0, w0	// id: 4401, l: 4402	
	lsl	 x0, x0, #3	// id: 4402, l: 4403	
	ldr	 x1, [sp, #8]	// id: 4403, l: 4404	
	add	 x0, x1, x0	// id: 4404, l: 4405	
	ldr	 d0, [x0]	// id: 4405, l: 4406	
	fadd	 d0, d1, d0	// id: 4406, l: 4407	
	str	 d0, [sp, #128]	// id: 4407, l: 4408	
	ldr	 w1, [sp, #140]	// id: 4408, l: 4409	
	mov	 w0, #0x1a80                	// #6784	// id: 4409, l: 4410	
	movk	 w0, #0x6, lsl #16	// id: 4410, l: 4411	
	add	 w0, w1, w0	// id: 4411, l: 4412	
	sxtw	 x0, w0	// id: 4412, l: 4413	
	lsl	 x0, x0, #3	// id: 4413, l: 4414	
	ldr	 x1, [sp, #8]	// id: 4414, l: 4415	
	add	 x0, x1, x0	// id: 4415, l: 4416	
	ldr	 d1, [x0]	// id: 4416, l: 4417	
	ldr	 w1, [sp, #140]	// id: 4417, l: 4418	
	mov	 w0, #0x1a81                	// #6785	// id: 4418, l: 4419	
	movk	 w0, #0x6, lsl #16	// id: 4419, l: 4420	
	add	 w0, w1, w0	// id: 4420, l: 4421	
	sxtw	 x0, w0	// id: 4421, l: 4422	
	lsl	 x0, x0, #3	// id: 4422, l: 4423	
	ldr	 x1, [sp, #8]	// id: 4423, l: 4424	
	add	 x0, x1, x0	// id: 4424, l: 4425	
	ldr	 d0, [x0]	// id: 4425, l: 4426	
	fadd	 d1, d1, d0	// id: 4426, l: 4427	
	ldr	 w1, [sp, #140]	// id: 4427, l: 4428	
	mov	 w0, #0x1a82                	// #6786	// id: 4428, l: 4429	
	movk	 w0, #0x6, lsl #16	// id: 4429, l: 4430	
	add	 w0, w1, w0	// id: 4430, l: 4431	
	sxtw	 x0, w0	// id: 4431, l: 4432	
	lsl	 x0, x0, #3	// id: 4432, l: 4433	
	ldr	 x1, [sp, #8]	// id: 4433, l: 4434	
	add	 x0, x1, x0	// id: 4434, l: 4435	
	ldr	 d0, [x0]	// id: 4435, l: 4436	
	fadd	 d1, d1, d0	// id: 4436, l: 4437	
	ldr	 w1, [sp, #140]	// id: 4437, l: 4438	
	mov	 w0, #0x1a83                	// #6787	// id: 4438, l: 4439	
	movk	 w0, #0x6, lsl #16	// id: 4439, l: 4440	
	add	 w0, w1, w0	// id: 4440, l: 4441	
	sxtw	 x0, w0	// id: 4441, l: 4442	
	lsl	 x0, x0, #3	// id: 4442, l: 4443	
	ldr	 x1, [sp, #8]	// id: 4443, l: 4444	
	add	 x0, x1, x0	// id: 4444, l: 4445	
	ldr	 d0, [x0]	// id: 4445, l: 4446	
	fadd	 d1, d1, d0	// id: 4446, l: 4447	
	ldr	 w1, [sp, #140]	// id: 4447, l: 4448	
	mov	 w0, #0x1a84                	// #6788	// id: 4448, l: 4449	
	movk	 w0, #0x6, lsl #16	// id: 4449, l: 4450	
	add	 w0, w1, w0	// id: 4450, l: 4451	
	sxtw	 x0, w0	// id: 4451, l: 4452	
	lsl	 x0, x0, #3	// id: 4452, l: 4453	
	ldr	 x1, [sp, #8]	// id: 4453, l: 4454	
	add	 x0, x1, x0	// id: 4454, l: 4455	
	ldr	 d0, [x0]	// id: 4455, l: 4456	
	fadd	 d1, d1, d0	// id: 4456, l: 4457	
	ldr	 w1, [sp, #140]	// id: 4457, l: 4458	
	mov	 w0, #0x1a85                	// #6789	// id: 4458, l: 4459	
	movk	 w0, #0x6, lsl #16	// id: 4459, l: 4460	
	add	 w0, w1, w0	// id: 4460, l: 4461	
	sxtw	 x0, w0	// id: 4461, l: 4462	
	lsl	 x0, x0, #3	// id: 4462, l: 4463	
	ldr	 x1, [sp, #8]	// id: 4463, l: 4464	
	add	 x0, x1, x0	// id: 4464, l: 4465	
	ldr	 d0, [x0]	// id: 4465, l: 4466	
	fadd	 d1, d1, d0	// id: 4466, l: 4467	
	ldr	 w1, [sp, #140]	// id: 4467, l: 4468	
	mov	 w0, #0x1a86                	// #6790	// id: 4468, l: 4469	
	movk	 w0, #0x6, lsl #16	// id: 4469, l: 4470	
	add	 w0, w1, w0	// id: 4470, l: 4471	
	sxtw	 x0, w0	// id: 4471, l: 4472	
	lsl	 x0, x0, #3	// id: 4472, l: 4473	
	ldr	 x1, [sp, #8]	// id: 4473, l: 4474	
	add	 x0, x1, x0	// id: 4474, l: 4475	
	ldr	 d0, [x0]	// id: 4475, l: 4476	
	fadd	 d1, d1, d0	// id: 4476, l: 4477	
	ldr	 w1, [sp, #140]	// id: 4477, l: 4478	
	mov	 w0, #0x1a87                	// #6791	// id: 4478, l: 4479	
	movk	 w0, #0x6, lsl #16	// id: 4479, l: 4480	
	add	 w0, w1, w0	// id: 4480, l: 4481	
	sxtw	 x0, w0	// id: 4481, l: 4482	
	lsl	 x0, x0, #3	// id: 4482, l: 4483	
	ldr	 x1, [sp, #8]	// id: 4483, l: 4484	
	add	 x0, x1, x0	// id: 4484, l: 4485	
	ldr	 d0, [x0]	// id: 4485, l: 4486	
	fadd	 d1, d1, d0	// id: 4486, l: 4487	
	ldr	 w1, [sp, #140]	// id: 4487, l: 4488	
	mov	 w0, #0x1a88                	// #6792	// id: 4488, l: 4489	
	movk	 w0, #0x6, lsl #16	// id: 4489, l: 4490	
	add	 w0, w1, w0	// id: 4490, l: 4491	
	sxtw	 x0, w0	// id: 4491, l: 4492	
	lsl	 x0, x0, #3	// id: 4492, l: 4493	
	ldr	 x1, [sp, #8]	// id: 4493, l: 4494	
	add	 x0, x1, x0	// id: 4494, l: 4495	
	ldr	 d0, [x0]	// id: 4495, l: 4496	
	fadd	 d1, d1, d0	// id: 4496, l: 4497	
	ldr	 w1, [sp, #140]	// id: 4497, l: 4498	
	mov	 w0, #0x1a89                	// #6793	// id: 4498, l: 4499	
	movk	 w0, #0x6, lsl #16	// id: 4499, l: 4500	
	add	 w0, w1, w0	// id: 4500, l: 4501	
	sxtw	 x0, w0	// id: 4501, l: 4502	
	lsl	 x0, x0, #3	// id: 4502, l: 4503	
	ldr	 x1, [sp, #8]	// id: 4503, l: 4504	
	add	 x0, x1, x0	// id: 4504, l: 4505	
	ldr	 d0, [x0]	// id: 4505, l: 4506	
	fadd	 d1, d1, d0	// id: 4506, l: 4507	
	ldr	 w1, [sp, #140]	// id: 4507, l: 4508	
	mov	 w0, #0x1a8a                	// #6794	// id: 4508, l: 4509	
	movk	 w0, #0x6, lsl #16	// id: 4509, l: 4510	
	add	 w0, w1, w0	// id: 4510, l: 4511	
	sxtw	 x0, w0	// id: 4511, l: 4512	
	lsl	 x0, x0, #3	// id: 4512, l: 4513	
	ldr	 x1, [sp, #8]	// id: 4513, l: 4514	
	add	 x0, x1, x0	// id: 4514, l: 4515	
	ldr	 d0, [x0]	// id: 4515, l: 4516	
	fadd	 d1, d1, d0	// id: 4516, l: 4517	
	ldr	 w1, [sp, #140]	// id: 4517, l: 4518	
	mov	 w0, #0x1a8b                	// #6795	// id: 4518, l: 4519	
	movk	 w0, #0x6, lsl #16	// id: 4519, l: 4520	
	add	 w0, w1, w0	// id: 4520, l: 4521	
	sxtw	 x0, w0	// id: 4521, l: 4522	
	lsl	 x0, x0, #3	// id: 4522, l: 4523	
	ldr	 x1, [sp, #8]	// id: 4523, l: 4524	
	add	 x0, x1, x0	// id: 4524, l: 4525	
	ldr	 d0, [x0]	// id: 4525, l: 4526	
	fadd	 d1, d1, d0	// id: 4526, l: 4527	
	ldr	 w1, [sp, #140]	// id: 4527, l: 4528	
	mov	 w0, #0x1a8c                	// #6796	// id: 4528, l: 4529	
	movk	 w0, #0x6, lsl #16	// id: 4529, l: 4530	
	add	 w0, w1, w0	// id: 4530, l: 4531	
	sxtw	 x0, w0	// id: 4531, l: 4532	
	lsl	 x0, x0, #3	// id: 4532, l: 4533	
	ldr	 x1, [sp, #8]	// id: 4533, l: 4534	
	add	 x0, x1, x0	// id: 4534, l: 4535	
	ldr	 d0, [x0]	// id: 4535, l: 4536	
	fadd	 d1, d1, d0	// id: 4536, l: 4537	
	ldr	 w1, [sp, #140]	// id: 4537, l: 4538	
	mov	 w0, #0x1a8d                	// #6797	// id: 4538, l: 4539	
	movk	 w0, #0x6, lsl #16	// id: 4539, l: 4540	
	add	 w0, w1, w0	// id: 4540, l: 4541	
	sxtw	 x0, w0	// id: 4541, l: 4542	
	lsl	 x0, x0, #3	// id: 4542, l: 4543	
	ldr	 x1, [sp, #8]	// id: 4543, l: 4544	
	add	 x0, x1, x0	// id: 4544, l: 4545	
	ldr	 d0, [x0]	// id: 4545, l: 4546	
	fadd	 d1, d1, d0	// id: 4546, l: 4547	
	ldr	 w1, [sp, #140]	// id: 4547, l: 4548	
	mov	 w0, #0x1a8e                	// #6798	// id: 4548, l: 4549	
	movk	 w0, #0x6, lsl #16	// id: 4549, l: 4550	
	add	 w0, w1, w0	// id: 4550, l: 4551	
	sxtw	 x0, w0	// id: 4551, l: 4552	
	lsl	 x0, x0, #3	// id: 4552, l: 4553	
	ldr	 x1, [sp, #8]	// id: 4553, l: 4554	
	add	 x0, x1, x0	// id: 4554, l: 4555	
	ldr	 d0, [x0]	// id: 4555, l: 4556	
	fadd	 d1, d1, d0	// id: 4556, l: 4557	
	ldr	 w1, [sp, #140]	// id: 4557, l: 4558	
	mov	 w0, #0x1a8f                	// #6799	// id: 4558, l: 4559	
	movk	 w0, #0x6, lsl #16	// id: 4559, l: 4560	
	add	 w0, w1, w0	// id: 4560, l: 4561	
	sxtw	 x0, w0	// id: 4561, l: 4562	
	lsl	 x0, x0, #3	// id: 4562, l: 4563	
	ldr	 x1, [sp, #8]	// id: 4563, l: 4564	
	add	 x0, x1, x0	// id: 4564, l: 4565	
	ldr	 d0, [x0]	// id: 4565, l: 4566	
	fadd	 d1, d1, d0	// id: 4566, l: 4567	
	ldr	 w1, [sp, #140]	// id: 4567, l: 4568	
	mov	 w0, #0x1a90                	// #6800	// id: 4568, l: 4569	
	movk	 w0, #0x6, lsl #16	// id: 4569, l: 4570	
	add	 w0, w1, w0	// id: 4570, l: 4571	
	sxtw	 x0, w0	// id: 4571, l: 4572	
	lsl	 x0, x0, #3	// id: 4572, l: 4573	
	ldr	 x1, [sp, #8]	// id: 4573, l: 4574	
	add	 x0, x1, x0	// id: 4574, l: 4575	
	ldr	 d0, [x0]	// id: 4575, l: 4576	
	fadd	 d1, d1, d0	// id: 4576, l: 4577	
	ldr	 w1, [sp, #140]	// id: 4577, l: 4578	
	mov	 w0, #0x1a91                	// #6801	// id: 4578, l: 4579	
	movk	 w0, #0x6, lsl #16	// id: 4579, l: 4580	
	add	 w0, w1, w0	// id: 4580, l: 4581	
	sxtw	 x0, w0	// id: 4581, l: 4582	
	lsl	 x0, x0, #3	// id: 4582, l: 4583	
	ldr	 x1, [sp, #8]	// id: 4583, l: 4584	
	add	 x0, x1, x0	// id: 4584, l: 4585	
	ldr	 d0, [x0]	// id: 4585, l: 4586	
	fadd	 d1, d1, d0	// id: 4586, l: 4587	
	ldr	 w1, [sp, #140]	// id: 4587, l: 4588	
	mov	 w0, #0x1a92                	// #6802	// id: 4588, l: 4589	
	movk	 w0, #0x6, lsl #16	// id: 4589, l: 4590	
	add	 w0, w1, w0	// id: 4590, l: 4591	
	sxtw	 x0, w0	// id: 4591, l: 4592	
	lsl	 x0, x0, #3	// id: 4592, l: 4593	
	ldr	 x1, [sp, #8]	// id: 4593, l: 4594	
	add	 x0, x1, x0	// id: 4594, l: 4595	
	ldr	 d0, [x0]	// id: 4595, l: 4596	
	fadd	 d0, d1, d0	// id: 4596, l: 4597	
	str	 d0, [sp, #96]	// id: 4597, l: 4598	
	ldr	 d0, [sp, #128]	// id: 4598, l: 4599	
	fadd	 d1, d0, d0	// id: 4599, l: 4600	
	ldr	 d0, [sp, #96]	// id: 4600, l: 4601	
	fsub	 d0, d1, d0	// id: 4601, l: 4602	
	str	 d0, [sp, #64]	// id: 4602, l: 4603	
	ldr	 w0, [sp, #140]	// id: 4603, l: 4604	
	mov	 w1, #0x6667                	// #26215	// id: 4604, l: 4605	
	movk	 w1, #0x6666, lsl #16	// id: 4605, l: 4606	
	smull	 x1, w0, w1	// id: 4606, l: 4607	
	lsr	 x1, x1, #32	// id: 4607, l: 4608	
	asr	 w1, w1, #3	// id: 4608, l: 4609	
	asr	 w0, w0, #31	// id: 4609, l: 4610	
	sub	 w1, w1, w0	// id: 4610, l: 4611	
	mov	 w0, #0x851f                	// #34079	// id: 4611, l: 4612	
	movk	 w0, #0x51eb, lsl #16	// id: 4612, l: 4613	
	smull	 x0, w1, w0	// id: 4613, l: 4614	
	lsr	 x0, x0, #32	// id: 4614, l: 4615	
	asr	 w2, w0, #5	// id: 4615, l: 4616	
	asr	 w0, w1, #31	// id: 4616, l: 4617	
	sub	 w0, w2, w0	// id: 4617, l: 4618	
	mov	 w2, #0x64                  	// #100	// id: 4618, l: 4619	
	mul	 w0, w0, w2	// id: 4619, l: 4620	
	sub	 w0, w1, w0	// id: 4620, l: 4621	
	scvtf	 d0, w0	// id: 4621, l: 4622	
	mov	 x0, #0xc00000000000        	// #211106232532992	// id: 4622, l: 4623	
	movk	 x0, #0x4048, lsl #48	// id: 4623, l: 4624	
	fmov	 d1, x0	// id: 4624, l: 4625	
	fdiv	 d1, d0, d1	// id: 4625, l: 4626	
	fmov	 d0, #1.000000000000000000e+00	// id: 4626, l: 4627	
	fsub	 d0, d1, d0	// id: 4627, l: 4628	
	str	 d0, [sp, #24]	// id: 4628, l: 4629	
	ldr	 w0, [sp, #140]	// id: 4629, l: 4630	
	mov	 w1, #0x4dd3                	// #19923	// id: 4630, l: 4631	
	movk	 w1, #0x1062, lsl #16	// id: 4631, l: 4632	
	smull	 x1, w0, w1	// id: 4632, l: 4633	
	lsr	 x1, x1, #32	// id: 4633, l: 4634	
	asr	 w1, w1, #7	// id: 4634, l: 4635	
	asr	 w0, w0, #31	// id: 4635, l: 4636	
	sub	 w1, w1, w0	// id: 4636, l: 4637	
	mov	 w0, #0x851f                	// #34079	// id: 4637, l: 4638	
	movk	 w0, #0x51eb, lsl #16	// id: 4638, l: 4639	
	smull	 x0, w1, w0	// id: 4639, l: 4640	
	lsr	 x0, x0, #32	// id: 4640, l: 4641	
	asr	 w2, w0, #5	// id: 4641, l: 4642	
	asr	 w0, w1, #31	// id: 4642, l: 4643	
	sub	 w0, w2, w0	// id: 4643, l: 4644	
	mov	 w2, #0x64                  	// #100	// id: 4644, l: 4645	
	mul	 w0, w0, w2	// id: 4645, l: 4646	
	sub	 w0, w1, w0	// id: 4646, l: 4647	
	scvtf	 d0, w0	// id: 4647, l: 4648	
	mov	 x0, #0xc00000000000        	// #211106232532992	// id: 4648, l: 4649	
	movk	 x0, #0x4048, lsl #48	// id: 4649, l: 4650	
	fmov	 d1, x0	// id: 4650, l: 4651	
	fdiv	 d1, d0, d1	// id: 4651, l: 4652	
	fmov	 d0, #1.000000000000000000e+00	// id: 4652, l: 4653	
	fsub	 d0, d1, d0	// id: 4653, l: 4654	
	str	 d0, [sp, #16]	// id: 4654, l: 4655	
	str	 xzr, [sp, #56]	// id: 4655, l: 4656	
	str	 xzr, [sp, #48]	// id: 4656, l: 4657	
	ldr	 d0, [sp, #24]	// id: 4657, l: 4658	
	fmul	 d0, d0, d0	// id: 4658, l: 4659	
	fmov	 d1, #1.000000000000000000e+00	// id: 4659, l: 4660	
	fsub	 d0, d1, d0	// id: 4660, l: 4661	
	adrp	 x0, .LC8	// id: 4661, l: 4662	
	ldr	 d1, [x0,:lo12:.LC8]	// id: 4662, l: 4663	
	fmul	 d1, d0, d1	// id: 4663, l: 4664	
	ldr	 d0, [sp, #16]	// id: 4664, l: 4665	
	fmul	 d0, d0, d0	// id: 4665, l: 4666	
	fmov	 d2, #1.000000000000000000e+00	// id: 4666, l: 4667	
	fsub	 d0, d2, d0	// id: 4667, l: 4668	
	fmul	 d0, d1, d0	// id: 4668, l: 4669	
	str	 d0, [sp, #40]	// id: 4669, l: 4670	
	ldr	 d0, [sp, #56]	// id: 4670, l: 4671	
	fmul	 d1, d0, d0	// id: 4671, l: 4672	
	ldr	 d0, [sp, #48]	// id: 4672, l: 4673	
	fmul	 d0, d0, d0	// id: 4673, l: 4674	
	fadd	 d1, d1, d0	// id: 4674, l: 4675	
	ldr	 d0, [sp, #40]	// id: 4675, l: 4676	
	fmul	 d0, d0, d0	// id: 4676, l: 4677	
	fadd	 d1, d1, d0	// id: 4677, l: 4678	
	fmov	 d0, #1.500000000000000000e+00	// id: 4678, l: 4679	
	fmul	 d0, d1, d0	// id: 4679, l: 4680	
	str	 d0, [sp, #32]	// id: 4680, l: 4681	
	ldr	 d0, [sp, #64]	// id: 4681, l: 4682	
	mov	 x0, #0x5555555555555555    	// #6148914691236517205	// id: 4682, l: 4683	
	movk	 x0, #0x3fd5, lsl #48	// id: 4683, l: 4684	
	fmov	 d1, x0	// id: 4684, l: 4685	
	fmul	 d1, d0, d1	// id: 4685, l: 4686	
	fmov	 d2, #1.000000000000000000e+00	// id: 4686, l: 4687	
	ldr	 d0, [sp, #32]	// id: 4687, l: 4688	
	fsub	 d0, d2, d0	// id: 4688, l: 4689	
	ldrsw	 x0, [sp, #140]	// id: 4689, l: 4690	
	lsl	 x0, x0, #3	// id: 4690, l: 4691	
	ldr	 x1, [sp, #8]	// id: 4691, l: 4692	
	add	 x0, x1, x0	// id: 4692, l: 4693	
	fmul	 d0, d1, d0	// id: 4693, l: 4694	
	str	 d0, [x0]	// id: 4694, l: 4695	
	ldr	 d0, [sp, #64]	// id: 4695, l: 4696	
	adrp	 x0, .LC2	// id: 4696, l: 4697	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 4697, l: 4698	
	fmul	 d1, d0, d1	// id: 4698, l: 4699	
	ldr	 d2, [sp, #48]	// id: 4699, l: 4700	
	fmov	 d0, #4.500000000000000000e+00	// id: 4700, l: 4701	
	fmul	 d2, d2, d0	// id: 4701, l: 4702	
	fmov	 d0, #3.000000000000000000e+00	// id: 4702, l: 4703	
	fadd	 d2, d2, d0	// id: 4703, l: 4704	
	ldr	 d0, [sp, #48]	// id: 4704, l: 4705	
	fmul	 d2, d2, d0	// id: 4705, l: 4706	
	fmov	 d0, #1.000000000000000000e+00	// id: 4706, l: 4707	
	fadd	 d2, d2, d0	// id: 4707, l: 4708	
	ldr	 d0, [sp, #32]	// id: 4708, l: 4709	
	fsub	 d0, d2, d0	// id: 4709, l: 4710	
	ldr	 w0, [sp, #140]	// id: 4710, l: 4711	
	add	 w0, w0, #0x1	// id: 4711, l: 4712	
	sxtw	 x0, w0	// id: 4712, l: 4713	
	lsl	 x0, x0, #3	// id: 4713, l: 4714	
	ldr	 x1, [sp, #8]	// id: 4714, l: 4715	
	add	 x0, x1, x0	// id: 4715, l: 4716	
	fmul	 d0, d1, d0	// id: 4716, l: 4717	
	str	 d0, [x0]	// id: 4717, l: 4718	
	ldr	 d0, [sp, #64]	// id: 4718, l: 4719	
	adrp	 x0, .LC2	// id: 4719, l: 4720	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 4720, l: 4721	
	fmul	 d1, d0, d1	// id: 4721, l: 4722	
	ldr	 d2, [sp, #48]	// id: 4722, l: 4723	
	fmov	 d0, #4.500000000000000000e+00	// id: 4723, l: 4724	
	fmul	 d2, d2, d0	// id: 4724, l: 4725	
	fmov	 d0, #3.000000000000000000e+00	// id: 4725, l: 4726	
	fsub	 d2, d2, d0	// id: 4726, l: 4727	
	ldr	 d0, [sp, #48]	// id: 4727, l: 4728	
	fmul	 d2, d2, d0	// id: 4728, l: 4729	
	fmov	 d0, #1.000000000000000000e+00	// id: 4729, l: 4730	
	fadd	 d2, d2, d0	// id: 4730, l: 4731	
	ldr	 d0, [sp, #32]	// id: 4731, l: 4732	
	fsub	 d0, d2, d0	// id: 4732, l: 4733	
	ldr	 w0, [sp, #140]	// id: 4733, l: 4734	
	add	 w0, w0, #0x2	// id: 4734, l: 4735	
	sxtw	 x0, w0	// id: 4735, l: 4736	
	lsl	 x0, x0, #3	// id: 4736, l: 4737	
	ldr	 x1, [sp, #8]	// id: 4737, l: 4738	
	add	 x0, x1, x0	// id: 4738, l: 4739	
	fmul	 d0, d1, d0	// id: 4739, l: 4740	
	str	 d0, [x0]	// id: 4740, l: 4741	
	ldr	 d0, [sp, #64]	// id: 4741, l: 4742	
	adrp	 x0, .LC2	// id: 4742, l: 4743	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 4743, l: 4744	
	fmul	 d1, d0, d1	// id: 4744, l: 4745	
	ldr	 d2, [sp, #56]	// id: 4745, l: 4746	
	fmov	 d0, #4.500000000000000000e+00	// id: 4746, l: 4747	
	fmul	 d2, d2, d0	// id: 4747, l: 4748	
	fmov	 d0, #3.000000000000000000e+00	// id: 4748, l: 4749	
	fadd	 d2, d2, d0	// id: 4749, l: 4750	
	ldr	 d0, [sp, #56]	// id: 4750, l: 4751	
	fmul	 d2, d2, d0	// id: 4751, l: 4752	
	fmov	 d0, #1.000000000000000000e+00	// id: 4752, l: 4753	
	fadd	 d2, d2, d0	// id: 4753, l: 4754	
	ldr	 d0, [sp, #32]	// id: 4754, l: 4755	
	fsub	 d0, d2, d0	// id: 4755, l: 4756	
	ldr	 w0, [sp, #140]	// id: 4756, l: 4757	
	add	 w0, w0, #0x3	// id: 4757, l: 4758	
	sxtw	 x0, w0	// id: 4758, l: 4759	
	lsl	 x0, x0, #3	// id: 4759, l: 4760	
	ldr	 x1, [sp, #8]	// id: 4760, l: 4761	
	add	 x0, x1, x0	// id: 4761, l: 4762	
	fmul	 d0, d1, d0	// id: 4762, l: 4763	
	str	 d0, [x0]	// id: 4763, l: 4764	
	ldr	 d0, [sp, #64]	// id: 4764, l: 4765	
	adrp	 x0, .LC2	// id: 4765, l: 4766	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 4766, l: 4767	
	fmul	 d1, d0, d1	// id: 4767, l: 4768	
	ldr	 d2, [sp, #56]	// id: 4768, l: 4769	
	fmov	 d0, #4.500000000000000000e+00	// id: 4769, l: 4770	
	fmul	 d2, d2, d0	// id: 4770, l: 4771	
	fmov	 d0, #3.000000000000000000e+00	// id: 4771, l: 4772	
	fsub	 d2, d2, d0	// id: 4772, l: 4773	
	ldr	 d0, [sp, #56]	// id: 4773, l: 4774	
	fmul	 d2, d2, d0	// id: 4774, l: 4775	
	fmov	 d0, #1.000000000000000000e+00	// id: 4775, l: 4776	
	fadd	 d2, d2, d0	// id: 4776, l: 4777	
	ldr	 d0, [sp, #32]	// id: 4777, l: 4778	
	fsub	 d0, d2, d0	// id: 4778, l: 4779	
	ldr	 w0, [sp, #140]	// id: 4779, l: 4780	
	add	 w0, w0, #0x4	// id: 4780, l: 4781	
	sxtw	 x0, w0	// id: 4781, l: 4782	
	lsl	 x0, x0, #3	// id: 4782, l: 4783	
	ldr	 x1, [sp, #8]	// id: 4783, l: 4784	
	add	 x0, x1, x0	// id: 4784, l: 4785	
	fmul	 d0, d1, d0	// id: 4785, l: 4786	
	str	 d0, [x0]	// id: 4786, l: 4787	
	ldr	 d0, [sp, #64]	// id: 4787, l: 4788	
	adrp	 x0, .LC2	// id: 4788, l: 4789	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 4789, l: 4790	
	fmul	 d1, d0, d1	// id: 4790, l: 4791	
	ldr	 d2, [sp, #40]	// id: 4791, l: 4792	
	fmov	 d0, #4.500000000000000000e+00	// id: 4792, l: 4793	
	fmul	 d2, d2, d0	// id: 4793, l: 4794	
	fmov	 d0, #3.000000000000000000e+00	// id: 4794, l: 4795	
	fadd	 d2, d2, d0	// id: 4795, l: 4796	
	ldr	 d0, [sp, #40]	// id: 4796, l: 4797	
	fmul	 d2, d2, d0	// id: 4797, l: 4798	
	fmov	 d0, #1.000000000000000000e+00	// id: 4798, l: 4799	
	fadd	 d2, d2, d0	// id: 4799, l: 4800	
	ldr	 d0, [sp, #32]	// id: 4800, l: 4801	
	fsub	 d0, d2, d0	// id: 4801, l: 4802	
	ldr	 w0, [sp, #140]	// id: 4802, l: 4803	
	add	 w0, w0, #0x5	// id: 4803, l: 4804	
	sxtw	 x0, w0	// id: 4804, l: 4805	
	lsl	 x0, x0, #3	// id: 4805, l: 4806	
	ldr	 x1, [sp, #8]	// id: 4806, l: 4807	
	add	 x0, x1, x0	// id: 4807, l: 4808	
	fmul	 d0, d1, d0	// id: 4808, l: 4809	
	str	 d0, [x0]	// id: 4809, l: 4810	
	ldr	 d0, [sp, #64]	// id: 4810, l: 4811	
	adrp	 x0, .LC2	// id: 4811, l: 4812	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 4812, l: 4813	
	fmul	 d1, d0, d1	// id: 4813, l: 4814	
	ldr	 d2, [sp, #40]	// id: 4814, l: 4815	
	fmov	 d0, #4.500000000000000000e+00	// id: 4815, l: 4816	
	fmul	 d2, d2, d0	// id: 4816, l: 4817	
	fmov	 d0, #3.000000000000000000e+00	// id: 4817, l: 4818	
	fsub	 d2, d2, d0	// id: 4818, l: 4819	
	ldr	 d0, [sp, #40]	// id: 4819, l: 4820	
	fmul	 d2, d2, d0	// id: 4820, l: 4821	
	fmov	 d0, #1.000000000000000000e+00	// id: 4821, l: 4822	
	fadd	 d2, d2, d0	// id: 4822, l: 4823	
	ldr	 d0, [sp, #32]	// id: 4823, l: 4824	
	fsub	 d0, d2, d0	// id: 4824, l: 4825	
	ldr	 w0, [sp, #140]	// id: 4825, l: 4826	
	add	 w0, w0, #0x6	// id: 4826, l: 4827	
	sxtw	 x0, w0	// id: 4827, l: 4828	
	lsl	 x0, x0, #3	// id: 4828, l: 4829	
	ldr	 x1, [sp, #8]	// id: 4829, l: 4830	
	add	 x0, x1, x0	// id: 4830, l: 4831	
	fmul	 d0, d1, d0	// id: 4831, l: 4832	
	str	 d0, [x0]	// id: 4832, l: 4833	
	ldr	 d0, [sp, #64]	// id: 4833, l: 4834	
	adrp	 x0, .LC3	// id: 4834, l: 4835	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 4835, l: 4836	
	fmul	 d1, d0, d1	// id: 4836, l: 4837	
	ldr	 d2, [sp, #56]	// id: 4837, l: 4838	
	ldr	 d0, [sp, #48]	// id: 4838, l: 4839	
	fadd	 d2, d2, d0	// id: 4839, l: 4840	
	ldr	 d3, [sp, #56]	// id: 4840, l: 4841	
	ldr	 d0, [sp, #48]	// id: 4841, l: 4842	
	fadd	 d3, d3, d0	// id: 4842, l: 4843	
	fmov	 d0, #4.500000000000000000e+00	// id: 4843, l: 4844	
	fmul	 d3, d3, d0	// id: 4844, l: 4845	
	fmov	 d0, #3.000000000000000000e+00	// id: 4845, l: 4846	
	fadd	 d0, d3, d0	// id: 4846, l: 4847	
	fmul	 d2, d2, d0	// id: 4847, l: 4848	
	fmov	 d0, #1.000000000000000000e+00	// id: 4848, l: 4849	
	fadd	 d2, d2, d0	// id: 4849, l: 4850	
	ldr	 d0, [sp, #32]	// id: 4850, l: 4851	
	fsub	 d0, d2, d0	// id: 4851, l: 4852	
	ldr	 w0, [sp, #140]	// id: 4852, l: 4853	
	add	 w0, w0, #0x7	// id: 4853, l: 4854	
	sxtw	 x0, w0	// id: 4854, l: 4855	
	lsl	 x0, x0, #3	// id: 4855, l: 4856	
	ldr	 x1, [sp, #8]	// id: 4856, l: 4857	
	add	 x0, x1, x0	// id: 4857, l: 4858	
	fmul	 d0, d1, d0	// id: 4858, l: 4859	
	str	 d0, [x0]	// id: 4859, l: 4860	
	ldr	 d0, [sp, #64]	// id: 4860, l: 4861	
	adrp	 x0, .LC3	// id: 4861, l: 4862	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 4862, l: 4863	
	fmul	 d1, d0, d1	// id: 4863, l: 4864	
	ldr	 d2, [sp, #48]	// id: 4864, l: 4865	
	ldr	 d0, [sp, #56]	// id: 4865, l: 4866	
	fsub	 d2, d2, d0	// id: 4866, l: 4867	
	ldr	 d3, [sp, #48]	// id: 4867, l: 4868	
	ldr	 d0, [sp, #56]	// id: 4868, l: 4869	
	fsub	 d3, d3, d0	// id: 4869, l: 4870	
	fmov	 d0, #4.500000000000000000e+00	// id: 4870, l: 4871	
	fmul	 d3, d3, d0	// id: 4871, l: 4872	
	fmov	 d0, #3.000000000000000000e+00	// id: 4872, l: 4873	
	fadd	 d0, d3, d0	// id: 4873, l: 4874	
	fmul	 d2, d2, d0	// id: 4874, l: 4875	
	fmov	 d0, #1.000000000000000000e+00	// id: 4875, l: 4876	
	fadd	 d2, d2, d0	// id: 4876, l: 4877	
	ldr	 d0, [sp, #32]	// id: 4877, l: 4878	
	fsub	 d0, d2, d0	// id: 4878, l: 4879	
	ldr	 w0, [sp, #140]	// id: 4879, l: 4880	
	add	 w0, w0, #0x8	// id: 4880, l: 4881	
	sxtw	 x0, w0	// id: 4881, l: 4882	
	lsl	 x0, x0, #3	// id: 4882, l: 4883	
	ldr	 x1, [sp, #8]	// id: 4883, l: 4884	
	add	 x0, x1, x0	// id: 4884, l: 4885	
	fmul	 d0, d1, d0	// id: 4885, l: 4886	
	str	 d0, [x0]	// id: 4886, l: 4887	
	ldr	 d0, [sp, #64]	// id: 4887, l: 4888	
	adrp	 x0, .LC3	// id: 4888, l: 4889	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 4889, l: 4890	
	fmul	 d1, d0, d1	// id: 4890, l: 4891	
	ldr	 d2, [sp, #56]	// id: 4891, l: 4892	
	ldr	 d0, [sp, #48]	// id: 4892, l: 4893	
	fsub	 d2, d2, d0	// id: 4893, l: 4894	
	ldr	 d3, [sp, #56]	// id: 4894, l: 4895	
	ldr	 d0, [sp, #48]	// id: 4895, l: 4896	
	fsub	 d3, d3, d0	// id: 4896, l: 4897	
	fmov	 d0, #4.500000000000000000e+00	// id: 4897, l: 4898	
	fmul	 d3, d3, d0	// id: 4898, l: 4899	
	fmov	 d0, #3.000000000000000000e+00	// id: 4899, l: 4900	
	fadd	 d0, d3, d0	// id: 4900, l: 4901	
	fmul	 d2, d2, d0	// id: 4901, l: 4902	
	fmov	 d0, #1.000000000000000000e+00	// id: 4902, l: 4903	
	fadd	 d2, d2, d0	// id: 4903, l: 4904	
	ldr	 d0, [sp, #32]	// id: 4904, l: 4905	
	fsub	 d0, d2, d0	// id: 4905, l: 4906	
	ldr	 w0, [sp, #140]	// id: 4906, l: 4907	
	add	 w0, w0, #0x9	// id: 4907, l: 4908	
	sxtw	 x0, w0	// id: 4908, l: 4909	
	lsl	 x0, x0, #3	// id: 4909, l: 4910	
	ldr	 x1, [sp, #8]	// id: 4910, l: 4911	
	add	 x0, x1, x0	// id: 4911, l: 4912	
	fmul	 d0, d1, d0	// id: 4912, l: 4913	
	str	 d0, [x0]	// id: 4913, l: 4914	
	ldr	 d0, [sp, #64]	// id: 4914, l: 4915	
	adrp	 x0, .LC3	// id: 4915, l: 4916	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 4916, l: 4917	
	fmul	 d1, d0, d1	// id: 4917, l: 4918	
	ldr	 d0, [sp, #56]	// id: 4918, l: 4919	
	fneg	 d2, d0	// id: 4919, l: 4920	
	ldr	 d0, [sp, #48]	// id: 4920, l: 4921	
	fsub	 d2, d2, d0	// id: 4921, l: 4922	
	ldr	 d0, [sp, #56]	// id: 4922, l: 4923	
	fneg	 d3, d0	// id: 4923, l: 4924	
	ldr	 d0, [sp, #48]	// id: 4924, l: 4925	
	fsub	 d3, d3, d0	// id: 4925, l: 4926	
	fmov	 d0, #4.500000000000000000e+00	// id: 4926, l: 4927	
	fmul	 d3, d3, d0	// id: 4927, l: 4928	
	fmov	 d0, #3.000000000000000000e+00	// id: 4928, l: 4929	
	fadd	 d0, d3, d0	// id: 4929, l: 4930	
	fmul	 d2, d2, d0	// id: 4930, l: 4931	
	fmov	 d0, #1.000000000000000000e+00	// id: 4931, l: 4932	
	fadd	 d2, d2, d0	// id: 4932, l: 4933	
	ldr	 d0, [sp, #32]	// id: 4933, l: 4934	
	fsub	 d0, d2, d0	// id: 4934, l: 4935	
	ldr	 w0, [sp, #140]	// id: 4935, l: 4936	
	add	 w0, w0, #0xa	// id: 4936, l: 4937	
	sxtw	 x0, w0	// id: 4937, l: 4938	
	lsl	 x0, x0, #3	// id: 4938, l: 4939	
	ldr	 x1, [sp, #8]	// id: 4939, l: 4940	
	add	 x0, x1, x0	// id: 4940, l: 4941	
	fmul	 d0, d1, d0	// id: 4941, l: 4942	
	str	 d0, [x0]	// id: 4942, l: 4943	
	ldr	 d0, [sp, #64]	// id: 4943, l: 4944	
	adrp	 x0, .LC3	// id: 4944, l: 4945	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 4945, l: 4946	
	fmul	 d1, d0, d1	// id: 4946, l: 4947	
	ldr	 d2, [sp, #48]	// id: 4947, l: 4948	
	ldr	 d0, [sp, #40]	// id: 4948, l: 4949	
	fadd	 d2, d2, d0	// id: 4949, l: 4950	
	ldr	 d3, [sp, #48]	// id: 4950, l: 4951	
	ldr	 d0, [sp, #40]	// id: 4951, l: 4952	
	fadd	 d3, d3, d0	// id: 4952, l: 4953	
	fmov	 d0, #4.500000000000000000e+00	// id: 4953, l: 4954	
	fmul	 d3, d3, d0	// id: 4954, l: 4955	
	fmov	 d0, #3.000000000000000000e+00	// id: 4955, l: 4956	
	fadd	 d0, d3, d0	// id: 4956, l: 4957	
	fmul	 d2, d2, d0	// id: 4957, l: 4958	
	fmov	 d0, #1.000000000000000000e+00	// id: 4958, l: 4959	
	fadd	 d2, d2, d0	// id: 4959, l: 4960	
	ldr	 d0, [sp, #32]	// id: 4960, l: 4961	
	fsub	 d0, d2, d0	// id: 4961, l: 4962	
	ldr	 w0, [sp, #140]	// id: 4962, l: 4963	
	add	 w0, w0, #0xb	// id: 4963, l: 4964	
	sxtw	 x0, w0	// id: 4964, l: 4965	
	lsl	 x0, x0, #3	// id: 4965, l: 4966	
	ldr	 x1, [sp, #8]	// id: 4966, l: 4967	
	add	 x0, x1, x0	// id: 4967, l: 4968	
	fmul	 d0, d1, d0	// id: 4968, l: 4969	
	str	 d0, [x0]	// id: 4969, l: 4970	
	ldr	 d0, [sp, #64]	// id: 4970, l: 4971	
	adrp	 x0, .LC3	// id: 4971, l: 4972	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 4972, l: 4973	
	fmul	 d1, d0, d1	// id: 4973, l: 4974	
	ldr	 d2, [sp, #48]	// id: 4974, l: 4975	
	ldr	 d0, [sp, #40]	// id: 4975, l: 4976	
	fsub	 d2, d2, d0	// id: 4976, l: 4977	
	ldr	 d3, [sp, #48]	// id: 4977, l: 4978	
	ldr	 d0, [sp, #40]	// id: 4978, l: 4979	
	fsub	 d3, d3, d0	// id: 4979, l: 4980	
	fmov	 d0, #4.500000000000000000e+00	// id: 4980, l: 4981	
	fmul	 d3, d3, d0	// id: 4981, l: 4982	
	fmov	 d0, #3.000000000000000000e+00	// id: 4982, l: 4983	
	fadd	 d0, d3, d0	// id: 4983, l: 4984	
	fmul	 d2, d2, d0	// id: 4984, l: 4985	
	fmov	 d0, #1.000000000000000000e+00	// id: 4985, l: 4986	
	fadd	 d2, d2, d0	// id: 4986, l: 4987	
	ldr	 d0, [sp, #32]	// id: 4987, l: 4988	
	fsub	 d0, d2, d0	// id: 4988, l: 4989	
	ldr	 w0, [sp, #140]	// id: 4989, l: 4990	
	add	 w0, w0, #0xc	// id: 4990, l: 4991	
	sxtw	 x0, w0	// id: 4991, l: 4992	
	lsl	 x0, x0, #3	// id: 4992, l: 4993	
	ldr	 x1, [sp, #8]	// id: 4993, l: 4994	
	add	 x0, x1, x0	// id: 4994, l: 4995	
	fmul	 d0, d1, d0	// id: 4995, l: 4996	
	str	 d0, [x0]	// id: 4996, l: 4997	
	ldr	 d0, [sp, #64]	// id: 4997, l: 4998	
	adrp	 x0, .LC3	// id: 4998, l: 4999	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 4999, l: 5000	
	fmul	 d1, d0, d1	// id: 5000, l: 5001	
	ldr	 d2, [sp, #40]	// id: 5001, l: 5002	
	ldr	 d0, [sp, #48]	// id: 5002, l: 5003	
	fsub	 d2, d2, d0	// id: 5003, l: 5004	
	ldr	 d3, [sp, #40]	// id: 5004, l: 5005	
	ldr	 d0, [sp, #48]	// id: 5005, l: 5006	
	fsub	 d3, d3, d0	// id: 5006, l: 5007	
	fmov	 d0, #4.500000000000000000e+00	// id: 5007, l: 5008	
	fmul	 d3, d3, d0	// id: 5008, l: 5009	
	fmov	 d0, #3.000000000000000000e+00	// id: 5009, l: 5010	
	fadd	 d0, d3, d0	// id: 5010, l: 5011	
	fmul	 d2, d2, d0	// id: 5011, l: 5012	
	fmov	 d0, #1.000000000000000000e+00	// id: 5012, l: 5013	
	fadd	 d2, d2, d0	// id: 5013, l: 5014	
	ldr	 d0, [sp, #32]	// id: 5014, l: 5015	
	fsub	 d0, d2, d0	// id: 5015, l: 5016	
	ldr	 w0, [sp, #140]	// id: 5016, l: 5017	
	add	 w0, w0, #0xd	// id: 5017, l: 5018	
	sxtw	 x0, w0	// id: 5018, l: 5019	
	lsl	 x0, x0, #3	// id: 5019, l: 5020	
	ldr	 x1, [sp, #8]	// id: 5020, l: 5021	
	add	 x0, x1, x0	// id: 5021, l: 5022	
	fmul	 d0, d1, d0	// id: 5022, l: 5023	
	str	 d0, [x0]	// id: 5023, l: 5024	
	ldr	 d0, [sp, #64]	// id: 5024, l: 5025	
	adrp	 x0, .LC3	// id: 5025, l: 5026	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 5026, l: 5027	
	fmul	 d1, d0, d1	// id: 5027, l: 5028	
	ldr	 d0, [sp, #48]	// id: 5028, l: 5029	
	fneg	 d2, d0	// id: 5029, l: 5030	
	ldr	 d0, [sp, #40]	// id: 5030, l: 5031	
	fsub	 d2, d2, d0	// id: 5031, l: 5032	
	ldr	 d0, [sp, #48]	// id: 5032, l: 5033	
	fneg	 d3, d0	// id: 5033, l: 5034	
	ldr	 d0, [sp, #40]	// id: 5034, l: 5035	
	fsub	 d3, d3, d0	// id: 5035, l: 5036	
	fmov	 d0, #4.500000000000000000e+00	// id: 5036, l: 5037	
	fmul	 d3, d3, d0	// id: 5037, l: 5038	
	fmov	 d0, #3.000000000000000000e+00	// id: 5038, l: 5039	
	fadd	 d0, d3, d0	// id: 5039, l: 5040	
	fmul	 d2, d2, d0	// id: 5040, l: 5041	
	fmov	 d0, #1.000000000000000000e+00	// id: 5041, l: 5042	
	fadd	 d2, d2, d0	// id: 5042, l: 5043	
	ldr	 d0, [sp, #32]	// id: 5043, l: 5044	
	fsub	 d0, d2, d0	// id: 5044, l: 5045	
	ldr	 w0, [sp, #140]	// id: 5045, l: 5046	
	add	 w0, w0, #0xe	// id: 5046, l: 5047	
	sxtw	 x0, w0	// id: 5047, l: 5048	
	lsl	 x0, x0, #3	// id: 5048, l: 5049	
	ldr	 x1, [sp, #8]	// id: 5049, l: 5050	
	add	 x0, x1, x0	// id: 5050, l: 5051	
	fmul	 d0, d1, d0	// id: 5051, l: 5052	
	str	 d0, [x0]	// id: 5052, l: 5053	
	ldr	 d0, [sp, #64]	// id: 5053, l: 5054	
	adrp	 x0, .LC3	// id: 5054, l: 5055	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 5055, l: 5056	
	fmul	 d1, d0, d1	// id: 5056, l: 5057	
	ldr	 d2, [sp, #56]	// id: 5057, l: 5058	
	ldr	 d0, [sp, #40]	// id: 5058, l: 5059	
	fadd	 d2, d2, d0	// id: 5059, l: 5060	
	ldr	 d3, [sp, #56]	// id: 5060, l: 5061	
	ldr	 d0, [sp, #40]	// id: 5061, l: 5062	
	fadd	 d3, d3, d0	// id: 5062, l: 5063	
	fmov	 d0, #4.500000000000000000e+00	// id: 5063, l: 5064	
	fmul	 d3, d3, d0	// id: 5064, l: 5065	
	fmov	 d0, #3.000000000000000000e+00	// id: 5065, l: 5066	
	fadd	 d0, d3, d0	// id: 5066, l: 5067	
	fmul	 d2, d2, d0	// id: 5067, l: 5068	
	fmov	 d0, #1.000000000000000000e+00	// id: 5068, l: 5069	
	fadd	 d2, d2, d0	// id: 5069, l: 5070	
	ldr	 d0, [sp, #32]	// id: 5070, l: 5071	
	fsub	 d0, d2, d0	// id: 5071, l: 5072	
	ldr	 w0, [sp, #140]	// id: 5072, l: 5073	
	add	 w0, w0, #0xf	// id: 5073, l: 5074	
	sxtw	 x0, w0	// id: 5074, l: 5075	
	lsl	 x0, x0, #3	// id: 5075, l: 5076	
	ldr	 x1, [sp, #8]	// id: 5076, l: 5077	
	add	 x0, x1, x0	// id: 5077, l: 5078	
	fmul	 d0, d1, d0	// id: 5078, l: 5079	
	str	 d0, [x0]	// id: 5079, l: 5080	
	ldr	 d0, [sp, #64]	// id: 5080, l: 5081	
	adrp	 x0, .LC3	// id: 5081, l: 5082	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 5082, l: 5083	
	fmul	 d1, d0, d1	// id: 5083, l: 5084	
	ldr	 d2, [sp, #56]	// id: 5084, l: 5085	
	ldr	 d0, [sp, #40]	// id: 5085, l: 5086	
	fsub	 d2, d2, d0	// id: 5086, l: 5087	
	ldr	 d3, [sp, #56]	// id: 5087, l: 5088	
	ldr	 d0, [sp, #40]	// id: 5088, l: 5089	
	fsub	 d3, d3, d0	// id: 5089, l: 5090	
	fmov	 d0, #4.500000000000000000e+00	// id: 5090, l: 5091	
	fmul	 d3, d3, d0	// id: 5091, l: 5092	
	fmov	 d0, #3.000000000000000000e+00	// id: 5092, l: 5093	
	fadd	 d0, d3, d0	// id: 5093, l: 5094	
	fmul	 d2, d2, d0	// id: 5094, l: 5095	
	fmov	 d0, #1.000000000000000000e+00	// id: 5095, l: 5096	
	fadd	 d2, d2, d0	// id: 5096, l: 5097	
	ldr	 d0, [sp, #32]	// id: 5097, l: 5098	
	fsub	 d0, d2, d0	// id: 5098, l: 5099	
	ldr	 w0, [sp, #140]	// id: 5099, l: 5100	
	add	 w0, w0, #0x10	// id: 5100, l: 5101	
	sxtw	 x0, w0	// id: 5101, l: 5102	
	lsl	 x0, x0, #3	// id: 5102, l: 5103	
	ldr	 x1, [sp, #8]	// id: 5103, l: 5104	
	add	 x0, x1, x0	// id: 5104, l: 5105	
	fmul	 d0, d1, d0	// id: 5105, l: 5106	
	str	 d0, [x0]	// id: 5106, l: 5107	
	ldr	 d0, [sp, #64]	// id: 5107, l: 5108	
	adrp	 x0, .LC3	// id: 5108, l: 5109	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 5109, l: 5110	
	fmul	 d1, d0, d1	// id: 5110, l: 5111	
	ldr	 d2, [sp, #40]	// id: 5111, l: 5112	
	ldr	 d0, [sp, #56]	// id: 5112, l: 5113	
	fsub	 d2, d2, d0	// id: 5113, l: 5114	
	ldr	 d3, [sp, #40]	// id: 5114, l: 5115	
	ldr	 d0, [sp, #56]	// id: 5115, l: 5116	
	fsub	 d3, d3, d0	// id: 5116, l: 5117	
	fmov	 d0, #4.500000000000000000e+00	// id: 5117, l: 5118	
	fmul	 d3, d3, d0	// id: 5118, l: 5119	
	fmov	 d0, #3.000000000000000000e+00	// id: 5119, l: 5120	
	fadd	 d0, d3, d0	// id: 5120, l: 5121	
	fmul	 d2, d2, d0	// id: 5121, l: 5122	
	fmov	 d0, #1.000000000000000000e+00	// id: 5122, l: 5123	
	fadd	 d2, d2, d0	// id: 5123, l: 5124	
	ldr	 d0, [sp, #32]	// id: 5124, l: 5125	
	fsub	 d0, d2, d0	// id: 5125, l: 5126	
	ldr	 w0, [sp, #140]	// id: 5126, l: 5127	
	add	 w0, w0, #0x11	// id: 5127, l: 5128	
	sxtw	 x0, w0	// id: 5128, l: 5129	
	lsl	 x0, x0, #3	// id: 5129, l: 5130	
	ldr	 x1, [sp, #8]	// id: 5130, l: 5131	
	add	 x0, x1, x0	// id: 5131, l: 5132	
	fmul	 d0, d1, d0	// id: 5132, l: 5133	
	str	 d0, [x0]	// id: 5133, l: 5134	
	ldr	 d0, [sp, #64]	// id: 5134, l: 5135	
	adrp	 x0, .LC3	// id: 5135, l: 5136	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 5136, l: 5137	
	fmul	 d1, d0, d1	// id: 5137, l: 5138	
	ldr	 d0, [sp, #56]	// id: 5138, l: 5139	
	fneg	 d2, d0	// id: 5139, l: 5140	
	ldr	 d0, [sp, #40]	// id: 5140, l: 5141	
	fsub	 d2, d2, d0	// id: 5141, l: 5142	
	ldr	 d0, [sp, #56]	// id: 5142, l: 5143	
	fneg	 d3, d0	// id: 5143, l: 5144	
	ldr	 d0, [sp, #40]	// id: 5144, l: 5145	
	fsub	 d3, d3, d0	// id: 5145, l: 5146	
	fmov	 d0, #4.500000000000000000e+00	// id: 5146, l: 5147	
	fmul	 d3, d3, d0	// id: 5147, l: 5148	
	fmov	 d0, #3.000000000000000000e+00	// id: 5148, l: 5149	
	fadd	 d0, d3, d0	// id: 5149, l: 5150	
	fmul	 d2, d2, d0	// id: 5150, l: 5151	
	fmov	 d0, #1.000000000000000000e+00	// id: 5151, l: 5152	
	fadd	 d2, d2, d0	// id: 5152, l: 5153	
	ldr	 d0, [sp, #32]	// id: 5153, l: 5154	
	fsub	 d0, d2, d0	// id: 5154, l: 5155	
	ldr	 w0, [sp, #140]	// id: 5155, l: 5156	
	add	 w0, w0, #0x12	// id: 5156, l: 5157	
	sxtw	 x0, w0	// id: 5157, l: 5158	
	lsl	 x0, x0, #3	// id: 5158, l: 5159	
	ldr	 x1, [sp, #8]	// id: 5159, l: 5160	
	add	 x0, x1, x0	// id: 5160, l: 5161	
	fmul	 d0, d1, d0	// id: 5161, l: 5162	
	str	 d0, [x0]	// id: 5162, l: 5163	
	ldr	 w0, [sp, #140]	// id: 5163, l: 5164	
	add	 w0, w0, #0x14	// id: 5164, l: 5165	
	str	 w0, [sp, #140]	// id: 5165, l: 5166	
.L50:	// id: 5166, l: 5167	
	ldr	 w1, [sp, #140]	// id: 5167, l: 5168	
	mov	 w0, #0xd3f                 	// #3391	// id: 5168, l: 5169	
	movk	 w0, #0x3, lsl #16	// id: 5169, l: 5170	
	cmp	 w1, w0	// id: 5170, l: 5171	
	ble	 .L51	// id: 5171, l: 5172	
	mov	 w0, #0xad40                	// #44352	// id: 5172, l: 5173	
	movk	 w0, #0x189, lsl #16	// id: 5173, l: 5174	
	str	 w0, [sp, #140]	// id: 5174, l: 5175	
	b	 .L52	// id: 5175, l: 5176	
.L53:	// id: 5176, l: 5177	
	ldr	 w1, [sp, #140]	// id: 5177, l: 5178	
	mov	 w0, #0xf2c0                	// #62144	// id: 5178, l: 5179	
	movk	 w0, #0xfffc, lsl #16	// id: 5179, l: 5180	
	add	 w0, w1, w0	// id: 5180, l: 5181	
	sxtw	 x0, w0	// id: 5181, l: 5182	
	lsl	 x0, x0, #3	// id: 5182, l: 5183	
	ldr	 x1, [sp, #8]	// id: 5183, l: 5184	
	add	 x0, x1, x0	// id: 5184, l: 5185	
	ldr	 d1, [x0]	// id: 5185, l: 5186	
	ldr	 w1, [sp, #140]	// id: 5186, l: 5187	
	mov	 w0, #0xf2c1                	// #62145	// id: 5187, l: 5188	
	movk	 w0, #0xfffc, lsl #16	// id: 5188, l: 5189	
	add	 w0, w1, w0	// id: 5189, l: 5190	
	sxtw	 x0, w0	// id: 5190, l: 5191	
	lsl	 x0, x0, #3	// id: 5191, l: 5192	
	ldr	 x1, [sp, #8]	// id: 5192, l: 5193	
	add	 x0, x1, x0	// id: 5193, l: 5194	
	ldr	 d0, [x0]	// id: 5194, l: 5195	
	fadd	 d1, d1, d0	// id: 5195, l: 5196	
	ldr	 w1, [sp, #140]	// id: 5196, l: 5197	
	mov	 w0, #0xf2c2                	// #62146	// id: 5197, l: 5198	
	movk	 w0, #0xfffc, lsl #16	// id: 5198, l: 5199	
	add	 w0, w1, w0	// id: 5199, l: 5200	
	sxtw	 x0, w0	// id: 5200, l: 5201	
	lsl	 x0, x0, #3	// id: 5201, l: 5202	
	ldr	 x1, [sp, #8]	// id: 5202, l: 5203	
	add	 x0, x1, x0	// id: 5203, l: 5204	
	ldr	 d0, [x0]	// id: 5204, l: 5205	
	fadd	 d1, d1, d0	// id: 5205, l: 5206	
	ldr	 w1, [sp, #140]	// id: 5206, l: 5207	
	mov	 w0, #0xf2c3                	// #62147	// id: 5207, l: 5208	
	movk	 w0, #0xfffc, lsl #16	// id: 5208, l: 5209	
	add	 w0, w1, w0	// id: 5209, l: 5210	
	sxtw	 x0, w0	// id: 5210, l: 5211	
	lsl	 x0, x0, #3	// id: 5211, l: 5212	
	ldr	 x1, [sp, #8]	// id: 5212, l: 5213	
	add	 x0, x1, x0	// id: 5213, l: 5214	
	ldr	 d0, [x0]	// id: 5214, l: 5215	
	fadd	 d1, d1, d0	// id: 5215, l: 5216	
	ldr	 w1, [sp, #140]	// id: 5216, l: 5217	
	mov	 w0, #0xf2c4                	// #62148	// id: 5217, l: 5218	
	movk	 w0, #0xfffc, lsl #16	// id: 5218, l: 5219	
	add	 w0, w1, w0	// id: 5219, l: 5220	
	sxtw	 x0, w0	// id: 5220, l: 5221	
	lsl	 x0, x0, #3	// id: 5221, l: 5222	
	ldr	 x1, [sp, #8]	// id: 5222, l: 5223	
	add	 x0, x1, x0	// id: 5223, l: 5224	
	ldr	 d0, [x0]	// id: 5224, l: 5225	
	fadd	 d1, d1, d0	// id: 5225, l: 5226	
	ldr	 w1, [sp, #140]	// id: 5226, l: 5227	
	mov	 w0, #0xf2c5                	// #62149	// id: 5227, l: 5228	
	movk	 w0, #0xfffc, lsl #16	// id: 5228, l: 5229	
	add	 w0, w1, w0	// id: 5229, l: 5230	
	sxtw	 x0, w0	// id: 5230, l: 5231	
	lsl	 x0, x0, #3	// id: 5231, l: 5232	
	ldr	 x1, [sp, #8]	// id: 5232, l: 5233	
	add	 x0, x1, x0	// id: 5233, l: 5234	
	ldr	 d0, [x0]	// id: 5234, l: 5235	
	fadd	 d1, d1, d0	// id: 5235, l: 5236	
	ldr	 w1, [sp, #140]	// id: 5236, l: 5237	
	mov	 w0, #0xf2c6                	// #62150	// id: 5237, l: 5238	
	movk	 w0, #0xfffc, lsl #16	// id: 5238, l: 5239	
	add	 w0, w1, w0	// id: 5239, l: 5240	
	sxtw	 x0, w0	// id: 5240, l: 5241	
	lsl	 x0, x0, #3	// id: 5241, l: 5242	
	ldr	 x1, [sp, #8]	// id: 5242, l: 5243	
	add	 x0, x1, x0	// id: 5243, l: 5244	
	ldr	 d0, [x0]	// id: 5244, l: 5245	
	fadd	 d1, d1, d0	// id: 5245, l: 5246	
	ldr	 w1, [sp, #140]	// id: 5246, l: 5247	
	mov	 w0, #0xf2c7                	// #62151	// id: 5247, l: 5248	
	movk	 w0, #0xfffc, lsl #16	// id: 5248, l: 5249	
	add	 w0, w1, w0	// id: 5249, l: 5250	
	sxtw	 x0, w0	// id: 5250, l: 5251	
	lsl	 x0, x0, #3	// id: 5251, l: 5252	
	ldr	 x1, [sp, #8]	// id: 5252, l: 5253	
	add	 x0, x1, x0	// id: 5253, l: 5254	
	ldr	 d0, [x0]	// id: 5254, l: 5255	
	fadd	 d1, d1, d0	// id: 5255, l: 5256	
	ldr	 w1, [sp, #140]	// id: 5256, l: 5257	
	mov	 w0, #0xf2c8                	// #62152	// id: 5257, l: 5258	
	movk	 w0, #0xfffc, lsl #16	// id: 5258, l: 5259	
	add	 w0, w1, w0	// id: 5259, l: 5260	
	sxtw	 x0, w0	// id: 5260, l: 5261	
	lsl	 x0, x0, #3	// id: 5261, l: 5262	
	ldr	 x1, [sp, #8]	// id: 5262, l: 5263	
	add	 x0, x1, x0	// id: 5263, l: 5264	
	ldr	 d0, [x0]	// id: 5264, l: 5265	
	fadd	 d1, d1, d0	// id: 5265, l: 5266	
	ldr	 w1, [sp, #140]	// id: 5266, l: 5267	
	mov	 w0, #0xf2c9                	// #62153	// id: 5267, l: 5268	
	movk	 w0, #0xfffc, lsl #16	// id: 5268, l: 5269	
	add	 w0, w1, w0	// id: 5269, l: 5270	
	sxtw	 x0, w0	// id: 5270, l: 5271	
	lsl	 x0, x0, #3	// id: 5271, l: 5272	
	ldr	 x1, [sp, #8]	// id: 5272, l: 5273	
	add	 x0, x1, x0	// id: 5273, l: 5274	
	ldr	 d0, [x0]	// id: 5274, l: 5275	
	fadd	 d1, d1, d0	// id: 5275, l: 5276	
	ldr	 w1, [sp, #140]	// id: 5276, l: 5277	
	mov	 w0, #0xf2ca                	// #62154	// id: 5277, l: 5278	
	movk	 w0, #0xfffc, lsl #16	// id: 5278, l: 5279	
	add	 w0, w1, w0	// id: 5279, l: 5280	
	sxtw	 x0, w0	// id: 5280, l: 5281	
	lsl	 x0, x0, #3	// id: 5281, l: 5282	
	ldr	 x1, [sp, #8]	// id: 5282, l: 5283	
	add	 x0, x1, x0	// id: 5283, l: 5284	
	ldr	 d0, [x0]	// id: 5284, l: 5285	
	fadd	 d1, d1, d0	// id: 5285, l: 5286	
	ldr	 w1, [sp, #140]	// id: 5286, l: 5287	
	mov	 w0, #0xf2cb                	// #62155	// id: 5287, l: 5288	
	movk	 w0, #0xfffc, lsl #16	// id: 5288, l: 5289	
	add	 w0, w1, w0	// id: 5289, l: 5290	
	sxtw	 x0, w0	// id: 5290, l: 5291	
	lsl	 x0, x0, #3	// id: 5291, l: 5292	
	ldr	 x1, [sp, #8]	// id: 5292, l: 5293	
	add	 x0, x1, x0	// id: 5293, l: 5294	
	ldr	 d0, [x0]	// id: 5294, l: 5295	
	fadd	 d1, d1, d0	// id: 5295, l: 5296	
	ldr	 w1, [sp, #140]	// id: 5296, l: 5297	
	mov	 w0, #0xf2cc                	// #62156	// id: 5297, l: 5298	
	movk	 w0, #0xfffc, lsl #16	// id: 5298, l: 5299	
	add	 w0, w1, w0	// id: 5299, l: 5300	
	sxtw	 x0, w0	// id: 5300, l: 5301	
	lsl	 x0, x0, #3	// id: 5301, l: 5302	
	ldr	 x1, [sp, #8]	// id: 5302, l: 5303	
	add	 x0, x1, x0	// id: 5303, l: 5304	
	ldr	 d0, [x0]	// id: 5304, l: 5305	
	fadd	 d1, d1, d0	// id: 5305, l: 5306	
	ldr	 w1, [sp, #140]	// id: 5306, l: 5307	
	mov	 w0, #0xf2cd                	// #62157	// id: 5307, l: 5308	
	movk	 w0, #0xfffc, lsl #16	// id: 5308, l: 5309	
	add	 w0, w1, w0	// id: 5309, l: 5310	
	sxtw	 x0, w0	// id: 5310, l: 5311	
	lsl	 x0, x0, #3	// id: 5311, l: 5312	
	ldr	 x1, [sp, #8]	// id: 5312, l: 5313	
	add	 x0, x1, x0	// id: 5313, l: 5314	
	ldr	 d0, [x0]	// id: 5314, l: 5315	
	fadd	 d1, d1, d0	// id: 5315, l: 5316	
	ldr	 w1, [sp, #140]	// id: 5316, l: 5317	
	mov	 w0, #0xf2ce                	// #62158	// id: 5317, l: 5318	
	movk	 w0, #0xfffc, lsl #16	// id: 5318, l: 5319	
	add	 w0, w1, w0	// id: 5319, l: 5320	
	sxtw	 x0, w0	// id: 5320, l: 5321	
	lsl	 x0, x0, #3	// id: 5321, l: 5322	
	ldr	 x1, [sp, #8]	// id: 5322, l: 5323	
	add	 x0, x1, x0	// id: 5323, l: 5324	
	ldr	 d0, [x0]	// id: 5324, l: 5325	
	fadd	 d1, d1, d0	// id: 5325, l: 5326	
	ldr	 w1, [sp, #140]	// id: 5326, l: 5327	
	mov	 w0, #0xf2cf                	// #62159	// id: 5327, l: 5328	
	movk	 w0, #0xfffc, lsl #16	// id: 5328, l: 5329	
	add	 w0, w1, w0	// id: 5329, l: 5330	
	sxtw	 x0, w0	// id: 5330, l: 5331	
	lsl	 x0, x0, #3	// id: 5331, l: 5332	
	ldr	 x1, [sp, #8]	// id: 5332, l: 5333	
	add	 x0, x1, x0	// id: 5333, l: 5334	
	ldr	 d0, [x0]	// id: 5334, l: 5335	
	fadd	 d1, d1, d0	// id: 5335, l: 5336	
	ldr	 w1, [sp, #140]	// id: 5336, l: 5337	
	mov	 w0, #0xf2d0                	// #62160	// id: 5337, l: 5338	
	movk	 w0, #0xfffc, lsl #16	// id: 5338, l: 5339	
	add	 w0, w1, w0	// id: 5339, l: 5340	
	sxtw	 x0, w0	// id: 5340, l: 5341	
	lsl	 x0, x0, #3	// id: 5341, l: 5342	
	ldr	 x1, [sp, #8]	// id: 5342, l: 5343	
	add	 x0, x1, x0	// id: 5343, l: 5344	
	ldr	 d0, [x0]	// id: 5344, l: 5345	
	fadd	 d1, d1, d0	// id: 5345, l: 5346	
	ldr	 w1, [sp, #140]	// id: 5346, l: 5347	
	mov	 w0, #0xf2d1                	// #62161	// id: 5347, l: 5348	
	movk	 w0, #0xfffc, lsl #16	// id: 5348, l: 5349	
	add	 w0, w1, w0	// id: 5349, l: 5350	
	sxtw	 x0, w0	// id: 5350, l: 5351	
	lsl	 x0, x0, #3	// id: 5351, l: 5352	
	ldr	 x1, [sp, #8]	// id: 5352, l: 5353	
	add	 x0, x1, x0	// id: 5353, l: 5354	
	ldr	 d0, [x0]	// id: 5354, l: 5355	
	fadd	 d1, d1, d0	// id: 5355, l: 5356	
	ldr	 w1, [sp, #140]	// id: 5356, l: 5357	
	mov	 w0, #0xf2d2                	// #62162	// id: 5357, l: 5358	
	movk	 w0, #0xfffc, lsl #16	// id: 5358, l: 5359	
	add	 w0, w1, w0	// id: 5359, l: 5360	
	sxtw	 x0, w0	// id: 5360, l: 5361	
	lsl	 x0, x0, #3	// id: 5361, l: 5362	
	ldr	 x1, [sp, #8]	// id: 5362, l: 5363	
	add	 x0, x1, x0	// id: 5363, l: 5364	
	ldr	 d0, [x0]	// id: 5364, l: 5365	
	fadd	 d0, d1, d0	// id: 5365, l: 5366	
	str	 d0, [sp, #128]	// id: 5366, l: 5367	
	ldr	 w1, [sp, #140]	// id: 5367, l: 5368	
	mov	 w0, #0xf2c3                	// #62147	// id: 5368, l: 5369	
	movk	 w0, #0xfffc, lsl #16	// id: 5369, l: 5370	
	add	 w0, w1, w0	// id: 5370, l: 5371	
	sxtw	 x0, w0	// id: 5371, l: 5372	
	lsl	 x0, x0, #3	// id: 5372, l: 5373	
	ldr	 x1, [sp, #8]	// id: 5373, l: 5374	
	add	 x0, x1, x0	// id: 5374, l: 5375	
	ldr	 d1, [x0]	// id: 5375, l: 5376	
	ldr	 w1, [sp, #140]	// id: 5376, l: 5377	
	mov	 w0, #0xf2c4                	// #62148	// id: 5377, l: 5378	
	movk	 w0, #0xfffc, lsl #16	// id: 5378, l: 5379	
	add	 w0, w1, w0	// id: 5379, l: 5380	
	sxtw	 x0, w0	// id: 5380, l: 5381	
	lsl	 x0, x0, #3	// id: 5381, l: 5382	
	ldr	 x1, [sp, #8]	// id: 5382, l: 5383	
	add	 x0, x1, x0	// id: 5383, l: 5384	
	ldr	 d0, [x0]	// id: 5384, l: 5385	
	fsub	 d1, d1, d0	// id: 5385, l: 5386	
	ldr	 w1, [sp, #140]	// id: 5386, l: 5387	
	mov	 w0, #0xf2c7                	// #62151	// id: 5387, l: 5388	
	movk	 w0, #0xfffc, lsl #16	// id: 5388, l: 5389	
	add	 w0, w1, w0	// id: 5389, l: 5390	
	sxtw	 x0, w0	// id: 5390, l: 5391	
	lsl	 x0, x0, #3	// id: 5391, l: 5392	
	ldr	 x1, [sp, #8]	// id: 5392, l: 5393	
	add	 x0, x1, x0	// id: 5393, l: 5394	
	ldr	 d0, [x0]	// id: 5394, l: 5395	
	fadd	 d1, d1, d0	// id: 5395, l: 5396	
	ldr	 w1, [sp, #140]	// id: 5396, l: 5397	
	mov	 w0, #0xf2c8                	// #62152	// id: 5397, l: 5398	
	movk	 w0, #0xfffc, lsl #16	// id: 5398, l: 5399	
	add	 w0, w1, w0	// id: 5399, l: 5400	
	sxtw	 x0, w0	// id: 5400, l: 5401	
	lsl	 x0, x0, #3	// id: 5401, l: 5402	
	ldr	 x1, [sp, #8]	// id: 5402, l: 5403	
	add	 x0, x1, x0	// id: 5403, l: 5404	
	ldr	 d0, [x0]	// id: 5404, l: 5405	
	fsub	 d1, d1, d0	// id: 5405, l: 5406	
	ldr	 w1, [sp, #140]	// id: 5406, l: 5407	
	mov	 w0, #0xf2c9                	// #62153	// id: 5407, l: 5408	
	movk	 w0, #0xfffc, lsl #16	// id: 5408, l: 5409	
	add	 w0, w1, w0	// id: 5409, l: 5410	
	sxtw	 x0, w0	// id: 5410, l: 5411	
	lsl	 x0, x0, #3	// id: 5411, l: 5412	
	ldr	 x1, [sp, #8]	// id: 5412, l: 5413	
	add	 x0, x1, x0	// id: 5413, l: 5414	
	ldr	 d0, [x0]	// id: 5414, l: 5415	
	fadd	 d1, d1, d0	// id: 5415, l: 5416	
	ldr	 w1, [sp, #140]	// id: 5416, l: 5417	
	mov	 w0, #0xf2ca                	// #62154	// id: 5417, l: 5418	
	movk	 w0, #0xfffc, lsl #16	// id: 5418, l: 5419	
	add	 w0, w1, w0	// id: 5419, l: 5420	
	sxtw	 x0, w0	// id: 5420, l: 5421	
	lsl	 x0, x0, #3	// id: 5421, l: 5422	
	ldr	 x1, [sp, #8]	// id: 5422, l: 5423	
	add	 x0, x1, x0	// id: 5423, l: 5424	
	ldr	 d0, [x0]	// id: 5424, l: 5425	
	fsub	 d1, d1, d0	// id: 5425, l: 5426	
	ldr	 w1, [sp, #140]	// id: 5426, l: 5427	
	mov	 w0, #0xf2cf                	// #62159	// id: 5427, l: 5428	
	movk	 w0, #0xfffc, lsl #16	// id: 5428, l: 5429	
	add	 w0, w1, w0	// id: 5429, l: 5430	
	sxtw	 x0, w0	// id: 5430, l: 5431	
	lsl	 x0, x0, #3	// id: 5431, l: 5432	
	ldr	 x1, [sp, #8]	// id: 5432, l: 5433	
	add	 x0, x1, x0	// id: 5433, l: 5434	
	ldr	 d0, [x0]	// id: 5434, l: 5435	
	fadd	 d1, d1, d0	// id: 5435, l: 5436	
	ldr	 w1, [sp, #140]	// id: 5436, l: 5437	
	mov	 w0, #0xf2d0                	// #62160	// id: 5437, l: 5438	
	movk	 w0, #0xfffc, lsl #16	// id: 5438, l: 5439	
	add	 w0, w1, w0	// id: 5439, l: 5440	
	sxtw	 x0, w0	// id: 5440, l: 5441	
	lsl	 x0, x0, #3	// id: 5441, l: 5442	
	ldr	 x1, [sp, #8]	// id: 5442, l: 5443	
	add	 x0, x1, x0	// id: 5443, l: 5444	
	ldr	 d0, [x0]	// id: 5444, l: 5445	
	fadd	 d1, d1, d0	// id: 5445, l: 5446	
	ldr	 w1, [sp, #140]	// id: 5446, l: 5447	
	mov	 w0, #0xf2d1                	// #62161	// id: 5447, l: 5448	
	movk	 w0, #0xfffc, lsl #16	// id: 5448, l: 5449	
	add	 w0, w1, w0	// id: 5449, l: 5450	
	sxtw	 x0, w0	// id: 5450, l: 5451	
	lsl	 x0, x0, #3	// id: 5451, l: 5452	
	ldr	 x1, [sp, #8]	// id: 5452, l: 5453	
	add	 x0, x1, x0	// id: 5453, l: 5454	
	ldr	 d0, [x0]	// id: 5454, l: 5455	
	fsub	 d1, d1, d0	// id: 5455, l: 5456	
	ldr	 w1, [sp, #140]	// id: 5456, l: 5457	
	mov	 w0, #0xf2d2                	// #62162	// id: 5457, l: 5458	
	movk	 w0, #0xfffc, lsl #16	// id: 5458, l: 5459	
	add	 w0, w1, w0	// id: 5459, l: 5460	
	sxtw	 x0, w0	// id: 5460, l: 5461	
	lsl	 x0, x0, #3	// id: 5461, l: 5462	
	ldr	 x1, [sp, #8]	// id: 5462, l: 5463	
	add	 x0, x1, x0	// id: 5463, l: 5464	
	ldr	 d0, [x0]	// id: 5464, l: 5465	
	fsub	 d0, d1, d0	// id: 5465, l: 5466	
	str	 d0, [sp, #120]	// id: 5466, l: 5467	
	ldr	 w1, [sp, #140]	// id: 5467, l: 5468	
	mov	 w0, #0xf2c1                	// #62145	// id: 5468, l: 5469	
	movk	 w0, #0xfffc, lsl #16	// id: 5469, l: 5470	
	add	 w0, w1, w0	// id: 5470, l: 5471	
	sxtw	 x0, w0	// id: 5471, l: 5472	
	lsl	 x0, x0, #3	// id: 5472, l: 5473	
	ldr	 x1, [sp, #8]	// id: 5473, l: 5474	
	add	 x0, x1, x0	// id: 5474, l: 5475	
	ldr	 d1, [x0]	// id: 5475, l: 5476	
	ldr	 w1, [sp, #140]	// id: 5476, l: 5477	
	mov	 w0, #0xf2c2                	// #62146	// id: 5477, l: 5478	
	movk	 w0, #0xfffc, lsl #16	// id: 5478, l: 5479	
	add	 w0, w1, w0	// id: 5479, l: 5480	
	sxtw	 x0, w0	// id: 5480, l: 5481	
	lsl	 x0, x0, #3	// id: 5481, l: 5482	
	ldr	 x1, [sp, #8]	// id: 5482, l: 5483	
	add	 x0, x1, x0	// id: 5483, l: 5484	
	ldr	 d0, [x0]	// id: 5484, l: 5485	
	fsub	 d1, d1, d0	// id: 5485, l: 5486	
	ldr	 w1, [sp, #140]	// id: 5486, l: 5487	
	mov	 w0, #0xf2c7                	// #62151	// id: 5487, l: 5488	
	movk	 w0, #0xfffc, lsl #16	// id: 5488, l: 5489	
	add	 w0, w1, w0	// id: 5489, l: 5490	
	sxtw	 x0, w0	// id: 5490, l: 5491	
	lsl	 x0, x0, #3	// id: 5491, l: 5492	
	ldr	 x1, [sp, #8]	// id: 5492, l: 5493	
	add	 x0, x1, x0	// id: 5493, l: 5494	
	ldr	 d0, [x0]	// id: 5494, l: 5495	
	fadd	 d1, d1, d0	// id: 5495, l: 5496	
	ldr	 w1, [sp, #140]	// id: 5496, l: 5497	
	mov	 w0, #0xf2c8                	// #62152	// id: 5497, l: 5498	
	movk	 w0, #0xfffc, lsl #16	// id: 5498, l: 5499	
	add	 w0, w1, w0	// id: 5499, l: 5500	
	sxtw	 x0, w0	// id: 5500, l: 5501	
	lsl	 x0, x0, #3	// id: 5501, l: 5502	
	ldr	 x1, [sp, #8]	// id: 5502, l: 5503	
	add	 x0, x1, x0	// id: 5503, l: 5504	
	ldr	 d0, [x0]	// id: 5504, l: 5505	
	fadd	 d1, d1, d0	// id: 5505, l: 5506	
	ldr	 w1, [sp, #140]	// id: 5506, l: 5507	
	mov	 w0, #0xf2c9                	// #62153	// id: 5507, l: 5508	
	movk	 w0, #0xfffc, lsl #16	// id: 5508, l: 5509	
	add	 w0, w1, w0	// id: 5509, l: 5510	
	sxtw	 x0, w0	// id: 5510, l: 5511	
	lsl	 x0, x0, #3	// id: 5511, l: 5512	
	ldr	 x1, [sp, #8]	// id: 5512, l: 5513	
	add	 x0, x1, x0	// id: 5513, l: 5514	
	ldr	 d0, [x0]	// id: 5514, l: 5515	
	fsub	 d1, d1, d0	// id: 5515, l: 5516	
	ldr	 w1, [sp, #140]	// id: 5516, l: 5517	
	mov	 w0, #0xf2ca                	// #62154	// id: 5517, l: 5518	
	movk	 w0, #0xfffc, lsl #16	// id: 5518, l: 5519	
	add	 w0, w1, w0	// id: 5519, l: 5520	
	sxtw	 x0, w0	// id: 5520, l: 5521	
	lsl	 x0, x0, #3	// id: 5521, l: 5522	
	ldr	 x1, [sp, #8]	// id: 5522, l: 5523	
	add	 x0, x1, x0	// id: 5523, l: 5524	
	ldr	 d0, [x0]	// id: 5524, l: 5525	
	fsub	 d1, d1, d0	// id: 5525, l: 5526	
	ldr	 w1, [sp, #140]	// id: 5526, l: 5527	
	mov	 w0, #0xf2cb                	// #62155	// id: 5527, l: 5528	
	movk	 w0, #0xfffc, lsl #16	// id: 5528, l: 5529	
	add	 w0, w1, w0	// id: 5529, l: 5530	
	sxtw	 x0, w0	// id: 5530, l: 5531	
	lsl	 x0, x0, #3	// id: 5531, l: 5532	
	ldr	 x1, [sp, #8]	// id: 5532, l: 5533	
	add	 x0, x1, x0	// id: 5533, l: 5534	
	ldr	 d0, [x0]	// id: 5534, l: 5535	
	fadd	 d1, d1, d0	// id: 5535, l: 5536	
	ldr	 w1, [sp, #140]	// id: 5536, l: 5537	
	mov	 w0, #0xf2cc                	// #62156	// id: 5537, l: 5538	
	movk	 w0, #0xfffc, lsl #16	// id: 5538, l: 5539	
	add	 w0, w1, w0	// id: 5539, l: 5540	
	sxtw	 x0, w0	// id: 5540, l: 5541	
	lsl	 x0, x0, #3	// id: 5541, l: 5542	
	ldr	 x1, [sp, #8]	// id: 5542, l: 5543	
	add	 x0, x1, x0	// id: 5543, l: 5544	
	ldr	 d0, [x0]	// id: 5544, l: 5545	
	fadd	 d1, d1, d0	// id: 5545, l: 5546	
	ldr	 w1, [sp, #140]	// id: 5546, l: 5547	
	mov	 w0, #0xf2cd                	// #62157	// id: 5547, l: 5548	
	movk	 w0, #0xfffc, lsl #16	// id: 5548, l: 5549	
	add	 w0, w1, w0	// id: 5549, l: 5550	
	sxtw	 x0, w0	// id: 5550, l: 5551	
	lsl	 x0, x0, #3	// id: 5551, l: 5552	
	ldr	 x1, [sp, #8]	// id: 5552, l: 5553	
	add	 x0, x1, x0	// id: 5553, l: 5554	
	ldr	 d0, [x0]	// id: 5554, l: 5555	
	fsub	 d1, d1, d0	// id: 5555, l: 5556	
	ldr	 w1, [sp, #140]	// id: 5556, l: 5557	
	mov	 w0, #0xf2ce                	// #62158	// id: 5557, l: 5558	
	movk	 w0, #0xfffc, lsl #16	// id: 5558, l: 5559	
	add	 w0, w1, w0	// id: 5559, l: 5560	
	sxtw	 x0, w0	// id: 5560, l: 5561	
	lsl	 x0, x0, #3	// id: 5561, l: 5562	
	ldr	 x1, [sp, #8]	// id: 5562, l: 5563	
	add	 x0, x1, x0	// id: 5563, l: 5564	
	ldr	 d0, [x0]	// id: 5564, l: 5565	
	fsub	 d0, d1, d0	// id: 5565, l: 5566	
	str	 d0, [sp, #112]	// id: 5566, l: 5567	
	ldr	 w1, [sp, #140]	// id: 5567, l: 5568	
	mov	 w0, #0xf2c5                	// #62149	// id: 5568, l: 5569	
	movk	 w0, #0xfffc, lsl #16	// id: 5569, l: 5570	
	add	 w0, w1, w0	// id: 5570, l: 5571	
	sxtw	 x0, w0	// id: 5571, l: 5572	
	lsl	 x0, x0, #3	// id: 5572, l: 5573	
	ldr	 x1, [sp, #8]	// id: 5573, l: 5574	
	add	 x0, x1, x0	// id: 5574, l: 5575	
	ldr	 d1, [x0]	// id: 5575, l: 5576	
	ldr	 w1, [sp, #140]	// id: 5576, l: 5577	
	mov	 w0, #0xf2c6                	// #62150	// id: 5577, l: 5578	
	movk	 w0, #0xfffc, lsl #16	// id: 5578, l: 5579	
	add	 w0, w1, w0	// id: 5579, l: 5580	
	sxtw	 x0, w0	// id: 5580, l: 5581	
	lsl	 x0, x0, #3	// id: 5581, l: 5582	
	ldr	 x1, [sp, #8]	// id: 5582, l: 5583	
	add	 x0, x1, x0	// id: 5583, l: 5584	
	ldr	 d0, [x0]	// id: 5584, l: 5585	
	fsub	 d1, d1, d0	// id: 5585, l: 5586	
	ldr	 w1, [sp, #140]	// id: 5586, l: 5587	
	mov	 w0, #0xf2cb                	// #62155	// id: 5587, l: 5588	
	movk	 w0, #0xfffc, lsl #16	// id: 5588, l: 5589	
	add	 w0, w1, w0	// id: 5589, l: 5590	
	sxtw	 x0, w0	// id: 5590, l: 5591	
	lsl	 x0, x0, #3	// id: 5591, l: 5592	
	ldr	 x1, [sp, #8]	// id: 5592, l: 5593	
	add	 x0, x1, x0	// id: 5593, l: 5594	
	ldr	 d0, [x0]	// id: 5594, l: 5595	
	fadd	 d1, d1, d0	// id: 5595, l: 5596	
	ldr	 w1, [sp, #140]	// id: 5596, l: 5597	
	mov	 w0, #0xf2cc                	// #62156	// id: 5597, l: 5598	
	movk	 w0, #0xfffc, lsl #16	// id: 5598, l: 5599	
	add	 w0, w1, w0	// id: 5599, l: 5600	
	sxtw	 x0, w0	// id: 5600, l: 5601	
	lsl	 x0, x0, #3	// id: 5601, l: 5602	
	ldr	 x1, [sp, #8]	// id: 5602, l: 5603	
	add	 x0, x1, x0	// id: 5603, l: 5604	
	ldr	 d0, [x0]	// id: 5604, l: 5605	
	fsub	 d1, d1, d0	// id: 5605, l: 5606	
	ldr	 w1, [sp, #140]	// id: 5606, l: 5607	
	mov	 w0, #0xf2cd                	// #62157	// id: 5607, l: 5608	
	movk	 w0, #0xfffc, lsl #16	// id: 5608, l: 5609	
	add	 w0, w1, w0	// id: 5609, l: 5610	
	sxtw	 x0, w0	// id: 5610, l: 5611	
	lsl	 x0, x0, #3	// id: 5611, l: 5612	
	ldr	 x1, [sp, #8]	// id: 5612, l: 5613	
	add	 x0, x1, x0	// id: 5613, l: 5614	
	ldr	 d0, [x0]	// id: 5614, l: 5615	
	fadd	 d1, d1, d0	// id: 5615, l: 5616	
	ldr	 w1, [sp, #140]	// id: 5616, l: 5617	
	mov	 w0, #0xf2ce                	// #62158	// id: 5617, l: 5618	
	movk	 w0, #0xfffc, lsl #16	// id: 5618, l: 5619	
	add	 w0, w1, w0	// id: 5619, l: 5620	
	sxtw	 x0, w0	// id: 5620, l: 5621	
	lsl	 x0, x0, #3	// id: 5621, l: 5622	
	ldr	 x1, [sp, #8]	// id: 5622, l: 5623	
	add	 x0, x1, x0	// id: 5623, l: 5624	
	ldr	 d0, [x0]	// id: 5624, l: 5625	
	fsub	 d1, d1, d0	// id: 5625, l: 5626	
	ldr	 w1, [sp, #140]	// id: 5626, l: 5627	
	mov	 w0, #0xf2cf                	// #62159	// id: 5627, l: 5628	
	movk	 w0, #0xfffc, lsl #16	// id: 5628, l: 5629	
	add	 w0, w1, w0	// id: 5629, l: 5630	
	sxtw	 x0, w0	// id: 5630, l: 5631	
	lsl	 x0, x0, #3	// id: 5631, l: 5632	
	ldr	 x1, [sp, #8]	// id: 5632, l: 5633	
	add	 x0, x1, x0	// id: 5633, l: 5634	
	ldr	 d0, [x0]	// id: 5634, l: 5635	
	fadd	 d1, d1, d0	// id: 5635, l: 5636	
	ldr	 w1, [sp, #140]	// id: 5636, l: 5637	
	mov	 w0, #0xf2d0                	// #62160	// id: 5637, l: 5638	
	movk	 w0, #0xfffc, lsl #16	// id: 5638, l: 5639	
	add	 w0, w1, w0	// id: 5639, l: 5640	
	sxtw	 x0, w0	// id: 5640, l: 5641	
	lsl	 x0, x0, #3	// id: 5641, l: 5642	
	ldr	 x1, [sp, #8]	// id: 5642, l: 5643	
	add	 x0, x1, x0	// id: 5643, l: 5644	
	ldr	 d0, [x0]	// id: 5644, l: 5645	
	fsub	 d1, d1, d0	// id: 5645, l: 5646	
	ldr	 w1, [sp, #140]	// id: 5646, l: 5647	
	mov	 w0, #0xf2d1                	// #62161	// id: 5647, l: 5648	
	movk	 w0, #0xfffc, lsl #16	// id: 5648, l: 5649	
	add	 w0, w1, w0	// id: 5649, l: 5650	
	sxtw	 x0, w0	// id: 5650, l: 5651	
	lsl	 x0, x0, #3	// id: 5651, l: 5652	
	ldr	 x1, [sp, #8]	// id: 5652, l: 5653	
	add	 x0, x1, x0	// id: 5653, l: 5654	
	ldr	 d0, [x0]	// id: 5654, l: 5655	
	fadd	 d1, d1, d0	// id: 5655, l: 5656	
	ldr	 w1, [sp, #140]	// id: 5656, l: 5657	
	mov	 w0, #0xf2d2                	// #62162	// id: 5657, l: 5658	
	movk	 w0, #0xfffc, lsl #16	// id: 5658, l: 5659	
	add	 w0, w1, w0	// id: 5659, l: 5660	
	sxtw	 x0, w0	// id: 5660, l: 5661	
	lsl	 x0, x0, #3	// id: 5661, l: 5662	
	ldr	 x1, [sp, #8]	// id: 5662, l: 5663	
	add	 x0, x1, x0	// id: 5663, l: 5664	
	ldr	 d0, [x0]	// id: 5664, l: 5665	
	fsub	 d0, d1, d0	// id: 5665, l: 5666	
	str	 d0, [sp, #104]	// id: 5666, l: 5667	
	ldr	 d0, [sp, #128]	// id: 5667, l: 5668	
	ldr	 d1, [sp, #120]	// id: 5668, l: 5669	
	fdiv	 d0, d1, d0	// id: 5669, l: 5670	
	str	 d0, [sp, #120]	// id: 5670, l: 5671	
	ldr	 d0, [sp, #128]	// id: 5671, l: 5672	
	ldr	 d1, [sp, #112]	// id: 5672, l: 5673	
	fdiv	 d0, d1, d0	// id: 5673, l: 5674	
	str	 d0, [sp, #112]	// id: 5674, l: 5675	
	ldr	 d0, [sp, #128]	// id: 5675, l: 5676	
	ldr	 d1, [sp, #104]	// id: 5676, l: 5677	
	fdiv	 d0, d1, d0	// id: 5677, l: 5678	
	str	 d0, [sp, #104]	// id: 5678, l: 5679	
	ldr	 w1, [sp, #140]	// id: 5679, l: 5680	
	mov	 w0, #0xe580                	// #58752	// id: 5680, l: 5681	
	movk	 w0, #0xfff9, lsl #16	// id: 5681, l: 5682	
	add	 w0, w1, w0	// id: 5682, l: 5683	
	sxtw	 x0, w0	// id: 5683, l: 5684	
	lsl	 x0, x0, #3	// id: 5684, l: 5685	
	ldr	 x1, [sp, #8]	// id: 5685, l: 5686	
	add	 x0, x1, x0	// id: 5686, l: 5687	
	ldr	 d1, [x0]	// id: 5687, l: 5688	
	ldr	 w1, [sp, #140]	// id: 5688, l: 5689	
	mov	 w0, #0xe581                	// #58753	// id: 5689, l: 5690	
	movk	 w0, #0xfff9, lsl #16	// id: 5690, l: 5691	
	add	 w0, w1, w0	// id: 5691, l: 5692	
	sxtw	 x0, w0	// id: 5692, l: 5693	
	lsl	 x0, x0, #3	// id: 5693, l: 5694	
	ldr	 x1, [sp, #8]	// id: 5694, l: 5695	
	add	 x0, x1, x0	// id: 5695, l: 5696	
	ldr	 d0, [x0]	// id: 5696, l: 5697	
	fadd	 d1, d1, d0	// id: 5697, l: 5698	
	ldr	 w1, [sp, #140]	// id: 5698, l: 5699	
	mov	 w0, #0xe582                	// #58754	// id: 5699, l: 5700	
	movk	 w0, #0xfff9, lsl #16	// id: 5700, l: 5701	
	add	 w0, w1, w0	// id: 5701, l: 5702	
	sxtw	 x0, w0	// id: 5702, l: 5703	
	lsl	 x0, x0, #3	// id: 5703, l: 5704	
	ldr	 x1, [sp, #8]	// id: 5704, l: 5705	
	add	 x0, x1, x0	// id: 5705, l: 5706	
	ldr	 d0, [x0]	// id: 5706, l: 5707	
	fadd	 d1, d1, d0	// id: 5707, l: 5708	
	ldr	 w1, [sp, #140]	// id: 5708, l: 5709	
	mov	 w0, #0xe583                	// #58755	// id: 5709, l: 5710	
	movk	 w0, #0xfff9, lsl #16	// id: 5710, l: 5711	
	add	 w0, w1, w0	// id: 5711, l: 5712	
	sxtw	 x0, w0	// id: 5712, l: 5713	
	lsl	 x0, x0, #3	// id: 5713, l: 5714	
	ldr	 x1, [sp, #8]	// id: 5714, l: 5715	
	add	 x0, x1, x0	// id: 5715, l: 5716	
	ldr	 d0, [x0]	// id: 5716, l: 5717	
	fadd	 d1, d1, d0	// id: 5717, l: 5718	
	ldr	 w1, [sp, #140]	// id: 5718, l: 5719	
	mov	 w0, #0xe584                	// #58756	// id: 5719, l: 5720	
	movk	 w0, #0xfff9, lsl #16	// id: 5720, l: 5721	
	add	 w0, w1, w0	// id: 5721, l: 5722	
	sxtw	 x0, w0	// id: 5722, l: 5723	
	lsl	 x0, x0, #3	// id: 5723, l: 5724	
	ldr	 x1, [sp, #8]	// id: 5724, l: 5725	
	add	 x0, x1, x0	// id: 5725, l: 5726	
	ldr	 d0, [x0]	// id: 5726, l: 5727	
	fadd	 d1, d1, d0	// id: 5727, l: 5728	
	ldr	 w1, [sp, #140]	// id: 5728, l: 5729	
	mov	 w0, #0xe585                	// #58757	// id: 5729, l: 5730	
	movk	 w0, #0xfff9, lsl #16	// id: 5730, l: 5731	
	add	 w0, w1, w0	// id: 5731, l: 5732	
	sxtw	 x0, w0	// id: 5732, l: 5733	
	lsl	 x0, x0, #3	// id: 5733, l: 5734	
	ldr	 x1, [sp, #8]	// id: 5734, l: 5735	
	add	 x0, x1, x0	// id: 5735, l: 5736	
	ldr	 d0, [x0]	// id: 5736, l: 5737	
	fadd	 d1, d1, d0	// id: 5737, l: 5738	
	ldr	 w1, [sp, #140]	// id: 5738, l: 5739	
	mov	 w0, #0xe586                	// #58758	// id: 5739, l: 5740	
	movk	 w0, #0xfff9, lsl #16	// id: 5740, l: 5741	
	add	 w0, w1, w0	// id: 5741, l: 5742	
	sxtw	 x0, w0	// id: 5742, l: 5743	
	lsl	 x0, x0, #3	// id: 5743, l: 5744	
	ldr	 x1, [sp, #8]	// id: 5744, l: 5745	
	add	 x0, x1, x0	// id: 5745, l: 5746	
	ldr	 d0, [x0]	// id: 5746, l: 5747	
	fadd	 d1, d1, d0	// id: 5747, l: 5748	
	ldr	 w1, [sp, #140]	// id: 5748, l: 5749	
	mov	 w0, #0xe587                	// #58759	// id: 5749, l: 5750	
	movk	 w0, #0xfff9, lsl #16	// id: 5750, l: 5751	
	add	 w0, w1, w0	// id: 5751, l: 5752	
	sxtw	 x0, w0	// id: 5752, l: 5753	
	lsl	 x0, x0, #3	// id: 5753, l: 5754	
	ldr	 x1, [sp, #8]	// id: 5754, l: 5755	
	add	 x0, x1, x0	// id: 5755, l: 5756	
	ldr	 d0, [x0]	// id: 5756, l: 5757	
	fadd	 d1, d1, d0	// id: 5757, l: 5758	
	ldr	 w1, [sp, #140]	// id: 5758, l: 5759	
	mov	 w0, #0xe588                	// #58760	// id: 5759, l: 5760	
	movk	 w0, #0xfff9, lsl #16	// id: 5760, l: 5761	
	add	 w0, w1, w0	// id: 5761, l: 5762	
	sxtw	 x0, w0	// id: 5762, l: 5763	
	lsl	 x0, x0, #3	// id: 5763, l: 5764	
	ldr	 x1, [sp, #8]	// id: 5764, l: 5765	
	add	 x0, x1, x0	// id: 5765, l: 5766	
	ldr	 d0, [x0]	// id: 5766, l: 5767	
	fadd	 d1, d1, d0	// id: 5767, l: 5768	
	ldr	 w1, [sp, #140]	// id: 5768, l: 5769	
	mov	 w0, #0xe589                	// #58761	// id: 5769, l: 5770	
	movk	 w0, #0xfff9, lsl #16	// id: 5770, l: 5771	
	add	 w0, w1, w0	// id: 5771, l: 5772	
	sxtw	 x0, w0	// id: 5772, l: 5773	
	lsl	 x0, x0, #3	// id: 5773, l: 5774	
	ldr	 x1, [sp, #8]	// id: 5774, l: 5775	
	add	 x0, x1, x0	// id: 5775, l: 5776	
	ldr	 d0, [x0]	// id: 5776, l: 5777	
	fadd	 d1, d1, d0	// id: 5777, l: 5778	
	ldr	 w1, [sp, #140]	// id: 5778, l: 5779	
	mov	 w0, #0xe58a                	// #58762	// id: 5779, l: 5780	
	movk	 w0, #0xfff9, lsl #16	// id: 5780, l: 5781	
	add	 w0, w1, w0	// id: 5781, l: 5782	
	sxtw	 x0, w0	// id: 5782, l: 5783	
	lsl	 x0, x0, #3	// id: 5783, l: 5784	
	ldr	 x1, [sp, #8]	// id: 5784, l: 5785	
	add	 x0, x1, x0	// id: 5785, l: 5786	
	ldr	 d0, [x0]	// id: 5786, l: 5787	
	fadd	 d1, d1, d0	// id: 5787, l: 5788	
	ldr	 w1, [sp, #140]	// id: 5788, l: 5789	
	mov	 w0, #0xe58b                	// #58763	// id: 5789, l: 5790	
	movk	 w0, #0xfff9, lsl #16	// id: 5790, l: 5791	
	add	 w0, w1, w0	// id: 5791, l: 5792	
	sxtw	 x0, w0	// id: 5792, l: 5793	
	lsl	 x0, x0, #3	// id: 5793, l: 5794	
	ldr	 x1, [sp, #8]	// id: 5794, l: 5795	
	add	 x0, x1, x0	// id: 5795, l: 5796	
	ldr	 d0, [x0]	// id: 5796, l: 5797	
	fadd	 d1, d1, d0	// id: 5797, l: 5798	
	ldr	 w1, [sp, #140]	// id: 5798, l: 5799	
	mov	 w0, #0xe58c                	// #58764	// id: 5799, l: 5800	
	movk	 w0, #0xfff9, lsl #16	// id: 5800, l: 5801	
	add	 w0, w1, w0	// id: 5801, l: 5802	
	sxtw	 x0, w0	// id: 5802, l: 5803	
	lsl	 x0, x0, #3	// id: 5803, l: 5804	
	ldr	 x1, [sp, #8]	// id: 5804, l: 5805	
	add	 x0, x1, x0	// id: 5805, l: 5806	
	ldr	 d0, [x0]	// id: 5806, l: 5807	
	fadd	 d1, d1, d0	// id: 5807, l: 5808	
	ldr	 w1, [sp, #140]	// id: 5808, l: 5809	
	mov	 w0, #0xe58d                	// #58765	// id: 5809, l: 5810	
	movk	 w0, #0xfff9, lsl #16	// id: 5810, l: 5811	
	add	 w0, w1, w0	// id: 5811, l: 5812	
	sxtw	 x0, w0	// id: 5812, l: 5813	
	lsl	 x0, x0, #3	// id: 5813, l: 5814	
	ldr	 x1, [sp, #8]	// id: 5814, l: 5815	
	add	 x0, x1, x0	// id: 5815, l: 5816	
	ldr	 d0, [x0]	// id: 5816, l: 5817	
	fadd	 d1, d1, d0	// id: 5817, l: 5818	
	ldr	 w1, [sp, #140]	// id: 5818, l: 5819	
	mov	 w0, #0xe58e                	// #58766	// id: 5819, l: 5820	
	movk	 w0, #0xfff9, lsl #16	// id: 5820, l: 5821	
	add	 w0, w1, w0	// id: 5821, l: 5822	
	sxtw	 x0, w0	// id: 5822, l: 5823	
	lsl	 x0, x0, #3	// id: 5823, l: 5824	
	ldr	 x1, [sp, #8]	// id: 5824, l: 5825	
	add	 x0, x1, x0	// id: 5825, l: 5826	
	ldr	 d0, [x0]	// id: 5826, l: 5827	
	fadd	 d1, d1, d0	// id: 5827, l: 5828	
	ldr	 w1, [sp, #140]	// id: 5828, l: 5829	
	mov	 w0, #0xe58f                	// #58767	// id: 5829, l: 5830	
	movk	 w0, #0xfff9, lsl #16	// id: 5830, l: 5831	
	add	 w0, w1, w0	// id: 5831, l: 5832	
	sxtw	 x0, w0	// id: 5832, l: 5833	
	lsl	 x0, x0, #3	// id: 5833, l: 5834	
	ldr	 x1, [sp, #8]	// id: 5834, l: 5835	
	add	 x0, x1, x0	// id: 5835, l: 5836	
	ldr	 d0, [x0]	// id: 5836, l: 5837	
	fadd	 d1, d1, d0	// id: 5837, l: 5838	
	ldr	 w1, [sp, #140]	// id: 5838, l: 5839	
	mov	 w0, #0xe590                	// #58768	// id: 5839, l: 5840	
	movk	 w0, #0xfff9, lsl #16	// id: 5840, l: 5841	
	add	 w0, w1, w0	// id: 5841, l: 5842	
	sxtw	 x0, w0	// id: 5842, l: 5843	
	lsl	 x0, x0, #3	// id: 5843, l: 5844	
	ldr	 x1, [sp, #8]	// id: 5844, l: 5845	
	add	 x0, x1, x0	// id: 5845, l: 5846	
	ldr	 d0, [x0]	// id: 5846, l: 5847	
	fadd	 d1, d1, d0	// id: 5847, l: 5848	
	ldr	 w1, [sp, #140]	// id: 5848, l: 5849	
	mov	 w0, #0xe591                	// #58769	// id: 5849, l: 5850	
	movk	 w0, #0xfff9, lsl #16	// id: 5850, l: 5851	
	add	 w0, w1, w0	// id: 5851, l: 5852	
	sxtw	 x0, w0	// id: 5852, l: 5853	
	lsl	 x0, x0, #3	// id: 5853, l: 5854	
	ldr	 x1, [sp, #8]	// id: 5854, l: 5855	
	add	 x0, x1, x0	// id: 5855, l: 5856	
	ldr	 d0, [x0]	// id: 5856, l: 5857	
	fadd	 d1, d1, d0	// id: 5857, l: 5858	
	ldr	 w1, [sp, #140]	// id: 5858, l: 5859	
	mov	 w0, #0xe592                	// #58770	// id: 5859, l: 5860	
	movk	 w0, #0xfff9, lsl #16	// id: 5860, l: 5861	
	add	 w0, w1, w0	// id: 5861, l: 5862	
	sxtw	 x0, w0	// id: 5862, l: 5863	
	lsl	 x0, x0, #3	// id: 5863, l: 5864	
	ldr	 x1, [sp, #8]	// id: 5864, l: 5865	
	add	 x0, x1, x0	// id: 5865, l: 5866	
	ldr	 d0, [x0]	// id: 5866, l: 5867	
	fadd	 d0, d1, d0	// id: 5867, l: 5868	
	str	 d0, [sp, #96]	// id: 5868, l: 5869	
	ldr	 w1, [sp, #140]	// id: 5869, l: 5870	
	mov	 w0, #0xe583                	// #58755	// id: 5870, l: 5871	
	movk	 w0, #0xfff9, lsl #16	// id: 5871, l: 5872	
	add	 w0, w1, w0	// id: 5872, l: 5873	
	sxtw	 x0, w0	// id: 5873, l: 5874	
	lsl	 x0, x0, #3	// id: 5874, l: 5875	
	ldr	 x1, [sp, #8]	// id: 5875, l: 5876	
	add	 x0, x1, x0	// id: 5876, l: 5877	
	ldr	 d1, [x0]	// id: 5877, l: 5878	
	ldr	 w1, [sp, #140]	// id: 5878, l: 5879	
	mov	 w0, #0xe584                	// #58756	// id: 5879, l: 5880	
	movk	 w0, #0xfff9, lsl #16	// id: 5880, l: 5881	
	add	 w0, w1, w0	// id: 5881, l: 5882	
	sxtw	 x0, w0	// id: 5882, l: 5883	
	lsl	 x0, x0, #3	// id: 5883, l: 5884	
	ldr	 x1, [sp, #8]	// id: 5884, l: 5885	
	add	 x0, x1, x0	// id: 5885, l: 5886	
	ldr	 d0, [x0]	// id: 5886, l: 5887	
	fsub	 d1, d1, d0	// id: 5887, l: 5888	
	ldr	 w1, [sp, #140]	// id: 5888, l: 5889	
	mov	 w0, #0xe587                	// #58759	// id: 5889, l: 5890	
	movk	 w0, #0xfff9, lsl #16	// id: 5890, l: 5891	
	add	 w0, w1, w0	// id: 5891, l: 5892	
	sxtw	 x0, w0	// id: 5892, l: 5893	
	lsl	 x0, x0, #3	// id: 5893, l: 5894	
	ldr	 x1, [sp, #8]	// id: 5894, l: 5895	
	add	 x0, x1, x0	// id: 5895, l: 5896	
	ldr	 d0, [x0]	// id: 5896, l: 5897	
	fadd	 d1, d1, d0	// id: 5897, l: 5898	
	ldr	 w1, [sp, #140]	// id: 5898, l: 5899	
	mov	 w0, #0xe588                	// #58760	// id: 5899, l: 5900	
	movk	 w0, #0xfff9, lsl #16	// id: 5900, l: 5901	
	add	 w0, w1, w0	// id: 5901, l: 5902	
	sxtw	 x0, w0	// id: 5902, l: 5903	
	lsl	 x0, x0, #3	// id: 5903, l: 5904	
	ldr	 x1, [sp, #8]	// id: 5904, l: 5905	
	add	 x0, x1, x0	// id: 5905, l: 5906	
	ldr	 d0, [x0]	// id: 5906, l: 5907	
	fsub	 d1, d1, d0	// id: 5907, l: 5908	
	ldr	 w1, [sp, #140]	// id: 5908, l: 5909	
	mov	 w0, #0xe589                	// #58761	// id: 5909, l: 5910	
	movk	 w0, #0xfff9, lsl #16	// id: 5910, l: 5911	
	add	 w0, w1, w0	// id: 5911, l: 5912	
	sxtw	 x0, w0	// id: 5912, l: 5913	
	lsl	 x0, x0, #3	// id: 5913, l: 5914	
	ldr	 x1, [sp, #8]	// id: 5914, l: 5915	
	add	 x0, x1, x0	// id: 5915, l: 5916	
	ldr	 d0, [x0]	// id: 5916, l: 5917	
	fadd	 d1, d1, d0	// id: 5917, l: 5918	
	ldr	 w1, [sp, #140]	// id: 5918, l: 5919	
	mov	 w0, #0xe58a                	// #58762	// id: 5919, l: 5920	
	movk	 w0, #0xfff9, lsl #16	// id: 5920, l: 5921	
	add	 w0, w1, w0	// id: 5921, l: 5922	
	sxtw	 x0, w0	// id: 5922, l: 5923	
	lsl	 x0, x0, #3	// id: 5923, l: 5924	
	ldr	 x1, [sp, #8]	// id: 5924, l: 5925	
	add	 x0, x1, x0	// id: 5925, l: 5926	
	ldr	 d0, [x0]	// id: 5926, l: 5927	
	fsub	 d1, d1, d0	// id: 5927, l: 5928	
	ldr	 w1, [sp, #140]	// id: 5928, l: 5929	
	mov	 w0, #0xe58f                	// #58767	// id: 5929, l: 5930	
	movk	 w0, #0xfff9, lsl #16	// id: 5930, l: 5931	
	add	 w0, w1, w0	// id: 5931, l: 5932	
	sxtw	 x0, w0	// id: 5932, l: 5933	
	lsl	 x0, x0, #3	// id: 5933, l: 5934	
	ldr	 x1, [sp, #8]	// id: 5934, l: 5935	
	add	 x0, x1, x0	// id: 5935, l: 5936	
	ldr	 d0, [x0]	// id: 5936, l: 5937	
	fadd	 d1, d1, d0	// id: 5937, l: 5938	
	ldr	 w1, [sp, #140]	// id: 5938, l: 5939	
	mov	 w0, #0xe590                	// #58768	// id: 5939, l: 5940	
	movk	 w0, #0xfff9, lsl #16	// id: 5940, l: 5941	
	add	 w0, w1, w0	// id: 5941, l: 5942	
	sxtw	 x0, w0	// id: 5942, l: 5943	
	lsl	 x0, x0, #3	// id: 5943, l: 5944	
	ldr	 x1, [sp, #8]	// id: 5944, l: 5945	
	add	 x0, x1, x0	// id: 5945, l: 5946	
	ldr	 d0, [x0]	// id: 5946, l: 5947	
	fadd	 d1, d1, d0	// id: 5947, l: 5948	
	ldr	 w1, [sp, #140]	// id: 5948, l: 5949	
	mov	 w0, #0xe591                	// #58769	// id: 5949, l: 5950	
	movk	 w0, #0xfff9, lsl #16	// id: 5950, l: 5951	
	add	 w0, w1, w0	// id: 5951, l: 5952	
	sxtw	 x0, w0	// id: 5952, l: 5953	
	lsl	 x0, x0, #3	// id: 5953, l: 5954	
	ldr	 x1, [sp, #8]	// id: 5954, l: 5955	
	add	 x0, x1, x0	// id: 5955, l: 5956	
	ldr	 d0, [x0]	// id: 5956, l: 5957	
	fsub	 d1, d1, d0	// id: 5957, l: 5958	
	ldr	 w1, [sp, #140]	// id: 5958, l: 5959	
	mov	 w0, #0xe592                	// #58770	// id: 5959, l: 5960	
	movk	 w0, #0xfff9, lsl #16	// id: 5960, l: 5961	
	add	 w0, w1, w0	// id: 5961, l: 5962	
	sxtw	 x0, w0	// id: 5962, l: 5963	
	lsl	 x0, x0, #3	// id: 5963, l: 5964	
	ldr	 x1, [sp, #8]	// id: 5964, l: 5965	
	add	 x0, x1, x0	// id: 5965, l: 5966	
	ldr	 d0, [x0]	// id: 5966, l: 5967	
	fsub	 d0, d1, d0	// id: 5967, l: 5968	
	str	 d0, [sp, #88]	// id: 5968, l: 5969	
	ldr	 w1, [sp, #140]	// id: 5969, l: 5970	
	mov	 w0, #0xe581                	// #58753	// id: 5970, l: 5971	
	movk	 w0, #0xfff9, lsl #16	// id: 5971, l: 5972	
	add	 w0, w1, w0	// id: 5972, l: 5973	
	sxtw	 x0, w0	// id: 5973, l: 5974	
	lsl	 x0, x0, #3	// id: 5974, l: 5975	
	ldr	 x1, [sp, #8]	// id: 5975, l: 5976	
	add	 x0, x1, x0	// id: 5976, l: 5977	
	ldr	 d1, [x0]	// id: 5977, l: 5978	
	ldr	 w1, [sp, #140]	// id: 5978, l: 5979	
	mov	 w0, #0xe582                	// #58754	// id: 5979, l: 5980	
	movk	 w0, #0xfff9, lsl #16	// id: 5980, l: 5981	
	add	 w0, w1, w0	// id: 5981, l: 5982	
	sxtw	 x0, w0	// id: 5982, l: 5983	
	lsl	 x0, x0, #3	// id: 5983, l: 5984	
	ldr	 x1, [sp, #8]	// id: 5984, l: 5985	
	add	 x0, x1, x0	// id: 5985, l: 5986	
	ldr	 d0, [x0]	// id: 5986, l: 5987	
	fsub	 d1, d1, d0	// id: 5987, l: 5988	
	ldr	 w1, [sp, #140]	// id: 5988, l: 5989	
	mov	 w0, #0xe587                	// #58759	// id: 5989, l: 5990	
	movk	 w0, #0xfff9, lsl #16	// id: 5990, l: 5991	
	add	 w0, w1, w0	// id: 5991, l: 5992	
	sxtw	 x0, w0	// id: 5992, l: 5993	
	lsl	 x0, x0, #3	// id: 5993, l: 5994	
	ldr	 x1, [sp, #8]	// id: 5994, l: 5995	
	add	 x0, x1, x0	// id: 5995, l: 5996	
	ldr	 d0, [x0]	// id: 5996, l: 5997	
	fadd	 d1, d1, d0	// id: 5997, l: 5998	
	ldr	 w1, [sp, #140]	// id: 5998, l: 5999	
	mov	 w0, #0xe588                	// #58760	// id: 5999, l: 6000	
	movk	 w0, #0xfff9, lsl #16	// id: 6000, l: 6001	
	add	 w0, w1, w0	// id: 6001, l: 6002	
	sxtw	 x0, w0	// id: 6002, l: 6003	
	lsl	 x0, x0, #3	// id: 6003, l: 6004	
	ldr	 x1, [sp, #8]	// id: 6004, l: 6005	
	add	 x0, x1, x0	// id: 6005, l: 6006	
	ldr	 d0, [x0]	// id: 6006, l: 6007	
	fadd	 d1, d1, d0	// id: 6007, l: 6008	
	ldr	 w1, [sp, #140]	// id: 6008, l: 6009	
	mov	 w0, #0xe589                	// #58761	// id: 6009, l: 6010	
	movk	 w0, #0xfff9, lsl #16	// id: 6010, l: 6011	
	add	 w0, w1, w0	// id: 6011, l: 6012	
	sxtw	 x0, w0	// id: 6012, l: 6013	
	lsl	 x0, x0, #3	// id: 6013, l: 6014	
	ldr	 x1, [sp, #8]	// id: 6014, l: 6015	
	add	 x0, x1, x0	// id: 6015, l: 6016	
	ldr	 d0, [x0]	// id: 6016, l: 6017	
	fsub	 d1, d1, d0	// id: 6017, l: 6018	
	ldr	 w1, [sp, #140]	// id: 6018, l: 6019	
	mov	 w0, #0xe58a                	// #58762	// id: 6019, l: 6020	
	movk	 w0, #0xfff9, lsl #16	// id: 6020, l: 6021	
	add	 w0, w1, w0	// id: 6021, l: 6022	
	sxtw	 x0, w0	// id: 6022, l: 6023	
	lsl	 x0, x0, #3	// id: 6023, l: 6024	
	ldr	 x1, [sp, #8]	// id: 6024, l: 6025	
	add	 x0, x1, x0	// id: 6025, l: 6026	
	ldr	 d0, [x0]	// id: 6026, l: 6027	
	fsub	 d1, d1, d0	// id: 6027, l: 6028	
	ldr	 w1, [sp, #140]	// id: 6028, l: 6029	
	mov	 w0, #0xe58b                	// #58763	// id: 6029, l: 6030	
	movk	 w0, #0xfff9, lsl #16	// id: 6030, l: 6031	
	add	 w0, w1, w0	// id: 6031, l: 6032	
	sxtw	 x0, w0	// id: 6032, l: 6033	
	lsl	 x0, x0, #3	// id: 6033, l: 6034	
	ldr	 x1, [sp, #8]	// id: 6034, l: 6035	
	add	 x0, x1, x0	// id: 6035, l: 6036	
	ldr	 d0, [x0]	// id: 6036, l: 6037	
	fadd	 d1, d1, d0	// id: 6037, l: 6038	
	ldr	 w1, [sp, #140]	// id: 6038, l: 6039	
	mov	 w0, #0xe58c                	// #58764	// id: 6039, l: 6040	
	movk	 w0, #0xfff9, lsl #16	// id: 6040, l: 6041	
	add	 w0, w1, w0	// id: 6041, l: 6042	
	sxtw	 x0, w0	// id: 6042, l: 6043	
	lsl	 x0, x0, #3	// id: 6043, l: 6044	
	ldr	 x1, [sp, #8]	// id: 6044, l: 6045	
	add	 x0, x1, x0	// id: 6045, l: 6046	
	ldr	 d0, [x0]	// id: 6046, l: 6047	
	fadd	 d1, d1, d0	// id: 6047, l: 6048	
	ldr	 w1, [sp, #140]	// id: 6048, l: 6049	
	mov	 w0, #0xe58d                	// #58765	// id: 6049, l: 6050	
	movk	 w0, #0xfff9, lsl #16	// id: 6050, l: 6051	
	add	 w0, w1, w0	// id: 6051, l: 6052	
	sxtw	 x0, w0	// id: 6052, l: 6053	
	lsl	 x0, x0, #3	// id: 6053, l: 6054	
	ldr	 x1, [sp, #8]	// id: 6054, l: 6055	
	add	 x0, x1, x0	// id: 6055, l: 6056	
	ldr	 d0, [x0]	// id: 6056, l: 6057	
	fsub	 d1, d1, d0	// id: 6057, l: 6058	
	ldr	 w1, [sp, #140]	// id: 6058, l: 6059	
	mov	 w0, #0xe58e                	// #58766	// id: 6059, l: 6060	
	movk	 w0, #0xfff9, lsl #16	// id: 6060, l: 6061	
	add	 w0, w1, w0	// id: 6061, l: 6062	
	sxtw	 x0, w0	// id: 6062, l: 6063	
	lsl	 x0, x0, #3	// id: 6063, l: 6064	
	ldr	 x1, [sp, #8]	// id: 6064, l: 6065	
	add	 x0, x1, x0	// id: 6065, l: 6066	
	ldr	 d0, [x0]	// id: 6066, l: 6067	
	fsub	 d0, d1, d0	// id: 6067, l: 6068	
	str	 d0, [sp, #80]	// id: 6068, l: 6069	
	ldr	 w1, [sp, #140]	// id: 6069, l: 6070	
	mov	 w0, #0xe585                	// #58757	// id: 6070, l: 6071	
	movk	 w0, #0xfff9, lsl #16	// id: 6071, l: 6072	
	add	 w0, w1, w0	// id: 6072, l: 6073	
	sxtw	 x0, w0	// id: 6073, l: 6074	
	lsl	 x0, x0, #3	// id: 6074, l: 6075	
	ldr	 x1, [sp, #8]	// id: 6075, l: 6076	
	add	 x0, x1, x0	// id: 6076, l: 6077	
	ldr	 d1, [x0]	// id: 6077, l: 6078	
	ldr	 w1, [sp, #140]	// id: 6078, l: 6079	
	mov	 w0, #0xe586                	// #58758	// id: 6079, l: 6080	
	movk	 w0, #0xfff9, lsl #16	// id: 6080, l: 6081	
	add	 w0, w1, w0	// id: 6081, l: 6082	
	sxtw	 x0, w0	// id: 6082, l: 6083	
	lsl	 x0, x0, #3	// id: 6083, l: 6084	
	ldr	 x1, [sp, #8]	// id: 6084, l: 6085	
	add	 x0, x1, x0	// id: 6085, l: 6086	
	ldr	 d0, [x0]	// id: 6086, l: 6087	
	fsub	 d1, d1, d0	// id: 6087, l: 6088	
	ldr	 w1, [sp, #140]	// id: 6088, l: 6089	
	mov	 w0, #0xe58b                	// #58763	// id: 6089, l: 6090	
	movk	 w0, #0xfff9, lsl #16	// id: 6090, l: 6091	
	add	 w0, w1, w0	// id: 6091, l: 6092	
	sxtw	 x0, w0	// id: 6092, l: 6093	
	lsl	 x0, x0, #3	// id: 6093, l: 6094	
	ldr	 x1, [sp, #8]	// id: 6094, l: 6095	
	add	 x0, x1, x0	// id: 6095, l: 6096	
	ldr	 d0, [x0]	// id: 6096, l: 6097	
	fadd	 d1, d1, d0	// id: 6097, l: 6098	
	ldr	 w1, [sp, #140]	// id: 6098, l: 6099	
	mov	 w0, #0xe58c                	// #58764	// id: 6099, l: 6100	
	movk	 w0, #0xfff9, lsl #16	// id: 6100, l: 6101	
	add	 w0, w1, w0	// id: 6101, l: 6102	
	sxtw	 x0, w0	// id: 6102, l: 6103	
	lsl	 x0, x0, #3	// id: 6103, l: 6104	
	ldr	 x1, [sp, #8]	// id: 6104, l: 6105	
	add	 x0, x1, x0	// id: 6105, l: 6106	
	ldr	 d0, [x0]	// id: 6106, l: 6107	
	fsub	 d1, d1, d0	// id: 6107, l: 6108	
	ldr	 w1, [sp, #140]	// id: 6108, l: 6109	
	mov	 w0, #0xe58d                	// #58765	// id: 6109, l: 6110	
	movk	 w0, #0xfff9, lsl #16	// id: 6110, l: 6111	
	add	 w0, w1, w0	// id: 6111, l: 6112	
	sxtw	 x0, w0	// id: 6112, l: 6113	
	lsl	 x0, x0, #3	// id: 6113, l: 6114	
	ldr	 x1, [sp, #8]	// id: 6114, l: 6115	
	add	 x0, x1, x0	// id: 6115, l: 6116	
	ldr	 d0, [x0]	// id: 6116, l: 6117	
	fadd	 d1, d1, d0	// id: 6117, l: 6118	
	ldr	 w1, [sp, #140]	// id: 6118, l: 6119	
	mov	 w0, #0xe58e                	// #58766	// id: 6119, l: 6120	
	movk	 w0, #0xfff9, lsl #16	// id: 6120, l: 6121	
	add	 w0, w1, w0	// id: 6121, l: 6122	
	sxtw	 x0, w0	// id: 6122, l: 6123	
	lsl	 x0, x0, #3	// id: 6123, l: 6124	
	ldr	 x1, [sp, #8]	// id: 6124, l: 6125	
	add	 x0, x1, x0	// id: 6125, l: 6126	
	ldr	 d0, [x0]	// id: 6126, l: 6127	
	fsub	 d1, d1, d0	// id: 6127, l: 6128	
	ldr	 w1, [sp, #140]	// id: 6128, l: 6129	
	mov	 w0, #0xe58f                	// #58767	// id: 6129, l: 6130	
	movk	 w0, #0xfff9, lsl #16	// id: 6130, l: 6131	
	add	 w0, w1, w0	// id: 6131, l: 6132	
	sxtw	 x0, w0	// id: 6132, l: 6133	
	lsl	 x0, x0, #3	// id: 6133, l: 6134	
	ldr	 x1, [sp, #8]	// id: 6134, l: 6135	
	add	 x0, x1, x0	// id: 6135, l: 6136	
	ldr	 d0, [x0]	// id: 6136, l: 6137	
	fadd	 d1, d1, d0	// id: 6137, l: 6138	
	ldr	 w1, [sp, #140]	// id: 6138, l: 6139	
	mov	 w0, #0xe590                	// #58768	// id: 6139, l: 6140	
	movk	 w0, #0xfff9, lsl #16	// id: 6140, l: 6141	
	add	 w0, w1, w0	// id: 6141, l: 6142	
	sxtw	 x0, w0	// id: 6142, l: 6143	
	lsl	 x0, x0, #3	// id: 6143, l: 6144	
	ldr	 x1, [sp, #8]	// id: 6144, l: 6145	
	add	 x0, x1, x0	// id: 6145, l: 6146	
	ldr	 d0, [x0]	// id: 6146, l: 6147	
	fsub	 d1, d1, d0	// id: 6147, l: 6148	
	ldr	 w1, [sp, #140]	// id: 6148, l: 6149	
	mov	 w0, #0xe591                	// #58769	// id: 6149, l: 6150	
	movk	 w0, #0xfff9, lsl #16	// id: 6150, l: 6151	
	add	 w0, w1, w0	// id: 6151, l: 6152	
	sxtw	 x0, w0	// id: 6152, l: 6153	
	lsl	 x0, x0, #3	// id: 6153, l: 6154	
	ldr	 x1, [sp, #8]	// id: 6154, l: 6155	
	add	 x0, x1, x0	// id: 6155, l: 6156	
	ldr	 d0, [x0]	// id: 6156, l: 6157	
	fadd	 d1, d1, d0	// id: 6157, l: 6158	
	ldr	 w1, [sp, #140]	// id: 6158, l: 6159	
	mov	 w0, #0xe592                	// #58770	// id: 6159, l: 6160	
	movk	 w0, #0xfff9, lsl #16	// id: 6160, l: 6161	
	add	 w0, w1, w0	// id: 6161, l: 6162	
	sxtw	 x0, w0	// id: 6162, l: 6163	
	lsl	 x0, x0, #3	// id: 6163, l: 6164	
	ldr	 x1, [sp, #8]	// id: 6164, l: 6165	
	add	 x0, x1, x0	// id: 6165, l: 6166	
	ldr	 d0, [x0]	// id: 6166, l: 6167	
	fsub	 d0, d1, d0	// id: 6167, l: 6168	
	str	 d0, [sp, #72]	// id: 6168, l: 6169	
	ldr	 d0, [sp, #96]	// id: 6169, l: 6170	
	ldr	 d1, [sp, #88]	// id: 6170, l: 6171	
	fdiv	 d0, d1, d0	// id: 6171, l: 6172	
	str	 d0, [sp, #88]	// id: 6172, l: 6173	
	ldr	 d0, [sp, #96]	// id: 6173, l: 6174	
	ldr	 d1, [sp, #80]	// id: 6174, l: 6175	
	fdiv	 d0, d1, d0	// id: 6175, l: 6176	
	str	 d0, [sp, #80]	// id: 6176, l: 6177	
	ldr	 d0, [sp, #96]	// id: 6177, l: 6178	
	ldr	 d1, [sp, #72]	// id: 6178, l: 6179	
	fdiv	 d0, d1, d0	// id: 6179, l: 6180	
	str	 d0, [sp, #72]	// id: 6180, l: 6181	
	fmov	 d0, #1.000000000000000000e+00	// id: 6181, l: 6182	
	str	 d0, [sp, #64]	// id: 6182, l: 6183	
	ldr	 d0, [sp, #120]	// id: 6183, l: 6184	
	fadd	 d1, d0, d0	// id: 6184, l: 6185	
	ldr	 d0, [sp, #88]	// id: 6185, l: 6186	
	fsub	 d0, d1, d0	// id: 6186, l: 6187	
	str	 d0, [sp, #56]	// id: 6187, l: 6188	
	ldr	 d0, [sp, #112]	// id: 6188, l: 6189	
	fadd	 d1, d0, d0	// id: 6189, l: 6190	
	ldr	 d0, [sp, #80]	// id: 6190, l: 6191	
	fsub	 d0, d1, d0	// id: 6191, l: 6192	
	str	 d0, [sp, #48]	// id: 6192, l: 6193	
	ldr	 d0, [sp, #104]	// id: 6193, l: 6194	
	fadd	 d1, d0, d0	// id: 6194, l: 6195	
	ldr	 d0, [sp, #72]	// id: 6195, l: 6196	
	fsub	 d0, d1, d0	// id: 6196, l: 6197	
	str	 d0, [sp, #40]	// id: 6197, l: 6198	
	ldr	 d0, [sp, #56]	// id: 6198, l: 6199	
	fmul	 d1, d0, d0	// id: 6199, l: 6200	
	ldr	 d0, [sp, #48]	// id: 6200, l: 6201	
	fmul	 d0, d0, d0	// id: 6201, l: 6202	
	fadd	 d1, d1, d0	// id: 6202, l: 6203	
	ldr	 d0, [sp, #40]	// id: 6203, l: 6204	
	fmul	 d0, d0, d0	// id: 6204, l: 6205	
	fadd	 d1, d1, d0	// id: 6205, l: 6206	
	fmov	 d0, #1.500000000000000000e+00	// id: 6206, l: 6207	
	fmul	 d0, d1, d0	// id: 6207, l: 6208	
	str	 d0, [sp, #32]	// id: 6208, l: 6209	
	ldr	 d0, [sp, #64]	// id: 6209, l: 6210	
	mov	 x0, #0x5555555555555555    	// #6148914691236517205	// id: 6210, l: 6211	
	movk	 x0, #0x3fd5, lsl #48	// id: 6211, l: 6212	
	fmov	 d1, x0	// id: 6212, l: 6213	
	fmul	 d1, d0, d1	// id: 6213, l: 6214	
	fmov	 d2, #1.000000000000000000e+00	// id: 6214, l: 6215	
	ldr	 d0, [sp, #32]	// id: 6215, l: 6216	
	fsub	 d0, d2, d0	// id: 6216, l: 6217	
	ldrsw	 x0, [sp, #140]	// id: 6217, l: 6218	
	lsl	 x0, x0, #3	// id: 6218, l: 6219	
	ldr	 x1, [sp, #8]	// id: 6219, l: 6220	
	add	 x0, x1, x0	// id: 6220, l: 6221	
	fmul	 d0, d1, d0	// id: 6221, l: 6222	
	str	 d0, [x0]	// id: 6222, l: 6223	
	ldr	 d0, [sp, #64]	// id: 6223, l: 6224	
	adrp	 x0, .LC2	// id: 6224, l: 6225	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 6225, l: 6226	
	fmul	 d1, d0, d1	// id: 6226, l: 6227	
	ldr	 d2, [sp, #48]	// id: 6227, l: 6228	
	fmov	 d0, #4.500000000000000000e+00	// id: 6228, l: 6229	
	fmul	 d2, d2, d0	// id: 6229, l: 6230	
	fmov	 d0, #3.000000000000000000e+00	// id: 6230, l: 6231	
	fadd	 d2, d2, d0	// id: 6231, l: 6232	
	ldr	 d0, [sp, #48]	// id: 6232, l: 6233	
	fmul	 d2, d2, d0	// id: 6233, l: 6234	
	fmov	 d0, #1.000000000000000000e+00	// id: 6234, l: 6235	
	fadd	 d2, d2, d0	// id: 6235, l: 6236	
	ldr	 d0, [sp, #32]	// id: 6236, l: 6237	
	fsub	 d0, d2, d0	// id: 6237, l: 6238	
	ldr	 w0, [sp, #140]	// id: 6238, l: 6239	
	add	 w0, w0, #0x1	// id: 6239, l: 6240	
	sxtw	 x0, w0	// id: 6240, l: 6241	
	lsl	 x0, x0, #3	// id: 6241, l: 6242	
	ldr	 x1, [sp, #8]	// id: 6242, l: 6243	
	add	 x0, x1, x0	// id: 6243, l: 6244	
	fmul	 d0, d1, d0	// id: 6244, l: 6245	
	str	 d0, [x0]	// id: 6245, l: 6246	
	ldr	 d0, [sp, #64]	// id: 6246, l: 6247	
	adrp	 x0, .LC2	// id: 6247, l: 6248	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 6248, l: 6249	
	fmul	 d1, d0, d1	// id: 6249, l: 6250	
	ldr	 d2, [sp, #48]	// id: 6250, l: 6251	
	fmov	 d0, #4.500000000000000000e+00	// id: 6251, l: 6252	
	fmul	 d2, d2, d0	// id: 6252, l: 6253	
	fmov	 d0, #3.000000000000000000e+00	// id: 6253, l: 6254	
	fsub	 d2, d2, d0	// id: 6254, l: 6255	
	ldr	 d0, [sp, #48]	// id: 6255, l: 6256	
	fmul	 d2, d2, d0	// id: 6256, l: 6257	
	fmov	 d0, #1.000000000000000000e+00	// id: 6257, l: 6258	
	fadd	 d2, d2, d0	// id: 6258, l: 6259	
	ldr	 d0, [sp, #32]	// id: 6259, l: 6260	
	fsub	 d0, d2, d0	// id: 6260, l: 6261	
	ldr	 w0, [sp, #140]	// id: 6261, l: 6262	
	add	 w0, w0, #0x2	// id: 6262, l: 6263	
	sxtw	 x0, w0	// id: 6263, l: 6264	
	lsl	 x0, x0, #3	// id: 6264, l: 6265	
	ldr	 x1, [sp, #8]	// id: 6265, l: 6266	
	add	 x0, x1, x0	// id: 6266, l: 6267	
	fmul	 d0, d1, d0	// id: 6267, l: 6268	
	str	 d0, [x0]	// id: 6268, l: 6269	
	ldr	 d0, [sp, #64]	// id: 6269, l: 6270	
	adrp	 x0, .LC2	// id: 6270, l: 6271	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 6271, l: 6272	
	fmul	 d1, d0, d1	// id: 6272, l: 6273	
	ldr	 d2, [sp, #56]	// id: 6273, l: 6274	
	fmov	 d0, #4.500000000000000000e+00	// id: 6274, l: 6275	
	fmul	 d2, d2, d0	// id: 6275, l: 6276	
	fmov	 d0, #3.000000000000000000e+00	// id: 6276, l: 6277	
	fadd	 d2, d2, d0	// id: 6277, l: 6278	
	ldr	 d0, [sp, #56]	// id: 6278, l: 6279	
	fmul	 d2, d2, d0	// id: 6279, l: 6280	
	fmov	 d0, #1.000000000000000000e+00	// id: 6280, l: 6281	
	fadd	 d2, d2, d0	// id: 6281, l: 6282	
	ldr	 d0, [sp, #32]	// id: 6282, l: 6283	
	fsub	 d0, d2, d0	// id: 6283, l: 6284	
	ldr	 w0, [sp, #140]	// id: 6284, l: 6285	
	add	 w0, w0, #0x3	// id: 6285, l: 6286	
	sxtw	 x0, w0	// id: 6286, l: 6287	
	lsl	 x0, x0, #3	// id: 6287, l: 6288	
	ldr	 x1, [sp, #8]	// id: 6288, l: 6289	
	add	 x0, x1, x0	// id: 6289, l: 6290	
	fmul	 d0, d1, d0	// id: 6290, l: 6291	
	str	 d0, [x0]	// id: 6291, l: 6292	
	ldr	 d0, [sp, #64]	// id: 6292, l: 6293	
	adrp	 x0, .LC2	// id: 6293, l: 6294	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 6294, l: 6295	
	fmul	 d1, d0, d1	// id: 6295, l: 6296	
	ldr	 d2, [sp, #56]	// id: 6296, l: 6297	
	fmov	 d0, #4.500000000000000000e+00	// id: 6297, l: 6298	
	fmul	 d2, d2, d0	// id: 6298, l: 6299	
	fmov	 d0, #3.000000000000000000e+00	// id: 6299, l: 6300	
	fsub	 d2, d2, d0	// id: 6300, l: 6301	
	ldr	 d0, [sp, #56]	// id: 6301, l: 6302	
	fmul	 d2, d2, d0	// id: 6302, l: 6303	
	fmov	 d0, #1.000000000000000000e+00	// id: 6303, l: 6304	
	fadd	 d2, d2, d0	// id: 6304, l: 6305	
	ldr	 d0, [sp, #32]	// id: 6305, l: 6306	
	fsub	 d0, d2, d0	// id: 6306, l: 6307	
	ldr	 w0, [sp, #140]	// id: 6307, l: 6308	
	add	 w0, w0, #0x4	// id: 6308, l: 6309	
	sxtw	 x0, w0	// id: 6309, l: 6310	
	lsl	 x0, x0, #3	// id: 6310, l: 6311	
	ldr	 x1, [sp, #8]	// id: 6311, l: 6312	
	add	 x0, x1, x0	// id: 6312, l: 6313	
	fmul	 d0, d1, d0	// id: 6313, l: 6314	
	str	 d0, [x0]	// id: 6314, l: 6315	
	ldr	 d0, [sp, #64]	// id: 6315, l: 6316	
	adrp	 x0, .LC2	// id: 6316, l: 6317	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 6317, l: 6318	
	fmul	 d1, d0, d1	// id: 6318, l: 6319	
	ldr	 d2, [sp, #40]	// id: 6319, l: 6320	
	fmov	 d0, #4.500000000000000000e+00	// id: 6320, l: 6321	
	fmul	 d2, d2, d0	// id: 6321, l: 6322	
	fmov	 d0, #3.000000000000000000e+00	// id: 6322, l: 6323	
	fadd	 d2, d2, d0	// id: 6323, l: 6324	
	ldr	 d0, [sp, #40]	// id: 6324, l: 6325	
	fmul	 d2, d2, d0	// id: 6325, l: 6326	
	fmov	 d0, #1.000000000000000000e+00	// id: 6326, l: 6327	
	fadd	 d2, d2, d0	// id: 6327, l: 6328	
	ldr	 d0, [sp, #32]	// id: 6328, l: 6329	
	fsub	 d0, d2, d0	// id: 6329, l: 6330	
	ldr	 w0, [sp, #140]	// id: 6330, l: 6331	
	add	 w0, w0, #0x5	// id: 6331, l: 6332	
	sxtw	 x0, w0	// id: 6332, l: 6333	
	lsl	 x0, x0, #3	// id: 6333, l: 6334	
	ldr	 x1, [sp, #8]	// id: 6334, l: 6335	
	add	 x0, x1, x0	// id: 6335, l: 6336	
	fmul	 d0, d1, d0	// id: 6336, l: 6337	
	str	 d0, [x0]	// id: 6337, l: 6338	
	ldr	 d0, [sp, #64]	// id: 6338, l: 6339	
	adrp	 x0, .LC2	// id: 6339, l: 6340	
	ldr	 d1, [x0,:lo12:.LC2]	// id: 6340, l: 6341	
	fmul	 d1, d0, d1	// id: 6341, l: 6342	
	ldr	 d2, [sp, #40]	// id: 6342, l: 6343	
	fmov	 d0, #4.500000000000000000e+00	// id: 6343, l: 6344	
	fmul	 d2, d2, d0	// id: 6344, l: 6345	
	fmov	 d0, #3.000000000000000000e+00	// id: 6345, l: 6346	
	fsub	 d2, d2, d0	// id: 6346, l: 6347	
	ldr	 d0, [sp, #40]	// id: 6347, l: 6348	
	fmul	 d2, d2, d0	// id: 6348, l: 6349	
	fmov	 d0, #1.000000000000000000e+00	// id: 6349, l: 6350	
	fadd	 d2, d2, d0	// id: 6350, l: 6351	
	ldr	 d0, [sp, #32]	// id: 6351, l: 6352	
	fsub	 d0, d2, d0	// id: 6352, l: 6353	
	ldr	 w0, [sp, #140]	// id: 6353, l: 6354	
	add	 w0, w0, #0x6	// id: 6354, l: 6355	
	sxtw	 x0, w0	// id: 6355, l: 6356	
	lsl	 x0, x0, #3	// id: 6356, l: 6357	
	ldr	 x1, [sp, #8]	// id: 6357, l: 6358	
	add	 x0, x1, x0	// id: 6358, l: 6359	
	fmul	 d0, d1, d0	// id: 6359, l: 6360	
	str	 d0, [x0]	// id: 6360, l: 6361	
	ldr	 d0, [sp, #64]	// id: 6361, l: 6362	
	adrp	 x0, .LC3	// id: 6362, l: 6363	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 6363, l: 6364	
	fmul	 d1, d0, d1	// id: 6364, l: 6365	
	ldr	 d2, [sp, #56]	// id: 6365, l: 6366	
	ldr	 d0, [sp, #48]	// id: 6366, l: 6367	
	fadd	 d2, d2, d0	// id: 6367, l: 6368	
	ldr	 d3, [sp, #56]	// id: 6368, l: 6369	
	ldr	 d0, [sp, #48]	// id: 6369, l: 6370	
	fadd	 d3, d3, d0	// id: 6370, l: 6371	
	fmov	 d0, #4.500000000000000000e+00	// id: 6371, l: 6372	
	fmul	 d3, d3, d0	// id: 6372, l: 6373	
	fmov	 d0, #3.000000000000000000e+00	// id: 6373, l: 6374	
	fadd	 d0, d3, d0	// id: 6374, l: 6375	
	fmul	 d2, d2, d0	// id: 6375, l: 6376	
	fmov	 d0, #1.000000000000000000e+00	// id: 6376, l: 6377	
	fadd	 d2, d2, d0	// id: 6377, l: 6378	
	ldr	 d0, [sp, #32]	// id: 6378, l: 6379	
	fsub	 d0, d2, d0	// id: 6379, l: 6380	
	ldr	 w0, [sp, #140]	// id: 6380, l: 6381	
	add	 w0, w0, #0x7	// id: 6381, l: 6382	
	sxtw	 x0, w0	// id: 6382, l: 6383	
	lsl	 x0, x0, #3	// id: 6383, l: 6384	
	ldr	 x1, [sp, #8]	// id: 6384, l: 6385	
	add	 x0, x1, x0	// id: 6385, l: 6386	
	fmul	 d0, d1, d0	// id: 6386, l: 6387	
	str	 d0, [x0]	// id: 6387, l: 6388	
	ldr	 d0, [sp, #64]	// id: 6388, l: 6389	
	adrp	 x0, .LC3	// id: 6389, l: 6390	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 6390, l: 6391	
	fmul	 d1, d0, d1	// id: 6391, l: 6392	
	ldr	 d2, [sp, #48]	// id: 6392, l: 6393	
	ldr	 d0, [sp, #56]	// id: 6393, l: 6394	
	fsub	 d2, d2, d0	// id: 6394, l: 6395	
	ldr	 d3, [sp, #48]	// id: 6395, l: 6396	
	ldr	 d0, [sp, #56]	// id: 6396, l: 6397	
	fsub	 d3, d3, d0	// id: 6397, l: 6398	
	fmov	 d0, #4.500000000000000000e+00	// id: 6398, l: 6399	
	fmul	 d3, d3, d0	// id: 6399, l: 6400	
	fmov	 d0, #3.000000000000000000e+00	// id: 6400, l: 6401	
	fadd	 d0, d3, d0	// id: 6401, l: 6402	
	fmul	 d2, d2, d0	// id: 6402, l: 6403	
	fmov	 d0, #1.000000000000000000e+00	// id: 6403, l: 6404	
	fadd	 d2, d2, d0	// id: 6404, l: 6405	
	ldr	 d0, [sp, #32]	// id: 6405, l: 6406	
	fsub	 d0, d2, d0	// id: 6406, l: 6407	
	ldr	 w0, [sp, #140]	// id: 6407, l: 6408	
	add	 w0, w0, #0x8	// id: 6408, l: 6409	
	sxtw	 x0, w0	// id: 6409, l: 6410	
	lsl	 x0, x0, #3	// id: 6410, l: 6411	
	ldr	 x1, [sp, #8]	// id: 6411, l: 6412	
	add	 x0, x1, x0	// id: 6412, l: 6413	
	fmul	 d0, d1, d0	// id: 6413, l: 6414	
	str	 d0, [x0]	// id: 6414, l: 6415	
	ldr	 d0, [sp, #64]	// id: 6415, l: 6416	
	adrp	 x0, .LC3	// id: 6416, l: 6417	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 6417, l: 6418	
	fmul	 d1, d0, d1	// id: 6418, l: 6419	
	ldr	 d2, [sp, #56]	// id: 6419, l: 6420	
	ldr	 d0, [sp, #48]	// id: 6420, l: 6421	
	fsub	 d2, d2, d0	// id: 6421, l: 6422	
	ldr	 d3, [sp, #56]	// id: 6422, l: 6423	
	ldr	 d0, [sp, #48]	// id: 6423, l: 6424	
	fsub	 d3, d3, d0	// id: 6424, l: 6425	
	fmov	 d0, #4.500000000000000000e+00	// id: 6425, l: 6426	
	fmul	 d3, d3, d0	// id: 6426, l: 6427	
	fmov	 d0, #3.000000000000000000e+00	// id: 6427, l: 6428	
	fadd	 d0, d3, d0	// id: 6428, l: 6429	
	fmul	 d2, d2, d0	// id: 6429, l: 6430	
	fmov	 d0, #1.000000000000000000e+00	// id: 6430, l: 6431	
	fadd	 d2, d2, d0	// id: 6431, l: 6432	
	ldr	 d0, [sp, #32]	// id: 6432, l: 6433	
	fsub	 d0, d2, d0	// id: 6433, l: 6434	
	ldr	 w0, [sp, #140]	// id: 6434, l: 6435	
	add	 w0, w0, #0x9	// id: 6435, l: 6436	
	sxtw	 x0, w0	// id: 6436, l: 6437	
	lsl	 x0, x0, #3	// id: 6437, l: 6438	
	ldr	 x1, [sp, #8]	// id: 6438, l: 6439	
	add	 x0, x1, x0	// id: 6439, l: 6440	
	fmul	 d0, d1, d0	// id: 6440, l: 6441	
	str	 d0, [x0]	// id: 6441, l: 6442	
	ldr	 d0, [sp, #64]	// id: 6442, l: 6443	
	adrp	 x0, .LC3	// id: 6443, l: 6444	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 6444, l: 6445	
	fmul	 d1, d0, d1	// id: 6445, l: 6446	
	ldr	 d0, [sp, #56]	// id: 6446, l: 6447	
	fneg	 d2, d0	// id: 6447, l: 6448	
	ldr	 d0, [sp, #48]	// id: 6448, l: 6449	
	fsub	 d2, d2, d0	// id: 6449, l: 6450	
	ldr	 d0, [sp, #56]	// id: 6450, l: 6451	
	fneg	 d3, d0	// id: 6451, l: 6452	
	ldr	 d0, [sp, #48]	// id: 6452, l: 6453	
	fsub	 d3, d3, d0	// id: 6453, l: 6454	
	fmov	 d0, #4.500000000000000000e+00	// id: 6454, l: 6455	
	fmul	 d3, d3, d0	// id: 6455, l: 6456	
	fmov	 d0, #3.000000000000000000e+00	// id: 6456, l: 6457	
	fadd	 d0, d3, d0	// id: 6457, l: 6458	
	fmul	 d2, d2, d0	// id: 6458, l: 6459	
	fmov	 d0, #1.000000000000000000e+00	// id: 6459, l: 6460	
	fadd	 d2, d2, d0	// id: 6460, l: 6461	
	ldr	 d0, [sp, #32]	// id: 6461, l: 6462	
	fsub	 d0, d2, d0	// id: 6462, l: 6463	
	ldr	 w0, [sp, #140]	// id: 6463, l: 6464	
	add	 w0, w0, #0xa	// id: 6464, l: 6465	
	sxtw	 x0, w0	// id: 6465, l: 6466	
	lsl	 x0, x0, #3	// id: 6466, l: 6467	
	ldr	 x1, [sp, #8]	// id: 6467, l: 6468	
	add	 x0, x1, x0	// id: 6468, l: 6469	
	fmul	 d0, d1, d0	// id: 6469, l: 6470	
	str	 d0, [x0]	// id: 6470, l: 6471	
	ldr	 d0, [sp, #64]	// id: 6471, l: 6472	
	adrp	 x0, .LC3	// id: 6472, l: 6473	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 6473, l: 6474	
	fmul	 d1, d0, d1	// id: 6474, l: 6475	
	ldr	 d2, [sp, #48]	// id: 6475, l: 6476	
	ldr	 d0, [sp, #40]	// id: 6476, l: 6477	
	fadd	 d2, d2, d0	// id: 6477, l: 6478	
	ldr	 d3, [sp, #48]	// id: 6478, l: 6479	
	ldr	 d0, [sp, #40]	// id: 6479, l: 6480	
	fadd	 d3, d3, d0	// id: 6480, l: 6481	
	fmov	 d0, #4.500000000000000000e+00	// id: 6481, l: 6482	
	fmul	 d3, d3, d0	// id: 6482, l: 6483	
	fmov	 d0, #3.000000000000000000e+00	// id: 6483, l: 6484	
	fadd	 d0, d3, d0	// id: 6484, l: 6485	
	fmul	 d2, d2, d0	// id: 6485, l: 6486	
	fmov	 d0, #1.000000000000000000e+00	// id: 6486, l: 6487	
	fadd	 d2, d2, d0	// id: 6487, l: 6488	
	ldr	 d0, [sp, #32]	// id: 6488, l: 6489	
	fsub	 d0, d2, d0	// id: 6489, l: 6490	
	ldr	 w0, [sp, #140]	// id: 6490, l: 6491	
	add	 w0, w0, #0xb	// id: 6491, l: 6492	
	sxtw	 x0, w0	// id: 6492, l: 6493	
	lsl	 x0, x0, #3	// id: 6493, l: 6494	
	ldr	 x1, [sp, #8]	// id: 6494, l: 6495	
	add	 x0, x1, x0	// id: 6495, l: 6496	
	fmul	 d0, d1, d0	// id: 6496, l: 6497	
	str	 d0, [x0]	// id: 6497, l: 6498	
	ldr	 d0, [sp, #64]	// id: 6498, l: 6499	
	adrp	 x0, .LC3	// id: 6499, l: 6500	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 6500, l: 6501	
	fmul	 d1, d0, d1	// id: 6501, l: 6502	
	ldr	 d2, [sp, #48]	// id: 6502, l: 6503	
	ldr	 d0, [sp, #40]	// id: 6503, l: 6504	
	fsub	 d2, d2, d0	// id: 6504, l: 6505	
	ldr	 d3, [sp, #48]	// id: 6505, l: 6506	
	ldr	 d0, [sp, #40]	// id: 6506, l: 6507	
	fsub	 d3, d3, d0	// id: 6507, l: 6508	
	fmov	 d0, #4.500000000000000000e+00	// id: 6508, l: 6509	
	fmul	 d3, d3, d0	// id: 6509, l: 6510	
	fmov	 d0, #3.000000000000000000e+00	// id: 6510, l: 6511	
	fadd	 d0, d3, d0	// id: 6511, l: 6512	
	fmul	 d2, d2, d0	// id: 6512, l: 6513	
	fmov	 d0, #1.000000000000000000e+00	// id: 6513, l: 6514	
	fadd	 d2, d2, d0	// id: 6514, l: 6515	
	ldr	 d0, [sp, #32]	// id: 6515, l: 6516	
	fsub	 d0, d2, d0	// id: 6516, l: 6517	
	ldr	 w0, [sp, #140]	// id: 6517, l: 6518	
	add	 w0, w0, #0xc	// id: 6518, l: 6519	
	sxtw	 x0, w0	// id: 6519, l: 6520	
	lsl	 x0, x0, #3	// id: 6520, l: 6521	
	ldr	 x1, [sp, #8]	// id: 6521, l: 6522	
	add	 x0, x1, x0	// id: 6522, l: 6523	
	fmul	 d0, d1, d0	// id: 6523, l: 6524	
	str	 d0, [x0]	// id: 6524, l: 6525	
	ldr	 d0, [sp, #64]	// id: 6525, l: 6526	
	adrp	 x0, .LC3	// id: 6526, l: 6527	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 6527, l: 6528	
	fmul	 d1, d0, d1	// id: 6528, l: 6529	
	ldr	 d2, [sp, #40]	// id: 6529, l: 6530	
	ldr	 d0, [sp, #48]	// id: 6530, l: 6531	
	fsub	 d2, d2, d0	// id: 6531, l: 6532	
	ldr	 d3, [sp, #40]	// id: 6532, l: 6533	
	ldr	 d0, [sp, #48]	// id: 6533, l: 6534	
	fsub	 d3, d3, d0	// id: 6534, l: 6535	
	fmov	 d0, #4.500000000000000000e+00	// id: 6535, l: 6536	
	fmul	 d3, d3, d0	// id: 6536, l: 6537	
	fmov	 d0, #3.000000000000000000e+00	// id: 6537, l: 6538	
	fadd	 d0, d3, d0	// id: 6538, l: 6539	
	fmul	 d2, d2, d0	// id: 6539, l: 6540	
	fmov	 d0, #1.000000000000000000e+00	// id: 6540, l: 6541	
	fadd	 d2, d2, d0	// id: 6541, l: 6542	
	ldr	 d0, [sp, #32]	// id: 6542, l: 6543	
	fsub	 d0, d2, d0	// id: 6543, l: 6544	
	ldr	 w0, [sp, #140]	// id: 6544, l: 6545	
	add	 w0, w0, #0xd	// id: 6545, l: 6546	
	sxtw	 x0, w0	// id: 6546, l: 6547	
	lsl	 x0, x0, #3	// id: 6547, l: 6548	
	ldr	 x1, [sp, #8]	// id: 6548, l: 6549	
	add	 x0, x1, x0	// id: 6549, l: 6550	
	fmul	 d0, d1, d0	// id: 6550, l: 6551	
	str	 d0, [x0]	// id: 6551, l: 6552	
	ldr	 d0, [sp, #64]	// id: 6552, l: 6553	
	adrp	 x0, .LC3	// id: 6553, l: 6554	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 6554, l: 6555	
	fmul	 d1, d0, d1	// id: 6555, l: 6556	
	ldr	 d0, [sp, #48]	// id: 6556, l: 6557	
	fneg	 d2, d0	// id: 6557, l: 6558	
	ldr	 d0, [sp, #40]	// id: 6558, l: 6559	
	fsub	 d2, d2, d0	// id: 6559, l: 6560	
	ldr	 d0, [sp, #48]	// id: 6560, l: 6561	
	fneg	 d3, d0	// id: 6561, l: 6562	
	ldr	 d0, [sp, #40]	// id: 6562, l: 6563	
	fsub	 d3, d3, d0	// id: 6563, l: 6564	
	fmov	 d0, #4.500000000000000000e+00	// id: 6564, l: 6565	
	fmul	 d3, d3, d0	// id: 6565, l: 6566	
	fmov	 d0, #3.000000000000000000e+00	// id: 6566, l: 6567	
	fadd	 d0, d3, d0	// id: 6567, l: 6568	
	fmul	 d2, d2, d0	// id: 6568, l: 6569	
	fmov	 d0, #1.000000000000000000e+00	// id: 6569, l: 6570	
	fadd	 d2, d2, d0	// id: 6570, l: 6571	
	ldr	 d0, [sp, #32]	// id: 6571, l: 6572	
	fsub	 d0, d2, d0	// id: 6572, l: 6573	
	ldr	 w0, [sp, #140]	// id: 6573, l: 6574	
	add	 w0, w0, #0xe	// id: 6574, l: 6575	
	sxtw	 x0, w0	// id: 6575, l: 6576	
	lsl	 x0, x0, #3	// id: 6576, l: 6577	
	ldr	 x1, [sp, #8]	// id: 6577, l: 6578	
	add	 x0, x1, x0	// id: 6578, l: 6579	
	fmul	 d0, d1, d0	// id: 6579, l: 6580	
	str	 d0, [x0]	// id: 6580, l: 6581	
	ldr	 d0, [sp, #64]	// id: 6581, l: 6582	
	adrp	 x0, .LC3	// id: 6582, l: 6583	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 6583, l: 6584	
	fmul	 d1, d0, d1	// id: 6584, l: 6585	
	ldr	 d2, [sp, #56]	// id: 6585, l: 6586	
	ldr	 d0, [sp, #40]	// id: 6586, l: 6587	
	fadd	 d2, d2, d0	// id: 6587, l: 6588	
	ldr	 d3, [sp, #56]	// id: 6588, l: 6589	
	ldr	 d0, [sp, #40]	// id: 6589, l: 6590	
	fadd	 d3, d3, d0	// id: 6590, l: 6591	
	fmov	 d0, #4.500000000000000000e+00	// id: 6591, l: 6592	
	fmul	 d3, d3, d0	// id: 6592, l: 6593	
	fmov	 d0, #3.000000000000000000e+00	// id: 6593, l: 6594	
	fadd	 d0, d3, d0	// id: 6594, l: 6595	
	fmul	 d2, d2, d0	// id: 6595, l: 6596	
	fmov	 d0, #1.000000000000000000e+00	// id: 6596, l: 6597	
	fadd	 d2, d2, d0	// id: 6597, l: 6598	
	ldr	 d0, [sp, #32]	// id: 6598, l: 6599	
	fsub	 d0, d2, d0	// id: 6599, l: 6600	
	ldr	 w0, [sp, #140]	// id: 6600, l: 6601	
	add	 w0, w0, #0xf	// id: 6601, l: 6602	
	sxtw	 x0, w0	// id: 6602, l: 6603	
	lsl	 x0, x0, #3	// id: 6603, l: 6604	
	ldr	 x1, [sp, #8]	// id: 6604, l: 6605	
	add	 x0, x1, x0	// id: 6605, l: 6606	
	fmul	 d0, d1, d0	// id: 6606, l: 6607	
	str	 d0, [x0]	// id: 6607, l: 6608	
	ldr	 d0, [sp, #64]	// id: 6608, l: 6609	
	adrp	 x0, .LC3	// id: 6609, l: 6610	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 6610, l: 6611	
	fmul	 d1, d0, d1	// id: 6611, l: 6612	
	ldr	 d2, [sp, #56]	// id: 6612, l: 6613	
	ldr	 d0, [sp, #40]	// id: 6613, l: 6614	
	fsub	 d2, d2, d0	// id: 6614, l: 6615	
	ldr	 d3, [sp, #56]	// id: 6615, l: 6616	
	ldr	 d0, [sp, #40]	// id: 6616, l: 6617	
	fsub	 d3, d3, d0	// id: 6617, l: 6618	
	fmov	 d0, #4.500000000000000000e+00	// id: 6618, l: 6619	
	fmul	 d3, d3, d0	// id: 6619, l: 6620	
	fmov	 d0, #3.000000000000000000e+00	// id: 6620, l: 6621	
	fadd	 d0, d3, d0	// id: 6621, l: 6622	
	fmul	 d2, d2, d0	// id: 6622, l: 6623	
	fmov	 d0, #1.000000000000000000e+00	// id: 6623, l: 6624	
	fadd	 d2, d2, d0	// id: 6624, l: 6625	
	ldr	 d0, [sp, #32]	// id: 6625, l: 6626	
	fsub	 d0, d2, d0	// id: 6626, l: 6627	
	ldr	 w0, [sp, #140]	// id: 6627, l: 6628	
	add	 w0, w0, #0x10	// id: 6628, l: 6629	
	sxtw	 x0, w0	// id: 6629, l: 6630	
	lsl	 x0, x0, #3	// id: 6630, l: 6631	
	ldr	 x1, [sp, #8]	// id: 6631, l: 6632	
	add	 x0, x1, x0	// id: 6632, l: 6633	
	fmul	 d0, d1, d0	// id: 6633, l: 6634	
	str	 d0, [x0]	// id: 6634, l: 6635	
	ldr	 d0, [sp, #64]	// id: 6635, l: 6636	
	adrp	 x0, .LC3	// id: 6636, l: 6637	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 6637, l: 6638	
	fmul	 d1, d0, d1	// id: 6638, l: 6639	
	ldr	 d2, [sp, #40]	// id: 6639, l: 6640	
	ldr	 d0, [sp, #56]	// id: 6640, l: 6641	
	fsub	 d2, d2, d0	// id: 6641, l: 6642	
	ldr	 d3, [sp, #40]	// id: 6642, l: 6643	
	ldr	 d0, [sp, #56]	// id: 6643, l: 6644	
	fsub	 d3, d3, d0	// id: 6644, l: 6645	
	fmov	 d0, #4.500000000000000000e+00	// id: 6645, l: 6646	
	fmul	 d3, d3, d0	// id: 6646, l: 6647	
	fmov	 d0, #3.000000000000000000e+00	// id: 6647, l: 6648	
	fadd	 d0, d3, d0	// id: 6648, l: 6649	
	fmul	 d2, d2, d0	// id: 6649, l: 6650	
	fmov	 d0, #1.000000000000000000e+00	// id: 6650, l: 6651	
	fadd	 d2, d2, d0	// id: 6651, l: 6652	
	ldr	 d0, [sp, #32]	// id: 6652, l: 6653	
	fsub	 d0, d2, d0	// id: 6653, l: 6654	
	ldr	 w0, [sp, #140]	// id: 6654, l: 6655	
	add	 w0, w0, #0x11	// id: 6655, l: 6656	
	sxtw	 x0, w0	// id: 6656, l: 6657	
	lsl	 x0, x0, #3	// id: 6657, l: 6658	
	ldr	 x1, [sp, #8]	// id: 6658, l: 6659	
	add	 x0, x1, x0	// id: 6659, l: 6660	
	fmul	 d0, d1, d0	// id: 6660, l: 6661	
	str	 d0, [x0]	// id: 6661, l: 6662	
	ldr	 d0, [sp, #64]	// id: 6662, l: 6663	
	adrp	 x0, .LC3	// id: 6663, l: 6664	
	ldr	 d1, [x0,:lo12:.LC3]	// id: 6664, l: 6665	
	fmul	 d1, d0, d1	// id: 6665, l: 6666	
	ldr	 d0, [sp, #56]	// id: 6666, l: 6667	
	fneg	 d2, d0	// id: 6667, l: 6668	
	ldr	 d0, [sp, #40]	// id: 6668, l: 6669	
	fsub	 d2, d2, d0	// id: 6669, l: 6670	
	ldr	 d0, [sp, #56]	// id: 6670, l: 6671	
	fneg	 d3, d0	// id: 6671, l: 6672	
	ldr	 d0, [sp, #40]	// id: 6672, l: 6673	
	fsub	 d3, d3, d0	// id: 6673, l: 6674	
	fmov	 d0, #4.500000000000000000e+00	// id: 6674, l: 6675	
	fmul	 d3, d3, d0	// id: 6675, l: 6676	
	fmov	 d0, #3.000000000000000000e+00	// id: 6676, l: 6677	
	fadd	 d0, d3, d0	// id: 6677, l: 6678	
	fmul	 d2, d2, d0	// id: 6678, l: 6679	
	fmov	 d0, #1.000000000000000000e+00	// id: 6679, l: 6680	
	fadd	 d2, d2, d0	// id: 6680, l: 6681	
	ldr	 d0, [sp, #32]	// id: 6681, l: 6682	
	fsub	 d0, d2, d0	// id: 6682, l: 6683	
	ldr	 w0, [sp, #140]	// id: 6683, l: 6684	
	add	 w0, w0, #0x12	// id: 6684, l: 6685	
	sxtw	 x0, w0	// id: 6685, l: 6686	
	lsl	 x0, x0, #3	// id: 6686, l: 6687	
	ldr	 x1, [sp, #8]	// id: 6687, l: 6688	
	add	 x0, x1, x0	// id: 6688, l: 6689	
	fmul	 d0, d1, d0	// id: 6689, l: 6690	
	str	 d0, [x0]	// id: 6690, l: 6691	
	ldr	 w0, [sp, #140]	// id: 6691, l: 6692	
	add	 w0, w0, #0x14	// id: 6692, l: 6693	
	str	 w0, [sp, #140]	// id: 6693, l: 6694	
.L52:	// id: 6694, l: 6695	
	ldr	 w1, [sp, #140]	// id: 6695, l: 6696	
	mov	 w0, #0xba7f                	// #47743	// id: 6696, l: 6697	
	movk	 w0, #0x18c, lsl #16	// id: 6697, l: 6698	
	cmp	 w1, w0	// id: 6698, l: 6699	
	ble	 .L53	// id: 6699, l: 6700	
	nop		// id: 6700, l: 6701	
	nop		// id: 6701, l: 6702	
	add	 sp, sp, #0x90	// id: 6702, l: 6703	
	.cfi_def_cfa_offset	0	// id: 6703, l: 6704	
	ret		// id: 6704, l: 6705	
	.cfi_endproc		// id: 6705, l: 6706	
.LFE11:	// id: 6706, l: 6707	
	.size	LBM_handleInOutFlow, .-LBM_handleInOutFlow	// id: 6707, l: 6708	
	.section	.rodata	// id: 6708, l: 6709	
	.p2align	3, , 0	// id: 6709, l: 6710	
.LC9:	// id: 6710, l: 6711	
	.string	"LBM_showGridStatistics:\n\tnObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\n\tminRho: %8.6f maxRho: %8.6f Mass: %e\n\tminU  : %8.6f maxU  : %8.6f\n\n"	// id: 6711, l: 6712	
	.text	0	// id: 6712, l: 6713	
	.p2align	2, , 0	// id: 6713, l: 6714	
	.globl	LBM_showGridStatistics	// id: 6714, l: 6715	
	.type	LBM_showGridStatistics, %function	// id: 6715, l: 6716	
LBM_showGridStatistics:	// id: 6716, l: 6717	
.LFB12:	// id: 6717, l: 6718	
	.cfi_startproc		// id: 6718, l: 6719	
	stp	 x29, x30, [sp, #-160]!	// id: 6719, l: 6720	
	.cfi_def_cfa_offset	160	// id: 6720, l: 6721	
	.cfi_offset	29, -160	// id: 6721, l: 6722	
	.cfi_offset	30, -152	// id: 6722, l: 6723	
	mov	 x29, sp	// id: 6723, l: 6724	
	str	 d8, [sp, #16]	// id: 6724, l: 6725	
	.cfi_offset	72, -144	// id: 6725, l: 6726	
	str	 x0, [sp, #40]	// id: 6726, l: 6727	
	str	 wzr, [sp, #156]	// id: 6727, l: 6728	
	str	 wzr, [sp, #152]	// id: 6728, l: 6729	
	str	 wzr, [sp, #148]	// id: 6729, l: 6730	
	adrp	 x0, .LC10	// id: 6730, l: 6731	
	ldr	 d0, [x0,:lo12:.LC10]	// id: 6731, l: 6732	
	str	 d0, [sp, #136]	// id: 6732, l: 6733	
	adrp	 x0, .LC11	// id: 6733, l: 6734	
	ldr	 d0, [x0,:lo12:.LC11]	// id: 6734, l: 6735	
	str	 d0, [sp, #128]	// id: 6735, l: 6736	
	adrp	 x0, .LC10	// id: 6736, l: 6737	
	ldr	 d0, [x0,:lo12:.LC10]	// id: 6737, l: 6738	
	str	 d0, [sp, #120]	// id: 6738, l: 6739	
	adrp	 x0, .LC11	// id: 6739, l: 6740	
	ldr	 d0, [x0,:lo12:.LC11]	// id: 6740, l: 6741	
	str	 d0, [sp, #112]	// id: 6741, l: 6742	
	str	 xzr, [sp, #104]	// id: 6742, l: 6743	
	str	 wzr, [sp, #100]	// id: 6743, l: 6744	
	b	 .L55	// id: 6744, l: 6745	
.L67:	// id: 6745, l: 6746	
	ldrsw	 x0, [sp, #100]	// id: 6746, l: 6747	
	lsl	 x0, x0, #3	// id: 6747, l: 6748	
	ldr	 x1, [sp, #40]	// id: 6748, l: 6749	
	add	 x0, x1, x0	// id: 6749, l: 6750	
	ldr	 d1, [x0]	// id: 6750, l: 6751	
	ldr	 w0, [sp, #100]	// id: 6751, l: 6752	
	add	 w0, w0, #0x1	// id: 6752, l: 6753	
	sxtw	 x0, w0	// id: 6753, l: 6754	
	lsl	 x0, x0, #3	// id: 6754, l: 6755	
	ldr	 x1, [sp, #40]	// id: 6755, l: 6756	
	add	 x0, x1, x0	// id: 6756, l: 6757	
	ldr	 d0, [x0]	// id: 6757, l: 6758	
	fadd	 d1, d1, d0	// id: 6758, l: 6759	
	ldr	 w0, [sp, #100]	// id: 6759, l: 6760	
	add	 w0, w0, #0x2	// id: 6760, l: 6761	
	sxtw	 x0, w0	// id: 6761, l: 6762	
	lsl	 x0, x0, #3	// id: 6762, l: 6763	
	ldr	 x1, [sp, #40]	// id: 6763, l: 6764	
	add	 x0, x1, x0	// id: 6764, l: 6765	
	ldr	 d0, [x0]	// id: 6765, l: 6766	
	fadd	 d1, d1, d0	// id: 6766, l: 6767	
	ldr	 w0, [sp, #100]	// id: 6767, l: 6768	
	add	 w0, w0, #0x3	// id: 6768, l: 6769	
	sxtw	 x0, w0	// id: 6769, l: 6770	
	lsl	 x0, x0, #3	// id: 6770, l: 6771	
	ldr	 x1, [sp, #40]	// id: 6771, l: 6772	
	add	 x0, x1, x0	// id: 6772, l: 6773	
	ldr	 d0, [x0]	// id: 6773, l: 6774	
	fadd	 d1, d1, d0	// id: 6774, l: 6775	
	ldr	 w0, [sp, #100]	// id: 6775, l: 6776	
	add	 w0, w0, #0x4	// id: 6776, l: 6777	
	sxtw	 x0, w0	// id: 6777, l: 6778	
	lsl	 x0, x0, #3	// id: 6778, l: 6779	
	ldr	 x1, [sp, #40]	// id: 6779, l: 6780	
	add	 x0, x1, x0	// id: 6780, l: 6781	
	ldr	 d0, [x0]	// id: 6781, l: 6782	
	fadd	 d1, d1, d0	// id: 6782, l: 6783	
	ldr	 w0, [sp, #100]	// id: 6783, l: 6784	
	add	 w0, w0, #0x5	// id: 6784, l: 6785	
	sxtw	 x0, w0	// id: 6785, l: 6786	
	lsl	 x0, x0, #3	// id: 6786, l: 6787	
	ldr	 x1, [sp, #40]	// id: 6787, l: 6788	
	add	 x0, x1, x0	// id: 6788, l: 6789	
	ldr	 d0, [x0]	// id: 6789, l: 6790	
	fadd	 d1, d1, d0	// id: 6790, l: 6791	
	ldr	 w0, [sp, #100]	// id: 6791, l: 6792	
	add	 w0, w0, #0x6	// id: 6792, l: 6793	
	sxtw	 x0, w0	// id: 6793, l: 6794	
	lsl	 x0, x0, #3	// id: 6794, l: 6795	
	ldr	 x1, [sp, #40]	// id: 6795, l: 6796	
	add	 x0, x1, x0	// id: 6796, l: 6797	
	ldr	 d0, [x0]	// id: 6797, l: 6798	
	fadd	 d1, d1, d0	// id: 6798, l: 6799	
	ldr	 w0, [sp, #100]	// id: 6799, l: 6800	
	add	 w0, w0, #0x7	// id: 6800, l: 6801	
	sxtw	 x0, w0	// id: 6801, l: 6802	
	lsl	 x0, x0, #3	// id: 6802, l: 6803	
	ldr	 x1, [sp, #40]	// id: 6803, l: 6804	
	add	 x0, x1, x0	// id: 6804, l: 6805	
	ldr	 d0, [x0]	// id: 6805, l: 6806	
	fadd	 d1, d1, d0	// id: 6806, l: 6807	
	ldr	 w0, [sp, #100]	// id: 6807, l: 6808	
	add	 w0, w0, #0x8	// id: 6808, l: 6809	
	sxtw	 x0, w0	// id: 6809, l: 6810	
	lsl	 x0, x0, #3	// id: 6810, l: 6811	
	ldr	 x1, [sp, #40]	// id: 6811, l: 6812	
	add	 x0, x1, x0	// id: 6812, l: 6813	
	ldr	 d0, [x0]	// id: 6813, l: 6814	
	fadd	 d1, d1, d0	// id: 6814, l: 6815	
	ldr	 w0, [sp, #100]	// id: 6815, l: 6816	
	add	 w0, w0, #0x9	// id: 6816, l: 6817	
	sxtw	 x0, w0	// id: 6817, l: 6818	
	lsl	 x0, x0, #3	// id: 6818, l: 6819	
	ldr	 x1, [sp, #40]	// id: 6819, l: 6820	
	add	 x0, x1, x0	// id: 6820, l: 6821	
	ldr	 d0, [x0]	// id: 6821, l: 6822	
	fadd	 d1, d1, d0	// id: 6822, l: 6823	
	ldr	 w0, [sp, #100]	// id: 6823, l: 6824	
	add	 w0, w0, #0xa	// id: 6824, l: 6825	
	sxtw	 x0, w0	// id: 6825, l: 6826	
	lsl	 x0, x0, #3	// id: 6826, l: 6827	
	ldr	 x1, [sp, #40]	// id: 6827, l: 6828	
	add	 x0, x1, x0	// id: 6828, l: 6829	
	ldr	 d0, [x0]	// id: 6829, l: 6830	
	fadd	 d1, d1, d0	// id: 6830, l: 6831	
	ldr	 w0, [sp, #100]	// id: 6831, l: 6832	
	add	 w0, w0, #0xb	// id: 6832, l: 6833	
	sxtw	 x0, w0	// id: 6833, l: 6834	
	lsl	 x0, x0, #3	// id: 6834, l: 6835	
	ldr	 x1, [sp, #40]	// id: 6835, l: 6836	
	add	 x0, x1, x0	// id: 6836, l: 6837	
	ldr	 d0, [x0]	// id: 6837, l: 6838	
	fadd	 d1, d1, d0	// id: 6838, l: 6839	
	ldr	 w0, [sp, #100]	// id: 6839, l: 6840	
	add	 w0, w0, #0xc	// id: 6840, l: 6841	
	sxtw	 x0, w0	// id: 6841, l: 6842	
	lsl	 x0, x0, #3	// id: 6842, l: 6843	
	ldr	 x1, [sp, #40]	// id: 6843, l: 6844	
	add	 x0, x1, x0	// id: 6844, l: 6845	
	ldr	 d0, [x0]	// id: 6845, l: 6846	
	fadd	 d1, d1, d0	// id: 6846, l: 6847	
	ldr	 w0, [sp, #100]	// id: 6847, l: 6848	
	add	 w0, w0, #0xd	// id: 6848, l: 6849	
	sxtw	 x0, w0	// id: 6849, l: 6850	
	lsl	 x0, x0, #3	// id: 6850, l: 6851	
	ldr	 x1, [sp, #40]	// id: 6851, l: 6852	
	add	 x0, x1, x0	// id: 6852, l: 6853	
	ldr	 d0, [x0]	// id: 6853, l: 6854	
	fadd	 d1, d1, d0	// id: 6854, l: 6855	
	ldr	 w0, [sp, #100]	// id: 6855, l: 6856	
	add	 w0, w0, #0xe	// id: 6856, l: 6857	
	sxtw	 x0, w0	// id: 6857, l: 6858	
	lsl	 x0, x0, #3	// id: 6858, l: 6859	
	ldr	 x1, [sp, #40]	// id: 6859, l: 6860	
	add	 x0, x1, x0	// id: 6860, l: 6861	
	ldr	 d0, [x0]	// id: 6861, l: 6862	
	fadd	 d1, d1, d0	// id: 6862, l: 6863	
	ldr	 w0, [sp, #100]	// id: 6863, l: 6864	
	add	 w0, w0, #0xf	// id: 6864, l: 6865	
	sxtw	 x0, w0	// id: 6865, l: 6866	
	lsl	 x0, x0, #3	// id: 6866, l: 6867	
	ldr	 x1, [sp, #40]	// id: 6867, l: 6868	
	add	 x0, x1, x0	// id: 6868, l: 6869	
	ldr	 d0, [x0]	// id: 6869, l: 6870	
	fadd	 d1, d1, d0	// id: 6870, l: 6871	
	ldr	 w0, [sp, #100]	// id: 6871, l: 6872	
	add	 w0, w0, #0x10	// id: 6872, l: 6873	
	sxtw	 x0, w0	// id: 6873, l: 6874	
	lsl	 x0, x0, #3	// id: 6874, l: 6875	
	ldr	 x1, [sp, #40]	// id: 6875, l: 6876	
	add	 x0, x1, x0	// id: 6876, l: 6877	
	ldr	 d0, [x0]	// id: 6877, l: 6878	
	fadd	 d1, d1, d0	// id: 6878, l: 6879	
	ldr	 w0, [sp, #100]	// id: 6879, l: 6880	
	add	 w0, w0, #0x11	// id: 6880, l: 6881	
	sxtw	 x0, w0	// id: 6881, l: 6882	
	lsl	 x0, x0, #3	// id: 6882, l: 6883	
	ldr	 x1, [sp, #40]	// id: 6883, l: 6884	
	add	 x0, x1, x0	// id: 6884, l: 6885	
	ldr	 d0, [x0]	// id: 6885, l: 6886	
	fadd	 d1, d1, d0	// id: 6886, l: 6887	
	ldr	 w0, [sp, #100]	// id: 6887, l: 6888	
	add	 w0, w0, #0x12	// id: 6888, l: 6889	
	sxtw	 x0, w0	// id: 6889, l: 6890	
	lsl	 x0, x0, #3	// id: 6890, l: 6891	
	ldr	 x1, [sp, #40]	// id: 6891, l: 6892	
	add	 x0, x1, x0	// id: 6892, l: 6893	
	ldr	 d0, [x0]	// id: 6893, l: 6894	
	fadd	 d0, d1, d0	// id: 6894, l: 6895	
	str	 d0, [sp, #88]	// id: 6895, l: 6896	
	ldr	 d1, [sp, #88]	// id: 6896, l: 6897	
	ldr	 d0, [sp, #120]	// id: 6897, l: 6898	
	fcmpe	 d1, d0	// id: 6898, l: 6899	
	bpl	 .L56	// id: 6899, l: 6900	
	ldr	 d0, [sp, #88]	// id: 6900, l: 6901	
	str	 d0, [sp, #120]	// id: 6901, l: 6902	
.L56:	// id: 6902, l: 6903	
	ldr	 d1, [sp, #88]	// id: 6903, l: 6904	
	ldr	 d0, [sp, #112]	// id: 6904, l: 6905	
	fcmpe	 d1, d0	// id: 6905, l: 6906	
	ble	 .L58	// id: 6906, l: 6907	
	ldr	 d0, [sp, #88]	// id: 6907, l: 6908	
	str	 d0, [sp, #112]	// id: 6908, l: 6909	
.L58:	// id: 6909, l: 6910	
	ldr	 d1, [sp, #104]	// id: 6910, l: 6911	
	ldr	 d0, [sp, #88]	// id: 6911, l: 6912	
	fadd	 d0, d1, d0	// id: 6912, l: 6913	
	str	 d0, [sp, #104]	// id: 6913, l: 6914	
	ldr	 w0, [sp, #100]	// id: 6914, l: 6915	
	add	 w0, w0, #0x13	// id: 6915, l: 6916	
	sxtw	 x0, w0	// id: 6916, l: 6917	
	lsl	 x0, x0, #3	// id: 6917, l: 6918	
	ldr	 x1, [sp, #40]	// id: 6918, l: 6919	
	add	 x0, x1, x0	// id: 6919, l: 6920	
	ldr	 w0, [x0]	// id: 6920, l: 6921	
	and	 w0, w0, #0x1	// id: 6921, l: 6922	
	cmp	 w0, #0x0	// id: 6922, l: 6923	
	beq	 .L60	// id: 6923, l: 6924	
	ldr	 w0, [sp, #156]	// id: 6924, l: 6925	
	add	 w0, w0, #0x1	// id: 6925, l: 6926	
	str	 w0, [sp, #156]	// id: 6926, l: 6927	
	b	 .L61	// id: 6927, l: 6928	
.L60:	// id: 6928, l: 6929	
	ldr	 w0, [sp, #100]	// id: 6929, l: 6930	
	add	 w0, w0, #0x13	// id: 6930, l: 6931	
	sxtw	 x0, w0	// id: 6931, l: 6932	
	lsl	 x0, x0, #3	// id: 6932, l: 6933	
	ldr	 x1, [sp, #40]	// id: 6933, l: 6934	
	add	 x0, x1, x0	// id: 6934, l: 6935	
	ldr	 w0, [x0]	// id: 6935, l: 6936	
	and	 w0, w0, #0x2	// id: 6936, l: 6937	
	cmp	 w0, #0x0	// id: 6937, l: 6938	
	beq	 .L62	// id: 6938, l: 6939	
	ldr	 w0, [sp, #152]	// id: 6939, l: 6940	
	add	 w0, w0, #0x1	// id: 6940, l: 6941	
	str	 w0, [sp, #152]	// id: 6941, l: 6942	
	b	 .L63	// id: 6942, l: 6943	
.L62:	// id: 6943, l: 6944	
	ldr	 w0, [sp, #148]	// id: 6944, l: 6945	
	add	 w0, w0, #0x1	// id: 6945, l: 6946	
	str	 w0, [sp, #148]	// id: 6946, l: 6947	
.L63:	// id: 6947, l: 6948	
	ldr	 w0, [sp, #100]	// id: 6948, l: 6949	
	add	 w0, w0, #0x3	// id: 6949, l: 6950	
	sxtw	 x0, w0	// id: 6950, l: 6951	
	lsl	 x0, x0, #3	// id: 6951, l: 6952	
	ldr	 x1, [sp, #40]	// id: 6952, l: 6953	
	add	 x0, x1, x0	// id: 6953, l: 6954	
	ldr	 d1, [x0]	// id: 6954, l: 6955	
	ldr	 w0, [sp, #100]	// id: 6955, l: 6956	
	add	 w0, w0, #0x4	// id: 6956, l: 6957	
	sxtw	 x0, w0	// id: 6957, l: 6958	
	lsl	 x0, x0, #3	// id: 6958, l: 6959	
	ldr	 x1, [sp, #40]	// id: 6959, l: 6960	
	add	 x0, x1, x0	// id: 6960, l: 6961	
	ldr	 d0, [x0]	// id: 6961, l: 6962	
	fsub	 d1, d1, d0	// id: 6962, l: 6963	
	ldr	 w0, [sp, #100]	// id: 6963, l: 6964	
	add	 w0, w0, #0x7	// id: 6964, l: 6965	
	sxtw	 x0, w0	// id: 6965, l: 6966	
	lsl	 x0, x0, #3	// id: 6966, l: 6967	
	ldr	 x1, [sp, #40]	// id: 6967, l: 6968	
	add	 x0, x1, x0	// id: 6968, l: 6969	
	ldr	 d0, [x0]	// id: 6969, l: 6970	
	fadd	 d1, d1, d0	// id: 6970, l: 6971	
	ldr	 w0, [sp, #100]	// id: 6971, l: 6972	
	add	 w0, w0, #0x8	// id: 6972, l: 6973	
	sxtw	 x0, w0	// id: 6973, l: 6974	
	lsl	 x0, x0, #3	// id: 6974, l: 6975	
	ldr	 x1, [sp, #40]	// id: 6975, l: 6976	
	add	 x0, x1, x0	// id: 6976, l: 6977	
	ldr	 d0, [x0]	// id: 6977, l: 6978	
	fsub	 d1, d1, d0	// id: 6978, l: 6979	
	ldr	 w0, [sp, #100]	// id: 6979, l: 6980	
	add	 w0, w0, #0x9	// id: 6980, l: 6981	
	sxtw	 x0, w0	// id: 6981, l: 6982	
	lsl	 x0, x0, #3	// id: 6982, l: 6983	
	ldr	 x1, [sp, #40]	// id: 6983, l: 6984	
	add	 x0, x1, x0	// id: 6984, l: 6985	
	ldr	 d0, [x0]	// id: 6985, l: 6986	
	fadd	 d1, d1, d0	// id: 6986, l: 6987	
	ldr	 w0, [sp, #100]	// id: 6987, l: 6988	
	add	 w0, w0, #0xa	// id: 6988, l: 6989	
	sxtw	 x0, w0	// id: 6989, l: 6990	
	lsl	 x0, x0, #3	// id: 6990, l: 6991	
	ldr	 x1, [sp, #40]	// id: 6991, l: 6992	
	add	 x0, x1, x0	// id: 6992, l: 6993	
	ldr	 d0, [x0]	// id: 6993, l: 6994	
	fsub	 d1, d1, d0	// id: 6994, l: 6995	
	ldr	 w0, [sp, #100]	// id: 6995, l: 6996	
	add	 w0, w0, #0xf	// id: 6996, l: 6997	
	sxtw	 x0, w0	// id: 6997, l: 6998	
	lsl	 x0, x0, #3	// id: 6998, l: 6999	
	ldr	 x1, [sp, #40]	// id: 6999, l: 7000	
	add	 x0, x1, x0	// id: 7000, l: 7001	
	ldr	 d0, [x0]	// id: 7001, l: 7002	
	fadd	 d1, d1, d0	// id: 7002, l: 7003	
	ldr	 w0, [sp, #100]	// id: 7003, l: 7004	
	add	 w0, w0, #0x10	// id: 7004, l: 7005	
	sxtw	 x0, w0	// id: 7005, l: 7006	
	lsl	 x0, x0, #3	// id: 7006, l: 7007	
	ldr	 x1, [sp, #40]	// id: 7007, l: 7008	
	add	 x0, x1, x0	// id: 7008, l: 7009	
	ldr	 d0, [x0]	// id: 7009, l: 7010	
	fadd	 d1, d1, d0	// id: 7010, l: 7011	
	ldr	 w0, [sp, #100]	// id: 7011, l: 7012	
	add	 w0, w0, #0x11	// id: 7012, l: 7013	
	sxtw	 x0, w0	// id: 7013, l: 7014	
	lsl	 x0, x0, #3	// id: 7014, l: 7015	
	ldr	 x1, [sp, #40]	// id: 7015, l: 7016	
	add	 x0, x1, x0	// id: 7016, l: 7017	
	ldr	 d0, [x0]	// id: 7017, l: 7018	
	fsub	 d1, d1, d0	// id: 7018, l: 7019	
	ldr	 w0, [sp, #100]	// id: 7019, l: 7020	
	add	 w0, w0, #0x12	// id: 7020, l: 7021	
	sxtw	 x0, w0	// id: 7021, l: 7022	
	lsl	 x0, x0, #3	// id: 7022, l: 7023	
	ldr	 x1, [sp, #40]	// id: 7023, l: 7024	
	add	 x0, x1, x0	// id: 7024, l: 7025	
	ldr	 d0, [x0]	// id: 7025, l: 7026	
	fsub	 d0, d1, d0	// id: 7026, l: 7027	
	str	 d0, [sp, #80]	// id: 7027, l: 7028	
	ldr	 w0, [sp, #100]	// id: 7028, l: 7029	
	add	 w0, w0, #0x1	// id: 7029, l: 7030	
	sxtw	 x0, w0	// id: 7030, l: 7031	
	lsl	 x0, x0, #3	// id: 7031, l: 7032	
	ldr	 x1, [sp, #40]	// id: 7032, l: 7033	
	add	 x0, x1, x0	// id: 7033, l: 7034	
	ldr	 d1, [x0]	// id: 7034, l: 7035	
	ldr	 w0, [sp, #100]	// id: 7035, l: 7036	
	add	 w0, w0, #0x2	// id: 7036, l: 7037	
	sxtw	 x0, w0	// id: 7037, l: 7038	
	lsl	 x0, x0, #3	// id: 7038, l: 7039	
	ldr	 x1, [sp, #40]	// id: 7039, l: 7040	
	add	 x0, x1, x0	// id: 7040, l: 7041	
	ldr	 d0, [x0]	// id: 7041, l: 7042	
	fsub	 d1, d1, d0	// id: 7042, l: 7043	
	ldr	 w0, [sp, #100]	// id: 7043, l: 7044	
	add	 w0, w0, #0x7	// id: 7044, l: 7045	
	sxtw	 x0, w0	// id: 7045, l: 7046	
	lsl	 x0, x0, #3	// id: 7046, l: 7047	
	ldr	 x1, [sp, #40]	// id: 7047, l: 7048	
	add	 x0, x1, x0	// id: 7048, l: 7049	
	ldr	 d0, [x0]	// id: 7049, l: 7050	
	fadd	 d1, d1, d0	// id: 7050, l: 7051	
	ldr	 w0, [sp, #100]	// id: 7051, l: 7052	
	add	 w0, w0, #0x8	// id: 7052, l: 7053	
	sxtw	 x0, w0	// id: 7053, l: 7054	
	lsl	 x0, x0, #3	// id: 7054, l: 7055	
	ldr	 x1, [sp, #40]	// id: 7055, l: 7056	
	add	 x0, x1, x0	// id: 7056, l: 7057	
	ldr	 d0, [x0]	// id: 7057, l: 7058	
	fadd	 d1, d1, d0	// id: 7058, l: 7059	
	ldr	 w0, [sp, #100]	// id: 7059, l: 7060	
	add	 w0, w0, #0x9	// id: 7060, l: 7061	
	sxtw	 x0, w0	// id: 7061, l: 7062	
	lsl	 x0, x0, #3	// id: 7062, l: 7063	
	ldr	 x1, [sp, #40]	// id: 7063, l: 7064	
	add	 x0, x1, x0	// id: 7064, l: 7065	
	ldr	 d0, [x0]	// id: 7065, l: 7066	
	fsub	 d1, d1, d0	// id: 7066, l: 7067	
	ldr	 w0, [sp, #100]	// id: 7067, l: 7068	
	add	 w0, w0, #0xa	// id: 7068, l: 7069	
	sxtw	 x0, w0	// id: 7069, l: 7070	
	lsl	 x0, x0, #3	// id: 7070, l: 7071	
	ldr	 x1, [sp, #40]	// id: 7071, l: 7072	
	add	 x0, x1, x0	// id: 7072, l: 7073	
	ldr	 d0, [x0]	// id: 7073, l: 7074	
	fsub	 d1, d1, d0	// id: 7074, l: 7075	
	ldr	 w0, [sp, #100]	// id: 7075, l: 7076	
	add	 w0, w0, #0xb	// id: 7076, l: 7077	
	sxtw	 x0, w0	// id: 7077, l: 7078	
	lsl	 x0, x0, #3	// id: 7078, l: 7079	
	ldr	 x1, [sp, #40]	// id: 7079, l: 7080	
	add	 x0, x1, x0	// id: 7080, l: 7081	
	ldr	 d0, [x0]	// id: 7081, l: 7082	
	fadd	 d1, d1, d0	// id: 7082, l: 7083	
	ldr	 w0, [sp, #100]	// id: 7083, l: 7084	
	add	 w0, w0, #0xc	// id: 7084, l: 7085	
	sxtw	 x0, w0	// id: 7085, l: 7086	
	lsl	 x0, x0, #3	// id: 7086, l: 7087	
	ldr	 x1, [sp, #40]	// id: 7087, l: 7088	
	add	 x0, x1, x0	// id: 7088, l: 7089	
	ldr	 d0, [x0]	// id: 7089, l: 7090	
	fadd	 d1, d1, d0	// id: 7090, l: 7091	
	ldr	 w0, [sp, #100]	// id: 7091, l: 7092	
	add	 w0, w0, #0xd	// id: 7092, l: 7093	
	sxtw	 x0, w0	// id: 7093, l: 7094	
	lsl	 x0, x0, #3	// id: 7094, l: 7095	
	ldr	 x1, [sp, #40]	// id: 7095, l: 7096	
	add	 x0, x1, x0	// id: 7096, l: 7097	
	ldr	 d0, [x0]	// id: 7097, l: 7098	
	fsub	 d1, d1, d0	// id: 7098, l: 7099	
	ldr	 w0, [sp, #100]	// id: 7099, l: 7100	
	add	 w0, w0, #0xe	// id: 7100, l: 7101	
	sxtw	 x0, w0	// id: 7101, l: 7102	
	lsl	 x0, x0, #3	// id: 7102, l: 7103	
	ldr	 x1, [sp, #40]	// id: 7103, l: 7104	
	add	 x0, x1, x0	// id: 7104, l: 7105	
	ldr	 d0, [x0]	// id: 7105, l: 7106	
	fsub	 d0, d1, d0	// id: 7106, l: 7107	
	str	 d0, [sp, #72]	// id: 7107, l: 7108	
	ldr	 w0, [sp, #100]	// id: 7108, l: 7109	
	add	 w0, w0, #0x5	// id: 7109, l: 7110	
	sxtw	 x0, w0	// id: 7110, l: 7111	
	lsl	 x0, x0, #3	// id: 7111, l: 7112	
	ldr	 x1, [sp, #40]	// id: 7112, l: 7113	
	add	 x0, x1, x0	// id: 7113, l: 7114	
	ldr	 d1, [x0]	// id: 7114, l: 7115	
	ldr	 w0, [sp, #100]	// id: 7115, l: 7116	
	add	 w0, w0, #0x6	// id: 7116, l: 7117	
	sxtw	 x0, w0	// id: 7117, l: 7118	
	lsl	 x0, x0, #3	// id: 7118, l: 7119	
	ldr	 x1, [sp, #40]	// id: 7119, l: 7120	
	add	 x0, x1, x0	// id: 7120, l: 7121	
	ldr	 d0, [x0]	// id: 7121, l: 7122	
	fsub	 d1, d1, d0	// id: 7122, l: 7123	
	ldr	 w0, [sp, #100]	// id: 7123, l: 7124	
	add	 w0, w0, #0xb	// id: 7124, l: 7125	
	sxtw	 x0, w0	// id: 7125, l: 7126	
	lsl	 x0, x0, #3	// id: 7126, l: 7127	
	ldr	 x1, [sp, #40]	// id: 7127, l: 7128	
	add	 x0, x1, x0	// id: 7128, l: 7129	
	ldr	 d0, [x0]	// id: 7129, l: 7130	
	fadd	 d1, d1, d0	// id: 7130, l: 7131	
	ldr	 w0, [sp, #100]	// id: 7131, l: 7132	
	add	 w0, w0, #0xc	// id: 7132, l: 7133	
	sxtw	 x0, w0	// id: 7133, l: 7134	
	lsl	 x0, x0, #3	// id: 7134, l: 7135	
	ldr	 x1, [sp, #40]	// id: 7135, l: 7136	
	add	 x0, x1, x0	// id: 7136, l: 7137	
	ldr	 d0, [x0]	// id: 7137, l: 7138	
	fsub	 d1, d1, d0	// id: 7138, l: 7139	
	ldr	 w0, [sp, #100]	// id: 7139, l: 7140	
	add	 w0, w0, #0xd	// id: 7140, l: 7141	
	sxtw	 x0, w0	// id: 7141, l: 7142	
	lsl	 x0, x0, #3	// id: 7142, l: 7143	
	ldr	 x1, [sp, #40]	// id: 7143, l: 7144	
	add	 x0, x1, x0	// id: 7144, l: 7145	
	ldr	 d0, [x0]	// id: 7145, l: 7146	
	fadd	 d1, d1, d0	// id: 7146, l: 7147	
	ldr	 w0, [sp, #100]	// id: 7147, l: 7148	
	add	 w0, w0, #0xe	// id: 7148, l: 7149	
	sxtw	 x0, w0	// id: 7149, l: 7150	
	lsl	 x0, x0, #3	// id: 7150, l: 7151	
	ldr	 x1, [sp, #40]	// id: 7151, l: 7152	
	add	 x0, x1, x0	// id: 7152, l: 7153	
	ldr	 d0, [x0]	// id: 7153, l: 7154	
	fsub	 d1, d1, d0	// id: 7154, l: 7155	
	ldr	 w0, [sp, #100]	// id: 7155, l: 7156	
	add	 w0, w0, #0xf	// id: 7156, l: 7157	
	sxtw	 x0, w0	// id: 7157, l: 7158	
	lsl	 x0, x0, #3	// id: 7158, l: 7159	
	ldr	 x1, [sp, #40]	// id: 7159, l: 7160	
	add	 x0, x1, x0	// id: 7160, l: 7161	
	ldr	 d0, [x0]	// id: 7161, l: 7162	
	fadd	 d1, d1, d0	// id: 7162, l: 7163	
	ldr	 w0, [sp, #100]	// id: 7163, l: 7164	
	add	 w0, w0, #0x10	// id: 7164, l: 7165	
	sxtw	 x0, w0	// id: 7165, l: 7166	
	lsl	 x0, x0, #3	// id: 7166, l: 7167	
	ldr	 x1, [sp, #40]	// id: 7167, l: 7168	
	add	 x0, x1, x0	// id: 7168, l: 7169	
	ldr	 d0, [x0]	// id: 7169, l: 7170	
	fsub	 d1, d1, d0	// id: 7170, l: 7171	
	ldr	 w0, [sp, #100]	// id: 7171, l: 7172	
	add	 w0, w0, #0x11	// id: 7172, l: 7173	
	sxtw	 x0, w0	// id: 7173, l: 7174	
	lsl	 x0, x0, #3	// id: 7174, l: 7175	
	ldr	 x1, [sp, #40]	// id: 7175, l: 7176	
	add	 x0, x1, x0	// id: 7176, l: 7177	
	ldr	 d0, [x0]	// id: 7177, l: 7178	
	fadd	 d1, d1, d0	// id: 7178, l: 7179	
	ldr	 w0, [sp, #100]	// id: 7179, l: 7180	
	add	 w0, w0, #0x12	// id: 7180, l: 7181	
	sxtw	 x0, w0	// id: 7181, l: 7182	
	lsl	 x0, x0, #3	// id: 7182, l: 7183	
	ldr	 x1, [sp, #40]	// id: 7183, l: 7184	
	add	 x0, x1, x0	// id: 7184, l: 7185	
	ldr	 d0, [x0]	// id: 7185, l: 7186	
	fsub	 d0, d1, d0	// id: 7186, l: 7187	
	str	 d0, [sp, #64]	// id: 7187, l: 7188	
	ldr	 d0, [sp, #80]	// id: 7188, l: 7189	
	fmul	 d1, d0, d0	// id: 7189, l: 7190	
	ldr	 d0, [sp, #72]	// id: 7190, l: 7191	
	fmul	 d0, d0, d0	// id: 7191, l: 7192	
	fadd	 d1, d1, d0	// id: 7192, l: 7193	
	ldr	 d0, [sp, #64]	// id: 7193, l: 7194	
	fmul	 d0, d0, d0	// id: 7194, l: 7195	
	fadd	 d1, d1, d0	// id: 7195, l: 7196	
	ldr	 d0, [sp, #88]	// id: 7196, l: 7197	
	fmul	 d0, d0, d0	// id: 7197, l: 7198	
	fdiv	 d0, d1, d0	// id: 7198, l: 7199	
	str	 d0, [sp, #56]	// id: 7199, l: 7200	
	ldr	 d1, [sp, #56]	// id: 7200, l: 7201	
	ldr	 d0, [sp, #136]	// id: 7201, l: 7202	
	fcmpe	 d1, d0	// id: 7202, l: 7203	
	bpl	 .L64	// id: 7203, l: 7204	
	ldr	 d0, [sp, #56]	// id: 7204, l: 7205	
	str	 d0, [sp, #136]	// id: 7205, l: 7206	
.L64:	// id: 7206, l: 7207	
	ldr	 d1, [sp, #56]	// id: 7207, l: 7208	
	ldr	 d0, [sp, #128]	// id: 7208, l: 7209	
	fcmpe	 d1, d0	// id: 7209, l: 7210	
	ble	 .L61	// id: 7210, l: 7211	
	ldr	 d0, [sp, #56]	// id: 7211, l: 7212	
	str	 d0, [sp, #128]	// id: 7212, l: 7213	
.L61:	// id: 7213, l: 7214	
	ldr	 w0, [sp, #100]	// id: 7214, l: 7215	
	add	 w0, w0, #0x14	// id: 7215, l: 7216	
	str	 w0, [sp, #100]	// id: 7216, l: 7217	
.L55:	// id: 7217, l: 7218	
	ldr	 w1, [sp, #100]	// id: 7218, l: 7219	
	mov	 w0, #0xba7f                	// #47743	// id: 7219, l: 7220	
	movk	 w0, #0x18c, lsl #16	// id: 7220, l: 7221	
	cmp	 w1, w0	// id: 7221, l: 7222	
	ble	 .L67	// id: 7222, l: 7223	
	ldr	 d0, [sp, #136]	// id: 7223, l: 7224	
	bl	 sqrt	// id: 7224, l: 7225	
	fmov	 d8, d0	// id: 7225, l: 7226	
	ldr	 d0, [sp, #128]	// id: 7226, l: 7227	
	bl	 sqrt	// id: 7227, l: 7228	
	fmov	 d4, d0	// id: 7228, l: 7229	
	fmov	 d3, d8	// id: 7229, l: 7230	
	ldr	 d2, [sp, #104]	// id: 7230, l: 7231	
	ldr	 d1, [sp, #112]	// id: 7231, l: 7232	
	ldr	 d0, [sp, #120]	// id: 7232, l: 7233	
	ldr	 w3, [sp, #148]	// id: 7233, l: 7234	
	ldr	 w2, [sp, #152]	// id: 7234, l: 7235	
	ldr	 w1, [sp, #156]	// id: 7235, l: 7236	
	adrp	 x0, .LC9	// id: 7236, l: 7237	
	add	 x0, x0, :lo12:.LC9	// id: 7237, l: 7238	
	bl	 printf	// id: 7238, l: 7239	
	nop		// id: 7239, l: 7240	
	ldr	 d8, [sp, #16]	// id: 7240, l: 7241	
	ldp	 x29, x30, [sp], #160	// id: 7241, l: 7242	
	.cfi_restore	30	// id: 7242, l: 7243	
	.cfi_restore	29	// id: 7243, l: 7244	
	.cfi_restore	72	// id: 7244, l: 7245	
	.cfi_def_cfa_offset	0	// id: 7245, l: 7246	
	ret		// id: 7246, l: 7247	
	.cfi_endproc		// id: 7247, l: 7248	
.LFE12:	// id: 7248, l: 7249	
	.size	LBM_showGridStatistics, .-LBM_showGridStatistics	// id: 7249, l: 7250	
	.p2align	2, , 0	// id: 7250, l: 7251	
	.type	storeValue, %function	// id: 7251, l: 7252	
storeValue:	// id: 7252, l: 7253	
.LFB13:	// id: 7253, l: 7254	
	.cfi_startproc		// id: 7254, l: 7255	
	stp	 x29, x30, [sp, #-64]!	// id: 7255, l: 7256	
	.cfi_def_cfa_offset	64	// id: 7256, l: 7257	
	.cfi_offset	29, -64	// id: 7257, l: 7258	
	.cfi_offset	30, -56	// id: 7258, l: 7259	
	mov	 x29, sp	// id: 7259, l: 7260	
	str	 x0, [sp, #24]	// id: 7260, l: 7261	
	str	 x1, [sp, #16]	// id: 7261, l: 7262	
	mov	 w0, #0x1                   	// #1	// id: 7262, l: 7263	
	str	 w0, [sp, #44]	// id: 7263, l: 7264	
	add	 x0, sp, #0x2c	// id: 7264, l: 7265	
	ldrb	 w0, [x0]	// id: 7265, l: 7266	
	cmp	 w0, #0x0	// id: 7266, l: 7267	
	bne	 .L73	// id: 7267, l: 7268	
	ldr	 x0, [sp, #16]	// id: 7268, l: 7269	
	str	 x0, [sp, #48]	// id: 7269, l: 7270	
	str	 wzr, [sp, #60]	// id: 7270, l: 7271	
	b	 .L74	// id: 7271, l: 7272	
.L75:	// id: 7272, l: 7273	
	ldrsw	 x0, [sp, #60]	// id: 7273, l: 7274	
	mov	 x1, #0x3                   	// #3	// id: 7274, l: 7275	
	sub	 x0, x1, x0	// id: 7275, l: 7276	
	ldr	 x1, [sp, #48]	// id: 7276, l: 7277	
	add	 x0, x1, x0	// id: 7277, l: 7278	
	ldrb	 w2, [x0]	// id: 7278, l: 7279	
	ldrsw	 x0, [sp, #60]	// id: 7279, l: 7280	
	add	 x1, sp, #0x28	// id: 7280, l: 7281	
	strb	 w2, [x1, x0]	// id: 7281, l: 7282	
	ldr	 w0, [sp, #60]	// id: 7282, l: 7283	
	add	 w0, w0, #0x1	// id: 7283, l: 7284	
	str	 w0, [sp, #60]	// id: 7284, l: 7285	
.L74:	// id: 7285, l: 7286	
	ldr	 w0, [sp, #60]	// id: 7286, l: 7287	
	cmp	 w0, #0x3	// id: 7287, l: 7288	
	bls	 .L75	// id: 7288, l: 7289	
	add	 x0, sp, #0x28	// id: 7289, l: 7290	
	ldr	 x3, [sp, #24]	// id: 7290, l: 7291	
	mov	 x2, #0x1                   	// #1	// id: 7291, l: 7292	
	mov	 x1, #0x4                   	// #4	// id: 7292, l: 7293	
	bl	 fwrite	// id: 7293, l: 7294	
	b	 .L77	// id: 7294, l: 7295	
.L73:	// id: 7295, l: 7296	
	ldr	 x3, [sp, #24]	// id: 7296, l: 7297	
	mov	 x2, #0x1                   	// #1	// id: 7297, l: 7298	
	mov	 x1, #0x4                   	// #4	// id: 7298, l: 7299	
	ldr	 x0, [sp, #16]	// id: 7299, l: 7300	
	bl	 fwrite	// id: 7300, l: 7301	
.L77:	// id: 7301, l: 7302	
	nop		// id: 7302, l: 7303	
	ldp	 x29, x30, [sp], #64	// id: 7303, l: 7304	
	.cfi_restore	30	// id: 7304, l: 7305	
	.cfi_restore	29	// id: 7305, l: 7306	
	.cfi_def_cfa_offset	0	// id: 7306, l: 7307	
	ret		// id: 7307, l: 7308	
	.cfi_endproc		// id: 7308, l: 7309	
.LFE13:	// id: 7309, l: 7310	
	.size	storeValue, .-storeValue	// id: 7310, l: 7311	
	.p2align	2, , 0	// id: 7311, l: 7312	
	.type	loadValue, %function	// id: 7312, l: 7313	
loadValue:	// id: 7313, l: 7314	
.LFB14:	// id: 7314, l: 7315	
	.cfi_startproc		// id: 7315, l: 7316	
	stp	 x29, x30, [sp, #-64]!	// id: 7316, l: 7317	
	.cfi_def_cfa_offset	64	// id: 7317, l: 7318	
	.cfi_offset	29, -64	// id: 7318, l: 7319	
	.cfi_offset	30, -56	// id: 7319, l: 7320	
	mov	 x29, sp	// id: 7320, l: 7321	
	str	 x0, [sp, #24]	// id: 7321, l: 7322	
	str	 x1, [sp, #16]	// id: 7322, l: 7323	
	mov	 w0, #0x1                   	// #1	// id: 7323, l: 7324	
	str	 w0, [sp, #44]	// id: 7324, l: 7325	
	add	 x0, sp, #0x2c	// id: 7325, l: 7326	
	ldrb	 w0, [x0]	// id: 7326, l: 7327	
	cmp	 w0, #0x0	// id: 7327, l: 7328	
	bne	 .L79	// id: 7328, l: 7329	
	ldr	 x0, [sp, #16]	// id: 7329, l: 7330	
	str	 x0, [sp, #48]	// id: 7330, l: 7331	
	add	 x0, sp, #0x28	// id: 7331, l: 7332	
	ldr	 x3, [sp, #24]	// id: 7332, l: 7333	
	mov	 x2, #0x1                   	// #1	// id: 7333, l: 7334	
	mov	 x1, #0x4                   	// #4	// id: 7334, l: 7335	
	bl	 fread	// id: 7335, l: 7336	
	str	 wzr, [sp, #60]	// id: 7336, l: 7337	
	b	 .L80	// id: 7337, l: 7338	
.L81:	// id: 7338, l: 7339	
	ldrsw	 x0, [sp, #60]	// id: 7339, l: 7340	
	mov	 x1, #0x3                   	// #3	// id: 7340, l: 7341	
	sub	 x1, x1, x0	// id: 7341, l: 7342	
	ldrsw	 x0, [sp, #60]	// id: 7342, l: 7343	
	ldr	 x2, [sp, #48]	// id: 7343, l: 7344	
	add	 x0, x2, x0	// id: 7344, l: 7345	
	add	 x2, sp, #0x28	// id: 7345, l: 7346	
	ldrb	 w1, [x2, x1]	// id: 7346, l: 7347	
	strb	 w1, [x0]	// id: 7347, l: 7348	
	ldr	 w0, [sp, #60]	// id: 7348, l: 7349	
	add	 w0, w0, #0x1	// id: 7349, l: 7350	
	str	 w0, [sp, #60]	// id: 7350, l: 7351	
.L80:	// id: 7351, l: 7352	
	ldr	 w0, [sp, #60]	// id: 7352, l: 7353	
	cmp	 w0, #0x3	// id: 7353, l: 7354	
	bls	 .L81	// id: 7354, l: 7355	
	b	 .L83	// id: 7355, l: 7356	
.L79:	// id: 7356, l: 7357	
	ldr	 x3, [sp, #24]	// id: 7357, l: 7358	
	mov	 x2, #0x1                   	// #1	// id: 7358, l: 7359	
	mov	 x1, #0x4                   	// #4	// id: 7359, l: 7360	
	ldr	 x0, [sp, #16]	// id: 7360, l: 7361	
	bl	 fread	// id: 7361, l: 7362	
.L83:	// id: 7362, l: 7363	
	nop		// id: 7363, l: 7364	
	ldp	 x29, x30, [sp], #64	// id: 7364, l: 7365	
	.cfi_restore	30	// id: 7365, l: 7366	
	.cfi_restore	29	// id: 7366, l: 7367	
	.cfi_def_cfa_offset	0	// id: 7367, l: 7368	
	ret		// id: 7368, l: 7369	
	.cfi_endproc		// id: 7369, l: 7370	
.LFE14:	// id: 7370, l: 7371	
	.size	loadValue, .-loadValue	// id: 7371, l: 7372	
	.section	.rodata	// id: 7372, l: 7373	
	.p2align	3, , 0	// id: 7373, l: 7374	
.LC12:	// id: 7374, l: 7375	
	.string	"wb"	// id: 7375, l: 7376	
	.p2align	3, , 0	// id: 7376, l: 7377	
.LC13:	// id: 7377, l: 7378	
	.string	"w"	// id: 7378, l: 7379	
	.p2align	3, , 0	// id: 7379, l: 7380	
.LC14:	// id: 7380, l: 7381	
	.string	"%e %e %e\n"	// id: 7381, l: 7382	
	.text	0	// id: 7382, l: 7383	
	.p2align	2, , 0	// id: 7383, l: 7384	
	.globl	LBM_storeVelocityField	// id: 7384, l: 7385	
	.type	LBM_storeVelocityField, %function	// id: 7385, l: 7386	
LBM_storeVelocityField:	// id: 7386, l: 7387	
.LFB15:	// id: 7387, l: 7388	
	.cfi_startproc		// id: 7388, l: 7389	
	stp	 x29, x30, [sp, #-96]!	// id: 7389, l: 7390	
	.cfi_def_cfa_offset	96	// id: 7390, l: 7391	
	.cfi_offset	29, -96	// id: 7391, l: 7392	
	.cfi_offset	30, -88	// id: 7392, l: 7393	
	mov	 x29, sp	// id: 7393, l: 7394	
	str	 x0, [sp, #40]	// id: 7394, l: 7395	
	str	 x1, [sp, #32]	// id: 7395, l: 7396	
	str	 w2, [sp, #28]	// id: 7396, l: 7397	
	ldr	 w0, [sp, #28]	// id: 7397, l: 7398	
	cmp	 w0, #0x0	// id: 7398, l: 7399	
	beq	 .L85	// id: 7399, l: 7400	
	adrp	 x0, .LC12	// id: 7400, l: 7401	
	add	 x0, x0, :lo12:.LC12	// id: 7401, l: 7402	
	b	 .L86	// id: 7402, l: 7403	
.L85:	// id: 7403, l: 7404	
	adrp	 x0, .LC13	// id: 7404, l: 7405	
	add	 x0, x0, :lo12:.LC13	// id: 7405, l: 7406	
.L86:	// id: 7406, l: 7407	
	mov	 x1, x0	// id: 7407, l: 7408	
	ldr	 x0, [sp, #32]	// id: 7408, l: 7409	
	bl	 fopen	// id: 7409, l: 7410	
	str	 x0, [sp, #72]	// id: 7410, l: 7411	
	str	 wzr, [sp, #84]	// id: 7411, l: 7412	
	b	 .L87	// id: 7412, l: 7413	
.L94:	// id: 7413, l: 7414	
	str	 wzr, [sp, #88]	// id: 7414, l: 7415	
	b	 .L88	// id: 7415, l: 7416	
.L93:	// id: 7416, l: 7417	
	str	 wzr, [sp, #92]	// id: 7417, l: 7418	
	b	 .L89	// id: 7418, l: 7419	
.L92:	// id: 7419, l: 7420	
	ldr	 w1, [sp, #88]	// id: 7420, l: 7421	
	mov	 w0, #0x64                  	// #100	// id: 7421, l: 7422	
	mul	 w1, w1, w0	// id: 7422, l: 7423	
	ldr	 w0, [sp, #92]	// id: 7423, l: 7424	
	add	 w1, w1, w0	// id: 7424, l: 7425	
	ldr	 w2, [sp, #84]	// id: 7425, l: 7426	
	mov	 w0, #0x2710                	// #10000	// id: 7426, l: 7427	
	mul	 w0, w2, w0	// id: 7427, l: 7428	
	add	 w1, w1, w0	// id: 7428, l: 7429	
	mov	 w0, w1	// id: 7429, l: 7430	
	lsl	 w0, w0, #2	// id: 7430, l: 7431	
	add	 w0, w0, w1	// id: 7431, l: 7432	
	lsl	 w0, w0, #2	// id: 7432, l: 7433	
	sxtw	 x0, w0	// id: 7433, l: 7434	
	lsl	 x0, x0, #3	// id: 7434, l: 7435	
	ldr	 x1, [sp, #40]	// id: 7435, l: 7436	
	add	 x0, x1, x0	// id: 7436, l: 7437	
	ldr	 d1, [x0]	// id: 7437, l: 7438	
	ldr	 w1, [sp, #88]	// id: 7438, l: 7439	
	mov	 w0, #0x64                  	// #100	// id: 7439, l: 7440	
	mul	 w1, w1, w0	// id: 7440, l: 7441	
	ldr	 w0, [sp, #92]	// id: 7441, l: 7442	
	add	 w1, w1, w0	// id: 7442, l: 7443	
	ldr	 w2, [sp, #84]	// id: 7443, l: 7444	
	mov	 w0, #0x2710                	// #10000	// id: 7444, l: 7445	
	mul	 w0, w2, w0	// id: 7445, l: 7446	
	add	 w1, w1, w0	// id: 7446, l: 7447	
	mov	 w0, w1	// id: 7447, l: 7448	
	lsl	 w0, w0, #2	// id: 7448, l: 7449	
	add	 w0, w0, w1	// id: 7449, l: 7450	
	lsl	 w0, w0, #2	// id: 7450, l: 7451	
	add	 w0, w0, #0x1	// id: 7451, l: 7452	
	sxtw	 x0, w0	// id: 7452, l: 7453	
	lsl	 x0, x0, #3	// id: 7453, l: 7454	
	ldr	 x1, [sp, #40]	// id: 7454, l: 7455	
	add	 x0, x1, x0	// id: 7455, l: 7456	
	ldr	 d0, [x0]	// id: 7456, l: 7457	
	fadd	 d1, d1, d0	// id: 7457, l: 7458	
	ldr	 w1, [sp, #88]	// id: 7458, l: 7459	
	mov	 w0, #0x64                  	// #100	// id: 7459, l: 7460	
	mul	 w1, w1, w0	// id: 7460, l: 7461	
	ldr	 w0, [sp, #92]	// id: 7461, l: 7462	
	add	 w1, w1, w0	// id: 7462, l: 7463	
	ldr	 w2, [sp, #84]	// id: 7463, l: 7464	
	mov	 w0, #0x2710                	// #10000	// id: 7464, l: 7465	
	mul	 w0, w2, w0	// id: 7465, l: 7466	
	add	 w1, w1, w0	// id: 7466, l: 7467	
	mov	 w0, w1	// id: 7467, l: 7468	
	lsl	 w0, w0, #2	// id: 7468, l: 7469	
	add	 w0, w0, w1	// id: 7469, l: 7470	
	lsl	 w0, w0, #2	// id: 7470, l: 7471	
	add	 w0, w0, #0x2	// id: 7471, l: 7472	
	sxtw	 x0, w0	// id: 7472, l: 7473	
	lsl	 x0, x0, #3	// id: 7473, l: 7474	
	ldr	 x1, [sp, #40]	// id: 7474, l: 7475	
	add	 x0, x1, x0	// id: 7475, l: 7476	
	ldr	 d0, [x0]	// id: 7476, l: 7477	
	fadd	 d1, d1, d0	// id: 7477, l: 7478	
	ldr	 w1, [sp, #88]	// id: 7478, l: 7479	
	mov	 w0, #0x64                  	// #100	// id: 7479, l: 7480	
	mul	 w1, w1, w0	// id: 7480, l: 7481	
	ldr	 w0, [sp, #92]	// id: 7481, l: 7482	
	add	 w1, w1, w0	// id: 7482, l: 7483	
	ldr	 w2, [sp, #84]	// id: 7483, l: 7484	
	mov	 w0, #0x2710                	// #10000	// id: 7484, l: 7485	
	mul	 w0, w2, w0	// id: 7485, l: 7486	
	add	 w1, w1, w0	// id: 7486, l: 7487	
	mov	 w0, w1	// id: 7487, l: 7488	
	lsl	 w0, w0, #2	// id: 7488, l: 7489	
	add	 w0, w0, w1	// id: 7489, l: 7490	
	lsl	 w0, w0, #2	// id: 7490, l: 7491	
	add	 w0, w0, #0x3	// id: 7491, l: 7492	
	sxtw	 x0, w0	// id: 7492, l: 7493	
	lsl	 x0, x0, #3	// id: 7493, l: 7494	
	ldr	 x1, [sp, #40]	// id: 7494, l: 7495	
	add	 x0, x1, x0	// id: 7495, l: 7496	
	ldr	 d0, [x0]	// id: 7496, l: 7497	
	fadd	 d1, d1, d0	// id: 7497, l: 7498	
	ldr	 w1, [sp, #88]	// id: 7498, l: 7499	
	mov	 w0, #0x64                  	// #100	// id: 7499, l: 7500	
	mul	 w1, w1, w0	// id: 7500, l: 7501	
	ldr	 w0, [sp, #92]	// id: 7501, l: 7502	
	add	 w1, w1, w0	// id: 7502, l: 7503	
	ldr	 w2, [sp, #84]	// id: 7503, l: 7504	
	mov	 w0, #0x2710                	// #10000	// id: 7504, l: 7505	
	mul	 w0, w2, w0	// id: 7505, l: 7506	
	add	 w1, w1, w0	// id: 7506, l: 7507	
	mov	 w0, w1	// id: 7507, l: 7508	
	lsl	 w0, w0, #2	// id: 7508, l: 7509	
	add	 w0, w0, w1	// id: 7509, l: 7510	
	lsl	 w0, w0, #2	// id: 7510, l: 7511	
	add	 w0, w0, #0x4	// id: 7511, l: 7512	
	sxtw	 x0, w0	// id: 7512, l: 7513	
	lsl	 x0, x0, #3	// id: 7513, l: 7514	
	ldr	 x1, [sp, #40]	// id: 7514, l: 7515	
	add	 x0, x1, x0	// id: 7515, l: 7516	
	ldr	 d0, [x0]	// id: 7516, l: 7517	
	fadd	 d1, d1, d0	// id: 7517, l: 7518	
	ldr	 w1, [sp, #88]	// id: 7518, l: 7519	
	mov	 w0, #0x64                  	// #100	// id: 7519, l: 7520	
	mul	 w1, w1, w0	// id: 7520, l: 7521	
	ldr	 w0, [sp, #92]	// id: 7521, l: 7522	
	add	 w1, w1, w0	// id: 7522, l: 7523	
	ldr	 w2, [sp, #84]	// id: 7523, l: 7524	
	mov	 w0, #0x2710                	// #10000	// id: 7524, l: 7525	
	mul	 w0, w2, w0	// id: 7525, l: 7526	
	add	 w1, w1, w0	// id: 7526, l: 7527	
	mov	 w0, w1	// id: 7527, l: 7528	
	lsl	 w0, w0, #2	// id: 7528, l: 7529	
	add	 w0, w0, w1	// id: 7529, l: 7530	
	lsl	 w0, w0, #2	// id: 7530, l: 7531	
	add	 w0, w0, #0x5	// id: 7531, l: 7532	
	sxtw	 x0, w0	// id: 7532, l: 7533	
	lsl	 x0, x0, #3	// id: 7533, l: 7534	
	ldr	 x1, [sp, #40]	// id: 7534, l: 7535	
	add	 x0, x1, x0	// id: 7535, l: 7536	
	ldr	 d0, [x0]	// id: 7536, l: 7537	
	fadd	 d1, d1, d0	// id: 7537, l: 7538	
	ldr	 w1, [sp, #88]	// id: 7538, l: 7539	
	mov	 w0, #0x64                  	// #100	// id: 7539, l: 7540	
	mul	 w1, w1, w0	// id: 7540, l: 7541	
	ldr	 w0, [sp, #92]	// id: 7541, l: 7542	
	add	 w1, w1, w0	// id: 7542, l: 7543	
	ldr	 w2, [sp, #84]	// id: 7543, l: 7544	
	mov	 w0, #0x2710                	// #10000	// id: 7544, l: 7545	
	mul	 w0, w2, w0	// id: 7545, l: 7546	
	add	 w1, w1, w0	// id: 7546, l: 7547	
	mov	 w0, w1	// id: 7547, l: 7548	
	lsl	 w0, w0, #2	// id: 7548, l: 7549	
	add	 w0, w0, w1	// id: 7549, l: 7550	
	lsl	 w0, w0, #2	// id: 7550, l: 7551	
	add	 w0, w0, #0x6	// id: 7551, l: 7552	
	sxtw	 x0, w0	// id: 7552, l: 7553	
	lsl	 x0, x0, #3	// id: 7553, l: 7554	
	ldr	 x1, [sp, #40]	// id: 7554, l: 7555	
	add	 x0, x1, x0	// id: 7555, l: 7556	
	ldr	 d0, [x0]	// id: 7556, l: 7557	
	fadd	 d1, d1, d0	// id: 7557, l: 7558	
	ldr	 w1, [sp, #88]	// id: 7558, l: 7559	
	mov	 w0, #0x64                  	// #100	// id: 7559, l: 7560	
	mul	 w1, w1, w0	// id: 7560, l: 7561	
	ldr	 w0, [sp, #92]	// id: 7561, l: 7562	
	add	 w1, w1, w0	// id: 7562, l: 7563	
	ldr	 w2, [sp, #84]	// id: 7563, l: 7564	
	mov	 w0, #0x2710                	// #10000	// id: 7564, l: 7565	
	mul	 w0, w2, w0	// id: 7565, l: 7566	
	add	 w1, w1, w0	// id: 7566, l: 7567	
	mov	 w0, w1	// id: 7567, l: 7568	
	lsl	 w0, w0, #2	// id: 7568, l: 7569	
	add	 w0, w0, w1	// id: 7569, l: 7570	
	lsl	 w0, w0, #2	// id: 7570, l: 7571	
	add	 w0, w0, #0x7	// id: 7571, l: 7572	
	sxtw	 x0, w0	// id: 7572, l: 7573	
	lsl	 x0, x0, #3	// id: 7573, l: 7574	
	ldr	 x1, [sp, #40]	// id: 7574, l: 7575	
	add	 x0, x1, x0	// id: 7575, l: 7576	
	ldr	 d0, [x0]	// id: 7576, l: 7577	
	fadd	 d1, d1, d0	// id: 7577, l: 7578	
	ldr	 w1, [sp, #88]	// id: 7578, l: 7579	
	mov	 w0, #0x64                  	// #100	// id: 7579, l: 7580	
	mul	 w1, w1, w0	// id: 7580, l: 7581	
	ldr	 w0, [sp, #92]	// id: 7581, l: 7582	
	add	 w1, w1, w0	// id: 7582, l: 7583	
	ldr	 w2, [sp, #84]	// id: 7583, l: 7584	
	mov	 w0, #0x2710                	// #10000	// id: 7584, l: 7585	
	mul	 w0, w2, w0	// id: 7585, l: 7586	
	add	 w1, w1, w0	// id: 7586, l: 7587	
	mov	 w0, w1	// id: 7587, l: 7588	
	lsl	 w0, w0, #2	// id: 7588, l: 7589	
	add	 w0, w0, w1	// id: 7589, l: 7590	
	lsl	 w0, w0, #2	// id: 7590, l: 7591	
	add	 w0, w0, #0x8	// id: 7591, l: 7592	
	sxtw	 x0, w0	// id: 7592, l: 7593	
	lsl	 x0, x0, #3	// id: 7593, l: 7594	
	ldr	 x1, [sp, #40]	// id: 7594, l: 7595	
	add	 x0, x1, x0	// id: 7595, l: 7596	
	ldr	 d0, [x0]	// id: 7596, l: 7597	
	fadd	 d1, d1, d0	// id: 7597, l: 7598	
	ldr	 w1, [sp, #88]	// id: 7598, l: 7599	
	mov	 w0, #0x64                  	// #100	// id: 7599, l: 7600	
	mul	 w1, w1, w0	// id: 7600, l: 7601	
	ldr	 w0, [sp, #92]	// id: 7601, l: 7602	
	add	 w1, w1, w0	// id: 7602, l: 7603	
	ldr	 w2, [sp, #84]	// id: 7603, l: 7604	
	mov	 w0, #0x2710                	// #10000	// id: 7604, l: 7605	
	mul	 w0, w2, w0	// id: 7605, l: 7606	
	add	 w1, w1, w0	// id: 7606, l: 7607	
	mov	 w0, w1	// id: 7607, l: 7608	
	lsl	 w0, w0, #2	// id: 7608, l: 7609	
	add	 w0, w0, w1	// id: 7609, l: 7610	
	lsl	 w0, w0, #2	// id: 7610, l: 7611	
	add	 w0, w0, #0x9	// id: 7611, l: 7612	
	sxtw	 x0, w0	// id: 7612, l: 7613	
	lsl	 x0, x0, #3	// id: 7613, l: 7614	
	ldr	 x1, [sp, #40]	// id: 7614, l: 7615	
	add	 x0, x1, x0	// id: 7615, l: 7616	
	ldr	 d0, [x0]	// id: 7616, l: 7617	
	fadd	 d1, d1, d0	// id: 7617, l: 7618	
	ldr	 w1, [sp, #88]	// id: 7618, l: 7619	
	mov	 w0, #0x64                  	// #100	// id: 7619, l: 7620	
	mul	 w1, w1, w0	// id: 7620, l: 7621	
	ldr	 w0, [sp, #92]	// id: 7621, l: 7622	
	add	 w1, w1, w0	// id: 7622, l: 7623	
	ldr	 w2, [sp, #84]	// id: 7623, l: 7624	
	mov	 w0, #0x2710                	// #10000	// id: 7624, l: 7625	
	mul	 w0, w2, w0	// id: 7625, l: 7626	
	add	 w1, w1, w0	// id: 7626, l: 7627	
	mov	 w0, w1	// id: 7627, l: 7628	
	lsl	 w0, w0, #2	// id: 7628, l: 7629	
	add	 w0, w0, w1	// id: 7629, l: 7630	
	lsl	 w0, w0, #2	// id: 7630, l: 7631	
	add	 w0, w0, #0xa	// id: 7631, l: 7632	
	sxtw	 x0, w0	// id: 7632, l: 7633	
	lsl	 x0, x0, #3	// id: 7633, l: 7634	
	ldr	 x1, [sp, #40]	// id: 7634, l: 7635	
	add	 x0, x1, x0	// id: 7635, l: 7636	
	ldr	 d0, [x0]	// id: 7636, l: 7637	
	fadd	 d1, d1, d0	// id: 7637, l: 7638	
	ldr	 w1, [sp, #88]	// id: 7638, l: 7639	
	mov	 w0, #0x64                  	// #100	// id: 7639, l: 7640	
	mul	 w1, w1, w0	// id: 7640, l: 7641	
	ldr	 w0, [sp, #92]	// id: 7641, l: 7642	
	add	 w1, w1, w0	// id: 7642, l: 7643	
	ldr	 w2, [sp, #84]	// id: 7643, l: 7644	
	mov	 w0, #0x2710                	// #10000	// id: 7644, l: 7645	
	mul	 w0, w2, w0	// id: 7645, l: 7646	
	add	 w1, w1, w0	// id: 7646, l: 7647	
	mov	 w0, w1	// id: 7647, l: 7648	
	lsl	 w0, w0, #2	// id: 7648, l: 7649	
	add	 w0, w0, w1	// id: 7649, l: 7650	
	lsl	 w0, w0, #2	// id: 7650, l: 7651	
	add	 w0, w0, #0xb	// id: 7651, l: 7652	
	sxtw	 x0, w0	// id: 7652, l: 7653	
	lsl	 x0, x0, #3	// id: 7653, l: 7654	
	ldr	 x1, [sp, #40]	// id: 7654, l: 7655	
	add	 x0, x1, x0	// id: 7655, l: 7656	
	ldr	 d0, [x0]	// id: 7656, l: 7657	
	fadd	 d1, d1, d0	// id: 7657, l: 7658	
	ldr	 w1, [sp, #88]	// id: 7658, l: 7659	
	mov	 w0, #0x64                  	// #100	// id: 7659, l: 7660	
	mul	 w1, w1, w0	// id: 7660, l: 7661	
	ldr	 w0, [sp, #92]	// id: 7661, l: 7662	
	add	 w1, w1, w0	// id: 7662, l: 7663	
	ldr	 w2, [sp, #84]	// id: 7663, l: 7664	
	mov	 w0, #0x2710                	// #10000	// id: 7664, l: 7665	
	mul	 w0, w2, w0	// id: 7665, l: 7666	
	add	 w1, w1, w0	// id: 7666, l: 7667	
	mov	 w0, w1	// id: 7667, l: 7668	
	lsl	 w0, w0, #2	// id: 7668, l: 7669	
	add	 w0, w0, w1	// id: 7669, l: 7670	
	lsl	 w0, w0, #2	// id: 7670, l: 7671	
	add	 w0, w0, #0xc	// id: 7671, l: 7672	
	sxtw	 x0, w0	// id: 7672, l: 7673	
	lsl	 x0, x0, #3	// id: 7673, l: 7674	
	ldr	 x1, [sp, #40]	// id: 7674, l: 7675	
	add	 x0, x1, x0	// id: 7675, l: 7676	
	ldr	 d0, [x0]	// id: 7676, l: 7677	
	fadd	 d1, d1, d0	// id: 7677, l: 7678	
	ldr	 w1, [sp, #88]	// id: 7678, l: 7679	
	mov	 w0, #0x64                  	// #100	// id: 7679, l: 7680	
	mul	 w1, w1, w0	// id: 7680, l: 7681	
	ldr	 w0, [sp, #92]	// id: 7681, l: 7682	
	add	 w1, w1, w0	// id: 7682, l: 7683	
	ldr	 w2, [sp, #84]	// id: 7683, l: 7684	
	mov	 w0, #0x2710                	// #10000	// id: 7684, l: 7685	
	mul	 w0, w2, w0	// id: 7685, l: 7686	
	add	 w1, w1, w0	// id: 7686, l: 7687	
	mov	 w0, w1	// id: 7687, l: 7688	
	lsl	 w0, w0, #2	// id: 7688, l: 7689	
	add	 w0, w0, w1	// id: 7689, l: 7690	
	lsl	 w0, w0, #2	// id: 7690, l: 7691	
	add	 w0, w0, #0xd	// id: 7691, l: 7692	
	sxtw	 x0, w0	// id: 7692, l: 7693	
	lsl	 x0, x0, #3	// id: 7693, l: 7694	
	ldr	 x1, [sp, #40]	// id: 7694, l: 7695	
	add	 x0, x1, x0	// id: 7695, l: 7696	
	ldr	 d0, [x0]	// id: 7696, l: 7697	
	fadd	 d1, d1, d0	// id: 7697, l: 7698	
	ldr	 w1, [sp, #88]	// id: 7698, l: 7699	
	mov	 w0, #0x64                  	// #100	// id: 7699, l: 7700	
	mul	 w1, w1, w0	// id: 7700, l: 7701	
	ldr	 w0, [sp, #92]	// id: 7701, l: 7702	
	add	 w1, w1, w0	// id: 7702, l: 7703	
	ldr	 w2, [sp, #84]	// id: 7703, l: 7704	
	mov	 w0, #0x2710                	// #10000	// id: 7704, l: 7705	
	mul	 w0, w2, w0	// id: 7705, l: 7706	
	add	 w1, w1, w0	// id: 7706, l: 7707	
	mov	 w0, w1	// id: 7707, l: 7708	
	lsl	 w0, w0, #2	// id: 7708, l: 7709	
	add	 w0, w0, w1	// id: 7709, l: 7710	
	lsl	 w0, w0, #2	// id: 7710, l: 7711	
	add	 w0, w0, #0xe	// id: 7711, l: 7712	
	sxtw	 x0, w0	// id: 7712, l: 7713	
	lsl	 x0, x0, #3	// id: 7713, l: 7714	
	ldr	 x1, [sp, #40]	// id: 7714, l: 7715	
	add	 x0, x1, x0	// id: 7715, l: 7716	
	ldr	 d0, [x0]	// id: 7716, l: 7717	
	fadd	 d1, d1, d0	// id: 7717, l: 7718	
	ldr	 w1, [sp, #88]	// id: 7718, l: 7719	
	mov	 w0, #0x64                  	// #100	// id: 7719, l: 7720	
	mul	 w1, w1, w0	// id: 7720, l: 7721	
	ldr	 w0, [sp, #92]	// id: 7721, l: 7722	
	add	 w1, w1, w0	// id: 7722, l: 7723	
	ldr	 w2, [sp, #84]	// id: 7723, l: 7724	
	mov	 w0, #0x2710                	// #10000	// id: 7724, l: 7725	
	mul	 w0, w2, w0	// id: 7725, l: 7726	
	add	 w1, w1, w0	// id: 7726, l: 7727	
	mov	 w0, w1	// id: 7727, l: 7728	
	lsl	 w0, w0, #2	// id: 7728, l: 7729	
	add	 w0, w0, w1	// id: 7729, l: 7730	
	lsl	 w0, w0, #2	// id: 7730, l: 7731	
	add	 w0, w0, #0xf	// id: 7731, l: 7732	
	sxtw	 x0, w0	// id: 7732, l: 7733	
	lsl	 x0, x0, #3	// id: 7733, l: 7734	
	ldr	 x1, [sp, #40]	// id: 7734, l: 7735	
	add	 x0, x1, x0	// id: 7735, l: 7736	
	ldr	 d0, [x0]	// id: 7736, l: 7737	
	fadd	 d1, d1, d0	// id: 7737, l: 7738	
	ldr	 w1, [sp, #88]	// id: 7738, l: 7739	
	mov	 w0, #0x64                  	// #100	// id: 7739, l: 7740	
	mul	 w1, w1, w0	// id: 7740, l: 7741	
	ldr	 w0, [sp, #92]	// id: 7741, l: 7742	
	add	 w1, w1, w0	// id: 7742, l: 7743	
	ldr	 w2, [sp, #84]	// id: 7743, l: 7744	
	mov	 w0, #0x2710                	// #10000	// id: 7744, l: 7745	
	mul	 w0, w2, w0	// id: 7745, l: 7746	
	add	 w1, w1, w0	// id: 7746, l: 7747	
	mov	 w0, w1	// id: 7747, l: 7748	
	lsl	 w0, w0, #2	// id: 7748, l: 7749	
	add	 w0, w0, w1	// id: 7749, l: 7750	
	lsl	 w0, w0, #2	// id: 7750, l: 7751	
	add	 w0, w0, #0x10	// id: 7751, l: 7752	
	sxtw	 x0, w0	// id: 7752, l: 7753	
	lsl	 x0, x0, #3	// id: 7753, l: 7754	
	ldr	 x1, [sp, #40]	// id: 7754, l: 7755	
	add	 x0, x1, x0	// id: 7755, l: 7756	
	ldr	 d0, [x0]	// id: 7756, l: 7757	
	fadd	 d1, d1, d0	// id: 7757, l: 7758	
	ldr	 w1, [sp, #88]	// id: 7758, l: 7759	
	mov	 w0, #0x64                  	// #100	// id: 7759, l: 7760	
	mul	 w1, w1, w0	// id: 7760, l: 7761	
	ldr	 w0, [sp, #92]	// id: 7761, l: 7762	
	add	 w1, w1, w0	// id: 7762, l: 7763	
	ldr	 w2, [sp, #84]	// id: 7763, l: 7764	
	mov	 w0, #0x2710                	// #10000	// id: 7764, l: 7765	
	mul	 w0, w2, w0	// id: 7765, l: 7766	
	add	 w1, w1, w0	// id: 7766, l: 7767	
	mov	 w0, w1	// id: 7767, l: 7768	
	lsl	 w0, w0, #2	// id: 7768, l: 7769	
	add	 w0, w0, w1	// id: 7769, l: 7770	
	lsl	 w0, w0, #2	// id: 7770, l: 7771	
	add	 w0, w0, #0x11	// id: 7771, l: 7772	
	sxtw	 x0, w0	// id: 7772, l: 7773	
	lsl	 x0, x0, #3	// id: 7773, l: 7774	
	ldr	 x1, [sp, #40]	// id: 7774, l: 7775	
	add	 x0, x1, x0	// id: 7775, l: 7776	
	ldr	 d0, [x0]	// id: 7776, l: 7777	
	fadd	 d1, d1, d0	// id: 7777, l: 7778	
	ldr	 w1, [sp, #88]	// id: 7778, l: 7779	
	mov	 w0, #0x64                  	// #100	// id: 7779, l: 7780	
	mul	 w1, w1, w0	// id: 7780, l: 7781	
	ldr	 w0, [sp, #92]	// id: 7781, l: 7782	
	add	 w1, w1, w0	// id: 7782, l: 7783	
	ldr	 w2, [sp, #84]	// id: 7783, l: 7784	
	mov	 w0, #0x2710                	// #10000	// id: 7784, l: 7785	
	mul	 w0, w2, w0	// id: 7785, l: 7786	
	add	 w1, w1, w0	// id: 7786, l: 7787	
	mov	 w0, w1	// id: 7787, l: 7788	
	lsl	 w0, w0, #2	// id: 7788, l: 7789	
	add	 w0, w0, w1	// id: 7789, l: 7790	
	lsl	 w0, w0, #2	// id: 7790, l: 7791	
	add	 w0, w0, #0x12	// id: 7791, l: 7792	
	sxtw	 x0, w0	// id: 7792, l: 7793	
	lsl	 x0, x0, #3	// id: 7793, l: 7794	
	ldr	 x1, [sp, #40]	// id: 7794, l: 7795	
	add	 x0, x1, x0	// id: 7795, l: 7796	
	ldr	 d0, [x0]	// id: 7796, l: 7797	
	fadd	 d0, d1, d0	// id: 7797, l: 7798	
	fcvt	 s0, d0	// id: 7798, l: 7799	
	str	 s0, [sp, #68]	// id: 7799, l: 7800	
	ldr	 w1, [sp, #88]	// id: 7800, l: 7801	
	mov	 w0, #0x64                  	// #100	// id: 7801, l: 7802	
	mul	 w1, w1, w0	// id: 7802, l: 7803	
	ldr	 w0, [sp, #92]	// id: 7803, l: 7804	
	add	 w1, w1, w0	// id: 7804, l: 7805	
	ldr	 w2, [sp, #84]	// id: 7805, l: 7806	
	mov	 w0, #0x2710                	// #10000	// id: 7806, l: 7807	
	mul	 w0, w2, w0	// id: 7807, l: 7808	
	add	 w1, w1, w0	// id: 7808, l: 7809	
	mov	 w0, w1	// id: 7809, l: 7810	
	lsl	 w0, w0, #2	// id: 7810, l: 7811	
	add	 w0, w0, w1	// id: 7811, l: 7812	
	lsl	 w0, w0, #2	// id: 7812, l: 7813	
	add	 w0, w0, #0x3	// id: 7813, l: 7814	
	sxtw	 x0, w0	// id: 7814, l: 7815	
	lsl	 x0, x0, #3	// id: 7815, l: 7816	
	ldr	 x1, [sp, #40]	// id: 7816, l: 7817	
	add	 x0, x1, x0	// id: 7817, l: 7818	
	ldr	 d1, [x0]	// id: 7818, l: 7819	
	ldr	 w1, [sp, #88]	// id: 7819, l: 7820	
	mov	 w0, #0x64                  	// #100	// id: 7820, l: 7821	
	mul	 w1, w1, w0	// id: 7821, l: 7822	
	ldr	 w0, [sp, #92]	// id: 7822, l: 7823	
	add	 w1, w1, w0	// id: 7823, l: 7824	
	ldr	 w2, [sp, #84]	// id: 7824, l: 7825	
	mov	 w0, #0x2710                	// #10000	// id: 7825, l: 7826	
	mul	 w0, w2, w0	// id: 7826, l: 7827	
	add	 w1, w1, w0	// id: 7827, l: 7828	
	mov	 w0, w1	// id: 7828, l: 7829	
	lsl	 w0, w0, #2	// id: 7829, l: 7830	
	add	 w0, w0, w1	// id: 7830, l: 7831	
	lsl	 w0, w0, #2	// id: 7831, l: 7832	
	add	 w0, w0, #0x4	// id: 7832, l: 7833	
	sxtw	 x0, w0	// id: 7833, l: 7834	
	lsl	 x0, x0, #3	// id: 7834, l: 7835	
	ldr	 x1, [sp, #40]	// id: 7835, l: 7836	
	add	 x0, x1, x0	// id: 7836, l: 7837	
	ldr	 d0, [x0]	// id: 7837, l: 7838	
	fsub	 d1, d1, d0	// id: 7838, l: 7839	
	ldr	 w1, [sp, #88]	// id: 7839, l: 7840	
	mov	 w0, #0x64                  	// #100	// id: 7840, l: 7841	
	mul	 w1, w1, w0	// id: 7841, l: 7842	
	ldr	 w0, [sp, #92]	// id: 7842, l: 7843	
	add	 w1, w1, w0	// id: 7843, l: 7844	
	ldr	 w2, [sp, #84]	// id: 7844, l: 7845	
	mov	 w0, #0x2710                	// #10000	// id: 7845, l: 7846	
	mul	 w0, w2, w0	// id: 7846, l: 7847	
	add	 w1, w1, w0	// id: 7847, l: 7848	
	mov	 w0, w1	// id: 7848, l: 7849	
	lsl	 w0, w0, #2	// id: 7849, l: 7850	
	add	 w0, w0, w1	// id: 7850, l: 7851	
	lsl	 w0, w0, #2	// id: 7851, l: 7852	
	add	 w0, w0, #0x7	// id: 7852, l: 7853	
	sxtw	 x0, w0	// id: 7853, l: 7854	
	lsl	 x0, x0, #3	// id: 7854, l: 7855	
	ldr	 x1, [sp, #40]	// id: 7855, l: 7856	
	add	 x0, x1, x0	// id: 7856, l: 7857	
	ldr	 d0, [x0]	// id: 7857, l: 7858	
	fadd	 d1, d1, d0	// id: 7858, l: 7859	
	ldr	 w1, [sp, #88]	// id: 7859, l: 7860	
	mov	 w0, #0x64                  	// #100	// id: 7860, l: 7861	
	mul	 w1, w1, w0	// id: 7861, l: 7862	
	ldr	 w0, [sp, #92]	// id: 7862, l: 7863	
	add	 w1, w1, w0	// id: 7863, l: 7864	
	ldr	 w2, [sp, #84]	// id: 7864, l: 7865	
	mov	 w0, #0x2710                	// #10000	// id: 7865, l: 7866	
	mul	 w0, w2, w0	// id: 7866, l: 7867	
	add	 w1, w1, w0	// id: 7867, l: 7868	
	mov	 w0, w1	// id: 7868, l: 7869	
	lsl	 w0, w0, #2	// id: 7869, l: 7870	
	add	 w0, w0, w1	// id: 7870, l: 7871	
	lsl	 w0, w0, #2	// id: 7871, l: 7872	
	add	 w0, w0, #0x8	// id: 7872, l: 7873	
	sxtw	 x0, w0	// id: 7873, l: 7874	
	lsl	 x0, x0, #3	// id: 7874, l: 7875	
	ldr	 x1, [sp, #40]	// id: 7875, l: 7876	
	add	 x0, x1, x0	// id: 7876, l: 7877	
	ldr	 d0, [x0]	// id: 7877, l: 7878	
	fsub	 d1, d1, d0	// id: 7878, l: 7879	
	ldr	 w1, [sp, #88]	// id: 7879, l: 7880	
	mov	 w0, #0x64                  	// #100	// id: 7880, l: 7881	
	mul	 w1, w1, w0	// id: 7881, l: 7882	
	ldr	 w0, [sp, #92]	// id: 7882, l: 7883	
	add	 w1, w1, w0	// id: 7883, l: 7884	
	ldr	 w2, [sp, #84]	// id: 7884, l: 7885	
	mov	 w0, #0x2710                	// #10000	// id: 7885, l: 7886	
	mul	 w0, w2, w0	// id: 7886, l: 7887	
	add	 w1, w1, w0	// id: 7887, l: 7888	
	mov	 w0, w1	// id: 7888, l: 7889	
	lsl	 w0, w0, #2	// id: 7889, l: 7890	
	add	 w0, w0, w1	// id: 7890, l: 7891	
	lsl	 w0, w0, #2	// id: 7891, l: 7892	
	add	 w0, w0, #0x9	// id: 7892, l: 7893	
	sxtw	 x0, w0	// id: 7893, l: 7894	
	lsl	 x0, x0, #3	// id: 7894, l: 7895	
	ldr	 x1, [sp, #40]	// id: 7895, l: 7896	
	add	 x0, x1, x0	// id: 7896, l: 7897	
	ldr	 d0, [x0]	// id: 7897, l: 7898	
	fadd	 d1, d1, d0	// id: 7898, l: 7899	
	ldr	 w1, [sp, #88]	// id: 7899, l: 7900	
	mov	 w0, #0x64                  	// #100	// id: 7900, l: 7901	
	mul	 w1, w1, w0	// id: 7901, l: 7902	
	ldr	 w0, [sp, #92]	// id: 7902, l: 7903	
	add	 w1, w1, w0	// id: 7903, l: 7904	
	ldr	 w2, [sp, #84]	// id: 7904, l: 7905	
	mov	 w0, #0x2710                	// #10000	// id: 7905, l: 7906	
	mul	 w0, w2, w0	// id: 7906, l: 7907	
	add	 w1, w1, w0	// id: 7907, l: 7908	
	mov	 w0, w1	// id: 7908, l: 7909	
	lsl	 w0, w0, #2	// id: 7909, l: 7910	
	add	 w0, w0, w1	// id: 7910, l: 7911	
	lsl	 w0, w0, #2	// id: 7911, l: 7912	
	add	 w0, w0, #0xa	// id: 7912, l: 7913	
	sxtw	 x0, w0	// id: 7913, l: 7914	
	lsl	 x0, x0, #3	// id: 7914, l: 7915	
	ldr	 x1, [sp, #40]	// id: 7915, l: 7916	
	add	 x0, x1, x0	// id: 7916, l: 7917	
	ldr	 d0, [x0]	// id: 7917, l: 7918	
	fsub	 d1, d1, d0	// id: 7918, l: 7919	
	ldr	 w1, [sp, #88]	// id: 7919, l: 7920	
	mov	 w0, #0x64                  	// #100	// id: 7920, l: 7921	
	mul	 w1, w1, w0	// id: 7921, l: 7922	
	ldr	 w0, [sp, #92]	// id: 7922, l: 7923	
	add	 w1, w1, w0	// id: 7923, l: 7924	
	ldr	 w2, [sp, #84]	// id: 7924, l: 7925	
	mov	 w0, #0x2710                	// #10000	// id: 7925, l: 7926	
	mul	 w0, w2, w0	// id: 7926, l: 7927	
	add	 w1, w1, w0	// id: 7927, l: 7928	
	mov	 w0, w1	// id: 7928, l: 7929	
	lsl	 w0, w0, #2	// id: 7929, l: 7930	
	add	 w0, w0, w1	// id: 7930, l: 7931	
	lsl	 w0, w0, #2	// id: 7931, l: 7932	
	add	 w0, w0, #0xf	// id: 7932, l: 7933	
	sxtw	 x0, w0	// id: 7933, l: 7934	
	lsl	 x0, x0, #3	// id: 7934, l: 7935	
	ldr	 x1, [sp, #40]	// id: 7935, l: 7936	
	add	 x0, x1, x0	// id: 7936, l: 7937	
	ldr	 d0, [x0]	// id: 7937, l: 7938	
	fadd	 d1, d1, d0	// id: 7938, l: 7939	
	ldr	 w1, [sp, #88]	// id: 7939, l: 7940	
	mov	 w0, #0x64                  	// #100	// id: 7940, l: 7941	
	mul	 w1, w1, w0	// id: 7941, l: 7942	
	ldr	 w0, [sp, #92]	// id: 7942, l: 7943	
	add	 w1, w1, w0	// id: 7943, l: 7944	
	ldr	 w2, [sp, #84]	// id: 7944, l: 7945	
	mov	 w0, #0x2710                	// #10000	// id: 7945, l: 7946	
	mul	 w0, w2, w0	// id: 7946, l: 7947	
	add	 w1, w1, w0	// id: 7947, l: 7948	
	mov	 w0, w1	// id: 7948, l: 7949	
	lsl	 w0, w0, #2	// id: 7949, l: 7950	
	add	 w0, w0, w1	// id: 7950, l: 7951	
	lsl	 w0, w0, #2	// id: 7951, l: 7952	
	add	 w0, w0, #0x10	// id: 7952, l: 7953	
	sxtw	 x0, w0	// id: 7953, l: 7954	
	lsl	 x0, x0, #3	// id: 7954, l: 7955	
	ldr	 x1, [sp, #40]	// id: 7955, l: 7956	
	add	 x0, x1, x0	// id: 7956, l: 7957	
	ldr	 d0, [x0]	// id: 7957, l: 7958	
	fadd	 d1, d1, d0	// id: 7958, l: 7959	
	ldr	 w1, [sp, #88]	// id: 7959, l: 7960	
	mov	 w0, #0x64                  	// #100	// id: 7960, l: 7961	
	mul	 w1, w1, w0	// id: 7961, l: 7962	
	ldr	 w0, [sp, #92]	// id: 7962, l: 7963	
	add	 w1, w1, w0	// id: 7963, l: 7964	
	ldr	 w2, [sp, #84]	// id: 7964, l: 7965	
	mov	 w0, #0x2710                	// #10000	// id: 7965, l: 7966	
	mul	 w0, w2, w0	// id: 7966, l: 7967	
	add	 w1, w1, w0	// id: 7967, l: 7968	
	mov	 w0, w1	// id: 7968, l: 7969	
	lsl	 w0, w0, #2	// id: 7969, l: 7970	
	add	 w0, w0, w1	// id: 7970, l: 7971	
	lsl	 w0, w0, #2	// id: 7971, l: 7972	
	add	 w0, w0, #0x11	// id: 7972, l: 7973	
	sxtw	 x0, w0	// id: 7973, l: 7974	
	lsl	 x0, x0, #3	// id: 7974, l: 7975	
	ldr	 x1, [sp, #40]	// id: 7975, l: 7976	
	add	 x0, x1, x0	// id: 7976, l: 7977	
	ldr	 d0, [x0]	// id: 7977, l: 7978	
	fsub	 d1, d1, d0	// id: 7978, l: 7979	
	ldr	 w1, [sp, #88]	// id: 7979, l: 7980	
	mov	 w0, #0x64                  	// #100	// id: 7980, l: 7981	
	mul	 w1, w1, w0	// id: 7981, l: 7982	
	ldr	 w0, [sp, #92]	// id: 7982, l: 7983	
	add	 w1, w1, w0	// id: 7983, l: 7984	
	ldr	 w2, [sp, #84]	// id: 7984, l: 7985	
	mov	 w0, #0x2710                	// #10000	// id: 7985, l: 7986	
	mul	 w0, w2, w0	// id: 7986, l: 7987	
	add	 w1, w1, w0	// id: 7987, l: 7988	
	mov	 w0, w1	// id: 7988, l: 7989	
	lsl	 w0, w0, #2	// id: 7989, l: 7990	
	add	 w0, w0, w1	// id: 7990, l: 7991	
	lsl	 w0, w0, #2	// id: 7991, l: 7992	
	add	 w0, w0, #0x12	// id: 7992, l: 7993	
	sxtw	 x0, w0	// id: 7993, l: 7994	
	lsl	 x0, x0, #3	// id: 7994, l: 7995	
	ldr	 x1, [sp, #40]	// id: 7995, l: 7996	
	add	 x0, x1, x0	// id: 7996, l: 7997	
	ldr	 d0, [x0]	// id: 7997, l: 7998	
	fsub	 d0, d1, d0	// id: 7998, l: 7999	
	fcvt	 s0, d0	// id: 7999, l: 8000	
	str	 s0, [sp, #64]	// id: 8000, l: 8001	
	ldr	 w1, [sp, #88]	// id: 8001, l: 8002	
	mov	 w0, #0x64                  	// #100	// id: 8002, l: 8003	
	mul	 w1, w1, w0	// id: 8003, l: 8004	
	ldr	 w0, [sp, #92]	// id: 8004, l: 8005	
	add	 w1, w1, w0	// id: 8005, l: 8006	
	ldr	 w2, [sp, #84]	// id: 8006, l: 8007	
	mov	 w0, #0x2710                	// #10000	// id: 8007, l: 8008	
	mul	 w0, w2, w0	// id: 8008, l: 8009	
	add	 w1, w1, w0	// id: 8009, l: 8010	
	mov	 w0, w1	// id: 8010, l: 8011	
	lsl	 w0, w0, #2	// id: 8011, l: 8012	
	add	 w0, w0, w1	// id: 8012, l: 8013	
	lsl	 w0, w0, #2	// id: 8013, l: 8014	
	add	 w0, w0, #0x1	// id: 8014, l: 8015	
	sxtw	 x0, w0	// id: 8015, l: 8016	
	lsl	 x0, x0, #3	// id: 8016, l: 8017	
	ldr	 x1, [sp, #40]	// id: 8017, l: 8018	
	add	 x0, x1, x0	// id: 8018, l: 8019	
	ldr	 d1, [x0]	// id: 8019, l: 8020	
	ldr	 w1, [sp, #88]	// id: 8020, l: 8021	
	mov	 w0, #0x64                  	// #100	// id: 8021, l: 8022	
	mul	 w1, w1, w0	// id: 8022, l: 8023	
	ldr	 w0, [sp, #92]	// id: 8023, l: 8024	
	add	 w1, w1, w0	// id: 8024, l: 8025	
	ldr	 w2, [sp, #84]	// id: 8025, l: 8026	
	mov	 w0, #0x2710                	// #10000	// id: 8026, l: 8027	
	mul	 w0, w2, w0	// id: 8027, l: 8028	
	add	 w1, w1, w0	// id: 8028, l: 8029	
	mov	 w0, w1	// id: 8029, l: 8030	
	lsl	 w0, w0, #2	// id: 8030, l: 8031	
	add	 w0, w0, w1	// id: 8031, l: 8032	
	lsl	 w0, w0, #2	// id: 8032, l: 8033	
	add	 w0, w0, #0x2	// id: 8033, l: 8034	
	sxtw	 x0, w0	// id: 8034, l: 8035	
	lsl	 x0, x0, #3	// id: 8035, l: 8036	
	ldr	 x1, [sp, #40]	// id: 8036, l: 8037	
	add	 x0, x1, x0	// id: 8037, l: 8038	
	ldr	 d0, [x0]	// id: 8038, l: 8039	
	fsub	 d1, d1, d0	// id: 8039, l: 8040	
	ldr	 w1, [sp, #88]	// id: 8040, l: 8041	
	mov	 w0, #0x64                  	// #100	// id: 8041, l: 8042	
	mul	 w1, w1, w0	// id: 8042, l: 8043	
	ldr	 w0, [sp, #92]	// id: 8043, l: 8044	
	add	 w1, w1, w0	// id: 8044, l: 8045	
	ldr	 w2, [sp, #84]	// id: 8045, l: 8046	
	mov	 w0, #0x2710                	// #10000	// id: 8046, l: 8047	
	mul	 w0, w2, w0	// id: 8047, l: 8048	
	add	 w1, w1, w0	// id: 8048, l: 8049	
	mov	 w0, w1	// id: 8049, l: 8050	
	lsl	 w0, w0, #2	// id: 8050, l: 8051	
	add	 w0, w0, w1	// id: 8051, l: 8052	
	lsl	 w0, w0, #2	// id: 8052, l: 8053	
	add	 w0, w0, #0x7	// id: 8053, l: 8054	
	sxtw	 x0, w0	// id: 8054, l: 8055	
	lsl	 x0, x0, #3	// id: 8055, l: 8056	
	ldr	 x1, [sp, #40]	// id: 8056, l: 8057	
	add	 x0, x1, x0	// id: 8057, l: 8058	
	ldr	 d0, [x0]	// id: 8058, l: 8059	
	fadd	 d1, d1, d0	// id: 8059, l: 8060	
	ldr	 w1, [sp, #88]	// id: 8060, l: 8061	
	mov	 w0, #0x64                  	// #100	// id: 8061, l: 8062	
	mul	 w1, w1, w0	// id: 8062, l: 8063	
	ldr	 w0, [sp, #92]	// id: 8063, l: 8064	
	add	 w1, w1, w0	// id: 8064, l: 8065	
	ldr	 w2, [sp, #84]	// id: 8065, l: 8066	
	mov	 w0, #0x2710                	// #10000	// id: 8066, l: 8067	
	mul	 w0, w2, w0	// id: 8067, l: 8068	
	add	 w1, w1, w0	// id: 8068, l: 8069	
	mov	 w0, w1	// id: 8069, l: 8070	
	lsl	 w0, w0, #2	// id: 8070, l: 8071	
	add	 w0, w0, w1	// id: 8071, l: 8072	
	lsl	 w0, w0, #2	// id: 8072, l: 8073	
	add	 w0, w0, #0x8	// id: 8073, l: 8074	
	sxtw	 x0, w0	// id: 8074, l: 8075	
	lsl	 x0, x0, #3	// id: 8075, l: 8076	
	ldr	 x1, [sp, #40]	// id: 8076, l: 8077	
	add	 x0, x1, x0	// id: 8077, l: 8078	
	ldr	 d0, [x0]	// id: 8078, l: 8079	
	fadd	 d1, d1, d0	// id: 8079, l: 8080	
	ldr	 w1, [sp, #88]	// id: 8080, l: 8081	
	mov	 w0, #0x64                  	// #100	// id: 8081, l: 8082	
	mul	 w1, w1, w0	// id: 8082, l: 8083	
	ldr	 w0, [sp, #92]	// id: 8083, l: 8084	
	add	 w1, w1, w0	// id: 8084, l: 8085	
	ldr	 w2, [sp, #84]	// id: 8085, l: 8086	
	mov	 w0, #0x2710                	// #10000	// id: 8086, l: 8087	
	mul	 w0, w2, w0	// id: 8087, l: 8088	
	add	 w1, w1, w0	// id: 8088, l: 8089	
	mov	 w0, w1	// id: 8089, l: 8090	
	lsl	 w0, w0, #2	// id: 8090, l: 8091	
	add	 w0, w0, w1	// id: 8091, l: 8092	
	lsl	 w0, w0, #2	// id: 8092, l: 8093	
	add	 w0, w0, #0x9	// id: 8093, l: 8094	
	sxtw	 x0, w0	// id: 8094, l: 8095	
	lsl	 x0, x0, #3	// id: 8095, l: 8096	
	ldr	 x1, [sp, #40]	// id: 8096, l: 8097	
	add	 x0, x1, x0	// id: 8097, l: 8098	
	ldr	 d0, [x0]	// id: 8098, l: 8099	
	fsub	 d1, d1, d0	// id: 8099, l: 8100	
	ldr	 w1, [sp, #88]	// id: 8100, l: 8101	
	mov	 w0, #0x64                  	// #100	// id: 8101, l: 8102	
	mul	 w1, w1, w0	// id: 8102, l: 8103	
	ldr	 w0, [sp, #92]	// id: 8103, l: 8104	
	add	 w1, w1, w0	// id: 8104, l: 8105	
	ldr	 w2, [sp, #84]	// id: 8105, l: 8106	
	mov	 w0, #0x2710                	// #10000	// id: 8106, l: 8107	
	mul	 w0, w2, w0	// id: 8107, l: 8108	
	add	 w1, w1, w0	// id: 8108, l: 8109	
	mov	 w0, w1	// id: 8109, l: 8110	
	lsl	 w0, w0, #2	// id: 8110, l: 8111	
	add	 w0, w0, w1	// id: 8111, l: 8112	
	lsl	 w0, w0, #2	// id: 8112, l: 8113	
	add	 w0, w0, #0xa	// id: 8113, l: 8114	
	sxtw	 x0, w0	// id: 8114, l: 8115	
	lsl	 x0, x0, #3	// id: 8115, l: 8116	
	ldr	 x1, [sp, #40]	// id: 8116, l: 8117	
	add	 x0, x1, x0	// id: 8117, l: 8118	
	ldr	 d0, [x0]	// id: 8118, l: 8119	
	fsub	 d1, d1, d0	// id: 8119, l: 8120	
	ldr	 w1, [sp, #88]	// id: 8120, l: 8121	
	mov	 w0, #0x64                  	// #100	// id: 8121, l: 8122	
	mul	 w1, w1, w0	// id: 8122, l: 8123	
	ldr	 w0, [sp, #92]	// id: 8123, l: 8124	
	add	 w1, w1, w0	// id: 8124, l: 8125	
	ldr	 w2, [sp, #84]	// id: 8125, l: 8126	
	mov	 w0, #0x2710                	// #10000	// id: 8126, l: 8127	
	mul	 w0, w2, w0	// id: 8127, l: 8128	
	add	 w1, w1, w0	// id: 8128, l: 8129	
	mov	 w0, w1	// id: 8129, l: 8130	
	lsl	 w0, w0, #2	// id: 8130, l: 8131	
	add	 w0, w0, w1	// id: 8131, l: 8132	
	lsl	 w0, w0, #2	// id: 8132, l: 8133	
	add	 w0, w0, #0xb	// id: 8133, l: 8134	
	sxtw	 x0, w0	// id: 8134, l: 8135	
	lsl	 x0, x0, #3	// id: 8135, l: 8136	
	ldr	 x1, [sp, #40]	// id: 8136, l: 8137	
	add	 x0, x1, x0	// id: 8137, l: 8138	
	ldr	 d0, [x0]	// id: 8138, l: 8139	
	fadd	 d1, d1, d0	// id: 8139, l: 8140	
	ldr	 w1, [sp, #88]	// id: 8140, l: 8141	
	mov	 w0, #0x64                  	// #100	// id: 8141, l: 8142	
	mul	 w1, w1, w0	// id: 8142, l: 8143	
	ldr	 w0, [sp, #92]	// id: 8143, l: 8144	
	add	 w1, w1, w0	// id: 8144, l: 8145	
	ldr	 w2, [sp, #84]	// id: 8145, l: 8146	
	mov	 w0, #0x2710                	// #10000	// id: 8146, l: 8147	
	mul	 w0, w2, w0	// id: 8147, l: 8148	
	add	 w1, w1, w0	// id: 8148, l: 8149	
	mov	 w0, w1	// id: 8149, l: 8150	
	lsl	 w0, w0, #2	// id: 8150, l: 8151	
	add	 w0, w0, w1	// id: 8151, l: 8152	
	lsl	 w0, w0, #2	// id: 8152, l: 8153	
	add	 w0, w0, #0xc	// id: 8153, l: 8154	
	sxtw	 x0, w0	// id: 8154, l: 8155	
	lsl	 x0, x0, #3	// id: 8155, l: 8156	
	ldr	 x1, [sp, #40]	// id: 8156, l: 8157	
	add	 x0, x1, x0	// id: 8157, l: 8158	
	ldr	 d0, [x0]	// id: 8158, l: 8159	
	fadd	 d1, d1, d0	// id: 8159, l: 8160	
	ldr	 w1, [sp, #88]	// id: 8160, l: 8161	
	mov	 w0, #0x64                  	// #100	// id: 8161, l: 8162	
	mul	 w1, w1, w0	// id: 8162, l: 8163	
	ldr	 w0, [sp, #92]	// id: 8163, l: 8164	
	add	 w1, w1, w0	// id: 8164, l: 8165	
	ldr	 w2, [sp, #84]	// id: 8165, l: 8166	
	mov	 w0, #0x2710                	// #10000	// id: 8166, l: 8167	
	mul	 w0, w2, w0	// id: 8167, l: 8168	
	add	 w1, w1, w0	// id: 8168, l: 8169	
	mov	 w0, w1	// id: 8169, l: 8170	
	lsl	 w0, w0, #2	// id: 8170, l: 8171	
	add	 w0, w0, w1	// id: 8171, l: 8172	
	lsl	 w0, w0, #2	// id: 8172, l: 8173	
	add	 w0, w0, #0xd	// id: 8173, l: 8174	
	sxtw	 x0, w0	// id: 8174, l: 8175	
	lsl	 x0, x0, #3	// id: 8175, l: 8176	
	ldr	 x1, [sp, #40]	// id: 8176, l: 8177	
	add	 x0, x1, x0	// id: 8177, l: 8178	
	ldr	 d0, [x0]	// id: 8178, l: 8179	
	fsub	 d1, d1, d0	// id: 8179, l: 8180	
	ldr	 w1, [sp, #88]	// id: 8180, l: 8181	
	mov	 w0, #0x64                  	// #100	// id: 8181, l: 8182	
	mul	 w1, w1, w0	// id: 8182, l: 8183	
	ldr	 w0, [sp, #92]	// id: 8183, l: 8184	
	add	 w1, w1, w0	// id: 8184, l: 8185	
	ldr	 w2, [sp, #84]	// id: 8185, l: 8186	
	mov	 w0, #0x2710                	// #10000	// id: 8186, l: 8187	
	mul	 w0, w2, w0	// id: 8187, l: 8188	
	add	 w1, w1, w0	// id: 8188, l: 8189	
	mov	 w0, w1	// id: 8189, l: 8190	
	lsl	 w0, w0, #2	// id: 8190, l: 8191	
	add	 w0, w0, w1	// id: 8191, l: 8192	
	lsl	 w0, w0, #2	// id: 8192, l: 8193	
	add	 w0, w0, #0xe	// id: 8193, l: 8194	
	sxtw	 x0, w0	// id: 8194, l: 8195	
	lsl	 x0, x0, #3	// id: 8195, l: 8196	
	ldr	 x1, [sp, #40]	// id: 8196, l: 8197	
	add	 x0, x1, x0	// id: 8197, l: 8198	
	ldr	 d0, [x0]	// id: 8198, l: 8199	
	fsub	 d0, d1, d0	// id: 8199, l: 8200	
	fcvt	 s0, d0	// id: 8200, l: 8201	
	str	 s0, [sp, #60]	// id: 8201, l: 8202	
	ldr	 w1, [sp, #88]	// id: 8202, l: 8203	
	mov	 w0, #0x64                  	// #100	// id: 8203, l: 8204	
	mul	 w1, w1, w0	// id: 8204, l: 8205	
	ldr	 w0, [sp, #92]	// id: 8205, l: 8206	
	add	 w1, w1, w0	// id: 8206, l: 8207	
	ldr	 w2, [sp, #84]	// id: 8207, l: 8208	
	mov	 w0, #0x2710                	// #10000	// id: 8208, l: 8209	
	mul	 w0, w2, w0	// id: 8209, l: 8210	
	add	 w1, w1, w0	// id: 8210, l: 8211	
	mov	 w0, w1	// id: 8211, l: 8212	
	lsl	 w0, w0, #2	// id: 8212, l: 8213	
	add	 w0, w0, w1	// id: 8213, l: 8214	
	lsl	 w0, w0, #2	// id: 8214, l: 8215	
	add	 w0, w0, #0x5	// id: 8215, l: 8216	
	sxtw	 x0, w0	// id: 8216, l: 8217	
	lsl	 x0, x0, #3	// id: 8217, l: 8218	
	ldr	 x1, [sp, #40]	// id: 8218, l: 8219	
	add	 x0, x1, x0	// id: 8219, l: 8220	
	ldr	 d1, [x0]	// id: 8220, l: 8221	
	ldr	 w1, [sp, #88]	// id: 8221, l: 8222	
	mov	 w0, #0x64                  	// #100	// id: 8222, l: 8223	
	mul	 w1, w1, w0	// id: 8223, l: 8224	
	ldr	 w0, [sp, #92]	// id: 8224, l: 8225	
	add	 w1, w1, w0	// id: 8225, l: 8226	
	ldr	 w2, [sp, #84]	// id: 8226, l: 8227	
	mov	 w0, #0x2710                	// #10000	// id: 8227, l: 8228	
	mul	 w0, w2, w0	// id: 8228, l: 8229	
	add	 w1, w1, w0	// id: 8229, l: 8230	
	mov	 w0, w1	// id: 8230, l: 8231	
	lsl	 w0, w0, #2	// id: 8231, l: 8232	
	add	 w0, w0, w1	// id: 8232, l: 8233	
	lsl	 w0, w0, #2	// id: 8233, l: 8234	
	add	 w0, w0, #0x6	// id: 8234, l: 8235	
	sxtw	 x0, w0	// id: 8235, l: 8236	
	lsl	 x0, x0, #3	// id: 8236, l: 8237	
	ldr	 x1, [sp, #40]	// id: 8237, l: 8238	
	add	 x0, x1, x0	// id: 8238, l: 8239	
	ldr	 d0, [x0]	// id: 8239, l: 8240	
	fsub	 d1, d1, d0	// id: 8240, l: 8241	
	ldr	 w1, [sp, #88]	// id: 8241, l: 8242	
	mov	 w0, #0x64                  	// #100	// id: 8242, l: 8243	
	mul	 w1, w1, w0	// id: 8243, l: 8244	
	ldr	 w0, [sp, #92]	// id: 8244, l: 8245	
	add	 w1, w1, w0	// id: 8245, l: 8246	
	ldr	 w2, [sp, #84]	// id: 8246, l: 8247	
	mov	 w0, #0x2710                	// #10000	// id: 8247, l: 8248	
	mul	 w0, w2, w0	// id: 8248, l: 8249	
	add	 w1, w1, w0	// id: 8249, l: 8250	
	mov	 w0, w1	// id: 8250, l: 8251	
	lsl	 w0, w0, #2	// id: 8251, l: 8252	
	add	 w0, w0, w1	// id: 8252, l: 8253	
	lsl	 w0, w0, #2	// id: 8253, l: 8254	
	add	 w0, w0, #0xb	// id: 8254, l: 8255	
	sxtw	 x0, w0	// id: 8255, l: 8256	
	lsl	 x0, x0, #3	// id: 8256, l: 8257	
	ldr	 x1, [sp, #40]	// id: 8257, l: 8258	
	add	 x0, x1, x0	// id: 8258, l: 8259	
	ldr	 d0, [x0]	// id: 8259, l: 8260	
	fadd	 d1, d1, d0	// id: 8260, l: 8261	
	ldr	 w1, [sp, #88]	// id: 8261, l: 8262	
	mov	 w0, #0x64                  	// #100	// id: 8262, l: 8263	
	mul	 w1, w1, w0	// id: 8263, l: 8264	
	ldr	 w0, [sp, #92]	// id: 8264, l: 8265	
	add	 w1, w1, w0	// id: 8265, l: 8266	
	ldr	 w2, [sp, #84]	// id: 8266, l: 8267	
	mov	 w0, #0x2710                	// #10000	// id: 8267, l: 8268	
	mul	 w0, w2, w0	// id: 8268, l: 8269	
	add	 w1, w1, w0	// id: 8269, l: 8270	
	mov	 w0, w1	// id: 8270, l: 8271	
	lsl	 w0, w0, #2	// id: 8271, l: 8272	
	add	 w0, w0, w1	// id: 8272, l: 8273	
	lsl	 w0, w0, #2	// id: 8273, l: 8274	
	add	 w0, w0, #0xc	// id: 8274, l: 8275	
	sxtw	 x0, w0	// id: 8275, l: 8276	
	lsl	 x0, x0, #3	// id: 8276, l: 8277	
	ldr	 x1, [sp, #40]	// id: 8277, l: 8278	
	add	 x0, x1, x0	// id: 8278, l: 8279	
	ldr	 d0, [x0]	// id: 8279, l: 8280	
	fsub	 d1, d1, d0	// id: 8280, l: 8281	
	ldr	 w1, [sp, #88]	// id: 8281, l: 8282	
	mov	 w0, #0x64                  	// #100	// id: 8282, l: 8283	
	mul	 w1, w1, w0	// id: 8283, l: 8284	
	ldr	 w0, [sp, #92]	// id: 8284, l: 8285	
	add	 w1, w1, w0	// id: 8285, l: 8286	
	ldr	 w2, [sp, #84]	// id: 8286, l: 8287	
	mov	 w0, #0x2710                	// #10000	// id: 8287, l: 8288	
	mul	 w0, w2, w0	// id: 8288, l: 8289	
	add	 w1, w1, w0	// id: 8289, l: 8290	
	mov	 w0, w1	// id: 8290, l: 8291	
	lsl	 w0, w0, #2	// id: 8291, l: 8292	
	add	 w0, w0, w1	// id: 8292, l: 8293	
	lsl	 w0, w0, #2	// id: 8293, l: 8294	
	add	 w0, w0, #0xd	// id: 8294, l: 8295	
	sxtw	 x0, w0	// id: 8295, l: 8296	
	lsl	 x0, x0, #3	// id: 8296, l: 8297	
	ldr	 x1, [sp, #40]	// id: 8297, l: 8298	
	add	 x0, x1, x0	// id: 8298, l: 8299	
	ldr	 d0, [x0]	// id: 8299, l: 8300	
	fadd	 d1, d1, d0	// id: 8300, l: 8301	
	ldr	 w1, [sp, #88]	// id: 8301, l: 8302	
	mov	 w0, #0x64                  	// #100	// id: 8302, l: 8303	
	mul	 w1, w1, w0	// id: 8303, l: 8304	
	ldr	 w0, [sp, #92]	// id: 8304, l: 8305	
	add	 w1, w1, w0	// id: 8305, l: 8306	
	ldr	 w2, [sp, #84]	// id: 8306, l: 8307	
	mov	 w0, #0x2710                	// #10000	// id: 8307, l: 8308	
	mul	 w0, w2, w0	// id: 8308, l: 8309	
	add	 w1, w1, w0	// id: 8309, l: 8310	
	mov	 w0, w1	// id: 8310, l: 8311	
	lsl	 w0, w0, #2	// id: 8311, l: 8312	
	add	 w0, w0, w1	// id: 8312, l: 8313	
	lsl	 w0, w0, #2	// id: 8313, l: 8314	
	add	 w0, w0, #0xe	// id: 8314, l: 8315	
	sxtw	 x0, w0	// id: 8315, l: 8316	
	lsl	 x0, x0, #3	// id: 8316, l: 8317	
	ldr	 x1, [sp, #40]	// id: 8317, l: 8318	
	add	 x0, x1, x0	// id: 8318, l: 8319	
	ldr	 d0, [x0]	// id: 8319, l: 8320	
	fsub	 d1, d1, d0	// id: 8320, l: 8321	
	ldr	 w1, [sp, #88]	// id: 8321, l: 8322	
	mov	 w0, #0x64                  	// #100	// id: 8322, l: 8323	
	mul	 w1, w1, w0	// id: 8323, l: 8324	
	ldr	 w0, [sp, #92]	// id: 8324, l: 8325	
	add	 w1, w1, w0	// id: 8325, l: 8326	
	ldr	 w2, [sp, #84]	// id: 8326, l: 8327	
	mov	 w0, #0x2710                	// #10000	// id: 8327, l: 8328	
	mul	 w0, w2, w0	// id: 8328, l: 8329	
	add	 w1, w1, w0	// id: 8329, l: 8330	
	mov	 w0, w1	// id: 8330, l: 8331	
	lsl	 w0, w0, #2	// id: 8331, l: 8332	
	add	 w0, w0, w1	// id: 8332, l: 8333	
	lsl	 w0, w0, #2	// id: 8333, l: 8334	
	add	 w0, w0, #0xf	// id: 8334, l: 8335	
	sxtw	 x0, w0	// id: 8335, l: 8336	
	lsl	 x0, x0, #3	// id: 8336, l: 8337	
	ldr	 x1, [sp, #40]	// id: 8337, l: 8338	
	add	 x0, x1, x0	// id: 8338, l: 8339	
	ldr	 d0, [x0]	// id: 8339, l: 8340	
	fadd	 d1, d1, d0	// id: 8340, l: 8341	
	ldr	 w1, [sp, #88]	// id: 8341, l: 8342	
	mov	 w0, #0x64                  	// #100	// id: 8342, l: 8343	
	mul	 w1, w1, w0	// id: 8343, l: 8344	
	ldr	 w0, [sp, #92]	// id: 8344, l: 8345	
	add	 w1, w1, w0	// id: 8345, l: 8346	
	ldr	 w2, [sp, #84]	// id: 8346, l: 8347	
	mov	 w0, #0x2710                	// #10000	// id: 8347, l: 8348	
	mul	 w0, w2, w0	// id: 8348, l: 8349	
	add	 w1, w1, w0	// id: 8349, l: 8350	
	mov	 w0, w1	// id: 8350, l: 8351	
	lsl	 w0, w0, #2	// id: 8351, l: 8352	
	add	 w0, w0, w1	// id: 8352, l: 8353	
	lsl	 w0, w0, #2	// id: 8353, l: 8354	
	add	 w0, w0, #0x10	// id: 8354, l: 8355	
	sxtw	 x0, w0	// id: 8355, l: 8356	
	lsl	 x0, x0, #3	// id: 8356, l: 8357	
	ldr	 x1, [sp, #40]	// id: 8357, l: 8358	
	add	 x0, x1, x0	// id: 8358, l: 8359	
	ldr	 d0, [x0]	// id: 8359, l: 8360	
	fsub	 d1, d1, d0	// id: 8360, l: 8361	
	ldr	 w1, [sp, #88]	// id: 8361, l: 8362	
	mov	 w0, #0x64                  	// #100	// id: 8362, l: 8363	
	mul	 w1, w1, w0	// id: 8363, l: 8364	
	ldr	 w0, [sp, #92]	// id: 8364, l: 8365	
	add	 w1, w1, w0	// id: 8365, l: 8366	
	ldr	 w2, [sp, #84]	// id: 8366, l: 8367	
	mov	 w0, #0x2710                	// #10000	// id: 8367, l: 8368	
	mul	 w0, w2, w0	// id: 8368, l: 8369	
	add	 w1, w1, w0	// id: 8369, l: 8370	
	mov	 w0, w1	// id: 8370, l: 8371	
	lsl	 w0, w0, #2	// id: 8371, l: 8372	
	add	 w0, w0, w1	// id: 8372, l: 8373	
	lsl	 w0, w0, #2	// id: 8373, l: 8374	
	add	 w0, w0, #0x11	// id: 8374, l: 8375	
	sxtw	 x0, w0	// id: 8375, l: 8376	
	lsl	 x0, x0, #3	// id: 8376, l: 8377	
	ldr	 x1, [sp, #40]	// id: 8377, l: 8378	
	add	 x0, x1, x0	// id: 8378, l: 8379	
	ldr	 d0, [x0]	// id: 8379, l: 8380	
	fadd	 d1, d1, d0	// id: 8380, l: 8381	
	ldr	 w1, [sp, #88]	// id: 8381, l: 8382	
	mov	 w0, #0x64                  	// #100	// id: 8382, l: 8383	
	mul	 w1, w1, w0	// id: 8383, l: 8384	
	ldr	 w0, [sp, #92]	// id: 8384, l: 8385	
	add	 w1, w1, w0	// id: 8385, l: 8386	
	ldr	 w2, [sp, #84]	// id: 8386, l: 8387	
	mov	 w0, #0x2710                	// #10000	// id: 8387, l: 8388	
	mul	 w0, w2, w0	// id: 8388, l: 8389	
	add	 w1, w1, w0	// id: 8389, l: 8390	
	mov	 w0, w1	// id: 8390, l: 8391	
	lsl	 w0, w0, #2	// id: 8391, l: 8392	
	add	 w0, w0, w1	// id: 8392, l: 8393	
	lsl	 w0, w0, #2	// id: 8393, l: 8394	
	add	 w0, w0, #0x12	// id: 8394, l: 8395	
	sxtw	 x0, w0	// id: 8395, l: 8396	
	lsl	 x0, x0, #3	// id: 8396, l: 8397	
	ldr	 x1, [sp, #40]	// id: 8397, l: 8398	
	add	 x0, x1, x0	// id: 8398, l: 8399	
	ldr	 d0, [x0]	// id: 8399, l: 8400	
	fsub	 d0, d1, d0	// id: 8400, l: 8401	
	fcvt	 s0, d0	// id: 8401, l: 8402	
	str	 s0, [sp, #56]	// id: 8402, l: 8403	
	ldr	 s1, [sp, #64]	// id: 8403, l: 8404	
	ldr	 s0, [sp, #68]	// id: 8404, l: 8405	
	fdiv	 s0, s1, s0	// id: 8405, l: 8406	
	str	 s0, [sp, #64]	// id: 8406, l: 8407	
	ldr	 s1, [sp, #60]	// id: 8407, l: 8408	
	ldr	 s0, [sp, #68]	// id: 8408, l: 8409	
	fdiv	 s0, s1, s0	// id: 8409, l: 8410	
	str	 s0, [sp, #60]	// id: 8410, l: 8411	
	ldr	 s1, [sp, #56]	// id: 8411, l: 8412	
	ldr	 s0, [sp, #68]	// id: 8412, l: 8413	
	fdiv	 s0, s1, s0	// id: 8413, l: 8414	
	str	 s0, [sp, #56]	// id: 8414, l: 8415	
	ldr	 w0, [sp, #28]	// id: 8415, l: 8416	
	cmp	 w0, #0x0	// id: 8416, l: 8417	
	beq	 .L90	// id: 8417, l: 8418	
	add	 x0, sp, #0x40	// id: 8418, l: 8419	
	mov	 x1, x0	// id: 8419, l: 8420	
	ldr	 x0, [sp, #72]	// id: 8420, l: 8421	
	bl	 storeValue	// id: 8421, l: 8422	
	add	 x0, sp, #0x3c	// id: 8422, l: 8423	
	mov	 x1, x0	// id: 8423, l: 8424	
	ldr	 x0, [sp, #72]	// id: 8424, l: 8425	
	bl	 storeValue	// id: 8425, l: 8426	
	add	 x0, sp, #0x38	// id: 8426, l: 8427	
	mov	 x1, x0	// id: 8427, l: 8428	
	ldr	 x0, [sp, #72]	// id: 8428, l: 8429	
	bl	 storeValue	// id: 8429, l: 8430	
	b	 .L91	// id: 8430, l: 8431	
.L90:	// id: 8431, l: 8432	
	ldr	 s0, [sp, #64]	// id: 8432, l: 8433	
	fcvt	 d3, s0	// id: 8433, l: 8434	
	ldr	 s0, [sp, #60]	// id: 8434, l: 8435	
	fcvt	 d1, s0	// id: 8435, l: 8436	
	ldr	 s0, [sp, #56]	// id: 8436, l: 8437	
	fcvt	 d0, s0	// id: 8437, l: 8438	
	fmov	 d2, d0	// id: 8438, l: 8439	
	fmov	 d0, d3	// id: 8439, l: 8440	
	adrp	 x0, .LC14	// id: 8440, l: 8441	
	add	 x1, x0, :lo12:.LC14	// id: 8441, l: 8442	
	ldr	 x0, [sp, #72]	// id: 8442, l: 8443	
	bl	 fprintf	// id: 8443, l: 8444	
.L91:	// id: 8444, l: 8445	
	ldr	 w0, [sp, #92]	// id: 8445, l: 8446	
	add	 w0, w0, #0x1	// id: 8446, l: 8447	
	str	 w0, [sp, #92]	// id: 8447, l: 8448	
.L89:	// id: 8448, l: 8449	
	ldr	 w0, [sp, #92]	// id: 8449, l: 8450	
	cmp	 w0, #0x63	// id: 8450, l: 8451	
	ble	 .L92	// id: 8451, l: 8452	
	ldr	 w0, [sp, #88]	// id: 8452, l: 8453	
	add	 w0, w0, #0x1	// id: 8453, l: 8454	
	str	 w0, [sp, #88]	// id: 8454, l: 8455	
.L88:	// id: 8455, l: 8456	
	ldr	 w0, [sp, #88]	// id: 8456, l: 8457	
	cmp	 w0, #0x63	// id: 8457, l: 8458	
	ble	 .L93	// id: 8458, l: 8459	
	ldr	 w0, [sp, #84]	// id: 8459, l: 8460	
	add	 w0, w0, #0x1	// id: 8460, l: 8461	
	str	 w0, [sp, #84]	// id: 8461, l: 8462	
.L87:	// id: 8462, l: 8463	
	ldr	 w0, [sp, #84]	// id: 8463, l: 8464	
	cmp	 w0, #0x81	// id: 8464, l: 8465	
	ble	 .L94	// id: 8465, l: 8466	
	ldr	 x0, [sp, #72]	// id: 8466, l: 8467	
	bl	 fclose	// id: 8467, l: 8468	
	nop		// id: 8468, l: 8469	
	ldp	 x29, x30, [sp], #96	// id: 8469, l: 8470	
	.cfi_restore	30	// id: 8470, l: 8471	
	.cfi_restore	29	// id: 8471, l: 8472	
	.cfi_def_cfa_offset	0	// id: 8472, l: 8473	
	ret		// id: 8473, l: 8474	
	.cfi_endproc		// id: 8474, l: 8475	
.LFE15:	// id: 8475, l: 8476	
	.size	LBM_storeVelocityField, .-LBM_storeVelocityField	// id: 8476, l: 8477	
	.section	.rodata	// id: 8477, l: 8478	
	.p2align	3, , 0	// id: 8478, l: 8479	
.LC15:	// id: 8479, l: 8480	
	.string	"r"	// id: 8480, l: 8481	
	.p2align	3, , 0	// id: 8481, l: 8482	
.LC16:	// id: 8482, l: 8483	
	.string	"%f %f %f\n"	// id: 8483, l: 8484	
	.p2align	3, , 0	// id: 8484, l: 8485	
.LC17:	// id: 8485, l: 8486	
	.string	"##### ERROR #####"	// id: 8486, l: 8487	
	.p2align	3, , 0	// id: 8487, l: 8488	
.LC18:	// id: 8488, l: 8489	
	.string	"OK"	// id: 8489, l: 8490	
	.p2align	3, , 0	// id: 8490, l: 8491	
.LC19:	// id: 8491, l: 8492	
	.string	"LBM_compareVelocityField: maxDiff = %e  ==>  %s\n\n"	// id: 8492, l: 8493	
	.text	0	// id: 8493, l: 8494	
	.p2align	2, , 0	// id: 8494, l: 8495	
	.globl	LBM_compareVelocityField	// id: 8495, l: 8496	
	.type	LBM_compareVelocityField, %function	// id: 8496, l: 8497	
LBM_compareVelocityField:	// id: 8497, l: 8498	
.LFB16:	// id: 8498, l: 8499	
	.cfi_startproc		// id: 8499, l: 8500	
	stp	 x29, x30, [sp, #-160]!	// id: 8500, l: 8501	
	.cfi_def_cfa_offset	160	// id: 8501, l: 8502	
	.cfi_offset	29, -160	// id: 8502, l: 8503	
	.cfi_offset	30, -152	// id: 8503, l: 8504	
	mov	 x29, sp	// id: 8504, l: 8505	
	str	 d8, [sp, #16]	// id: 8505, l: 8506	
	.cfi_offset	72, -144	// id: 8506, l: 8507	
	str	 x0, [sp, #56]	// id: 8507, l: 8508	
	str	 x1, [sp, #48]	// id: 8508, l: 8509	
	str	 w2, [sp, #44]	// id: 8509, l: 8510	
	mov	 w0, #0xf2ca                	// #62154	// id: 8510, l: 8511	
	movk	 w0, #0xf149, lsl #16	// id: 8511, l: 8512	
	fmov	 s0, w0	// id: 8512, l: 8513	
	str	 s0, [sp, #144]	// id: 8513, l: 8514	
	ldr	 w0, [sp, #44]	// id: 8514, l: 8515	
	cmp	 w0, #0x0	// id: 8515, l: 8516	
	beq	 .L96	// id: 8516, l: 8517	
	adrp	 x0, .LC4	// id: 8517, l: 8518	
	add	 x0, x0, :lo12:.LC4	// id: 8518, l: 8519	
	b	 .L97	// id: 8519, l: 8520	
.L96:	// id: 8520, l: 8521	
	adrp	 x0, .LC15	// id: 8521, l: 8522	
	add	 x0, x0, :lo12:.LC15	// id: 8522, l: 8523	
.L97:	// id: 8523, l: 8524	
	mov	 x1, x0	// id: 8524, l: 8525	
	ldr	 x0, [sp, #48]	// id: 8525, l: 8526	
	bl	 fopen	// id: 8526, l: 8527	
	str	 x0, [sp, #136]	// id: 8527, l: 8528	
	str	 wzr, [sp, #148]	// id: 8528, l: 8529	
	b	 .L98	// id: 8529, l: 8530	
.L107:	// id: 8530, l: 8531	
	str	 wzr, [sp, #152]	// id: 8531, l: 8532	
	b	 .L99	// id: 8532, l: 8533	
.L106:	// id: 8533, l: 8534	
	str	 wzr, [sp, #156]	// id: 8534, l: 8535	
	b	 .L100	// id: 8535, l: 8536	
.L105:	// id: 8536, l: 8537	
	ldr	 w1, [sp, #152]	// id: 8537, l: 8538	
	mov	 w0, #0x64                  	// #100	// id: 8538, l: 8539	
	mul	 w1, w1, w0	// id: 8539, l: 8540	
	ldr	 w0, [sp, #156]	// id: 8540, l: 8541	
	add	 w1, w1, w0	// id: 8541, l: 8542	
	ldr	 w2, [sp, #148]	// id: 8542, l: 8543	
	mov	 w0, #0x2710                	// #10000	// id: 8543, l: 8544	
	mul	 w0, w2, w0	// id: 8544, l: 8545	
	add	 w1, w1, w0	// id: 8545, l: 8546	
	mov	 w0, w1	// id: 8546, l: 8547	
	lsl	 w0, w0, #2	// id: 8547, l: 8548	
	add	 w0, w0, w1	// id: 8548, l: 8549	
	lsl	 w0, w0, #2	// id: 8549, l: 8550	
	sxtw	 x0, w0	// id: 8550, l: 8551	
	lsl	 x0, x0, #3	// id: 8551, l: 8552	
	ldr	 x1, [sp, #56]	// id: 8552, l: 8553	
	add	 x0, x1, x0	// id: 8553, l: 8554	
	ldr	 d1, [x0]	// id: 8554, l: 8555	
	ldr	 w1, [sp, #152]	// id: 8555, l: 8556	
	mov	 w0, #0x64                  	// #100	// id: 8556, l: 8557	
	mul	 w1, w1, w0	// id: 8557, l: 8558	
	ldr	 w0, [sp, #156]	// id: 8558, l: 8559	
	add	 w1, w1, w0	// id: 8559, l: 8560	
	ldr	 w2, [sp, #148]	// id: 8560, l: 8561	
	mov	 w0, #0x2710                	// #10000	// id: 8561, l: 8562	
	mul	 w0, w2, w0	// id: 8562, l: 8563	
	add	 w1, w1, w0	// id: 8563, l: 8564	
	mov	 w0, w1	// id: 8564, l: 8565	
	lsl	 w0, w0, #2	// id: 8565, l: 8566	
	add	 w0, w0, w1	// id: 8566, l: 8567	
	lsl	 w0, w0, #2	// id: 8567, l: 8568	
	add	 w0, w0, #0x1	// id: 8568, l: 8569	
	sxtw	 x0, w0	// id: 8569, l: 8570	
	lsl	 x0, x0, #3	// id: 8570, l: 8571	
	ldr	 x1, [sp, #56]	// id: 8571, l: 8572	
	add	 x0, x1, x0	// id: 8572, l: 8573	
	ldr	 d0, [x0]	// id: 8573, l: 8574	
	fadd	 d1, d1, d0	// id: 8574, l: 8575	
	ldr	 w1, [sp, #152]	// id: 8575, l: 8576	
	mov	 w0, #0x64                  	// #100	// id: 8576, l: 8577	
	mul	 w1, w1, w0	// id: 8577, l: 8578	
	ldr	 w0, [sp, #156]	// id: 8578, l: 8579	
	add	 w1, w1, w0	// id: 8579, l: 8580	
	ldr	 w2, [sp, #148]	// id: 8580, l: 8581	
	mov	 w0, #0x2710                	// #10000	// id: 8581, l: 8582	
	mul	 w0, w2, w0	// id: 8582, l: 8583	
	add	 w1, w1, w0	// id: 8583, l: 8584	
	mov	 w0, w1	// id: 8584, l: 8585	
	lsl	 w0, w0, #2	// id: 8585, l: 8586	
	add	 w0, w0, w1	// id: 8586, l: 8587	
	lsl	 w0, w0, #2	// id: 8587, l: 8588	
	add	 w0, w0, #0x2	// id: 8588, l: 8589	
	sxtw	 x0, w0	// id: 8589, l: 8590	
	lsl	 x0, x0, #3	// id: 8590, l: 8591	
	ldr	 x1, [sp, #56]	// id: 8591, l: 8592	
	add	 x0, x1, x0	// id: 8592, l: 8593	
	ldr	 d0, [x0]	// id: 8593, l: 8594	
	fadd	 d1, d1, d0	// id: 8594, l: 8595	
	ldr	 w1, [sp, #152]	// id: 8595, l: 8596	
	mov	 w0, #0x64                  	// #100	// id: 8596, l: 8597	
	mul	 w1, w1, w0	// id: 8597, l: 8598	
	ldr	 w0, [sp, #156]	// id: 8598, l: 8599	
	add	 w1, w1, w0	// id: 8599, l: 8600	
	ldr	 w2, [sp, #148]	// id: 8600, l: 8601	
	mov	 w0, #0x2710                	// #10000	// id: 8601, l: 8602	
	mul	 w0, w2, w0	// id: 8602, l: 8603	
	add	 w1, w1, w0	// id: 8603, l: 8604	
	mov	 w0, w1	// id: 8604, l: 8605	
	lsl	 w0, w0, #2	// id: 8605, l: 8606	
	add	 w0, w0, w1	// id: 8606, l: 8607	
	lsl	 w0, w0, #2	// id: 8607, l: 8608	
	add	 w0, w0, #0x3	// id: 8608, l: 8609	
	sxtw	 x0, w0	// id: 8609, l: 8610	
	lsl	 x0, x0, #3	// id: 8610, l: 8611	
	ldr	 x1, [sp, #56]	// id: 8611, l: 8612	
	add	 x0, x1, x0	// id: 8612, l: 8613	
	ldr	 d0, [x0]	// id: 8613, l: 8614	
	fadd	 d1, d1, d0	// id: 8614, l: 8615	
	ldr	 w1, [sp, #152]	// id: 8615, l: 8616	
	mov	 w0, #0x64                  	// #100	// id: 8616, l: 8617	
	mul	 w1, w1, w0	// id: 8617, l: 8618	
	ldr	 w0, [sp, #156]	// id: 8618, l: 8619	
	add	 w1, w1, w0	// id: 8619, l: 8620	
	ldr	 w2, [sp, #148]	// id: 8620, l: 8621	
	mov	 w0, #0x2710                	// #10000	// id: 8621, l: 8622	
	mul	 w0, w2, w0	// id: 8622, l: 8623	
	add	 w1, w1, w0	// id: 8623, l: 8624	
	mov	 w0, w1	// id: 8624, l: 8625	
	lsl	 w0, w0, #2	// id: 8625, l: 8626	
	add	 w0, w0, w1	// id: 8626, l: 8627	
	lsl	 w0, w0, #2	// id: 8627, l: 8628	
	add	 w0, w0, #0x4	// id: 8628, l: 8629	
	sxtw	 x0, w0	// id: 8629, l: 8630	
	lsl	 x0, x0, #3	// id: 8630, l: 8631	
	ldr	 x1, [sp, #56]	// id: 8631, l: 8632	
	add	 x0, x1, x0	// id: 8632, l: 8633	
	ldr	 d0, [x0]	// id: 8633, l: 8634	
	fadd	 d1, d1, d0	// id: 8634, l: 8635	
	ldr	 w1, [sp, #152]	// id: 8635, l: 8636	
	mov	 w0, #0x64                  	// #100	// id: 8636, l: 8637	
	mul	 w1, w1, w0	// id: 8637, l: 8638	
	ldr	 w0, [sp, #156]	// id: 8638, l: 8639	
	add	 w1, w1, w0	// id: 8639, l: 8640	
	ldr	 w2, [sp, #148]	// id: 8640, l: 8641	
	mov	 w0, #0x2710                	// #10000	// id: 8641, l: 8642	
	mul	 w0, w2, w0	// id: 8642, l: 8643	
	add	 w1, w1, w0	// id: 8643, l: 8644	
	mov	 w0, w1	// id: 8644, l: 8645	
	lsl	 w0, w0, #2	// id: 8645, l: 8646	
	add	 w0, w0, w1	// id: 8646, l: 8647	
	lsl	 w0, w0, #2	// id: 8647, l: 8648	
	add	 w0, w0, #0x5	// id: 8648, l: 8649	
	sxtw	 x0, w0	// id: 8649, l: 8650	
	lsl	 x0, x0, #3	// id: 8650, l: 8651	
	ldr	 x1, [sp, #56]	// id: 8651, l: 8652	
	add	 x0, x1, x0	// id: 8652, l: 8653	
	ldr	 d0, [x0]	// id: 8653, l: 8654	
	fadd	 d1, d1, d0	// id: 8654, l: 8655	
	ldr	 w1, [sp, #152]	// id: 8655, l: 8656	
	mov	 w0, #0x64                  	// #100	// id: 8656, l: 8657	
	mul	 w1, w1, w0	// id: 8657, l: 8658	
	ldr	 w0, [sp, #156]	// id: 8658, l: 8659	
	add	 w1, w1, w0	// id: 8659, l: 8660	
	ldr	 w2, [sp, #148]	// id: 8660, l: 8661	
	mov	 w0, #0x2710                	// #10000	// id: 8661, l: 8662	
	mul	 w0, w2, w0	// id: 8662, l: 8663	
	add	 w1, w1, w0	// id: 8663, l: 8664	
	mov	 w0, w1	// id: 8664, l: 8665	
	lsl	 w0, w0, #2	// id: 8665, l: 8666	
	add	 w0, w0, w1	// id: 8666, l: 8667	
	lsl	 w0, w0, #2	// id: 8667, l: 8668	
	add	 w0, w0, #0x6	// id: 8668, l: 8669	
	sxtw	 x0, w0	// id: 8669, l: 8670	
	lsl	 x0, x0, #3	// id: 8670, l: 8671	
	ldr	 x1, [sp, #56]	// id: 8671, l: 8672	
	add	 x0, x1, x0	// id: 8672, l: 8673	
	ldr	 d0, [x0]	// id: 8673, l: 8674	
	fadd	 d1, d1, d0	// id: 8674, l: 8675	
	ldr	 w1, [sp, #152]	// id: 8675, l: 8676	
	mov	 w0, #0x64                  	// #100	// id: 8676, l: 8677	
	mul	 w1, w1, w0	// id: 8677, l: 8678	
	ldr	 w0, [sp, #156]	// id: 8678, l: 8679	
	add	 w1, w1, w0	// id: 8679, l: 8680	
	ldr	 w2, [sp, #148]	// id: 8680, l: 8681	
	mov	 w0, #0x2710                	// #10000	// id: 8681, l: 8682	
	mul	 w0, w2, w0	// id: 8682, l: 8683	
	add	 w1, w1, w0	// id: 8683, l: 8684	
	mov	 w0, w1	// id: 8684, l: 8685	
	lsl	 w0, w0, #2	// id: 8685, l: 8686	
	add	 w0, w0, w1	// id: 8686, l: 8687	
	lsl	 w0, w0, #2	// id: 8687, l: 8688	
	add	 w0, w0, #0x7	// id: 8688, l: 8689	
	sxtw	 x0, w0	// id: 8689, l: 8690	
	lsl	 x0, x0, #3	// id: 8690, l: 8691	
	ldr	 x1, [sp, #56]	// id: 8691, l: 8692	
	add	 x0, x1, x0	// id: 8692, l: 8693	
	ldr	 d0, [x0]	// id: 8693, l: 8694	
	fadd	 d1, d1, d0	// id: 8694, l: 8695	
	ldr	 w1, [sp, #152]	// id: 8695, l: 8696	
	mov	 w0, #0x64                  	// #100	// id: 8696, l: 8697	
	mul	 w1, w1, w0	// id: 8697, l: 8698	
	ldr	 w0, [sp, #156]	// id: 8698, l: 8699	
	add	 w1, w1, w0	// id: 8699, l: 8700	
	ldr	 w2, [sp, #148]	// id: 8700, l: 8701	
	mov	 w0, #0x2710                	// #10000	// id: 8701, l: 8702	
	mul	 w0, w2, w0	// id: 8702, l: 8703	
	add	 w1, w1, w0	// id: 8703, l: 8704	
	mov	 w0, w1	// id: 8704, l: 8705	
	lsl	 w0, w0, #2	// id: 8705, l: 8706	
	add	 w0, w0, w1	// id: 8706, l: 8707	
	lsl	 w0, w0, #2	// id: 8707, l: 8708	
	add	 w0, w0, #0x8	// id: 8708, l: 8709	
	sxtw	 x0, w0	// id: 8709, l: 8710	
	lsl	 x0, x0, #3	// id: 8710, l: 8711	
	ldr	 x1, [sp, #56]	// id: 8711, l: 8712	
	add	 x0, x1, x0	// id: 8712, l: 8713	
	ldr	 d0, [x0]	// id: 8713, l: 8714	
	fadd	 d1, d1, d0	// id: 8714, l: 8715	
	ldr	 w1, [sp, #152]	// id: 8715, l: 8716	
	mov	 w0, #0x64                  	// #100	// id: 8716, l: 8717	
	mul	 w1, w1, w0	// id: 8717, l: 8718	
	ldr	 w0, [sp, #156]	// id: 8718, l: 8719	
	add	 w1, w1, w0	// id: 8719, l: 8720	
	ldr	 w2, [sp, #148]	// id: 8720, l: 8721	
	mov	 w0, #0x2710                	// #10000	// id: 8721, l: 8722	
	mul	 w0, w2, w0	// id: 8722, l: 8723	
	add	 w1, w1, w0	// id: 8723, l: 8724	
	mov	 w0, w1	// id: 8724, l: 8725	
	lsl	 w0, w0, #2	// id: 8725, l: 8726	
	add	 w0, w0, w1	// id: 8726, l: 8727	
	lsl	 w0, w0, #2	// id: 8727, l: 8728	
	add	 w0, w0, #0x9	// id: 8728, l: 8729	
	sxtw	 x0, w0	// id: 8729, l: 8730	
	lsl	 x0, x0, #3	// id: 8730, l: 8731	
	ldr	 x1, [sp, #56]	// id: 8731, l: 8732	
	add	 x0, x1, x0	// id: 8732, l: 8733	
	ldr	 d0, [x0]	// id: 8733, l: 8734	
	fadd	 d1, d1, d0	// id: 8734, l: 8735	
	ldr	 w1, [sp, #152]	// id: 8735, l: 8736	
	mov	 w0, #0x64                  	// #100	// id: 8736, l: 8737	
	mul	 w1, w1, w0	// id: 8737, l: 8738	
	ldr	 w0, [sp, #156]	// id: 8738, l: 8739	
	add	 w1, w1, w0	// id: 8739, l: 8740	
	ldr	 w2, [sp, #148]	// id: 8740, l: 8741	
	mov	 w0, #0x2710                	// #10000	// id: 8741, l: 8742	
	mul	 w0, w2, w0	// id: 8742, l: 8743	
	add	 w1, w1, w0	// id: 8743, l: 8744	
	mov	 w0, w1	// id: 8744, l: 8745	
	lsl	 w0, w0, #2	// id: 8745, l: 8746	
	add	 w0, w0, w1	// id: 8746, l: 8747	
	lsl	 w0, w0, #2	// id: 8747, l: 8748	
	add	 w0, w0, #0xa	// id: 8748, l: 8749	
	sxtw	 x0, w0	// id: 8749, l: 8750	
	lsl	 x0, x0, #3	// id: 8750, l: 8751	
	ldr	 x1, [sp, #56]	// id: 8751, l: 8752	
	add	 x0, x1, x0	// id: 8752, l: 8753	
	ldr	 d0, [x0]	// id: 8753, l: 8754	
	fadd	 d1, d1, d0	// id: 8754, l: 8755	
	ldr	 w1, [sp, #152]	// id: 8755, l: 8756	
	mov	 w0, #0x64                  	// #100	// id: 8756, l: 8757	
	mul	 w1, w1, w0	// id: 8757, l: 8758	
	ldr	 w0, [sp, #156]	// id: 8758, l: 8759	
	add	 w1, w1, w0	// id: 8759, l: 8760	
	ldr	 w2, [sp, #148]	// id: 8760, l: 8761	
	mov	 w0, #0x2710                	// #10000	// id: 8761, l: 8762	
	mul	 w0, w2, w0	// id: 8762, l: 8763	
	add	 w1, w1, w0	// id: 8763, l: 8764	
	mov	 w0, w1	// id: 8764, l: 8765	
	lsl	 w0, w0, #2	// id: 8765, l: 8766	
	add	 w0, w0, w1	// id: 8766, l: 8767	
	lsl	 w0, w0, #2	// id: 8767, l: 8768	
	add	 w0, w0, #0xb	// id: 8768, l: 8769	
	sxtw	 x0, w0	// id: 8769, l: 8770	
	lsl	 x0, x0, #3	// id: 8770, l: 8771	
	ldr	 x1, [sp, #56]	// id: 8771, l: 8772	
	add	 x0, x1, x0	// id: 8772, l: 8773	
	ldr	 d0, [x0]	// id: 8773, l: 8774	
	fadd	 d1, d1, d0	// id: 8774, l: 8775	
	ldr	 w1, [sp, #152]	// id: 8775, l: 8776	
	mov	 w0, #0x64                  	// #100	// id: 8776, l: 8777	
	mul	 w1, w1, w0	// id: 8777, l: 8778	
	ldr	 w0, [sp, #156]	// id: 8778, l: 8779	
	add	 w1, w1, w0	// id: 8779, l: 8780	
	ldr	 w2, [sp, #148]	// id: 8780, l: 8781	
	mov	 w0, #0x2710                	// #10000	// id: 8781, l: 8782	
	mul	 w0, w2, w0	// id: 8782, l: 8783	
	add	 w1, w1, w0	// id: 8783, l: 8784	
	mov	 w0, w1	// id: 8784, l: 8785	
	lsl	 w0, w0, #2	// id: 8785, l: 8786	
	add	 w0, w0, w1	// id: 8786, l: 8787	
	lsl	 w0, w0, #2	// id: 8787, l: 8788	
	add	 w0, w0, #0xc	// id: 8788, l: 8789	
	sxtw	 x0, w0	// id: 8789, l: 8790	
	lsl	 x0, x0, #3	// id: 8790, l: 8791	
	ldr	 x1, [sp, #56]	// id: 8791, l: 8792	
	add	 x0, x1, x0	// id: 8792, l: 8793	
	ldr	 d0, [x0]	// id: 8793, l: 8794	
	fadd	 d1, d1, d0	// id: 8794, l: 8795	
	ldr	 w1, [sp, #152]	// id: 8795, l: 8796	
	mov	 w0, #0x64                  	// #100	// id: 8796, l: 8797	
	mul	 w1, w1, w0	// id: 8797, l: 8798	
	ldr	 w0, [sp, #156]	// id: 8798, l: 8799	
	add	 w1, w1, w0	// id: 8799, l: 8800	
	ldr	 w2, [sp, #148]	// id: 8800, l: 8801	
	mov	 w0, #0x2710                	// #10000	// id: 8801, l: 8802	
	mul	 w0, w2, w0	// id: 8802, l: 8803	
	add	 w1, w1, w0	// id: 8803, l: 8804	
	mov	 w0, w1	// id: 8804, l: 8805	
	lsl	 w0, w0, #2	// id: 8805, l: 8806	
	add	 w0, w0, w1	// id: 8806, l: 8807	
	lsl	 w0, w0, #2	// id: 8807, l: 8808	
	add	 w0, w0, #0xd	// id: 8808, l: 8809	
	sxtw	 x0, w0	// id: 8809, l: 8810	
	lsl	 x0, x0, #3	// id: 8810, l: 8811	
	ldr	 x1, [sp, #56]	// id: 8811, l: 8812	
	add	 x0, x1, x0	// id: 8812, l: 8813	
	ldr	 d0, [x0]	// id: 8813, l: 8814	
	fadd	 d1, d1, d0	// id: 8814, l: 8815	
	ldr	 w1, [sp, #152]	// id: 8815, l: 8816	
	mov	 w0, #0x64                  	// #100	// id: 8816, l: 8817	
	mul	 w1, w1, w0	// id: 8817, l: 8818	
	ldr	 w0, [sp, #156]	// id: 8818, l: 8819	
	add	 w1, w1, w0	// id: 8819, l: 8820	
	ldr	 w2, [sp, #148]	// id: 8820, l: 8821	
	mov	 w0, #0x2710                	// #10000	// id: 8821, l: 8822	
	mul	 w0, w2, w0	// id: 8822, l: 8823	
	add	 w1, w1, w0	// id: 8823, l: 8824	
	mov	 w0, w1	// id: 8824, l: 8825	
	lsl	 w0, w0, #2	// id: 8825, l: 8826	
	add	 w0, w0, w1	// id: 8826, l: 8827	
	lsl	 w0, w0, #2	// id: 8827, l: 8828	
	add	 w0, w0, #0xe	// id: 8828, l: 8829	
	sxtw	 x0, w0	// id: 8829, l: 8830	
	lsl	 x0, x0, #3	// id: 8830, l: 8831	
	ldr	 x1, [sp, #56]	// id: 8831, l: 8832	
	add	 x0, x1, x0	// id: 8832, l: 8833	
	ldr	 d0, [x0]	// id: 8833, l: 8834	
	fadd	 d1, d1, d0	// id: 8834, l: 8835	
	ldr	 w1, [sp, #152]	// id: 8835, l: 8836	
	mov	 w0, #0x64                  	// #100	// id: 8836, l: 8837	
	mul	 w1, w1, w0	// id: 8837, l: 8838	
	ldr	 w0, [sp, #156]	// id: 8838, l: 8839	
	add	 w1, w1, w0	// id: 8839, l: 8840	
	ldr	 w2, [sp, #148]	// id: 8840, l: 8841	
	mov	 w0, #0x2710                	// #10000	// id: 8841, l: 8842	
	mul	 w0, w2, w0	// id: 8842, l: 8843	
	add	 w1, w1, w0	// id: 8843, l: 8844	
	mov	 w0, w1	// id: 8844, l: 8845	
	lsl	 w0, w0, #2	// id: 8845, l: 8846	
	add	 w0, w0, w1	// id: 8846, l: 8847	
	lsl	 w0, w0, #2	// id: 8847, l: 8848	
	add	 w0, w0, #0xf	// id: 8848, l: 8849	
	sxtw	 x0, w0	// id: 8849, l: 8850	
	lsl	 x0, x0, #3	// id: 8850, l: 8851	
	ldr	 x1, [sp, #56]	// id: 8851, l: 8852	
	add	 x0, x1, x0	// id: 8852, l: 8853	
	ldr	 d0, [x0]	// id: 8853, l: 8854	
	fadd	 d1, d1, d0	// id: 8854, l: 8855	
	ldr	 w1, [sp, #152]	// id: 8855, l: 8856	
	mov	 w0, #0x64                  	// #100	// id: 8856, l: 8857	
	mul	 w1, w1, w0	// id: 8857, l: 8858	
	ldr	 w0, [sp, #156]	// id: 8858, l: 8859	
	add	 w1, w1, w0	// id: 8859, l: 8860	
	ldr	 w2, [sp, #148]	// id: 8860, l: 8861	
	mov	 w0, #0x2710                	// #10000	// id: 8861, l: 8862	
	mul	 w0, w2, w0	// id: 8862, l: 8863	
	add	 w1, w1, w0	// id: 8863, l: 8864	
	mov	 w0, w1	// id: 8864, l: 8865	
	lsl	 w0, w0, #2	// id: 8865, l: 8866	
	add	 w0, w0, w1	// id: 8866, l: 8867	
	lsl	 w0, w0, #2	// id: 8867, l: 8868	
	add	 w0, w0, #0x10	// id: 8868, l: 8869	
	sxtw	 x0, w0	// id: 8869, l: 8870	
	lsl	 x0, x0, #3	// id: 8870, l: 8871	
	ldr	 x1, [sp, #56]	// id: 8871, l: 8872	
	add	 x0, x1, x0	// id: 8872, l: 8873	
	ldr	 d0, [x0]	// id: 8873, l: 8874	
	fadd	 d1, d1, d0	// id: 8874, l: 8875	
	ldr	 w1, [sp, #152]	// id: 8875, l: 8876	
	mov	 w0, #0x64                  	// #100	// id: 8876, l: 8877	
	mul	 w1, w1, w0	// id: 8877, l: 8878	
	ldr	 w0, [sp, #156]	// id: 8878, l: 8879	
	add	 w1, w1, w0	// id: 8879, l: 8880	
	ldr	 w2, [sp, #148]	// id: 8880, l: 8881	
	mov	 w0, #0x2710                	// #10000	// id: 8881, l: 8882	
	mul	 w0, w2, w0	// id: 8882, l: 8883	
	add	 w1, w1, w0	// id: 8883, l: 8884	
	mov	 w0, w1	// id: 8884, l: 8885	
	lsl	 w0, w0, #2	// id: 8885, l: 8886	
	add	 w0, w0, w1	// id: 8886, l: 8887	
	lsl	 w0, w0, #2	// id: 8887, l: 8888	
	add	 w0, w0, #0x11	// id: 8888, l: 8889	
	sxtw	 x0, w0	// id: 8889, l: 8890	
	lsl	 x0, x0, #3	// id: 8890, l: 8891	
	ldr	 x1, [sp, #56]	// id: 8891, l: 8892	
	add	 x0, x1, x0	// id: 8892, l: 8893	
	ldr	 d0, [x0]	// id: 8893, l: 8894	
	fadd	 d1, d1, d0	// id: 8894, l: 8895	
	ldr	 w1, [sp, #152]	// id: 8895, l: 8896	
	mov	 w0, #0x64                  	// #100	// id: 8896, l: 8897	
	mul	 w1, w1, w0	// id: 8897, l: 8898	
	ldr	 w0, [sp, #156]	// id: 8898, l: 8899	
	add	 w1, w1, w0	// id: 8899, l: 8900	
	ldr	 w2, [sp, #148]	// id: 8900, l: 8901	
	mov	 w0, #0x2710                	// #10000	// id: 8901, l: 8902	
	mul	 w0, w2, w0	// id: 8902, l: 8903	
	add	 w1, w1, w0	// id: 8903, l: 8904	
	mov	 w0, w1	// id: 8904, l: 8905	
	lsl	 w0, w0, #2	// id: 8905, l: 8906	
	add	 w0, w0, w1	// id: 8906, l: 8907	
	lsl	 w0, w0, #2	// id: 8907, l: 8908	
	add	 w0, w0, #0x12	// id: 8908, l: 8909	
	sxtw	 x0, w0	// id: 8909, l: 8910	
	lsl	 x0, x0, #3	// id: 8910, l: 8911	
	ldr	 x1, [sp, #56]	// id: 8911, l: 8912	
	add	 x0, x1, x0	// id: 8912, l: 8913	
	ldr	 d0, [x0]	// id: 8913, l: 8914	
	fadd	 d0, d1, d0	// id: 8914, l: 8915	
	str	 d0, [sp, #128]	// id: 8915, l: 8916	
	ldr	 w1, [sp, #152]	// id: 8916, l: 8917	
	mov	 w0, #0x64                  	// #100	// id: 8917, l: 8918	
	mul	 w1, w1, w0	// id: 8918, l: 8919	
	ldr	 w0, [sp, #156]	// id: 8919, l: 8920	
	add	 w1, w1, w0	// id: 8920, l: 8921	
	ldr	 w2, [sp, #148]	// id: 8921, l: 8922	
	mov	 w0, #0x2710                	// #10000	// id: 8922, l: 8923	
	mul	 w0, w2, w0	// id: 8923, l: 8924	
	add	 w1, w1, w0	// id: 8924, l: 8925	
	mov	 w0, w1	// id: 8925, l: 8926	
	lsl	 w0, w0, #2	// id: 8926, l: 8927	
	add	 w0, w0, w1	// id: 8927, l: 8928	
	lsl	 w0, w0, #2	// id: 8928, l: 8929	
	add	 w0, w0, #0x3	// id: 8929, l: 8930	
	sxtw	 x0, w0	// id: 8930, l: 8931	
	lsl	 x0, x0, #3	// id: 8931, l: 8932	
	ldr	 x1, [sp, #56]	// id: 8932, l: 8933	
	add	 x0, x1, x0	// id: 8933, l: 8934	
	ldr	 d1, [x0]	// id: 8934, l: 8935	
	ldr	 w1, [sp, #152]	// id: 8935, l: 8936	
	mov	 w0, #0x64                  	// #100	// id: 8936, l: 8937	
	mul	 w1, w1, w0	// id: 8937, l: 8938	
	ldr	 w0, [sp, #156]	// id: 8938, l: 8939	
	add	 w1, w1, w0	// id: 8939, l: 8940	
	ldr	 w2, [sp, #148]	// id: 8940, l: 8941	
	mov	 w0, #0x2710                	// #10000	// id: 8941, l: 8942	
	mul	 w0, w2, w0	// id: 8942, l: 8943	
	add	 w1, w1, w0	// id: 8943, l: 8944	
	mov	 w0, w1	// id: 8944, l: 8945	
	lsl	 w0, w0, #2	// id: 8945, l: 8946	
	add	 w0, w0, w1	// id: 8946, l: 8947	
	lsl	 w0, w0, #2	// id: 8947, l: 8948	
	add	 w0, w0, #0x4	// id: 8948, l: 8949	
	sxtw	 x0, w0	// id: 8949, l: 8950	
	lsl	 x0, x0, #3	// id: 8950, l: 8951	
	ldr	 x1, [sp, #56]	// id: 8951, l: 8952	
	add	 x0, x1, x0	// id: 8952, l: 8953	
	ldr	 d0, [x0]	// id: 8953, l: 8954	
	fsub	 d1, d1, d0	// id: 8954, l: 8955	
	ldr	 w1, [sp, #152]	// id: 8955, l: 8956	
	mov	 w0, #0x64                  	// #100	// id: 8956, l: 8957	
	mul	 w1, w1, w0	// id: 8957, l: 8958	
	ldr	 w0, [sp, #156]	// id: 8958, l: 8959	
	add	 w1, w1, w0	// id: 8959, l: 8960	
	ldr	 w2, [sp, #148]	// id: 8960, l: 8961	
	mov	 w0, #0x2710                	// #10000	// id: 8961, l: 8962	
	mul	 w0, w2, w0	// id: 8962, l: 8963	
	add	 w1, w1, w0	// id: 8963, l: 8964	
	mov	 w0, w1	// id: 8964, l: 8965	
	lsl	 w0, w0, #2	// id: 8965, l: 8966	
	add	 w0, w0, w1	// id: 8966, l: 8967	
	lsl	 w0, w0, #2	// id: 8967, l: 8968	
	add	 w0, w0, #0x7	// id: 8968, l: 8969	
	sxtw	 x0, w0	// id: 8969, l: 8970	
	lsl	 x0, x0, #3	// id: 8970, l: 8971	
	ldr	 x1, [sp, #56]	// id: 8971, l: 8972	
	add	 x0, x1, x0	// id: 8972, l: 8973	
	ldr	 d0, [x0]	// id: 8973, l: 8974	
	fadd	 d1, d1, d0	// id: 8974, l: 8975	
	ldr	 w1, [sp, #152]	// id: 8975, l: 8976	
	mov	 w0, #0x64                  	// #100	// id: 8976, l: 8977	
	mul	 w1, w1, w0	// id: 8977, l: 8978	
	ldr	 w0, [sp, #156]	// id: 8978, l: 8979	
	add	 w1, w1, w0	// id: 8979, l: 8980	
	ldr	 w2, [sp, #148]	// id: 8980, l: 8981	
	mov	 w0, #0x2710                	// #10000	// id: 8981, l: 8982	
	mul	 w0, w2, w0	// id: 8982, l: 8983	
	add	 w1, w1, w0	// id: 8983, l: 8984	
	mov	 w0, w1	// id: 8984, l: 8985	
	lsl	 w0, w0, #2	// id: 8985, l: 8986	
	add	 w0, w0, w1	// id: 8986, l: 8987	
	lsl	 w0, w0, #2	// id: 8987, l: 8988	
	add	 w0, w0, #0x8	// id: 8988, l: 8989	
	sxtw	 x0, w0	// id: 8989, l: 8990	
	lsl	 x0, x0, #3	// id: 8990, l: 8991	
	ldr	 x1, [sp, #56]	// id: 8991, l: 8992	
	add	 x0, x1, x0	// id: 8992, l: 8993	
	ldr	 d0, [x0]	// id: 8993, l: 8994	
	fsub	 d1, d1, d0	// id: 8994, l: 8995	
	ldr	 w1, [sp, #152]	// id: 8995, l: 8996	
	mov	 w0, #0x64                  	// #100	// id: 8996, l: 8997	
	mul	 w1, w1, w0	// id: 8997, l: 8998	
	ldr	 w0, [sp, #156]	// id: 8998, l: 8999	
	add	 w1, w1, w0	// id: 8999, l: 9000	
	ldr	 w2, [sp, #148]	// id: 9000, l: 9001	
	mov	 w0, #0x2710                	// #10000	// id: 9001, l: 9002	
	mul	 w0, w2, w0	// id: 9002, l: 9003	
	add	 w1, w1, w0	// id: 9003, l: 9004	
	mov	 w0, w1	// id: 9004, l: 9005	
	lsl	 w0, w0, #2	// id: 9005, l: 9006	
	add	 w0, w0, w1	// id: 9006, l: 9007	
	lsl	 w0, w0, #2	// id: 9007, l: 9008	
	add	 w0, w0, #0x9	// id: 9008, l: 9009	
	sxtw	 x0, w0	// id: 9009, l: 9010	
	lsl	 x0, x0, #3	// id: 9010, l: 9011	
	ldr	 x1, [sp, #56]	// id: 9011, l: 9012	
	add	 x0, x1, x0	// id: 9012, l: 9013	
	ldr	 d0, [x0]	// id: 9013, l: 9014	
	fadd	 d1, d1, d0	// id: 9014, l: 9015	
	ldr	 w1, [sp, #152]	// id: 9015, l: 9016	
	mov	 w0, #0x64                  	// #100	// id: 9016, l: 9017	
	mul	 w1, w1, w0	// id: 9017, l: 9018	
	ldr	 w0, [sp, #156]	// id: 9018, l: 9019	
	add	 w1, w1, w0	// id: 9019, l: 9020	
	ldr	 w2, [sp, #148]	// id: 9020, l: 9021	
	mov	 w0, #0x2710                	// #10000	// id: 9021, l: 9022	
	mul	 w0, w2, w0	// id: 9022, l: 9023	
	add	 w1, w1, w0	// id: 9023, l: 9024	
	mov	 w0, w1	// id: 9024, l: 9025	
	lsl	 w0, w0, #2	// id: 9025, l: 9026	
	add	 w0, w0, w1	// id: 9026, l: 9027	
	lsl	 w0, w0, #2	// id: 9027, l: 9028	
	add	 w0, w0, #0xa	// id: 9028, l: 9029	
	sxtw	 x0, w0	// id: 9029, l: 9030	
	lsl	 x0, x0, #3	// id: 9030, l: 9031	
	ldr	 x1, [sp, #56]	// id: 9031, l: 9032	
	add	 x0, x1, x0	// id: 9032, l: 9033	
	ldr	 d0, [x0]	// id: 9033, l: 9034	
	fsub	 d1, d1, d0	// id: 9034, l: 9035	
	ldr	 w1, [sp, #152]	// id: 9035, l: 9036	
	mov	 w0, #0x64                  	// #100	// id: 9036, l: 9037	
	mul	 w1, w1, w0	// id: 9037, l: 9038	
	ldr	 w0, [sp, #156]	// id: 9038, l: 9039	
	add	 w1, w1, w0	// id: 9039, l: 9040	
	ldr	 w2, [sp, #148]	// id: 9040, l: 9041	
	mov	 w0, #0x2710                	// #10000	// id: 9041, l: 9042	
	mul	 w0, w2, w0	// id: 9042, l: 9043	
	add	 w1, w1, w0	// id: 9043, l: 9044	
	mov	 w0, w1	// id: 9044, l: 9045	
	lsl	 w0, w0, #2	// id: 9045, l: 9046	
	add	 w0, w0, w1	// id: 9046, l: 9047	
	lsl	 w0, w0, #2	// id: 9047, l: 9048	
	add	 w0, w0, #0xf	// id: 9048, l: 9049	
	sxtw	 x0, w0	// id: 9049, l: 9050	
	lsl	 x0, x0, #3	// id: 9050, l: 9051	
	ldr	 x1, [sp, #56]	// id: 9051, l: 9052	
	add	 x0, x1, x0	// id: 9052, l: 9053	
	ldr	 d0, [x0]	// id: 9053, l: 9054	
	fadd	 d1, d1, d0	// id: 9054, l: 9055	
	ldr	 w1, [sp, #152]	// id: 9055, l: 9056	
	mov	 w0, #0x64                  	// #100	// id: 9056, l: 9057	
	mul	 w1, w1, w0	// id: 9057, l: 9058	
	ldr	 w0, [sp, #156]	// id: 9058, l: 9059	
	add	 w1, w1, w0	// id: 9059, l: 9060	
	ldr	 w2, [sp, #148]	// id: 9060, l: 9061	
	mov	 w0, #0x2710                	// #10000	// id: 9061, l: 9062	
	mul	 w0, w2, w0	// id: 9062, l: 9063	
	add	 w1, w1, w0	// id: 9063, l: 9064	
	mov	 w0, w1	// id: 9064, l: 9065	
	lsl	 w0, w0, #2	// id: 9065, l: 9066	
	add	 w0, w0, w1	// id: 9066, l: 9067	
	lsl	 w0, w0, #2	// id: 9067, l: 9068	
	add	 w0, w0, #0x10	// id: 9068, l: 9069	
	sxtw	 x0, w0	// id: 9069, l: 9070	
	lsl	 x0, x0, #3	// id: 9070, l: 9071	
	ldr	 x1, [sp, #56]	// id: 9071, l: 9072	
	add	 x0, x1, x0	// id: 9072, l: 9073	
	ldr	 d0, [x0]	// id: 9073, l: 9074	
	fadd	 d1, d1, d0	// id: 9074, l: 9075	
	ldr	 w1, [sp, #152]	// id: 9075, l: 9076	
	mov	 w0, #0x64                  	// #100	// id: 9076, l: 9077	
	mul	 w1, w1, w0	// id: 9077, l: 9078	
	ldr	 w0, [sp, #156]	// id: 9078, l: 9079	
	add	 w1, w1, w0	// id: 9079, l: 9080	
	ldr	 w2, [sp, #148]	// id: 9080, l: 9081	
	mov	 w0, #0x2710                	// #10000	// id: 9081, l: 9082	
	mul	 w0, w2, w0	// id: 9082, l: 9083	
	add	 w1, w1, w0	// id: 9083, l: 9084	
	mov	 w0, w1	// id: 9084, l: 9085	
	lsl	 w0, w0, #2	// id: 9085, l: 9086	
	add	 w0, w0, w1	// id: 9086, l: 9087	
	lsl	 w0, w0, #2	// id: 9087, l: 9088	
	add	 w0, w0, #0x11	// id: 9088, l: 9089	
	sxtw	 x0, w0	// id: 9089, l: 9090	
	lsl	 x0, x0, #3	// id: 9090, l: 9091	
	ldr	 x1, [sp, #56]	// id: 9091, l: 9092	
	add	 x0, x1, x0	// id: 9092, l: 9093	
	ldr	 d0, [x0]	// id: 9093, l: 9094	
	fsub	 d1, d1, d0	// id: 9094, l: 9095	
	ldr	 w1, [sp, #152]	// id: 9095, l: 9096	
	mov	 w0, #0x64                  	// #100	// id: 9096, l: 9097	
	mul	 w1, w1, w0	// id: 9097, l: 9098	
	ldr	 w0, [sp, #156]	// id: 9098, l: 9099	
	add	 w1, w1, w0	// id: 9099, l: 9100	
	ldr	 w2, [sp, #148]	// id: 9100, l: 9101	
	mov	 w0, #0x2710                	// #10000	// id: 9101, l: 9102	
	mul	 w0, w2, w0	// id: 9102, l: 9103	
	add	 w1, w1, w0	// id: 9103, l: 9104	
	mov	 w0, w1	// id: 9104, l: 9105	
	lsl	 w0, w0, #2	// id: 9105, l: 9106	
	add	 w0, w0, w1	// id: 9106, l: 9107	
	lsl	 w0, w0, #2	// id: 9107, l: 9108	
	add	 w0, w0, #0x12	// id: 9108, l: 9109	
	sxtw	 x0, w0	// id: 9109, l: 9110	
	lsl	 x0, x0, #3	// id: 9110, l: 9111	
	ldr	 x1, [sp, #56]	// id: 9111, l: 9112	
	add	 x0, x1, x0	// id: 9112, l: 9113	
	ldr	 d0, [x0]	// id: 9113, l: 9114	
	fsub	 d0, d1, d0	// id: 9114, l: 9115	
	str	 d0, [sp, #120]	// id: 9115, l: 9116	
	ldr	 w1, [sp, #152]	// id: 9116, l: 9117	
	mov	 w0, #0x64                  	// #100	// id: 9117, l: 9118	
	mul	 w1, w1, w0	// id: 9118, l: 9119	
	ldr	 w0, [sp, #156]	// id: 9119, l: 9120	
	add	 w1, w1, w0	// id: 9120, l: 9121	
	ldr	 w2, [sp, #148]	// id: 9121, l: 9122	
	mov	 w0, #0x2710                	// #10000	// id: 9122, l: 9123	
	mul	 w0, w2, w0	// id: 9123, l: 9124	
	add	 w1, w1, w0	// id: 9124, l: 9125	
	mov	 w0, w1	// id: 9125, l: 9126	
	lsl	 w0, w0, #2	// id: 9126, l: 9127	
	add	 w0, w0, w1	// id: 9127, l: 9128	
	lsl	 w0, w0, #2	// id: 9128, l: 9129	
	add	 w0, w0, #0x1	// id: 9129, l: 9130	
	sxtw	 x0, w0	// id: 9130, l: 9131	
	lsl	 x0, x0, #3	// id: 9131, l: 9132	
	ldr	 x1, [sp, #56]	// id: 9132, l: 9133	
	add	 x0, x1, x0	// id: 9133, l: 9134	
	ldr	 d1, [x0]	// id: 9134, l: 9135	
	ldr	 w1, [sp, #152]	// id: 9135, l: 9136	
	mov	 w0, #0x64                  	// #100	// id: 9136, l: 9137	
	mul	 w1, w1, w0	// id: 9137, l: 9138	
	ldr	 w0, [sp, #156]	// id: 9138, l: 9139	
	add	 w1, w1, w0	// id: 9139, l: 9140	
	ldr	 w2, [sp, #148]	// id: 9140, l: 9141	
	mov	 w0, #0x2710                	// #10000	// id: 9141, l: 9142	
	mul	 w0, w2, w0	// id: 9142, l: 9143	
	add	 w1, w1, w0	// id: 9143, l: 9144	
	mov	 w0, w1	// id: 9144, l: 9145	
	lsl	 w0, w0, #2	// id: 9145, l: 9146	
	add	 w0, w0, w1	// id: 9146, l: 9147	
	lsl	 w0, w0, #2	// id: 9147, l: 9148	
	add	 w0, w0, #0x2	// id: 9148, l: 9149	
	sxtw	 x0, w0	// id: 9149, l: 9150	
	lsl	 x0, x0, #3	// id: 9150, l: 9151	
	ldr	 x1, [sp, #56]	// id: 9151, l: 9152	
	add	 x0, x1, x0	// id: 9152, l: 9153	
	ldr	 d0, [x0]	// id: 9153, l: 9154	
	fsub	 d1, d1, d0	// id: 9154, l: 9155	
	ldr	 w1, [sp, #152]	// id: 9155, l: 9156	
	mov	 w0, #0x64                  	// #100	// id: 9156, l: 9157	
	mul	 w1, w1, w0	// id: 9157, l: 9158	
	ldr	 w0, [sp, #156]	// id: 9158, l: 9159	
	add	 w1, w1, w0	// id: 9159, l: 9160	
	ldr	 w2, [sp, #148]	// id: 9160, l: 9161	
	mov	 w0, #0x2710                	// #10000	// id: 9161, l: 9162	
	mul	 w0, w2, w0	// id: 9162, l: 9163	
	add	 w1, w1, w0	// id: 9163, l: 9164	
	mov	 w0, w1	// id: 9164, l: 9165	
	lsl	 w0, w0, #2	// id: 9165, l: 9166	
	add	 w0, w0, w1	// id: 9166, l: 9167	
	lsl	 w0, w0, #2	// id: 9167, l: 9168	
	add	 w0, w0, #0x7	// id: 9168, l: 9169	
	sxtw	 x0, w0	// id: 9169, l: 9170	
	lsl	 x0, x0, #3	// id: 9170, l: 9171	
	ldr	 x1, [sp, #56]	// id: 9171, l: 9172	
	add	 x0, x1, x0	// id: 9172, l: 9173	
	ldr	 d0, [x0]	// id: 9173, l: 9174	
	fadd	 d1, d1, d0	// id: 9174, l: 9175	
	ldr	 w1, [sp, #152]	// id: 9175, l: 9176	
	mov	 w0, #0x64                  	// #100	// id: 9176, l: 9177	
	mul	 w1, w1, w0	// id: 9177, l: 9178	
	ldr	 w0, [sp, #156]	// id: 9178, l: 9179	
	add	 w1, w1, w0	// id: 9179, l: 9180	
	ldr	 w2, [sp, #148]	// id: 9180, l: 9181	
	mov	 w0, #0x2710                	// #10000	// id: 9181, l: 9182	
	mul	 w0, w2, w0	// id: 9182, l: 9183	
	add	 w1, w1, w0	// id: 9183, l: 9184	
	mov	 w0, w1	// id: 9184, l: 9185	
	lsl	 w0, w0, #2	// id: 9185, l: 9186	
	add	 w0, w0, w1	// id: 9186, l: 9187	
	lsl	 w0, w0, #2	// id: 9187, l: 9188	
	add	 w0, w0, #0x8	// id: 9188, l: 9189	
	sxtw	 x0, w0	// id: 9189, l: 9190	
	lsl	 x0, x0, #3	// id: 9190, l: 9191	
	ldr	 x1, [sp, #56]	// id: 9191, l: 9192	
	add	 x0, x1, x0	// id: 9192, l: 9193	
	ldr	 d0, [x0]	// id: 9193, l: 9194	
	fadd	 d1, d1, d0	// id: 9194, l: 9195	
	ldr	 w1, [sp, #152]	// id: 9195, l: 9196	
	mov	 w0, #0x64                  	// #100	// id: 9196, l: 9197	
	mul	 w1, w1, w0	// id: 9197, l: 9198	
	ldr	 w0, [sp, #156]	// id: 9198, l: 9199	
	add	 w1, w1, w0	// id: 9199, l: 9200	
	ldr	 w2, [sp, #148]	// id: 9200, l: 9201	
	mov	 w0, #0x2710                	// #10000	// id: 9201, l: 9202	
	mul	 w0, w2, w0	// id: 9202, l: 9203	
	add	 w1, w1, w0	// id: 9203, l: 9204	
	mov	 w0, w1	// id: 9204, l: 9205	
	lsl	 w0, w0, #2	// id: 9205, l: 9206	
	add	 w0, w0, w1	// id: 9206, l: 9207	
	lsl	 w0, w0, #2	// id: 9207, l: 9208	
	add	 w0, w0, #0x9	// id: 9208, l: 9209	
	sxtw	 x0, w0	// id: 9209, l: 9210	
	lsl	 x0, x0, #3	// id: 9210, l: 9211	
	ldr	 x1, [sp, #56]	// id: 9211, l: 9212	
	add	 x0, x1, x0	// id: 9212, l: 9213	
	ldr	 d0, [x0]	// id: 9213, l: 9214	
	fsub	 d1, d1, d0	// id: 9214, l: 9215	
	ldr	 w1, [sp, #152]	// id: 9215, l: 9216	
	mov	 w0, #0x64                  	// #100	// id: 9216, l: 9217	
	mul	 w1, w1, w0	// id: 9217, l: 9218	
	ldr	 w0, [sp, #156]	// id: 9218, l: 9219	
	add	 w1, w1, w0	// id: 9219, l: 9220	
	ldr	 w2, [sp, #148]	// id: 9220, l: 9221	
	mov	 w0, #0x2710                	// #10000	// id: 9221, l: 9222	
	mul	 w0, w2, w0	// id: 9222, l: 9223	
	add	 w1, w1, w0	// id: 9223, l: 9224	
	mov	 w0, w1	// id: 9224, l: 9225	
	lsl	 w0, w0, #2	// id: 9225, l: 9226	
	add	 w0, w0, w1	// id: 9226, l: 9227	
	lsl	 w0, w0, #2	// id: 9227, l: 9228	
	add	 w0, w0, #0xa	// id: 9228, l: 9229	
	sxtw	 x0, w0	// id: 9229, l: 9230	
	lsl	 x0, x0, #3	// id: 9230, l: 9231	
	ldr	 x1, [sp, #56]	// id: 9231, l: 9232	
	add	 x0, x1, x0	// id: 9232, l: 9233	
	ldr	 d0, [x0]	// id: 9233, l: 9234	
	fsub	 d1, d1, d0	// id: 9234, l: 9235	
	ldr	 w1, [sp, #152]	// id: 9235, l: 9236	
	mov	 w0, #0x64                  	// #100	// id: 9236, l: 9237	
	mul	 w1, w1, w0	// id: 9237, l: 9238	
	ldr	 w0, [sp, #156]	// id: 9238, l: 9239	
	add	 w1, w1, w0	// id: 9239, l: 9240	
	ldr	 w2, [sp, #148]	// id: 9240, l: 9241	
	mov	 w0, #0x2710                	// #10000	// id: 9241, l: 9242	
	mul	 w0, w2, w0	// id: 9242, l: 9243	
	add	 w1, w1, w0	// id: 9243, l: 9244	
	mov	 w0, w1	// id: 9244, l: 9245	
	lsl	 w0, w0, #2	// id: 9245, l: 9246	
	add	 w0, w0, w1	// id: 9246, l: 9247	
	lsl	 w0, w0, #2	// id: 9247, l: 9248	
	add	 w0, w0, #0xb	// id: 9248, l: 9249	
	sxtw	 x0, w0	// id: 9249, l: 9250	
	lsl	 x0, x0, #3	// id: 9250, l: 9251	
	ldr	 x1, [sp, #56]	// id: 9251, l: 9252	
	add	 x0, x1, x0	// id: 9252, l: 9253	
	ldr	 d0, [x0]	// id: 9253, l: 9254	
	fadd	 d1, d1, d0	// id: 9254, l: 9255	
	ldr	 w1, [sp, #152]	// id: 9255, l: 9256	
	mov	 w0, #0x64                  	// #100	// id: 9256, l: 9257	
	mul	 w1, w1, w0	// id: 9257, l: 9258	
	ldr	 w0, [sp, #156]	// id: 9258, l: 9259	
	add	 w1, w1, w0	// id: 9259, l: 9260	
	ldr	 w2, [sp, #148]	// id: 9260, l: 9261	
	mov	 w0, #0x2710                	// #10000	// id: 9261, l: 9262	
	mul	 w0, w2, w0	// id: 9262, l: 9263	
	add	 w1, w1, w0	// id: 9263, l: 9264	
	mov	 w0, w1	// id: 9264, l: 9265	
	lsl	 w0, w0, #2	// id: 9265, l: 9266	
	add	 w0, w0, w1	// id: 9266, l: 9267	
	lsl	 w0, w0, #2	// id: 9267, l: 9268	
	add	 w0, w0, #0xc	// id: 9268, l: 9269	
	sxtw	 x0, w0	// id: 9269, l: 9270	
	lsl	 x0, x0, #3	// id: 9270, l: 9271	
	ldr	 x1, [sp, #56]	// id: 9271, l: 9272	
	add	 x0, x1, x0	// id: 9272, l: 9273	
	ldr	 d0, [x0]	// id: 9273, l: 9274	
	fadd	 d1, d1, d0	// id: 9274, l: 9275	
	ldr	 w1, [sp, #152]	// id: 9275, l: 9276	
	mov	 w0, #0x64                  	// #100	// id: 9276, l: 9277	
	mul	 w1, w1, w0	// id: 9277, l: 9278	
	ldr	 w0, [sp, #156]	// id: 9278, l: 9279	
	add	 w1, w1, w0	// id: 9279, l: 9280	
	ldr	 w2, [sp, #148]	// id: 9280, l: 9281	
	mov	 w0, #0x2710                	// #10000	// id: 9281, l: 9282	
	mul	 w0, w2, w0	// id: 9282, l: 9283	
	add	 w1, w1, w0	// id: 9283, l: 9284	
	mov	 w0, w1	// id: 9284, l: 9285	
	lsl	 w0, w0, #2	// id: 9285, l: 9286	
	add	 w0, w0, w1	// id: 9286, l: 9287	
	lsl	 w0, w0, #2	// id: 9287, l: 9288	
	add	 w0, w0, #0xd	// id: 9288, l: 9289	
	sxtw	 x0, w0	// id: 9289, l: 9290	
	lsl	 x0, x0, #3	// id: 9290, l: 9291	
	ldr	 x1, [sp, #56]	// id: 9291, l: 9292	
	add	 x0, x1, x0	// id: 9292, l: 9293	
	ldr	 d0, [x0]	// id: 9293, l: 9294	
	fsub	 d1, d1, d0	// id: 9294, l: 9295	
	ldr	 w1, [sp, #152]	// id: 9295, l: 9296	
	mov	 w0, #0x64                  	// #100	// id: 9296, l: 9297	
	mul	 w1, w1, w0	// id: 9297, l: 9298	
	ldr	 w0, [sp, #156]	// id: 9298, l: 9299	
	add	 w1, w1, w0	// id: 9299, l: 9300	
	ldr	 w2, [sp, #148]	// id: 9300, l: 9301	
	mov	 w0, #0x2710                	// #10000	// id: 9301, l: 9302	
	mul	 w0, w2, w0	// id: 9302, l: 9303	
	add	 w1, w1, w0	// id: 9303, l: 9304	
	mov	 w0, w1	// id: 9304, l: 9305	
	lsl	 w0, w0, #2	// id: 9305, l: 9306	
	add	 w0, w0, w1	// id: 9306, l: 9307	
	lsl	 w0, w0, #2	// id: 9307, l: 9308	
	add	 w0, w0, #0xe	// id: 9308, l: 9309	
	sxtw	 x0, w0	// id: 9309, l: 9310	
	lsl	 x0, x0, #3	// id: 9310, l: 9311	
	ldr	 x1, [sp, #56]	// id: 9311, l: 9312	
	add	 x0, x1, x0	// id: 9312, l: 9313	
	ldr	 d0, [x0]	// id: 9313, l: 9314	
	fsub	 d0, d1, d0	// id: 9314, l: 9315	
	str	 d0, [sp, #112]	// id: 9315, l: 9316	
	ldr	 w1, [sp, #152]	// id: 9316, l: 9317	
	mov	 w0, #0x64                  	// #100	// id: 9317, l: 9318	
	mul	 w1, w1, w0	// id: 9318, l: 9319	
	ldr	 w0, [sp, #156]	// id: 9319, l: 9320	
	add	 w1, w1, w0	// id: 9320, l: 9321	
	ldr	 w2, [sp, #148]	// id: 9321, l: 9322	
	mov	 w0, #0x2710                	// #10000	// id: 9322, l: 9323	
	mul	 w0, w2, w0	// id: 9323, l: 9324	
	add	 w1, w1, w0	// id: 9324, l: 9325	
	mov	 w0, w1	// id: 9325, l: 9326	
	lsl	 w0, w0, #2	// id: 9326, l: 9327	
	add	 w0, w0, w1	// id: 9327, l: 9328	
	lsl	 w0, w0, #2	// id: 9328, l: 9329	
	add	 w0, w0, #0x5	// id: 9329, l: 9330	
	sxtw	 x0, w0	// id: 9330, l: 9331	
	lsl	 x0, x0, #3	// id: 9331, l: 9332	
	ldr	 x1, [sp, #56]	// id: 9332, l: 9333	
	add	 x0, x1, x0	// id: 9333, l: 9334	
	ldr	 d1, [x0]	// id: 9334, l: 9335	
	ldr	 w1, [sp, #152]	// id: 9335, l: 9336	
	mov	 w0, #0x64                  	// #100	// id: 9336, l: 9337	
	mul	 w1, w1, w0	// id: 9337, l: 9338	
	ldr	 w0, [sp, #156]	// id: 9338, l: 9339	
	add	 w1, w1, w0	// id: 9339, l: 9340	
	ldr	 w2, [sp, #148]	// id: 9340, l: 9341	
	mov	 w0, #0x2710                	// #10000	// id: 9341, l: 9342	
	mul	 w0, w2, w0	// id: 9342, l: 9343	
	add	 w1, w1, w0	// id: 9343, l: 9344	
	mov	 w0, w1	// id: 9344, l: 9345	
	lsl	 w0, w0, #2	// id: 9345, l: 9346	
	add	 w0, w0, w1	// id: 9346, l: 9347	
	lsl	 w0, w0, #2	// id: 9347, l: 9348	
	add	 w0, w0, #0x6	// id: 9348, l: 9349	
	sxtw	 x0, w0	// id: 9349, l: 9350	
	lsl	 x0, x0, #3	// id: 9350, l: 9351	
	ldr	 x1, [sp, #56]	// id: 9351, l: 9352	
	add	 x0, x1, x0	// id: 9352, l: 9353	
	ldr	 d0, [x0]	// id: 9353, l: 9354	
	fsub	 d1, d1, d0	// id: 9354, l: 9355	
	ldr	 w1, [sp, #152]	// id: 9355, l: 9356	
	mov	 w0, #0x64                  	// #100	// id: 9356, l: 9357	
	mul	 w1, w1, w0	// id: 9357, l: 9358	
	ldr	 w0, [sp, #156]	// id: 9358, l: 9359	
	add	 w1, w1, w0	// id: 9359, l: 9360	
	ldr	 w2, [sp, #148]	// id: 9360, l: 9361	
	mov	 w0, #0x2710                	// #10000	// id: 9361, l: 9362	
	mul	 w0, w2, w0	// id: 9362, l: 9363	
	add	 w1, w1, w0	// id: 9363, l: 9364	
	mov	 w0, w1	// id: 9364, l: 9365	
	lsl	 w0, w0, #2	// id: 9365, l: 9366	
	add	 w0, w0, w1	// id: 9366, l: 9367	
	lsl	 w0, w0, #2	// id: 9367, l: 9368	
	add	 w0, w0, #0xb	// id: 9368, l: 9369	
	sxtw	 x0, w0	// id: 9369, l: 9370	
	lsl	 x0, x0, #3	// id: 9370, l: 9371	
	ldr	 x1, [sp, #56]	// id: 9371, l: 9372	
	add	 x0, x1, x0	// id: 9372, l: 9373	
	ldr	 d0, [x0]	// id: 9373, l: 9374	
	fadd	 d1, d1, d0	// id: 9374, l: 9375	
	ldr	 w1, [sp, #152]	// id: 9375, l: 9376	
	mov	 w0, #0x64                  	// #100	// id: 9376, l: 9377	
	mul	 w1, w1, w0	// id: 9377, l: 9378	
	ldr	 w0, [sp, #156]	// id: 9378, l: 9379	
	add	 w1, w1, w0	// id: 9379, l: 9380	
	ldr	 w2, [sp, #148]	// id: 9380, l: 9381	
	mov	 w0, #0x2710                	// #10000	// id: 9381, l: 9382	
	mul	 w0, w2, w0	// id: 9382, l: 9383	
	add	 w1, w1, w0	// id: 9383, l: 9384	
	mov	 w0, w1	// id: 9384, l: 9385	
	lsl	 w0, w0, #2	// id: 9385, l: 9386	
	add	 w0, w0, w1	// id: 9386, l: 9387	
	lsl	 w0, w0, #2	// id: 9387, l: 9388	
	add	 w0, w0, #0xc	// id: 9388, l: 9389	
	sxtw	 x0, w0	// id: 9389, l: 9390	
	lsl	 x0, x0, #3	// id: 9390, l: 9391	
	ldr	 x1, [sp, #56]	// id: 9391, l: 9392	
	add	 x0, x1, x0	// id: 9392, l: 9393	
	ldr	 d0, [x0]	// id: 9393, l: 9394	
	fsub	 d1, d1, d0	// id: 9394, l: 9395	
	ldr	 w1, [sp, #152]	// id: 9395, l: 9396	
	mov	 w0, #0x64                  	// #100	// id: 9396, l: 9397	
	mul	 w1, w1, w0	// id: 9397, l: 9398	
	ldr	 w0, [sp, #156]	// id: 9398, l: 9399	
	add	 w1, w1, w0	// id: 9399, l: 9400	
	ldr	 w2, [sp, #148]	// id: 9400, l: 9401	
	mov	 w0, #0x2710                	// #10000	// id: 9401, l: 9402	
	mul	 w0, w2, w0	// id: 9402, l: 9403	
	add	 w1, w1, w0	// id: 9403, l: 9404	
	mov	 w0, w1	// id: 9404, l: 9405	
	lsl	 w0, w0, #2	// id: 9405, l: 9406	
	add	 w0, w0, w1	// id: 9406, l: 9407	
	lsl	 w0, w0, #2	// id: 9407, l: 9408	
	add	 w0, w0, #0xd	// id: 9408, l: 9409	
	sxtw	 x0, w0	// id: 9409, l: 9410	
	lsl	 x0, x0, #3	// id: 9410, l: 9411	
	ldr	 x1, [sp, #56]	// id: 9411, l: 9412	
	add	 x0, x1, x0	// id: 9412, l: 9413	
	ldr	 d0, [x0]	// id: 9413, l: 9414	
	fadd	 d1, d1, d0	// id: 9414, l: 9415	
	ldr	 w1, [sp, #152]	// id: 9415, l: 9416	
	mov	 w0, #0x64                  	// #100	// id: 9416, l: 9417	
	mul	 w1, w1, w0	// id: 9417, l: 9418	
	ldr	 w0, [sp, #156]	// id: 9418, l: 9419	
	add	 w1, w1, w0	// id: 9419, l: 9420	
	ldr	 w2, [sp, #148]	// id: 9420, l: 9421	
	mov	 w0, #0x2710                	// #10000	// id: 9421, l: 9422	
	mul	 w0, w2, w0	// id: 9422, l: 9423	
	add	 w1, w1, w0	// id: 9423, l: 9424	
	mov	 w0, w1	// id: 9424, l: 9425	
	lsl	 w0, w0, #2	// id: 9425, l: 9426	
	add	 w0, w0, w1	// id: 9426, l: 9427	
	lsl	 w0, w0, #2	// id: 9427, l: 9428	
	add	 w0, w0, #0xe	// id: 9428, l: 9429	
	sxtw	 x0, w0	// id: 9429, l: 9430	
	lsl	 x0, x0, #3	// id: 9430, l: 9431	
	ldr	 x1, [sp, #56]	// id: 9431, l: 9432	
	add	 x0, x1, x0	// id: 9432, l: 9433	
	ldr	 d0, [x0]	// id: 9433, l: 9434	
	fsub	 d1, d1, d0	// id: 9434, l: 9435	
	ldr	 w1, [sp, #152]	// id: 9435, l: 9436	
	mov	 w0, #0x64                  	// #100	// id: 9436, l: 9437	
	mul	 w1, w1, w0	// id: 9437, l: 9438	
	ldr	 w0, [sp, #156]	// id: 9438, l: 9439	
	add	 w1, w1, w0	// id: 9439, l: 9440	
	ldr	 w2, [sp, #148]	// id: 9440, l: 9441	
	mov	 w0, #0x2710                	// #10000	// id: 9441, l: 9442	
	mul	 w0, w2, w0	// id: 9442, l: 9443	
	add	 w1, w1, w0	// id: 9443, l: 9444	
	mov	 w0, w1	// id: 9444, l: 9445	
	lsl	 w0, w0, #2	// id: 9445, l: 9446	
	add	 w0, w0, w1	// id: 9446, l: 9447	
	lsl	 w0, w0, #2	// id: 9447, l: 9448	
	add	 w0, w0, #0xf	// id: 9448, l: 9449	
	sxtw	 x0, w0	// id: 9449, l: 9450	
	lsl	 x0, x0, #3	// id: 9450, l: 9451	
	ldr	 x1, [sp, #56]	// id: 9451, l: 9452	
	add	 x0, x1, x0	// id: 9452, l: 9453	
	ldr	 d0, [x0]	// id: 9453, l: 9454	
	fadd	 d1, d1, d0	// id: 9454, l: 9455	
	ldr	 w1, [sp, #152]	// id: 9455, l: 9456	
	mov	 w0, #0x64                  	// #100	// id: 9456, l: 9457	
	mul	 w1, w1, w0	// id: 9457, l: 9458	
	ldr	 w0, [sp, #156]	// id: 9458, l: 9459	
	add	 w1, w1, w0	// id: 9459, l: 9460	
	ldr	 w2, [sp, #148]	// id: 9460, l: 9461	
	mov	 w0, #0x2710                	// #10000	// id: 9461, l: 9462	
	mul	 w0, w2, w0	// id: 9462, l: 9463	
	add	 w1, w1, w0	// id: 9463, l: 9464	
	mov	 w0, w1	// id: 9464, l: 9465	
	lsl	 w0, w0, #2	// id: 9465, l: 9466	
	add	 w0, w0, w1	// id: 9466, l: 9467	
	lsl	 w0, w0, #2	// id: 9467, l: 9468	
	add	 w0, w0, #0x10	// id: 9468, l: 9469	
	sxtw	 x0, w0	// id: 9469, l: 9470	
	lsl	 x0, x0, #3	// id: 9470, l: 9471	
	ldr	 x1, [sp, #56]	// id: 9471, l: 9472	
	add	 x0, x1, x0	// id: 9472, l: 9473	
	ldr	 d0, [x0]	// id: 9473, l: 9474	
	fsub	 d1, d1, d0	// id: 9474, l: 9475	
	ldr	 w1, [sp, #152]	// id: 9475, l: 9476	
	mov	 w0, #0x64                  	// #100	// id: 9476, l: 9477	
	mul	 w1, w1, w0	// id: 9477, l: 9478	
	ldr	 w0, [sp, #156]	// id: 9478, l: 9479	
	add	 w1, w1, w0	// id: 9479, l: 9480	
	ldr	 w2, [sp, #148]	// id: 9480, l: 9481	
	mov	 w0, #0x2710                	// #10000	// id: 9481, l: 9482	
	mul	 w0, w2, w0	// id: 9482, l: 9483	
	add	 w1, w1, w0	// id: 9483, l: 9484	
	mov	 w0, w1	// id: 9484, l: 9485	
	lsl	 w0, w0, #2	// id: 9485, l: 9486	
	add	 w0, w0, w1	// id: 9486, l: 9487	
	lsl	 w0, w0, #2	// id: 9487, l: 9488	
	add	 w0, w0, #0x11	// id: 9488, l: 9489	
	sxtw	 x0, w0	// id: 9489, l: 9490	
	lsl	 x0, x0, #3	// id: 9490, l: 9491	
	ldr	 x1, [sp, #56]	// id: 9491, l: 9492	
	add	 x0, x1, x0	// id: 9492, l: 9493	
	ldr	 d0, [x0]	// id: 9493, l: 9494	
	fadd	 d1, d1, d0	// id: 9494, l: 9495	
	ldr	 w1, [sp, #152]	// id: 9495, l: 9496	
	mov	 w0, #0x64                  	// #100	// id: 9496, l: 9497	
	mul	 w1, w1, w0	// id: 9497, l: 9498	
	ldr	 w0, [sp, #156]	// id: 9498, l: 9499	
	add	 w1, w1, w0	// id: 9499, l: 9500	
	ldr	 w2, [sp, #148]	// id: 9500, l: 9501	
	mov	 w0, #0x2710                	// #10000	// id: 9501, l: 9502	
	mul	 w0, w2, w0	// id: 9502, l: 9503	
	add	 w1, w1, w0	// id: 9503, l: 9504	
	mov	 w0, w1	// id: 9504, l: 9505	
	lsl	 w0, w0, #2	// id: 9505, l: 9506	
	add	 w0, w0, w1	// id: 9506, l: 9507	
	lsl	 w0, w0, #2	// id: 9507, l: 9508	
	add	 w0, w0, #0x12	// id: 9508, l: 9509	
	sxtw	 x0, w0	// id: 9509, l: 9510	
	lsl	 x0, x0, #3	// id: 9510, l: 9511	
	ldr	 x1, [sp, #56]	// id: 9511, l: 9512	
	add	 x0, x1, x0	// id: 9512, l: 9513	
	ldr	 d0, [x0]	// id: 9513, l: 9514	
	fsub	 d0, d1, d0	// id: 9514, l: 9515	
	str	 d0, [sp, #104]	// id: 9515, l: 9516	
	ldr	 d0, [sp, #128]	// id: 9516, l: 9517	
	ldr	 d1, [sp, #120]	// id: 9517, l: 9518	
	fdiv	 d0, d1, d0	// id: 9518, l: 9519	
	str	 d0, [sp, #120]	// id: 9519, l: 9520	
	ldr	 d0, [sp, #128]	// id: 9520, l: 9521	
	ldr	 d1, [sp, #112]	// id: 9521, l: 9522	
	fdiv	 d0, d1, d0	// id: 9522, l: 9523	
	str	 d0, [sp, #112]	// id: 9523, l: 9524	
	ldr	 d0, [sp, #128]	// id: 9524, l: 9525	
	ldr	 d1, [sp, #104]	// id: 9525, l: 9526	
	fdiv	 d0, d1, d0	// id: 9526, l: 9527	
	str	 d0, [sp, #104]	// id: 9527, l: 9528	
	ldr	 w0, [sp, #44]	// id: 9528, l: 9529	
	cmp	 w0, #0x0	// id: 9529, l: 9530	
	beq	 .L101	// id: 9530, l: 9531	
	add	 x0, sp, #0x54	// id: 9531, l: 9532	
	mov	 x1, x0	// id: 9532, l: 9533	
	ldr	 x0, [sp, #136]	// id: 9533, l: 9534	
	bl	 loadValue	// id: 9534, l: 9535	
	add	 x0, sp, #0x50	// id: 9535, l: 9536	
	mov	 x1, x0	// id: 9536, l: 9537	
	ldr	 x0, [sp, #136]	// id: 9537, l: 9538	
	bl	 loadValue	// id: 9538, l: 9539	
	add	 x0, sp, #0x4c	// id: 9539, l: 9540	
	mov	 x1, x0	// id: 9540, l: 9541	
	ldr	 x0, [sp, #136]	// id: 9541, l: 9542	
	bl	 loadValue	// id: 9542, l: 9543	
	b	 .L102	// id: 9543, l: 9544	
.L101:	// id: 9544, l: 9545	
	add	 x2, sp, #0x4c	// id: 9545, l: 9546	
	add	 x1, sp, #0x50	// id: 9546, l: 9547	
	add	 x0, sp, #0x54	// id: 9547, l: 9548	
	mov	 x4, x2	// id: 9548, l: 9549	
	mov	 x3, x1	// id: 9549, l: 9550	
	mov	 x2, x0	// id: 9550, l: 9551	
	adrp	 x0, .LC16	// id: 9551, l: 9552	
	add	 x1, x0, :lo12:.LC16	// id: 9552, l: 9553	
	ldr	 x0, [sp, #136]	// id: 9553, l: 9554	
	bl	 __isoc99_fscanf	// id: 9554, l: 9555	
.L102:	// id: 9555, l: 9556	
	ldr	 s0, [sp, #84]	// id: 9556, l: 9557	
	fcvt	 d0, s0	// id: 9557, l: 9558	
	ldr	 d1, [sp, #120]	// id: 9558, l: 9559	
	fsub	 d0, d1, d0	// id: 9559, l: 9560	
	fcvt	 s0, d0	// id: 9560, l: 9561	
	str	 s0, [sp, #100]	// id: 9561, l: 9562	
	ldr	 s0, [sp, #80]	// id: 9562, l: 9563	
	fcvt	 d0, s0	// id: 9563, l: 9564	
	ldr	 d1, [sp, #112]	// id: 9564, l: 9565	
	fsub	 d0, d1, d0	// id: 9565, l: 9566	
	fcvt	 s0, d0	// id: 9566, l: 9567	
	str	 s0, [sp, #96]	// id: 9567, l: 9568	
	ldr	 s0, [sp, #76]	// id: 9568, l: 9569	
	fcvt	 d0, s0	// id: 9569, l: 9570	
	ldr	 d1, [sp, #104]	// id: 9570, l: 9571	
	fsub	 d0, d1, d0	// id: 9571, l: 9572	
	fcvt	 s0, d0	// id: 9572, l: 9573	
	str	 s0, [sp, #92]	// id: 9573, l: 9574	
	ldr	 s0, [sp, #100]	// id: 9574, l: 9575	
	fmul	 s1, s0, s0	// id: 9575, l: 9576	
	ldr	 s0, [sp, #96]	// id: 9576, l: 9577	
	fmul	 s0, s0, s0	// id: 9577, l: 9578	
	fadd	 s1, s1, s0	// id: 9578, l: 9579	
	ldr	 s0, [sp, #92]	// id: 9579, l: 9580	
	fmul	 s0, s0, s0	// id: 9580, l: 9581	
	fadd	 s0, s1, s0	// id: 9581, l: 9582	
	str	 s0, [sp, #88]	// id: 9582, l: 9583	
	ldr	 s1, [sp, #88]	// id: 9583, l: 9584	
	ldr	 s0, [sp, #144]	// id: 9584, l: 9585	
	fcmpe	 s1, s0	// id: 9585, l: 9586	
	ble	 .L103	// id: 9586, l: 9587	
	ldr	 s0, [sp, #88]	// id: 9587, l: 9588	
	str	 s0, [sp, #144]	// id: 9588, l: 9589	
.L103:	// id: 9589, l: 9590	
	ldr	 w0, [sp, #156]	// id: 9590, l: 9591	
	add	 w0, w0, #0x1	// id: 9591, l: 9592	
	str	 w0, [sp, #156]	// id: 9592, l: 9593	
.L100:	// id: 9593, l: 9594	
	ldr	 w0, [sp, #156]	// id: 9594, l: 9595	
	cmp	 w0, #0x63	// id: 9595, l: 9596	
	ble	 .L105	// id: 9596, l: 9597	
	ldr	 w0, [sp, #152]	// id: 9597, l: 9598	
	add	 w0, w0, #0x1	// id: 9598, l: 9599	
	str	 w0, [sp, #152]	// id: 9599, l: 9600	
.L99:	// id: 9600, l: 9601	
	ldr	 w0, [sp, #152]	// id: 9601, l: 9602	
	cmp	 w0, #0x63	// id: 9602, l: 9603	
	ble	 .L106	// id: 9603, l: 9604	
	ldr	 w0, [sp, #148]	// id: 9604, l: 9605	
	add	 w0, w0, #0x1	// id: 9605, l: 9606	
	str	 w0, [sp, #148]	// id: 9606, l: 9607	
.L98:	// id: 9607, l: 9608	
	ldr	 w0, [sp, #148]	// id: 9608, l: 9609	
	cmp	 w0, #0x81	// id: 9609, l: 9610	
	ble	 .L107	// id: 9610, l: 9611	
	ldr	 s0, [sp, #144]	// id: 9611, l: 9612	
	fcvt	 d0, s0	// id: 9612, l: 9613	
	bl	 sqrt	// id: 9613, l: 9614	
	fmov	 d8, d0	// id: 9614, l: 9615	
	ldr	 s0, [sp, #144]	// id: 9615, l: 9616	
	fcvt	 d0, s0	// id: 9616, l: 9617	
	bl	 sqrt	// id: 9617, l: 9618	
	adrp	 x0, .LC20	// id: 9618, l: 9619	
	ldr	 d1, [x0,:lo12:.LC20]	// id: 9619, l: 9620	
	fcmpe	 d0, d1	// id: 9620, l: 9621	
	ble	 .L113	// id: 9621, l: 9622	
	adrp	 x0, .LC17	// id: 9622, l: 9623	
	add	 x0, x0, :lo12:.LC17	// id: 9623, l: 9624	
	b	 .L110	// id: 9624, l: 9625	
.L113:	// id: 9625, l: 9626	
	adrp	 x0, .LC18	// id: 9626, l: 9627	
	add	 x0, x0, :lo12:.LC18	// id: 9627, l: 9628	
.L110:	// id: 9628, l: 9629	
	mov	 x1, x0	// id: 9629, l: 9630	
	fmov	 d0, d8	// id: 9630, l: 9631	
	adrp	 x0, .LC19	// id: 9631, l: 9632	
	add	 x0, x0, :lo12:.LC19	// id: 9632, l: 9633	
	bl	 printf	// id: 9633, l: 9634	
	ldr	 x0, [sp, #136]	// id: 9634, l: 9635	
	bl	 fclose	// id: 9635, l: 9636	
	nop		// id: 9636, l: 9637	
	ldr	 d8, [sp, #16]	// id: 9637, l: 9638	
	ldp	 x29, x30, [sp], #160	// id: 9638, l: 9639	
	.cfi_restore	30	// id: 9639, l: 9640	
	.cfi_restore	29	// id: 9640, l: 9641	
	.cfi_restore	72	// id: 9641, l: 9642	
	.cfi_def_cfa_offset	0	// id: 9642, l: 9643	
	ret		// id: 9643, l: 9644	
	.cfi_endproc		// id: 9644, l: 9645	
.LFE16:	// id: 9645, l: 9646	
	.size	LBM_compareVelocityField, .-LBM_compareVelocityField	// id: 9646, l: 9647	
	.section	.rodata	// id: 9647, l: 9648	
	.p2align	3, , 0	// id: 9648, l: 9649	
.LC2:	// id: 9649, l: 9650	
	.word	477218588	// id: 9650, l: 9651	
	.word	1068265927	// id: 9651, l: 9652	
	.p2align	3, , 0	// id: 9652, l: 9653	
.LC3:	// id: 9653, l: 9654	
	.word	477218588	// id: 9654, l: 9655	
	.word	1067217351	// id: 9655, l: 9656	
	.p2align	3, , 0	// id: 9656, l: 9657	
.LC5:	// id: 9657, l: 9658	
	.word	1202590843	// id: 9658, l: 9659	
	.word	1064598241	// id: 9659, l: 9660	
	.p2align	3, , 0	// id: 9660, l: 9661	
.LC6:	// id: 9661, l: 9662	
	.word	3539053052	// id: 9662, l: 9663	
	.word	1063281229	// id: 9663, l: 9664	
	.p2align	3, , 0	// id: 9664, l: 9665	
.LC7:	// id: 9665, l: 9666	
	.word	1810275495	// id: 9666, l: 9667	
	.word	1068559605	// id: 9667, l: 9668	
	.p2align	3, , 0	// id: 9668, l: 9669	
.LC8:	// id: 9669, l: 9670	
	.word	1202590843	// id: 9670, l: 9671	
	.word	1065646817	// id: 9671, l: 9672	
	.p2align	3, , 0	// id: 9672, l: 9673	
.LC10:	// id: 9673, l: 9674	
	.word	966823146	// id: 9674, l: 9675	
	.word	1177108057	// id: 9675, l: 9676	
	.p2align	3, , 0	// id: 9676, l: 9677	
.LC11:	// id: 9677, l: 9678	
	.word	966823146	// id: 9678, l: 9679	
	.word	-970375591	// id: 9679, l: 9680	
	.p2align	3, , 0	// id: 9680, l: 9681	
.LC20:	// id: 9681, l: 9682	
	.word	2296604913	// id: 9682, l: 9683	
	.word	1055193269	// id: 9683, l: 9684	
	.ident	"GCC: (GNU) 9.2.0"	// id: 9684, l: 9685	
	.section	.note.GNU-stack, "",@progbits	// id: 9685, l: 9686	
