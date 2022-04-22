	.arch	armv8-a	// id: 0, l: 1	
	.file	"treeup.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.p2align	2, , 0	// id: 3, l: 4	
	.globl	update_tree	// id: 4, l: 5	
	.type	update_tree, %function	// id: 5, l: 6	
update_tree:	// id: 6, l: 7	
.LFB0:	// id: 7, l: 8	
	.cfi_startproc		// id: 8, l: 9	
	sub	 sp, sp, #0x90	// id: 9, l: 10	
	.cfi_def_cfa_offset	144	// id: 10, l: 11	
	str	 x0, [sp, #56]	// id: 11, l: 12	
	str	 x1, [sp, #48]	// id: 12, l: 13	
	str	 x2, [sp, #40]	// id: 13, l: 14	
	str	 x3, [sp, #32]	// id: 14, l: 15	
	str	 x4, [sp, #24]	// id: 15, l: 16	
	str	 x5, [sp, #16]	// id: 16, l: 17	
	str	 x6, [sp, #8]	// id: 17, l: 18	
	str	 x7, [sp]	// id: 18, l: 19	
	ldr	 x0, [sp, #152]	// id: 19, l: 20	
	ldr	 x0, [x0, #16]	// id: 20, l: 21	
	ldr	 x1, [sp, #16]	// id: 21, l: 22	
	cmp	 x1, x0	// id: 22, l: 23	
	bne	 .L2	// id: 23, l: 24	
	ldr	 x0, [sp, #160]	// id: 24, l: 25	
	cmp	 x0, #0x0	// id: 25, l: 26	
	blt	 .L3	// id: 26, l: 27	
.L2:	// id: 27, l: 28	
	ldr	 x0, [sp, #152]	// id: 28, l: 29	
	ldr	 x0, [x0, #16]	// id: 29, l: 30	
	ldr	 x1, [sp, #24]	// id: 30, l: 31	
	cmp	 x1, x0	// id: 31, l: 32	
	bne	 .L4	// id: 32, l: 33	
	ldr	 x0, [sp, #160]	// id: 33, l: 34	
	cmp	 x0, #0x0	// id: 34, l: 35	
	ble	 .L4	// id: 35, l: 36	
.L3:	// id: 36, l: 37	
	ldr	 x0, [sp, #160]	// id: 37, l: 38	
	cmp	 x0, #0x0	// id: 38, l: 39	
	csneg	 x0, x0, x0, ge  // ge = tcont	// id: 39, l: 40	
	str	 x0, [sp, #160]	// id: 40, l: 41	
	b	 .L5	// id: 41, l: 42	
.L4:	// id: 42, l: 43	
	ldr	 x0, [sp, #160]	// id: 43, l: 44	
	cmp	 x0, #0x0	// id: 44, l: 45	
	csneg	 x0, x0, x0, ge  // ge = tcont	// id: 45, l: 46	
	neg	 x0, x0	// id: 46, l: 47	
	str	 x0, [sp, #160]	// id: 47, l: 48	
.L5:	// id: 48, l: 49	
	ldr	 x0, [sp, #8]	// id: 49, l: 50	
	str	 x0, [sp, #128]	// id: 50, l: 51	
	ldr	 x0, [sp, #128]	// id: 51, l: 52	
	ldr	 x1, [x0]	// id: 52, l: 53	
	ldr	 x0, [sp, #160]	// id: 53, l: 54	
	add	 x1, x1, x0	// id: 54, l: 55	
	ldr	 x0, [sp, #128]	// id: 55, l: 56	
	str	 x1, [x0]	// id: 56, l: 57	
.L6:	// id: 57, l: 58	
	ldr	 x0, [sp, #128]	// id: 58, l: 59	
	ldr	 x0, [x0, #16]	// id: 59, l: 60	
	str	 x0, [sp, #120]	// id: 60, l: 61	
	ldr	 x0, [sp, #120]	// id: 61, l: 62	
	cmp	 x0, #0x0	// id: 62, l: 63	
	beq	 .L35	// id: 63, l: 64	
	nop		// id: 64, l: 65	
	b	 .L8	// id: 65, l: 66	
.L37:	// id: 66, l: 67	
	nop		// id: 67, l: 68	
.L8:	// id: 68, l: 69	
	ldr	 x0, [sp, #120]	// id: 69, l: 70	
	ldr	 x1, [x0]	// id: 70, l: 71	
	ldr	 x0, [sp, #160]	// id: 71, l: 72	
	add	 x1, x1, x0	// id: 72, l: 73	
	ldr	 x0, [sp, #120]	// id: 73, l: 74	
	str	 x1, [x0]	// id: 74, l: 75	
	ldr	 x0, [sp, #120]	// id: 75, l: 76	
	str	 x0, [sp, #128]	// id: 76, l: 77	
	b	 .L6	// id: 77, l: 78	
.L35:	// id: 78, l: 79	
	nop		// id: 79, l: 80	
.L7:	// id: 80, l: 81	
	ldr	 x1, [sp, #128]	// id: 81, l: 82	
	ldr	 x0, [sp, #8]	// id: 82, l: 83	
	cmp	 x1, x0	// id: 83, l: 84	
	beq	 .L36	// id: 84, l: 85	
	ldr	 x0, [sp, #128]	// id: 85, l: 86	
	ldr	 x0, [x0, #32]	// id: 86, l: 87	
	str	 x0, [sp, #120]	// id: 87, l: 88	
	ldr	 x0, [sp, #120]	// id: 88, l: 89	
	cmp	 x0, #0x0	// id: 89, l: 90	
	bne	 .L37	// id: 90, l: 91	
	ldr	 x0, [sp, #128]	// id: 91, l: 92	
	ldr	 x0, [x0, #24]	// id: 92, l: 93	
	str	 x0, [sp, #128]	// id: 93, l: 94	
	b	 .L7	// id: 94, l: 95	
.L36:	// id: 95, l: 96	
	nop		// id: 96, l: 97	
.L10:	// id: 97, l: 98	
	ldr	 x0, [sp, #24]	// id: 98, l: 99	
	str	 x0, [sp, #120]	// id: 99, l: 100	
	ldr	 x0, [sp, #120]	// id: 100, l: 101	
	ldr	 x0, [x0, #24]	// id: 101, l: 102	
	str	 x0, [sp, #128]	// id: 102, l: 103	
	ldr	 x0, [sp, #8]	// id: 103, l: 104	
	ldr	 x0, [x0, #88]	// id: 104, l: 105	
	str	 x0, [sp, #88]	// id: 105, l: 106	
	ldr	 x0, [sp, #88]	// id: 106, l: 107	
	str	 x0, [sp, #104]	// id: 107, l: 108	
	ldr	 x0, [sp, #16]	// id: 108, l: 109	
	str	 x0, [sp, #112]	// id: 109, l: 110	
	ldr	 x0, [sp, #152]	// id: 110, l: 111	
	str	 x0, [sp, #136]	// id: 111, l: 112	
	b	 .L12	// id: 112, l: 113	
.L19:	// id: 113, l: 114	
	ldr	 x0, [sp, #120]	// id: 114, l: 115	
	ldr	 x0, [x0, #32]	// id: 115, l: 116	
	cmp	 x0, #0x0	// id: 116, l: 117	
	beq	 .L13	// id: 117, l: 118	
	ldr	 x0, [sp, #120]	// id: 118, l: 119	
	ldr	 x0, [x0, #32]	// id: 119, l: 120	
	ldr	 x1, [sp, #120]	// id: 120, l: 121	
	ldr	 x1, [x1, #40]	// id: 121, l: 122	
	str	 x1, [x0, #40]	// id: 122, l: 123	
.L13:	// id: 123, l: 124	
	ldr	 x0, [sp, #120]	// id: 124, l: 125	
	ldr	 x0, [x0, #40]	// id: 125, l: 126	
	cmp	 x0, #0x0	// id: 126, l: 127	
	beq	 .L14	// id: 127, l: 128	
	ldr	 x0, [sp, #120]	// id: 128, l: 129	
	ldr	 x0, [x0, #40]	// id: 129, l: 130	
	ldr	 x1, [sp, #120]	// id: 130, l: 131	
	ldr	 x1, [x1, #32]	// id: 131, l: 132	
	str	 x1, [x0, #32]	// id: 132, l: 133	
	b	 .L15	// id: 133, l: 134	
.L14:	// id: 134, l: 135	
	ldr	 x0, [sp, #120]	// id: 135, l: 136	
	ldr	 x1, [x0, #32]	// id: 136, l: 137	
	ldr	 x0, [sp, #128]	// id: 137, l: 138	
	str	 x1, [x0, #16]	// id: 138, l: 139	
.L15:	// id: 139, l: 140	
	ldr	 x0, [sp, #120]	// id: 140, l: 141	
	ldr	 x1, [sp, #112]	// id: 141, l: 142	
	str	 x1, [x0, #24]	// id: 142, l: 143	
	ldr	 x0, [sp, #112]	// id: 143, l: 144	
	ldr	 x1, [x0, #16]	// id: 144, l: 145	
	ldr	 x0, [sp, #120]	// id: 145, l: 146	
	str	 x1, [x0, #32]	// id: 146, l: 147	
	ldr	 x0, [sp, #120]	// id: 147, l: 148	
	ldr	 x0, [x0, #32]	// id: 148, l: 149	
	cmp	 x0, #0x0	// id: 149, l: 150	
	beq	 .L16	// id: 150, l: 151	
	ldr	 x0, [sp, #120]	// id: 151, l: 152	
	ldr	 x0, [x0, #32]	// id: 152, l: 153	
	ldr	 x1, [sp, #120]	// id: 153, l: 154	
	str	 x1, [x0, #40]	// id: 154, l: 155	
.L16:	// id: 155, l: 156	
	ldr	 x0, [sp, #112]	// id: 156, l: 157	
	ldr	 x1, [sp, #120]	// id: 157, l: 158	
	str	 x1, [x0, #16]	// id: 158, l: 159	
	ldr	 x0, [sp, #120]	// id: 159, l: 160	
	str	 xzr, [x0, #40]	// id: 160, l: 161	
	ldr	 x0, [sp, #120]	// id: 161, l: 162	
	ldr	 w0, [x0, #8]	// id: 162, l: 163	
	cmp	 w0, #0x0	// id: 163, l: 164	
	cset	 w0, eq  // eq = none	// id: 164, l: 165	
	and	 w0, w0, #0xff	// id: 165, l: 166	
	and	 x0, x0, #0xff	// id: 166, l: 167	
	str	 x0, [sp, #80]	// id: 167, l: 168	
	ldr	 x1, [sp, #80]	// id: 168, l: 169	
	ldr	 x0, [sp, #56]	// id: 169, l: 170	
	cmp	 x1, x0	// id: 170, l: 171	
	bne	 .L17	// id: 171, l: 172	
	ldr	 x0, [sp, #120]	// id: 172, l: 173	
	ldr	 x0, [x0, #80]	// id: 173, l: 174	
	ldr	 x1, [sp, #40]	// id: 174, l: 175	
	add	 x0, x1, x0	// id: 175, l: 176	
	str	 x0, [sp, #96]	// id: 176, l: 177	
	b	 .L18	// id: 177, l: 178	
.L17:	// id: 178, l: 179	
	ldr	 x0, [sp, #120]	// id: 179, l: 180	
	ldr	 x1, [x0, #80]	// id: 180, l: 181	
	ldr	 x0, [sp, #40]	// id: 181, l: 182	
	sub	 x0, x1, x0	// id: 182, l: 183	
	str	 x0, [sp, #96]	// id: 183, l: 184	
.L18:	// id: 184, l: 185	
	ldr	 x0, [sp, #120]	// id: 185, l: 186	
	ldr	 x0, [x0, #48]	// id: 186, l: 187	
	str	 x0, [sp, #72]	// id: 187, l: 188	
	ldr	 x0, [sp, #120]	// id: 188, l: 189	
	ldr	 x0, [x0, #88]	// id: 189, l: 190	
	str	 x0, [sp, #64]	// id: 190, l: 191	
	ldr	 x0, [sp, #48]	// id: 191, l: 192	
	mov	 w1, w0	// id: 192, l: 193	
	ldr	 x0, [sp, #120]	// id: 193, l: 194	
	str	 w1, [x0, #8]	// id: 194, l: 195	
	ldr	 x0, [sp, #120]	// id: 195, l: 196	
	ldr	 x1, [sp, #32]	// id: 196, l: 197	
	str	 x1, [x0, #80]	// id: 197, l: 198	
	ldr	 x0, [sp, #120]	// id: 198, l: 199	
	ldr	 x1, [sp, #136]	// id: 199, l: 200	
	str	 x1, [x0, #48]	// id: 200, l: 201	
	ldr	 x0, [sp, #120]	// id: 201, l: 202	
	ldr	 x1, [sp, #104]	// id: 202, l: 203	
	str	 x1, [x0, #88]	// id: 203, l: 204	
	ldr	 x0, [sp, #120]	// id: 204, l: 205	
	str	 x0, [sp, #112]	// id: 205, l: 206	
	ldr	 x0, [sp, #80]	// id: 206, l: 207	
	str	 x0, [sp, #48]	// id: 207, l: 208	
	ldr	 x0, [sp, #96]	// id: 208, l: 209	
	str	 x0, [sp, #32]	// id: 209, l: 210	
	ldr	 x0, [sp, #72]	// id: 210, l: 211	
	str	 x0, [sp, #136]	// id: 211, l: 212	
	ldr	 x1, [sp, #88]	// id: 212, l: 213	
	ldr	 x0, [sp, #64]	// id: 213, l: 214	
	sub	 x0, x1, x0	// id: 214, l: 215	
	str	 x0, [sp, #104]	// id: 215, l: 216	
	ldr	 x0, [sp, #128]	// id: 216, l: 217	
	str	 x0, [sp, #120]	// id: 217, l: 218	
	ldr	 x0, [sp, #120]	// id: 218, l: 219	
	ldr	 x0, [x0, #24]	// id: 219, l: 220	
	str	 x0, [sp, #128]	// id: 220, l: 221	
.L12:	// id: 221, l: 222	
	ldr	 x1, [sp, #120]	// id: 222, l: 223	
	ldr	 x0, [sp]	// id: 223, l: 224	
	cmp	 x1, x0	// id: 224, l: 225	
	bne	 .L19	// id: 225, l: 226	
	ldr	 x1, [sp, #40]	// id: 226, l: 227	
	ldr	 x0, [sp, #168]	// id: 227, l: 228	
	cmp	 x1, x0	// id: 228, l: 229	
	ble	 .L20	// id: 229, l: 230	
	ldr	 x0, [sp]	// id: 230, l: 231	
	str	 x0, [sp, #120]	// id: 231, l: 232	
	b	 .L21	// id: 232, l: 233	
.L24:	// id: 233, l: 234	
	ldr	 x0, [sp, #120]	// id: 234, l: 235	
	ldr	 x1, [x0, #88]	// id: 235, l: 236	
	ldr	 x0, [sp, #88]	// id: 236, l: 237	
	sub	 x1, x1, x0	// id: 237, l: 238	
	ldr	 x0, [sp, #120]	// id: 238, l: 239	
	str	 x1, [x0, #88]	// id: 239, l: 240	
	ldr	 x0, [sp, #120]	// id: 240, l: 241	
	ldr	 w0, [x0, #8]	// id: 241, l: 242	
	sxtw	 x0, w0	// id: 242, l: 243	
	ldr	 x1, [sp, #56]	// id: 243, l: 244	
	cmp	 x1, x0	// id: 244, l: 245	
	beq	 .L22	// id: 245, l: 246	
	ldr	 x0, [sp, #120]	// id: 246, l: 247	
	ldr	 x1, [x0, #80]	// id: 247, l: 248	
	ldr	 x0, [sp, #40]	// id: 248, l: 249	
	add	 x1, x1, x0	// id: 249, l: 250	
	ldr	 x0, [sp, #120]	// id: 250, l: 251	
	str	 x1, [x0, #80]	// id: 251, l: 252	
	b	 .L23	// id: 252, l: 253	
.L22:	// id: 253, l: 254	
	ldr	 x0, [sp, #120]	// id: 254, l: 255	
	ldr	 x1, [x0, #80]	// id: 255, l: 256	
	ldr	 x0, [sp, #40]	// id: 256, l: 257	
	sub	 x1, x1, x0	// id: 257, l: 258	
	ldr	 x0, [sp, #120]	// id: 258, l: 259	
	str	 x1, [x0, #80]	// id: 259, l: 260	
.L23:	// id: 260, l: 261	
	ldr	 x0, [sp, #120]	// id: 261, l: 262	
	ldr	 x0, [x0, #24]	// id: 262, l: 263	
	str	 x0, [sp, #120]	// id: 263, l: 264	
.L21:	// id: 264, l: 265	
	ldr	 x1, [sp, #120]	// id: 265, l: 266	
	ldr	 x0, [sp, #144]	// id: 266, l: 267	
	cmp	 x1, x0	// id: 267, l: 268	
	bne	 .L24	// id: 268, l: 269	
	ldr	 x0, [sp, #16]	// id: 269, l: 270	
	str	 x0, [sp, #120]	// id: 270, l: 271	
	b	 .L25	// id: 271, l: 272	
.L28:	// id: 272, l: 273	
	ldr	 x0, [sp, #120]	// id: 273, l: 274	
	ldr	 x1, [x0, #88]	// id: 274, l: 275	
	ldr	 x0, [sp, #88]	// id: 275, l: 276	
	add	 x1, x1, x0	// id: 276, l: 277	
	ldr	 x0, [sp, #120]	// id: 277, l: 278	
	str	 x1, [x0, #88]	// id: 278, l: 279	
	ldr	 x0, [sp, #120]	// id: 279, l: 280	
	ldr	 w0, [x0, #8]	// id: 280, l: 281	
	sxtw	 x0, w0	// id: 281, l: 282	
	ldr	 x1, [sp, #56]	// id: 282, l: 283	
	cmp	 x1, x0	// id: 283, l: 284	
	bne	 .L26	// id: 284, l: 285	
	ldr	 x0, [sp, #120]	// id: 285, l: 286	
	ldr	 x1, [x0, #80]	// id: 286, l: 287	
	ldr	 x0, [sp, #40]	// id: 287, l: 288	
	add	 x1, x1, x0	// id: 288, l: 289	
	ldr	 x0, [sp, #120]	// id: 289, l: 290	
	str	 x1, [x0, #80]	// id: 290, l: 291	
	b	 .L27	// id: 291, l: 292	
.L26:	// id: 292, l: 293	
	ldr	 x0, [sp, #120]	// id: 293, l: 294	
	ldr	 x1, [x0, #80]	// id: 294, l: 295	
	ldr	 x0, [sp, #40]	// id: 295, l: 296	
	sub	 x1, x1, x0	// id: 296, l: 297	
	ldr	 x0, [sp, #120]	// id: 297, l: 298	
	str	 x1, [x0, #80]	// id: 298, l: 299	
.L27:	// id: 299, l: 300	
	ldr	 x0, [sp, #120]	// id: 300, l: 301	
	ldr	 x0, [x0, #24]	// id: 301, l: 302	
	str	 x0, [sp, #120]	// id: 302, l: 303	
.L25:	// id: 303, l: 304	
	ldr	 x1, [sp, #120]	// id: 304, l: 305	
	ldr	 x0, [sp, #144]	// id: 305, l: 306	
	cmp	 x1, x0	// id: 306, l: 307	
	bne	 .L28	// id: 307, l: 308	
	b	 .L38	// id: 308, l: 309	
.L20:	// id: 309, l: 310	
	ldr	 x0, [sp]	// id: 310, l: 311	
	str	 x0, [sp, #120]	// id: 311, l: 312	
	b	 .L30	// id: 312, l: 313	
.L31:	// id: 313, l: 314	
	ldr	 x0, [sp, #120]	// id: 314, l: 315	
	ldr	 x1, [x0, #88]	// id: 315, l: 316	
	ldr	 x0, [sp, #88]	// id: 316, l: 317	
	sub	 x1, x1, x0	// id: 317, l: 318	
	ldr	 x0, [sp, #120]	// id: 318, l: 319	
	str	 x1, [x0, #88]	// id: 319, l: 320	
	ldr	 x0, [sp, #120]	// id: 320, l: 321	
	ldr	 x0, [x0, #24]	// id: 321, l: 322	
	str	 x0, [sp, #120]	// id: 322, l: 323	
.L30:	// id: 323, l: 324	
	ldr	 x1, [sp, #120]	// id: 324, l: 325	
	ldr	 x0, [sp, #144]	// id: 325, l: 326	
	cmp	 x1, x0	// id: 326, l: 327	
	bne	 .L31	// id: 327, l: 328	
	ldr	 x0, [sp, #16]	// id: 328, l: 329	
	str	 x0, [sp, #120]	// id: 329, l: 330	
	b	 .L32	// id: 330, l: 331	
.L33:	// id: 331, l: 332	
	ldr	 x0, [sp, #120]	// id: 332, l: 333	
	ldr	 x1, [x0, #88]	// id: 333, l: 334	
	ldr	 x0, [sp, #88]	// id: 334, l: 335	
	add	 x1, x1, x0	// id: 335, l: 336	
	ldr	 x0, [sp, #120]	// id: 336, l: 337	
	str	 x1, [x0, #88]	// id: 337, l: 338	
	ldr	 x0, [sp, #120]	// id: 338, l: 339	
	ldr	 x0, [x0, #24]	// id: 339, l: 340	
	str	 x0, [sp, #120]	// id: 340, l: 341	
.L32:	// id: 341, l: 342	
	ldr	 x1, [sp, #120]	// id: 342, l: 343	
	ldr	 x0, [sp, #144]	// id: 343, l: 344	
	cmp	 x1, x0	// id: 344, l: 345	
	bne	 .L33	// id: 345, l: 346	
.L38:	// id: 346, l: 347	
	nop		// id: 347, l: 348	
	add	 sp, sp, #0x90	// id: 348, l: 349	
	.cfi_def_cfa_offset	0	// id: 349, l: 350	
	ret		// id: 350, l: 351	
	.cfi_endproc		// id: 351, l: 352	
.LFE0:	// id: 352, l: 353	
	.size	update_tree, .-update_tree	// id: 353, l: 354	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 354, l: 355	
	.section	.note.GNU-stack, "",@progbits	// id: 355, l: 356	
