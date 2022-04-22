	.arch	armv8-a	// id: 0, l: 1	
	.file	"output.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.section	.rodata.str1.8, "aMS",@progbits,1	// id: 3, l: 4	
	.p2align	3, , 0	// id: 4, l: 5	
.LC0:	// id: 5, l: 6	
	.string	"w"	// id: 6, l: 7	
	.p2align	3, , 0	// id: 7, l: 8	
.LC1:	// id: 8, l: 9	
	.string	"()\n"	// id: 9, l: 10	
	.p2align	3, , 0	// id: 10, l: 11	
.LC2:	// id: 11, l: 12	
	.string	"***\n"	// id: 12, l: 13	
	.p2align	3, , 0	// id: 13, l: 14	
.LC3:	// id: 14, l: 15	
	.string	"%d\n"	// id: 15, l: 16	
	.text	0	// id: 16, l: 17	
	.p2align	2, , 0	// id: 17, l: 18	
	.p2align	3, , 7	// id: 18, l: 19	
	.globl	write_circulations	// id: 19, l: 20	
	.type	write_circulations, %function	// id: 20, l: 21	
write_circulations:	// id: 21, l: 22	
.LFB25:	// id: 22, l: 23	
	.cfi_startproc		// id: 23, l: 24	
	stp	 x29, x30, [sp, #-80]!	// id: 24, l: 25	
	.cfi_def_cfa_offset	80	// id: 25, l: 26	
	.cfi_offset	29, -80	// id: 26, l: 27	
	.cfi_offset	30, -72	// id: 27, l: 28	
	adrp	 x2, .LC0	// id: 28, l: 29	
	mov	 x29, sp	// id: 29, l: 30	
	stp	 x21, x22, [sp, #32]	// id: 30, l: 31	
	.cfi_offset	21, -48	// id: 31, l: 32	
	.cfi_offset	22, -40	// id: 32, l: 33	
	mov	 x21, x1	// id: 33, l: 34	
	add	 x1, x2, :lo12:.LC0	// id: 34, l: 35	
	ldr	 x2, [x21, #440]	// id: 35, l: 36	
	ldr	 x22, [x21, #576]	// id: 36, l: 37	
	add	 x2, x2, x2, lsl #3	// id: 37, l: 38	
	sub	 x22, x22, x2, lsl #3	// id: 38, l: 39	
	bl	 fopen	// id: 39, l: 40	
	cbz	 x0, .L11	// id: 40, l: 41	
	adrp	 x1, getArcPosition	// id: 41, l: 42	
	add	 x1, x1, :lo12:getArcPosition	// id: 42, l: 43	
	stp	 x19, x20, [sp, #16]	// id: 43, l: 44	
	.cfi_offset	20, -56	// id: 44, l: 45	
	.cfi_offset	19, -64	// id: 45, l: 46	
	mov	 x20, x0	// id: 46, l: 47	
	mov	 x0, x21	// id: 47, l: 48	
	stp	 x25, x26, [sp, #64]	// id: 48, l: 49	
	.cfi_offset	26, -8	// id: 49, l: 50	
	.cfi_offset	25, -16	// id: 50, l: 51	
	bl	 refresh_neighbour_lists	// id: 51, l: 52	
	ldr	 x1, [x21, #400]	// id: 52, l: 53	
	ldr	 x2, [x21, #552]	// id: 53, l: 54	
	add	 x0, x1, x1, lsl #1	// id: 54, l: 55	
	add	 x0, x1, x0, lsl #2	// id: 55, l: 56	
	add	 x0, x2, x0, lsl #3	// id: 56, l: 57	
	ldr	 x26, [x0, #56]	// id: 57, l: 58	
	cbz	 x26, .L3	// id: 58, l: 59	
	adrp	 x25, .LC1	// id: 59, l: 60	
	add	 x25, x25, :lo12:.LC1	// id: 60, l: 61	
	stp	 x23, x24, [sp, #48]	// id: 61, l: 62	
	.cfi_offset	24, -24	// id: 62, l: 63	
	.cfi_offset	23, -32	// id: 63, l: 64	
	adrp	 x24, .LC2	// id: 64, l: 65	
	add	 x24, x24, :lo12:.LC2	// id: 65, l: 66	
	b	 .L9	// id: 66, l: 67	
	.p2align	2, , 3	// id: 67, l: 68	
.L4:	// id: 68, l: 69	
	ldr	 x26, [x26, #40]	// id: 69, l: 70	
	cbz	 x26, .L27	// id: 70, l: 71	
.L9:	// id: 71, l: 72	
	ldr	 x0, [x26, #56]	// id: 72, l: 73	
	cbz	 x0, .L4	// id: 73, l: 74	
	mov	 x3, x20	// id: 74, l: 75	
	mov	 x0, x25	// id: 75, l: 76	
	mov	 x19, x26	// id: 76, l: 77	
	mov	 x2, #0x3                   	// #3	// id: 77, l: 78	
	mov	 x1, #0x1                   	// #1	// id: 78, l: 79	
	bl	 fwrite	// id: 79, l: 80	
	adrp	 x23, .LC3	// id: 80, l: 81	
	cmp	 x22, x19	// id: 81, l: 82	
	add	 x23, x23, :lo12:.LC3	// id: 82, l: 83	
	bls	 .L28	// id: 83, l: 84	
	.p2align	3, , 7	// id: 84, l: 85	
.L5:	// id: 85, l: 86	
	ldr	 x2, [x19, #24]	// id: 86, l: 87	
	mov	 x1, x23	// id: 87, l: 88	
	mov	 x0, x20	// id: 88, l: 89	
	ldr	 w2, [x2, #96]	// id: 89, l: 90	
	neg	 w2, w2	// id: 90, l: 91	
	bl	 fprintf	// id: 91, l: 92	
	ldr	 x0, [x21, #408]	// id: 92, l: 93	
	ldr	 x1, [x19, #24]	// id: 93, l: 94	
	add	 x2, x0, x0, lsl #1	// id: 94, l: 95	
	add	 x2, x0, x2, lsl #2	// id: 95, l: 96	
	add	 x2, x1, x2, lsl #3	// id: 96, l: 97	
	ldr	 x19, [x2, #56]	// id: 97, l: 98	
	cbnz	 x19, .L8	// id: 98, l: 99	
	b	 .L6	// id: 99, l: 100	
	.p2align	2, , 3	// id: 100, l: 101	
.L29:	// id: 101, l: 102	
	ldr	 x19, [x19, #40]	// id: 102, l: 103	
	cbz	 x19, .L6	// id: 103, l: 104	
.L8:	// id: 104, l: 105	
	ldr	 x2, [x19, #56]	// id: 105, l: 106	
	cbz	 x2, .L29	// id: 106, l: 107	
	ldr	 x0, [x19, #24]	// id: 107, l: 108	
	ldr	 w0, [x0, #96]	// id: 108, l: 109	
	cbz	 w0, .L4	// id: 109, l: 110	
	cmp	 x22, x19	// id: 110, l: 111	
	bhi	 .L5	// id: 111, l: 112	
.L28:	// id: 112, l: 113	
	mov	 x3, x20	// id: 113, l: 114	
	mov	 x0, x24	// id: 114, l: 115	
	mov	 x2, #0x4                   	// #4	// id: 115, l: 116	
	mov	 x1, #0x1                   	// #1	// id: 116, l: 117	
	bl	 fwrite	// id: 117, l: 118	
	b	 .L5	// id: 118, l: 119	
.L27:	// id: 119, l: 120	
	ldp	 x23, x24, [sp, #48]	// id: 120, l: 121	
	.cfi_restore	24	// id: 121, l: 122	
	.cfi_restore	23	// id: 122, l: 123	
.L3:	// id: 123, l: 124	
	mov	 x0, x20	// id: 124, l: 125	
	bl	 fclose	// id: 125, l: 126	
	ldp	 x19, x20, [sp, #16]	// id: 126, l: 127	
	.cfi_restore	20	// id: 127, l: 128	
	.cfi_restore	19	// id: 128, l: 129	
	mov	 x0, #0x0                   	// #0	// id: 129, l: 130	
	ldp	 x25, x26, [sp, #64]	// id: 130, l: 131	
	.cfi_restore	26	// id: 131, l: 132	
	.cfi_restore	25	// id: 132, l: 133	
.L1:	// id: 133, l: 134	
	ldp	 x21, x22, [sp, #32]	// id: 134, l: 135	
	ldp	 x29, x30, [sp], #80	// id: 135, l: 136	
	.cfi_restore	30	// id: 136, l: 137	
	.cfi_restore	29	// id: 137, l: 138	
	.cfi_restore	21	// id: 138, l: 139	
	.cfi_restore	22	// id: 139, l: 140	
	.cfi_def_cfa_offset	0	// id: 140, l: 141	
	ret		// id: 141, l: 142	
	.p2align	2, , 3	// id: 142, l: 143	
.L6:	// id: 143, l: 144	
	.cfi_def_cfa_offset	80	// id: 144, l: 145	
	.cfi_offset	19, -64	// id: 145, l: 146	
	.cfi_offset	20, -56	// id: 146, l: 147	
	.cfi_offset	21, -48	// id: 147, l: 148	
	.cfi_offset	22, -40	// id: 148, l: 149	
	.cfi_offset	23, -32	// id: 149, l: 150	
	.cfi_offset	24, -24	// id: 150, l: 151	
	.cfi_offset	25, -16	// id: 151, l: 152	
	.cfi_offset	26, -8	// id: 152, l: 153	
	.cfi_offset	29, -80	// id: 153, l: 154	
	.cfi_offset	30, -72	// id: 154, l: 155	
	mov	 x0, x20	// id: 155, l: 156	
	bl	 fclose	// id: 156, l: 157	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 157, l: 158	
	ldp	 x19, x20, [sp, #16]	// id: 158, l: 159	
	.cfi_restore	20	// id: 159, l: 160	
	.cfi_restore	19	// id: 160, l: 161	
	ldp	 x21, x22, [sp, #32]	// id: 161, l: 162	
	ldp	 x23, x24, [sp, #48]	// id: 162, l: 163	
	.cfi_restore	24	// id: 163, l: 164	
	.cfi_restore	23	// id: 164, l: 165	
	ldp	 x25, x26, [sp, #64]	// id: 165, l: 166	
	.cfi_restore	26	// id: 166, l: 167	
	.cfi_restore	25	// id: 167, l: 168	
	ldp	 x29, x30, [sp], #80	// id: 168, l: 169	
	.cfi_restore	30	// id: 169, l: 170	
	.cfi_restore	29	// id: 170, l: 171	
	.cfi_restore	21	// id: 171, l: 172	
	.cfi_restore	22	// id: 172, l: 173	
	.cfi_def_cfa_offset	0	// id: 173, l: 174	
	ret		// id: 174, l: 175	
.L11:	// id: 175, l: 176	
	.cfi_def_cfa_offset	80	// id: 176, l: 177	
	.cfi_offset	21, -48	// id: 177, l: 178	
	.cfi_offset	22, -40	// id: 178, l: 179	
	.cfi_offset	29, -80	// id: 179, l: 180	
	.cfi_offset	30, -72	// id: 180, l: 181	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 181, l: 182	
	b	 .L1	// id: 182, l: 183	
	.cfi_endproc		// id: 183, l: 184	
.LFE25:	// id: 184, l: 185	
	.size	write_circulations, .-write_circulations	// id: 185, l: 186	
	.section	.rodata.str1.8	// id: 186, l: 187	
	.p2align	3, , 0	// id: 187, l: 188	
.LC4:	// id: 188, l: 189	
	.string	"%.0f\n"	// id: 189, l: 190	
	.text	0	// id: 190, l: 191	
	.p2align	2, , 0	// id: 191, l: 192	
	.p2align	3, , 7	// id: 192, l: 193	
	.globl	write_objective_value	// id: 193, l: 194	
	.type	write_objective_value, %function	// id: 194, l: 195	
write_objective_value:	// id: 195, l: 196	
.LFB26:	// id: 196, l: 197	
	.cfi_startproc		// id: 197, l: 198	
	stp	 x29, x30, [sp, #-32]!	// id: 198, l: 199	
	.cfi_def_cfa_offset	32	// id: 199, l: 200	
	.cfi_offset	29, -32	// id: 200, l: 201	
	.cfi_offset	30, -24	// id: 201, l: 202	
	adrp	 x2, .LC0	// id: 202, l: 203	
	mov	 x29, sp	// id: 203, l: 204	
	stp	 x19, x20, [sp, #16]	// id: 204, l: 205	
	.cfi_offset	19, -16	// id: 205, l: 206	
	.cfi_offset	20, -8	// id: 206, l: 207	
	mov	 x20, x1	// id: 207, l: 208	
	add	 x1, x2, :lo12:.LC0	// id: 208, l: 209	
	bl	 fopen	// id: 209, l: 210	
	cbz	 x0, .L32	// id: 210, l: 211	
	mov	 x19, x0	// id: 211, l: 212	
	mov	 x0, x20	// id: 212, l: 213	
	bl	 flow_cost	// id: 213, l: 214	
	adrp	 x1, .LC4	// id: 214, l: 215	
	add	 x1, x1, :lo12:.LC4	// id: 215, l: 216	
	mov	 x0, x19	// id: 216, l: 217	
	bl	 fprintf	// id: 217, l: 218	
	mov	 x0, x19	// id: 218, l: 219	
	bl	 fclose	// id: 219, l: 220	
	mov	 x0, #0x0                   	// #0	// id: 220, l: 221	
.L30:	// id: 221, l: 222	
	ldp	 x19, x20, [sp, #16]	// id: 222, l: 223	
	ldp	 x29, x30, [sp], #32	// id: 223, l: 224	
	.cfi_remember_state		// id: 224, l: 225	
	.cfi_restore	30	// id: 225, l: 226	
	.cfi_restore	29	// id: 226, l: 227	
	.cfi_restore	19	// id: 227, l: 228	
	.cfi_restore	20	// id: 228, l: 229	
	.cfi_def_cfa_offset	0	// id: 229, l: 230	
	ret		// id: 230, l: 231	
.L32:	// id: 231, l: 232	
	.cfi_restore_state		// id: 232, l: 233	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 233, l: 234	
	b	 .L30	// id: 234, l: 235	
	.cfi_endproc		// id: 235, l: 236	
.LFE26:	// id: 236, l: 237	
	.size	write_objective_value, .-write_objective_value	// id: 237, l: 238	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 238, l: 239	
	.section	.note.GNU-stack, "",@progbits	// id: 239, l: 240	
