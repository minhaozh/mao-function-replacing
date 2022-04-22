	.arch	armv8-a	// id: 0, l: 1	
	.file	"pstart.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.globl	primal_start_artificial	// id: 4, l: 5	
	.type	primal_start_artificial, %function	// id: 5, l: 6	
primal_start_artificial:	// id: 6, l: 7	
.LFB0:	// id: 7, l: 8	
	.cfi_startproc		// id: 8, l: 9	
	sub	 sp, sp, #0x30	// id: 9, l: 10	
	.cfi_def_cfa_offset	48	// id: 10, l: 11	
	str	 x0, [sp, #8]	// id: 11, l: 12	
	ldr	 x0, [sp, #8]	// id: 12, l: 13	
	ldr	 x0, [x0, #552]	// id: 13, l: 14	
	str	 x0, [sp, #32]	// id: 14, l: 15	
	ldr	 x0, [sp, #32]	// id: 15, l: 16	
	str	 x0, [sp, #24]	// id: 16, l: 17	
	ldr	 x0, [sp, #32]	// id: 17, l: 18	
	add	 x0, x0, #0x68	// id: 18, l: 19	
	str	 x0, [sp, #32]	// id: 19, l: 20	
	ldr	 x0, [sp, #24]	// id: 20, l: 21	
	str	 xzr, [x0, #48]	// id: 21, l: 22	
	ldr	 x0, [sp, #24]	// id: 22, l: 23	
	str	 xzr, [x0, #24]	// id: 23, l: 24	
	ldr	 x0, [sp, #24]	// id: 24, l: 25	
	ldr	 x1, [sp, #32]	// id: 25, l: 26	
	str	 x1, [x0, #16]	// id: 26, l: 27	
	ldr	 x0, [sp, #24]	// id: 27, l: 28	
	str	 xzr, [x0, #32]	// id: 28, l: 29	
	ldr	 x0, [sp, #24]	// id: 29, l: 30	
	str	 xzr, [x0, #40]	// id: 30, l: 31	
	ldr	 x0, [sp, #8]	// id: 31, l: 32	
	ldr	 x0, [x0, #400]	// id: 32, l: 33	
	add	 x1, x0, #0x1	// id: 33, l: 34	
	ldr	 x0, [sp, #24]	// id: 34, l: 35	
	str	 x1, [x0, #88]	// id: 35, l: 36	
	ldr	 x0, [sp, #24]	// id: 36, l: 37	
	str	 wzr, [x0, #8]	// id: 37, l: 38	
	ldr	 x0, [sp, #24]	// id: 38, l: 39	
	mov	 x1, #0xffffffffffff1f00    	// #-57600	// id: 39, l: 40	
	movk	 x1, #0xfa0a, lsl #16	// id: 40, l: 41	
	str	 x1, [x0]	// id: 41, l: 42	
	ldr	 x0, [sp, #24]	// id: 42, l: 43	
	str	 xzr, [x0, #80]	// id: 43, l: 44	
	ldr	 x0, [sp, #8]	// id: 44, l: 45	
	ldr	 x0, [x0, #568]	// id: 45, l: 46	
	str	 x0, [sp, #16]	// id: 46, l: 47	
	str	 wzr, [sp, #44]	// id: 47, l: 48	
	b	 .L2	// id: 48, l: 49	
.L4:	// id: 49, l: 50	
	ldrsw	 x1, [sp, #44]	// id: 50, l: 51	
	mov	 x0, x1	// id: 51, l: 52	
	lsl	 x0, x0, #3	// id: 52, l: 53	
	add	 x0, x0, x1	// id: 53, l: 54	
	lsl	 x0, x0, #3	// id: 54, l: 55	
	mov	 x1, x0	// id: 55, l: 56	
	ldr	 x0, [sp, #16]	// id: 56, l: 57	
	add	 x0, x0, x1	// id: 57, l: 58	
	ldrsh	 w0, [x0, #32]	// id: 58, l: 59	
	cmn	 w0, #0x1	// id: 59, l: 60	
	beq	 .L3	// id: 60, l: 61	
	ldrsw	 x1, [sp, #44]	// id: 61, l: 62	
	mov	 x0, x1	// id: 62, l: 63	
	lsl	 x0, x0, #3	// id: 63, l: 64	
	add	 x0, x0, x1	// id: 64, l: 65	
	lsl	 x0, x0, #3	// id: 65, l: 66	
	mov	 x1, x0	// id: 66, l: 67	
	ldr	 x0, [sp, #16]	// id: 67, l: 68	
	add	 x0, x0, x1	// id: 68, l: 69	
	mov	 w1, #0x1                   	// #1	// id: 69, l: 70	
	strh	 w1, [x0, #32]	// id: 70, l: 71	
.L3:	// id: 71, l: 72	
	ldr	 w0, [sp, #44]	// id: 72, l: 73	
	add	 w0, w0, #0x1	// id: 73, l: 74	
	str	 w0, [sp, #44]	// id: 74, l: 75	
.L2:	// id: 75, l: 76	
	ldrsw	 x1, [sp, #44]	// id: 76, l: 77	
	ldr	 x0, [sp, #8]	// id: 77, l: 78	
	ldr	 x0, [x0, #424]	// id: 78, l: 79	
	cmp	 x1, x0	// id: 79, l: 80	
	blt	 .L4	// id: 80, l: 81	
	ldr	 x0, [sp, #8]	// id: 81, l: 82	
	ldr	 x0, [x0, #592]	// id: 82, l: 83	
	str	 x0, [sp, #16]	// id: 83, l: 84	
	str	 wzr, [sp, #44]	// id: 84, l: 85	
	b	 .L5	// id: 85, l: 86	
.L6:	// id: 86, l: 87	
	ldrsw	 x1, [sp, #44]	// id: 87, l: 88	
	mov	 x0, x1	// id: 88, l: 89	
	lsl	 x0, x0, #3	// id: 89, l: 90	
	add	 x0, x0, x1	// id: 90, l: 91	
	lsl	 x0, x0, #3	// id: 91, l: 92	
	mov	 x2, x0	// id: 92, l: 93	
	ldrsw	 x1, [sp, #44]	// id: 93, l: 94	
	mov	 x0, x1	// id: 94, l: 95	
	lsl	 x0, x0, #1	// id: 95, l: 96	
	add	 x0, x0, x1	// id: 96, l: 97	
	lsl	 x0, x0, #2	// id: 97, l: 98	
	add	 x0, x0, x1	// id: 98, l: 99	
	lsl	 x0, x0, #3	// id: 99, l: 100	
	mov	 x1, x0	// id: 100, l: 101	
	ldr	 x0, [sp, #32]	// id: 101, l: 102	
	add	 x0, x0, x1	// id: 102, l: 103	
	ldr	 x1, [sp, #16]	// id: 103, l: 104	
	add	 x1, x1, x2	// id: 104, l: 105	
	str	 x1, [x0, #48]	// id: 105, l: 106	
	ldrsw	 x1, [sp, #44]	// id: 106, l: 107	
	mov	 x0, x1	// id: 107, l: 108	
	lsl	 x0, x0, #1	// id: 108, l: 109	
	add	 x0, x0, x1	// id: 109, l: 110	
	lsl	 x0, x0, #2	// id: 110, l: 111	
	add	 x0, x0, x1	// id: 111, l: 112	
	lsl	 x0, x0, #3	// id: 112, l: 113	
	mov	 x1, x0	// id: 113, l: 114	
	ldr	 x0, [sp, #32]	// id: 114, l: 115	
	add	 x0, x0, x1	// id: 115, l: 116	
	ldr	 x1, [sp, #24]	// id: 116, l: 117	
	str	 x1, [x0, #24]	// id: 117, l: 118	
	ldrsw	 x1, [sp, #44]	// id: 118, l: 119	
	mov	 x0, x1	// id: 119, l: 120	
	lsl	 x0, x0, #1	// id: 120, l: 121	
	add	 x0, x0, x1	// id: 121, l: 122	
	lsl	 x0, x0, #2	// id: 122, l: 123	
	add	 x0, x0, x1	// id: 123, l: 124	
	lsl	 x0, x0, #3	// id: 124, l: 125	
	mov	 x1, x0	// id: 125, l: 126	
	ldr	 x0, [sp, #32]	// id: 126, l: 127	
	add	 x0, x0, x1	// id: 127, l: 128	
	str	 xzr, [x0, #16]	// id: 128, l: 129	
	ldrsw	 x0, [sp, #44]	// id: 129, l: 130	
	add	 x1, x0, #0x1	// id: 130, l: 131	
	mov	 x0, x1	// id: 131, l: 132	
	lsl	 x0, x0, #1	// id: 132, l: 133	
	add	 x0, x0, x1	// id: 133, l: 134	
	lsl	 x0, x0, #2	// id: 134, l: 135	
	add	 x0, x0, x1	// id: 135, l: 136	
	lsl	 x0, x0, #3	// id: 136, l: 137	
	mov	 x2, x0	// id: 137, l: 138	
	ldrsw	 x1, [sp, #44]	// id: 138, l: 139	
	mov	 x0, x1	// id: 139, l: 140	
	lsl	 x0, x0, #1	// id: 140, l: 141	
	add	 x0, x0, x1	// id: 141, l: 142	
	lsl	 x0, x0, #2	// id: 142, l: 143	
	add	 x0, x0, x1	// id: 143, l: 144	
	lsl	 x0, x0, #3	// id: 144, l: 145	
	mov	 x1, x0	// id: 145, l: 146	
	ldr	 x0, [sp, #32]	// id: 146, l: 147	
	add	 x0, x0, x1	// id: 147, l: 148	
	ldr	 x1, [sp, #32]	// id: 148, l: 149	
	add	 x1, x1, x2	// id: 149, l: 150	
	str	 x1, [x0, #32]	// id: 150, l: 151	
	ldrsw	 x1, [sp, #44]	// id: 151, l: 152	
	mov	 x0, x1	// id: 152, l: 153	
	lsl	 x0, x0, #1	// id: 153, l: 154	
	add	 x0, x0, x1	// id: 154, l: 155	
	lsl	 x0, x0, #2	// id: 155, l: 156	
	add	 x0, x0, x1	// id: 156, l: 157	
	lsl	 x0, x0, #3	// id: 157, l: 158	
	sub	 x2, x0, #0x68	// id: 158, l: 159	
	ldrsw	 x1, [sp, #44]	// id: 159, l: 160	
	mov	 x0, x1	// id: 160, l: 161	
	lsl	 x0, x0, #1	// id: 161, l: 162	
	add	 x0, x0, x1	// id: 162, l: 163	
	lsl	 x0, x0, #2	// id: 163, l: 164	
	add	 x0, x0, x1	// id: 164, l: 165	
	lsl	 x0, x0, #3	// id: 165, l: 166	
	mov	 x1, x0	// id: 166, l: 167	
	ldr	 x0, [sp, #32]	// id: 167, l: 168	
	add	 x0, x0, x1	// id: 168, l: 169	
	ldr	 x1, [sp, #32]	// id: 169, l: 170	
	add	 x1, x1, x2	// id: 170, l: 171	
	str	 x1, [x0, #40]	// id: 171, l: 172	
	ldrsw	 x1, [sp, #44]	// id: 172, l: 173	
	mov	 x0, x1	// id: 173, l: 174	
	lsl	 x0, x0, #1	// id: 174, l: 175	
	add	 x0, x0, x1	// id: 175, l: 176	
	lsl	 x0, x0, #2	// id: 176, l: 177	
	add	 x0, x0, x1	// id: 177, l: 178	
	lsl	 x0, x0, #3	// id: 178, l: 179	
	mov	 x1, x0	// id: 179, l: 180	
	ldr	 x0, [sp, #32]	// id: 180, l: 181	
	add	 x0, x0, x1	// id: 181, l: 182	
	mov	 x1, #0x1                   	// #1	// id: 182, l: 183	
	str	 x1, [x0, #88]	// id: 183, l: 184	
	ldrsw	 x1, [sp, #44]	// id: 184, l: 185	
	mov	 x0, x1	// id: 185, l: 186	
	lsl	 x0, x0, #3	// id: 186, l: 187	
	add	 x0, x0, x1	// id: 187, l: 188	
	lsl	 x0, x0, #3	// id: 188, l: 189	
	mov	 x1, x0	// id: 189, l: 190	
	ldr	 x0, [sp, #16]	// id: 190, l: 191	
	add	 x0, x0, x1	// id: 191, l: 192	
	mov	 x1, #0xe100                	// #57600	// id: 192, l: 193	
	movk	 x1, #0x5f5, lsl #16	// id: 193, l: 194	
	str	 x1, [x0, #8]	// id: 194, l: 195	
	ldrsw	 x1, [sp, #44]	// id: 195, l: 196	
	mov	 x0, x1	// id: 196, l: 197	
	lsl	 x0, x0, #3	// id: 197, l: 198	
	add	 x0, x0, x1	// id: 198, l: 199	
	lsl	 x0, x0, #3	// id: 199, l: 200	
	mov	 x1, x0	// id: 200, l: 201	
	ldr	 x0, [sp, #16]	// id: 201, l: 202	
	add	 x0, x0, x1	// id: 202, l: 203	
	strh	 wzr, [x0, #32]	// id: 203, l: 204	
	ldrsw	 x1, [sp, #44]	// id: 204, l: 205	
	mov	 x0, x1	// id: 205, l: 206	
	lsl	 x0, x0, #1	// id: 206, l: 207	
	add	 x0, x0, x1	// id: 207, l: 208	
	lsl	 x0, x0, #2	// id: 208, l: 209	
	add	 x0, x0, x1	// id: 209, l: 210	
	lsl	 x0, x0, #3	// id: 210, l: 211	
	mov	 x1, x0	// id: 211, l: 212	
	ldr	 x0, [sp, #32]	// id: 212, l: 213	
	add	 x0, x0, x1	// id: 213, l: 214	
	mov	 w1, #0x1                   	// #1	// id: 214, l: 215	
	str	 w1, [x0, #8]	// id: 215, l: 216	
	ldrsw	 x1, [sp, #44]	// id: 216, l: 217	
	mov	 x0, x1	// id: 217, l: 218	
	lsl	 x0, x0, #1	// id: 218, l: 219	
	add	 x0, x0, x1	// id: 219, l: 220	
	lsl	 x0, x0, #2	// id: 220, l: 221	
	add	 x0, x0, x1	// id: 221, l: 222	
	lsl	 x0, x0, #3	// id: 222, l: 223	
	mov	 x1, x0	// id: 223, l: 224	
	ldr	 x0, [sp, #32]	// id: 224, l: 225	
	add	 x0, x0, x1	// id: 225, l: 226	
	str	 xzr, [x0]	// id: 226, l: 227	
	ldrsw	 x1, [sp, #44]	// id: 227, l: 228	
	mov	 x0, x1	// id: 228, l: 229	
	lsl	 x0, x0, #1	// id: 229, l: 230	
	add	 x0, x0, x1	// id: 230, l: 231	
	lsl	 x0, x0, #2	// id: 231, l: 232	
	add	 x0, x0, x1	// id: 232, l: 233	
	lsl	 x0, x0, #3	// id: 233, l: 234	
	mov	 x2, x0	// id: 234, l: 235	
	ldrsw	 x1, [sp, #44]	// id: 235, l: 236	
	mov	 x0, x1	// id: 236, l: 237	
	lsl	 x0, x0, #3	// id: 237, l: 238	
	add	 x0, x0, x1	// id: 238, l: 239	
	lsl	 x0, x0, #3	// id: 239, l: 240	
	mov	 x1, x0	// id: 240, l: 241	
	ldr	 x0, [sp, #16]	// id: 241, l: 242	
	add	 x0, x0, x1	// id: 242, l: 243	
	ldr	 x1, [sp, #32]	// id: 243, l: 244	
	add	 x1, x1, x2	// id: 244, l: 245	
	str	 x1, [x0, #16]	// id: 245, l: 246	
	ldrsw	 x1, [sp, #44]	// id: 246, l: 247	
	mov	 x0, x1	// id: 247, l: 248	
	lsl	 x0, x0, #3	// id: 248, l: 249	
	add	 x0, x0, x1	// id: 249, l: 250	
	lsl	 x0, x0, #3	// id: 250, l: 251	
	mov	 x1, x0	// id: 251, l: 252	
	ldr	 x0, [sp, #16]	// id: 252, l: 253	
	add	 x0, x0, x1	// id: 253, l: 254	
	ldr	 x1, [sp, #24]	// id: 254, l: 255	
	str	 x1, [x0, #24]	// id: 255, l: 256	
	ldrsw	 x1, [sp, #44]	// id: 256, l: 257	
	mov	 x0, x1	// id: 257, l: 258	
	lsl	 x0, x0, #3	// id: 258, l: 259	
	add	 x0, x0, x1	// id: 259, l: 260	
	lsl	 x0, x0, #3	// id: 260, l: 261	
	mov	 x1, x0	// id: 261, l: 262	
	ldr	 x0, [sp, #16]	// id: 262, l: 263	
	add	 x0, x0, x1	// id: 263, l: 264	
	mov	 w1, #0xfffffffe            	// #-2	// id: 264, l: 265	
	str	 w1, [x0]	// id: 265, l: 266	
	ldrsw	 x1, [sp, #44]	// id: 266, l: 267	
	mov	 x0, x1	// id: 267, l: 268	
	lsl	 x0, x0, #1	// id: 268, l: 269	
	add	 x0, x0, x1	// id: 269, l: 270	
	lsl	 x0, x0, #2	// id: 270, l: 271	
	add	 x0, x0, x1	// id: 271, l: 272	
	lsl	 x0, x0, #3	// id: 272, l: 273	
	mov	 x1, x0	// id: 273, l: 274	
	ldr	 x0, [sp, #32]	// id: 274, l: 275	
	add	 x0, x0, x1	// id: 275, l: 276	
	str	 xzr, [x0, #80]	// id: 276, l: 277	
	ldr	 w0, [sp, #44]	// id: 277, l: 278	
	add	 w0, w0, #0x1	// id: 278, l: 279	
	str	 w0, [sp, #44]	// id: 279, l: 280	
.L5:	// id: 280, l: 281	
	ldrsw	 x1, [sp, #44]	// id: 281, l: 282	
	ldr	 x0, [sp, #8]	// id: 282, l: 283	
	ldr	 x0, [x0, #400]	// id: 283, l: 284	
	cmp	 x1, x0	// id: 284, l: 285	
	blt	 .L6	// id: 285, l: 286	
	ldr	 x0, [sp, #32]	// id: 286, l: 287	
	sub	 x0, x0, #0x68	// id: 287, l: 288	
	str	 x0, [sp, #32]	// id: 288, l: 289	
	ldr	 x0, [sp, #24]	// id: 289, l: 290	
	add	 x0, x0, #0x68	// id: 290, l: 291	
	str	 x0, [sp, #24]	// id: 291, l: 292	
	ldr	 x0, [sp, #8]	// id: 292, l: 293	
	ldr	 x0, [x0, #400]	// id: 293, l: 294	
	mov	 x1, x0	// id: 294, l: 295	
	mov	 x0, x1	// id: 295, l: 296	
	lsl	 x0, x0, #1	// id: 296, l: 297	
	add	 x0, x0, x1	// id: 297, l: 298	
	lsl	 x0, x0, #2	// id: 298, l: 299	
	add	 x0, x0, x1	// id: 299, l: 300	
	lsl	 x0, x0, #3	// id: 300, l: 301	
	mov	 x1, x0	// id: 301, l: 302	
	ldr	 x0, [sp, #32]	// id: 302, l: 303	
	add	 x0, x0, x1	// id: 303, l: 304	
	str	 xzr, [x0, #32]	// id: 304, l: 305	
	ldr	 x0, [sp, #24]	// id: 305, l: 306	
	str	 xzr, [x0, #40]	// id: 306, l: 307	
	mov	 x0, #0x0                   	// #0	// id: 307, l: 308	
	add	 sp, sp, #0x30	// id: 308, l: 309	
	.cfi_def_cfa_offset	0	// id: 309, l: 310	
	ret		// id: 310, l: 311	
	.cfi_endproc		// id: 311, l: 312	
.LFE0:	// id: 312, l: 313	
	.size	primal_start_artificial, .-primal_start_artificial	// id: 313, l: 314	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 314, l: 315	
	.section	.note.GNU-stack, "",@progbits	// id: 315, l: 316	
