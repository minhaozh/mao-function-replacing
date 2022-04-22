	.arch	armv8-a	// id: 0, l: 1	
	.file	"mcf.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.comm	net, 648, 8	// id: 3, l: 4	
	.section	.rodata	// id: 4, l: 5	
	.p2align	3, , 0	// id: 5, l: 6	
.LC0:	// id: 6, l: 7	
	.string	"active arcs                : %ld\n"	// id: 7, l: 8	
	.p2align	3, , 0	// id: 8, l: 9	
.LC1:	// id: 9, l: 10	
	.string	"simplex iterations         : %ld\n"	// id: 10, l: 11	
	.p2align	3, , 0	// id: 11, l: 12	
.LC2:	// id: 12, l: 13	
	.string	"objective value            : %0.0f\n"	// id: 13, l: 14	
	.p2align	3, , 0	// id: 14, l: 15	
.LC3:	// id: 15, l: 16	
	.string	"not enough memory, exit(-1)"	// id: 16, l: 17	
	.p2align	3, , 0	// id: 17, l: 18	
.LC4:	// id: 18, l: 19	
	.string	"erased arcs                : %ld\n"	// id: 19, l: 20	
	.p2align	3, , 0	// id: 20, l: 21	
.LC5:	// id: 21, l: 22	
	.string	"new implicit arcs          : %ld\n"	// id: 22, l: 23	
	.p2align	3, , 0	// id: 23, l: 24	
.LC6:	// id: 24, l: 25	
	.string	"checksum                   : %0.0f\n"	// id: 25, l: 26	
	.text	0	// id: 26, l: 27	
	.p2align	2, , 0	// id: 27, l: 28	
	.globl	global_opt	// id: 28, l: 29	
	.type	global_opt, %function	// id: 29, l: 30	
global_opt:	// id: 30, l: 31	
.LFB0:	// id: 31, l: 32	
	.cfi_startproc		// id: 32, l: 33	
	stp	 x29, x30, [sp, #-32]!	// id: 33, l: 34	
	.cfi_def_cfa_offset	32	// id: 34, l: 35	
	.cfi_offset	29, -32	// id: 35, l: 36	
	.cfi_offset	30, -24	// id: 36, l: 37	
	mov	 x29, sp	// id: 37, l: 38	
	mov	 x0, #0x1                   	// #1	// id: 38, l: 39	
	str	 x0, [sp, #16]	// id: 39, l: 40	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 40, l: 41	
	str	 x0, [sp, #24]	// id: 41, l: 42	
	b	 .L2	// id: 42, l: 43	
.L8:	// id: 43, l: 44	
	adrp	 x0, net	// id: 44, l: 45	
	add	 x0, x0, :lo12:net	// id: 45, l: 46	
	ldr	 x0, [x0, #424]	// id: 46, l: 47	
	mov	 x1, x0	// id: 47, l: 48	
	adrp	 x0, .LC0	// id: 48, l: 49	
	add	 x0, x0, :lo12:.LC0	// id: 49, l: 50	
	bl	 printf	// id: 50, l: 51	
	adrp	 x0, net	// id: 51, l: 52	
	add	 x0, x0, :lo12:net	// id: 52, l: 53	
	bl	 primal_net_simplex	// id: 53, l: 54	
	adrp	 x0, net	// id: 54, l: 55	
	add	 x0, x0, :lo12:net	// id: 55, l: 56	
	ldr	 x0, [x0, #608]	// id: 56, l: 57	
	mov	 x1, x0	// id: 57, l: 58	
	adrp	 x0, .LC1	// id: 58, l: 59	
	add	 x0, x0, :lo12:.LC1	// id: 59, l: 60	
	bl	 printf	// id: 60, l: 61	
	adrp	 x0, net	// id: 61, l: 62	
	add	 x0, x0, :lo12:net	// id: 62, l: 63	
	bl	 flow_cost	// id: 63, l: 64	
	adrp	 x0, .LC2	// id: 64, l: 65	
	add	 x0, x0, :lo12:.LC2	// id: 65, l: 66	
	bl	 printf	// id: 66, l: 67	
	adrp	 x0, net	// id: 67, l: 68	
	add	 x0, x0, :lo12:net	// id: 68, l: 69	
	ldr	 x0, [x0, #440]	// id: 69, l: 70	
	cmp	 x0, #0x0	// id: 70, l: 71	
	beq	 .L3	// id: 71, l: 72	
	mov	 x2, #0x0                   	// #0	// id: 72, l: 73	
	mov	 x1, #0xffffffffffffffff    	// #-1	// id: 73, l: 74	
	adrp	 x0, net	// id: 74, l: 75	
	add	 x0, x0, :lo12:net	// id: 75, l: 76	
	bl	 suspend_impl	// id: 76, l: 77	
	str	 x0, [sp, #24]	// id: 77, l: 78	
	ldr	 x0, [sp, #24]	// id: 78, l: 79	
	cmp	 x0, #0x0	// id: 79, l: 80	
	bge	 .L4	// id: 80, l: 81	
	adrp	 x0, .LC3	// id: 81, l: 82	
	add	 x0, x0, :lo12:.LC3	// id: 82, l: 83	
	bl	 puts	// id: 83, l: 84	
	mov	 w0, #0xffffffff            	// #-1	// id: 84, l: 85	
	bl	 exit	// id: 85, l: 86	
.L4:	// id: 86, l: 87	
	ldr	 x0, [sp, #24]	// id: 87, l: 88	
	cmp	 x0, #0x0	// id: 88, l: 89	
	beq	 .L5	// id: 89, l: 90	
	ldr	 x1, [sp, #24]	// id: 90, l: 91	
	adrp	 x0, .LC4	// id: 91, l: 92	
	add	 x0, x0, :lo12:.LC4	// id: 92, l: 93	
	bl	 printf	// id: 93, l: 94	
	b	 .L5	// id: 94, l: 95	
.L3:	// id: 95, l: 96	
	adrp	 x0, net	// id: 96, l: 97	
	add	 x0, x0, :lo12:net	// id: 97, l: 98	
	ldr	 x0, [x0, #424]	// id: 98, l: 99	
	mov	 x2, x0	// id: 99, l: 100	
	adrp	 x0, getOriginalArcPosition	// id: 100, l: 101	
	add	 x1, x0, :lo12:getOriginalArcPosition	// id: 101, l: 102	
	adrp	 x0, net	// id: 102, l: 103	
	add	 x0, x0, :lo12:net	// id: 103, l: 104	
	bl	 refreshPositions	// id: 104, l: 105	
.L5:	// id: 105, l: 106	
	adrp	 x0, net	// id: 106, l: 107	
	add	 x0, x0, :lo12:net	// id: 107, l: 108	
	bl	 price_out_impl	// id: 108, l: 109	
	str	 x0, [sp, #24]	// id: 109, l: 110	
	ldr	 x0, [sp, #24]	// id: 110, l: 111	
	cmp	 x0, #0x0	// id: 111, l: 112	
	beq	 .L6	// id: 112, l: 113	
	ldr	 x1, [sp, #24]	// id: 113, l: 114	
	adrp	 x0, .LC5	// id: 114, l: 115	
	add	 x0, x0, :lo12:.LC5	// id: 115, l: 116	
	bl	 printf	// id: 116, l: 117	
.L6:	// id: 117, l: 118	
	ldr	 x0, [sp, #24]	// id: 118, l: 119	
	cmp	 x0, #0x0	// id: 119, l: 120	
	bge	 .L7	// id: 120, l: 121	
	adrp	 x0, .LC3	// id: 121, l: 122	
	add	 x0, x0, :lo12:.LC3	// id: 122, l: 123	
	bl	 puts	// id: 123, l: 124	
	mov	 w0, #0xffffffff            	// #-1	// id: 124, l: 125	
	bl	 exit	// id: 125, l: 126	
.L7:	// id: 126, l: 127	
	ldr	 x0, [sp, #16]	// id: 127, l: 128	
	add	 x0, x0, #0x1	// id: 128, l: 129	
	str	 x0, [sp, #16]	// id: 129, l: 130	
.L2:	// id: 130, l: 131	
	ldr	 x0, [sp, #24]	// id: 131, l: 132	
	cmp	 x0, #0x0	// id: 132, l: 133	
	bne	 .L8	// id: 133, l: 134	
	adrp	 x0, net	// id: 134, l: 135	
	add	 x0, x0, :lo12:net	// id: 135, l: 136	
	bl	 flow_cost	// id: 136, l: 137	
	adrp	 x0, net	// id: 137, l: 138	
	add	 x0, x0, :lo12:net	// id: 138, l: 139	
	str	 d0, [x0, #536]	// id: 139, l: 140	
	adrp	 x0, net	// id: 140, l: 141	
	add	 x0, x0, :lo12:net	// id: 141, l: 142	
	ldr	 d0, [x0, #536]	// id: 142, l: 143	
	adrp	 x0, .LC6	// id: 143, l: 144	
	add	 x0, x0, :lo12:.LC6	// id: 144, l: 145	
	bl	 printf	// id: 145, l: 146	
	mov	 x0, #0x0                   	// #0	// id: 146, l: 147	
	ldp	 x29, x30, [sp], #32	// id: 147, l: 148	
	.cfi_restore	30	// id: 148, l: 149	
	.cfi_restore	29	// id: 149, l: 150	
	.cfi_def_cfa_offset	0	// id: 150, l: 151	
	ret		// id: 151, l: 152	
	.cfi_endproc		// id: 152, l: 153	
.LFE0:	// id: 153, l: 154	
	.size	global_opt, .-global_opt	// id: 154, l: 155	
	.section	.rodata	// id: 155, l: 156	
	.p2align	3, , 0	// id: 156, l: 157	
.LC7:	// id: 157, l: 158	
	.string	"\nMCF SPEC CPU version 1.11"	// id: 158, l: 159	
	.p2align	3, , 0	// id: 159, l: 160	
.LC8:	// id: 160, l: 161	
	.string	"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)"	// id: 161, l: 162	
	.p2align	3, , 0	// id: 162, l: 163	
.LC9:	// id: 163, l: 164	
	.string	"Copyright (c) 2000-2002 Andreas Loebel & ZIB"	// id: 164, l: 165	
	.p2align	3, , 0	// id: 165, l: 166	
.LC10:	// id: 166, l: 167	
	.string	"Copyright (c) 2003-2005 Andreas Loebel"	// id: 167, l: 168	
	.p2align	3, , 0	// id: 168, l: 169	
.LC11:	// id: 169, l: 170	
	.string	"Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)"	// id: 170, l: 171	
	.p2align	3, , 0	// id: 171, l: 172	
.LC12:	// id: 172, l: 173	
	.string	"mcf.%d.out"	// id: 173, l: 174	
	.p2align	3, , 0	// id: 174, l: 175	
.LC13:	// id: 175, l: 176	
	.string	"read error, exit"	// id: 176, l: 177	
	.p2align	3, , 0	// id: 177, l: 178	
.LC14:	// id: 178, l: 179	
	.string	"nodes                      : %ld\n"	// id: 179, l: 180	
	.p2align	3, , 0	// id: 180, l: 181	
.LC15:	// id: 181, l: 182	
	.string	"done"	// id: 182, l: 183	
	.text	0	// id: 183, l: 184	
	.p2align	2, , 0	// id: 184, l: 185	
	.globl	main	// id: 185, l: 186	
	.type	main, %function	// id: 186, l: 187	
main:	// id: 187, l: 188	
.LFB1:	// id: 188, l: 189	
	.cfi_startproc		// id: 189, l: 190	
	stp	 x29, x30, [sp, #-128]!	// id: 190, l: 191	
	.cfi_def_cfa_offset	128	// id: 191, l: 192	
	.cfi_offset	29, -128	// id: 192, l: 193	
	.cfi_offset	30, -120	// id: 193, l: 194	
	mov	 x29, sp	// id: 194, l: 195	
	str	 w0, [sp, #28]	// id: 195, l: 196	
	str	 x1, [sp, #16]	// id: 196, l: 197	
	ldr	 w0, [sp, #28]	// id: 197, l: 198	
	cmp	 w0, #0x1	// id: 198, l: 199	
	bgt	 .L11	// id: 199, l: 200	
	mov	 w0, #0xffffffff            	// #-1	// id: 200, l: 201	
	b	 .L17	// id: 201, l: 202	
.L11:	// id: 202, l: 203	
	adrp	 x0, .LC7	// id: 203, l: 204	
	add	 x0, x0, :lo12:.LC7	// id: 204, l: 205	
	bl	 puts	// id: 205, l: 206	
	adrp	 x0, .LC8	// id: 206, l: 207	
	add	 x0, x0, :lo12:.LC8	// id: 207, l: 208	
	bl	 puts	// id: 208, l: 209	
	adrp	 x0, .LC9	// id: 209, l: 210	
	add	 x0, x0, :lo12:.LC9	// id: 210, l: 211	
	bl	 puts	// id: 211, l: 212	
	adrp	 x0, .LC10	// id: 212, l: 213	
	add	 x0, x0, :lo12:.LC10	// id: 213, l: 214	
	bl	 puts	// id: 214, l: 215	
	adrp	 x0, .LC11	// id: 215, l: 216	
	add	 x0, x0, :lo12:.LC11	// id: 216, l: 217	
	bl	 puts	// id: 217, l: 218	
	mov	 w0, #0xa                   	// #10	// id: 218, l: 219	
	bl	 putchar	// id: 219, l: 220	
	mov	 x2, #0x288                 	// #648	// id: 220, l: 221	
	mov	 w1, #0x0                   	// #0	// id: 221, l: 222	
	adrp	 x0, net	// id: 222, l: 223	
	add	 x0, x0, :lo12:net	// id: 223, l: 224	
	bl	 memset	// id: 224, l: 225	
	adrp	 x0, net	// id: 225, l: 226	
	add	 x0, x0, :lo12:net	// id: 226, l: 227	
	mov	 x1, #0x9680                	// #38528	// id: 227, l: 228	
	movk	 x1, #0x98, lsl #16	// id: 228, l: 229	
	str	 x1, [x0, #528]	// id: 229, l: 230	
	ldr	 x0, [sp, #16]	// id: 230, l: 231	
	add	 x0, x0, #0x8	// id: 231, l: 232	
	ldr	 x0, [x0]	// id: 232, l: 233	
	mov	 x1, x0	// id: 233, l: 234	
	adrp	 x0, net	// id: 234, l: 235	
	add	 x0, x0, :lo12:net	// id: 235, l: 236	
	bl	 strcpy	// id: 236, l: 237	
	ldr	 w0, [sp, #28]	// id: 237, l: 238	
	cmp	 w0, #0x3	// id: 238, l: 239	
	bne	 .L13	// id: 239, l: 240	
	ldr	 x0, [sp, #16]	// id: 240, l: 241	
	add	 x0, x0, #0x10	// id: 241, l: 242	
	ldr	 x0, [x0]	// id: 242, l: 243	
	bl	 atoi	// id: 243, l: 244	
	str	 w0, [sp, #124]	// id: 244, l: 245	
	add	 x3, sp, #0x28	// id: 245, l: 246	
	ldr	 w2, [sp, #124]	// id: 246, l: 247	
	adrp	 x0, .LC12	// id: 247, l: 248	
	add	 x1, x0, :lo12:.LC12	// id: 248, l: 249	
	mov	 x0, x3	// id: 249, l: 250	
	bl	 sprintf	// id: 250, l: 251	
	b	 .L14	// id: 251, l: 252	
.L13:	// id: 252, l: 253	
	add	 x0, sp, #0x28	// id: 253, l: 254	
	mov	 x1, #0x636d                	// #25453	// id: 254, l: 255	
	movk	 x1, #0x2e66, lsl #16	// id: 255, l: 256	
	movk	 x1, #0x756f, lsl #32	// id: 256, l: 257	
	movk	 x1, #0x74, lsl #48	// id: 257, l: 258	
	str	 x1, [x0]	// id: 258, l: 259	
.L14:	// id: 259, l: 260	
	adrp	 x0, net	// id: 260, l: 261	
	add	 x0, x0, :lo12:net	// id: 261, l: 262	
	bl	 read_min	// id: 262, l: 263	
	cmp	 x0, #0x0	// id: 263, l: 264	
	beq	 .L15	// id: 264, l: 265	
	adrp	 x0, .LC13	// id: 265, l: 266	
	add	 x0, x0, :lo12:.LC13	// id: 266, l: 267	
	bl	 puts	// id: 267, l: 268	
	adrp	 x0, net	// id: 268, l: 269	
	add	 x0, x0, :lo12:net	// id: 269, l: 270	
	bl	 getfree	// id: 270, l: 271	
	mov	 w0, #0xffffffff            	// #-1	// id: 271, l: 272	
	b	 .L17	// id: 272, l: 273	
.L15:	// id: 273, l: 274	
	adrp	 x0, net	// id: 274, l: 275	
	add	 x0, x0, :lo12:net	// id: 275, l: 276	
	ldr	 x0, [x0, #408]	// id: 276, l: 277	
	mov	 x1, x0	// id: 277, l: 278	
	adrp	 x0, .LC14	// id: 278, l: 279	
	add	 x0, x0, :lo12:.LC14	// id: 279, l: 280	
	bl	 printf	// id: 280, l: 281	
	adrp	 x0, net	// id: 281, l: 282	
	add	 x0, x0, :lo12:net	// id: 282, l: 283	
	bl	 primal_start_artificial	// id: 283, l: 284	
	bl	 global_opt	// id: 284, l: 285	
	add	 x2, sp, #0x28	// id: 285, l: 286	
	adrp	 x0, net	// id: 286, l: 287	
	add	 x1, x0, :lo12:net	// id: 287, l: 288	
	mov	 x0, x2	// id: 288, l: 289	
	bl	 write_objective_value	// id: 289, l: 290	
	cmp	 x0, #0x0	// id: 290, l: 291	
	beq	 .L16	// id: 291, l: 292	
	adrp	 x0, net	// id: 292, l: 293	
	add	 x0, x0, :lo12:net	// id: 293, l: 294	
	bl	 getfree	// id: 294, l: 295	
	mov	 w0, #0xffffffff            	// #-1	// id: 295, l: 296	
	b	 .L17	// id: 296, l: 297	
.L16:	// id: 297, l: 298	
	adrp	 x0, net	// id: 298, l: 299	
	add	 x0, x0, :lo12:net	// id: 299, l: 300	
	bl	 getfree	// id: 300, l: 301	
	adrp	 x0, .LC15	// id: 301, l: 302	
	add	 x0, x0, :lo12:.LC15	// id: 302, l: 303	
	bl	 puts	// id: 303, l: 304	
	mov	 w0, #0x0                   	// #0	// id: 304, l: 305	
.L17:	// id: 305, l: 306	
	ldp	 x29, x30, [sp], #128	// id: 306, l: 307	
	.cfi_restore	30	// id: 307, l: 308	
	.cfi_restore	29	// id: 308, l: 309	
	.cfi_def_cfa_offset	0	// id: 309, l: 310	
	ret		// id: 310, l: 311	
	.cfi_endproc		// id: 311, l: 312	
.LFE1:	// id: 312, l: 313	
	.size	main, .-main	// id: 313, l: 314	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 314, l: 315	
	.section	.note.GNU-stack, "",@progbits	// id: 315, l: 316	
