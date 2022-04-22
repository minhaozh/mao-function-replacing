	.arch	armv8-a	// id: 0, l: 1	
	.file	"readmin.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.section	.rodata	// id: 3, l: 4	
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
	.globl	read_min	// id: 18, l: 19	
	.type	read_min, %function	// id: 19, l: 20	
read_min:	// id: 20, l: 21	
.LFB0:	// id: 21, l: 22	
	.cfi_startproc		// id: 22, l: 23	
	stp	 x29, x30, [sp, #-320]!	// id: 23, l: 24	
	.cfi_def_cfa_offset	320	// id: 24, l: 25	
	.cfi_offset	29, -320	// id: 25, l: 26	
	.cfi_offset	30, -312	// id: 26, l: 27	
	mov	 x29, sp	// id: 27, l: 28	
	str	 x19, [sp, #16]	// id: 28, l: 29	
	.cfi_offset	19, -304	// id: 29, l: 30	
	str	 x0, [sp, #40]	// id: 30, l: 31	
	str	 xzr, [sp, #288]	// id: 31, l: 32	
	str	 xzr, [sp, #304]	// id: 32, l: 33	
	ldr	 x2, [sp, #40]	// id: 33, l: 34	
	adrp	 x0, .LC0	// id: 34, l: 35	
	add	 x1, x0, :lo12:.LC0	// id: 35, l: 36	
	mov	 x0, x2	// id: 36, l: 37	
	bl	 fopen	// id: 37, l: 38	
	str	 x0, [sp, #288]	// id: 38, l: 39	
	ldr	 x0, [sp, #288]	// id: 39, l: 40	
	cmp	 x0, #0x0	// id: 40, l: 41	
	bne	 .L2	// id: 41, l: 42	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 42, l: 43	
	b	 .L28	// id: 43, l: 44	
.L2:	// id: 44, l: 45	
	add	 x0, sp, #0x48	// id: 45, l: 46	
	ldr	 x2, [sp, #288]	// id: 46, l: 47	
	mov	 w1, #0xc8                  	// #200	// id: 47, l: 48	
	bl	 fgets	// id: 48, l: 49	
	add	 x1, sp, #0x38	// id: 49, l: 50	
	add	 x0, sp, #0x40	// id: 50, l: 51	
	add	 x4, sp, #0x48	// id: 51, l: 52	
	mov	 x3, x1	// id: 52, l: 53	
	mov	 x2, x0	// id: 53, l: 54	
	adrp	 x0, .LC1	// id: 54, l: 55	
	add	 x1, x0, :lo12:.LC1	// id: 55, l: 56	
	mov	 x0, x4	// id: 56, l: 57	
	bl	 __isoc99_sscanf	// id: 57, l: 58	
	cmp	 w0, #0x2	// id: 58, l: 59	
	beq	 .L4	// id: 59, l: 60	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 60, l: 61	
	b	 .L28	// id: 61, l: 62	
.L4:	// id: 62, l: 63	
	ldr	 x1, [sp, #64]	// id: 63, l: 64	
	ldr	 x0, [sp, #40]	// id: 64, l: 65	
	str	 x1, [x0, #408]	// id: 65, l: 66	
	ldr	 x1, [sp, #56]	// id: 66, l: 67	
	ldr	 x0, [sp, #40]	// id: 67, l: 68	
	str	 x1, [x0, #432]	// id: 68, l: 69	
	ldr	 x0, [sp, #64]	// id: 69, l: 70	
	lsl	 x0, x0, #1	// id: 70, l: 71	
	add	 x1, x0, #0x1	// id: 71, l: 72	
	ldr	 x0, [sp, #40]	// id: 72, l: 73	
	str	 x1, [x0, #400]	// id: 73, l: 74	
	ldr	 x1, [sp, #64]	// id: 74, l: 75	
	mov	 x0, x1	// id: 75, l: 76	
	lsl	 x0, x0, #1	// id: 76, l: 77	
	add	 x1, x0, x1	// id: 77, l: 78	
	ldr	 x0, [sp, #56]	// id: 78, l: 79	
	add	 x1, x1, x0	// id: 79, l: 80	
	ldr	 x0, [sp, #40]	// id: 80, l: 81	
	str	 x1, [x0, #424]	// id: 81, l: 82	
	ldr	 x0, [sp, #40]	// id: 82, l: 83	
	mov	 x1, #0xfa0                 	// #4000	// id: 83, l: 84	
	str	 x1, [x0, #640]	// id: 84, l: 85	
	ldr	 x0, [sp, #40]	// id: 85, l: 86	
	ldr	 x0, [x0, #424]	// id: 86, l: 87	
	sub	 x0, x0, #0x1	// id: 87, l: 88	
	mov	 x1, #0xf7cf                	// #63439	// id: 88, l: 89	
	movk	 x1, #0xe353, lsl #16	// id: 89, l: 90	
	movk	 x1, #0x9ba5, lsl #32	// id: 90, l: 91	
	movk	 x1, #0x20c4, lsl #48	// id: 91, l: 92	
	smulh	 x1, x0, x1	// id: 92, l: 93	
	asr	 x1, x1, #9	// id: 93, l: 94	
	asr	 x0, x0, #63	// id: 94, l: 95	
	sub	 x0, x1, x0	// id: 95, l: 96	
	add	 x1, x0, #0x1	// id: 96, l: 97	
	ldr	 x0, [sp, #40]	// id: 97, l: 98	
	str	 x1, [x0, #624]	// id: 98, l: 99	
	ldr	 x0, [sp, #40]	// id: 99, l: 100	
	ldr	 x2, [x0, #424]	// id: 100, l: 101	
	mov	 x0, #0xf7cf                	// #63439	// id: 101, l: 102	
	movk	 x0, #0xe353, lsl #16	// id: 102, l: 103	
	movk	 x0, #0x9ba5, lsl #32	// id: 103, l: 104	
	movk	 x0, #0x20c4, lsl #48	// id: 104, l: 105	
	smulh	 x0, x2, x0	// id: 105, l: 106	
	asr	 x1, x0, #9	// id: 106, l: 107	
	asr	 x0, x2, #63	// id: 107, l: 108	
	sub	 x1, x1, x0	// id: 108, l: 109	
	mov	 x0, x1	// id: 109, l: 110	
	lsl	 x0, x0, #5	// id: 110, l: 111	
	sub	 x0, x0, x1	// id: 111, l: 112	
	lsl	 x0, x0, #2	// id: 112, l: 113	
	add	 x0, x0, x1	// id: 113, l: 114	
	lsl	 x0, x0, #5	// id: 114, l: 115	
	sub	 x1, x2, x0	// id: 115, l: 116	
	cmp	 x1, #0x0	// id: 116, l: 117	
	beq	 .L5	// id: 117, l: 118	
	ldr	 x0, [sp, #40]	// id: 118, l: 119	
	ldr	 x3, [x0, #624]	// id: 119, l: 120	
	ldr	 x0, [sp, #40]	// id: 120, l: 121	
	ldr	 x2, [x0, #424]	// id: 121, l: 122	
	mov	 x0, #0xf7cf                	// #63439	// id: 122, l: 123	
	movk	 x0, #0xe353, lsl #16	// id: 123, l: 124	
	movk	 x0, #0x9ba5, lsl #32	// id: 124, l: 125	
	movk	 x0, #0x20c4, lsl #48	// id: 125, l: 126	
	smulh	 x0, x2, x0	// id: 126, l: 127	
	asr	 x1, x0, #9	// id: 127, l: 128	
	asr	 x0, x2, #63	// id: 128, l: 129	
	sub	 x1, x1, x0	// id: 129, l: 130	
	mov	 x0, x1	// id: 130, l: 131	
	lsl	 x0, x0, #5	// id: 131, l: 132	
	sub	 x0, x0, x1	// id: 132, l: 133	
	lsl	 x0, x0, #2	// id: 133, l: 134	
	add	 x0, x0, x1	// id: 134, l: 135	
	lsl	 x0, x0, #5	// id: 135, l: 136	
	sub	 x1, x2, x0	// id: 136, l: 137	
	mov	 x0, #0xfa0                 	// #4000	// id: 137, l: 138	
	sub	 x0, x0, x1	// id: 138, l: 139	
	sub	 x1, x3, x0	// id: 139, l: 140	
	ldr	 x0, [sp, #40]	// id: 140, l: 141	
	str	 x1, [x0, #632]	// id: 141, l: 142	
	b	 .L7	// id: 142, l: 143	
.L5:	// id: 143, l: 144	
	ldr	 x0, [sp, #40]	// id: 144, l: 145	
	ldr	 x1, [x0, #624]	// id: 145, l: 146	
	ldr	 x0, [sp, #40]	// id: 146, l: 147	
	str	 x1, [x0, #632]	// id: 147, l: 148	
	b	 .L7	// id: 148, l: 149	
.L8:	// id: 149, l: 150	
	ldr	 x0, [sp, #40]	// id: 150, l: 151	
	ldr	 x1, [x0, #624]	// id: 151, l: 152	
	ldr	 x0, [sp, #40]	// id: 152, l: 153	
	ldr	 x0, [x0, #632]	// id: 153, l: 154	
	add	 x1, x1, x0	// id: 154, l: 155	
	ldr	 x0, [sp, #40]	// id: 155, l: 156	
	str	 x1, [x0, #632]	// id: 156, l: 157	
	ldr	 x0, [sp, #40]	// id: 157, l: 158	
	ldr	 x0, [x0, #640]	// id: 158, l: 159	
	sub	 x1, x0, #0x1	// id: 159, l: 160	
	ldr	 x0, [sp, #40]	// id: 160, l: 161	
	str	 x1, [x0, #640]	// id: 161, l: 162	
.L7:	// id: 162, l: 163	
	ldr	 x0, [sp, #40]	// id: 163, l: 164	
	ldr	 x0, [x0, #632]	// id: 164, l: 165	
	cmp	 x0, #0x0	// id: 165, l: 166	
	blt	 .L8	// id: 166, l: 167	
	ldr	 x0, [sp, #40]	// id: 167, l: 168	
	ldr	 x1, [x0, #408]	// id: 168, l: 169	
	mov	 x0, #0x3a98                	// #15000	// id: 169, l: 170	
	cmp	 x1, x0	// id: 170, l: 171	
	bgt	 .L9	// id: 171, l: 172	
	ldr	 x0, [sp, #40]	// id: 172, l: 173	
	ldr	 x1, [x0, #424]	// id: 173, l: 174	
	ldr	 x0, [sp, #40]	// id: 174, l: 175	
	str	 x1, [x0, #416]	// id: 175, l: 176	
	ldr	 x0, [sp, #40]	// id: 176, l: 177	
	mov	 x1, #0x8480                	// #33920	// id: 177, l: 178	
	movk	 x1, #0x1e, lsl #16	// id: 178, l: 179	
	str	 x1, [x0, #456]	// id: 179, l: 180	
	ldr	 x0, [sp, #40]	// id: 180, l: 181	
	ldr	 x1, [x0, #416]	// id: 181, l: 182	
	ldr	 x0, [sp, #40]	// id: 182, l: 183	
	ldr	 x0, [x0, #424]	// id: 183, l: 184	
	sub	 x1, x1, x0	// id: 184, l: 185	
	ldr	 x0, [sp, #40]	// id: 185, l: 186	
	str	 x1, [x0, #448]	// id: 186, l: 187	
	b	 .L10	// id: 187, l: 188	
.L9:	// id: 188, l: 189	
	ldr	 x0, [sp, #40]	// id: 189, l: 190	
	ldr	 x1, [x0, #424]	// id: 190, l: 191	
	mov	 x0, #0x4b3f                	// #19263	// id: 191, l: 192	
	movk	 x0, #0x4c, lsl #16	// id: 192, l: 193	
	add	 x0, x1, x0	// id: 193, l: 194	
	ldr	 x1, [sp, #40]	// id: 194, l: 195	
	ldr	 d0, [x1, #424]	// id: 195, l: 196	
	scvtf	 d1, d0	// id: 196, l: 197	
	fmov	 d0, #1.250000000000000000e+00	// id: 197, l: 198	
	fmul	 d0, d1, d0	// id: 198, l: 199	
	fcvtzs	 d0, d0	// id: 199, l: 200	
	scvtf	 d1, d0	// id: 200, l: 201	
	fmov	 d0, #1.250000000000000000e+00	// id: 201, l: 202	
	fmul	 d0, d1, d0	// id: 202, l: 203	
	fcvtzs	 x1, d0	// id: 203, l: 204	
	cmp	 x0, x1	// id: 204, l: 205	
	blt	 .L11	// id: 205, l: 206	
	ldr	 x0, [sp, #40]	// id: 206, l: 207	
	ldr	 x1, [x0, #424]	// id: 207, l: 208	
	mov	 x0, #0x4b40                	// #19264	// id: 208, l: 209	
	movk	 x0, #0x4c, lsl #16	// id: 209, l: 210	
	add	 x0, x1, x0	// id: 210, l: 211	
	fmov	 d0, x0	// id: 211, l: 212	
	b	 .L12	// id: 212, l: 213	
.L11:	// id: 213, l: 214	
	ldr	 x0, [sp, #40]	// id: 214, l: 215	
	ldr	 d0, [x0, #424]	// id: 215, l: 216	
	scvtf	 d1, d0	// id: 216, l: 217	
	fmov	 d0, #1.250000000000000000e+00	// id: 217, l: 218	
	fmul	 d0, d1, d0	// id: 218, l: 219	
	fcvtzs	 d0, d0	// id: 219, l: 220	
	scvtf	 d1, d0	// id: 220, l: 221	
	fmov	 d0, #1.250000000000000000e+00	// id: 221, l: 222	
	fmul	 d0, d1, d0	// id: 222, l: 223	
	fcvtzs	 d0, d0	// id: 223, l: 224	
.L12:	// id: 224, l: 225	
	ldr	 x0, [sp, #40]	// id: 225, l: 226	
	str	 d0, [x0, #416]	// id: 226, l: 227	
	ldr	 x0, [sp, #40]	// id: 227, l: 228	
	mov	 x1, #0xfaa0                	// #64160	// id: 228, l: 229	
	movk	 x1, #0x1b8, lsl #16	// id: 229, l: 230	
	str	 x1, [x0, #456]	// id: 230, l: 231	
.L10:	// id: 231, l: 232	
	ldr	 x0, [sp, #40]	// id: 232, l: 233	
	ldr	 x0, [x0, #400]	// id: 233, l: 234	
	add	 x0, x0, #0x1	// id: 234, l: 235	
	mov	 x1, #0x68                  	// #104	// id: 235, l: 236	
	bl	 calloc	// id: 236, l: 237	
	mov	 x1, x0	// id: 237, l: 238	
	ldr	 x0, [sp, #40]	// id: 238, l: 239	
	str	 x1, [x0, #552]	// id: 239, l: 240	
	ldr	 x0, [sp, #40]	// id: 240, l: 241	
	ldr	 x0, [x0, #400]	// id: 241, l: 242	
	mov	 x1, #0x48                  	// #72	// id: 242, l: 243	
	bl	 calloc	// id: 243, l: 244	
	mov	 x1, x0	// id: 244, l: 245	
	ldr	 x0, [sp, #40]	// id: 245, l: 246	
	str	 x1, [x0, #592]	// id: 246, l: 247	
	ldr	 x0, [sp, #40]	// id: 247, l: 248	
	ldr	 x0, [x0, #416]	// id: 248, l: 249	
	mov	 x1, #0x48                  	// #72	// id: 249, l: 250	
	bl	 calloc	// id: 250, l: 251	
	mov	 x1, x0	// id: 251, l: 252	
	ldr	 x0, [sp, #40]	// id: 252, l: 253	
	str	 x1, [x0, #584]	// id: 253, l: 254	
	ldr	 x0, [sp, #40]	// id: 254, l: 255	
	ldr	 x0, [x0, #416]	// id: 255, l: 256	
	mov	 x1, #0x48                  	// #72	// id: 256, l: 257	
	bl	 calloc	// id: 257, l: 258	
	mov	 x1, x0	// id: 258, l: 259	
	ldr	 x0, [sp, #40]	// id: 259, l: 260	
	str	 x1, [x0, #568]	// id: 260, l: 261	
	ldr	 x0, [sp, #40]	// id: 261, l: 262	
	ldr	 x0, [x0, #552]	// id: 262, l: 263	
	cmp	 x0, #0x0	// id: 263, l: 264	
	beq	 .L13	// id: 264, l: 265	
	ldr	 x0, [sp, #40]	// id: 265, l: 266	
	ldr	 x0, [x0, #568]	// id: 266, l: 267	
	cmp	 x0, #0x0	// id: 267, l: 268	
	beq	 .L13	// id: 268, l: 269	
	ldr	 x0, [sp, #40]	// id: 269, l: 270	
	ldr	 x0, [x0, #592]	// id: 270, l: 271	
	cmp	 x0, #0x0	// id: 271, l: 272	
	beq	 .L13	// id: 272, l: 273	
	ldr	 x0, [sp, #40]	// id: 273, l: 274	
	ldr	 x0, [x0, #584]	// id: 274, l: 275	
	cmp	 x0, #0x0	// id: 275, l: 276	
	bne	 .L14	// id: 276, l: 277	
.L13:	// id: 277, l: 278	
	adrp	 x0, .LC2	// id: 278, l: 279	
	add	 x0, x0, :lo12:.LC2	// id: 279, l: 280	
	bl	 puts	// id: 280, l: 281	
	ldr	 x0, [sp, #40]	// id: 281, l: 282	
	bl	 getfree	// id: 282, l: 283	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 283, l: 284	
	b	 .L28	// id: 284, l: 285	
.L14:	// id: 285, l: 286	
	ldr	 x0, [sp, #40]	// id: 286, l: 287	
	ldr	 x2, [x0, #552]	// id: 287, l: 288	
	ldr	 x0, [sp, #40]	// id: 288, l: 289	
	ldr	 x0, [x0, #400]	// id: 289, l: 290	
	add	 x1, x0, #0x1	// id: 290, l: 291	
	mov	 x0, x1	// id: 291, l: 292	
	lsl	 x0, x0, #1	// id: 292, l: 293	
	add	 x0, x0, x1	// id: 293, l: 294	
	lsl	 x0, x0, #2	// id: 294, l: 295	
	add	 x0, x0, x1	// id: 295, l: 296	
	lsl	 x0, x0, #3	// id: 296, l: 297	
	add	 x1, x2, x0	// id: 297, l: 298	
	ldr	 x0, [sp, #40]	// id: 298, l: 299	
	str	 x1, [x0, #560]	// id: 299, l: 300	
	ldr	 x0, [sp, #40]	// id: 300, l: 301	
	ldr	 x1, [x0, #568]	// id: 301, l: 302	
	ldr	 x0, [sp, #40]	// id: 302, l: 303	
	ldr	 x0, [x0, #424]	// id: 303, l: 304	
	mov	 x2, x0	// id: 304, l: 305	
	mov	 x0, x2	// id: 305, l: 306	
	lsl	 x0, x0, #3	// id: 306, l: 307	
	add	 x0, x0, x2	// id: 307, l: 308	
	lsl	 x0, x0, #3	// id: 308, l: 309	
	add	 x1, x1, x0	// id: 309, l: 310	
	ldr	 x0, [sp, #40]	// id: 310, l: 311	
	str	 x1, [x0, #576]	// id: 311, l: 312	
	ldr	 x0, [sp, #40]	// id: 312, l: 313	
	ldr	 x1, [x0, #592]	// id: 313, l: 314	
	ldr	 x0, [sp, #40]	// id: 314, l: 315	
	ldr	 x0, [x0, #400]	// id: 315, l: 316	
	mov	 x2, x0	// id: 316, l: 317	
	mov	 x0, x2	// id: 317, l: 318	
	lsl	 x0, x0, #3	// id: 318, l: 319	
	add	 x0, x0, x2	// id: 319, l: 320	
	lsl	 x0, x0, #3	// id: 320, l: 321	
	add	 x1, x1, x0	// id: 321, l: 322	
	ldr	 x0, [sp, #40]	// id: 322, l: 323	
	str	 x1, [x0, #600]	// id: 323, l: 324	
	ldr	 x0, [sp, #40]	// id: 324, l: 325	
	ldr	 x0, [x0, #552]	// id: 325, l: 326	
	str	 x0, [sp, #280]	// id: 326, l: 327	
	ldr	 x0, [sp, #40]	// id: 327, l: 328	
	ldr	 x0, [x0, #568]	// id: 328, l: 329	
	str	 x0, [sp, #296]	// id: 329, l: 330	
	mov	 x0, #0x1                   	// #1	// id: 330, l: 331	
	str	 x0, [sp, #312]	// id: 331, l: 332	
	b	 .L15	// id: 332, l: 333	
.L18:	// id: 333, l: 334	
	add	 x0, sp, #0x48	// id: 334, l: 335	
	ldr	 x2, [sp, #288]	// id: 335, l: 336	
	mov	 w1, #0xc8                  	// #200	// id: 336, l: 337	
	bl	 fgets	// id: 337, l: 338	
	add	 x1, sp, #0x38	// id: 338, l: 339	
	add	 x0, sp, #0x40	// id: 339, l: 340	
	add	 x4, sp, #0x48	// id: 340, l: 341	
	mov	 x3, x1	// id: 341, l: 342	
	mov	 x2, x0	// id: 342, l: 343	
	adrp	 x0, .LC1	// id: 343, l: 344	
	add	 x1, x0, :lo12:.LC1	// id: 344, l: 345	
	mov	 x0, x4	// id: 345, l: 346	
	bl	 __isoc99_sscanf	// id: 346, l: 347	
	cmp	 w0, #0x2	// id: 347, l: 348	
	bne	 .L16	// id: 348, l: 349	
	ldr	 x1, [sp, #64]	// id: 349, l: 350	
	ldr	 x0, [sp, #56]	// id: 350, l: 351	
	cmp	 x1, x0	// id: 351, l: 352	
	ble	 .L17	// id: 352, l: 353	
.L16:	// id: 353, l: 354	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 354, l: 355	
	b	 .L28	// id: 355, l: 356	
.L17:	// id: 356, l: 357	
	ldr	 x0, [sp, #312]	// id: 357, l: 358	
	neg	 w2, w0	// id: 358, l: 359	
	ldr	 x1, [sp, #312]	// id: 359, l: 360	
	mov	 x0, x1	// id: 360, l: 361	
	lsl	 x0, x0, #1	// id: 361, l: 362	
	add	 x0, x0, x1	// id: 362, l: 363	
	lsl	 x0, x0, #2	// id: 363, l: 364	
	add	 x0, x0, x1	// id: 364, l: 365	
	lsl	 x0, x0, #3	// id: 365, l: 366	
	mov	 x1, x0	// id: 366, l: 367	
	ldr	 x0, [sp, #280]	// id: 367, l: 368	
	add	 x0, x0, x1	// id: 368, l: 369	
	mov	 w1, w2	// id: 369, l: 370	
	str	 w1, [x0, #96]	// id: 370, l: 371	
	ldr	 x1, [sp, #312]	// id: 371, l: 372	
	mov	 x0, x1	// id: 372, l: 373	
	lsl	 x0, x0, #1	// id: 373, l: 374	
	add	 x0, x0, x1	// id: 374, l: 375	
	lsl	 x0, x0, #2	// id: 375, l: 376	
	add	 x0, x0, x1	// id: 376, l: 377	
	lsl	 x0, x0, #3	// id: 377, l: 378	
	mov	 x1, x0	// id: 378, l: 379	
	ldr	 x0, [sp, #280]	// id: 379, l: 380	
	add	 x0, x0, x1	// id: 380, l: 381	
	mov	 x1, #0xffffffffffffffff    	// #-1	// id: 381, l: 382	
	str	 x1, [x0, #80]	// id: 382, l: 383	
	ldr	 x0, [sp, #40]	// id: 383, l: 384	
	ldr	 x1, [x0, #408]	// id: 384, l: 385	
	ldr	 x0, [sp, #312]	// id: 385, l: 386	
	add	 x0, x1, x0	// id: 386, l: 387	
	mov	 x1, x0	// id: 387, l: 388	
	mov	 x0, x1	// id: 388, l: 389	
	lsl	 x0, x0, #1	// id: 389, l: 390	
	add	 x0, x0, x1	// id: 390, l: 391	
	lsl	 x0, x0, #2	// id: 391, l: 392	
	add	 x0, x0, x1	// id: 392, l: 393	
	lsl	 x0, x0, #3	// id: 393, l: 394	
	mov	 x1, x0	// id: 394, l: 395	
	ldr	 x0, [sp, #280]	// id: 395, l: 396	
	add	 x0, x0, x1	// id: 396, l: 397	
	ldr	 x1, [sp, #312]	// id: 397, l: 398	
	str	 w1, [x0, #96]	// id: 398, l: 399	
	ldr	 x0, [sp, #40]	// id: 399, l: 400	
	ldr	 x1, [x0, #408]	// id: 400, l: 401	
	ldr	 x0, [sp, #312]	// id: 401, l: 402	
	add	 x0, x1, x0	// id: 402, l: 403	
	mov	 x1, x0	// id: 403, l: 404	
	mov	 x0, x1	// id: 404, l: 405	
	lsl	 x0, x0, #1	// id: 405, l: 406	
	add	 x0, x0, x1	// id: 406, l: 407	
	lsl	 x0, x0, #2	// id: 407, l: 408	
	add	 x0, x0, x1	// id: 408, l: 409	
	lsl	 x0, x0, #3	// id: 409, l: 410	
	mov	 x1, x0	// id: 410, l: 411	
	ldr	 x0, [sp, #280]	// id: 411, l: 412	
	add	 x0, x0, x1	// id: 412, l: 413	
	mov	 x1, #0x1                   	// #1	// id: 413, l: 414	
	str	 x1, [x0, #80]	// id: 414, l: 415	
	ldr	 x2, [sp, #64]	// id: 415, l: 416	
	ldr	 x1, [sp, #312]	// id: 416, l: 417	
	mov	 x0, x1	// id: 417, l: 418	
	lsl	 x0, x0, #1	// id: 418, l: 419	
	add	 x0, x0, x1	// id: 419, l: 420	
	lsl	 x0, x0, #2	// id: 420, l: 421	
	add	 x0, x0, x1	// id: 421, l: 422	
	lsl	 x0, x0, #3	// id: 422, l: 423	
	mov	 x1, x0	// id: 423, l: 424	
	ldr	 x0, [sp, #280]	// id: 424, l: 425	
	add	 x0, x0, x1	// id: 425, l: 426	
	mov	 w1, w2	// id: 426, l: 427	
	str	 w1, [x0, #100]	// id: 427, l: 428	
	ldr	 x2, [sp, #56]	// id: 428, l: 429	
	ldr	 x0, [sp, #40]	// id: 429, l: 430	
	ldr	 x1, [x0, #408]	// id: 430, l: 431	
	ldr	 x0, [sp, #312]	// id: 431, l: 432	
	add	 x0, x1, x0	// id: 432, l: 433	
	mov	 x1, x0	// id: 433, l: 434	
	mov	 x0, x1	// id: 434, l: 435	
	lsl	 x0, x0, #1	// id: 435, l: 436	
	add	 x0, x0, x1	// id: 436, l: 437	
	lsl	 x0, x0, #2	// id: 437, l: 438	
	add	 x0, x0, x1	// id: 438, l: 439	
	lsl	 x0, x0, #3	// id: 439, l: 440	
	mov	 x1, x0	// id: 440, l: 441	
	ldr	 x0, [sp, #280]	// id: 441, l: 442	
	add	 x0, x0, x1	// id: 442, l: 443	
	mov	 w1, w2	// id: 443, l: 444	
	str	 w1, [x0, #100]	// id: 444, l: 445	
	ldr	 x0, [sp, #304]	// id: 445, l: 446	
	mov	 w1, w0	// id: 446, l: 447	
	ldr	 x0, [sp, #296]	// id: 447, l: 448	
	str	 w1, [x0]	// id: 448, l: 449	
	ldr	 x0, [sp, #40]	// id: 449, l: 450	
	ldr	 x0, [x0, #400]	// id: 450, l: 451	
	mov	 x1, x0	// id: 451, l: 452	
	mov	 x0, x1	// id: 452, l: 453	
	lsl	 x0, x0, #1	// id: 453, l: 454	
	add	 x0, x0, x1	// id: 454, l: 455	
	lsl	 x0, x0, #2	// id: 455, l: 456	
	add	 x0, x0, x1	// id: 456, l: 457	
	lsl	 x0, x0, #3	// id: 457, l: 458	
	mov	 x1, x0	// id: 458, l: 459	
	ldr	 x0, [sp, #280]	// id: 459, l: 460	
	add	 x1, x0, x1	// id: 460, l: 461	
	ldr	 x0, [sp, #296]	// id: 461, l: 462	
	str	 x1, [x0, #16]	// id: 462, l: 463	
	ldr	 x1, [sp, #312]	// id: 463, l: 464	
	mov	 x0, x1	// id: 464, l: 465	
	lsl	 x0, x0, #1	// id: 465, l: 466	
	add	 x0, x0, x1	// id: 466, l: 467	
	lsl	 x0, x0, #2	// id: 467, l: 468	
	add	 x0, x0, x1	// id: 468, l: 469	
	lsl	 x0, x0, #3	// id: 469, l: 470	
	mov	 x1, x0	// id: 470, l: 471	
	ldr	 x0, [sp, #280]	// id: 471, l: 472	
	add	 x1, x0, x1	// id: 472, l: 473	
	ldr	 x0, [sp, #296]	// id: 473, l: 474	
	str	 x1, [x0, #24]	// id: 474, l: 475	
	ldr	 x0, [sp, #40]	// id: 475, l: 476	
	ldr	 x0, [x0, #528]	// id: 476, l: 477	
	add	 x1, x0, #0xf	// id: 477, l: 478	
	ldr	 x0, [sp, #296]	// id: 478, l: 479	
	str	 x1, [x0, #8]	// id: 479, l: 480	
	ldr	 x0, [sp, #296]	// id: 480, l: 481	
	ldr	 x1, [x0, #8]	// id: 481, l: 482	
	ldr	 x0, [sp, #296]	// id: 482, l: 483	
	str	 x1, [x0, #64]	// id: 483, l: 484	
	ldr	 x0, [sp, #296]	// id: 484, l: 485	
	ldr	 x0, [x0, #16]	// id: 485, l: 486	
	ldr	 x1, [x0, #56]	// id: 486, l: 487	
	ldr	 x0, [sp, #296]	// id: 487, l: 488	
	str	 x1, [x0, #40]	// id: 488, l: 489	
	ldr	 x0, [sp, #296]	// id: 489, l: 490	
	ldr	 x0, [x0, #16]	// id: 490, l: 491	
	ldr	 x1, [sp, #296]	// id: 491, l: 492	
	str	 x1, [x0, #56]	// id: 492, l: 493	
	ldr	 x0, [sp, #296]	// id: 493, l: 494	
	ldr	 x0, [x0, #24]	// id: 494, l: 495	
	ldr	 x1, [x0, #64]	// id: 495, l: 496	
	ldr	 x0, [sp, #296]	// id: 496, l: 497	
	str	 x1, [x0, #48]	// id: 497, l: 498	
	ldr	 x0, [sp, #296]	// id: 498, l: 499	
	ldr	 x0, [x0, #24]	// id: 499, l: 500	
	ldr	 x1, [sp, #296]	// id: 500, l: 501	
	str	 x1, [x0, #64]	// id: 501, l: 502	
	ldr	 x0, [sp, #40]	// id: 502, l: 503	
	ldr	 x19, [x0, #568]	// id: 503, l: 504	
	ldr	 x0, [sp, #304]	// id: 504, l: 505	
	add	 x0, x0, #0x1	// id: 505, l: 506	
	str	 x0, [sp, #304]	// id: 506, l: 507	
	ldr	 x1, [sp, #304]	// id: 507, l: 508	
	ldr	 x0, [sp, #40]	// id: 508, l: 509	
	bl	 getArcPosition	// id: 509, l: 510	
	mov	 x1, x0	// id: 510, l: 511	
	mov	 x0, x1	// id: 511, l: 512	
	lsl	 x0, x0, #3	// id: 512, l: 513	
	add	 x0, x0, x1	// id: 513, l: 514	
	lsl	 x0, x0, #3	// id: 514, l: 515	
	add	 x0, x19, x0	// id: 515, l: 516	
	str	 x0, [sp, #296]	// id: 516, l: 517	
	ldr	 x0, [sp, #304]	// id: 517, l: 518	
	mov	 w1, w0	// id: 518, l: 519	
	ldr	 x0, [sp, #296]	// id: 519, l: 520	
	str	 w1, [x0]	// id: 520, l: 521	
	ldr	 x0, [sp, #40]	// id: 521, l: 522	
	ldr	 x1, [x0, #408]	// id: 522, l: 523	
	ldr	 x0, [sp, #312]	// id: 523, l: 524	
	add	 x0, x1, x0	// id: 524, l: 525	
	mov	 x1, x0	// id: 525, l: 526	
	mov	 x0, x1	// id: 526, l: 527	
	lsl	 x0, x0, #1	// id: 527, l: 528	
	add	 x0, x0, x1	// id: 528, l: 529	
	lsl	 x0, x0, #2	// id: 529, l: 530	
	add	 x0, x0, x1	// id: 530, l: 531	
	lsl	 x0, x0, #3	// id: 531, l: 532	
	mov	 x1, x0	// id: 532, l: 533	
	ldr	 x0, [sp, #280]	// id: 533, l: 534	
	add	 x1, x0, x1	// id: 534, l: 535	
	ldr	 x0, [sp, #296]	// id: 535, l: 536	
	str	 x1, [x0, #16]	// id: 536, l: 537	
	ldr	 x0, [sp, #40]	// id: 537, l: 538	
	ldr	 x0, [x0, #400]	// id: 538, l: 539	
	mov	 x1, x0	// id: 539, l: 540	
	mov	 x0, x1	// id: 540, l: 541	
	lsl	 x0, x0, #1	// id: 541, l: 542	
	add	 x0, x0, x1	// id: 542, l: 543	
	lsl	 x0, x0, #2	// id: 543, l: 544	
	add	 x0, x0, x1	// id: 544, l: 545	
	lsl	 x0, x0, #3	// id: 545, l: 546	
	mov	 x1, x0	// id: 546, l: 547	
	ldr	 x0, [sp, #280]	// id: 547, l: 548	
	add	 x1, x0, x1	// id: 548, l: 549	
	ldr	 x0, [sp, #296]	// id: 549, l: 550	
	str	 x1, [x0, #24]	// id: 550, l: 551	
	ldr	 x0, [sp, #296]	// id: 551, l: 552	
	mov	 x1, #0xf                   	// #15	// id: 552, l: 553	
	str	 x1, [x0, #8]	// id: 553, l: 554	
	ldr	 x0, [sp, #296]	// id: 554, l: 555	
	ldr	 x1, [x0, #8]	// id: 555, l: 556	
	ldr	 x0, [sp, #296]	// id: 556, l: 557	
	str	 x1, [x0, #64]	// id: 557, l: 558	
	ldr	 x0, [sp, #296]	// id: 558, l: 559	
	ldr	 x0, [x0, #16]	// id: 559, l: 560	
	ldr	 x1, [x0, #56]	// id: 560, l: 561	
	ldr	 x0, [sp, #296]	// id: 561, l: 562	
	str	 x1, [x0, #40]	// id: 562, l: 563	
	ldr	 x0, [sp, #296]	// id: 563, l: 564	
	ldr	 x0, [x0, #16]	// id: 564, l: 565	
	ldr	 x1, [sp, #296]	// id: 565, l: 566	
	str	 x1, [x0, #56]	// id: 566, l: 567	
	ldr	 x0, [sp, #296]	// id: 567, l: 568	
	ldr	 x0, [x0, #24]	// id: 568, l: 569	
	ldr	 x1, [x0, #64]	// id: 569, l: 570	
	ldr	 x0, [sp, #296]	// id: 570, l: 571	
	str	 x1, [x0, #48]	// id: 571, l: 572	
	ldr	 x0, [sp, #296]	// id: 572, l: 573	
	ldr	 x0, [x0, #24]	// id: 573, l: 574	
	ldr	 x1, [sp, #296]	// id: 574, l: 575	
	str	 x1, [x0, #64]	// id: 575, l: 576	
	ldr	 x0, [sp, #40]	// id: 576, l: 577	
	ldr	 x19, [x0, #568]	// id: 577, l: 578	
	ldr	 x0, [sp, #304]	// id: 578, l: 579	
	add	 x0, x0, #0x1	// id: 579, l: 580	
	str	 x0, [sp, #304]	// id: 580, l: 581	
	ldr	 x1, [sp, #304]	// id: 581, l: 582	
	ldr	 x0, [sp, #40]	// id: 582, l: 583	
	bl	 getArcPosition	// id: 583, l: 584	
	mov	 x1, x0	// id: 584, l: 585	
	mov	 x0, x1	// id: 585, l: 586	
	lsl	 x0, x0, #3	// id: 586, l: 587	
	add	 x0, x0, x1	// id: 587, l: 588	
	lsl	 x0, x0, #3	// id: 588, l: 589	
	add	 x0, x19, x0	// id: 589, l: 590	
	str	 x0, [sp, #296]	// id: 590, l: 591	
	ldr	 x0, [sp, #304]	// id: 591, l: 592	
	mov	 w1, w0	// id: 592, l: 593	
	ldr	 x0, [sp, #296]	// id: 593, l: 594	
	str	 w1, [x0]	// id: 594, l: 595	
	ldr	 x1, [sp, #312]	// id: 595, l: 596	
	mov	 x0, x1	// id: 596, l: 597	
	lsl	 x0, x0, #1	// id: 597, l: 598	
	add	 x0, x0, x1	// id: 598, l: 599	
	lsl	 x0, x0, #2	// id: 599, l: 600	
	add	 x0, x0, x1	// id: 600, l: 601	
	lsl	 x0, x0, #3	// id: 601, l: 602	
	mov	 x1, x0	// id: 602, l: 603	
	ldr	 x0, [sp, #280]	// id: 603, l: 604	
	add	 x1, x0, x1	// id: 604, l: 605	
	ldr	 x0, [sp, #296]	// id: 605, l: 606	
	str	 x1, [x0, #16]	// id: 606, l: 607	
	ldr	 x0, [sp, #40]	// id: 607, l: 608	
	ldr	 x1, [x0, #408]	// id: 608, l: 609	
	ldr	 x0, [sp, #312]	// id: 609, l: 610	
	add	 x0, x1, x0	// id: 610, l: 611	
	mov	 x1, x0	// id: 611, l: 612	
	mov	 x0, x1	// id: 612, l: 613	
	lsl	 x0, x0, #1	// id: 613, l: 614	
	add	 x0, x0, x1	// id: 614, l: 615	
	lsl	 x0, x0, #2	// id: 615, l: 616	
	add	 x0, x0, x1	// id: 616, l: 617	
	lsl	 x0, x0, #3	// id: 617, l: 618	
	mov	 x1, x0	// id: 618, l: 619	
	ldr	 x0, [sp, #280]	// id: 619, l: 620	
	add	 x1, x0, x1	// id: 620, l: 621	
	ldr	 x0, [sp, #296]	// id: 621, l: 622	
	str	 x1, [x0, #24]	// id: 622, l: 623	
	ldr	 x0, [sp, #40]	// id: 623, l: 624	
	ldr	 x0, [x0, #528]	// id: 624, l: 625	
	mov	 x2, #0x9680                	// #38528	// id: 625, l: 626	
	movk	 x2, #0x98, lsl #16	// id: 626, l: 627	
	mov	 x1, #0x9680                	// #38528	// id: 627, l: 628	
	movk	 x1, #0x98, lsl #16	// id: 628, l: 629	
	cmp	 x0, x2	// id: 629, l: 630	
	csel	 x0, x0, x1, ge  // ge = tcont	// id: 630, l: 631	
	lsl	 x1, x0, #1	// id: 631, l: 632	
	ldr	 x0, [sp, #296]	// id: 632, l: 633	
	str	 x1, [x0, #8]	// id: 633, l: 634	
	ldr	 x0, [sp, #296]	// id: 634, l: 635	
	ldr	 x1, [x0, #8]	// id: 635, l: 636	
	ldr	 x0, [sp, #296]	// id: 636, l: 637	
	str	 x1, [x0, #64]	// id: 637, l: 638	
	ldr	 x0, [sp, #296]	// id: 638, l: 639	
	ldr	 x0, [x0, #16]	// id: 639, l: 640	
	ldr	 x1, [x0, #56]	// id: 640, l: 641	
	ldr	 x0, [sp, #296]	// id: 641, l: 642	
	str	 x1, [x0, #40]	// id: 642, l: 643	
	ldr	 x0, [sp, #296]	// id: 643, l: 644	
	ldr	 x0, [x0, #16]	// id: 644, l: 645	
	ldr	 x1, [sp, #296]	// id: 645, l: 646	
	str	 x1, [x0, #56]	// id: 646, l: 647	
	ldr	 x0, [sp, #296]	// id: 647, l: 648	
	ldr	 x0, [x0, #24]	// id: 648, l: 649	
	ldr	 x1, [x0, #64]	// id: 649, l: 650	
	ldr	 x0, [sp, #296]	// id: 650, l: 651	
	str	 x1, [x0, #48]	// id: 651, l: 652	
	ldr	 x0, [sp, #296]	// id: 652, l: 653	
	ldr	 x0, [x0, #24]	// id: 653, l: 654	
	ldr	 x1, [sp, #296]	// id: 654, l: 655	
	str	 x1, [x0, #64]	// id: 655, l: 656	
	ldr	 x0, [sp, #40]	// id: 656, l: 657	
	ldr	 x19, [x0, #568]	// id: 657, l: 658	
	ldr	 x0, [sp, #304]	// id: 658, l: 659	
	add	 x0, x0, #0x1	// id: 659, l: 660	
	str	 x0, [sp, #304]	// id: 660, l: 661	
	ldr	 x1, [sp, #304]	// id: 661, l: 662	
	ldr	 x0, [sp, #40]	// id: 662, l: 663	
	bl	 getArcPosition	// id: 663, l: 664	
	mov	 x1, x0	// id: 664, l: 665	
	mov	 x0, x1	// id: 665, l: 666	
	lsl	 x0, x0, #3	// id: 666, l: 667	
	add	 x0, x0, x1	// id: 667, l: 668	
	lsl	 x0, x0, #3	// id: 668, l: 669	
	add	 x0, x19, x0	// id: 669, l: 670	
	str	 x0, [sp, #296]	// id: 670, l: 671	
	ldr	 x0, [sp, #312]	// id: 671, l: 672	
	add	 x0, x0, #0x1	// id: 672, l: 673	
	str	 x0, [sp, #312]	// id: 673, l: 674	
.L15:	// id: 674, l: 675	
	ldr	 x0, [sp, #40]	// id: 675, l: 676	
	ldr	 x0, [x0, #408]	// id: 676, l: 677	
	ldr	 x1, [sp, #312]	// id: 677, l: 678	
	cmp	 x1, x0	// id: 678, l: 679	
	ble	 .L18	// id: 679, l: 680	
	ldr	 x0, [sp, #40]	// id: 680, l: 681	
	ldr	 x0, [x0, #408]	// id: 681, l: 682	
	add	 x0, x0, #0x1	// id: 682, l: 683	
	ldr	 x1, [sp, #312]	// id: 683, l: 684	
	cmp	 x1, x0	// id: 684, l: 685	
	beq	 .L19	// id: 685, l: 686	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 686, l: 687	
	b	 .L28	// id: 687, l: 688	
.L19:	// id: 688, l: 689	
	str	 xzr, [sp, #312]	// id: 689, l: 690	
	b	 .L20	// id: 690, l: 691	
.L22:	// id: 691, l: 692	
	add	 x0, sp, #0x48	// id: 692, l: 693	
	ldr	 x2, [sp, #288]	// id: 693, l: 694	
	mov	 w1, #0xc8                  	// #200	// id: 694, l: 695	
	bl	 fgets	// id: 695, l: 696	
	add	 x2, sp, #0x30	// id: 696, l: 697	
	add	 x1, sp, #0x38	// id: 697, l: 698	
	add	 x0, sp, #0x40	// id: 698, l: 699	
	add	 x5, sp, #0x48	// id: 699, l: 700	
	mov	 x4, x2	// id: 700, l: 701	
	mov	 x3, x1	// id: 701, l: 702	
	mov	 x2, x0	// id: 702, l: 703	
	adrp	 x0, .LC3	// id: 703, l: 704	
	add	 x1, x0, :lo12:.LC3	// id: 704, l: 705	
	mov	 x0, x5	// id: 705, l: 706	
	bl	 __isoc99_sscanf	// id: 706, l: 707	
	cmp	 w0, #0x3	// id: 707, l: 708	
	beq	 .L21	// id: 708, l: 709	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 709, l: 710	
	b	 .L28	// id: 710, l: 711	
.L21:	// id: 711, l: 712	
	ldr	 x0, [sp, #304]	// id: 712, l: 713	
	mov	 w1, w0	// id: 713, l: 714	
	ldr	 x0, [sp, #296]	// id: 714, l: 715	
	str	 w1, [x0]	// id: 715, l: 716	
	ldr	 x0, [sp, #40]	// id: 716, l: 717	
	ldr	 x1, [x0, #408]	// id: 717, l: 718	
	ldr	 x0, [sp, #64]	// id: 718, l: 719	
	add	 x0, x1, x0	// id: 719, l: 720	
	mov	 x1, x0	// id: 720, l: 721	
	mov	 x0, x1	// id: 721, l: 722	
	lsl	 x0, x0, #1	// id: 722, l: 723	
	add	 x0, x0, x1	// id: 723, l: 724	
	lsl	 x0, x0, #2	// id: 724, l: 725	
	add	 x0, x0, x1	// id: 725, l: 726	
	lsl	 x0, x0, #3	// id: 726, l: 727	
	mov	 x1, x0	// id: 727, l: 728	
	ldr	 x0, [sp, #280]	// id: 728, l: 729	
	add	 x1, x0, x1	// id: 729, l: 730	
	ldr	 x0, [sp, #296]	// id: 730, l: 731	
	str	 x1, [x0, #16]	// id: 731, l: 732	
	ldr	 x0, [sp, #56]	// id: 732, l: 733	
	mov	 x1, x0	// id: 733, l: 734	
	mov	 x0, x1	// id: 734, l: 735	
	lsl	 x0, x0, #1	// id: 735, l: 736	
	add	 x0, x0, x1	// id: 736, l: 737	
	lsl	 x0, x0, #2	// id: 737, l: 738	
	add	 x0, x0, x1	// id: 738, l: 739	
	lsl	 x0, x0, #3	// id: 739, l: 740	
	mov	 x1, x0	// id: 740, l: 741	
	ldr	 x0, [sp, #280]	// id: 741, l: 742	
	add	 x1, x0, x1	// id: 742, l: 743	
	ldr	 x0, [sp, #296]	// id: 743, l: 744	
	str	 x1, [x0, #24]	// id: 744, l: 745	
	ldr	 x1, [sp, #48]	// id: 745, l: 746	
	ldr	 x0, [sp, #296]	// id: 746, l: 747	
	str	 x1, [x0, #64]	// id: 747, l: 748	
	ldr	 x1, [sp, #48]	// id: 748, l: 749	
	ldr	 x0, [sp, #296]	// id: 749, l: 750	
	str	 x1, [x0, #8]	// id: 750, l: 751	
	ldr	 x0, [sp, #296]	// id: 751, l: 752	
	ldr	 x0, [x0, #16]	// id: 752, l: 753	
	ldr	 x1, [x0, #56]	// id: 753, l: 754	
	ldr	 x0, [sp, #296]	// id: 754, l: 755	
	str	 x1, [x0, #40]	// id: 755, l: 756	
	ldr	 x0, [sp, #296]	// id: 756, l: 757	
	ldr	 x0, [x0, #16]	// id: 757, l: 758	
	ldr	 x1, [sp, #296]	// id: 758, l: 759	
	str	 x1, [x0, #56]	// id: 759, l: 760	
	ldr	 x0, [sp, #296]	// id: 760, l: 761	
	ldr	 x0, [x0, #24]	// id: 761, l: 762	
	ldr	 x1, [x0, #64]	// id: 762, l: 763	
	ldr	 x0, [sp, #296]	// id: 763, l: 764	
	str	 x1, [x0, #48]	// id: 764, l: 765	
	ldr	 x0, [sp, #296]	// id: 765, l: 766	
	ldr	 x0, [x0, #24]	// id: 766, l: 767	
	ldr	 x1, [sp, #296]	// id: 767, l: 768	
	str	 x1, [x0, #64]	// id: 768, l: 769	
	ldr	 x0, [sp, #312]	// id: 769, l: 770	
	add	 x0, x0, #0x1	// id: 770, l: 771	
	str	 x0, [sp, #312]	// id: 771, l: 772	
	ldr	 x0, [sp, #40]	// id: 772, l: 773	
	ldr	 x19, [x0, #568]	// id: 773, l: 774	
	ldr	 x0, [sp, #304]	// id: 774, l: 775	
	add	 x0, x0, #0x1	// id: 775, l: 776	
	str	 x0, [sp, #304]	// id: 776, l: 777	
	ldr	 x1, [sp, #304]	// id: 777, l: 778	
	ldr	 x0, [sp, #40]	// id: 778, l: 779	
	bl	 getArcPosition	// id: 779, l: 780	
	mov	 x1, x0	// id: 780, l: 781	
	mov	 x0, x1	// id: 781, l: 782	
	lsl	 x0, x0, #3	// id: 782, l: 783	
	add	 x0, x0, x1	// id: 783, l: 784	
	lsl	 x0, x0, #3	// id: 784, l: 785	
	add	 x0, x19, x0	// id: 785, l: 786	
	str	 x0, [sp, #296]	// id: 786, l: 787	
.L20:	// id: 787, l: 788	
	ldr	 x0, [sp, #40]	// id: 788, l: 789	
	ldr	 x0, [x0, #432]	// id: 789, l: 790	
	ldr	 x1, [sp, #312]	// id: 790, l: 791	
	cmp	 x1, x0	// id: 791, l: 792	
	blt	 .L22	// id: 792, l: 793	
	ldr	 x0, [sp, #40]	// id: 793, l: 794	
	ldr	 x0, [x0, #576]	// id: 794, l: 795	
	str	 x0, [sp, #296]	// id: 795, l: 796	
	ldr	 x0, [sp, #40]	// id: 796, l: 797	
	ldr	 x0, [x0, #576]	// id: 797, l: 798	
	ldr	 x1, [sp, #296]	// id: 798, l: 799	
	cmp	 x1, x0	// id: 799, l: 800	
	beq	 .L23	// id: 800, l: 801	
	ldr	 x0, [sp, #40]	// id: 801, l: 802	
	ldr	 x1, [sp, #296]	// id: 802, l: 803	
	str	 x1, [x0, #576]	// id: 803, l: 804	
	ldr	 x0, [sp, #40]	// id: 804, l: 805	
	ldr	 x0, [x0, #568]	// id: 805, l: 806	
	str	 x0, [sp, #296]	// id: 806, l: 807	
	ldr	 x0, [sp, #40]	// id: 807, l: 808	
	str	 xzr, [x0, #424]	// id: 808, l: 809	
	b	 .L24	// id: 809, l: 810	
.L25:	// id: 810, l: 811	
	ldr	 x0, [sp, #40]	// id: 811, l: 812	
	ldr	 x0, [x0, #424]	// id: 812, l: 813	
	add	 x1, x0, #0x1	// id: 813, l: 814	
	ldr	 x0, [sp, #40]	// id: 814, l: 815	
	str	 x1, [x0, #424]	// id: 815, l: 816	
	ldr	 x0, [sp, #296]	// id: 816, l: 817	
	add	 x0, x0, #0x48	// id: 817, l: 818	
	str	 x0, [sp, #296]	// id: 818, l: 819	
.L24:	// id: 819, l: 820	
	ldr	 x0, [sp, #40]	// id: 820, l: 821	
	ldr	 x0, [x0, #576]	// id: 821, l: 822	
	ldr	 x1, [sp, #296]	// id: 822, l: 823	
	cmp	 x1, x0	// id: 823, l: 824	
	bcc	 .L25	// id: 824, l: 825	
	ldr	 x0, [sp, #40]	// id: 825, l: 826	
	ldr	 x1, [x0, #424]	// id: 826, l: 827	
	ldr	 x0, [sp, #40]	// id: 827, l: 828	
	str	 x1, [x0, #432]	// id: 828, l: 829	
.L23:	// id: 829, l: 830	
	ldr	 x0, [sp, #288]	// id: 830, l: 831	
	bl	 fclose	// id: 831, l: 832	
	ldr	 x0, [sp, #40]	// id: 832, l: 833	
	strb	 wzr, [x0, #200]	// id: 833, l: 834	
	mov	 x0, #0x1                   	// #1	// id: 834, l: 835	
	str	 x0, [sp, #312]	// id: 835, l: 836	
	b	 .L26	// id: 836, l: 837	
.L27:	// id: 837, l: 838	
	ldr	 x0, [sp, #40]	// id: 838, l: 839	
	ldr	 x19, [x0, #568]	// id: 839, l: 840	
	ldr	 x1, [sp, #312]	// id: 840, l: 841	
	mov	 x0, x1	// id: 841, l: 842	
	lsl	 x0, x0, #1	// id: 842, l: 843	
	add	 x0, x0, x1	// id: 843, l: 844	
	sub	 x0, x0, #0x1	// id: 844, l: 845	
	mov	 x1, x0	// id: 845, l: 846	
	ldr	 x0, [sp, #40]	// id: 846, l: 847	
	bl	 getArcPosition	// id: 847, l: 848	
	mov	 x1, x0	// id: 848, l: 849	
	mov	 x0, x1	// id: 849, l: 850	
	lsl	 x0, x0, #3	// id: 850, l: 851	
	add	 x0, x0, x1	// id: 851, l: 852	
	lsl	 x0, x0, #3	// id: 852, l: 853	
	add	 x0, x19, x0	// id: 853, l: 854	
	str	 x0, [sp, #296]	// id: 854, l: 855	
	ldr	 x0, [sp, #40]	// id: 855, l: 856	
	ldr	 x0, [x0, #528]	// id: 856, l: 857	
	mov	 x2, #0x9680                	// #38528	// id: 857, l: 858	
	movk	 x2, #0x98, lsl #16	// id: 858, l: 859	
	mov	 x1, #0x9680                	// #38528	// id: 859, l: 860	
	movk	 x1, #0x98, lsl #16	// id: 860, l: 861	
	cmp	 x0, x2	// id: 861, l: 862	
	csel	 x1, x0, x1, ge  // ge = tcont	// id: 862, l: 863	
	mov	 x0, #0x0                   	// #0	// id: 863, l: 864	
	sub	 x0, x0, x1	// id: 864, l: 865	
	lsl	 x0, x0, #1	// id: 865, l: 866	
	mov	 x1, x0	// id: 866, l: 867	
	ldr	 x0, [sp, #296]	// id: 867, l: 868	
	str	 x1, [x0, #8]	// id: 868, l: 869	
	ldr	 x0, [sp, #40]	// id: 869, l: 870	
	ldr	 x0, [x0, #528]	// id: 870, l: 871	
	mov	 x2, #0x9680                	// #38528	// id: 871, l: 872	
	movk	 x2, #0x98, lsl #16	// id: 872, l: 873	
	mov	 x1, #0x9680                	// #38528	// id: 873, l: 874	
	movk	 x1, #0x98, lsl #16	// id: 874, l: 875	
	cmp	 x0, x2	// id: 875, l: 876	
	csel	 x1, x0, x1, ge  // ge = tcont	// id: 876, l: 877	
	mov	 x0, #0x0                   	// #0	// id: 877, l: 878	
	sub	 x0, x0, x1	// id: 878, l: 879	
	lsl	 x0, x0, #1	// id: 879, l: 880	
	mov	 x1, x0	// id: 880, l: 881	
	ldr	 x0, [sp, #296]	// id: 881, l: 882	
	str	 x1, [x0, #64]	// id: 882, l: 883	
	ldr	 x0, [sp, #312]	// id: 883, l: 884	
	add	 x0, x0, #0x1	// id: 884, l: 885	
	str	 x0, [sp, #312]	// id: 885, l: 886	
.L26:	// id: 886, l: 887	
	ldr	 x0, [sp, #40]	// id: 887, l: 888	
	ldr	 x0, [x0, #408]	// id: 888, l: 889	
	ldr	 x1, [sp, #312]	// id: 889, l: 890	
	cmp	 x1, x0	// id: 890, l: 891	
	ble	 .L27	// id: 891, l: 892	
	mov	 x0, #0x0                   	// #0	// id: 892, l: 893	
.L28:	// id: 893, l: 894	
	ldr	 x19, [sp, #16]	// id: 894, l: 895	
	ldp	 x29, x30, [sp], #320	// id: 895, l: 896	
	.cfi_restore	30	// id: 896, l: 897	
	.cfi_restore	29	// id: 897, l: 898	
	.cfi_restore	19	// id: 898, l: 899	
	.cfi_def_cfa_offset	0	// id: 899, l: 900	
	ret		// id: 900, l: 901	
	.cfi_endproc		// id: 901, l: 902	
.LFE0:	// id: 902, l: 903	
	.size	read_min, .-read_min	// id: 903, l: 904	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 904, l: 905	
	.section	.note.GNU-stack, "",@progbits	// id: 905, l: 906	
