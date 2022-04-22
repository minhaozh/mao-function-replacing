	.arch	armv8-a	// id: 0, l: 1	
	.file	"mcf.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.section	.rodata.str1.8, "aMS",@progbits,1	// id: 3, l: 4	
	.p2align	3, , 0	// id: 4, l: 5	
.LC0:	// id: 5, l: 6	
	.string	"active arcs                : %ld\n"	// id: 6, l: 7	
	.p2align	3, , 0	// id: 7, l: 8	
.LC1:	// id: 8, l: 9	
	.string	"simplex iterations         : %ld\n"	// id: 9, l: 10	
	.p2align	3, , 0	// id: 10, l: 11	
.LC2:	// id: 11, l: 12	
	.string	"objective value            : %0.0f\n"	// id: 12, l: 13	
	.p2align	3, , 0	// id: 13, l: 14	
.LC3:	// id: 14, l: 15	
	.string	"not enough memory, exit(-1)"	// id: 15, l: 16	
	.p2align	3, , 0	// id: 16, l: 17	
.LC4:	// id: 17, l: 18	
	.string	"erased arcs                : %ld\n"	// id: 18, l: 19	
	.p2align	3, , 0	// id: 19, l: 20	
.LC5:	// id: 20, l: 21	
	.string	"new implicit arcs          : %ld\n"	// id: 21, l: 22	
	.p2align	3, , 0	// id: 22, l: 23	
.LC6:	// id: 23, l: 24	
	.string	"checksum                   : %0.0f\n"	// id: 24, l: 25	
	.text	0	// id: 25, l: 26	
	.p2align	2, , 0	// id: 26, l: 27	
	.p2align	3, , 7	// id: 27, l: 28	
	.globl	global_opt	// id: 28, l: 29	
	.type	global_opt, %function	// id: 29, l: 30	
global_opt:	// id: 30, l: 31	
.LFB25:	// id: 31, l: 32	
	.cfi_startproc		// id: 32, l: 33	
	stp	 x29, x30, [sp, #-80]!	// id: 33, l: 34	
	.cfi_def_cfa_offset	80	// id: 34, l: 35	
	.cfi_offset	29, -80	// id: 35, l: 36	
	.cfi_offset	30, -72	// id: 36, l: 37	
	mov	 x29, sp	// id: 37, l: 38	
	stp	 x19, x20, [sp, #16]	// id: 38, l: 39	
	.cfi_offset	19, -64	// id: 39, l: 40	
	.cfi_offset	20, -56	// id: 40, l: 41	
	adrp	 x19, net	// id: 41, l: 42	
	add	 x19, x19, :lo12:net	// id: 42, l: 43	
	stp	 x21, x22, [sp, #32]	// id: 43, l: 44	
	.cfi_offset	21, -48	// id: 44, l: 45	
	.cfi_offset	22, -40	// id: 45, l: 46	
	adrp	 x22, .LC1	// id: 46, l: 47	
	adrp	 x21, .LC2	// id: 47, l: 48	
	add	 x22, x22, :lo12:.LC1	// id: 48, l: 49	
	add	 x21, x21, :lo12:.LC2	// id: 49, l: 50	
	stp	 x23, x24, [sp, #48]	// id: 50, l: 51	
	.cfi_offset	23, -32	// id: 51, l: 52	
	.cfi_offset	24, -24	// id: 52, l: 53	
	adrp	 x23, .LC0	// id: 53, l: 54	
	adrp	 x24, getOriginalArcPosition	// id: 54, l: 55	
	add	 x23, x23, :lo12:.LC0	// id: 55, l: 56	
	add	 x24, x24, :lo12:getOriginalArcPosition	// id: 56, l: 57	
	str	 x25, [sp, #64]	// id: 57, l: 58	
	.cfi_offset	25, -16	// id: 58, l: 59	
	adrp	 x25, .LC4	// id: 59, l: 60	
	add	 x25, x25, :lo12:.LC4	// id: 60, l: 61	
	.p2align	3, , 7	// id: 61, l: 62	
.L7:	// id: 62, l: 63	
	ldr	 x1, [x19, #424]	// id: 63, l: 64	
	mov	 x0, x23	// id: 64, l: 65	
	bl	 printf	// id: 65, l: 66	
	mov	 x0, x19	// id: 66, l: 67	
	bl	 primal_net_simplex	// id: 67, l: 68	
	ldr	 x1, [x19, #608]	// id: 68, l: 69	
	mov	 x0, x22	// id: 69, l: 70	
	bl	 printf	// id: 70, l: 71	
	mov	 x0, x19	// id: 71, l: 72	
	bl	 flow_cost	// id: 72, l: 73	
	mov	 x0, x21	// id: 73, l: 74	
	bl	 printf	// id: 74, l: 75	
	ldr	 x0, [x19, #440]	// id: 75, l: 76	
	cbz	 x0, .L2	// id: 76, l: 77	
	mov	 x0, x19	// id: 77, l: 78	
	mov	 x2, #0x0                   	// #0	// id: 78, l: 79	
	mov	 x1, #0xffffffffffffffff    	// #-1	// id: 79, l: 80	
	bl	 suspend_impl	// id: 80, l: 81	
	cmp	 x0, #0x0	// id: 81, l: 82	
	blt	 .L6	// id: 82, l: 83	
	bne	 .L13	// id: 83, l: 84	
.L4:	// id: 84, l: 85	
	mov	 x0, x19	// id: 85, l: 86	
	bl	 price_out_impl	// id: 86, l: 87	
	mov	 x20, x0	// id: 87, l: 88	
	cbnz	 x0, .L14	// id: 88, l: 89	
.L5:	// id: 89, l: 90	
	mov	 x0, x19	// id: 90, l: 91	
	bl	 flow_cost	// id: 91, l: 92	
	adrp	 x0, .LC6	// id: 92, l: 93	
	add	 x0, x0, :lo12:.LC6	// id: 93, l: 94	
	str	 d0, [x19, #536]	// id: 94, l: 95	
	bl	 printf	// id: 95, l: 96	
	mov	 x0, #0x0                   	// #0	// id: 96, l: 97	
	ldp	 x19, x20, [sp, #16]	// id: 97, l: 98	
	ldp	 x21, x22, [sp, #32]	// id: 98, l: 99	
	ldp	 x23, x24, [sp, #48]	// id: 99, l: 100	
	ldr	 x25, [sp, #64]	// id: 100, l: 101	
	ldp	 x29, x30, [sp], #80	// id: 101, l: 102	
	.cfi_remember_state		// id: 102, l: 103	
	.cfi_restore	30	// id: 103, l: 104	
	.cfi_restore	29	// id: 104, l: 105	
	.cfi_restore	25	// id: 105, l: 106	
	.cfi_restore	23	// id: 106, l: 107	
	.cfi_restore	24	// id: 107, l: 108	
	.cfi_restore	21	// id: 108, l: 109	
	.cfi_restore	22	// id: 109, l: 110	
	.cfi_restore	19	// id: 110, l: 111	
	.cfi_restore	20	// id: 111, l: 112	
	.cfi_def_cfa_offset	0	// id: 112, l: 113	
	ret		// id: 113, l: 114	
	.p2align	2, , 3	// id: 114, l: 115	
.L2:	// id: 115, l: 116	
	.cfi_restore_state		// id: 116, l: 117	
	ldr	 x2, [x19, #424]	// id: 117, l: 118	
	mov	 x1, x24	// id: 118, l: 119	
	mov	 x0, x19	// id: 119, l: 120	
	bl	 refreshPositions	// id: 120, l: 121	
	mov	 x0, x19	// id: 121, l: 122	
	bl	 price_out_impl	// id: 122, l: 123	
	mov	 x20, x0	// id: 123, l: 124	
	cbz	 x0, .L5	// id: 124, l: 125	
.L14:	// id: 125, l: 126	
	adrp	 x0, .LC5	// id: 126, l: 127	
	mov	 x1, x20	// id: 127, l: 128	
	add	 x0, x0, :lo12:.LC5	// id: 128, l: 129	
	bl	 printf	// id: 129, l: 130	
	tbz	 x20, #63, .L7	// id: 130, l: 131	
.L6:	// id: 131, l: 132	
	adrp	 x0, .LC3	// id: 132, l: 133	
	add	 x0, x0, :lo12:.LC3	// id: 133, l: 134	
	bl	 puts	// id: 134, l: 135	
	mov	 w0, #0xffffffff            	// #-1	// id: 135, l: 136	
	bl	 exit	// id: 136, l: 137	
	.p2align	2, , 3	// id: 137, l: 138	
.L13:	// id: 138, l: 139	
	mov	 x1, x0	// id: 139, l: 140	
	mov	 x0, x25	// id: 140, l: 141	
	bl	 printf	// id: 141, l: 142	
	b	 .L4	// id: 142, l: 143	
	.cfi_endproc		// id: 143, l: 144	
.LFE25:	// id: 144, l: 145	
	.size	global_opt, .-global_opt	// id: 145, l: 146	
	.section	.rodata.str1.8	// id: 146, l: 147	
	.p2align	3, , 0	// id: 147, l: 148	
.LC7:	// id: 148, l: 149	
	.string	"\nMCF SPEC CPU version 1.11"	// id: 149, l: 150	
	.p2align	3, , 0	// id: 150, l: 151	
.LC8:	// id: 151, l: 152	
	.string	"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)"	// id: 152, l: 153	
	.p2align	3, , 0	// id: 153, l: 154	
.LC9:	// id: 154, l: 155	
	.string	"Copyright (c) 2000-2002 Andreas Loebel & ZIB"	// id: 155, l: 156	
	.p2align	3, , 0	// id: 156, l: 157	
.LC10:	// id: 157, l: 158	
	.string	"Copyright (c) 2003-2005 Andreas Loebel"	// id: 158, l: 159	
	.p2align	3, , 0	// id: 159, l: 160	
.LC11:	// id: 160, l: 161	
	.string	"Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)"	// id: 161, l: 162	
	.p2align	3, , 0	// id: 162, l: 163	
.LC12:	// id: 163, l: 164	
	.string	"mcf.%d.out"	// id: 164, l: 165	
	.p2align	3, , 0	// id: 165, l: 166	
.LC13:	// id: 166, l: 167	
	.string	"read error, exit"	// id: 167, l: 168	
	.p2align	3, , 0	// id: 168, l: 169	
.LC14:	// id: 169, l: 170	
	.string	"nodes                      : %ld\n"	// id: 170, l: 171	
	.p2align	3, , 0	// id: 171, l: 172	
.LC15:	// id: 172, l: 173	
	.string	"done"	// id: 173, l: 174	
	.section	.text.startup, "ax",@progbits	// id: 174, l: 175	
	.p2align	2, , 0	// id: 175, l: 176	
	.p2align	3, , 7	// id: 176, l: 177	
	.globl	main	// id: 177, l: 178	
	.type	main, %function	// id: 178, l: 179	
main:	// id: 179, l: 180	
.LFB26:	// id: 180, l: 181	
	.cfi_startproc		// id: 181, l: 182	
	cmp	 w0, #0x1	// id: 182, l: 183	
	ble	 .L21	// id: 183, l: 184	
	stp	 x29, x30, [sp, #-128]!	// id: 184, l: 185	
	.cfi_def_cfa_offset	128	// id: 185, l: 186	
	.cfi_offset	29, -128	// id: 186, l: 187	
	.cfi_offset	30, -120	// id: 187, l: 188	
	mov	 x29, sp	// id: 188, l: 189	
	stp	 x19, x20, [sp, #16]	// id: 189, l: 190	
	.cfi_offset	19, -112	// id: 190, l: 191	
	.cfi_offset	20, -104	// id: 191, l: 192	
	mov	 w20, w0	// id: 192, l: 193	
	adrp	 x0, .LC7	// id: 193, l: 194	
	add	 x0, x0, :lo12:.LC7	// id: 194, l: 195	
	str	 x21, [sp, #32]	// id: 195, l: 196	
	.cfi_offset	21, -96	// id: 196, l: 197	
	mov	 x21, x1	// id: 197, l: 198	
	bl	 puts	// id: 198, l: 199	
	adrp	 x0, .LC8	// id: 199, l: 200	
	add	 x0, x0, :lo12:.LC8	// id: 200, l: 201	
	bl	 puts	// id: 201, l: 202	
	adrp	 x19, net	// id: 202, l: 203	
	adrp	 x0, .LC9	// id: 203, l: 204	
	add	 x0, x0, :lo12:.LC9	// id: 204, l: 205	
	bl	 puts	// id: 205, l: 206	
	add	 x19, x19, :lo12:net	// id: 206, l: 207	
	adrp	 x0, .LC10	// id: 207, l: 208	
	add	 x0, x0, :lo12:.LC10	// id: 208, l: 209	
	bl	 puts	// id: 209, l: 210	
	adrp	 x0, .LC11	// id: 210, l: 211	
	add	 x0, x0, :lo12:.LC11	// id: 211, l: 212	
	bl	 puts	// id: 212, l: 213	
	mov	 w0, #0xa                   	// #10	// id: 213, l: 214	
	bl	 putchar	// id: 214, l: 215	
	mov	 x2, #0x288                 	// #648	// id: 215, l: 216	
	mov	 w1, #0x0                   	// #0	// id: 216, l: 217	
	mov	 x0, x19	// id: 217, l: 218	
	bl	 memset	// id: 218, l: 219	
	mov	 x0, #0x9680                	// #38528	// id: 219, l: 220	
	movk	 x0, #0x98, lsl #16	// id: 220, l: 221	
	str	 x0, [x19, #528]	// id: 221, l: 222	
	mov	 x0, x19	// id: 222, l: 223	
	ldr	 x1, [x21, #8]	// id: 223, l: 224	
	bl	 strcpy	// id: 224, l: 225	
	cmp	 w20, #0x3	// id: 225, l: 226	
	beq	 .L26	// id: 226, l: 227	
	mov	 x0, #0x636d                	// #25453	// id: 227, l: 228	
	movk	 x0, #0x2e66, lsl #16	// id: 228, l: 229	
	movk	 x0, #0x756f, lsl #32	// id: 229, l: 230	
	movk	 x0, #0x74, lsl #48	// id: 230, l: 231	
	str	 x0, [sp, #48]	// id: 231, l: 232	
.L18:	// id: 232, l: 233	
	mov	 x0, x19	// id: 233, l: 234	
	bl	 read_min	// id: 234, l: 235	
	cbnz	 x0, .L27	// id: 235, l: 236	
	ldr	 x1, [x19, #408]	// id: 236, l: 237	
	adrp	 x0, .LC14	// id: 237, l: 238	
	add	 x0, x0, :lo12:.LC14	// id: 238, l: 239	
	bl	 printf	// id: 239, l: 240	
	mov	 x0, x19	// id: 240, l: 241	
	bl	 primal_start_artificial	// id: 241, l: 242	
	bl	 global_opt	// id: 242, l: 243	
	mov	 x1, x19	// id: 243, l: 244	
	add	 x0, sp, #0x30	// id: 244, l: 245	
	bl	 write_objective_value	// id: 245, l: 246	
	cbnz	 x0, .L28	// id: 246, l: 247	
	mov	 x0, x19	// id: 247, l: 248	
	bl	 getfree	// id: 248, l: 249	
	adrp	 x0, .LC15	// id: 249, l: 250	
	add	 x0, x0, :lo12:.LC15	// id: 250, l: 251	
	bl	 puts	// id: 251, l: 252	
	mov	 w0, #0x0                   	// #0	// id: 252, l: 253	
.L15:	// id: 253, l: 254	
	ldp	 x19, x20, [sp, #16]	// id: 254, l: 255	
	ldr	 x21, [sp, #32]	// id: 255, l: 256	
	ldp	 x29, x30, [sp], #128	// id: 256, l: 257	
	.cfi_remember_state		// id: 257, l: 258	
	.cfi_restore	30	// id: 258, l: 259	
	.cfi_restore	29	// id: 259, l: 260	
	.cfi_restore	21	// id: 260, l: 261	
	.cfi_restore	19	// id: 261, l: 262	
	.cfi_restore	20	// id: 262, l: 263	
	.cfi_def_cfa_offset	0	// id: 263, l: 264	
	ret		// id: 264, l: 265	
.L26:	// id: 265, l: 266	
	.cfi_restore_state		// id: 266, l: 267	
	ldr	 x0, [x21, #16]	// id: 267, l: 268	
	mov	 w2, #0xa                   	// #10	// id: 268, l: 269	
	mov	 x1, #0x0                   	// #0	// id: 269, l: 270	
	bl	 strtol	// id: 270, l: 271	
	mov	 w2, w0	// id: 271, l: 272	
	adrp	 x1, .LC12	// id: 272, l: 273	
	add	 x0, sp, #0x30	// id: 273, l: 274	
	add	 x1, x1, :lo12:.LC12	// id: 274, l: 275	
	bl	 sprintf	// id: 275, l: 276	
	b	 .L18	// id: 276, l: 277	
.L21:	// id: 277, l: 278	
	.cfi_def_cfa_offset	0	// id: 278, l: 279	
	.cfi_restore	19	// id: 279, l: 280	
	.cfi_restore	20	// id: 280, l: 281	
	.cfi_restore	21	// id: 281, l: 282	
	.cfi_restore	29	// id: 282, l: 283	
	.cfi_restore	30	// id: 283, l: 284	
	mov	 w0, #0xffffffff            	// #-1	// id: 284, l: 285	
	ret		// id: 285, l: 286	
.L27:	// id: 286, l: 287	
	.cfi_def_cfa_offset	128	// id: 287, l: 288	
	.cfi_offset	19, -112	// id: 288, l: 289	
	.cfi_offset	20, -104	// id: 289, l: 290	
	.cfi_offset	21, -96	// id: 290, l: 291	
	.cfi_offset	29, -128	// id: 291, l: 292	
	.cfi_offset	30, -120	// id: 292, l: 293	
	adrp	 x0, .LC13	// id: 293, l: 294	
	add	 x0, x0, :lo12:.LC13	// id: 294, l: 295	
	bl	 puts	// id: 295, l: 296	
	mov	 x0, x19	// id: 296, l: 297	
	bl	 getfree	// id: 297, l: 298	
	mov	 w0, #0xffffffff            	// #-1	// id: 298, l: 299	
	b	 .L15	// id: 299, l: 300	
.L28:	// id: 300, l: 301	
	mov	 x0, x19	// id: 301, l: 302	
	bl	 getfree	// id: 302, l: 303	
	mov	 w0, #0xffffffff            	// #-1	// id: 303, l: 304	
	b	 .L15	// id: 304, l: 305	
	.cfi_endproc		// id: 305, l: 306	
.LFE26:	// id: 306, l: 307	
	.size	main, .-main	// id: 307, l: 308	
	.comm	net, 648, 8	// id: 308, l: 309	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 309, l: 310	
	.section	.note.GNU-stack, "",@progbits	// id: 310, l: 311	
