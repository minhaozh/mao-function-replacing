	.arch	armv8-a	// id: 0, l: 1	
	.file	"output.c"	// id: 1, l: 2	
	.text	0	// id: 2, l: 3	
	.section	.rodata	// id: 3, l: 4	
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
	.globl	write_circulations	// id: 18, l: 19	
	.type	write_circulations, %function	// id: 19, l: 20	
write_circulations:	// id: 20, l: 21	
.LFB0:	// id: 21, l: 22	
	.cfi_startproc		// id: 22, l: 23	
	stp	 x29, x30, [sp, #-80]!	// id: 23, l: 24	
	.cfi_def_cfa_offset	80	// id: 24, l: 25	
	.cfi_offset	29, -80	// id: 25, l: 26	
	.cfi_offset	30, -72	// id: 26, l: 27	
	mov	 x29, sp	// id: 27, l: 28	
	str	 x0, [sp, #24]	// id: 28, l: 29	
	str	 x1, [sp, #16]	// id: 29, l: 30	
	str	 xzr, [sp, #48]	// id: 30, l: 31	
	ldr	 x0, [sp, #16]	// id: 31, l: 32	
	ldr	 x1, [x0, #576]	// id: 32, l: 33	
	ldr	 x0, [sp, #16]	// id: 33, l: 34	
	ldr	 x0, [x0, #440]	// id: 34, l: 35	
	mov	 x2, x0	// id: 35, l: 36	
	mov	 x0, x2	// id: 36, l: 37	
	lsl	 x0, x0, #3	// id: 37, l: 38	
	add	 x0, x0, x2	// id: 38, l: 39	
	lsl	 x0, x0, #3	// id: 39, l: 40	
	neg	 x0, x0	// id: 40, l: 41	
	add	 x0, x1, x0	// id: 41, l: 42	
	str	 x0, [sp, #40]	// id: 42, l: 43	
	adrp	 x0, .LC0	// id: 43, l: 44	
	add	 x1, x0, :lo12:.LC0	// id: 44, l: 45	
	ldr	 x0, [sp, #24]	// id: 45, l: 46	
	bl	 fopen	// id: 46, l: 47	
	str	 x0, [sp, #48]	// id: 47, l: 48	
	ldr	 x0, [sp, #48]	// id: 48, l: 49	
	cmp	 x0, #0x0	// id: 49, l: 50	
	bne	 .L2	// id: 50, l: 51	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 51, l: 52	
	b	 .L3	// id: 52, l: 53	
.L2:	// id: 53, l: 54	
	adrp	 x0, getArcPosition	// id: 54, l: 55	
	add	 x1, x0, :lo12:getArcPosition	// id: 55, l: 56	
	ldr	 x0, [sp, #16]	// id: 56, l: 57	
	bl	 refresh_neighbour_lists	// id: 57, l: 58	
	ldr	 x0, [sp, #16]	// id: 58, l: 59	
	ldr	 x2, [x0, #552]	// id: 59, l: 60	
	ldr	 x0, [sp, #16]	// id: 60, l: 61	
	ldr	 x0, [x0, #400]	// id: 61, l: 62	
	mov	 x1, x0	// id: 62, l: 63	
	mov	 x0, x1	// id: 63, l: 64	
	lsl	 x0, x0, #1	// id: 64, l: 65	
	add	 x0, x0, x1	// id: 65, l: 66	
	lsl	 x0, x0, #2	// id: 66, l: 67	
	add	 x0, x0, x1	// id: 67, l: 68	
	lsl	 x0, x0, #3	// id: 68, l: 69	
	add	 x0, x2, x0	// id: 69, l: 70	
	ldr	 x0, [x0, #56]	// id: 70, l: 71	
	str	 x0, [sp, #72]	// id: 71, l: 72	
	b	 .L4	// id: 72, l: 73	
.L15:	// id: 73, l: 74	
	ldr	 x0, [sp, #72]	// id: 74, l: 75	
	ldr	 x0, [x0, #56]	// id: 75, l: 76	
	cmp	 x0, #0x0	// id: 76, l: 77	
	beq	 .L5	// id: 77, l: 78	
	ldr	 x3, [sp, #48]	// id: 78, l: 79	
	mov	 x2, #0x3                   	// #3	// id: 79, l: 80	
	mov	 x1, #0x1                   	// #1	// id: 80, l: 81	
	adrp	 x0, .LC1	// id: 81, l: 82	
	add	 x0, x0, :lo12:.LC1	// id: 82, l: 83	
	bl	 fwrite	// id: 83, l: 84	
	ldr	 x0, [sp, #72]	// id: 84, l: 85	
	str	 x0, [sp, #64]	// id: 85, l: 86	
	b	 .L6	// id: 86, l: 87	
.L14:	// id: 87, l: 88	
	ldr	 x1, [sp, #64]	// id: 88, l: 89	
	ldr	 x0, [sp, #40]	// id: 89, l: 90	
	cmp	 x1, x0	// id: 90, l: 91	
	bcc	 .L7	// id: 91, l: 92	
	ldr	 x3, [sp, #48]	// id: 92, l: 93	
	mov	 x2, #0x4                   	// #4	// id: 93, l: 94	
	mov	 x1, #0x1                   	// #1	// id: 94, l: 95	
	adrp	 x0, .LC2	// id: 95, l: 96	
	add	 x0, x0, :lo12:.LC2	// id: 96, l: 97	
	bl	 fwrite	// id: 97, l: 98	
.L7:	// id: 98, l: 99	
	ldr	 x0, [sp, #64]	// id: 99, l: 100	
	ldr	 x0, [x0, #24]	// id: 100, l: 101	
	ldr	 w0, [x0, #96]	// id: 101, l: 102	
	neg	 w0, w0	// id: 102, l: 103	
	mov	 w2, w0	// id: 103, l: 104	
	adrp	 x0, .LC3	// id: 104, l: 105	
	add	 x1, x0, :lo12:.LC3	// id: 105, l: 106	
	ldr	 x0, [sp, #48]	// id: 106, l: 107	
	bl	 fprintf	// id: 107, l: 108	
	ldr	 x0, [sp, #64]	// id: 108, l: 109	
	ldr	 x2, [x0, #24]	// id: 109, l: 110	
	ldr	 x0, [sp, #16]	// id: 110, l: 111	
	ldr	 x0, [x0, #408]	// id: 111, l: 112	
	mov	 x1, x0	// id: 112, l: 113	
	mov	 x0, x1	// id: 113, l: 114	
	lsl	 x0, x0, #1	// id: 114, l: 115	
	add	 x0, x0, x1	// id: 115, l: 116	
	lsl	 x0, x0, #2	// id: 116, l: 117	
	add	 x0, x0, x1	// id: 117, l: 118	
	lsl	 x0, x0, #3	// id: 118, l: 119	
	add	 x0, x2, x0	// id: 119, l: 120	
	ldr	 x0, [x0, #56]	// id: 120, l: 121	
	str	 x0, [sp, #56]	// id: 121, l: 122	
	b	 .L8	// id: 122, l: 123	
.L11:	// id: 123, l: 124	
	ldr	 x0, [sp, #56]	// id: 124, l: 125	
	ldr	 x0, [x0, #56]	// id: 125, l: 126	
	cmp	 x0, #0x0	// id: 126, l: 127	
	bne	 .L16	// id: 127, l: 128	
	ldr	 x0, [sp, #56]	// id: 128, l: 129	
	ldr	 x0, [x0, #40]	// id: 129, l: 130	
	str	 x0, [sp, #56]	// id: 130, l: 131	
.L8:	// id: 131, l: 132	
	ldr	 x0, [sp, #56]	// id: 132, l: 133	
	cmp	 x0, #0x0	// id: 133, l: 134	
	bne	 .L11	// id: 134, l: 135	
	b	 .L10	// id: 135, l: 136	
.L16:	// id: 136, l: 137	
	nop		// id: 137, l: 138	
.L10:	// id: 138, l: 139	
	ldr	 x0, [sp, #56]	// id: 139, l: 140	
	cmp	 x0, #0x0	// id: 140, l: 141	
	bne	 .L12	// id: 141, l: 142	
	ldr	 x0, [sp, #48]	// id: 142, l: 143	
	bl	 fclose	// id: 143, l: 144	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 144, l: 145	
	b	 .L3	// id: 145, l: 146	
.L12:	// id: 146, l: 147	
	ldr	 x0, [sp, #56]	// id: 147, l: 148	
	ldr	 x0, [x0, #24]	// id: 148, l: 149	
	ldr	 w0, [x0, #96]	// id: 149, l: 150	
	cmp	 w0, #0x0	// id: 150, l: 151	
	beq	 .L13	// id: 151, l: 152	
	ldr	 x0, [sp, #56]	// id: 152, l: 153	
	str	 x0, [sp, #64]	// id: 153, l: 154	
	b	 .L6	// id: 154, l: 155	
.L13:	// id: 155, l: 156	
	str	 xzr, [sp, #64]	// id: 156, l: 157	
.L6:	// id: 157, l: 158	
	ldr	 x0, [sp, #64]	// id: 158, l: 159	
	cmp	 x0, #0x0	// id: 159, l: 160	
	bne	 .L14	// id: 160, l: 161	
.L5:	// id: 161, l: 162	
	ldr	 x0, [sp, #72]	// id: 162, l: 163	
	ldr	 x0, [x0, #40]	// id: 163, l: 164	
	str	 x0, [sp, #72]	// id: 164, l: 165	
.L4:	// id: 165, l: 166	
	ldr	 x0, [sp, #72]	// id: 166, l: 167	
	cmp	 x0, #0x0	// id: 167, l: 168	
	bne	 .L15	// id: 168, l: 169	
	ldr	 x0, [sp, #48]	// id: 169, l: 170	
	bl	 fclose	// id: 170, l: 171	
	mov	 x0, #0x0                   	// #0	// id: 171, l: 172	
.L3:	// id: 172, l: 173	
	ldp	 x29, x30, [sp], #80	// id: 173, l: 174	
	.cfi_restore	30	// id: 174, l: 175	
	.cfi_restore	29	// id: 175, l: 176	
	.cfi_def_cfa_offset	0	// id: 176, l: 177	
	ret		// id: 177, l: 178	
	.cfi_endproc		// id: 178, l: 179	
.LFE0:	// id: 179, l: 180	
	.size	write_circulations, .-write_circulations	// id: 180, l: 181	
	.section	.rodata	// id: 181, l: 182	
	.p2align	3, , 0	// id: 182, l: 183	
.LC4:	// id: 183, l: 184	
	.string	"%.0f\n"	// id: 184, l: 185	
	.text	0	// id: 185, l: 186	
	.p2align	2, , 0	// id: 186, l: 187	
	.globl	write_objective_value	// id: 187, l: 188	
	.type	write_objective_value, %function	// id: 188, l: 189	
write_objective_value:	// id: 189, l: 190	
.LFB1:	// id: 190, l: 191	
	.cfi_startproc		// id: 191, l: 192	
	stp	 x29, x30, [sp, #-48]!	// id: 192, l: 193	
	.cfi_def_cfa_offset	48	// id: 193, l: 194	
	.cfi_offset	29, -48	// id: 194, l: 195	
	.cfi_offset	30, -40	// id: 195, l: 196	
	mov	 x29, sp	// id: 196, l: 197	
	str	 x0, [sp, #24]	// id: 197, l: 198	
	str	 x1, [sp, #16]	// id: 198, l: 199	
	str	 xzr, [sp, #40]	// id: 199, l: 200	
	adrp	 x0, .LC0	// id: 200, l: 201	
	add	 x1, x0, :lo12:.LC0	// id: 201, l: 202	
	ldr	 x0, [sp, #24]	// id: 202, l: 203	
	bl	 fopen	// id: 203, l: 204	
	str	 x0, [sp, #40]	// id: 204, l: 205	
	ldr	 x0, [sp, #40]	// id: 205, l: 206	
	cmp	 x0, #0x0	// id: 206, l: 207	
	bne	 .L18	// id: 207, l: 208	
	mov	 x0, #0xffffffffffffffff    	// #-1	// id: 208, l: 209	
	b	 .L19	// id: 209, l: 210	
.L18:	// id: 210, l: 211	
	ldr	 x0, [sp, #16]	// id: 211, l: 212	
	bl	 flow_cost	// id: 212, l: 213	
	adrp	 x0, .LC4	// id: 213, l: 214	
	add	 x1, x0, :lo12:.LC4	// id: 214, l: 215	
	ldr	 x0, [sp, #40]	// id: 215, l: 216	
	bl	 fprintf	// id: 216, l: 217	
	ldr	 x0, [sp, #40]	// id: 217, l: 218	
	bl	 fclose	// id: 218, l: 219	
	mov	 x0, #0x0                   	// #0	// id: 219, l: 220	
.L19:	// id: 220, l: 221	
	ldp	 x29, x30, [sp], #48	// id: 221, l: 222	
	.cfi_restore	30	// id: 222, l: 223	
	.cfi_restore	29	// id: 223, l: 224	
	.cfi_def_cfa_offset	0	// id: 224, l: 225	
	ret		// id: 225, l: 226	
	.cfi_endproc		// id: 226, l: 227	
.LFE1:	// id: 227, l: 228	
	.size	write_objective_value, .-write_objective_value	// id: 228, l: 229	
	.ident	"GCC: (GNU) 9.2.0 with MAO"	// id: 229, l: 230	
	.section	.note.GNU-stack, "",@progbits	// id: 230, l: 231	
