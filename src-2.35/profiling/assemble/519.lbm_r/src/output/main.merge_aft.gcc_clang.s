	.arch	armv8-a	// id: 0, l: 1	
	.file	"main.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.local	srcGrid	// id: 3, l: 4	
	.comm	srcGrid, 8, 8	// id: 4, l: 5	
	.local	dstGrid	// id: 5, l: 6	
	.comm	dstGrid, 8, 8	// id: 6, l: 7	
	.section	.rodata	// id: 7, l: 8	
	.p2align	3, , 0	// id: 8, l: 9	
.LC1:	// id: 9, l: 10	
	.string	"timestep: %i\n"	// id: 10, l: 11	
	.text	0	// id: 11, l: 12	
	.p2align	2, , 0	// id: 12, l: 13	
	.globl	main	// id: 13, l: 14	
	.type	main, %function	// id: 14, l: 15	
main:	// id: 15, l: 16	
.LFB2:	// id: 16, l: 17	
	.cfi_startproc		// id: 17, l: 18	
	stp	 x29, x30, [sp, #-160]!	// id: 18, l: 19	
	.cfi_def_cfa_offset	160	// id: 19, l: 20	
	.cfi_offset	29, -160	// id: 20, l: 21	
	.cfi_offset	30, -152	// id: 21, l: 22	
	mov	 x29, sp	// id: 22, l: 23	
	str	 w0, [sp, #28]	// id: 23, l: 24	
	str	 x1, [sp, #16]	// id: 24, l: 25	
	add	 x0, sp, #0x78	// id: 25, l: 26	
	mov	 x2, x0	// id: 26, l: 27	
	ldr	 x1, [sp, #16]	// id: 27, l: 28	
	ldr	 w0, [sp, #28]	// id: 28, l: 29	
	bl	 MAIN_parseCommandLine	// id: 29, l: 30	
	add	 x0, sp, #0x78	// id: 30, l: 31	
	bl	 MAIN_printInfo	// id: 31, l: 32	
	add	 x0, sp, #0x78	// id: 32, l: 33	
	bl	 MAIN_initialize	// id: 33, l: 34	
	add	 x0, sp, #0x20	// id: 34, l: 35	
	bl	 MAIN_startClock	// id: 35, l: 36	
	mov	 w0, #0x1                   	// #1	// id: 36, l: 37	
	str	 w0, [sp, #156]	// id: 37, l: 38	
	b	 .L2	// id: 38, l: 39	
.L5:	// id: 39, l: 40	
	ldr	 w0, [sp, #140]	// id: 40, l: 41	
	cmp	 w0, #0x1	// id: 41, l: 42	
	bne	 .L3	// id: 42, l: 43	
	adrp	 x0, srcGrid	// id: 43, l: 44	
	add	 x0, x0, :lo12:srcGrid	// id: 44, l: 45	
	ldr	 x0, [x0]	// id: 45, l: 46	
	bl	 LBM_handleInOutFlow	// id: 46, l: 47	
.L3:	// id: 47, l: 48	
	adrp	 x0, srcGrid	// id: 48, l: 49	
	add	 x0, x0, :lo12:srcGrid	// id: 49, l: 50	
	ldr	 x2, [x0]	// id: 50, l: 51	
	adrp	 x0, dstGrid	// id: 51, l: 52	
	add	 x0, x0, :lo12:dstGrid	// id: 52, l: 53	
	ldr	 x0, [x0]	// id: 53, l: 54	
	mov	 x1, x0	// id: 54, l: 55	
	mov	 x0, x2	// id: 55, l: 56	
	bl	 LBM_performStreamCollideTRT	// id: 56, l: 57	
	adrp	 x0, dstGrid	// id: 57, l: 58	
	add	 x1, x0, :lo12:dstGrid	// id: 58, l: 59	
	adrp	 x0, srcGrid	// id: 59, l: 60	
	add	 x0, x0, :lo12:srcGrid	// id: 60, l: 61	
	bl	 LBM_swapGrids	// id: 61, l: 62	
	ldr	 w0, [sp, #156]	// id: 62, l: 63	
	and	 w0, w0, #0x3f	// id: 63, l: 64	
	cmp	 w0, #0x0	// id: 64, l: 65	
	bne	 .L4	// id: 65, l: 66	
	ldr	 w1, [sp, #156]	// id: 66, l: 67	
	adrp	 x0, .LC1	// id: 67, l: 68	
	add	 x0, x0, :lo12:.LC1	// id: 68, l: 69	
	bl	 printf	// id: 69, l: 70	
	adrp	 x0, srcGrid	// id: 70, l: 71	
	add	 x0, x0, :lo12:srcGrid	// id: 71, l: 72	
	ldr	 x0, [x0]	// id: 72, l: 73	
	bl	 LBM_showGridStatistics	// id: 73, l: 74	
.L4:	// id: 74, l: 75	
	ldr	 w0, [sp, #156]	// id: 75, l: 76	
	add	 w0, w0, #0x1	// id: 76, l: 77	
	str	 w0, [sp, #156]	// id: 77, l: 78	
.L2:	// id: 78, l: 79	
	ldr	 w0, [sp, #120]	// id: 79, l: 80	
	ldr	 w1, [sp, #156]	// id: 80, l: 81	
	cmp	 w1, w0	// id: 81, l: 82	
	ble	 .L5	// id: 82, l: 83	
	add	 x1, sp, #0x78	// id: 83, l: 84	
	add	 x0, sp, #0x20	// id: 84, l: 85	
	bl	 MAIN_stopClock	// id: 85, l: 86	
	add	 x0, sp, #0x78	// id: 86, l: 87	
	bl	 MAIN_finalize	// id: 87, l: 88	
	mov	 w0, #0x0                   	// #0	// id: 88, l: 89	
	ldp	 x29, x30, [sp], #160	// id: 89, l: 90	
	.cfi_restore	30	// id: 90, l: 91	
	.cfi_restore	29	// id: 91, l: 92	
	.cfi_def_cfa_offset	0	// id: 92, l: 93	
	ret		// id: 93, l: 94	
	.cfi_endproc		// id: 94, l: 95	
.LFE2:	// id: 95, l: 96	
	.size	main, .-main	// id: 96, l: 97	
	.section	.rodata	// id: 97, l: 98	
	.p2align	3, , 0	// id: 98, l: 99	
.LC2:	// id: 99, l: 100	
	.string	"syntax: lbm <time steps> <result file> <0: nil, 1: cmp, 2: str> <0: ldc, 1: channel flow> [<obstacle file>]"	// id: 100, l: 101	
	.p2align	3, , 0	// id: 101, l: 102	
.LC3:	// id: 102, l: 103	
	.string	"MAIN_parseCommandLine: cannot stat obstacle file '%s'\n"	// id: 103, l: 104	
	.p2align	3, , 0	// id: 104, l: 105	
.LC4:	// id: 105, l: 106	
	.string	"MAIN_parseCommandLine:\n\tsize of file '%s' is %i bytes\n\texpected size is %i bytes\n"	// id: 106, l: 107	
	.p2align	3, , 0	// id: 107, l: 108	
.LC5:	// id: 108, l: 109	
	.string	"MAIN_parseCommandLine: cannot stat result file '%s'\n"	// id: 109, l: 110	
	.text	0	// id: 110, l: 111	
	.p2align	2, , 0	// id: 111, l: 112	
	.globl	MAIN_parseCommandLine	// id: 112, l: 113	
	.type	MAIN_parseCommandLine, %function	// id: 113, l: 114	
MAIN_parseCommandLine:	// id: 114, l: 115	
.LFB3:	// id: 115, l: 116	
	.cfi_startproc		// id: 116, l: 117	
	stp	 x29, x30, [sp, #-176]!	// id: 117, l: 118	
	.cfi_def_cfa_offset	176	// id: 118, l: 119	
	.cfi_offset	29, -176	// id: 119, l: 120	
	.cfi_offset	30, -168	// id: 120, l: 121	
	mov	 x29, sp	// id: 121, l: 122	
	str	 w0, [sp, #44]	// id: 122, l: 123	
	str	 x1, [sp, #32]	// id: 123, l: 124	
	str	 x2, [sp, #24]	// id: 124, l: 125	
	ldr	 w0, [sp, #44]	// id: 125, l: 126	
	cmp	 w0, #0x4	// id: 126, l: 127	
	ble	 .L8	// id: 127, l: 128	
	ldr	 w0, [sp, #44]	// id: 128, l: 129	
	cmp	 w0, #0x6	// id: 129, l: 130	
	ble	 .L9	// id: 130, l: 131	
.L8:	// id: 131, l: 132	
	adrp	 x0, .LC2	// id: 132, l: 133	
	add	 x0, x0, :lo12:.LC2	// id: 133, l: 134	
	bl	 puts	// id: 134, l: 135	
	mov	 w0, #0x1                   	// #1	// id: 135, l: 136	
	bl	 exit	// id: 136, l: 137	
.L9:	// id: 137, l: 138	
	ldr	 x0, [sp, #32]	// id: 138, l: 139	
	add	 x0, x0, #0x8	// id: 139, l: 140	
	ldr	 x0, [x0]	// id: 140, l: 141	
	bl	 atoi	// id: 141, l: 142	
	mov	 w1, w0	// id: 142, l: 143	
	ldr	 x0, [sp, #24]	// id: 143, l: 144	
	str	 w1, [x0]	// id: 144, l: 145	
	ldr	 x0, [sp, #32]	// id: 145, l: 146	
	ldr	 x1, [x0, #16]	// id: 146, l: 147	
	ldr	 x0, [sp, #24]	// id: 147, l: 148	
	str	 x1, [x0, #8]	// id: 148, l: 149	
	ldr	 x0, [sp, #32]	// id: 149, l: 150	
	add	 x0, x0, #0x18	// id: 150, l: 151	
	ldr	 x0, [x0]	// id: 151, l: 152	
	bl	 atoi	// id: 152, l: 153	
	mov	 w1, w0	// id: 153, l: 154	
	ldr	 x0, [sp, #24]	// id: 154, l: 155	
	str	 w1, [x0, #16]	// id: 155, l: 156	
	ldr	 x0, [sp, #32]	// id: 156, l: 157	
	add	 x0, x0, #0x20	// id: 157, l: 158	
	ldr	 x0, [x0]	// id: 158, l: 159	
	bl	 atoi	// id: 159, l: 160	
	mov	 w1, w0	// id: 160, l: 161	
	ldr	 x0, [sp, #24]	// id: 161, l: 162	
	str	 w1, [x0, #20]	// id: 162, l: 163	
	ldr	 w0, [sp, #44]	// id: 163, l: 164	
	cmp	 w0, #0x6	// id: 164, l: 165	
	bne	 .L10	// id: 165, l: 166	
	ldr	 x0, [sp, #32]	// id: 166, l: 167	
	ldr	 x1, [x0, #40]	// id: 167, l: 168	
	ldr	 x0, [sp, #24]	// id: 168, l: 169	
	str	 x1, [x0, #24]	// id: 169, l: 170	
	ldr	 x0, [sp, #24]	// id: 170, l: 171	
	ldr	 x0, [x0, #24]	// id: 171, l: 172	
	add	 x1, sp, #0x30	// id: 172, l: 173	
	bl	 stat	// id: 173, l: 174	
	cmp	 w0, #0x0	// id: 174, l: 175	
	beq	 .L11	// id: 175, l: 176	
	ldr	 x0, [sp, #24]	// id: 176, l: 177	
	ldr	 x0, [x0, #24]	// id: 177, l: 178	
	mov	 x1, x0	// id: 178, l: 179	
	adrp	 x0, .LC3	// id: 179, l: 180	
	add	 x0, x0, :lo12:.LC3	// id: 180, l: 181	
	bl	 printf	// id: 181, l: 182	
	mov	 w0, #0x1                   	// #1	// id: 182, l: 183	
	bl	 exit	// id: 183, l: 184	
.L11:	// id: 184, l: 185	
	ldr	 x1, [sp, #96]	// id: 185, l: 186	
	mov	 x0, #0x96a                 	// #2410	// id: 186, l: 187	
	movk	 x0, #0x14, lsl #16	// id: 187, l: 188	
	cmp	 x1, x0	// id: 188, l: 189	
	beq	 .L12	// id: 189, l: 190	
	ldr	 x0, [sp, #24]	// id: 190, l: 191	
	ldr	 x0, [x0, #24]	// id: 191, l: 192	
	ldr	 x1, [sp, #96]	// id: 192, l: 193	
	mov	 w3, #0x96a                 	// #2410	// id: 193, l: 194	
	movk	 w3, #0x14, lsl #16	// id: 194, l: 195	
	mov	 w2, w1	// id: 195, l: 196	
	mov	 x1, x0	// id: 196, l: 197	
	adrp	 x0, .LC4	// id: 197, l: 198	
	add	 x0, x0, :lo12:.LC4	// id: 198, l: 199	
	bl	 printf	// id: 199, l: 200	
	mov	 w0, #0x1                   	// #1	// id: 200, l: 201	
	bl	 exit	// id: 201, l: 202	
.L10:	// id: 202, l: 203	
	ldr	 x0, [sp, #24]	// id: 203, l: 204	
	str	 xzr, [x0, #24]	// id: 204, l: 205	
.L12:	// id: 205, l: 206	
	ldr	 x0, [sp, #24]	// id: 206, l: 207	
	ldr	 w0, [x0, #16]	// id: 207, l: 208	
	cmp	 w0, #0x1	// id: 208, l: 209	
	bne	 .L14	// id: 209, l: 210	
	ldr	 x0, [sp, #24]	// id: 210, l: 211	
	ldr	 x0, [x0, #8]	// id: 211, l: 212	
	add	 x1, sp, #0x30	// id: 212, l: 213	
	bl	 stat	// id: 213, l: 214	
	cmp	 w0, #0x0	// id: 214, l: 215	
	beq	 .L14	// id: 215, l: 216	
	ldr	 x0, [sp, #24]	// id: 216, l: 217	
	ldr	 x0, [x0, #8]	// id: 217, l: 218	
	mov	 x1, x0	// id: 218, l: 219	
	adrp	 x0, .LC5	// id: 219, l: 220	
	add	 x0, x0, :lo12:.LC5	// id: 220, l: 221	
	bl	 printf	// id: 221, l: 222	
	mov	 w0, #0x1                   	// #1	// id: 222, l: 223	
	bl	 exit	// id: 223, l: 224	
.L14:	// id: 224, l: 225	
	nop		// id: 225, l: 226	
	ldp	 x29, x30, [sp], #176	// id: 226, l: 227	
	.cfi_restore	30	// id: 227, l: 228	
	.cfi_restore	29	// id: 228, l: 229	
	.cfi_def_cfa_offset	0	// id: 229, l: 230	
	ret		// id: 230, l: 231	
	.cfi_endproc		// id: 231, l: 232	
.LFE3:	// id: 232, l: 233	
	.size	MAIN_parseCommandLine, .-MAIN_parseCommandLine	// id: 233, l: 234	
	.section	.rodata	// id: 234, l: 235	
	.p2align	3, , 0	// id: 235, l: 236	
.LC8:	// id: 236, l: 237	
	.string	"<none>"	// id: 237, l: 238	
	.p2align	3, , 0	// id: 238, l: 239	
.LC9:	// id: 239, l: 240	
	.string	"MAIN_printInfo:\n\tgrid size      : %i x %i x %i = %.2f * 10^6 Cells\n\tnTimeSteps     : %i\n\tresult file    : %s\n\taction         : %s\n\tsimulation type: %s\n\tobstacle file  : %s\n\n"	// id: 240, l: 241	
	.text	0	// id: 241, l: 242	
	.p2align	2, , 0	// id: 242, l: 243	
	.globl	MAIN_printInfo	// id: 243, l: 244	
	.type	MAIN_printInfo, %function	// id: 244, l: 245	
MAIN_printInfo:	// id: 245, l: 246	
.LFB4:	// id: 246, l: 247	
	.cfi_startproc		// id: 247, l: 248	
	sub	 sp, sp, #0xf0	// id: 248, l: 249	
	.cfi_def_cfa_offset	240	// id: 249, l: 250	
	stp	 x29, x30, [sp, #16]	// id: 250, l: 251	
	.cfi_offset	29, -224	// id: 251, l: 252	
	.cfi_offset	30, -216	// id: 252, l: 253	
	add	 x29, sp, #0x10	// id: 253, l: 254	
	str	 x0, [sp, #40]	// id: 254, l: 255	
	adrp	 x0, .LC0	// id: 255, l: 256	
	add	 x1, x0, :lo12:.LC0	// id: 256, l: 257	
	add	 x0, sp, #0x90	// id: 257, l: 258	
	ldp	 x2, x3, [x1]	// id: 258, l: 259	
	stp	 x2, x3, [x0]	// id: 259, l: 260	
	ldp	 x2, x3, [x1, #16]	// id: 260, l: 261	
	stp	 x2, x3, [x0, #16]	// id: 261, l: 262	
	ldp	 x2, x3, [x1, #32]	// id: 262, l: 263	
	stp	 x2, x3, [x0, #32]	// id: 263, l: 264	
	ldp	 x2, x3, [x1, #48]	// id: 264, l: 265	
	stp	 x2, x3, [x0, #48]	// id: 265, l: 266	
	ldp	 x2, x3, [x1, #64]	// id: 266, l: 267	
	stp	 x2, x3, [x0, #64]	// id: 267, l: 268	
	ldp	 x2, x3, [x1, #80]	// id: 268, l: 269	
	stp	 x2, x3, [x0, #80]	// id: 269, l: 270	
	stp	 xzr, xzr, [sp, #48]	// id: 270, l: 271	
	stp	 xzr, xzr, [sp, #64]	// id: 271, l: 272	
	stp	 xzr, xzr, [sp, #80]	// id: 272, l: 273	
	stp	 xzr, xzr, [sp, #96]	// id: 273, l: 274	
	stp	 xzr, xzr, [sp, #112]	// id: 274, l: 275	
	stp	 xzr, xzr, [sp, #128]	// id: 275, l: 276	
	adrp	 x0, .LC6	// id: 276, l: 277	
	add	 x0, x0, :lo12:.LC6	// id: 277, l: 278	
	add	 x2, sp, #0x30	// id: 278, l: 279	
	mov	 x3, x0	// id: 279, l: 280	
	ldp	 x0, x1, [x3]	// id: 280, l: 281	
	stp	 x0, x1, [x2]	// id: 281, l: 282	
	ldrh	 w0, [x3, #16]	// id: 282, l: 283	
	strh	 w0, [x2, #16]	// id: 283, l: 284	
	str	 xzr, [sp, #66]	// id: 284, l: 285	
	str	 wzr, [sp, #74]	// id: 285, l: 286	
	strh	 wzr, [sp, #78]	// id: 286, l: 287	
	adrp	 x0, .LC7	// id: 287, l: 288	
	add	 x1, x0, :lo12:.LC7	// id: 288, l: 289	
	add	 x0, sp, #0x50	// id: 289, l: 290	
	ldr	 x2, [x1]	// id: 290, l: 291	
	str	 x2, [x0]	// id: 291, l: 292	
	ldr	 x1, [x1, #5]	// id: 292, l: 293	
	str	 x1, [x0, #5]	// id: 293, l: 294	
	add	 x0, sp, #0x5	// id: 294, l: 295	
	stp	 xzr, xzr, [x0, #88]	// id: 295, l: 296	
	strh	 wzr, [sp, #109]	// id: 296, l: 297	
	strb	 wzr, [sp, #111]	// id: 297, l: 298	
	ldr	 x0, [sp, #40]	// id: 298, l: 299	
	ldr	 w2, [x0]	// id: 299, l: 300	
	ldr	 x0, [sp, #40]	// id: 300, l: 301	
	ldr	 x3, [x0, #8]	// id: 301, l: 302	
	ldr	 x0, [sp, #40]	// id: 302, l: 303	
	ldr	 w0, [x0, #16]	// id: 303, l: 304	
	add	 x1, sp, #0x90	// id: 304, l: 305	
	uxtw	 w0, w0	// id: 305, l: 306	
	lsl	 x0, x0, #5	// id: 306, l: 307	
	add	 x4, x1, x0	// id: 307, l: 308	
	ldr	 x0, [sp, #40]	// id: 308, l: 309	
	ldr	 w0, [x0, #20]	// id: 309, l: 310	
	add	 x1, sp, #0x30	// id: 310, l: 311	
	uxtw	 w0, w0	// id: 311, l: 312	
	lsl	 x0, x0, #5	// id: 312, l: 313	
	add	 x1, x1, x0	// id: 313, l: 314	
	ldr	 x0, [sp, #40]	// id: 314, l: 315	
	ldr	 x0, [x0, #24]	// id: 315, l: 316	
	cmp	 x0, #0x0	// id: 316, l: 317	
	beq	 .L16	// id: 317, l: 318	
	ldr	 x0, [sp, #40]	// id: 318, l: 319	
	ldr	 x0, [x0, #24]	// id: 319, l: 320	
	b	 .L17	// id: 320, l: 321	
.L16:	// id: 321, l: 322	
	adrp	 x0, .LC8	// id: 322, l: 323	
	add	 x0, x0, :lo12:.LC8	// id: 323, l: 324	
.L17:	// id: 324, l: 325	
	str	 x0, [sp]	// id: 325, l: 326	
	mov	 x7, x1	// id: 326, l: 327	
	mov	 x6, x4	// id: 327, l: 328	
	mov	 x5, x3	// id: 328, l: 329	
	mov	 w4, w2	// id: 329, l: 330	
	mov	 x0, #0xcccccccccccccccc    	// #-3689348814741910324	// id: 330, l: 331	
	movk	 x0, #0x3ff4, lsl #48	// id: 331, l: 332	
	fmov	 d0, x0	// id: 332, l: 333	
	mov	 w3, #0x82                  	// #130	// id: 333, l: 334	
	mov	 w2, #0x64                  	// #100	// id: 334, l: 335	
	mov	 w1, #0x64                  	// #100	// id: 335, l: 336	
	adrp	 x0, .LC9	// id: 336, l: 337	
	add	 x0, x0, :lo12:.LC9	// id: 337, l: 338	
	bl	 printf	// id: 338, l: 339	
	nop		// id: 339, l: 340	
	ldp	 x29, x30, [sp, #16]	// id: 340, l: 341	
	add	 sp, sp, #0xf0	// id: 341, l: 342	
	.cfi_restore	29	// id: 342, l: 343	
	.cfi_restore	30	// id: 343, l: 344	
	.cfi_def_cfa_offset	0	// id: 344, l: 345	
	ret		// id: 345, l: 346	
	.cfi_endproc		// id: 346, l: 347	
.LFE4:	// id: 347, l: 348	
	.size	MAIN_printInfo, .-MAIN_printInfo	// id: 348, l: 349	
	.section	.rodata	// id: 349, l: 350	
	.p2align	3, , 0	// id: 350, l: 351	
.LC0:	// id: 351, l: 352	
	.string	"nothing"	// id: 352, l: 353	
	.space	24, 0	// id: 353, l: 354	
	.string	"compare"	// id: 354, l: 355	
	.space	24, 0	// id: 355, l: 356	
	.string	"store"	// id: 356, l: 357	
	.space	26, 0	// id: 357, l: 358	
	.p2align	3, , 0	// id: 358, l: 359	
.LC6:	// id: 359, l: 360	
	.string	"lid-driven cavity"	// id: 360, l: 361	
	.space	14, 0	// id: 361, l: 362	
	.p2align	3, , 0	// id: 362, l: 363	
.LC7:	// id: 363, l: 364	
	.string	"channel flow"	// id: 364, l: 365	
	.space	19, 0	// id: 365, l: 366	
	.text	0	// id: 366, l: 367	
	.p2align	2, , 0	// id: 367, l: 368	
	.globl	MAIN_initialize	// id: 368, l: 369	
	.type	MAIN_initialize, %function	// id: 369, l: 370	
MAIN_initialize:	// id: 370, l: 371	
.LFB5:	// id: 371, l: 372	
	.cfi_startproc		// id: 372, l: 373	
	stp	 x29, x30, [sp, #-32]!	// id: 373, l: 374	
	.cfi_def_cfa_offset	32	// id: 374, l: 375	
	.cfi_offset	29, -32	// id: 375, l: 376	
	.cfi_offset	30, -24	// id: 376, l: 377	
	mov	 x29, sp	// id: 377, l: 378	
	str	 x0, [sp, #24]	// id: 378, l: 379	
	adrp	 x0, srcGrid	// id: 379, l: 380	
	add	 x0, x0, :lo12:srcGrid	// id: 380, l: 381	
	bl	 LBM_allocateGrid	// id: 381, l: 382	
	adrp	 x0, dstGrid	// id: 382, l: 383	
	add	 x0, x0, :lo12:dstGrid	// id: 383, l: 384	
	bl	 LBM_allocateGrid	// id: 384, l: 385	
	adrp	 x0, srcGrid	// id: 385, l: 386	
	add	 x0, x0, :lo12:srcGrid	// id: 386, l: 387	
	ldr	 x0, [x0]	// id: 387, l: 388	
	bl	 LBM_initializeGrid	// id: 388, l: 389	
	adrp	 x0, dstGrid	// id: 389, l: 390	
	add	 x0, x0, :lo12:dstGrid	// id: 390, l: 391	
	ldr	 x0, [x0]	// id: 391, l: 392	
	bl	 LBM_initializeGrid	// id: 392, l: 393	
	ldr	 x0, [sp, #24]	// id: 393, l: 394	
	ldr	 x0, [x0, #24]	// id: 394, l: 395	
	cmp	 x0, #0x0	// id: 395, l: 396	
	beq	 .L19	// id: 396, l: 397	
	adrp	 x0, srcGrid	// id: 397, l: 398	
	add	 x0, x0, :lo12:srcGrid	// id: 398, l: 399	
	ldr	 x2, [x0]	// id: 399, l: 400	
	ldr	 x0, [sp, #24]	// id: 400, l: 401	
	ldr	 x0, [x0, #24]	// id: 401, l: 402	
	mov	 x1, x0	// id: 402, l: 403	
	mov	 x0, x2	// id: 403, l: 404	
	bl	 LBM_loadObstacleFile	// id: 404, l: 405	
	adrp	 x0, dstGrid	// id: 405, l: 406	
	add	 x0, x0, :lo12:dstGrid	// id: 406, l: 407	
	ldr	 x2, [x0]	// id: 407, l: 408	
	ldr	 x0, [sp, #24]	// id: 408, l: 409	
	ldr	 x0, [x0, #24]	// id: 409, l: 410	
	mov	 x1, x0	// id: 410, l: 411	
	mov	 x0, x2	// id: 411, l: 412	
	bl	 LBM_loadObstacleFile	// id: 412, l: 413	
.L19:	// id: 413, l: 414	
	ldr	 x0, [sp, #24]	// id: 414, l: 415	
	ldr	 w0, [x0, #20]	// id: 415, l: 416	
	cmp	 w0, #0x1	// id: 416, l: 417	
	bne	 .L20	// id: 417, l: 418	
	adrp	 x0, srcGrid	// id: 418, l: 419	
	add	 x0, x0, :lo12:srcGrid	// id: 419, l: 420	
	ldr	 x0, [x0]	// id: 420, l: 421	
	bl	 LBM_initializeSpecialCellsForChannel	// id: 421, l: 422	
	adrp	 x0, dstGrid	// id: 422, l: 423	
	add	 x0, x0, :lo12:dstGrid	// id: 423, l: 424	
	ldr	 x0, [x0]	// id: 424, l: 425	
	bl	 LBM_initializeSpecialCellsForChannel	// id: 425, l: 426	
	b	 .L21	// id: 426, l: 427	
.L20:	// id: 427, l: 428	
	adrp	 x0, srcGrid	// id: 428, l: 429	
	add	 x0, x0, :lo12:srcGrid	// id: 429, l: 430	
	ldr	 x0, [x0]	// id: 430, l: 431	
	bl	 LBM_initializeSpecialCellsForLDC	// id: 431, l: 432	
	adrp	 x0, dstGrid	// id: 432, l: 433	
	add	 x0, x0, :lo12:dstGrid	// id: 433, l: 434	
	ldr	 x0, [x0]	// id: 434, l: 435	
	bl	 LBM_initializeSpecialCellsForLDC	// id: 435, l: 436	
.L21:	// id: 436, l: 437	
	adrp	 x0, srcGrid	// id: 437, l: 438	
	add	 x0, x0, :lo12:srcGrid	// id: 438, l: 439	
	ldr	 x0, [x0]	// id: 439, l: 440	
	bl	 LBM_showGridStatistics	// id: 440, l: 441	
	nop		// id: 441, l: 442	
	ldp	 x29, x30, [sp], #32	// id: 442, l: 443	
	.cfi_restore	30	// id: 443, l: 444	
	.cfi_restore	29	// id: 444, l: 445	
	.cfi_def_cfa_offset	0	// id: 445, l: 446	
	ret		// id: 446, l: 447	
	.cfi_endproc		// id: 447, l: 448	
.LFE5:	// id: 448, l: 449	
	.size	MAIN_initialize, .-MAIN_initialize	// id: 449, l: 450	
	.p2align	2, , 0	// id: 450, l: 451	
	.globl	MAIN_finalize	// id: 451, l: 452	
	.type	MAIN_finalize, %function	// id: 452, l: 453	
MAIN_finalize:	// id: 453, l: 454	
.LFB6:	// id: 454, l: 455	
	.cfi_startproc		// id: 455, l: 456	
	stp	 x29, x30, [sp, #-32]!	// id: 456, l: 457	
	.cfi_def_cfa_offset	32	// id: 457, l: 458	
	.cfi_offset	29, -32	// id: 458, l: 459	
	.cfi_offset	30, -24	// id: 459, l: 460	
	mov	 x29, sp	// id: 460, l: 461	
	str	 x0, [sp, #24]	// id: 461, l: 462	
	adrp	 x0, srcGrid	// id: 462, l: 463	
	add	 x0, x0, :lo12:srcGrid	// id: 463, l: 464	
	ldr	 x0, [x0]	// id: 464, l: 465	
	bl	 LBM_showGridStatistics	// id: 465, l: 466	
	ldr	 x0, [sp, #24]	// id: 466, l: 467	
	ldr	 w0, [x0, #16]	// id: 467, l: 468	
	cmp	 w0, #0x1	// id: 468, l: 469	
	bne	 .L23	// id: 469, l: 470	
	adrp	 x0, srcGrid	// id: 470, l: 471	
	add	 x0, x0, :lo12:srcGrid	// id: 471, l: 472	
	ldr	 x3, [x0]	// id: 472, l: 473	
	ldr	 x0, [sp, #24]	// id: 473, l: 474	
	ldr	 x0, [x0, #8]	// id: 474, l: 475	
	mov	 w2, #0xffffffff            	// #-1	// id: 475, l: 476	
	mov	 x1, x0	// id: 476, l: 477	
	mov	 x0, x3	// id: 477, l: 478	
	bl	 LBM_compareVelocityField	// id: 478, l: 479	
.L23:	// id: 479, l: 480	
	ldr	 x0, [sp, #24]	// id: 480, l: 481	
	ldr	 w0, [x0, #16]	// id: 481, l: 482	
	cmp	 w0, #0x2	// id: 482, l: 483	
	bne	 .L24	// id: 483, l: 484	
	adrp	 x0, srcGrid	// id: 484, l: 485	
	add	 x0, x0, :lo12:srcGrid	// id: 485, l: 486	
	ldr	 x3, [x0]	// id: 486, l: 487	
	ldr	 x0, [sp, #24]	// id: 487, l: 488	
	ldr	 x0, [x0, #8]	// id: 488, l: 489	
	mov	 w2, #0xffffffff            	// #-1	// id: 489, l: 490	
	mov	 x1, x0	// id: 490, l: 491	
	mov	 x0, x3	// id: 491, l: 492	
	bl	 LBM_storeVelocityField	// id: 492, l: 493	
.L24:	// id: 493, l: 494	
	adrp	 x0, srcGrid	// id: 494, l: 495	
	add	 x0, x0, :lo12:srcGrid	// id: 495, l: 496	
	bl	 LBM_freeGrid	// id: 496, l: 497	
	adrp	 x0, dstGrid	// id: 497, l: 498	
	add	 x0, x0, :lo12:dstGrid	// id: 498, l: 499	
	bl	 LBM_freeGrid	// id: 499, l: 500	
	nop		// id: 500, l: 501	
	ldp	 x29, x30, [sp], #32	// id: 501, l: 502	
	.cfi_restore	30	// id: 502, l: 503	
	.cfi_restore	29	// id: 503, l: 504	
	.cfi_def_cfa_offset	0	// id: 504, l: 505	
	ret		// id: 505, l: 506	
	.cfi_endproc		// id: 506, l: 507	
.LFE6:	// id: 507, l: 508	
	.size	MAIN_finalize, .-MAIN_finalize	// id: 508, l: 509	
	.p2align	2, , 0	// id: 509, l: 510	
	.globl	MAIN_startClock	// id: 510, l: 511	
	.type	MAIN_startClock, %function	// id: 511, l: 512	
MAIN_startClock:	// id: 512, l: 513	
.LFB7:	// id: 513, l: 514	
	.cfi_startproc		// id: 514, l: 515	
	stp	 x29, x30, [sp, #-32]!	// id: 515, l: 516	
	.cfi_def_cfa_offset	32	// id: 516, l: 517	
	.cfi_offset	29, -32	// id: 517, l: 518	
	.cfi_offset	30, -24	// id: 518, l: 519	
	mov	 x29, sp	// id: 519, l: 520	
	str	 x0, [sp, #24]	// id: 520, l: 521	
	mov	 w0, #0x2                   	// #2	// id: 521, l: 522	
	bl	 sysconf	// id: 522, l: 523	
	scvtf	 d0, x0	// id: 523, l: 524	
	fmov	 d1, #1.000000000000000000e+00	// id: 524, l: 525	
	fdiv	 d0, d1, d0	// id: 525, l: 526	
	ldr	 x0, [sp, #24]	// id: 526, l: 527	
	str	 d0, [x0]	// id: 527, l: 528	
	ldr	 x0, [sp, #24]	// id: 528, l: 529	
	add	 x0, x0, #0x18	// id: 529, l: 530	
	bl	 times	// id: 530, l: 531	
	mov	 x1, x0	// id: 531, l: 532	
	ldr	 x0, [sp, #24]	// id: 532, l: 533	
	str	 x1, [x0, #8]	// id: 533, l: 534	
	nop		// id: 534, l: 535	
	ldp	 x29, x30, [sp], #32	// id: 535, l: 536	
	.cfi_restore	30	// id: 536, l: 537	
	.cfi_restore	29	// id: 537, l: 538	
	.cfi_def_cfa_offset	0	// id: 538, l: 539	
	ret		// id: 539, l: 540	
	.cfi_endproc		// id: 540, l: 541	
.LFE7:	// id: 541, l: 542	
	.size	MAIN_startClock, .-MAIN_startClock	// id: 542, l: 543	
	.section	.rodata	// id: 543, l: 544	
	.p2align	3, , 0	// id: 544, l: 545	
.LC10:	// id: 545, l: 546	
	.string	"MAIN_stopClock:\n\tusr: %7.2f sys: %7.2f tot: %7.2f wct: %7.2f MLUPS: %5.2f\n\n"	// id: 546, l: 547	
	.text	0	// id: 547, l: 548	
	.p2align	2, , 0	// id: 548, l: 549	
	.globl	MAIN_stopClock	// id: 549, l: 550	
	.type	MAIN_stopClock, %function	// id: 550, l: 551	
MAIN_stopClock:	// id: 551, l: 552	
.LFB8:	// id: 552, l: 553	
	.cfi_startproc		// id: 553, l: 554	
	stp	 x29, x30, [sp, #-32]!	// id: 554, l: 555	
	.cfi_def_cfa_offset	32	// id: 555, l: 556	
	.cfi_offset	29, -32	// id: 556, l: 557	
	.cfi_offset	30, -24	// id: 557, l: 558	
	mov	 x29, sp	// id: 558, l: 559	
	str	 x0, [sp, #24]	// id: 559, l: 560	
	str	 x1, [sp, #16]	// id: 560, l: 561	
	ldr	 x0, [sp, #24]	// id: 561, l: 562	
	add	 x0, x0, #0x38	// id: 562, l: 563	
	bl	 times	// id: 563, l: 564	
	mov	 x1, x0	// id: 564, l: 565	
	ldr	 x0, [sp, #24]	// id: 565, l: 566	
	str	 x1, [x0, #16]	// id: 566, l: 567	
	ldr	 x0, [sp, #24]	// id: 567, l: 568	
	ldr	 x1, [x0, #56]	// id: 568, l: 569	
	ldr	 x0, [sp, #24]	// id: 569, l: 570	
	ldr	 x0, [x0, #24]	// id: 570, l: 571	
	sub	 x0, x1, x0	// id: 571, l: 572	
	fmov	 d0, x0	// id: 572, l: 573	
	scvtf	 d1, d0	// id: 573, l: 574	
	ldr	 x0, [sp, #24]	// id: 574, l: 575	
	ldr	 d0, [x0]	// id: 575, l: 576	
	fmul	 d5, d1, d0	// id: 576, l: 577	
	ldr	 x0, [sp, #24]	// id: 577, l: 578	
	ldr	 x1, [x0, #64]	// id: 578, l: 579	
	ldr	 x0, [sp, #24]	// id: 579, l: 580	
	ldr	 x0, [x0, #32]	// id: 580, l: 581	
	sub	 x0, x1, x0	// id: 581, l: 582	
	fmov	 d0, x0	// id: 582, l: 583	
	scvtf	 d1, d0	// id: 583, l: 584	
	ldr	 x0, [sp, #24]	// id: 584, l: 585	
	ldr	 d0, [x0]	// id: 585, l: 586	
	fmul	 d6, d1, d0	// id: 586, l: 587	
	ldr	 x0, [sp, #24]	// id: 587, l: 588	
	ldr	 x1, [x0, #56]	// id: 588, l: 589	
	ldr	 x0, [sp, #24]	// id: 589, l: 590	
	ldr	 x0, [x0, #24]	// id: 590, l: 591	
	sub	 x1, x1, x0	// id: 591, l: 592	
	ldr	 x0, [sp, #24]	// id: 592, l: 593	
	ldr	 x0, [x0, #64]	// id: 593, l: 594	
	add	 x1, x1, x0	// id: 594, l: 595	
	ldr	 x0, [sp, #24]	// id: 595, l: 596	
	ldr	 x0, [x0, #32]	// id: 596, l: 597	
	sub	 x0, x1, x0	// id: 597, l: 598	
	fmov	 d0, x0	// id: 598, l: 599	
	scvtf	 d1, d0	// id: 599, l: 600	
	ldr	 x0, [sp, #24]	// id: 600, l: 601	
	ldr	 d0, [x0]	// id: 601, l: 602	
	fmul	 d2, d1, d0	// id: 602, l: 603	
	ldr	 x0, [sp, #24]	// id: 603, l: 604	
	ldr	 x1, [x0, #16]	// id: 604, l: 605	
	ldr	 x0, [sp, #24]	// id: 605, l: 606	
	ldr	 x0, [x0, #8]	// id: 606, l: 607	
	sub	 x0, x1, x0	// id: 607, l: 608	
	fmov	 d0, x0	// id: 608, l: 609	
	scvtf	 d1, d0	// id: 609, l: 610	
	ldr	 x0, [sp, #24]	// id: 610, l: 611	
	ldr	 d0, [x0]	// id: 611, l: 612	
	fmul	 d3, d1, d0	// id: 612, l: 613	
	ldr	 x0, [sp, #16]	// id: 613, l: 614	
	ldr	 w0, [x0]	// id: 614, l: 615	
	scvtf	 d0, w0	// id: 615, l: 616	
	mov	 x0, #0xcccccccccccccccc    	// #-3689348814741910324	// id: 616, l: 617	
	movk	 x0, #0x3ff4, lsl #48	// id: 617, l: 618	
	fmov	 d1, x0	// id: 618, l: 619	
	fmul	 d1, d0, d1	// id: 619, l: 620	
	ldr	 x0, [sp, #24]	// id: 620, l: 621	
	ldr	 x1, [x0, #16]	// id: 621, l: 622	
	ldr	 x0, [sp, #24]	// id: 622, l: 623	
	ldr	 x0, [x0, #8]	// id: 623, l: 624	
	sub	 x0, x1, x0	// id: 624, l: 625	
	fmov	 d0, x0	// id: 625, l: 626	
	scvtf	 d0, d0	// id: 626, l: 627	
	fdiv	 d1, d1, d0	// id: 627, l: 628	
	ldr	 x0, [sp, #24]	// id: 628, l: 629	
	ldr	 d0, [x0]	// id: 629, l: 630	
	fdiv	 d0, d1, d0	// id: 630, l: 631	
	fmov	 d4, d0	// id: 631, l: 632	
	fmov	 d1, d6	// id: 632, l: 633	
	fmov	 d0, d5	// id: 633, l: 634	
	adrp	 x0, .LC10	// id: 634, l: 635	
	add	 x0, x0, :lo12:.LC10	// id: 635, l: 636	
	bl	 printf	// id: 636, l: 637	
	nop		// id: 637, l: 638	
	ldp	 x29, x30, [sp], #32	// id: 638, l: 639	
	.cfi_restore	30	// id: 639, l: 640	
	.cfi_restore	29	// id: 640, l: 641	
	.cfi_def_cfa_offset	0	// id: 641, l: 642	
	ret		// id: 642, l: 643	
	.cfi_endproc		// id: 643, l: 644	
.LFE8:	// id: 644, l: 645	
	.size	MAIN_stopClock, .-MAIN_stopClock	// id: 645, l: 646	
	.ident	"GCC: (GNU) 9.2.0"	// id: 646, l: 647	
	.section	.note.GNU-stack, "",@progbits	// id: 647, l: 648	
	.section	.rodata.str1.1, "aMS",@progbits,1	// id: 648, l: 665	
.L.str:	// id: 649, l: 666	
	.string	"timestep: %i\n"	// id: 650, l: 667	
	.size	.L.str, 14	// id: 651, l: 668	
	.type	.L.str.1, %object	// id: 652, l: 670	
.L.str.1:	// id: 653, l: 671	
	.string	"syntax: lbm <time steps> <result file> <0: nil, 1: cmp, 2: str> <0: ldc, 1: channel flow> [<obstacle file>]\n"	// id: 654, l: 672	
	.size	.L.str.1, 109	// id: 655, l: 673	
	.type	.L.str.2, %object	// id: 656, l: 675	
.L.str.2:	// id: 657, l: 676	
	.string	"MAIN_parseCommandLine: cannot stat obstacle file '%s'\n"	// id: 658, l: 677	
	.size	.L.str.2, 55	// id: 659, l: 678	
	.type	.L.str.3, %object	// id: 660, l: 680	
.L.str.3:	// id: 661, l: 681	
	.string	"MAIN_parseCommandLine:\n\tsize of file '%s' is %i bytes\n\texpected size is %i bytes\n"	// id: 662, l: 682	
	.size	.L.str.3, 82	// id: 663, l: 683	
	.type	.L.str.4, %object	// id: 664, l: 685	
.L.str.4:	// id: 665, l: 686	
	.string	"MAIN_parseCommandLine: cannot stat result file '%s'\n"	// id: 666, l: 687	
	.size	.L.str.4, 53	// id: 667, l: 688	
	.type	.L__const.MAIN_printInfo.actionString, %object	// id: 668, l: 690	
	.section	.rodata, "a",@progbits	// id: 669, l: 691	
.L__const.MAIN_printInfo.actionString:	// id: 670, l: 692	
	.string	"nothing\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"	// id: 671, l: 693	
	.string	"compare\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"	// id: 672, l: 694	
	.string	"store\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"	// id: 673, l: 695	
	.size	.L__const.MAIN_printInfo.actionString, 96	// id: 674, l: 696	
	.type	.L__const.MAIN_printInfo.simTypeString, %object	// id: 675, l: 698	
.L__const.MAIN_printInfo.simTypeString:	// id: 676, l: 699	
	.string	"lid-driven cavity\000\000\000\000\000\000\000\000\000\000\000\000\000\000"	// id: 677, l: 700	
	.string	"channel flow\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"	// id: 678, l: 701	
	.space	32, 0	// id: 679, l: 702	
	.size	.L__const.MAIN_printInfo.simTypeString, 96	// id: 680, l: 703	
	.type	.L.str.5, %object	// id: 681, l: 705	
	.section	.rodata.str1.1, "aMS",@progbits,1	// id: 682, l: 706	
.L.str.5:	// id: 683, l: 707	
	.string	"MAIN_printInfo:\n\tgrid size      : %i x %i x %i = %.2f * 10^6 Cells\n\tnTimeSteps     : %i\n\tresult file    : %s\n\taction         : %s\n\tsimulation type: %s\n\tobstacle file  : %s\n\n"	// id: 684, l: 708	
	.size	.L.str.5, 174	// id: 685, l: 709	
	.type	.L.str.6, %object	// id: 686, l: 711	
.L.str.6:	// id: 687, l: 712	
	.string	"<none>"	// id: 688, l: 713	
	.size	.L.str.6, 7	// id: 689, l: 714	
	.type	.L.str.7, %object	// id: 690, l: 716	
.L.str.7:	// id: 691, l: 717	
	.string	"MAIN_stopClock:\n\tusr: %7.2f sys: %7.2f tot: %7.2f wct: %7.2f MLUPS: %5.2f\n\n"	// id: 692, l: 718	
	.size	.L.str.7, 76	// id: 693, l: 719	
	.ident	"clang version 8.0.1 (tags/RELEASE_801/final)"	// id: 694, l: 722	
