	.arch	armv8-a	// id: 0, l: 1	
	.file	"mcfutil.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.globl	refresh_neighbour_lists	// id: 4, l: 5	
	.type	refresh_neighbour_lists, %function	// id: 5, l: 6	
refresh_neighbour_lists:	// id: 6, l: 7	
.LFB0:	// id: 7, l: 8	
	.cfi_startproc		// id: 8, l: 9	
	stp	 x29, x30, [sp, #-80]!	// id: 9, l: 10	
	.cfi_def_cfa_offset	80	// id: 10, l: 11	
	.cfi_offset	29, -80	// id: 11, l: 12	
	.cfi_offset	30, -72	// id: 12, l: 13	
	mov	 x29, sp	// id: 13, l: 14	
	str	 x19, [sp, #16]	// id: 14, l: 15	
	.cfi_offset	19, -64	// id: 15, l: 16	
	str	 x0, [sp, #40]	// id: 16, l: 17	
	str	 x1, [sp, #32]	// id: 17, l: 18	
	ldr	 x0, [sp, #40]	// id: 18, l: 19	
	ldr	 x0, [x0, #552]	// id: 19, l: 20	
	str	 x0, [sp, #72]	// id: 20, l: 21	
	ldr	 x0, [sp, #40]	// id: 21, l: 22	
	ldr	 x0, [x0, #560]	// id: 22, l: 23	
	str	 x0, [sp, #48]	// id: 23, l: 24	
	b	 .L2	// id: 24, l: 25	
.L3:	// id: 25, l: 26	
	ldr	 x0, [sp, #72]	// id: 26, l: 27	
	str	 xzr, [x0, #64]	// id: 27, l: 28	
	ldr	 x0, [sp, #72]	// id: 28, l: 29	
	str	 xzr, [x0, #56]	// id: 29, l: 30	
	ldr	 x0, [sp, #72]	// id: 30, l: 31	
	add	 x0, x0, #0x68	// id: 31, l: 32	
	str	 x0, [sp, #72]	// id: 32, l: 33	
.L2:	// id: 33, l: 34	
	ldr	 x1, [sp, #72]	// id: 34, l: 35	
	ldr	 x0, [sp, #48]	// id: 35, l: 36	
	cmp	 x1, x0	// id: 36, l: 37	
	bcc	 .L3	// id: 37, l: 38	
	ldr	 x0, [sp, #40]	// id: 38, l: 39	
	ldr	 x0, [x0, #568]	// id: 39, l: 40	
	str	 x0, [sp, #64]	// id: 40, l: 41	
	str	 wzr, [sp, #60]	// id: 41, l: 42	
	b	 .L4	// id: 42, l: 43	
.L5:	// id: 43, l: 44	
	ldr	 x0, [sp, #64]	// id: 44, l: 45	
	ldr	 x0, [x0, #16]	// id: 45, l: 46	
	ldr	 x1, [x0, #56]	// id: 46, l: 47	
	ldr	 x0, [sp, #64]	// id: 47, l: 48	
	str	 x1, [x0, #40]	// id: 48, l: 49	
	ldr	 x0, [sp, #64]	// id: 49, l: 50	
	ldr	 x0, [x0, #16]	// id: 50, l: 51	
	ldr	 x1, [sp, #64]	// id: 51, l: 52	
	str	 x1, [x0, #56]	// id: 52, l: 53	
	ldr	 x0, [sp, #64]	// id: 53, l: 54	
	ldr	 x0, [x0, #24]	// id: 54, l: 55	
	ldr	 x1, [x0, #64]	// id: 55, l: 56	
	ldr	 x0, [sp, #64]	// id: 56, l: 57	
	str	 x1, [x0, #48]	// id: 57, l: 58	
	ldr	 x0, [sp, #64]	// id: 58, l: 59	
	ldr	 x0, [x0, #24]	// id: 59, l: 60	
	ldr	 x1, [sp, #64]	// id: 60, l: 61	
	str	 x1, [x0, #64]	// id: 61, l: 62	
	ldr	 w0, [sp, #60]	// id: 62, l: 63	
	add	 w0, w0, #0x1	// id: 63, l: 64	
	str	 w0, [sp, #60]	// id: 64, l: 65	
	ldr	 x0, [sp, #40]	// id: 65, l: 66	
	ldr	 x19, [x0, #568]	// id: 66, l: 67	
	ldrsw	 x0, [sp, #60]	// id: 67, l: 68	
	ldr	 x2, [sp, #32]	// id: 68, l: 69	
	mov	 x1, x0	// id: 69, l: 70	
	ldr	 x0, [sp, #40]	// id: 70, l: 71	
	blr	 x2	// id: 71, l: 72	
	mov	 x1, x0	// id: 72, l: 73	
	mov	 x0, x1	// id: 73, l: 74	
	lsl	 x0, x0, #3	// id: 74, l: 75	
	add	 x0, x0, x1	// id: 75, l: 76	
	lsl	 x0, x0, #3	// id: 76, l: 77	
	add	 x0, x19, x0	// id: 77, l: 78	
	str	 x0, [sp, #64]	// id: 78, l: 79	
.L4:	// id: 79, l: 80	
	ldrsw	 x1, [sp, #60]	// id: 80, l: 81	
	ldr	 x0, [sp, #40]	// id: 81, l: 82	
	ldr	 x0, [x0, #424]	// id: 82, l: 83	
	cmp	 x1, x0	// id: 83, l: 84	
	blt	 .L5	// id: 84, l: 85	
	nop		// id: 85, l: 86	
	ldr	 x19, [sp, #16]	// id: 86, l: 87	
	ldp	 x29, x30, [sp], #80	// id: 87, l: 88	
	.cfi_restore	30	// id: 88, l: 89	
	.cfi_restore	29	// id: 89, l: 90	
	.cfi_restore	19	// id: 90, l: 91	
	.cfi_def_cfa_offset	0	// id: 91, l: 92	
	ret		// id: 92, l: 93	
	.cfi_endproc		// id: 93, l: 94	
.LFE0:	// id: 94, l: 95	
	.size	refresh_neighbour_lists, .-refresh_neighbour_lists	// id: 95, l: 96	
	.p2align	2, , 0	// id: 96, l: 97	
	.globl	flow_cost	// id: 97, l: 98	
	.type	flow_cost, %function	// id: 98, l: 99	
flow_cost:	// id: 99, l: 100	
.LFB1:	// id: 100, l: 101	
	.cfi_startproc		// id: 101, l: 102	
	sub	 sp, sp, #0x40	// id: 102, l: 103	
	.cfi_def_cfa_offset	64	// id: 103, l: 104	
	str	 x0, [sp, #8]	// id: 104, l: 105	
	str	 xzr, [sp, #56]	// id: 105, l: 106	
	str	 xzr, [sp, #40]	// id: 106, l: 107	
	ldr	 x0, [sp, #8]	// id: 107, l: 108	
	ldr	 x0, [x0, #568]	// id: 108, l: 109	
	str	 x0, [sp, #32]	// id: 109, l: 110	
	str	 wzr, [sp, #52]	// id: 110, l: 111	
	b	 .L8	// id: 111, l: 112	
.L11:	// id: 112, l: 113	
	ldrsw	 x1, [sp, #52]	// id: 113, l: 114	
	mov	 x0, x1	// id: 114, l: 115	
	lsl	 x0, x0, #3	// id: 115, l: 116	
	add	 x0, x0, x1	// id: 116, l: 117	
	lsl	 x0, x0, #3	// id: 117, l: 118	
	mov	 x1, x0	// id: 118, l: 119	
	ldr	 x0, [sp, #32]	// id: 119, l: 120	
	add	 x0, x0, x1	// id: 120, l: 121	
	ldrsh	 w0, [x0, #32]	// id: 121, l: 122	
	cmp	 w0, #0x2	// id: 122, l: 123	
	bne	 .L9	// id: 123, l: 124	
	ldrsw	 x1, [sp, #52]	// id: 124, l: 125	
	mov	 x0, x1	// id: 125, l: 126	
	lsl	 x0, x0, #3	// id: 126, l: 127	
	add	 x0, x0, x1	// id: 127, l: 128	
	lsl	 x0, x0, #3	// id: 128, l: 129	
	mov	 x1, x0	// id: 129, l: 130	
	ldr	 x0, [sp, #32]	// id: 130, l: 131	
	add	 x0, x0, x1	// id: 131, l: 132	
	mov	 x1, #0x1                   	// #1	// id: 132, l: 133	
	str	 x1, [x0, #56]	// id: 133, l: 134	
	b	 .L10	// id: 134, l: 135	
.L9:	// id: 135, l: 136	
	ldrsw	 x1, [sp, #52]	// id: 136, l: 137	
	mov	 x0, x1	// id: 137, l: 138	
	lsl	 x0, x0, #3	// id: 138, l: 139	
	add	 x0, x0, x1	// id: 139, l: 140	
	lsl	 x0, x0, #3	// id: 140, l: 141	
	mov	 x1, x0	// id: 141, l: 142	
	ldr	 x0, [sp, #32]	// id: 142, l: 143	
	add	 x0, x0, x1	// id: 143, l: 144	
	str	 xzr, [x0, #56]	// id: 144, l: 145	
.L10:	// id: 145, l: 146	
	ldr	 w0, [sp, #52]	// id: 146, l: 147	
	add	 w0, w0, #0x1	// id: 147, l: 148	
	str	 w0, [sp, #52]	// id: 148, l: 149	
.L8:	// id: 149, l: 150	
	ldrsw	 x1, [sp, #52]	// id: 150, l: 151	
	ldr	 x0, [sp, #8]	// id: 151, l: 152	
	ldr	 x0, [x0, #424]	// id: 152, l: 153	
	cmp	 x1, x0	// id: 153, l: 154	
	blt	 .L11	// id: 154, l: 155	
	ldr	 x0, [sp, #8]	// id: 155, l: 156	
	ldr	 x0, [x0, #552]	// id: 156, l: 157	
	str	 x0, [sp, #24]	// id: 157, l: 158	
	mov	 w0, #0x1                   	// #1	// id: 158, l: 159	
	str	 w0, [sp, #52]	// id: 159, l: 160	
	b	 .L12	// id: 160, l: 161	
.L13:	// id: 161, l: 162	
	ldrsw	 x1, [sp, #52]	// id: 162, l: 163	
	mov	 x0, x1	// id: 163, l: 164	
	lsl	 x0, x0, #1	// id: 164, l: 165	
	add	 x0, x0, x1	// id: 165, l: 166	
	lsl	 x0, x0, #2	// id: 166, l: 167	
	add	 x0, x0, x1	// id: 167, l: 168	
	lsl	 x0, x0, #3	// id: 168, l: 169	
	mov	 x1, x0	// id: 169, l: 170	
	ldr	 x0, [sp, #24]	// id: 170, l: 171	
	add	 x2, x0, x1	// id: 171, l: 172	
	ldrsw	 x1, [sp, #52]	// id: 172, l: 173	
	mov	 x0, x1	// id: 173, l: 174	
	lsl	 x0, x0, #1	// id: 174, l: 175	
	add	 x0, x0, x1	// id: 175, l: 176	
	lsl	 x0, x0, #2	// id: 176, l: 177	
	add	 x0, x0, x1	// id: 177, l: 178	
	lsl	 x0, x0, #3	// id: 178, l: 179	
	mov	 x1, x0	// id: 179, l: 180	
	ldr	 x0, [sp, #24]	// id: 180, l: 181	
	add	 x0, x0, x1	// id: 181, l: 182	
	ldr	 x0, [x0, #48]	// id: 182, l: 183	
	ldr	 x1, [x2, #80]	// id: 183, l: 184	
	str	 x1, [x0, #56]	// id: 184, l: 185	
	ldr	 w0, [sp, #52]	// id: 185, l: 186	
	add	 w0, w0, #0x1	// id: 186, l: 187	
	str	 w0, [sp, #52]	// id: 187, l: 188	
.L12:	// id: 188, l: 189	
	ldrsw	 x1, [sp, #52]	// id: 189, l: 190	
	ldr	 x0, [sp, #8]	// id: 190, l: 191	
	ldr	 x0, [x0, #400]	// id: 191, l: 192	
	cmp	 x1, x0	// id: 192, l: 193	
	ble	 .L13	// id: 193, l: 194	
	ldr	 x0, [sp, #8]	// id: 194, l: 195	
	ldr	 x0, [x0, #568]	// id: 195, l: 196	
	str	 x0, [sp, #32]	// id: 196, l: 197	
	str	 wzr, [sp, #52]	// id: 197, l: 198	
	b	 .L14	// id: 198, l: 199	
.L18:	// id: 199, l: 200	
	ldrsw	 x1, [sp, #52]	// id: 200, l: 201	
	mov	 x0, x1	// id: 201, l: 202	
	lsl	 x0, x0, #3	// id: 202, l: 203	
	add	 x0, x0, x1	// id: 203, l: 204	
	lsl	 x0, x0, #3	// id: 204, l: 205	
	mov	 x1, x0	// id: 205, l: 206	
	ldr	 x0, [sp, #32]	// id: 206, l: 207	
	add	 x0, x0, x1	// id: 207, l: 208	
	ldr	 x0, [x0, #56]	// id: 208, l: 209	
	cmp	 x0, #0x0	// id: 209, l: 210	
	beq	 .L15	// id: 210, l: 211	
	ldrsw	 x1, [sp, #52]	// id: 211, l: 212	
	mov	 x0, x1	// id: 212, l: 213	
	lsl	 x0, x0, #3	// id: 213, l: 214	
	add	 x0, x0, x1	// id: 214, l: 215	
	lsl	 x0, x0, #3	// id: 215, l: 216	
	mov	 x1, x0	// id: 216, l: 217	
	ldr	 x0, [sp, #32]	// id: 217, l: 218	
	add	 x0, x0, x1	// id: 218, l: 219	
	ldr	 x0, [x0, #16]	// id: 219, l: 220	
	ldr	 w0, [x0, #96]	// id: 220, l: 221	
	cmp	 w0, #0x0	// id: 221, l: 222	
	bge	 .L16	// id: 222, l: 223	
	ldrsw	 x1, [sp, #52]	// id: 223, l: 224	
	mov	 x0, x1	// id: 224, l: 225	
	lsl	 x0, x0, #3	// id: 225, l: 226	
	add	 x0, x0, x1	// id: 226, l: 227	
	lsl	 x0, x0, #3	// id: 227, l: 228	
	mov	 x1, x0	// id: 228, l: 229	
	ldr	 x0, [sp, #32]	// id: 229, l: 230	
	add	 x0, x0, x1	// id: 230, l: 231	
	ldr	 x0, [x0, #24]	// id: 231, l: 232	
	ldr	 w0, [x0, #96]	// id: 232, l: 233	
	cmp	 w0, #0x0	// id: 233, l: 234	
	bgt	 .L15	// id: 234, l: 235	
.L16:	// id: 235, l: 236	
	ldrsw	 x1, [sp, #52]	// id: 236, l: 237	
	mov	 x0, x1	// id: 237, l: 238	
	lsl	 x0, x0, #3	// id: 238, l: 239	
	add	 x0, x0, x1	// id: 239, l: 240	
	lsl	 x0, x0, #3	// id: 240, l: 241	
	mov	 x1, x0	// id: 241, l: 242	
	ldr	 x0, [sp, #32]	// id: 242, l: 243	
	add	 x0, x0, x1	// id: 243, l: 244	
	ldr	 x0, [x0, #16]	// id: 244, l: 245	
	ldr	 w0, [x0, #96]	// id: 245, l: 246	
	cmp	 w0, #0x0	// id: 246, l: 247	
	bne	 .L17	// id: 247, l: 248	
	ldrsw	 x1, [sp, #52]	// id: 248, l: 249	
	mov	 x0, x1	// id: 249, l: 250	
	lsl	 x0, x0, #3	// id: 250, l: 251	
	add	 x0, x0, x1	// id: 251, l: 252	
	lsl	 x0, x0, #3	// id: 252, l: 253	
	mov	 x1, x0	// id: 253, l: 254	
	ldr	 x0, [sp, #32]	// id: 254, l: 255	
	add	 x0, x0, x1	// id: 255, l: 256	
	ldr	 x1, [x0, #8]	// id: 256, l: 257	
	ldr	 x0, [sp, #8]	// id: 257, l: 258	
	ldr	 x0, [x0, #528]	// id: 258, l: 259	
	sub	 x0, x1, x0	// id: 259, l: 260	
	ldr	 x1, [sp, #40]	// id: 260, l: 261	
	add	 x0, x1, x0	// id: 261, l: 262	
	str	 x0, [sp, #40]	// id: 262, l: 263	
	ldr	 x0, [sp, #56]	// id: 263, l: 264	
	add	 x0, x0, #0x1	// id: 264, l: 265	
	str	 x0, [sp, #56]	// id: 265, l: 266	
	b	 .L15	// id: 266, l: 267	
.L17:	// id: 267, l: 268	
	ldrsw	 x1, [sp, #52]	// id: 268, l: 269	
	mov	 x0, x1	// id: 269, l: 270	
	lsl	 x0, x0, #3	// id: 270, l: 271	
	add	 x0, x0, x1	// id: 271, l: 272	
	lsl	 x0, x0, #3	// id: 272, l: 273	
	mov	 x1, x0	// id: 273, l: 274	
	ldr	 x0, [sp, #32]	// id: 274, l: 275	
	add	 x0, x0, x1	// id: 275, l: 276	
	ldr	 x0, [x0, #8]	// id: 276, l: 277	
	ldr	 x1, [sp, #40]	// id: 277, l: 278	
	add	 x0, x1, x0	// id: 278, l: 279	
	str	 x0, [sp, #40]	// id: 279, l: 280	
.L15:	// id: 280, l: 281	
	ldr	 w0, [sp, #52]	// id: 281, l: 282	
	add	 w0, w0, #0x1	// id: 282, l: 283	
	str	 w0, [sp, #52]	// id: 283, l: 284	
.L14:	// id: 284, l: 285	
	ldrsw	 x1, [sp, #52]	// id: 285, l: 286	
	ldr	 x0, [sp, #8]	// id: 286, l: 287	
	ldr	 x0, [x0, #424]	// id: 287, l: 288	
	cmp	 x1, x0	// id: 288, l: 289	
	blt	 .L18	// id: 289, l: 290	
	ldr	 d0, [sp, #56]	// id: 290, l: 291	
	scvtf	 d1, d0	// id: 291, l: 292	
	ldr	 x0, [sp, #8]	// id: 292, l: 293	
	ldr	 d0, [x0, #528]	// id: 293, l: 294	
	scvtf	 d0, d0	// id: 294, l: 295	
	fmul	 d1, d1, d0	// id: 295, l: 296	
	ldr	 d0, [sp, #40]	// id: 296, l: 297	
	scvtf	 d0, d0	// id: 297, l: 298	
	fadd	 d0, d1, d0	// id: 298, l: 299	
	add	 sp, sp, #0x40	// id: 299, l: 300	
	.cfi_def_cfa_offset	0	// id: 300, l: 301	
	ret		// id: 301, l: 302	
	.cfi_endproc		// id: 302, l: 303	
.LFE1:	// id: 303, l: 304	
	.size	flow_cost, .-flow_cost	// id: 304, l: 305	
	.local	old_group	// id: 305, l: 306	
	.comm	old_group, 8, 8	// id: 306, l: 307	
	.local	old_Arc	// id: 307, l: 308	
	.comm	old_Arc, 8, 8	// id: 308, l: 309	
	.p2align	2, , 0	// id: 309, l: 310	
	.globl	start	// id: 310, l: 311	
	.type	start, %function	// id: 311, l: 312	
start:	// id: 312, l: 313	
.LFB2:	// id: 313, l: 314	
	.cfi_startproc		// id: 314, l: 315	
	adrp	 x0, old_group	// id: 315, l: 316	
	add	 x0, x0, :lo12:old_group	// id: 316, l: 317	
	str	 xzr, [x0]	// id: 317, l: 318	
	adrp	 x0, old_Arc	// id: 318, l: 319	
	add	 x0, x0, :lo12:old_Arc	// id: 319, l: 320	
	str	 xzr, [x0]	// id: 320, l: 321	
	mov	 x0, #0x0                   	// #0	// id: 321, l: 322	
	ret		// id: 322, l: 323	
	.cfi_endproc		// id: 323, l: 324	
.LFE2:	// id: 324, l: 325	
	.size	start, .-start	// id: 325, l: 326	
	.p2align	2, , 0	// id: 326, l: 327	
	.globl	getArcPosition	// id: 327, l: 328	
	.type	getArcPosition, %function	// id: 328, l: 329	
getArcPosition:	// id: 329, l: 330	
.LFB3:	// id: 330, l: 331	
	.cfi_startproc		// id: 331, l: 332	
	sub	 sp, sp, #0x20	// id: 332, l: 333	
	.cfi_def_cfa_offset	32	// id: 333, l: 334	
	str	 x0, [sp, #8]	// id: 334, l: 335	
	str	 x1, [sp]	// id: 335, l: 336	
	ldr	 x0, [sp, #8]	// id: 336, l: 337	
	ldr	 x1, [x0, #624]	// id: 337, l: 338	
	ldr	 x0, [sp]	// id: 338, l: 339	
	sdiv	 x2, x0, x1	// id: 339, l: 340	
	mul	 x1, x2, x1	// id: 340, l: 341	
	sub	 x0, x0, x1	// id: 341, l: 342	
	str	 x0, [sp, #16]	// id: 342, l: 343	
	ldr	 x0, [sp, #8]	// id: 343, l: 344	
	ldr	 x0, [x0, #632]	// id: 344, l: 345	
	ldr	 x1, [sp, #16]	// id: 345, l: 346	
	cmp	 x1, x0	// id: 346, l: 347	
	ble	 .L23	// id: 347, l: 348	
	ldr	 x0, [sp, #8]	// id: 348, l: 349	
	ldr	 x0, [x0, #624]	// id: 349, l: 350	
	ldr	 x1, [sp]	// id: 350, l: 351	
	sdiv	 x1, x1, x0	// id: 351, l: 352	
	ldr	 x0, [sp, #8]	// id: 352, l: 353	
	ldr	 x2, [x0, #632]	// id: 353, l: 354	
	ldr	 x0, [sp, #8]	// id: 354, l: 355	
	ldr	 x0, [x0, #640]	// id: 355, l: 356	
	mul	 x2, x2, x0	// id: 356, l: 357	
	ldr	 x0, [sp, #8]	// id: 357, l: 358	
	ldr	 x0, [x0, #632]	// id: 358, l: 359	
	ldr	 x3, [sp, #16]	// id: 359, l: 360	
	sub	 x3, x3, x0	// id: 360, l: 361	
	ldr	 x0, [sp, #8]	// id: 361, l: 362	
	ldr	 x0, [x0, #640]	// id: 362, l: 363	
	sub	 x0, x0, #0x1	// id: 363, l: 364	
	mul	 x0, x3, x0	// id: 364, l: 365	
	add	 x0, x2, x0	// id: 365, l: 366	
	add	 x0, x1, x0	// id: 366, l: 367	
	str	 x0, [sp, #24]	// id: 367, l: 368	
	b	 .L24	// id: 368, l: 369	
.L23:	// id: 369, l: 370	
	ldr	 x0, [sp, #8]	// id: 370, l: 371	
	ldr	 x0, [x0, #624]	// id: 371, l: 372	
	ldr	 x1, [sp]	// id: 372, l: 373	
	sdiv	 x1, x1, x0	// id: 373, l: 374	
	ldr	 x0, [sp, #8]	// id: 374, l: 375	
	ldr	 x2, [x0, #640]	// id: 375, l: 376	
	ldr	 x0, [sp, #16]	// id: 376, l: 377	
	mul	 x0, x2, x0	// id: 377, l: 378	
	add	 x0, x1, x0	// id: 378, l: 379	
	str	 x0, [sp, #24]	// id: 379, l: 380	
.L24:	// id: 380, l: 381	
	ldr	 x0, [sp, #24]	// id: 381, l: 382	
	add	 sp, sp, #0x20	// id: 382, l: 383	
	.cfi_def_cfa_offset	0	// id: 383, l: 384	
	ret		// id: 384, l: 385	
	.cfi_endproc		// id: 385, l: 386	
.LFE3:	// id: 386, l: 387	
	.size	getArcPosition, .-getArcPosition	// id: 387, l: 388	
	.p2align	2, , 0	// id: 388, l: 389	
	.globl	getOriginalArcPosition	// id: 389, l: 390	
	.type	getOriginalArcPosition, %function	// id: 390, l: 391	
getOriginalArcPosition:	// id: 391, l: 392	
.LFB4:	// id: 392, l: 393	
	.cfi_startproc		// id: 393, l: 394	
	sub	 sp, sp, #0x10	// id: 394, l: 395	
	.cfi_def_cfa_offset	16	// id: 395, l: 396	
	str	 x0, [sp, #8]	// id: 396, l: 397	
	str	 x1, [sp]	// id: 397, l: 398	
	ldr	 x0, [sp]	// id: 398, l: 399	
	add	 sp, sp, #0x10	// id: 399, l: 400	
	.cfi_def_cfa_offset	0	// id: 400, l: 401	
	ret		// id: 401, l: 402	
	.cfi_endproc		// id: 402, l: 403	
.LFE4:	// id: 403, l: 404	
	.size	getOriginalArcPosition, .-getOriginalArcPosition	// id: 404, l: 405	
	.section	.rodata	// id: 405, l: 406	
	.p2align	3, , 0	// id: 406, l: 407	
.LC0:	// id: 407, l: 408	
	.string	"ORG_COST: %f"	// id: 408, l: 409	
	.text	0	// id: 409, l: 410	
	.p2align	2, , 0	// id: 410, l: 411	
	.globl	flow_org_cost	// id: 411, l: 412	
	.type	flow_org_cost, %function	// id: 412, l: 413	
flow_org_cost:	// id: 413, l: 414	
.LFB5:	// id: 414, l: 415	
	.cfi_startproc		// id: 415, l: 416	
	stp	 x29, x30, [sp, #-80]!	// id: 416, l: 417	
	.cfi_def_cfa_offset	80	// id: 417, l: 418	
	.cfi_offset	29, -80	// id: 418, l: 419	
	.cfi_offset	30, -72	// id: 419, l: 420	
	mov	 x29, sp	// id: 420, l: 421	
	str	 x0, [sp, #24]	// id: 421, l: 422	
	str	 xzr, [sp, #64]	// id: 422, l: 423	
	str	 xzr, [sp, #56]	// id: 423, l: 424	
	ldr	 x0, [sp, #24]	// id: 424, l: 425	
	ldr	 x0, [x0, #568]	// id: 425, l: 426	
	str	 x0, [sp, #48]	// id: 426, l: 427	
	str	 wzr, [sp, #76]	// id: 427, l: 428	
	b	 .L29	// id: 428, l: 429	
.L32:	// id: 429, l: 430	
	ldrsw	 x1, [sp, #76]	// id: 430, l: 431	
	mov	 x0, x1	// id: 431, l: 432	
	lsl	 x0, x0, #3	// id: 432, l: 433	
	add	 x0, x0, x1	// id: 433, l: 434	
	lsl	 x0, x0, #3	// id: 434, l: 435	
	mov	 x1, x0	// id: 435, l: 436	
	ldr	 x0, [sp, #48]	// id: 436, l: 437	
	add	 x0, x0, x1	// id: 437, l: 438	
	ldrsh	 w0, [x0, #32]	// id: 438, l: 439	
	cmp	 w0, #0x2	// id: 439, l: 440	
	bne	 .L30	// id: 440, l: 441	
	ldrsw	 x1, [sp, #76]	// id: 441, l: 442	
	mov	 x0, x1	// id: 442, l: 443	
	lsl	 x0, x0, #3	// id: 443, l: 444	
	add	 x0, x0, x1	// id: 444, l: 445	
	lsl	 x0, x0, #3	// id: 445, l: 446	
	mov	 x1, x0	// id: 446, l: 447	
	ldr	 x0, [sp, #48]	// id: 447, l: 448	
	add	 x0, x0, x1	// id: 448, l: 449	
	mov	 x1, #0x1                   	// #1	// id: 449, l: 450	
	str	 x1, [x0, #56]	// id: 450, l: 451	
	b	 .L31	// id: 451, l: 452	
.L30:	// id: 452, l: 453	
	ldrsw	 x1, [sp, #76]	// id: 453, l: 454	
	mov	 x0, x1	// id: 454, l: 455	
	lsl	 x0, x0, #3	// id: 455, l: 456	
	add	 x0, x0, x1	// id: 456, l: 457	
	lsl	 x0, x0, #3	// id: 457, l: 458	
	mov	 x1, x0	// id: 458, l: 459	
	ldr	 x0, [sp, #48]	// id: 459, l: 460	
	add	 x0, x0, x1	// id: 460, l: 461	
	str	 xzr, [x0, #56]	// id: 461, l: 462	
.L31:	// id: 462, l: 463	
	ldr	 w0, [sp, #76]	// id: 463, l: 464	
	add	 w0, w0, #0x1	// id: 464, l: 465	
	str	 w0, [sp, #76]	// id: 465, l: 466	
.L29:	// id: 466, l: 467	
	ldrsw	 x1, [sp, #76]	// id: 467, l: 468	
	ldr	 x0, [sp, #24]	// id: 468, l: 469	
	ldr	 x0, [x0, #424]	// id: 469, l: 470	
	cmp	 x1, x0	// id: 470, l: 471	
	blt	 .L32	// id: 471, l: 472	
	ldr	 x0, [sp, #24]	// id: 472, l: 473	
	ldr	 x0, [x0, #552]	// id: 473, l: 474	
	str	 x0, [sp, #40]	// id: 474, l: 475	
	str	 wzr, [sp, #76]	// id: 475, l: 476	
	b	 .L33	// id: 476, l: 477	
.L34:	// id: 477, l: 478	
	ldrsw	 x1, [sp, #76]	// id: 478, l: 479	
	mov	 x0, x1	// id: 479, l: 480	
	lsl	 x0, x0, #1	// id: 480, l: 481	
	add	 x0, x0, x1	// id: 481, l: 482	
	lsl	 x0, x0, #2	// id: 482, l: 483	
	add	 x0, x0, x1	// id: 483, l: 484	
	lsl	 x0, x0, #3	// id: 484, l: 485	
	mov	 x1, x0	// id: 485, l: 486	
	ldr	 x0, [sp, #40]	// id: 486, l: 487	
	add	 x2, x0, x1	// id: 487, l: 488	
	ldrsw	 x1, [sp, #76]	// id: 488, l: 489	
	mov	 x0, x1	// id: 489, l: 490	
	lsl	 x0, x0, #1	// id: 490, l: 491	
	add	 x0, x0, x1	// id: 491, l: 492	
	lsl	 x0, x0, #2	// id: 492, l: 493	
	add	 x0, x0, x1	// id: 493, l: 494	
	lsl	 x0, x0, #3	// id: 494, l: 495	
	mov	 x1, x0	// id: 495, l: 496	
	ldr	 x0, [sp, #40]	// id: 496, l: 497	
	add	 x0, x0, x1	// id: 497, l: 498	
	ldr	 x0, [x0, #48]	// id: 498, l: 499	
	ldr	 x1, [x2, #80]	// id: 499, l: 500	
	str	 x1, [x0, #56]	// id: 500, l: 501	
	ldr	 w0, [sp, #76]	// id: 501, l: 502	
	add	 w0, w0, #0x1	// id: 502, l: 503	
	str	 w0, [sp, #76]	// id: 503, l: 504	
.L33:	// id: 504, l: 505	
	ldrsw	 x1, [sp, #76]	// id: 505, l: 506	
	ldr	 x0, [sp, #24]	// id: 506, l: 507	
	ldr	 x0, [x0, #400]	// id: 507, l: 508	
	cmp	 x1, x0	// id: 508, l: 509	
	blt	 .L34	// id: 509, l: 510	
	ldr	 x0, [sp, #24]	// id: 510, l: 511	
	ldr	 x0, [x0, #568]	// id: 511, l: 512	
	str	 x0, [sp, #48]	// id: 512, l: 513	
	str	 wzr, [sp, #76]	// id: 513, l: 514	
	b	 .L35	// id: 514, l: 515	
.L39:	// id: 515, l: 516	
	ldrsw	 x1, [sp, #76]	// id: 516, l: 517	
	mov	 x0, x1	// id: 517, l: 518	
	lsl	 x0, x0, #3	// id: 518, l: 519	
	add	 x0, x0, x1	// id: 519, l: 520	
	lsl	 x0, x0, #3	// id: 520, l: 521	
	mov	 x1, x0	// id: 521, l: 522	
	ldr	 x0, [sp, #48]	// id: 522, l: 523	
	add	 x0, x0, x1	// id: 523, l: 524	
	ldr	 x0, [x0, #56]	// id: 524, l: 525	
	cmp	 x0, #0x0	// id: 525, l: 526	
	beq	 .L36	// id: 526, l: 527	
	ldrsw	 x1, [sp, #76]	// id: 527, l: 528	
	mov	 x0, x1	// id: 528, l: 529	
	lsl	 x0, x0, #3	// id: 529, l: 530	
	add	 x0, x0, x1	// id: 530, l: 531	
	lsl	 x0, x0, #3	// id: 531, l: 532	
	mov	 x1, x0	// id: 532, l: 533	
	ldr	 x0, [sp, #48]	// id: 533, l: 534	
	add	 x0, x0, x1	// id: 534, l: 535	
	ldr	 x0, [x0, #16]	// id: 535, l: 536	
	ldr	 w0, [x0, #96]	// id: 536, l: 537	
	cmp	 w0, #0x0	// id: 537, l: 538	
	bge	 .L37	// id: 538, l: 539	
	ldrsw	 x1, [sp, #76]	// id: 539, l: 540	
	mov	 x0, x1	// id: 540, l: 541	
	lsl	 x0, x0, #3	// id: 541, l: 542	
	add	 x0, x0, x1	// id: 542, l: 543	
	lsl	 x0, x0, #3	// id: 543, l: 544	
	mov	 x1, x0	// id: 544, l: 545	
	ldr	 x0, [sp, #48]	// id: 545, l: 546	
	add	 x0, x0, x1	// id: 546, l: 547	
	ldr	 x0, [x0, #24]	// id: 547, l: 548	
	ldr	 w0, [x0, #96]	// id: 548, l: 549	
	cmp	 w0, #0x0	// id: 549, l: 550	
	bgt	 .L36	// id: 550, l: 551	
.L37:	// id: 551, l: 552	
	ldrsw	 x1, [sp, #76]	// id: 552, l: 553	
	mov	 x0, x1	// id: 553, l: 554	
	lsl	 x0, x0, #3	// id: 554, l: 555	
	add	 x0, x0, x1	// id: 555, l: 556	
	lsl	 x0, x0, #3	// id: 556, l: 557	
	mov	 x1, x0	// id: 557, l: 558	
	ldr	 x0, [sp, #48]	// id: 558, l: 559	
	add	 x0, x0, x1	// id: 559, l: 560	
	ldr	 x0, [x0, #16]	// id: 560, l: 561	
	ldr	 w0, [x0, #96]	// id: 561, l: 562	
	cmp	 w0, #0x0	// id: 562, l: 563	
	bne	 .L38	// id: 563, l: 564	
	ldrsw	 x1, [sp, #76]	// id: 564, l: 565	
	mov	 x0, x1	// id: 565, l: 566	
	lsl	 x0, x0, #3	// id: 566, l: 567	
	add	 x0, x0, x1	// id: 567, l: 568	
	lsl	 x0, x0, #3	// id: 568, l: 569	
	mov	 x1, x0	// id: 569, l: 570	
	ldr	 x0, [sp, #48]	// id: 570, l: 571	
	add	 x0, x0, x1	// id: 571, l: 572	
	ldr	 x1, [x0, #64]	// id: 572, l: 573	
	ldr	 x0, [sp, #24]	// id: 573, l: 574	
	ldr	 x0, [x0, #528]	// id: 574, l: 575	
	sub	 x0, x1, x0	// id: 575, l: 576	
	ldr	 x1, [sp, #56]	// id: 576, l: 577	
	add	 x0, x1, x0	// id: 577, l: 578	
	str	 x0, [sp, #56]	// id: 578, l: 579	
	ldr	 x0, [sp, #64]	// id: 579, l: 580	
	add	 x0, x0, #0x1	// id: 580, l: 581	
	str	 x0, [sp, #64]	// id: 581, l: 582	
	b	 .L36	// id: 582, l: 583	
.L38:	// id: 583, l: 584	
	ldrsw	 x1, [sp, #76]	// id: 584, l: 585	
	mov	 x0, x1	// id: 585, l: 586	
	lsl	 x0, x0, #3	// id: 586, l: 587	
	add	 x0, x0, x1	// id: 587, l: 588	
	lsl	 x0, x0, #3	// id: 588, l: 589	
	mov	 x1, x0	// id: 589, l: 590	
	ldr	 x0, [sp, #48]	// id: 590, l: 591	
	add	 x0, x0, x1	// id: 591, l: 592	
	ldr	 x0, [x0, #64]	// id: 592, l: 593	
	ldr	 x1, [sp, #56]	// id: 593, l: 594	
	add	 x0, x1, x0	// id: 594, l: 595	
	str	 x0, [sp, #56]	// id: 595, l: 596	
.L36:	// id: 596, l: 597	
	ldr	 w0, [sp, #76]	// id: 597, l: 598	
	add	 w0, w0, #0x1	// id: 598, l: 599	
	str	 w0, [sp, #76]	// id: 599, l: 600	
.L35:	// id: 600, l: 601	
	ldrsw	 x1, [sp, #76]	// id: 601, l: 602	
	ldr	 x0, [sp, #24]	// id: 602, l: 603	
	ldr	 x0, [x0, #424]	// id: 603, l: 604	
	cmp	 x1, x0	// id: 604, l: 605	
	blt	 .L39	// id: 605, l: 606	
	ldr	 d0, [sp, #64]	// id: 606, l: 607	
	scvtf	 d1, d0	// id: 607, l: 608	
	ldr	 x0, [sp, #24]	// id: 608, l: 609	
	ldr	 d0, [x0, #528]	// id: 609, l: 610	
	scvtf	 d0, d0	// id: 610, l: 611	
	fmul	 d1, d1, d0	// id: 611, l: 612	
	ldr	 d0, [sp, #56]	// id: 612, l: 613	
	scvtf	 d0, d0	// id: 613, l: 614	
	fadd	 d0, d1, d0	// id: 614, l: 615	
	adrp	 x0, .LC0	// id: 615, l: 616	
	add	 x0, x0, :lo12:.LC0	// id: 616, l: 617	
	bl	 printf	// id: 617, l: 618	
	ldr	 d0, [sp, #64]	// id: 618, l: 619	
	scvtf	 d1, d0	// id: 619, l: 620	
	ldr	 x0, [sp, #24]	// id: 620, l: 621	
	ldr	 d0, [x0, #528]	// id: 621, l: 622	
	scvtf	 d0, d0	// id: 622, l: 623	
	fmul	 d1, d1, d0	// id: 623, l: 624	
	ldr	 d0, [sp, #56]	// id: 624, l: 625	
	scvtf	 d0, d0	// id: 625, l: 626	
	fadd	 d0, d1, d0	// id: 626, l: 627	
	ldp	 x29, x30, [sp], #80	// id: 627, l: 628	
	.cfi_restore	30	// id: 628, l: 629	
	.cfi_restore	29	// id: 629, l: 630	
	.cfi_def_cfa_offset	0	// id: 630, l: 631	
	ret		// id: 631, l: 632	
	.cfi_endproc		// id: 632, l: 633	
.LFE5:	// id: 633, l: 634	
	.size	flow_org_cost, .-flow_org_cost	// id: 634, l: 635	
	.section	.rodata	// id: 635, l: 636	
	.p2align	3, , 0	// id: 636, l: 637	
.LC1:	// id: 637, l: 638	
	.string	"PRIMAL NETWORK SIMPLEX: "	// id: 638, l: 639	
	.p2align	3, , 0	// id: 639, l: 640	
.LC2:	// id: 640, l: 641	
	.string	"artificial arc with nonzero flow, node %d (%ld)\n"	// id: 641, l: 642	
	.p2align	3, , 0	// id: 642, l: 643	
.LC3:	// id: 643, l: 644	
	.string	"basis primal infeasible (%ld)\n"	// id: 644, l: 645	
	.text	0	// id: 645, l: 646	
	.p2align	2, , 0	// id: 646, l: 647	
	.globl	primal_feasible	// id: 647, l: 648	
	.type	primal_feasible, %function	// id: 648, l: 649	
primal_feasible:	// id: 649, l: 650	
.LFB6:	// id: 650, l: 651	
	.cfi_startproc		// id: 651, l: 652	
	stp	 x29, x30, [sp, #-80]!	// id: 652, l: 653	
	.cfi_def_cfa_offset	80	// id: 653, l: 654	
	.cfi_offset	29, -80	// id: 654, l: 655	
	.cfi_offset	30, -72	// id: 655, l: 656	
	mov	 x29, sp	// id: 656, l: 657	
	str	 x0, [sp, #24]	// id: 657, l: 658	
	ldr	 x0, [sp, #24]	// id: 658, l: 659	
	ldr	 x0, [x0, #592]	// id: 659, l: 660	
	str	 x0, [sp, #64]	// id: 660, l: 661	
	ldr	 x0, [sp, #24]	// id: 661, l: 662	
	ldr	 x0, [x0, #600]	// id: 662, l: 663	
	str	 x0, [sp, #56]	// id: 663, l: 664	
	ldr	 x0, [sp, #24]	// id: 664, l: 665	
	ldr	 x0, [x0, #552]	// id: 665, l: 666	
	str	 x0, [sp, #72]	// id: 666, l: 667	
	ldr	 x0, [sp, #24]	// id: 667, l: 668	
	ldr	 x0, [x0, #560]	// id: 668, l: 669	
	str	 x0, [sp, #48]	// id: 669, l: 670	
	ldr	 x0, [sp, #72]	// id: 670, l: 671	
	add	 x0, x0, #0x68	// id: 671, l: 672	
	str	 x0, [sp, #72]	// id: 672, l: 673	
	b	 .L42	// id: 673, l: 674	
.L48:	// id: 674, l: 675	
	ldr	 x0, [sp, #72]	// id: 675, l: 676	
	ldr	 x0, [x0, #48]	// id: 676, l: 677	
	str	 x0, [sp, #40]	// id: 677, l: 678	
	ldr	 x0, [sp, #72]	// id: 678, l: 679	
	ldr	 x0, [x0, #80]	// id: 679, l: 680	
	str	 x0, [sp, #32]	// id: 680, l: 681	
	ldr	 x1, [sp, #40]	// id: 681, l: 682	
	ldr	 x0, [sp, #64]	// id: 682, l: 683	
	cmp	 x1, x0	// id: 683, l: 684	
	bcc	 .L43	// id: 684, l: 685	
	ldr	 x1, [sp, #40]	// id: 685, l: 686	
	ldr	 x0, [sp, #56]	// id: 686, l: 687	
	cmp	 x1, x0	// id: 687, l: 688	
	bcs	 .L43	// id: 688, l: 689	
	ldr	 x0, [sp, #32]	// id: 689, l: 690	
	cmp	 x0, #0x0	// id: 690, l: 691	
	csneg	 x1, x0, x0, ge  // ge = tcont	// id: 691, l: 692	
	ldr	 x0, [sp, #24]	// id: 692, l: 693	
	ldr	 x0, [x0, #512]	// id: 693, l: 694	
	cmp	 x1, x0	// id: 694, l: 695	
	ble	 .L45	// id: 695, l: 696	
	adrp	 x0, .LC1	// id: 696, l: 697	
	add	 x0, x0, :lo12:.LC1	// id: 697, l: 698	
	bl	 printf	// id: 698, l: 699	
	ldr	 x0, [sp, #72]	// id: 699, l: 700	
	ldr	 w0, [x0, #96]	// id: 700, l: 701	
	ldr	 x2, [sp, #32]	// id: 701, l: 702	
	mov	 w1, w0	// id: 702, l: 703	
	adrp	 x0, .LC2	// id: 703, l: 704	
	add	 x0, x0, :lo12:.LC2	// id: 704, l: 705	
	bl	 printf	// id: 705, l: 706	
	b	 .L45	// id: 706, l: 707	
.L43:	// id: 707, l: 708	
	ldr	 x0, [sp, #24]	// id: 708, l: 709	
	ldr	 x0, [x0, #512]	// id: 709, l: 710	
	neg	 x0, x0	// id: 710, l: 711	
	ldr	 x1, [sp, #32]	// id: 711, l: 712	
	cmp	 x1, x0	// id: 712, l: 713	
	blt	 .L46	// id: 713, l: 714	
	ldr	 x0, [sp, #32]	// id: 714, l: 715	
	sub	 x1, x0, #0x1	// id: 715, l: 716	
	ldr	 x0, [sp, #24]	// id: 716, l: 717	
	ldr	 x0, [x0, #512]	// id: 717, l: 718	
	cmp	 x1, x0	// id: 718, l: 719	
	ble	 .L45	// id: 719, l: 720	
.L46:	// id: 720, l: 721	
	adrp	 x0, .LC1	// id: 721, l: 722	
	add	 x0, x0, :lo12:.LC1	// id: 722, l: 723	
	bl	 printf	// id: 723, l: 724	
	ldr	 x1, [sp, #32]	// id: 724, l: 725	
	adrp	 x0, .LC3	// id: 725, l: 726	
	add	 x0, x0, :lo12:.LC3	// id: 726, l: 727	
	bl	 printf	// id: 727, l: 728	
	ldr	 x0, [sp, #24]	// id: 728, l: 729	
	str	 xzr, [x0, #488]	// id: 729, l: 730	
	mov	 x0, #0x1                   	// #1	// id: 730, l: 731	
	b	 .L47	// id: 731, l: 732	
.L45:	// id: 732, l: 733	
	ldr	 x0, [sp, #72]	// id: 733, l: 734	
	add	 x0, x0, #0x68	// id: 734, l: 735	
	str	 x0, [sp, #72]	// id: 735, l: 736	
.L42:	// id: 736, l: 737	
	ldr	 x1, [sp, #72]	// id: 737, l: 738	
	ldr	 x0, [sp, #48]	// id: 738, l: 739	
	cmp	 x1, x0	// id: 739, l: 740	
	bcc	 .L48	// id: 740, l: 741	
	ldr	 x0, [sp, #24]	// id: 741, l: 742	
	mov	 x1, #0x1                   	// #1	// id: 742, l: 743	
	str	 x1, [x0, #488]	// id: 743, l: 744	
	mov	 x0, #0x0                   	// #0	// id: 744, l: 745	
.L47:	// id: 745, l: 746	
	ldp	 x29, x30, [sp], #80	// id: 746, l: 747	
	.cfi_restore	30	// id: 747, l: 748	
	.cfi_restore	29	// id: 748, l: 749	
	.cfi_def_cfa_offset	0	// id: 749, l: 750	
	ret		// id: 750, l: 751	
	.cfi_endproc		// id: 751, l: 752	
.LFE6:	// id: 752, l: 753	
	.size	primal_feasible, .-primal_feasible	// id: 753, l: 754	
	.section	.rodata	// id: 754, l: 755	
	.p2align	3, , 0	// id: 755, l: 756	
.LC4:	// id: 756, l: 757	
	.string	"DUAL NETWORK SIMPLEX: "	// id: 757, l: 758	
	.p2align	3, , 0	// id: 758, l: 759	
.LC5:	// id: 759, l: 760	
	.string	"basis dual infeasible\n"	// id: 760, l: 761	
	.text	0	// id: 761, l: 762	
	.p2align	2, , 0	// id: 762, l: 763	
	.globl	dual_feasible	// id: 763, l: 764	
	.type	dual_feasible, %function	// id: 764, l: 765	
dual_feasible:	// id: 765, l: 766	
.LFB7:	// id: 766, l: 767	
	.cfi_startproc		// id: 767, l: 768	
	stp	 x29, x30, [sp, #-64]!	// id: 768, l: 769	
	.cfi_def_cfa_offset	64	// id: 769, l: 770	
	.cfi_offset	29, -64	// id: 770, l: 771	
	.cfi_offset	30, -56	// id: 771, l: 772	
	mov	 x29, sp	// id: 772, l: 773	
	str	 x0, [sp, #24]	// id: 773, l: 774	
	ldr	 x0, [sp, #24]	// id: 774, l: 775	
	ldr	 x0, [x0, #576]	// id: 775, l: 776	
	str	 x0, [sp, #40]	// id: 776, l: 777	
	str	 xzr, [sp, #48]	// id: 777, l: 778	
	str	 xzr, [sp, #48]	// id: 778, l: 779	
	ldr	 x0, [sp, #24]	// id: 779, l: 780	
	ldr	 x0, [x0, #568]	// id: 780, l: 781	
	str	 x0, [sp, #56]	// id: 781, l: 782	
	b	 .L50	// id: 782, l: 783	
.L59:	// id: 783, l: 784	
	ldr	 x0, [sp, #56]	// id: 784, l: 785	
	ldr	 x1, [x0, #8]	// id: 785, l: 786	
	ldr	 x0, [sp, #56]	// id: 786, l: 787	
	ldr	 x0, [x0, #16]	// id: 787, l: 788	
	ldr	 x0, [x0]	// id: 788, l: 789	
	sub	 x1, x1, x0	// id: 789, l: 790	
	ldr	 x0, [sp, #56]	// id: 790, l: 791	
	ldr	 x0, [x0, #24]	// id: 791, l: 792	
	ldr	 x0, [x0]	// id: 792, l: 793	
	add	 x0, x1, x0	// id: 793, l: 794	
	str	 x0, [sp, #32]	// id: 794, l: 795	
	ldr	 x0, [sp, #56]	// id: 795, l: 796	
	ldrsh	 w0, [x0, #32]	// id: 796, l: 797	
	cmp	 w0, #0x1	// id: 797, l: 798	
	bgt	 .L51	// id: 798, l: 799	
	cmp	 w0, #0x0	// id: 799, l: 800	
	bge	 .L52	// id: 800, l: 801	
	b	 .L57	// id: 801, l: 802	
.L51:	// id: 802, l: 803	
	cmp	 w0, #0x2	// id: 803, l: 804	
	beq	 .L54	// id: 804, l: 805	
	b	 .L57	// id: 805, l: 806	
.L52:	// id: 806, l: 807	
	ldr	 x0, [sp, #24]	// id: 807, l: 808	
	ldr	 x0, [x0, #512]	// id: 808, l: 809	
	neg	 x0, x0	// id: 809, l: 810	
	ldr	 x1, [sp, #32]	// id: 810, l: 811	
	cmp	 x1, x0	// id: 811, l: 812	
	bge	 .L61	// id: 812, l: 813	
	b	 .L56	// id: 813, l: 814	
.L54:	// id: 814, l: 815	
	ldr	 x0, [sp, #24]	// id: 815, l: 816	
	ldr	 x0, [x0, #512]	// id: 816, l: 817	
	ldr	 x1, [sp, #32]	// id: 817, l: 818	
	cmp	 x1, x0	// id: 818, l: 819	
	bgt	 .L62	// id: 819, l: 820	
	b	 .L57	// id: 820, l: 821	
.L61:	// id: 821, l: 822	
	nop		// id: 822, l: 823	
.L57:	// id: 823, l: 824	
	ldr	 x0, [sp, #56]	// id: 824, l: 825	
	add	 x0, x0, #0x48	// id: 825, l: 826	
	str	 x0, [sp, #56]	// id: 826, l: 827	
	ldr	 x0, [sp, #48]	// id: 827, l: 828	
	add	 x0, x0, #0x1	// id: 828, l: 829	
	str	 x0, [sp, #48]	// id: 829, l: 830	
.L50:	// id: 830, l: 831	
	ldr	 x1, [sp, #56]	// id: 831, l: 832	
	ldr	 x0, [sp, #40]	// id: 832, l: 833	
	cmp	 x1, x0	// id: 833, l: 834	
	bcc	 .L59	// id: 834, l: 835	
	mov	 x0, #0x0                   	// #0	// id: 835, l: 836	
	b	 .L60	// id: 836, l: 837	
.L62:	// id: 837, l: 838	
	nop		// id: 838, l: 839	
.L56:	// id: 839, l: 840	
	adrp	 x0, stderr	// id: 840, l: 841	
	add	 x0, x0, :lo12:stderr	// id: 841, l: 842	
	ldr	 x0, [x0]	// id: 842, l: 843	
	mov	 x3, x0	// id: 843, l: 844	
	mov	 x2, #0x16                  	// #22	// id: 844, l: 845	
	mov	 x1, #0x1                   	// #1	// id: 845, l: 846	
	adrp	 x0, .LC4	// id: 846, l: 847	
	add	 x0, x0, :lo12:.LC4	// id: 847, l: 848	
	bl	 fwrite	// id: 848, l: 849	
	adrp	 x0, stderr	// id: 849, l: 850	
	add	 x0, x0, :lo12:stderr	// id: 850, l: 851	
	ldr	 x0, [x0]	// id: 851, l: 852	
	mov	 x3, x0	// id: 852, l: 853	
	mov	 x2, #0x16                  	// #22	// id: 853, l: 854	
	mov	 x1, #0x1                   	// #1	// id: 854, l: 855	
	adrp	 x0, .LC5	// id: 855, l: 856	
	add	 x0, x0, :lo12:.LC5	// id: 856, l: 857	
	bl	 fwrite	// id: 857, l: 858	
	mov	 x0, #0x1                   	// #1	// id: 858, l: 859	
.L60:	// id: 859, l: 860	
	ldp	 x29, x30, [sp], #64	// id: 860, l: 861	
	.cfi_restore	30	// id: 861, l: 862	
	.cfi_restore	29	// id: 862, l: 863	
	.cfi_def_cfa_offset	0	// id: 863, l: 864	
	ret		// id: 864, l: 865	
	.cfi_endproc		// id: 865, l: 866	
.LFE7:	// id: 866, l: 867	
	.size	dual_feasible, .-dual_feasible	// id: 867, l: 868	
	.p2align	2, , 0	// id: 868, l: 869	
	.globl	getfree	// id: 869, l: 870	
	.type	getfree, %function	// id: 870, l: 871	
getfree:	// id: 871, l: 872	
.LFB8:	// id: 872, l: 873	
	.cfi_startproc		// id: 873, l: 874	
	stp	 x29, x30, [sp, #-32]!	// id: 874, l: 875	
	.cfi_def_cfa_offset	32	// id: 875, l: 876	
	.cfi_offset	29, -32	// id: 876, l: 877	
	.cfi_offset	30, -24	// id: 877, l: 878	
	mov	 x29, sp	// id: 878, l: 879	
	str	 x0, [sp, #24]	// id: 879, l: 880	
	ldr	 x0, [sp, #24]	// id: 880, l: 881	
	ldr	 x0, [x0, #552]	// id: 881, l: 882	
	cmp	 x0, #0x0	// id: 882, l: 883	
	beq	 .L64	// id: 883, l: 884	
	ldr	 x0, [sp, #24]	// id: 884, l: 885	
	ldr	 x0, [x0, #552]	// id: 885, l: 886	
	bl	 free	// id: 886, l: 887	
.L64:	// id: 887, l: 888	
	ldr	 x0, [sp, #24]	// id: 888, l: 889	
	ldr	 x0, [x0, #568]	// id: 889, l: 890	
	cmp	 x0, #0x0	// id: 890, l: 891	
	beq	 .L65	// id: 891, l: 892	
	ldr	 x0, [sp, #24]	// id: 892, l: 893	
	ldr	 x0, [x0, #568]	// id: 893, l: 894	
	bl	 free	// id: 894, l: 895	
.L65:	// id: 895, l: 896	
	ldr	 x0, [sp, #24]	// id: 896, l: 897	
	ldr	 x0, [x0, #592]	// id: 897, l: 898	
	cmp	 x0, #0x0	// id: 898, l: 899	
	beq	 .L66	// id: 899, l: 900	
	ldr	 x0, [sp, #24]	// id: 900, l: 901	
	ldr	 x0, [x0, #592]	// id: 901, l: 902	
	bl	 free	// id: 902, l: 903	
.L66:	// id: 903, l: 904	
	ldr	 x0, [sp, #24]	// id: 904, l: 905	
	ldr	 x0, [x0, #584]	// id: 905, l: 906	
	cmp	 x0, #0x0	// id: 906, l: 907	
	beq	 .L67	// id: 907, l: 908	
	ldr	 x0, [sp, #24]	// id: 908, l: 909	
	ldr	 x0, [x0, #584]	// id: 909, l: 910	
	bl	 free	// id: 910, l: 911	
.L67:	// id: 911, l: 912	
	ldr	 x0, [sp, #24]	// id: 912, l: 913	
	str	 xzr, [x0, #560]	// id: 913, l: 914	
	ldr	 x0, [sp, #24]	// id: 914, l: 915	
	ldr	 x1, [x0, #560]	// id: 915, l: 916	
	ldr	 x0, [sp, #24]	// id: 916, l: 917	
	str	 x1, [x0, #552]	// id: 917, l: 918	
	ldr	 x0, [sp, #24]	// id: 918, l: 919	
	str	 xzr, [x0, #576]	// id: 919, l: 920	
	ldr	 x0, [sp, #24]	// id: 920, l: 921	
	ldr	 x1, [x0, #576]	// id: 921, l: 922	
	ldr	 x0, [sp, #24]	// id: 922, l: 923	
	str	 x1, [x0, #568]	// id: 923, l: 924	
	ldr	 x0, [sp, #24]	// id: 924, l: 925	
	str	 xzr, [x0, #600]	// id: 925, l: 926	
	ldr	 x0, [sp, #24]	// id: 926, l: 927	
	ldr	 x1, [x0, #600]	// id: 927, l: 928	
	ldr	 x0, [sp, #24]	// id: 928, l: 929	
	str	 x1, [x0, #592]	// id: 929, l: 930	
	ldr	 x0, [sp, #24]	// id: 930, l: 931	
	str	 xzr, [x0, #584]	// id: 931, l: 932	
	mov	 x0, #0x0                   	// #0	// id: 932, l: 933	
	ldp	 x29, x30, [sp], #32	// id: 933, l: 934	
	.cfi_restore	30	// id: 934, l: 935	
	.cfi_restore	29	// id: 935, l: 936	
	.cfi_def_cfa_offset	0	// id: 936, l: 937	
	ret		// id: 937, l: 938	
	.cfi_endproc		// id: 938, l: 939	
.LFE8:	// id: 939, l: 940	
	.size	getfree, .-getfree	// id: 940, l: 941	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 941, l: 942	
	.section	.note.GNU-stack, "",@progbits	// id: 942, l: 943	
