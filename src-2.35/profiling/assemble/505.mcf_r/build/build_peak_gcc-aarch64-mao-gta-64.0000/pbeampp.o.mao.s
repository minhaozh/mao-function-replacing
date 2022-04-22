	.arch	armv8-a	// id: 0, l: 1	
	.file	"pbeampp.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.p2align	3, , 7	// id: 4, l: 5	
	.globl	cost_compare	// id: 5, l: 6	
	.type	cost_compare, %function	// id: 6, l: 7	
cost_compare:	// id: 7, l: 8	
.LFB27:	// id: 8, l: 9	
	.cfi_startproc		// id: 9, l: 10	
	ldr	 x2, [x0]	// id: 10, l: 11	
	ldr	 x1, [x1]	// id: 11, l: 12	
	ldr	 x3, [x2, #16]	// id: 12, l: 13	
	ldr	 x0, [x1, #16]	// id: 13, l: 14	
	cmp	 x3, x0	// id: 14, l: 15	
	blt	 .L3	// id: 15, l: 16	
	mov	 w0, #0xffffffff            	// #-1	// id: 16, l: 17	
	bgt	 .L1	// id: 17, l: 18	
	ldr	 x1, [x1]	// id: 18, l: 19	
	mov	 w0, #0x1                   	// #1	// id: 19, l: 20	
	ldr	 x2, [x2]	// id: 20, l: 21	
	ldr	 w1, [x1]	// id: 21, l: 22	
	ldr	 w2, [x2]	// id: 22, l: 23	
	cmp	 w2, w1	// id: 23, l: 24	
	csneg	 w0, w0, w0, gt	// id: 24, l: 25	
.L1:	// id: 25, l: 26	
	ret		// id: 26, l: 27	
	.p2align	2, , 3	// id: 27, l: 28	
.L3:	// id: 28, l: 29	
	mov	 w0, #0x1                   	// #1	// id: 29, l: 30	
	ret		// id: 30, l: 31	
	.cfi_endproc		// id: 31, l: 32	
.LFE27:	// id: 32, l: 33	
	.size	cost_compare, .-cost_compare	// id: 33, l: 34	
	.p2align	2, , 0	// id: 34, l: 35	
	.p2align	3, , 7	// id: 35, l: 36	
	.globl	set_static_vars	// id: 36, l: 37	
	.type	set_static_vars, %function	// id: 37, l: 38	
set_static_vars:	// id: 38, l: 39	
.LFB25:	// id: 39, l: 40	
	.cfi_startproc		// id: 40, l: 41	
	ldr	 x2, [x0, #632]	// id: 41, l: 42	
	adrp	 x3, .LANCHOR0	// id: 42, l: 43	
	ldr	 x0, [x0, #640]	// id: 43, l: 44	
	mul	 x0, x2, x0	// id: 44, l: 45	
	add	 x0, x0, x0, lsl #3	// id: 45, l: 46	
	add	 x0, x1, x0, lsl #3	// id: 46, l: 47	
	str	 x0, [x3,:lo12:.LANCHOR0]	// id: 47, l: 48	
	ret		// id: 48, l: 49	
	.cfi_endproc		// id: 49, l: 50	
.LFE25:	// id: 50, l: 51	
	.size	set_static_vars, .-set_static_vars	// id: 51, l: 52	
	.p2align	2, , 0	// id: 52, l: 53	
	.p2align	3, , 7	// id: 53, l: 54	
	.globl	bea_is_dual_infeasible	// id: 54, l: 55	
	.type	bea_is_dual_infeasible, %function	// id: 55, l: 56	
bea_is_dual_infeasible:	// id: 56, l: 57	
.LFB26:	// id: 57, l: 58	
	.cfi_startproc		// id: 58, l: 59	
	cmp	 x1, #0x0	// id: 59, l: 60	
	blt	 .L12	// id: 60, l: 61	
	beq	 .L11	// id: 61, l: 62	
	ldrsh	 w0, [x0, #32]	// id: 62, l: 63	
	cmp	 w0, #0x2	// id: 63, l: 64	
	cset	 w0, eq  // eq = none	// id: 64, l: 65	
	ret		// id: 65, l: 66	
	.p2align	2, , 3	// id: 66, l: 67	
.L12:	// id: 67, l: 68	
	ldrsh	 w0, [x0, #32]	// id: 68, l: 69	
	cmp	 w0, #0x1	// id: 69, l: 70	
	cset	 w0, eq  // eq = none	// id: 70, l: 71	
	ret		// id: 71, l: 72	
	.p2align	2, , 3	// id: 72, l: 73	
.L11:	// id: 73, l: 74	
	mov	 w0, #0x0                   	// #0	// id: 74, l: 75	
	ret		// id: 75, l: 76	
	.cfi_endproc		// id: 76, l: 77	
.LFE26:	// id: 77, l: 78	
	.size	bea_is_dual_infeasible, .-bea_is_dual_infeasible	// id: 78, l: 79	
	.p2align	2, , 0	// id: 79, l: 80	
	.p2align	3, , 7	// id: 80, l: 81	
	.globl	primal_bea_mpp	// id: 81, l: 82	
	.type	primal_bea_mpp, %function	// id: 82, l: 83	
primal_bea_mpp:	// id: 83, l: 84	
.LFB28:	// id: 84, l: 85	
	.cfi_startproc		// id: 85, l: 86	
	stp	 x29, x30, [sp, #-64]!	// id: 86, l: 87	
	.cfi_def_cfa_offset	64	// id: 87, l: 88	
	.cfi_offset	29, -64	// id: 88, l: 89	
	.cfi_offset	30, -56	// id: 89, l: 90	
	add	 x9, x3, w5, sxtw #3	// id: 90, l: 91	
	sxtw	 x12, w5	// id: 91, l: 92	
	mov	 x29, sp	// id: 92, l: 93	
	mov	 x8, #0x0                   	// #0	// id: 93, l: 94	
	mov	 x0, #0x1                   	// #1	// id: 94, l: 95	
	stp	 x19, x20, [sp, #16]	// id: 95, l: 96	
	.cfi_offset	19, -48	// id: 96, l: 97	
	.cfi_offset	20, -40	// id: 97, l: 98	
	mov	 x19, x4	// id: 98, l: 99	
	ldp	 x10, x14, [sp, #64]	// id: 99, l: 100	
	b	 .L14	// id: 100, l: 101	
	.p2align	2, , 3	// id: 101, l: 102	
.L16:	// id: 102, l: 103	
	beq	 .L15	// id: 103, l: 104	
	ldrsh	 w11, [x5, #32]	// id: 104, l: 105	
	cmp	 w11, #0x2	// id: 105, l: 106	
	beq	 .L17	// id: 106, l: 107	
.L15:	// id: 107, l: 108	
	add	 x0, x0, #0x1	// id: 108, l: 109	
	cmp	 x0, #0x3d	// id: 109, l: 110	
	beq	 .L18	// id: 110, l: 111	
.L14:	// id: 111, l: 112	
	ldr	 x4, [x9]	// id: 112, l: 113	
	cmp	 x4, x0	// id: 113, l: 114	
	blt	 .L18	// id: 114, l: 115	
	ldr	 x4, [x19, x0, lsl #3]	// id: 115, l: 116	
	ldr	 x5, [x4, #24]	// id: 116, l: 117	
	cmp	 x5, #0x0	// id: 117, l: 118	
	ble	 .L15	// id: 118, l: 119	
	ldr	 x5, [x4]	// id: 119, l: 120	
	ldp	 x4, x11, [x5, #16]	// id: 120, l: 121	
	ldr	 x13, [x4]	// id: 121, l: 122	
	ldr	 x4, [x5, #8]	// id: 122, l: 123	
	ldr	 x11, [x11]	// id: 123, l: 124	
	sub	 x4, x4, x13	// id: 124, l: 125	
	adds	 x4, x4, x11	// id: 125, l: 126	
	bpl	 .L16	// id: 126, l: 127	
	ldrsh	 w11, [x5, #32]	// id: 127, l: 128	
	cmp	 w11, #0x1	// id: 128, l: 129	
	bne	 .L15	// id: 129, l: 130	
.L17:	// id: 130, l: 131	
	add	 x8, x8, #0x1	// id: 131, l: 132	
	cmp	 x4, #0x0	// id: 132, l: 133	
	csneg	 x11, x4, x4, ge  // ge = tcont	// id: 133, l: 134	
	add	 x0, x0, #0x1	// id: 134, l: 135	
	cmp	 x0, #0x3d	// id: 135, l: 136	
	ldr	 x13, [x19, x8, lsl #3]	// id: 136, l: 137	
	str	 x5, [x13]	// id: 137, l: 138	
	ldr	 x5, [x19, x8, lsl #3]	// id: 138, l: 139	
	str	 x4, [x5, #8]	// id: 139, l: 140	
	ldr	 x4, [x19, x8, lsl #3]	// id: 140, l: 141	
	str	 x11, [x4, #16]	// id: 141, l: 142	
	ldr	 x4, [x19, x8, lsl #3]	// id: 142, l: 143	
	str	 xzr, [x4, #24]	// id: 143, l: 144	
	bne	 .L14	// id: 144, l: 145	
	.p2align	3, , 7	// id: 145, l: 146	
.L18:	// id: 146, l: 147	
	add	 x14, x14, x14, lsl #3	// id: 147, l: 148	
	add	 x7, x7, x7, lsl #3	// id: 148, l: 149	
	add	 x4, x10, x10, lsl #3	// id: 149, l: 150	
	adrp	 x0, .LANCHOR0	// id: 150, l: 151	
	str	 x8, [x3, x12, lsl #3]	// id: 151, l: 152	
	lsl	 x14, x14, #3	// id: 152, l: 153	
	ldr	 x16, [x0,:lo12:.LANCHOR0]	// id: 153, l: 154	
	lsl	 x13, x7, #3	// id: 154, l: 155	
	cmp	 x10, #0x1	// id: 155, l: 156	
	sub	 x17, x14, #0x48	// id: 156, l: 157	
	lsl	 x4, x4, #3	// id: 157, l: 158	
	ldr	 x15, [x6]	// id: 158, l: 159	
	bne	 .L20	// id: 159, l: 160	
	mov	 x8, x15	// id: 160, l: 161	
	.p2align	3, , 7	// id: 161, l: 162	
.L30:	// id: 162, l: 163	
	cmp	 x16, x8	// id: 163, l: 164	
	add	 x5, x8, x14	// id: 164, l: 165	
	add	 x7, x8, x17	// id: 165, l: 166	
	add	 x0, x8, x13	// id: 166, l: 167	
	csel	 x8, x7, x5, ls  // ls = plast	// id: 167, l: 168	
	str	 x8, [x6]	// id: 168, l: 169	
	cmp	 x8, x0	// id: 169, l: 170	
	bhi	 .L27	// id: 170, l: 171	
	b	 .L23	// id: 171, l: 172	
	.p2align	2, , 3	// id: 172, l: 173	
.L25:	// id: 173, l: 174	
	ccmp	 w7, #0x2, #0x0, gt	// id: 174, l: 175	
	beq	 .L26	// id: 175, l: 176	
.L24:	// id: 176, l: 177	
	add	 x0, x0, x4	// id: 177, l: 178	
	cmp	 x0, x8	// id: 178, l: 179	
	bcs	 .L23	// id: 179, l: 180	
.L27:	// id: 180, l: 181	
	ldrsh	 w7, [x0, #32]	// id: 181, l: 182	
	cmp	 w7, #0x0	// id: 182, l: 183	
	ble	 .L24	// id: 183, l: 184	
	ldp	 x5, x10, [x0, #16]	// id: 184, l: 185	
	ldr	 x11, [x5]	// id: 185, l: 186	
	ldr	 x5, [x0, #8]	// id: 186, l: 187	
	ldr	 x10, [x10]	// id: 187, l: 188	
	sub	 x5, x5, x11	// id: 188, l: 189	
	add	 x5, x5, x10	// id: 189, l: 190	
	cmp	 x5, #0x0	// id: 190, l: 191	
	bge	 .L25	// id: 191, l: 192	
	cmp	 w7, #0x1	// id: 192, l: 193	
	bne	 .L24	// id: 193, l: 194	
.L26:	// id: 194, l: 195	
	ldr	 x7, [x9]	// id: 195, l: 196	
	cmp	 x5, #0x0	// id: 196, l: 197	
	csneg	 x8, x5, x5, ge  // ge = tcont	// id: 197, l: 198	
	add	 x7, x7, #0x1	// id: 198, l: 199	
	str	 x7, [x9]	// id: 199, l: 200	
	ldr	 x7, [x19, x7, lsl #3]	// id: 200, l: 201	
	str	 x0, [x7]	// id: 201, l: 202	
	add	 x0, x0, x4	// id: 202, l: 203	
	ldr	 x7, [x9]	// id: 203, l: 204	
	ldr	 x7, [x19, x7, lsl #3]	// id: 204, l: 205	
	str	 x5, [x7, #8]	// id: 205, l: 206	
	ldr	 x5, [x9]	// id: 206, l: 207	
	ldr	 x5, [x19, x5, lsl #3]	// id: 207, l: 208	
	str	 x8, [x5, #16]	// id: 208, l: 209	
	ldr	 x5, [x9]	// id: 209, l: 210	
	ldr	 x5, [x19, x5, lsl #3]	// id: 210, l: 211	
	str	 xzr, [x5, #24]	// id: 211, l: 212	
	ldr	 x8, [x6]	// id: 212, l: 213	
	cmp	 x0, x8	// id: 213, l: 214	
	bcc	 .L27	// id: 214, l: 215	
	.p2align	3, , 7	// id: 215, l: 216	
.L23:	// id: 216, l: 217	
	cmp	 x8, x2	// id: 217, l: 218	
	bcc	 .L28	// id: 218, l: 219	
	mov	 x8, x1	// id: 219, l: 220	
	str	 x1, [x6]	// id: 220, l: 221	
.L28:	// id: 221, l: 222	
	cmp	 x15, x8	// id: 222, l: 223	
	beq	 .L29	// id: 223, l: 224	
	ldr	 x0, [x3]	// id: 224, l: 225	
	cmp	 x0, #0x3b	// id: 225, l: 226	
	ble	 .L30	// id: 226, l: 227	
.L29:	// id: 227, l: 228	
	ldr	 x1, [x3, x12, lsl #3]	// id: 228, l: 229	
	mov	 x2, #0xffffffffffffffff    	// #-1	// id: 229, l: 230	
	mov	 x0, #0x0                   	// #0	// id: 230, l: 231	
	add	 x1, x1, #0x1	// id: 231, l: 232	
	ldr	 x1, [x19, x1, lsl #3]	// id: 232, l: 233	
	str	 x2, [x1, #24]	// id: 233, l: 234	
	ldr	 x1, [x3, x12, lsl #3]	// id: 234, l: 235	
	cbz	 x1, .L13	// id: 235, l: 236	
	mov	 x2, #0x8                   	// #8	// id: 236, l: 237	
	adrp	 x3, cost_compare	// id: 237, l: 238	
	add	 x0, x19, x2	// id: 238, l: 239	
	add	 x3, x3, :lo12:cost_compare	// id: 239, l: 240	
	bl	 spec_qsort	// id: 240, l: 241	
	ldr	 x0, [x19, #8]	// id: 241, l: 242	
.L13:	// id: 242, l: 243	
	ldp	 x19, x20, [sp, #16]	// id: 243, l: 244	
	ldp	 x29, x30, [sp], #64	// id: 244, l: 245	
	.cfi_remember_state		// id: 245, l: 246	
	.cfi_restore	30	// id: 246, l: 247	
	.cfi_restore	29	// id: 247, l: 248	
	.cfi_restore	19	// id: 248, l: 249	
	.cfi_restore	20	// id: 249, l: 250	
	.cfi_def_cfa_offset	0	// id: 250, l: 251	
	ret		// id: 251, l: 252	
.L20:	// id: 252, l: 253	
	.cfi_restore_state		// id: 253, l: 254	
	lsr	 x30, x10, #1	// id: 254, l: 255	
	stp	 x21, x22, [sp, #32]	// id: 255, l: 256	
	.cfi_offset	22, -24	// id: 256, l: 257	
	.cfi_offset	21, -32	// id: 257, l: 258	
	and	 x22, x10, #0xfffffffffffffffe	// id: 258, l: 259	
	add	 x21, x22, #0x1	// id: 259, l: 260	
	add	 x30, x3, x30, lsl #4	// id: 260, l: 261	
	lsl	 x20, x22, #3	// id: 261, l: 262	
	mov	 x8, x15	// id: 262, l: 263	
	str	 x23, [sp, #48]	// id: 263, l: 264	
	.cfi_offset	23, -16	// id: 264, l: 265	
	sub	 x23, x10, #0x1	// id: 265, l: 266	
.L32:	// id: 266, l: 267	
	.p2align	3, , 7	// id: 267, l: 268	
.L31:	// id: 268, l: 269	
	cmp	 x16, x8	// id: 269, l: 270	
	add	 x5, x8, x17	// id: 270, l: 271	
	add	 x7, x8, x14	// id: 271, l: 272	
	add	 x0, x8, x13	// id: 272, l: 273	
	csel	 x8, x7, x5, hi  // hi = pmore	// id: 273, l: 274	
	str	 x8, [x6]	// id: 274, l: 275	
	cmp	 x8, x0	// id: 275, l: 276	
	bhi	 .L34	// id: 276, l: 277	
	b	 .L35	// id: 277, l: 278	
	.p2align	2, , 3	// id: 278, l: 279	
.L38:	// id: 279, l: 280	
	ccmp	 w7, #0x2, #0x0, gt	// id: 280, l: 281	
	beq	 .L39	// id: 281, l: 282	
.L37:	// id: 282, l: 283	
	add	 x0, x0, x4	// id: 283, l: 284	
	cmp	 x0, x8	// id: 284, l: 285	
	bcs	 .L35	// id: 285, l: 286	
.L34:	// id: 286, l: 287	
	ldrsh	 w7, [x0, #32]	// id: 287, l: 288	
	cmp	 w7, #0x0	// id: 288, l: 289	
	ble	 .L37	// id: 289, l: 290	
	ldp	 x5, x11, [x0, #16]	// id: 290, l: 291	
	ldr	 x18, [x5]	// id: 291, l: 292	
	ldr	 x5, [x0, #8]	// id: 292, l: 293	
	ldr	 x11, [x11]	// id: 293, l: 294	
	sub	 x5, x5, x18	// id: 294, l: 295	
	add	 x5, x5, x11	// id: 295, l: 296	
	cmp	 x5, #0x0	// id: 296, l: 297	
	bge	 .L38	// id: 297, l: 298	
	cmp	 w7, #0x1	// id: 298, l: 299	
	bne	 .L37	// id: 299, l: 300	
.L39:	// id: 300, l: 301	
	ldr	 x7, [x9]	// id: 301, l: 302	
	cmp	 x5, #0x0	// id: 302, l: 303	
	csneg	 x8, x5, x5, ge  // ge = tcont	// id: 303, l: 304	
	add	 x7, x7, #0x1	// id: 304, l: 305	
	str	 x7, [x9]	// id: 305, l: 306	
	ldr	 x7, [x19, x7, lsl #3]	// id: 306, l: 307	
	str	 x0, [x7]	// id: 307, l: 308	
	add	 x0, x0, x4	// id: 308, l: 309	
	ldr	 x7, [x9]	// id: 309, l: 310	
	ldr	 x7, [x19, x7, lsl #3]	// id: 310, l: 311	
	str	 x5, [x7, #8]	// id: 311, l: 312	
	ldr	 x5, [x9]	// id: 312, l: 313	
	ldr	 x5, [x19, x5, lsl #3]	// id: 313, l: 314	
	str	 x8, [x5, #16]	// id: 314, l: 315	
	ldr	 x5, [x9]	// id: 315, l: 316	
	ldr	 x5, [x19, x5, lsl #3]	// id: 316, l: 317	
	str	 xzr, [x5, #24]	// id: 317, l: 318	
	ldr	 x8, [x6]	// id: 318, l: 319	
	cmp	 x0, x8	// id: 319, l: 320	
	bcc	 .L34	// id: 320, l: 321	
	.p2align	3, , 7	// id: 321, l: 322	
.L35:	// id: 322, l: 323	
	cmp	 x2, x8	// id: 323, l: 324	
	bhi	 .L40	// id: 324, l: 325	
	mov	 x8, x1	// id: 325, l: 326	
	str	 x1, [x6]	// id: 326, l: 327	
.L40:	// id: 327, l: 328	
	cmp	 x15, x8	// id: 328, l: 329	
	beq	 .L74	// id: 329, l: 330	
	cmp	 x10, #0x0	// id: 330, l: 331	
	ble	 .L31	// id: 331, l: 332	
	cmp	 x23, #0x3	// id: 332, l: 333	
	bls	 .L41	// id: 333, l: 334	
	movi	 v0.4s, #0x0	// id: 334, l: 335	
	mov	 x0, x3	// id: 335, l: 336	
	.p2align	3, , 7	// id: 336, l: 337	
.L42:	// id: 337, l: 338	
	ldr	 q1, [x0], #16	// id: 338, l: 339	
	add	 v0.2d, v0.2d, v1.2d	// id: 339, l: 340	
	cmp	 x30, x0	// id: 340, l: 341	
	bne	 .L42	// id: 341, l: 342	
	addp	 d0, v0.2d	// id: 342, l: 343	
	cmp	 x10, x22	// id: 343, l: 344	
	umov	 x0, v0.d[0]	// id: 344, l: 345	
	beq	 .L43	// id: 345, l: 346	
	ldr	 x11, [x3, x20]	// id: 346, l: 347	
	cmp	 x10, x21	// id: 347, l: 348	
	mov	 x5, x20	// id: 348, l: 349	
	mov	 x7, x21	// id: 349, l: 350	
	add	 x0, x0, x11	// id: 350, l: 351	
	ble	 .L43	// id: 351, l: 352	
.L45:	// id: 352, l: 353	
	add	 x5, x3, x5	// id: 353, l: 354	
	add	 x11, x7, #0x1	// id: 354, l: 355	
	cmp	 x10, x11	// id: 355, l: 356	
	ldr	 x11, [x5, #8]	// id: 356, l: 357	
	add	 x0, x0, x11	// id: 357, l: 358	
	ble	 .L43	// id: 358, l: 359	
	ldr	 x11, [x5, #16]	// id: 359, l: 360	
	add	 x7, x7, #0x2	// id: 360, l: 361	
	cmp	 x10, x7	// id: 361, l: 362	
	add	 x0, x0, x11	// id: 362, l: 363	
	ble	 .L43	// id: 363, l: 364	
	ldr	 x5, [x5, #24]	// id: 364, l: 365	
	add	 x0, x0, x5	// id: 365, l: 366	
.L43:	// id: 366, l: 367	
	cmp	 x0, #0x3b	// id: 367, l: 368	
	ble	 .L31	// id: 368, l: 369	
.L74:	// id: 369, l: 370	
	ldp	 x21, x22, [sp, #32]	// id: 370, l: 371	
	.cfi_remember_state		// id: 371, l: 372	
	.cfi_restore	22	// id: 372, l: 373	
	.cfi_restore	21	// id: 373, l: 374	
	ldr	 x23, [sp, #48]	// id: 374, l: 375	
	.cfi_restore	23	// id: 375, l: 376	
	b	 .L29	// id: 376, l: 377	
.L41:	// id: 377, l: 378	
	.cfi_restore_state		// id: 378, l: 379	
	mov	 x7, #0x1                   	// #1	// id: 379, l: 380	
	mov	 x5, #0x0                   	// #0	// id: 380, l: 381	
	ldr	 x0, [x3]	// id: 381, l: 382	
	b	 .L45	// id: 382, l: 383	
	.cfi_endproc		// id: 383, l: 384	
.LFE28:	// id: 384, l: 385	
	.size	primal_bea_mpp, .-primal_bea_mpp	// id: 385, l: 386	
	.bss		// id: 386, l: 387	
	.p2align	3, , 0	// id: 387, l: 388	
	.set	.LANCHOR0, .	// id: 388, l: 389	
	.type	full_group_end_arc, %object	// id: 389, l: 390	
	.size	full_group_end_arc, 8	// id: 390, l: 391	
full_group_end_arc:	// id: 391, l: 392	
	.space	8, 0	// id: 392, l: 393	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 393, l: 394	
	.section	.note.GNU-stack, "",@progbits	// id: 394, l: 395	
