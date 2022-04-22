	.arch	armv8-a	// id: 0, l: 1	
	.file	"readmin.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.section	.rodata.str1.8, "aMS",@progbits,1	// id: 3, l: 4	
	.p2align	3, , 0	// id: 4, l: 5	
.LC0:	// id: 5, l: 6	
	.string	"r"	// id: 6, l: 7	
	.p2align	3, , 0	// id: 7, l: 8	
.LC1:	// id: 8, l: 9	
	.string	"%ld %ld"	// id: 9, l: 10	
	.p2align	3, , 0	// id: 10, l: 11	
.LC2:	// id: 11, l: 12	
	.string	"read_min(): not enough memory"	// id: 12, l: 13	
	.p2align	3, , 0	// id: 13, l: 14	
.LC3:	// id: 14, l: 15	
	.string	"%ld %ld %ld"	// id: 15, l: 16	
	.text	0	// id: 16, l: 17	
	.p2align	2, , 0	// id: 17, l: 18	
	.p2align	3, , 7	// id: 18, l: 19	
	.globl	read_min	// id: 19, l: 20	
	.type	read_min, %function	// id: 20, l: 21	
read_min:	// id: 21, l: 22	
.LFB25:	// id: 22, l: 23	
	.cfi_startproc		// id: 23, l: 24	
	stp	 x29, x30, [sp, #-352]!	// id: 24, l: 25	
	.cfi_def_cfa_offset	352	// id: 25, l: 26	
	.cfi_offset	29, -352	// id: 26, l: 27	
	.cfi_offset	30, -344	// id: 27, l: 28	
	adrp	 x1, .LC0	// id: 28, l: 29	
	add	 x1, x1, :lo12:.LC0	// id: 29, l: 30	
	mov	 x29, sp	// id: 30, l: 31	
	stp	 x19, x20, [sp, #16]	// id: 31, l: 32	
	.cfi_offset	19, -336	// id: 32, l: 33	
	.cfi_offset	20, -328	// id: 33, l: 34	
	mov	 x20, x0	// id: 34, l: 35	
	bl	 fopen	// id: 35, l: 36	
	cbz	 x0, .L4	// id: 36, l: 37	
	mov	 x2, x0	// id: 37, l: 38	
	mov	 w1, #0xc8                  	// #200	// id: 38, l: 39	
	stp	 x23, x24, [sp, #48]	// id: 39, l: 40	
	.cfi_offset	24, -296	// id: 40, l: 41	
	.cfi_offset	23, -304	// id: 41, l: 42	
	mov	 x24, x0	// id: 42, l: 43	
	add	 x0, sp, #0x90	// id: 43, l: 44	
	stp	 x25, x26, [sp, #64]	// id: 44, l: 45	
	.cfi_offset	26, -280	// id: 45, l: 46	
	.cfi_offset	25, -288	// id: 46, l: 47	
	bl	 fgets	// id: 47, l: 48	
	adrp	 x25, .LC1	// id: 48, l: 49	
	add	 x25, x25, :lo12:.LC1	// id: 49, l: 50	
	add	 x0, sp, #0x90	// id: 50, l: 51	
	mov	 x1, x25	// id: 51, l: 52	
	add	 x3, sp, #0x80	// id: 52, l: 53	
	add	 x2, sp, #0x78	// id: 53, l: 54	
	bl	 __isoc99_sscanf	// id: 54, l: 55	
	cmp	 w0, #0x2	// id: 55, l: 56	
	bne	 .L28	// id: 56, l: 57	
	stp	 x27, x28, [sp, #80]	// id: 57, l: 58	
	.cfi_offset	28, -264	// id: 58, l: 59	
	.cfi_offset	27, -272	// id: 59, l: 60	
	mov	 x3, #0xf7cf                	// #63439	// id: 60, l: 61	
	movk	 x3, #0xe353, lsl #16	// id: 61, l: 62	
	ldp	 x28, x2, [sp, #120]	// id: 62, l: 63	
	movk	 x3, #0x9ba5, lsl #32	// id: 63, l: 64	
	movk	 x3, #0x20c4, lsl #48	// id: 64, l: 65	
	stp	 x21, x22, [sp, #32]	// id: 65, l: 66	
	.cfi_offset	22, -312	// id: 66, l: 67	
	.cfi_offset	21, -320	// id: 67, l: 68	
	mov	 x0, #0xfa0                 	// #4000	// id: 68, l: 69	
	str	 x0, [x20, #640]	// id: 69, l: 70	
	lsl	 x26, x28, #1	// id: 70, l: 71	
	add	 x23, x26, x28	// id: 71, l: 72	
	add	 x27, x26, #0x1	// id: 72, l: 73	
	add	 x23, x23, x2	// id: 73, l: 74	
	stp	 x23, x2, [x20, #424]	// id: 74, l: 75	
	sub	 x1, x23, #0x1	// id: 75, l: 76	
	stp	 x27, x28, [x20, #400]	// id: 76, l: 77	
	smulh	 x2, x23, x3	// id: 77, l: 78	
	smulh	 x3, x1, x3	// id: 78, l: 79	
	asr	 x2, x2, #9	// id: 79, l: 80	
	sub	 x2, x2, x23, asr #63	// id: 80, l: 81	
	asr	 x3, x3, #9	// id: 81, l: 82	
	sub	 x1, x3, x1, asr #63	// id: 82, l: 83	
	lsl	 x3, x2, #5	// id: 83, l: 84	
	add	 x1, x1, #0x1	// id: 84, l: 85	
	sub	 x3, x3, x2	// id: 85, l: 86	
	str	 x1, [x20, #624]	// id: 86, l: 87	
	add	 x2, x2, x3, lsl #2	// id: 87, l: 88	
	subs	 x2, x23, x2, lsl #5	// id: 88, l: 89	
	sub	 x0, x0, x2	// id: 89, l: 90	
	sub	 x0, x1, x0	// id: 90, l: 91	
	csel	 x0, x0, x1, ne  // ne = any	// id: 91, l: 92	
	str	 x0, [x20, #632]	// id: 92, l: 93	
	tbz	 x0, #63, .L6	// id: 93, l: 94	
	mov	 x2, #0xf9f                 	// #3999	// id: 94, l: 95	
	.p2align	3, , 7	// id: 95, l: 96	
.L7:	// id: 96, l: 97	
	mov	 x3, x2	// id: 97, l: 98	
	adds	 x0, x0, x1	// id: 98, l: 99	
	sub	 x2, x2, #0x1	// id: 99, l: 100	
	bmi	 .L7	// id: 100, l: 101	
	str	 x0, [x20, #632]	// id: 101, l: 102	
	str	 x3, [x20, #640]	// id: 102, l: 103	
.L6:	// id: 103, l: 104	
	mov	 x0, #0x3a98                	// #15000	// id: 104, l: 105	
	cmp	 x28, x0	// id: 105, l: 106	
	ble	 .L34	// id: 106, l: 107	
	scvtf	 d0, x23	// id: 107, l: 108	
	fmov	 d1, #1.250000000000000000e+00	// id: 108, l: 109	
	mov	 x0, #0xfaa0                	// #64160	// id: 109, l: 110	
	add	 x2, x23, #0x4c4000	// id: 110, l: 111	
	movk	 x0, #0x1b8, lsl #16	// id: 111, l: 112	
	str	 x0, [x20, #456]	// id: 112, l: 113	
	add	 x2, x2, #0xb3f	// id: 113, l: 114	
	add	 x1, x23, #0x4c4000	// id: 114, l: 115	
	fmul	 d0, d0, d1	// id: 115, l: 116	
	add	 x1, x1, #0xb40	// id: 116, l: 117	
	fcvtzs	 d0, d0	// id: 117, l: 118	
	scvtf	 d0, d0	// id: 118, l: 119	
	fmul	 d0, d0, d1	// id: 119, l: 120	
	fcvtzs	 x0, d0	// id: 120, l: 121	
	cmp	 x2, x0	// id: 121, l: 122	
	csel	 x0, x1, x0, ge  // ge = tcont	// id: 122, l: 123	
	str	 x0, [x20, #416]	// id: 123, l: 124	
.L9:	// id: 124, l: 125	
	add	 x26, x26, #0x2	// id: 125, l: 126	
	mov	 x1, #0x68                  	// #104	// id: 126, l: 127	
	mov	 x0, x26	// id: 127, l: 128	
	bl	 calloc	// id: 128, l: 129	
	add	 x2, x28, #0x1	// id: 129, l: 130	
	mov	 x21, x0	// id: 130, l: 131	
	str	 x21, [x20, #552]	// id: 131, l: 132	
	mov	 x1, #0x48                  	// #72	// id: 132, l: 133	
	mov	 x0, x27	// id: 133, l: 134	
	str	 x2, [sp, #104]	// id: 134, l: 135	
	bl	 calloc	// id: 135, l: 136	
	mov	 x22, x0	// id: 136, l: 137	
	ldr	 x19, [x20, #416]	// id: 137, l: 138	
	str	 x22, [x20, #592]	// id: 138, l: 139	
	mov	 x1, #0x48                  	// #72	// id: 139, l: 140	
	mov	 x0, x19	// id: 140, l: 141	
	bl	 calloc	// id: 141, l: 142	
	mov	 x3, x0	// id: 142, l: 143	
	str	 x3, [x20, #584]	// id: 143, l: 144	
	mov	 x0, x19	// id: 144, l: 145	
	mov	 x1, #0x48                  	// #72	// id: 145, l: 146	
	str	 x3, [sp, #96]	// id: 146, l: 147	
	bl	 calloc	// id: 147, l: 148	
	cmp	 x0, #0x0	// id: 148, l: 149	
	ldr	 x3, [sp, #96]	// id: 149, l: 150	
	ccmp	 x21, #0x0, #0x4, ne  // ne = any	// id: 150, l: 151	
	mov	 x19, x0	// id: 151, l: 152	
	cset	 w0, eq  // eq = none	// id: 152, l: 153	
	cmp	 x22, #0x0	// id: 153, l: 154	
	str	 x19, [x20, #568]	// id: 154, l: 155	
	ccmp	 x3, #0x0, #0x4, ne  // ne = any	// id: 155, l: 156	
	csinc	 w0, w0, wzr, ne  // ne = any	// id: 156, l: 157	
	cbnz	 w0, .L35	// id: 157, l: 158	
	add	 x0, x26, x26, lsl #1	// id: 158, l: 159	
	add	 x23, x23, x23, lsl #3	// id: 159, l: 160	
	add	 x27, x27, x27, lsl #3	// id: 160, l: 161	
	cmp	 x28, #0x0	// id: 161, l: 162	
	add	 x26, x26, x0, lsl #2	// id: 162, l: 163	
	add	 x23, x19, x23, lsl #3	// id: 163, l: 164	
	add	 x27, x22, x27, lsl #3	// id: 164, l: 165	
	str	 x23, [x20, #576]	// id: 165, l: 166	
	add	 x26, x21, x26, lsl #3	// id: 166, l: 167	
	str	 x26, [x20, #560]	// id: 167, l: 168	
	str	 x27, [x20, #600]	// id: 168, l: 169	
	ble	 .L19	// id: 169, l: 170	
	mov	 x22, #0x9680                	// #38528	// id: 170, l: 171	
	add	 x27, x21, #0x68	// id: 171, l: 172	
	mov	 x26, #0x1                   	// #1	// id: 172, l: 173	
	mov	 x28, #0x0                   	// #0	// id: 173, l: 174	
	mov	 x23, #0xf                   	// #15	// id: 174, l: 175	
	movk	 x22, #0x98, lsl #16	// id: 175, l: 176	
	b	 .L13	// id: 176, l: 177	
	.p2align	2, , 3	// id: 177, l: 178	
.L37:	// id: 178, l: 179	
	ldp	 x7, x6, [sp, #120]	// id: 179, l: 180	
	cmp	 x7, x6	// id: 180, l: 181	
	bgt	 .L32	// id: 181, l: 182	
	ldr	 x2, [x20, #408]	// id: 182, l: 183	
	neg	 w0, w26	// id: 183, l: 184	
	mov	 x1, #0xffffffffffffffff    	// #-1	// id: 184, l: 185	
	str	 x1, [x27, #80]	// id: 185, l: 186	
	add	 x3, x26, x2	// id: 186, l: 187	
	str	 w0, [x27, #96]	// id: 187, l: 188	
	add	 x1, x28, #0x1	// id: 188, l: 189	
	mov	 x0, x20	// id: 189, l: 190	
	add	 x2, x3, x3, lsl #1	// id: 190, l: 191	
	add	 x2, x3, x2, lsl #2	// id: 191, l: 192	
	mov	 x3, #0x1                   	// #1	// id: 192, l: 193	
	add	 x2, x21, x2, lsl #3	// id: 193, l: 194	
	str	 x3, [x2, #80]	// id: 194, l: 195	
	str	 w26, [x2, #96]	// id: 195, l: 196	
	str	 w7, [x27, #100]	// id: 196, l: 197	
	str	 w6, [x2, #100]	// id: 197, l: 198	
	str	 w28, [x19]	// id: 198, l: 199	
	ldr	 x3, [x20, #400]	// id: 199, l: 200	
	add	 x2, x3, x3, lsl #1	// id: 200, l: 201	
	add	 x2, x3, x2, lsl #2	// id: 201, l: 202	
	add	 x2, x21, x2, lsl #3	// id: 202, l: 203	
	stp	 x2, x27, [x19, #16]	// id: 203, l: 204	
	ldr	 x3, [x20, #528]	// id: 204, l: 205	
	add	 x3, x3, #0xf	// id: 205, l: 206	
	str	 x3, [x19, #8]	// id: 206, l: 207	
	str	 x3, [x19, #64]	// id: 207, l: 208	
	ldr	 x3, [x2, #56]	// id: 208, l: 209	
	str	 x3, [x19, #40]	// id: 209, l: 210	
	str	 x19, [x2, #56]	// id: 210, l: 211	
	ldr	 x2, [x19, #24]	// id: 211, l: 212	
	ldr	 x3, [x2, #64]	// id: 212, l: 213	
	str	 x3, [x19, #48]	// id: 213, l: 214	
	str	 x19, [x2, #64]	// id: 214, l: 215	
	ldr	 x19, [x20, #568]	// id: 215, l: 216	
	bl	 getArcPosition	// id: 216, l: 217	
	mov	 x3, x0	// id: 217, l: 218	
	add	 w6, w28, #0x1	// id: 218, l: 219	
	add	 x1, x28, #0x2	// id: 219, l: 220	
	mov	 x0, x20	// id: 220, l: 221	
	add	 x3, x3, x3, lsl #3	// id: 221, l: 222	
	lsl	 x3, x3, #3	// id: 222, l: 223	
	add	 x2, x19, x3	// id: 223, l: 224	
	str	 w6, [x19, x3]	// id: 224, l: 225	
	ldr	 x3, [x20, #408]	// id: 225, l: 226	
	add	 x6, x26, x3	// id: 226, l: 227	
	add	 x3, x6, x6, lsl #1	// id: 227, l: 228	
	add	 x3, x6, x3, lsl #2	// id: 228, l: 229	
	add	 x3, x21, x3, lsl #3	// id: 229, l: 230	
	str	 x3, [x2, #16]	// id: 230, l: 231	
	ldr	 x7, [x20, #400]	// id: 231, l: 232	
	str	 x23, [x2, #8]	// id: 232, l: 233	
	str	 x23, [x2, #64]	// id: 233, l: 234	
	add	 x6, x7, x7, lsl #1	// id: 234, l: 235	
	add	 x6, x7, x6, lsl #2	// id: 235, l: 236	
	add	 x6, x21, x6, lsl #3	// id: 236, l: 237	
	str	 x6, [x2, #24]	// id: 237, l: 238	
	ldr	 x6, [x3, #56]	// id: 238, l: 239	
	str	 x6, [x2, #40]	// id: 239, l: 240	
	str	 x2, [x3, #56]	// id: 240, l: 241	
	ldr	 x3, [x2, #24]	// id: 241, l: 242	
	ldr	 x6, [x3, #64]	// id: 242, l: 243	
	str	 x6, [x2, #48]	// id: 243, l: 244	
	str	 x2, [x3, #64]	// id: 244, l: 245	
	ldr	 x19, [x20, #568]	// id: 245, l: 246	
	bl	 getArcPosition	// id: 246, l: 247	
	mov	 x3, x0	// id: 247, l: 248	
	add	 w6, w28, #0x2	// id: 248, l: 249	
	add	 x28, x28, #0x3	// id: 249, l: 250	
	mov	 x0, x20	// id: 250, l: 251	
	add	 x3, x3, x3, lsl #3	// id: 251, l: 252	
	mov	 x1, x28	// id: 252, l: 253	
	lsl	 x3, x3, #3	// id: 253, l: 254	
	add	 x2, x19, x3	// id: 254, l: 255	
	str	 w6, [x19, x3]	// id: 255, l: 256	
	str	 x27, [x2, #16]	// id: 256, l: 257	
	add	 x27, x27, #0x68	// id: 257, l: 258	
	ldr	 x3, [x20, #408]	// id: 258, l: 259	
	add	 x6, x26, x3	// id: 259, l: 260	
	add	 x26, x26, #0x1	// id: 260, l: 261	
	add	 x3, x6, x6, lsl #1	// id: 261, l: 262	
	add	 x3, x6, x3, lsl #2	// id: 262, l: 263	
	add	 x3, x21, x3, lsl #3	// id: 263, l: 264	
	str	 x3, [x2, #24]	// id: 264, l: 265	
	ldr	 x3, [x20, #528]	// id: 265, l: 266	
	cmp	 x3, x22	// id: 266, l: 267	
	csel	 x3, x3, x22, ge  // ge = tcont	// id: 267, l: 268	
	lsl	 x3, x3, #1	// id: 268, l: 269	
	str	 x3, [x2, #8]	// id: 269, l: 270	
	str	 x3, [x2, #64]	// id: 270, l: 271	
	ldr	 x3, [x27, #-48]	// id: 271, l: 272	
	str	 x3, [x2, #40]	// id: 272, l: 273	
	str	 x2, [x27, #-48]	// id: 273, l: 274	
	ldr	 x3, [x2, #24]	// id: 274, l: 275	
	ldr	 x6, [x3, #64]	// id: 275, l: 276	
	str	 x6, [x2, #48]	// id: 276, l: 277	
	str	 x2, [x3, #64]	// id: 277, l: 278	
	ldr	 x19, [x20, #568]	// id: 278, l: 279	
	bl	 getArcPosition	// id: 279, l: 280	
	ldr	 x1, [x20, #408]	// id: 280, l: 281	
	add	 x0, x0, x0, lsl #3	// id: 281, l: 282	
	cmp	 x1, x26	// id: 282, l: 283	
	add	 x19, x19, x0, lsl #3	// id: 283, l: 284	
	blt	 .L36	// id: 284, l: 285	
.L13:	// id: 285, l: 286	
	mov	 x2, x24	// id: 286, l: 287	
	mov	 w1, #0xc8                  	// #200	// id: 287, l: 288	
	add	 x0, sp, #0x90	// id: 288, l: 289	
	bl	 fgets	// id: 289, l: 290	
	add	 x3, sp, #0x80	// id: 290, l: 291	
	add	 x2, sp, #0x78	// id: 291, l: 292	
	mov	 x1, x25	// id: 292, l: 293	
	add	 x0, sp, #0x90	// id: 293, l: 294	
	bl	 __isoc99_sscanf	// id: 294, l: 295	
	cmp	 w0, #0x2	// id: 295, l: 296	
	beq	 .L37	// id: 296, l: 297	
.L32:	// id: 297, l: 298	
	ldp	 x21, x22, [sp, #32]	// id: 298, l: 299	
	.cfi_restore	22	// id: 299, l: 300	
	.cfi_restore	21	// id: 300, l: 301	
	ldp	 x23, x24, [sp, #48]	// id: 301, l: 302	
	.cfi_restore	24	// id: 302, l: 303	
	.cfi_restore	23	// id: 303, l: 304	
	ldp	 x25, x26, [sp, #64]	// id: 304, l: 305	
	.cfi_restore	26	// id: 305, l: 306	
	.cfi_restore	25	// id: 306, l: 307	
	ldp	 x27, x28, [sp, #80]	// id: 307, l: 308	
	.cfi_restore	28	// id: 308, l: 309	
	.cfi_restore	27	// id: 309, l: 310	
.L4:	// id: 310, l: 311	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 311, l: 312	
.L1:	// id: 312, l: 313	
	ldp	 x19, x20, [sp, #16]	// id: 313, l: 314	
	ldp	 x29, x30, [sp], #352	// id: 314, l: 315	
	.cfi_restore	30	// id: 315, l: 316	
	.cfi_restore	29	// id: 316, l: 317	
	.cfi_restore	19	// id: 317, l: 318	
	.cfi_restore	20	// id: 318, l: 319	
	.cfi_def_cfa_offset	0	// id: 319, l: 320	
	ret		// id: 320, l: 321	
	.p2align	2, , 3	// id: 321, l: 322	
.L34:	// id: 322, l: 323	
	.cfi_def_cfa_offset	352	// id: 323, l: 324	
	.cfi_offset	19, -336	// id: 324, l: 325	
	.cfi_offset	20, -328	// id: 325, l: 326	
	.cfi_offset	21, -320	// id: 326, l: 327	
	.cfi_offset	22, -312	// id: 327, l: 328	
	.cfi_offset	23, -304	// id: 328, l: 329	
	.cfi_offset	24, -296	// id: 329, l: 330	
	.cfi_offset	25, -288	// id: 330, l: 331	
	.cfi_offset	26, -280	// id: 331, l: 332	
	.cfi_offset	27, -272	// id: 332, l: 333	
	.cfi_offset	28, -264	// id: 333, l: 334	
	.cfi_offset	29, -352	// id: 334, l: 335	
	.cfi_offset	30, -344	// id: 335, l: 336	
	adrp	 x0, .LC4	// id: 336, l: 337	
	str	 x23, [x20, #416]	// id: 337, l: 338	
	ldr	 q0, [x0,:lo12:.LC4]	// id: 338, l: 339	
	str	 q0, [x20, #448]	// id: 339, l: 340	
	b	 .L9	// id: 340, l: 341	
	.p2align	2, , 3	// id: 341, l: 342	
.L36:	// id: 342, l: 343	
	add	 x0, x1, #0x1	// id: 343, l: 344	
	str	 x0, [sp, #104]	// id: 344, l: 345	
.L12:	// id: 345, l: 346	
	cmp	 x26, x0	// id: 346, l: 347	
	bne	 .L32	// id: 347, l: 348	
	ldr	 x0, [x20, #432]	// id: 348, l: 349	
	adrp	 x23, .LC3	// id: 349, l: 350	
	mov	 x22, #0x0                   	// #0	// id: 350, l: 351	
	add	 x23, x23, :lo12:.LC3	// id: 351, l: 352	
	cmp	 x0, #0x0	// id: 352, l: 353	
	bgt	 .L14	// id: 353, l: 354	
	b	 .L17	// id: 354, l: 355	
	.p2align	2, , 3	// id: 355, l: 356	
.L38:	// id: 356, l: 357	
	str	 w28, [x19]	// id: 357, l: 358	
	add	 x28, x28, #0x1	// id: 358, l: 359	
	mov	 x1, x28	// id: 359, l: 360	
	ldp	 x4, x5, [sp, #120]	// id: 360, l: 361	
	ldr	 x2, [x20, #408]	// id: 361, l: 362	
	ldr	 x6, [sp, #136]	// id: 362, l: 363	
	str	 x6, [x19, #64]	// id: 363, l: 364	
	add	 x4, x2, x4	// id: 364, l: 365	
	add	 x3, x5, x5, lsl #1	// id: 365, l: 366	
	add	 x2, x4, x4, lsl #1	// id: 366, l: 367	
	add	 x3, x5, x3, lsl #2	// id: 367, l: 368	
	add	 x2, x4, x2, lsl #2	// id: 368, l: 369	
	add	 x3, x21, x3, lsl #3	// id: 369, l: 370	
	str	 x3, [x19, #24]	// id: 370, l: 371	
	add	 x2, x21, x2, lsl #3	// id: 371, l: 372	
	stp	 x6, x2, [x19, #8]	// id: 372, l: 373	
	ldr	 x3, [x2, #56]	// id: 373, l: 374	
	str	 x3, [x19, #40]	// id: 374, l: 375	
	str	 x19, [x2, #56]	// id: 375, l: 376	
	ldr	 x2, [x19, #24]	// id: 376, l: 377	
	ldr	 x3, [x2, #64]	// id: 377, l: 378	
	str	 x3, [x19, #48]	// id: 378, l: 379	
	str	 x19, [x2, #64]	// id: 379, l: 380	
	ldr	 x19, [x20, #568]	// id: 380, l: 381	
	bl	 getArcPosition	// id: 381, l: 382	
	ldr	 x1, [x20, #432]	// id: 382, l: 383	
	add	 x0, x0, x0, lsl #3	// id: 383, l: 384	
	cmp	 x1, x22	// id: 384, l: 385	
	add	 x19, x19, x0, lsl #3	// id: 385, l: 386	
	ble	 .L17	// id: 386, l: 387	
.L14:	// id: 387, l: 388	
	mov	 x2, x24	// id: 388, l: 389	
	mov	 w1, #0xc8                  	// #200	// id: 389, l: 390	
	add	 x0, sp, #0x90	// id: 390, l: 391	
	bl	 fgets	// id: 391, l: 392	
	mov	 x1, x23	// id: 392, l: 393	
	add	 x4, sp, #0x88	// id: 393, l: 394	
	add	 x3, sp, #0x80	// id: 394, l: 395	
	add	 x2, sp, #0x78	// id: 395, l: 396	
	add	 x0, sp, #0x90	// id: 396, l: 397	
	bl	 __isoc99_sscanf	// id: 397, l: 398	
	mov	 w1, w0	// id: 398, l: 399	
	add	 x22, x22, #0x1	// id: 399, l: 400	
	mov	 x0, x20	// id: 400, l: 401	
	cmp	 w1, #0x3	// id: 401, l: 402	
	beq	 .L38	// id: 402, l: 403	
	b	 .L32	// id: 403, l: 404	
	.p2align	2, , 3	// id: 404, l: 405	
.L17:	// id: 405, l: 406	
	mov	 x0, x24	// id: 406, l: 407	
	bl	 fclose	// id: 407, l: 408	
	ldr	 x0, [x20, #408]	// id: 408, l: 409	
	strb	 wzr, [x20, #200]	// id: 409, l: 410	
	mov	 x19, #0x9680                	// #38528	// id: 410, l: 411	
	mov	 x22, #0x2                   	// #2	// id: 411, l: 412	
	cmp	 x0, #0x0	// id: 412, l: 413	
	mov	 x21, #0x1                   	// #1	// id: 413, l: 414	
	movk	 x19, #0x98, lsl #16	// id: 414, l: 415	
	ble	 .L16	// id: 415, l: 416	
	.p2align	3, , 7	// id: 416, l: 417	
.L15:	// id: 417, l: 418	
	mov	 x1, x22	// id: 418, l: 419	
	mov	 x0, x20	// id: 419, l: 420	
	ldr	 x23, [x20, #568]	// id: 420, l: 421	
	bl	 getArcPosition	// id: 421, l: 422	
	ldr	 x2, [x20, #528]	// id: 422, l: 423	
	add	 x0, x0, x0, lsl #3	// id: 423, l: 424	
	add	 x21, x21, #0x1	// id: 424, l: 425	
	add	 x22, x22, #0x3	// id: 425, l: 426	
	add	 x0, x23, x0, lsl #3	// id: 426, l: 427	
	cmp	 x2, x19	// id: 427, l: 428	
	csel	 x2, x2, x19, ge  // ge = tcont	// id: 428, l: 429	
	neg	 x2, x2, lsl #1	// id: 429, l: 430	
	str	 x2, [x0, #8]	// id: 430, l: 431	
	ldr	 x2, [x20, #528]	// id: 431, l: 432	
	cmp	 x2, x19	// id: 432, l: 433	
	csel	 x2, x2, x19, ge  // ge = tcont	// id: 433, l: 434	
	neg	 x2, x2, lsl #1	// id: 434, l: 435	
	str	 x2, [x0, #64]	// id: 435, l: 436	
	ldr	 x0, [x20, #408]	// id: 436, l: 437	
	cmp	 x0, x21	// id: 437, l: 438	
	bge	 .L15	// id: 438, l: 439	
.L16:	// id: 439, l: 440	
	mov	 x0, #0x0                   	// #0	// id: 440, l: 441	
	ldp	 x19, x20, [sp, #16]	// id: 441, l: 442	
	ldp	 x21, x22, [sp, #32]	// id: 442, l: 443	
	.cfi_remember_state		// id: 443, l: 444	
	.cfi_restore	22	// id: 444, l: 445	
	.cfi_restore	21	// id: 445, l: 446	
	ldp	 x23, x24, [sp, #48]	// id: 446, l: 447	
	.cfi_restore	24	// id: 447, l: 448	
	.cfi_restore	23	// id: 448, l: 449	
	ldp	 x25, x26, [sp, #64]	// id: 449, l: 450	
	.cfi_restore	26	// id: 450, l: 451	
	.cfi_restore	25	// id: 451, l: 452	
	ldp	 x27, x28, [sp, #80]	// id: 452, l: 453	
	.cfi_restore	28	// id: 453, l: 454	
	.cfi_restore	27	// id: 454, l: 455	
	ldp	 x29, x30, [sp], #352	// id: 455, l: 456	
	.cfi_restore	30	// id: 456, l: 457	
	.cfi_restore	29	// id: 457, l: 458	
	.cfi_restore	19	// id: 458, l: 459	
	.cfi_restore	20	// id: 459, l: 460	
	.cfi_def_cfa_offset	0	// id: 460, l: 461	
	ret		// id: 461, l: 462	
.L19:	// id: 462, l: 463	
	.cfi_restore_state		// id: 463, l: 464	
	mov	 x28, #0x0                   	// #0	// id: 464, l: 465	
	mov	 x26, #0x1                   	// #1	// id: 465, l: 466	
	ldr	 x0, [sp, #104]	// id: 466, l: 467	
	b	 .L12	// id: 467, l: 468	
.L28:	// id: 468, l: 469	
	.cfi_restore	21	// id: 469, l: 470	
	.cfi_restore	22	// id: 470, l: 471	
	.cfi_restore	27	// id: 471, l: 472	
	.cfi_restore	28	// id: 472, l: 473	
	ldp	 x23, x24, [sp, #48]	// id: 473, l: 474	
	.cfi_restore	24	// id: 474, l: 475	
	.cfi_restore	23	// id: 475, l: 476	
	ldp	 x25, x26, [sp, #64]	// id: 476, l: 477	
	.cfi_restore	26	// id: 477, l: 478	
	.cfi_restore	25	// id: 478, l: 479	
	b	 .L4	// id: 479, l: 480	
.L35:	// id: 480, l: 481	
	.cfi_offset	21, -320	// id: 481, l: 482	
	.cfi_offset	22, -312	// id: 482, l: 483	
	.cfi_offset	23, -304	// id: 483, l: 484	
	.cfi_offset	24, -296	// id: 484, l: 485	
	.cfi_offset	25, -288	// id: 485, l: 486	
	.cfi_offset	26, -280	// id: 486, l: 487	
	.cfi_offset	27, -272	// id: 487, l: 488	
	.cfi_offset	28, -264	// id: 488, l: 489	
	adrp	 x0, .LC2	// id: 489, l: 490	
	add	 x0, x0, :lo12:.LC2	// id: 490, l: 491	
	bl	 puts	// id: 491, l: 492	
	mov	 x0, x20	// id: 492, l: 493	
	bl	 getfree	// id: 493, l: 494	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 494, l: 495	
	ldp	 x21, x22, [sp, #32]	// id: 495, l: 496	
	.cfi_restore	22	// id: 496, l: 497	
	.cfi_restore	21	// id: 497, l: 498	
	ldp	 x23, x24, [sp, #48]	// id: 498, l: 499	
	.cfi_restore	24	// id: 499, l: 500	
	.cfi_restore	23	// id: 500, l: 501	
	ldp	 x25, x26, [sp, #64]	// id: 501, l: 502	
	.cfi_restore	26	// id: 502, l: 503	
	.cfi_restore	25	// id: 503, l: 504	
	ldp	 x27, x28, [sp, #80]	// id: 504, l: 505	
	.cfi_restore	28	// id: 505, l: 506	
	.cfi_restore	27	// id: 506, l: 507	
	b	 .L1	// id: 507, l: 508	
	.cfi_endproc		// id: 508, l: 509	
.LFE25:	// id: 509, l: 510	
	.size	read_min, .-read_min	// id: 510, l: 511	
	.section	.rodata.cst16, "aM",@progbits,16	// id: 511, l: 512	
	.p2align	4, , 0	// id: 512, l: 513	
.LC4:	// id: 513, l: 514	
	.xword	0	// id: 514, l: 515	
	.xword	2000000	// id: 515, l: 516	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 516, l: 517	
	.section	.note.GNU-stack, "",@progbits	// id: 517, l: 518	
