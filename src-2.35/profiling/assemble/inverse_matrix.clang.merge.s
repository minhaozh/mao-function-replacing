	.text
	.file	"inverse_matrix.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4746794007244308480     # double 2147483647
.LCPI0_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.file	1 "/home/tianaoge/Documents/myWorkspace/mao/profiling/assemble" "inverse_matrix.c"
	.loc	1 26 0                  # inverse_matrix.c:26:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$2560, %rsp             # imm = 0xA00
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp0:
	.loc	1 29 3 prologue_end     # inverse_matrix.c:29:3
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 31 10                 # inverse_matrix.c:31:10
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	movl	%eax, -2548(%rbp)       # 4-byte Spill
	.loc	1 31 5 is_stmt 0        # inverse_matrix.c:31:5
	callq	atoi
	xorl	%edx, %edx
	movl	%edx, %edi
	.loc	1 31 4                  # inverse_matrix.c:31:4
	movl	%eax, -2544(%rbp)
	.loc	1 32 20 is_stmt 1       # inverse_matrix.c:32:20
	callq	time
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 32 3 is_stmt 0        # inverse_matrix.c:32:3
	movl	%eax, %edi
	callq	srand
.Ltmp1:
	.loc	1 34 10 is_stmt 1       # inverse_matrix.c:34:10
	movl	$0, -2536(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
.Ltmp2:
	.loc	1 34 14 is_stmt 0       # inverse_matrix.c:34:14
	movl	-2536(%rbp), %eax
	.loc	1 34 16                 # inverse_matrix.c:34:16
	cmpl	-2544(%rbp), %eax
.Ltmp3:
	.loc	1 34 3                  # inverse_matrix.c:34:3
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp4:
	.loc	1 36 13 is_stmt 1       # inverse_matrix.c:36:13
	movl	$0, -2540(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp5:
	.loc	1 36 17 is_stmt 0       # inverse_matrix.c:36:17
	movl	-2540(%rbp), %eax
	.loc	1 36 19                 # inverse_matrix.c:36:19
	cmpl	-2544(%rbp), %eax
.Ltmp6:
	.loc	1 36 6                  # inverse_matrix.c:36:6
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
.Ltmp7:
	.loc	1 38 18 is_stmt 1       # inverse_matrix.c:38:18
	movl	-2536(%rbp), %eax
	.loc	1 38 19 is_stmt 0       # inverse_matrix.c:38:19
	imull	-2544(%rbp), %eax
	.loc	1 38 21                 # inverse_matrix.c:38:21
	addl	-2540(%rbp), %eax
	.loc	1 38 18                 # inverse_matrix.c:38:18
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, -2560(%rbp)      # 8-byte Spill
	.loc	1 38 28                 # inverse_matrix.c:38:28
	callq	rand
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	.loc	1 38 27                 # inverse_matrix.c:38:27
	mulsd	%xmm2, %xmm1
	.loc	1 38 34                 # inverse_matrix.c:38:34
	divsd	%xmm0, %xmm1
	movsd	-2560(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	.loc	1 38 23                 # inverse_matrix.c:38:23
	addsd	%xmm1, %xmm0
	.loc	1 38 18                 # inverse_matrix.c:38:18
	cvtsd2ss	%xmm0, %xmm0
	.loc	1 38 10                 # inverse_matrix.c:38:10
	movslq	-2536(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	leaq	-2528(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-2540(%rbp), %rcx
	.loc	1 38 17                 # inverse_matrix.c:38:17
	movss	%xmm0, (%rdx,%rcx,4)
.Ltmp8:
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	.loc	1 36 25 is_stmt 1       # inverse_matrix.c:36:25
	movl	-2540(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2540(%rbp)
	.loc	1 36 6 is_stmt 0        # inverse_matrix.c:36:6
	jmp	.LBB0_3
.Ltmp9:
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 41 5 is_stmt 1        # inverse_matrix.c:41:5
	jmp	.LBB0_7
.Ltmp10:
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 34 22                 # inverse_matrix.c:34:22
	movl	-2536(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2536(%rbp)
	.loc	1 34 3 is_stmt 0        # inverse_matrix.c:34:3
	jmp	.LBB0_1
.Ltmp11:
.LBB0_8:
	.loc	1 0 3                   # inverse_matrix.c:0:3
	leaq	-2528(%rbp), %rdi
	.loc	1 43 22 is_stmt 1       # inverse_matrix.c:43:22
	cvtsi2ssl	-2544(%rbp), %xmm0
	.loc	1 43 7 is_stmt 0        # inverse_matrix.c:43:7
	callq	determinant
	.loc	1 43 5                  # inverse_matrix.c:43:5
	movss	%xmm0, -2532(%rbp)
.Ltmp12:
	.loc	1 44 7 is_stmt 1        # inverse_matrix.c:44:7
	movss	-2532(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	.loc	1 44 9 is_stmt 0        # inverse_matrix.c:44:9
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
.Ltmp13:
	.loc	1 44 7                  # inverse_matrix.c:44:7
	jne	.LBB0_10
	jp	.LBB0_10
# %bb.9:
.Ltmp14:
	.loc	1 45 4 is_stmt 1        # inverse_matrix.c:45:4
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	jmp	.LBB0_11
.LBB0_10:
	.loc	1 0 4 is_stmt 0         # inverse_matrix.c:0:4
	leaq	-2528(%rbp), %rdi
	.loc	1 47 16 is_stmt 1       # inverse_matrix.c:47:16
	cvtsi2ssl	-2544(%rbp), %xmm0
	.loc	1 47 4 is_stmt 0        # inverse_matrix.c:47:4
	callq	cofactor
.Ltmp15:
.LBB0_11:
	.loc	1 48 1 is_stmt 1        # inverse_matrix.c:48:1
	movl	-4(%rbp), %eax
	addq	$2560, %rsp             # imm = 0xA00
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp16:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function determinant
.LCPI1_0:
	.long	1065353216              # float 1
.LCPI1_1:
	.long	3212836864              # float -1
.LCPI1_2:
	.long	1073741824              # float 2
	.text
	.globl	determinant
	.p2align	4, 0x90
	.type	determinant,@function
determinant:
.LFB6:
	.loc 1 52 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2560, %rsp
	movq	%rdi, -2552(%rbp)
	movss	%xmm0, -2556(%rbp)
	.loc 1 52 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 53 0
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -2540(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -2536(%rbp)
	.loc 1 55 0
	movss	.LC4(%rip), %xmm0
	ucomiss	-2556(%rbp), %xmm0
	jp	.L13
	movss	.LC4(%rip), %xmm0
	ucomiss	-2556(%rbp), %xmm0
	jne	.L13
	.loc 1 57 0
	movq	-2552(%rbp), %rax
	movss	(%rax), %xmm0
	jmp	.L25
.L13:
	.loc 1 61 0
	pxor	%xmm0, %xmm0
	movss	%xmm0, -2536(%rbp)
	.loc 1 62 0
	movl	$0, -2516(%rbp)
	jmp	.L16
.L24:
	.loc 1 64 0
	movl	$0, -2524(%rbp)
	.loc 1 65 0
	movl	$0, -2520(%rbp)
	.loc 1 66 0
	movl	$0, -2532(%rbp)
	jmp	.L17
.L23:
	.loc 1 68 0
	movl	$0, -2528(%rbp)
	jmp	.L18
.L22:
	.loc 1 70 0
	movl	-2528(%rbp), %eax
	movslq	%eax, %rcx
	movl	-2532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	addq	%rcx, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -2512(%rbp,%rax,4)
	.loc 1 71 0
	cmpl	$0, -2532(%rbp)
	je	.L19
	.loc 1 71 0 is_stmt 0 discriminator 1
	movl	-2528(%rbp), %eax
	cmpl	-2516(%rbp), %eax
	je	.L19
	.loc 1 73 0 is_stmt 1
	movl	-2532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-2552(%rbp), %rax
	addq	%rax, %rdx
	movl	-2528(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	movl	-2520(%rbp), %eax
	movslq	%eax, %rcx
	movl	-2524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	addq	%rcx, %rax
	movss	%xmm0, -2512(%rbp,%rax,4)
	.loc 1 74 0
	cvtsi2ss	-2520(%rbp), %xmm1
	movss	-2556(%rbp), %xmm0
	movss	.LC5(%rip), %xmm2
	subss	%xmm2, %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L29
	.loc 1 75 0
	addl	$1, -2520(%rbp)
	jmp	.L19
.L29:
	.loc 1 78 0
	movl	$0, -2520(%rbp)
	.loc 1 79 0
	addl	$1, -2524(%rbp)
.L19:
	.loc 1 68 0 discriminator 2
	addl	$1, -2528(%rbp)
.L18:
	.loc 1 68 0 is_stmt 0 discriminator 1
	cvtsi2ss	-2528(%rbp), %xmm0
	movss	-2556(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.L22
	.loc 1 66 0 is_stmt 1 discriminator 2
	addl	$1, -2532(%rbp)
.L17:
	.loc 1 66 0 is_stmt 0 discriminator 1
	cvtsi2ss	-2532(%rbp), %xmm0
	movss	-2556(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.L23
	.loc 1 84 0 is_stmt 1 discriminator 2
	movq	-2552(%rbp), %rax
	movl	-2516(%rbp), %edx
	movslq	%edx, %rdx
	movss	(%rax,%rdx,4), %xmm3
	movss	%xmm3, -2560(%rbp)
	movss	-2556(%rbp), %xmm0
	movss	.LC4(%rip), %xmm1
	subss	%xmm1, %xmm0
	leaq	-2512(%rbp), %rax
	movq	%rax, %rdi
	call	determinant
	mulss	-2560(%rbp), %xmm0
	mulss	-2540(%rbp), %xmm0
	movss	-2536(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -2536(%rbp)
	.loc 1 85 0 discriminator 2
	movss	-2540(%rbp), %xmm1
	movss	.LC6(%rip), %xmm0
	xorps	%xmm1, %xmm0
	movss	%xmm0, -2540(%rbp)
	.loc 1 62 0 discriminator 2
	addl	$1, -2516(%rbp)
.L16:
	.loc 1 62 0 is_stmt 0 discriminator 1
	cvtsi2ss	-2516(%rbp), %xmm0
	movss	-2556(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.L24
	.loc 1 89 0 is_stmt 1
	movss	-2536(%rbp), %xmm0
.L25:
	.loc 1 90 0 discriminator 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L26
	.loc 1 90 0 is_stmt 0
	call	__stack_chk_fail@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function cofactor
.LCPI2_0:
	.long	1065353216              # float 1
.LCPI2_2:
	.long	1073741824              # float 2
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI2_1:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	cofactor
	.p2align	4, 0x90
	.type	cofactor,@function
cofactor:                               # @cofactor
.Lfunc_begin2:
	.loc	1 93 0                  # inverse_matrix.c:93:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$5056, %rsp             # imm = 0x13C0
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
.Ltmp49:
	.loc	1 96 9 prologue_end     # inverse_matrix.c:96:9
	movl	$0, -5032(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #       Child Loop BB2_5 Depth 3
                                        #         Child Loop BB2_7 Depth 4
.Ltmp50:
	.loc	1 96 13 is_stmt 0       # inverse_matrix.c:96:13
	cvtsi2ssl	-5032(%rbp), %xmm0
	.loc	1 96 17                 # inverse_matrix.c:96:17
	movss	-12(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	.loc	1 96 15                 # inverse_matrix.c:96:15
	ucomiss	%xmm0, %xmm1
.Ltmp51:
	.loc	1 96 2                  # inverse_matrix.c:96:2
	jbe	.LBB2_22
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp52:
	.loc	1 98 11 is_stmt 1       # inverse_matrix.c:98:11
	movl	$0, -5028(%rbp)
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_5 Depth 3
                                        #         Child Loop BB2_7 Depth 4
.Ltmp53:
	.loc	1 98 15 is_stmt 0       # inverse_matrix.c:98:15
	cvtsi2ssl	-5028(%rbp), %xmm0
	.loc	1 98 19                 # inverse_matrix.c:98:19
	movss	-12(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	.loc	1 98 17                 # inverse_matrix.c:98:17
	ucomiss	%xmm0, %xmm1
.Ltmp54:
	.loc	1 98 4                  # inverse_matrix.c:98:4
	jbe	.LBB2_20
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=2
.Ltmp55:
	.loc	1 100 8 is_stmt 1       # inverse_matrix.c:100:8
	movl	$0, -5036(%rbp)
	.loc	1 101 8                 # inverse_matrix.c:101:8
	movl	$0, -5040(%rbp)
.Ltmp56:
	.loc	1 102 13                # inverse_matrix.c:102:13
	movl	$0, -5044(%rbp)
.LBB2_5:                                #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_7 Depth 4
.Ltmp57:
	.loc	1 102 17 is_stmt 0      # inverse_matrix.c:102:17
	cvtsi2ssl	-5044(%rbp), %xmm0
	.loc	1 102 21                # inverse_matrix.c:102:21
	movss	-12(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	.loc	1 102 19                # inverse_matrix.c:102:19
	ucomiss	%xmm0, %xmm1
.Ltmp58:
	.loc	1 102 6                 # inverse_matrix.c:102:6
	jbe	.LBB2_18
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=3
.Ltmp59:
	.loc	1 104 15 is_stmt 1      # inverse_matrix.c:104:15
	movl	$0, -5048(%rbp)
.LBB2_7:                                #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_3 Depth=2
                                        #       Parent Loop BB2_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
.Ltmp60:
	.loc	1 104 19 is_stmt 0      # inverse_matrix.c:104:19
	cvtsi2ssl	-5048(%rbp), %xmm0
	.loc	1 104 23                # inverse_matrix.c:104:23
	movss	-12(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	.loc	1 104 21                # inverse_matrix.c:104:21
	ucomiss	%xmm0, %xmm1
.Ltmp61:
	.loc	1 104 8                 # inverse_matrix.c:104:8
	jbe	.LBB2_16
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=4
.Ltmp62:
	.loc	1 106 15 is_stmt 1      # inverse_matrix.c:106:15
	movl	-5044(%rbp), %eax
	.loc	1 106 17 is_stmt 0      # inverse_matrix.c:106:17
	cmpl	-5032(%rbp), %eax
	.loc	1 106 22                # inverse_matrix.c:106:22
	je	.LBB2_14
# %bb.9:                                #   in Loop: Header=BB2_7 Depth=4
	.loc	1 106 25                # inverse_matrix.c:106:25
	movl	-5048(%rbp), %eax
	.loc	1 106 27                # inverse_matrix.c:106:27
	cmpl	-5028(%rbp), %eax
.Ltmp63:
	.loc	1 106 15                # inverse_matrix.c:106:15
	je	.LBB2_14
# %bb.10:                               #   in Loop: Header=BB2_7 Depth=4
	.loc	1 0 15                  # inverse_matrix.c:0:15
	movss	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
.Ltmp64:
	.loc	1 108 23 is_stmt 1      # inverse_matrix.c:108:23
	movq	-8(%rbp), %rax
	movslq	-5044(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-5048(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	.loc	1 108 13 is_stmt 0      # inverse_matrix.c:108:13
	movslq	-5036(%rbp), %rax
	imulq	$100, %rax, %rax
	leaq	-2512(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-5040(%rbp), %rax
	.loc	1 108 21                # inverse_matrix.c:108:21
	movss	%xmm1, (%rcx,%rax,4)
.Ltmp65:
	.loc	1 109 17 is_stmt 1      # inverse_matrix.c:109:17
	cvtsi2ssl	-5040(%rbp), %xmm1
	.loc	1 109 22 is_stmt 0      # inverse_matrix.c:109:22
	movss	-12(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	.loc	1 109 24                # inverse_matrix.c:109:24
	subss	%xmm0, %xmm2
	.loc	1 109 19                # inverse_matrix.c:109:19
	ucomiss	%xmm1, %xmm2
.Ltmp66:
	.loc	1 109 17                # inverse_matrix.c:109:17
	jbe	.LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_7 Depth=4
.Ltmp67:
	.loc	1 110 15 is_stmt 1      # inverse_matrix.c:110:15
	movl	-5040(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5040(%rbp)
	.loc	1 110 14 is_stmt 0      # inverse_matrix.c:110:14
	jmp	.LBB2_13
.LBB2_12:                               #   in Loop: Header=BB2_7 Depth=4
.Ltmp68:
	.loc	1 113 18 is_stmt 1      # inverse_matrix.c:113:18
	movl	$0, -5040(%rbp)
	.loc	1 114 17                # inverse_matrix.c:114:17
	movl	-5036(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5036(%rbp)
.Ltmp69:
.LBB2_13:                               #   in Loop: Header=BB2_7 Depth=4
	.loc	1 116 13                # inverse_matrix.c:116:13
	jmp	.LBB2_14
.Ltmp70:
.LBB2_14:                               #   in Loop: Header=BB2_7 Depth=4
	.loc	1 117 9                 # inverse_matrix.c:117:9
	jmp	.LBB2_15
.Ltmp71:
.LBB2_15:                               #   in Loop: Header=BB2_7 Depth=4
	.loc	1 104 27                # inverse_matrix.c:104:27
	movl	-5048(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5048(%rbp)
	.loc	1 104 8 is_stmt 0       # inverse_matrix.c:104:8
	jmp	.LBB2_7
.Ltmp72:
.LBB2_16:                               #   in Loop: Header=BB2_5 Depth=3
	.loc	1 118 7 is_stmt 1       # inverse_matrix.c:118:7
	jmp	.LBB2_17
.Ltmp73:
.LBB2_17:                               #   in Loop: Header=BB2_5 Depth=3
	.loc	1 102 25                # inverse_matrix.c:102:25
	movl	-5044(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5044(%rbp)
	.loc	1 102 6 is_stmt 0       # inverse_matrix.c:102:6
	jmp	.LBB2_5
.Ltmp74:
.LBB2_18:                               #   in Loop: Header=BB2_3 Depth=2
	.loc	1 0 6                   # inverse_matrix.c:0:6
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	.loc	1 119 27 is_stmt 1      # inverse_matrix.c:119:27
	movl	-5032(%rbp), %eax
	.loc	1 119 29 is_stmt 0      # inverse_matrix.c:119:29
	addl	-5028(%rbp), %eax
	.loc	1 119 27                # inverse_matrix.c:119:27
	cvtsi2sd	%eax, %xmm1
	.loc	1 119 19                # inverse_matrix.c:119:19
	callq	pow
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	leaq	-2512(%rbp), %rdi
	.loc	1 119 51                # inverse_matrix.c:119:51
	movss	-12(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	.loc	1 119 53                # inverse_matrix.c:119:53
	subss	%xmm1, %xmm2
	movsd	%xmm0, -5056(%rbp)      # 8-byte Spill
	.loc	1 119 36                # inverse_matrix.c:119:36
	movaps	%xmm2, %xmm0
	callq	determinant
	cvtss2sd	%xmm0, %xmm0
	movsd	-5056(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.loc	1 119 34                # inverse_matrix.c:119:34
	mulsd	%xmm0, %xmm1
	.loc	1 119 19                # inverse_matrix.c:119:19
	cvtsd2ss	%xmm1, %xmm0
	.loc	1 119 7                 # inverse_matrix.c:119:7
	movslq	-5032(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	leaq	-5024(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-5028(%rbp), %rcx
	.loc	1 119 17                # inverse_matrix.c:119:17
	movss	%xmm0, (%rdx,%rcx,4)
.Ltmp75:
# %bb.19:                               #   in Loop: Header=BB2_3 Depth=2
	.loc	1 98 23 is_stmt 1       # inverse_matrix.c:98:23
	movl	-5028(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5028(%rbp)
	.loc	1 98 4 is_stmt 0        # inverse_matrix.c:98:4
	jmp	.LBB2_3
.Ltmp76:
.LBB2_20:                               #   in Loop: Header=BB2_1 Depth=1
	.loc	1 121 3 is_stmt 1       # inverse_matrix.c:121:3
	jmp	.LBB2_21
.Ltmp77:
.LBB2_21:                               #   in Loop: Header=BB2_1 Depth=1
	.loc	1 96 21                 # inverse_matrix.c:96:21
	movl	-5032(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5032(%rbp)
	.loc	1 96 2 is_stmt 0        # inverse_matrix.c:96:2
	jmp	.LBB2_1
.Ltmp78:
.LBB2_22:
	.loc	1 0 2                   # inverse_matrix.c:0:2
	leaq	-5024(%rbp), %rsi
	.loc	1 122 13 is_stmt 1      # inverse_matrix.c:122:13
	movq	-8(%rbp), %rdi
	.loc	1 122 23 is_stmt 0      # inverse_matrix.c:122:23
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	.loc	1 122 3                 # inverse_matrix.c:122:3
	callq	transpose
	.loc	1 123 1 is_stmt 1       # inverse_matrix.c:123:1
	addq	$5056, %rsp             # imm = 0x13C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp79:
.Lfunc_end2:
	.size	cofactor, .Lfunc_end2-cofactor
	.cfi_endproc
                                        # -- End function
	.globl	transpose               # -- Begin function transpose
	.p2align	4, 0x90
	.type	transpose,@function
transpose:                              # @transpose
.Lfunc_begin3:
	.loc	1 126 0                 # inverse_matrix.c:126:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$5056, %rsp             # imm = 0x13C0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
.Ltmp80:
	.loc	1 130 10 prologue_end   # inverse_matrix.c:130:10
	movl	$0, -24(%rbp)
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
.Ltmp81:
	.loc	1 130 14 is_stmt 0      # inverse_matrix.c:130:14
	cvtsi2ssl	-24(%rbp), %xmm0
	.loc	1 130 18                # inverse_matrix.c:130:18
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	.loc	1 130 16                # inverse_matrix.c:130:16
	ucomiss	%xmm0, %xmm1
.Ltmp82:
	.loc	1 130 3                 # inverse_matrix.c:130:3
	jbe	.LBB3_8
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp83:
	.loc	1 132 13 is_stmt 1      # inverse_matrix.c:132:13
	movl	$0, -28(%rbp)
.LBB3_3:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp84:
	.loc	1 132 17 is_stmt 0      # inverse_matrix.c:132:17
	cvtsi2ssl	-28(%rbp), %xmm0
	.loc	1 132 21                # inverse_matrix.c:132:21
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	.loc	1 132 19                # inverse_matrix.c:132:19
	ucomiss	%xmm0, %xmm1
.Ltmp85:
	.loc	1 132 6                 # inverse_matrix.c:132:6
	jbe	.LBB3_6
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=2
.Ltmp86:
	.loc	1 134 20 is_stmt 1      # inverse_matrix.c:134:20
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	.loc	1 134 10 is_stmt 0      # inverse_matrix.c:134:10
	movslq	-24(%rbp), %rax
	imulq	$100, %rax, %rax
	leaq	-2528(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-28(%rbp), %rax
	.loc	1 134 18                # inverse_matrix.c:134:18
	movss	%xmm0, (%rcx,%rax,4)
.Ltmp87:
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=2
	.loc	1 132 25 is_stmt 1      # inverse_matrix.c:132:25
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	1 132 6 is_stmt 0       # inverse_matrix.c:132:6
	jmp	.LBB3_3
.Ltmp88:
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	1 136 5 is_stmt 1       # inverse_matrix.c:136:5
	jmp	.LBB3_7
.Ltmp89:
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	1 130 22                # inverse_matrix.c:130:22
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	1 130 3 is_stmt 0       # inverse_matrix.c:130:3
	jmp	.LBB3_1
.Ltmp90:
.LBB3_8:
	.loc	1 137 19 is_stmt 1      # inverse_matrix.c:137:19
	movq	-8(%rbp), %rdi
	.loc	1 137 24 is_stmt 0      # inverse_matrix.c:137:24
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	.loc	1 137 7                 # inverse_matrix.c:137:7
	callq	determinant
	.loc	1 137 5                 # inverse_matrix.c:137:5
	movss	%xmm0, -5044(%rbp)
.Ltmp91:
	.loc	1 138 10 is_stmt 1      # inverse_matrix.c:138:10
	movl	$0, -24(%rbp)
.LBB3_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
.Ltmp92:
	.loc	1 138 14 is_stmt 0      # inverse_matrix.c:138:14
	cvtsi2ssl	-24(%rbp), %xmm0
	.loc	1 138 18                # inverse_matrix.c:138:18
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	.loc	1 138 16                # inverse_matrix.c:138:16
	ucomiss	%xmm0, %xmm1
.Ltmp93:
	.loc	1 138 3                 # inverse_matrix.c:138:3
	jbe	.LBB3_16
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=1
.Ltmp94:
	.loc	1 140 13 is_stmt 1      # inverse_matrix.c:140:13
	movl	$0, -28(%rbp)
.LBB3_11:                               #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp95:
	.loc	1 140 17 is_stmt 0      # inverse_matrix.c:140:17
	cvtsi2ssl	-28(%rbp), %xmm0
	.loc	1 140 21                # inverse_matrix.c:140:21
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	.loc	1 140 19                # inverse_matrix.c:140:19
	ucomiss	%xmm0, %xmm1
.Ltmp96:
	.loc	1 140 6                 # inverse_matrix.c:140:6
	jbe	.LBB3_14
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=2
.Ltmp97:
	.loc	1 142 25 is_stmt 1      # inverse_matrix.c:142:25
	movslq	-24(%rbp), %rax
	imulq	$100, %rax, %rax
	leaq	-2528(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-28(%rbp), %rax
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	.loc	1 142 33 is_stmt 0      # inverse_matrix.c:142:33
	divss	-5044(%rbp), %xmm0
	.loc	1 142 9                 # inverse_matrix.c:142:9
	movslq	-24(%rbp), %rax
	imulq	$100, %rax, %rax
	leaq	-5040(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-28(%rbp), %rax
	.loc	1 142 23                # inverse_matrix.c:142:23
	movss	%xmm0, (%rcx,%rax,4)
.Ltmp98:
# %bb.13:                               #   in Loop: Header=BB3_11 Depth=2
	.loc	1 140 25 is_stmt 1      # inverse_matrix.c:140:25
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	1 140 6 is_stmt 0       # inverse_matrix.c:140:6
	jmp	.LBB3_11
.Ltmp99:
.LBB3_14:                               #   in Loop: Header=BB3_9 Depth=1
	.loc	1 144 5 is_stmt 1       # inverse_matrix.c:144:5
	jmp	.LBB3_15
.Ltmp100:
.LBB3_15:                               #   in Loop: Header=BB3_9 Depth=1
	.loc	1 138 22                # inverse_matrix.c:138:22
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	1 138 3 is_stmt 0       # inverse_matrix.c:138:3
	jmp	.LBB3_9
.Ltmp101:
.LBB3_16:
	.loc	1 145 4 is_stmt 1       # inverse_matrix.c:145:4
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
.Ltmp102:
	.loc	1 147 11                # inverse_matrix.c:147:11
	movl	$0, -24(%rbp)
.LBB3_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_19 Depth 2
.Ltmp103:
	.loc	1 147 15 is_stmt 0      # inverse_matrix.c:147:15
	cvtsi2ssl	-24(%rbp), %xmm0
	.loc	1 147 19                # inverse_matrix.c:147:19
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	.loc	1 147 17                # inverse_matrix.c:147:17
	ucomiss	%xmm0, %xmm1
.Ltmp104:
	.loc	1 147 4                 # inverse_matrix.c:147:4
	jbe	.LBB3_24
# %bb.18:                               #   in Loop: Header=BB3_17 Depth=1
.Ltmp105:
	.loc	1 149 13 is_stmt 1      # inverse_matrix.c:149:13
	movl	$0, -28(%rbp)
.LBB3_19:                               #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp106:
	.loc	1 149 17 is_stmt 0      # inverse_matrix.c:149:17
	cvtsi2ssl	-28(%rbp), %xmm0
	.loc	1 149 21                # inverse_matrix.c:149:21
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	.loc	1 149 19                # inverse_matrix.c:149:19
	ucomiss	%xmm0, %xmm1
.Ltmp107:
	.loc	1 149 6                 # inverse_matrix.c:149:6
	jbe	.LBB3_22
# %bb.20:                               #   in Loop: Header=BB3_19 Depth=2
.Ltmp108:
	.loc	1 151 25 is_stmt 1      # inverse_matrix.c:151:25
	movslq	-24(%rbp), %rax
	imulq	$100, %rax, %rax
	leaq	-5040(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-28(%rbp), %rax
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	.loc	1 151 10 is_stmt 0      # inverse_matrix.c:151:10
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
.Ltmp109:
# %bb.21:                               #   in Loop: Header=BB3_19 Depth=2
	.loc	1 149 25 is_stmt 1      # inverse_matrix.c:149:25
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	1 149 6 is_stmt 0       # inverse_matrix.c:149:6
	jmp	.LBB3_19
.Ltmp110:
.LBB3_22:                               #   in Loop: Header=BB3_17 Depth=1
	.loc	1 153 5 is_stmt 1       # inverse_matrix.c:153:5
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
.Ltmp111:
# %bb.23:                               #   in Loop: Header=BB3_17 Depth=1
	.loc	1 147 23                # inverse_matrix.c:147:23
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	1 147 4 is_stmt 0       # inverse_matrix.c:147:4
	jmp	.LBB3_17
.Ltmp112:
.LBB3_24:
	.loc	1 155 1 is_stmt 1       # inverse_matrix.c:155:1
	addq	$5056, %rsp             # imm = 0x13C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp113:
.Lfunc_end3:
	.size	transpose, .Lfunc_end3-transpose
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Enter the order of the Matrix : "
	.size	.L.str, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"\nInverse of Entered Matrix is not possible\n"
	.size	.L.str.1, 44

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\n\n\nThe inverse of matrix is : \n"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\t%f"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 9.0.0-2~ubuntu18.04.2 (tags/RELEASE_900/final)" # string offset=0
.Linfo_string1:
	.asciz	"inverse_matrix.c"      # string offset=61
.Linfo_string2:
	.asciz	"/home/tianaoge/Documents/myWorkspace/mao/profiling/assemble" # string offset=78
.Linfo_string3:
	.asciz	"unsigned int"          # string offset=138
.Linfo_string4:
	.asciz	"main"                  # string offset=151
.Linfo_string5:
	.asciz	"int"                   # string offset=156
.Linfo_string6:
	.asciz	"determinant"           # string offset=160
.Linfo_string7:
	.asciz	"float"                 # string offset=172
.Linfo_string8:
	.asciz	"cofactor"              # string offset=178
.Linfo_string9:
	.asciz	"transpose"             # string offset=187
.Linfo_string10:
	.asciz	"argc"                  # string offset=197
.Linfo_string11:
	.asciz	"argv"                  # string offset=202
.Linfo_string12:
	.asciz	"char"                  # string offset=207
.Linfo_string13:
	.asciz	"a"                     # string offset=212
.Linfo_string14:
	.asciz	"__ARRAY_SIZE_TYPE__"   # string offset=214
.Linfo_string15:
	.asciz	"d"                     # string offset=234
.Linfo_string16:
	.asciz	"i"                     # string offset=236
.Linfo_string17:
	.asciz	"j"                     # string offset=238
.Linfo_string18:
	.asciz	"k"                     # string offset=240
.Linfo_string19:
	.asciz	"s"                     # string offset=242
.Linfo_string20:
	.asciz	"det"                   # string offset=244
.Linfo_string21:
	.asciz	"b"                     # string offset=248
.Linfo_string22:
	.asciz	"m"                     # string offset=250
.Linfo_string23:
	.asciz	"n"                     # string offset=252
.Linfo_string24:
	.asciz	"c"                     # string offset=254
.Linfo_string25:
	.asciz	"num"                   # string offset=256
.Linfo_string26:
	.asciz	"f"                     # string offset=260
.Linfo_string27:
	.asciz	"fac"                   # string offset=262
.Linfo_string28:
	.asciz	"p"                     # string offset=266
.Linfo_string29:
	.asciz	"q"                     # string offset=268
.Linfo_string30:
	.asciz	"r"                     # string offset=270
.Linfo_string31:
	.asciz	"inverse"               # string offset=272
	.section	.debug_abbrev,"",@progbits
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	55                      # DW_AT_count
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                       # DWARF version number
	.long	.debug_abbrev           # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x2d0 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x7 DW_TAG_base_type
	.long	.Linfo_string3          # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x31:0x81 DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	657                     # DW_AT_type
                                        # DW_AT_external
	.byte	4                       # Abbrev [4] 0x4a:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x58:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.long	671                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x66:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\240l"
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.long	688                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x75:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\234l"
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.long	664                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x84:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\230l"
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x93:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\224l"
	.long	.Linfo_string17         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xa2:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\220l"
	.long	.Linfo_string18         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0xb2:0xac DW_TAG_subprogram
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	664                     # DW_AT_type
                                        # DW_AT_external
	.byte	4                       # Abbrev [4] 0xcb:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.long	713                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0xd9:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string18         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.long	664                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xe7:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string19         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	664                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xf5:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string20         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	664                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x103:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\240l"
	.long	.Linfo_string21         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	688                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x112:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\234l"
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x121:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\230l"
	.long	.Linfo_string17         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x130:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\224l"
	.long	.Linfo_string22         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x13f:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\220l"
	.long	.Linfo_string23         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x14e:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\214l"
	.long	.Linfo_string24         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x15e:0xaa DW_TAG_subprogram
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	92                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                       # Abbrev [4] 0x173:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string25         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	92                      # DW_AT_decl_line
	.long	713                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x181:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string26         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	92                      # DW_AT_decl_line
	.long	664                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x18f:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\260l"
	.long	.Linfo_string21         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	94                      # DW_AT_decl_line
	.long	688                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x19e:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\340X"
	.long	.Linfo_string27         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	94                      # DW_AT_decl_line
	.long	688                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x1ad:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\334X"
	.long	.Linfo_string28         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x1bc:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\330X"
	.long	.Linfo_string29         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x1cb:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\324X"
	.long	.Linfo_string22         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x1da:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\320X"
	.long	.Linfo_string23         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x1e9:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\314X"
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x1f8:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\310X"
	.long	.Linfo_string17         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x208:0x89 DW_TAG_subprogram
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                       # Abbrev [4] 0x21d:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string25         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.long	713                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x22b:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string27         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.long	713                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x239:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string30         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.long	664                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x247:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	127                     # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x255:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string17         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	127                     # DW_AT_decl_line
	.long	657                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x263:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\240l"
	.long	.Linfo_string21         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	128                     # DW_AT_decl_line
	.long	688                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x272:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\320X"
	.long	.Linfo_string31         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	128                     # DW_AT_decl_line
	.long	688                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x281:0xf DW_TAG_variable
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\314X"
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	128                     # DW_AT_decl_line
	.long	664                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0x291:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	2                       # Abbrev [2] 0x298:0x7 DW_TAG_base_type
	.long	.Linfo_string7          # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	7                       # Abbrev [7] 0x29f:0x5 DW_TAG_pointer_type
	.long	676                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x2a4:0x5 DW_TAG_pointer_type
	.long	681                     # DW_AT_type
	.byte	2                       # Abbrev [2] 0x2a9:0x7 DW_TAG_base_type
	.long	.Linfo_string12         # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	8                       # Abbrev [8] 0x2b0:0x12 DW_TAG_array_type
	.long	664                     # DW_AT_type
	.byte	9                       # Abbrev [9] 0x2b5:0x6 DW_TAG_subrange_type
	.long	706                     # DW_AT_type
	.byte	25                      # DW_AT_count
	.byte	9                       # Abbrev [9] 0x2bb:0x6 DW_TAG_subrange_type
	.long	706                     # DW_AT_type
	.byte	25                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x2c2:0x7 DW_TAG_base_type
	.long	.Linfo_string14         # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	7                       # Abbrev [7] 0x2c9:0x5 DW_TAG_pointer_type
	.long	718                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2ce:0xc DW_TAG_array_type
	.long	664                     # DW_AT_type
	.byte	9                       # Abbrev [9] 0x2d3:0x6 DW_TAG_subrange_type
	.long	706                     # DW_AT_type
	.byte	25                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_macinfo,"",@progbits
	.byte	0                       # End Of Macro List Mark

	.ident	"clang version 9.0.0-2~ubuntu18.04.2 (tags/RELEASE_900/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym atoi
	.addrsig_sym srand
	.addrsig_sym time
	.addrsig_sym rand
	.addrsig_sym determinant
	.addrsig_sym cofactor
	.addrsig_sym pow
	.addrsig_sym transpose
	.section	.debug_line,"",@progbits
.Lline_table_start0:
