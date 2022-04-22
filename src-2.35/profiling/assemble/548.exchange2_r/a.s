	.arch armv8-a
	.file	"exchange2.F90"
	.text
	.global	__logic_MOD_clear_out
	.bss
	.align	2
	.type	__logic_MOD_clear_out, %object
	.size	__logic_MOD_clear_out, 4
__logic_MOD_clear_out:
	.zero	4
	.global	__logic_MOD_fiendish
	.align	2
	.type	__logic_MOD_fiendish, %object
	.size	__logic_MOD_fiendish, 4
__logic_MOD_fiendish:
	.zero	4
	.global	__logic_MOD_four
	.align	2
	.type	__logic_MOD_four, %object
	.size	__logic_MOD_four, 4
__logic_MOD_four:
	.zero	4
	.global	__logic_MOD_naked3
	.align	2
	.type	__logic_MOD_naked3, %object
	.size	__logic_MOD_naked3, 4
__logic_MOD_naked3:
	.zero	4
	.global	__logic_MOD_three_in_a_bed
	.align	2
	.type	__logic_MOD_three_in_a_bed, %object
	.size	__logic_MOD_three_in_a_bed, 4
__logic_MOD_three_in_a_bed:
	.zero	4
	.global	__logic_MOD_to_do
	.align	2
	.type	__logic_MOD_to_do, %object
	.size	__logic_MOD_to_do, 4
__logic_MOD_to_do:
	.zero	4
	.global	__logic_MOD_two_in_a_bed
	.align	3
	.type	__logic_MOD_two_in_a_bed, %object
	.size	__logic_MOD_two_in_a_bed, 8
__logic_MOD_two_in_a_bed:
	.zero	8
	.text
	.align	2
	.type	hidden_triplets.2828, %function
hidden_triplets.2828:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	mov	x0, x18
	str	x18, [sp, 8]
	mov	w1, 1
	str	w1, [x0, 124]
.L94:
	ldr	w1, [x0, 124]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L300
	mov	w2, 0
	ldr	x5, [x0, 112]
	ldr	x3, [x0, 104]
	ldr	w1, [x0, 124]
	sxtw	x6, w1
	ldr	x4, [x0, 96]
	ldr	x1, [x0, 88]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L5:
	cmp	x1, x3
	bgt	.L3
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 80]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L4
	add	w2, w2, 1
.L4:
	add	x1, x1, 1
	b	.L5
.L3:
	cmp	w2, 3
	beq	.L301
	mov	w1, 1
	str	w1, [sp, 168]
.L93:
	ldr	w1, [sp, 168]
	cmp	w1, 7
	cset	w1, gt
	cmp	w1, 0
	bne	.L301
	ldrsw	x1, [sp, 168]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L302
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	w1, [x0, 124]
	sxtw	x7, w1
	ldrsw	x6, [sp, 168]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L10:
	cmp	x1, x3
	bgt	.L8
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L9
	add	w2, w2, 1
.L9:
	add	x1, x1, 1
	b	.L10
.L8:
	cmp	w2, 1
	ble	.L302
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	w1, [x0, 124]
	sxtw	x7, w1
	ldrsw	x6, [sp, 168]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L13:
	cmp	x1, x3
	bgt	.L11
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L12
	add	w2, w2, 1
.L12:
	add	x1, x1, 1
	b	.L13
.L11:
	cmp	w2, 3
	bgt	.L302
	ldr	w1, [sp, 168]
	add	w1, w1, 1
	str	w1, [sp, 164]
.L92:
	ldr	w1, [sp, 164]
	cmp	w1, 8
	cset	w1, gt
	cmp	w1, 0
	bne	.L302
	ldrsw	x1, [sp, 164]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L303
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	w1, [x0, 124]
	sxtw	x7, w1
	ldrsw	x6, [sp, 164]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L17:
	cmp	x1, x3
	bgt	.L15
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L16
	add	w2, w2, 1
.L16:
	add	x1, x1, 1
	b	.L17
.L15:
	cmp	w2, 1
	ble	.L303
	mov	w2, 1
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x10, w1
	ldrsw	x6, [sp, 168]
	ldr	w1, [x0, 124]
	sxtw	x9, w1
	ldrsw	x8, [sp, 164]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L20:
	cmp	x1, x3
	bgt	.L18
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L19
	mov	w2, 0
	b	.L18
.L19:
	add	x1, x1, 1
	b	.L20
.L18:
	cmp	w2, 0
	bne	.L303
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	w1, [x0, 124]
	sxtw	x7, w1
	ldrsw	x6, [sp, 164]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L23:
	cmp	x1, x3
	bgt	.L21
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L22
	add	w2, w2, 1
.L22:
	add	x1, x1, 1
	b	.L23
.L21:
	cmp	w2, 3
	bgt	.L303
	ldr	w1, [sp, 164]
	add	w1, w1, 1
	str	w1, [sp, 160]
.L91:
	ldr	w1, [sp, 160]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L303
	ldrsw	x1, [sp, 160]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L304
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	w1, [x0, 124]
	sxtw	x7, w1
	ldrsw	x6, [sp, 160]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L27:
	cmp	x1, x3
	bgt	.L25
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L26
	add	w2, w2, 1
.L26:
	add	x1, x1, 1
	b	.L27
.L25:
	cmp	w2, 1
	ble	.L304
	mov	w2, 1
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x10, w1
	ldrsw	x6, [sp, 168]
	ldr	w1, [x0, 124]
	sxtw	x9, w1
	ldrsw	x8, [sp, 160]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L30:
	cmp	x1, x3
	bgt	.L28
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L29
	mov	w2, 0
	b	.L28
.L29:
	add	x1, x1, 1
	b	.L30
.L28:
	cmp	w2, 0
	bne	.L304
	mov	w2, 1
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x10, w1
	ldrsw	x6, [sp, 164]
	ldr	w1, [x0, 124]
	sxtw	x9, w1
	ldrsw	x8, [sp, 160]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L33:
	cmp	x1, x3
	bgt	.L31
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L32
	mov	w2, 0
	b	.L31
.L32:
	add	x1, x1, 1
	b	.L33
.L31:
	cmp	w2, 0
	bne	.L304
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	w1, [x0, 124]
	sxtw	x7, w1
	ldrsw	x6, [sp, 160]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L36:
	cmp	x1, x3
	bgt	.L34
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L35
	add	w2, w2, 1
.L35:
	add	x1, x1, 1
	b	.L36
.L34:
	cmp	w2, 3
	bgt	.L304
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldr	x9, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x13, w1
	ldrsw	x6, [sp, 168]
	ldr	w1, [x0, 124]
	sxtw	x12, w1
	ldrsw	x8, [sp, 164]
	ldr	w1, [x0, 124]
	sxtw	x11, w1
	ldrsw	x10, [sp, 160]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x13, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x12, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	ldr	x8, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x11, x1
	add	x9, x9, x1
	ldr	x1, [x0, 40]
	mul	x1, x10, x1
	add	x9, x9, x1
	mov	x1, 1
.L39:
	cmp	x1, x3
	bgt	.L37
	mul	x10, x1, x4
	add	x11, x5, x10
	ldr	x10, [x0, 32]
	ldr	w11, [x10, x11, lsl 2]
	mul	x10, x1, x6
	add	x12, x7, x10
	ldr	x10, [x0, 32]
	ldr	w10, [x10, x12, lsl 2]
	add	w11, w11, w10
	mul	x10, x1, x8
	add	x12, x9, x10
	ldr	x10, [x0, 32]
	ldr	w10, [x10, x12, lsl 2]
	add	w10, w11, w10
	cmp	w10, 0
	beq	.L38
	add	w2, w2, 1
.L38:
	add	x1, x1, 1
	b	.L39
.L37:
	cmp	w2, 3
	bne	.L305
	ldr	x2, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x4, w1
	ldrsw	x3, [sp, 168]
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L42:
	cmp	x1, 9
	bgt	.L41
	mul	x2, x1, x6
	add	x4, x5, x2
	sub	x2, x1, #1
	ldr	x3, [x0, 32]
	ldr	w4, [x3, x4, lsl 2]
	lsl	x2, x2, 2
	add	x3, sp, 24
	str	w4, [x3, x2]
	add	x1, x1, 1
	b	.L42
.L41:
	ldr	x2, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x4, w1
	ldrsw	x3, [sp, 164]
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L44:
	cmp	x1, 9
	bgt	.L43
	mul	x2, x1, x6
	add	x4, x5, x2
	add	x2, x1, 8
	ldr	x3, [x0, 32]
	ldr	w4, [x3, x4, lsl 2]
	lsl	x2, x2, 2
	add	x3, sp, 24
	str	w4, [x3, x2]
	add	x1, x1, 1
	b	.L44
.L43:
	ldr	x2, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x4, w1
	ldrsw	x3, [sp, 160]
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L46:
	cmp	x1, 9
	bgt	.L45
	mul	x2, x1, x6
	add	x4, x5, x2
	add	x2, x1, 17
	ldr	x3, [x0, 32]
	ldr	w4, [x3, x4, lsl 2]
	lsl	x2, x2, 2
	add	x3, sp, 24
	str	w4, [x3, x2]
	add	x1, x1, 1
	b	.L46
.L45:
	mov	w3, -2147483648
	ldr	x6, [x0, 72]
	ldr	x4, [x0, 64]
	ldr	x8, [x0, 72]
	ldr	x10, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x14, w1
	ldrsw	x7, [sp, 168]
	ldr	w1, [x0, 124]
	sxtw	x13, w1
	ldrsw	x9, [sp, 164]
	ldr	w1, [x0, 124]
	sxtw	x12, w1
	ldrsw	x11, [sp, 160]
	cmp	x4, 0
	ble	.L47
	mov	x2, 1
	b	.L48
.L47:
	mov	x2, 0
.L48:
	mov	x15, 0
	ldr	x5, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x14, x1
	add	x6, x6, x1
	ldr	x1, [x0, 40]
	mul	x1, x7, x1
	add	x6, x6, x1
	ldr	x7, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x13, x1
	add	x8, x8, x1
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x8, x8, x1
	ldr	x9, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x12, x1
	add	x10, x10, x1
	ldr	x1, [x0, 40]
	mul	x1, x11, x1
	add	x10, x10, x1
	mov	x1, 1
.L51:
	cmp	x1, x4
	bgt	.L49
	mul	x11, x1, x5
	add	x12, x6, x11
	ldr	x11, [x0, 32]
	ldr	w12, [x11, x12, lsl 2]
	mul	x11, x1, x7
	add	x13, x8, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w12, w12, w11
	mul	x11, x1, x9
	add	x13, x10, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w11, w12, w11
	cmp	w3, w11
	cset	w11, lt
	cmp	w11, 0
	beq	.L50
	mul	x2, x1, x5
	add	x3, x6, x2
	ldr	x2, [x0, 32]
	ldr	w3, [x2, x3, lsl 2]
	mul	x2, x1, x7
	add	x11, x8, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	mul	x2, x1, x9
	add	x11, x10, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	add	x2, x1, x15
.L50:
	add	x1, x1, 1
	b	.L51
.L49:
	mov	w1, w2
	str	w1, [sp, 148]
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 24]
	ldr	w1, [x0, 124]
	sxtw	x8, w1
	ldrsw	x7, [sp, 148]
	ldr	w4, [sp, 148]
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L54:
	cmp	x1, x3
	bgt	.L52
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L53
	add	w2, w2, 1
.L53:
	add	x1, x1, 1
	b	.L54
.L52:
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	ldr	w1, [x1]
	add	w2, w2, w1
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 24]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x10, w1
	ldrsw	x6, [sp, 148]
	ldr	w1, [x0, 124]
	sxtw	x9, w1
	ldrsw	x8, [sp, 148]
	ldr	w3, [sp, 148]
	ldr	x4, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L57:
	cmp	x1, x2
	bgt	.L55
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L56
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L56:
	add	x1, x1, 1
	b	.L57
.L55:
	mov	w3, -2147483648
	ldr	x6, [x0, 72]
	ldr	x4, [x0, 64]
	ldr	x8, [x0, 72]
	ldr	x10, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x14, w1
	ldrsw	x7, [sp, 168]
	ldr	w1, [x0, 124]
	sxtw	x13, w1
	ldrsw	x9, [sp, 164]
	ldr	w1, [x0, 124]
	sxtw	x12, w1
	ldrsw	x11, [sp, 160]
	cmp	x4, 0
	ble	.L58
	mov	x2, 1
	b	.L59
.L58:
	mov	x2, 0
.L59:
	mov	x15, 0
	ldr	x5, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x14, x1
	add	x6, x6, x1
	ldr	x1, [x0, 40]
	mul	x1, x7, x1
	add	x6, x6, x1
	ldr	x7, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x13, x1
	add	x8, x8, x1
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x8, x8, x1
	ldr	x9, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x12, x1
	add	x10, x10, x1
	ldr	x1, [x0, 40]
	mul	x1, x11, x1
	add	x10, x10, x1
	mov	x1, 1
.L62:
	cmp	x1, x4
	bgt	.L60
	mul	x11, x1, x5
	add	x12, x6, x11
	ldr	x11, [x0, 32]
	ldr	w12, [x11, x12, lsl 2]
	mul	x11, x1, x7
	add	x13, x8, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w12, w12, w11
	mul	x11, x1, x9
	add	x13, x10, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w11, w12, w11
	cmp	w3, w11
	cset	w11, lt
	cmp	w11, 0
	beq	.L61
	mul	x2, x1, x5
	add	x3, x6, x2
	ldr	x2, [x0, 32]
	ldr	w3, [x2, x3, lsl 2]
	mul	x2, x1, x7
	add	x11, x8, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	mul	x2, x1, x9
	add	x11, x10, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	add	x2, x1, x15
.L61:
	add	x1, x1, 1
	b	.L62
.L60:
	mov	w1, w2
	str	w1, [sp, 144]
	mov	w4, 0
	ldr	x6, [x0, 72]
	ldr	x2, [x0, 24]
	ldr	w1, [x0, 124]
	sxtw	x8, w1
	ldrsw	x7, [sp, 144]
	ldr	w3, [sp, 144]
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L65:
	cmp	x1, x2
	bgt	.L63
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w3, w7
	bne	.L64
	add	w4, w4, 1
.L64:
	add	x1, x1, 1
	b	.L65
.L63:
	mov	w3, 0
	mov	x1, 1
.L70:
	cmp	x1, 3
	bgt	.L66
	mov	x2, x1
	lsl	x2, x2, 3
	add	x2, x2, x1
	sub	x5, x2, #10
	mov	x2, 1
.L69:
	cmp	x2, 9
	bgt	.L67
	add	x6, x2, x5
	lsl	x6, x6, 2
	add	x7, sp, 24
	ldr	w6, [x7, x6]
	cmp	w6, 0
	beq	.L68
	add	w3, w3, 1
.L68:
	add	x2, x2, 1
	b	.L69
.L67:
	add	x1, x1, 1
	b	.L70
.L66:
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	ldr	w1, [x1]
	add	w1, w4, w1
	sub	w2, w1, w3
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 24]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x10, w1
	ldrsw	x6, [sp, 144]
	ldr	w1, [x0, 124]
	sxtw	x9, w1
	ldrsw	x8, [sp, 144]
	ldr	w3, [sp, 144]
	ldr	x4, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L73:
	cmp	x1, x2
	bgt	.L71
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L72
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L72:
	add	x1, x1, 1
	b	.L73
.L71:
	mov	w3, -2147483648
	ldr	x6, [x0, 72]
	ldr	x4, [x0, 64]
	ldr	x8, [x0, 72]
	ldr	x10, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x14, w1
	ldrsw	x7, [sp, 168]
	ldr	w1, [x0, 124]
	sxtw	x13, w1
	ldrsw	x9, [sp, 164]
	ldr	w1, [x0, 124]
	sxtw	x12, w1
	ldrsw	x11, [sp, 160]
	cmp	x4, 0
	ble	.L74
	mov	x2, 1
	b	.L75
.L74:
	mov	x2, 0
.L75:
	mov	x15, 0
	ldr	x5, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x14, x1
	add	x6, x6, x1
	ldr	x1, [x0, 40]
	mul	x1, x7, x1
	add	x6, x6, x1
	ldr	x7, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x13, x1
	add	x8, x8, x1
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x8, x8, x1
	ldr	x9, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x12, x1
	add	x10, x10, x1
	ldr	x1, [x0, 40]
	mul	x1, x11, x1
	add	x10, x10, x1
	mov	x1, 1
.L78:
	cmp	x1, x4
	bgt	.L76
	mul	x11, x1, x5
	add	x12, x6, x11
	ldr	x11, [x0, 32]
	ldr	w12, [x11, x12, lsl 2]
	mul	x11, x1, x7
	add	x13, x8, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w12, w12, w11
	mul	x11, x1, x9
	add	x13, x10, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w11, w12, w11
	cmp	w3, w11
	cset	w11, lt
	cmp	w11, 0
	beq	.L77
	mul	x2, x1, x5
	add	x3, x6, x2
	ldr	x2, [x0, 32]
	ldr	w3, [x2, x3, lsl 2]
	mul	x2, x1, x7
	add	x11, x8, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	mul	x2, x1, x9
	add	x11, x10, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	add	x2, x1, x15
.L77:
	add	x1, x1, 1
	b	.L78
.L76:
	mov	w1, w2
	str	w1, [sp, 140]
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 24]
	ldr	w1, [x0, 124]
	sxtw	x8, w1
	ldrsw	x7, [sp, 140]
	ldr	w4, [sp, 140]
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L81:
	cmp	x1, x3
	bgt	.L79
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L80
	add	w2, w2, 1
.L80:
	add	x1, x1, 1
	b	.L81
.L79:
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	ldr	w1, [x1]
	add	w2, w2, w1
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 24]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x10, w1
	ldrsw	x6, [sp, 140]
	ldr	w1, [x0, 124]
	sxtw	x9, w1
	ldrsw	x8, [sp, 140]
	ldr	w3, [sp, 140]
	ldr	x4, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L84:
	cmp	x1, x2
	bgt	.L82
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L83
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L83:
	add	x1, x1, 1
	b	.L84
.L82:
	ldr	x2, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x4, w1
	ldrsw	x3, [sp, 168]
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L86:
	cmp	x1, 9
	bgt	.L85
	sub	x2, x1, #1
	mul	x3, x1, x6
	add	x3, x5, x3
	lsl	x2, x2, 2
	add	x4, sp, 24
	ldr	w4, [x4, x2]
	ldr	x2, [x0, 32]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L86
.L85:
	ldr	x2, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x4, w1
	ldrsw	x3, [sp, 164]
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L88:
	cmp	x1, 9
	bgt	.L87
	add	x2, x1, 8
	mul	x3, x1, x6
	add	x3, x5, x3
	lsl	x2, x2, 2
	add	x4, sp, 24
	ldr	w4, [x4, x2]
	ldr	x2, [x0, 32]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L88
.L87:
	ldr	x2, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x4, w1
	ldrsw	x3, [sp, 160]
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L90:
	cmp	x1, 9
	bgt	.L89
	add	x2, x1, 17
	mul	x3, x1, x6
	add	x3, x5, x3
	lsl	x2, x2, 2
	add	x4, sp, 24
	ldr	w4, [x4, x2]
	ldr	x2, [x0, 32]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L90
.L89:
	b	.L14
.L304:
	nop
	b	.L24
.L305:
	nop
.L24:
	ldr	w1, [sp, 160]
	add	w1, w1, 1
	str	w1, [sp, 160]
	b	.L91
.L303:
	nop
.L14:
	ldr	w1, [sp, 164]
	add	w1, w1, 1
	str	w1, [sp, 164]
	b	.L92
.L302:
	nop
	ldr	w1, [sp, 168]
	add	w1, w1, 1
	str	w1, [sp, 168]
	b	.L93
.L301:
	nop
	ldr	w1, [x0, 124]
	add	w1, w1, 1
	str	w1, [x0, 124]
	b	.L94
.L300:
	nop
	mov	w1, 1
	str	w1, [x0, 120]
.L187:
	ldr	w1, [x0, 120]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L306
	mov	w2, 0
	ldr	x5, [x0, 112]
	ldr	x3, [x0, 16]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldr	x4, [x0, 88]
	ldr	x1, [x0, 96]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L98:
	cmp	x1, x3
	bgt	.L96
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 80]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L97
	add	w2, w2, 1
.L97:
	add	x1, x1, 1
	b	.L98
.L96:
	cmp	w2, 3
	beq	.L307
	mov	w1, 1
	str	w1, [sp, 156]
.L186:
	ldr	w1, [sp, 156]
	cmp	w1, 7
	cset	w1, gt
	cmp	w1, 0
	bne	.L307
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 156]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L308
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 156]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L103:
	cmp	x1, x3
	bgt	.L101
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L102
	add	w2, w2, 1
.L102:
	add	x1, x1, 1
	b	.L103
.L101:
	cmp	w2, 1
	ble	.L308
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 156]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L106:
	cmp	x1, x3
	bgt	.L104
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L105
	add	w2, w2, 1
.L105:
	add	x1, x1, 1
	b	.L106
.L104:
	cmp	w2, 3
	bgt	.L308
	ldr	w1, [sp, 156]
	add	w1, w1, 1
	str	w1, [sp, 152]
.L185:
	ldr	w1, [sp, 152]
	cmp	w1, 8
	cset	w1, gt
	cmp	w1, 0
	bne	.L308
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 152]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L309
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 152]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L110:
	cmp	x1, x3
	bgt	.L108
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L109
	add	w2, w2, 1
.L109:
	add	x1, x1, 1
	b	.L110
.L108:
	cmp	w2, 1
	ble	.L309
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 152]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L113:
	cmp	x1, x3
	bgt	.L111
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L112
	add	w2, w2, 1
.L112:
	add	x1, x1, 1
	b	.L113
.L111:
	cmp	w2, 3
	bgt	.L309
	mov	w2, 1
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 156]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldrsw	x9, [sp, 152]
	ldr	w1, [x0, 120]
	sxtw	x8, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L116:
	cmp	x1, x3
	bgt	.L114
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L115
	mov	w2, 0
	b	.L114
.L115:
	add	x1, x1, 1
	b	.L116
.L114:
	cmp	w2, 0
	bne	.L309
	ldr	w1, [sp, 152]
	add	w1, w1, 1
	str	w1, [sp, 172]
.L184:
	ldr	w1, [sp, 172]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L309
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 172]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L310
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 172]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L120:
	cmp	x1, x3
	bgt	.L118
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L119
	add	w2, w2, 1
.L119:
	add	x1, x1, 1
	b	.L120
.L118:
	cmp	w2, 1
	ble	.L310
	mov	w2, 1
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 172]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldrsw	x9, [sp, 156]
	ldr	w1, [x0, 120]
	sxtw	x8, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L123:
	cmp	x1, x3
	bgt	.L121
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L122
	mov	w2, 0
	b	.L121
.L122:
	add	x1, x1, 1
	b	.L123
.L121:
	cmp	w2, 0
	bne	.L310
	mov	w2, 1
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 172]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldrsw	x9, [sp, 152]
	ldr	w1, [x0, 120]
	sxtw	x8, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L126:
	cmp	x1, x3
	bgt	.L124
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L125
	mov	w2, 0
	b	.L124
.L125:
	add	x1, x1, 1
	b	.L126
.L124:
	cmp	w2, 0
	bne	.L310
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 172]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L129:
	cmp	x1, x3
	bgt	.L127
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L128
	add	w2, w2, 1
.L128:
	add	x1, x1, 1
	b	.L129
.L127:
	cmp	w2, 3
	bgt	.L310
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldr	x9, [x0, 72]
	ldrsw	x13, [sp, 156]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldrsw	x12, [sp, 152]
	ldr	w1, [x0, 120]
	sxtw	x8, w1
	ldrsw	x11, [sp, 172]
	ldr	w1, [x0, 120]
	sxtw	x10, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x13, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x12, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	ldr	x8, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x11, x1
	add	x9, x9, x1
	ldr	x1, [x0, 40]
	mul	x1, x10, x1
	add	x9, x9, x1
	mov	x1, 1
.L132:
	cmp	x1, x3
	bgt	.L130
	mul	x10, x1, x4
	add	x11, x5, x10
	ldr	x10, [x0, 32]
	ldr	w11, [x10, x11, lsl 2]
	mul	x10, x1, x6
	add	x12, x7, x10
	ldr	x10, [x0, 32]
	ldr	w10, [x10, x12, lsl 2]
	add	w11, w11, w10
	mul	x10, x1, x8
	add	x12, x9, x10
	ldr	x10, [x0, 32]
	ldr	w10, [x10, x12, lsl 2]
	add	w10, w11, w10
	cmp	w10, 0
	beq	.L131
	add	w2, w2, 1
.L131:
	add	x1, x1, 1
	b	.L132
.L130:
	cmp	w2, 3
	bne	.L311
	ldr	x2, [x0, 72]
	ldrsw	x4, [sp, 156]
	ldr	w1, [x0, 120]
	sxtw	x3, w1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L135:
	cmp	x1, 9
	bgt	.L134
	mul	x2, x1, x6
	add	x4, x5, x2
	sub	x2, x1, #1
	ldr	x3, [x0, 32]
	ldr	w4, [x3, x4, lsl 2]
	lsl	x2, x2, 2
	add	x3, sp, 24
	str	w4, [x3, x2]
	add	x1, x1, 1
	b	.L135
.L134:
	ldr	x2, [x0, 72]
	ldrsw	x4, [sp, 152]
	ldr	w1, [x0, 120]
	sxtw	x3, w1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L137:
	cmp	x1, 9
	bgt	.L136
	mul	x2, x1, x6
	add	x4, x5, x2
	add	x2, x1, 8
	ldr	x3, [x0, 32]
	ldr	w4, [x3, x4, lsl 2]
	lsl	x2, x2, 2
	add	x3, sp, 24
	str	w4, [x3, x2]
	add	x1, x1, 1
	b	.L137
.L136:
	ldr	x2, [x0, 72]
	ldrsw	x4, [sp, 172]
	ldr	w1, [x0, 120]
	sxtw	x3, w1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L139:
	cmp	x1, 9
	bgt	.L138
	mul	x2, x1, x6
	add	x4, x5, x2
	add	x2, x1, 17
	ldr	x3, [x0, 32]
	ldr	w4, [x3, x4, lsl 2]
	lsl	x2, x2, 2
	add	x3, sp, 24
	str	w4, [x3, x2]
	add	x1, x1, 1
	b	.L139
.L138:
	mov	w3, -2147483648
	ldr	x6, [x0, 72]
	ldr	x4, [x0, 64]
	ldr	x8, [x0, 72]
	ldr	x10, [x0, 72]
	ldrsw	x14, [sp, 156]
	ldr	w1, [x0, 120]
	sxtw	x7, w1
	ldrsw	x13, [sp, 152]
	ldr	w1, [x0, 120]
	sxtw	x9, w1
	ldrsw	x12, [sp, 172]
	ldr	w1, [x0, 120]
	sxtw	x11, w1
	cmp	x4, 0
	ble	.L140
	mov	x2, 1
	b	.L141
.L140:
	mov	x2, 0
.L141:
	mov	x15, 0
	ldr	x5, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x14, x1
	add	x6, x6, x1
	ldr	x1, [x0, 40]
	mul	x1, x7, x1
	add	x6, x6, x1
	ldr	x7, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x13, x1
	add	x8, x8, x1
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x8, x8, x1
	ldr	x9, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x12, x1
	add	x10, x10, x1
	ldr	x1, [x0, 40]
	mul	x1, x11, x1
	add	x10, x10, x1
	mov	x1, 1
.L144:
	cmp	x1, x4
	bgt	.L142
	mul	x11, x1, x5
	add	x12, x6, x11
	ldr	x11, [x0, 32]
	ldr	w12, [x11, x12, lsl 2]
	mul	x11, x1, x7
	add	x13, x8, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w12, w12, w11
	mul	x11, x1, x9
	add	x13, x10, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w11, w12, w11
	cmp	w3, w11
	cset	w11, lt
	cmp	w11, 0
	beq	.L143
	mul	x2, x1, x5
	add	x3, x6, x2
	ldr	x2, [x0, 32]
	ldr	w3, [x2, x3, lsl 2]
	mul	x2, x1, x7
	add	x11, x8, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	mul	x2, x1, x9
	add	x11, x10, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	add	x2, x1, x15
.L143:
	add	x1, x1, 1
	b	.L144
.L142:
	mov	w1, w2
	str	w1, [sp, 148]
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 8]
	ldr	w1, [x0, 120]
	sxtw	x8, w1
	ldrsw	x7, [sp, 148]
	ldr	w4, [sp, 148]
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L147:
	cmp	x1, x3
	bgt	.L145
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L146
	add	w2, w2, 1
.L146:
	add	x1, x1, 1
	b	.L147
.L145:
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	ldr	w1, [x1]
	add	w2, w2, w1
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 8]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 120]
	sxtw	x10, w1
	ldrsw	x6, [sp, 148]
	ldr	w1, [x0, 120]
	sxtw	x9, w1
	ldrsw	x8, [sp, 148]
	ldr	w3, [sp, 148]
	ldr	x4, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L150:
	cmp	x1, x2
	bgt	.L148
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L149
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L149:
	add	x1, x1, 1
	b	.L150
.L148:
	mov	w3, -2147483648
	ldr	x6, [x0, 72]
	ldr	x4, [x0, 64]
	ldr	x8, [x0, 72]
	ldr	x10, [x0, 72]
	ldrsw	x14, [sp, 156]
	ldr	w1, [x0, 120]
	sxtw	x7, w1
	ldrsw	x13, [sp, 152]
	ldr	w1, [x0, 120]
	sxtw	x9, w1
	ldrsw	x12, [sp, 172]
	ldr	w1, [x0, 120]
	sxtw	x11, w1
	cmp	x4, 0
	ble	.L151
	mov	x2, 1
	b	.L152
.L151:
	mov	x2, 0
.L152:
	mov	x15, 0
	ldr	x5, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x14, x1
	add	x6, x6, x1
	ldr	x1, [x0, 40]
	mul	x1, x7, x1
	add	x6, x6, x1
	ldr	x7, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x13, x1
	add	x8, x8, x1
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x8, x8, x1
	ldr	x9, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x12, x1
	add	x10, x10, x1
	ldr	x1, [x0, 40]
	mul	x1, x11, x1
	add	x10, x10, x1
	mov	x1, 1
.L155:
	cmp	x1, x4
	bgt	.L153
	mul	x11, x1, x5
	add	x12, x6, x11
	ldr	x11, [x0, 32]
	ldr	w12, [x11, x12, lsl 2]
	mul	x11, x1, x7
	add	x13, x8, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w12, w12, w11
	mul	x11, x1, x9
	add	x13, x10, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w11, w12, w11
	cmp	w3, w11
	cset	w11, lt
	cmp	w11, 0
	beq	.L154
	mul	x2, x1, x5
	add	x3, x6, x2
	ldr	x2, [x0, 32]
	ldr	w3, [x2, x3, lsl 2]
	mul	x2, x1, x7
	add	x11, x8, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	mul	x2, x1, x9
	add	x11, x10, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	add	x2, x1, x15
.L154:
	add	x1, x1, 1
	b	.L155
.L153:
	mov	w1, w2
	str	w1, [sp, 144]
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 8]
	ldr	w1, [x0, 120]
	sxtw	x8, w1
	ldrsw	x7, [sp, 144]
	ldr	w4, [sp, 144]
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L158:
	cmp	x1, x3
	bgt	.L156
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L157
	add	w2, w2, 1
.L157:
	add	x1, x1, 1
	b	.L158
.L156:
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	ldr	w1, [x1]
	add	w2, w2, w1
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 8]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 120]
	sxtw	x10, w1
	ldrsw	x6, [sp, 144]
	ldr	w1, [x0, 120]
	sxtw	x9, w1
	ldrsw	x8, [sp, 144]
	ldr	w3, [sp, 144]
	ldr	x4, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L161:
	cmp	x1, x2
	bgt	.L159
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L160
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L160:
	add	x1, x1, 1
	b	.L161
.L159:
	mov	w3, -2147483648
	ldr	x6, [x0, 72]
	ldr	x4, [x0, 64]
	ldr	x8, [x0, 72]
	ldr	x10, [x0, 72]
	ldrsw	x14, [sp, 156]
	ldr	w1, [x0, 120]
	sxtw	x7, w1
	ldrsw	x13, [sp, 152]
	ldr	w1, [x0, 120]
	sxtw	x9, w1
	ldrsw	x12, [sp, 172]
	ldr	w1, [x0, 120]
	sxtw	x11, w1
	cmp	x4, 0
	ble	.L162
	mov	x2, 1
	b	.L163
.L162:
	mov	x2, 0
.L163:
	mov	x15, 0
	ldr	x5, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x14, x1
	add	x6, x6, x1
	ldr	x1, [x0, 40]
	mul	x1, x7, x1
	add	x6, x6, x1
	ldr	x7, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x13, x1
	add	x8, x8, x1
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x8, x8, x1
	ldr	x9, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x12, x1
	add	x10, x10, x1
	ldr	x1, [x0, 40]
	mul	x1, x11, x1
	add	x10, x10, x1
	mov	x1, 1
.L166:
	cmp	x1, x4
	bgt	.L164
	mul	x11, x1, x5
	add	x12, x6, x11
	ldr	x11, [x0, 32]
	ldr	w12, [x11, x12, lsl 2]
	mul	x11, x1, x7
	add	x13, x8, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w12, w12, w11
	mul	x11, x1, x9
	add	x13, x10, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w11, w12, w11
	cmp	w3, w11
	cset	w11, lt
	cmp	w11, 0
	beq	.L165
	mul	x2, x1, x5
	add	x3, x6, x2
	ldr	x2, [x0, 32]
	ldr	w3, [x2, x3, lsl 2]
	mul	x2, x1, x7
	add	x11, x8, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	mul	x2, x1, x9
	add	x11, x10, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	add	x2, x1, x15
.L165:
	add	x1, x1, 1
	b	.L166
.L164:
	mov	w1, w2
	str	w1, [sp, 140]
	mov	w4, 0
	ldr	x6, [x0, 72]
	ldr	x2, [x0, 8]
	ldr	w1, [x0, 120]
	sxtw	x8, w1
	ldrsw	x7, [sp, 140]
	ldr	w3, [sp, 140]
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L169:
	cmp	x1, x2
	bgt	.L167
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w3, w7
	bne	.L168
	add	w4, w4, 1
.L168:
	add	x1, x1, 1
	b	.L169
.L167:
	mov	w3, 0
	mov	x1, 1
.L174:
	cmp	x1, 3
	bgt	.L170
	mov	x2, x1
	lsl	x2, x2, 3
	add	x2, x2, x1
	sub	x5, x2, #10
	mov	x2, 1
.L173:
	cmp	x2, 9
	bgt	.L171
	add	x6, x2, x5
	lsl	x6, x6, 2
	add	x7, sp, 24
	ldr	w6, [x7, x6]
	cmp	w6, 0
	beq	.L172
	add	w3, w3, 1
.L172:
	add	x2, x2, 1
	b	.L173
.L171:
	add	x1, x1, 1
	b	.L174
.L170:
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	ldr	w1, [x1]
	add	w1, w4, w1
	sub	w2, w1, w3
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 8]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 120]
	sxtw	x10, w1
	ldrsw	x6, [sp, 140]
	ldr	w1, [x0, 120]
	sxtw	x9, w1
	ldrsw	x8, [sp, 140]
	ldr	w3, [sp, 140]
	ldr	x4, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L177:
	cmp	x1, x2
	bgt	.L175
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L176
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L176:
	add	x1, x1, 1
	b	.L177
.L175:
	ldr	x2, [x0, 72]
	ldrsw	x4, [sp, 156]
	ldr	w1, [x0, 120]
	sxtw	x3, w1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L179:
	cmp	x1, 9
	bgt	.L178
	sub	x2, x1, #1
	mul	x3, x1, x6
	add	x3, x5, x3
	lsl	x2, x2, 2
	add	x4, sp, 24
	ldr	w4, [x4, x2]
	ldr	x2, [x0, 32]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L179
.L178:
	ldr	x2, [x0, 72]
	ldrsw	x4, [sp, 152]
	ldr	w1, [x0, 120]
	sxtw	x3, w1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L181:
	cmp	x1, 9
	bgt	.L180
	add	x2, x1, 8
	mul	x3, x1, x6
	add	x3, x5, x3
	lsl	x2, x2, 2
	add	x4, sp, 24
	ldr	w4, [x4, x2]
	ldr	x2, [x0, 32]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L181
.L180:
	ldr	x2, [x0, 72]
	ldrsw	x4, [sp, 172]
	ldr	w1, [x0, 120]
	sxtw	x3, w1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L183:
	cmp	x1, 9
	bgt	.L182
	add	x2, x1, 17
	mul	x3, x1, x6
	add	x3, x5, x3
	lsl	x2, x2, 2
	add	x4, sp, 24
	ldr	w4, [x4, x2]
	ldr	x2, [x0, 32]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L183
.L182:
	b	.L107
.L310:
	nop
	b	.L117
.L311:
	nop
.L117:
	ldr	w1, [sp, 172]
	add	w1, w1, 1
	str	w1, [sp, 172]
	b	.L184
.L309:
	nop
.L107:
	ldr	w1, [sp, 152]
	add	w1, w1, 1
	str	w1, [sp, 152]
	b	.L185
.L308:
	nop
	ldr	w1, [sp, 156]
	add	w1, w1, 1
	str	w1, [sp, 156]
	b	.L186
.L307:
	nop
	ldr	w1, [x0, 120]
	add	w1, w1, 1
	str	w1, [x0, 120]
	b	.L187
.L306:
	nop
	mov	w1, 1
	str	w1, [sp, 168]
.L299:
	ldr	w1, [sp, 168]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L312
	mov	w1, 1
	str	w1, [sp, 156]
.L298:
	ldr	w1, [sp, 156]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L313
	ldrsw	x1, [sp, 168]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 156]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L314
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 156]
	ldrsw	x6, [sp, 168]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L193:
	cmp	x1, x3
	bgt	.L191
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L192
	add	w2, w2, 1
.L192:
	add	x1, x1, 1
	b	.L193
.L191:
	cmp	w2, 1
	ble	.L314
	ldr	w1, [sp, 156]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	str	w1, [sp, 136]
	ldr	w1, [sp, 168]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	str	w1, [sp, 132]
	mov	w3, 0
	ldr	x5, [x0, 112]
	ldr	w2, [sp, 136]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x11, w1
	ldr	w1, [sp, 136]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x6, w1
	ldr	w2, [sp, 132]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 132]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldr	x7, [x0, 88]
.L198:
	cmp	x1, x4
	bgt	.L194
	ldr	x2, [x0, 96]
	mul	x2, x1, x2
	add	x8, x5, x2
	mov	x2, x11
.L197:
	cmp	x2, x6
	bgt	.L195
	mul	x9, x2, x7
	add	x10, x8, x9
	ldr	x9, [x0, 80]
	ldr	w9, [x9, x10, lsl 2]
	cmp	w9, 0
	bne	.L196
	add	w3, w3, 1
.L196:
	add	x2, x2, 1
	b	.L197
.L195:
	add	x1, x1, 1
	b	.L198
.L194:
	cmp	w3, 3
	beq	.L315
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 156]
	ldrsw	x6, [sp, 168]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L202:
	cmp	x1, x3
	bgt	.L200
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L201
	add	w2, w2, 1
.L201:
	add	x1, x1, 1
	b	.L202
.L200:
	cmp	w2, 3
	bgt	.L314
	mov	w1, 1
	str	w1, [sp, 164]
.L297:
	ldr	w1, [sp, 164]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L314
	ldr	w1, [sp, 164]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	ldr	w2, [sp, 132]
	cmp	w2, w1
	bne	.L316
	mov	w1, 1
	str	w1, [sp, 152]
.L296:
	ldr	w1, [sp, 152]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L316
	ldr	w1, [sp, 152]
	sub	w2, w1, #1
	mov	w1, w2
	lsl	w1, w1, 3
	add	w2, w1, w2
	ldr	w1, [sp, 164]
	add	w3, w2, w1
	ldr	w1, [sp, 156]
	sub	w2, w1, #1
	mov	w1, w2
	lsl	w1, w1, 3
	add	w2, w1, w2
	ldr	w1, [sp, 168]
	add	w1, w2, w1
	cmp	w3, w1
	ble	.L317
	ldrsw	x1, [sp, 164]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 152]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L317
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 152]
	ldrsw	x6, [sp, 164]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L207:
	cmp	x1, x3
	bgt	.L205
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L206
	add	w2, w2, 1
.L206:
	add	x1, x1, 1
	b	.L207
.L205:
	cmp	w2, 1
	ble	.L317
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 152]
	ldrsw	x6, [sp, 164]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L210:
	cmp	x1, x3
	bgt	.L208
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L209
	add	w2, w2, 1
.L209:
	add	x1, x1, 1
	b	.L210
.L208:
	cmp	w2, 3
	bgt	.L317
	ldr	w1, [sp, 152]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	ldr	w2, [sp, 136]
	cmp	w2, w1
	bne	.L317
	mov	w2, 1
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 156]
	ldrsw	x6, [sp, 168]
	ldrsw	x9, [sp, 152]
	ldrsw	x8, [sp, 164]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L213:
	cmp	x1, x3
	bgt	.L211
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L212
	mov	w2, 0
	b	.L211
.L212:
	add	x1, x1, 1
	b	.L213
.L211:
	cmp	w2, 0
	bne	.L317
	mov	w1, 1
	str	w1, [sp, 160]
.L295:
	ldr	w1, [sp, 160]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L317
	ldr	w1, [sp, 160]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	ldr	w2, [sp, 132]
	cmp	w2, w1
	bne	.L318
	mov	w1, 1
	str	w1, [sp, 172]
.L294:
	ldr	w1, [sp, 172]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L318
	ldr	w1, [sp, 172]
	sub	w2, w1, #1
	mov	w1, w2
	lsl	w1, w1, 3
	add	w2, w1, w2
	ldr	w1, [sp, 160]
	add	w3, w2, w1
	ldr	w1, [sp, 152]
	sub	w2, w1, #1
	mov	w1, w2
	lsl	w1, w1, 3
	add	w2, w1, w2
	ldr	w1, [sp, 164]
	add	w1, w2, w1
	cmp	w3, w1
	ble	.L319
	ldrsw	x1, [sp, 160]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 172]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L319
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 172]
	ldrsw	x6, [sp, 160]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L218:
	cmp	x1, x3
	bgt	.L216
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L217
	add	w2, w2, 1
.L217:
	add	x1, x1, 1
	b	.L218
.L216:
	cmp	w2, 1
	ble	.L319
	mov	w2, 1
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 156]
	ldrsw	x6, [sp, 168]
	ldrsw	x9, [sp, 172]
	ldrsw	x8, [sp, 160]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L221:
	cmp	x1, x3
	bgt	.L219
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L220
	mov	w2, 0
	b	.L219
.L220:
	add	x1, x1, 1
	b	.L221
.L219:
	cmp	w2, 0
	bne	.L319
	mov	w2, 1
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 172]
	ldrsw	x6, [sp, 160]
	ldrsw	x9, [sp, 152]
	ldrsw	x8, [sp, 164]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L224:
	cmp	x1, x3
	bgt	.L222
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L223
	mov	w2, 0
	b	.L222
.L223:
	add	x1, x1, 1
	b	.L224
.L222:
	cmp	w2, 0
	bne	.L319
	ldr	w1, [sp, 172]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	ldr	w2, [sp, 136]
	cmp	w2, w1
	bne	.L319
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 172]
	ldrsw	x6, [sp, 160]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L227:
	cmp	x1, x3
	bgt	.L225
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L226
	add	w2, w2, 1
.L226:
	add	x1, x1, 1
	b	.L227
.L225:
	cmp	w2, 3
	bgt	.L319
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldr	x9, [x0, 72]
	ldrsw	x13, [sp, 156]
	ldrsw	x6, [sp, 168]
	ldrsw	x12, [sp, 152]
	ldrsw	x8, [sp, 164]
	ldrsw	x11, [sp, 172]
	ldrsw	x10, [sp, 160]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x13, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x12, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	ldr	x8, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x11, x1
	add	x9, x9, x1
	ldr	x1, [x0, 40]
	mul	x1, x10, x1
	add	x9, x9, x1
	mov	x1, 1
.L230:
	cmp	x1, x3
	bgt	.L228
	mul	x10, x1, x4
	add	x11, x5, x10
	ldr	x10, [x0, 32]
	ldr	w11, [x10, x11, lsl 2]
	mul	x10, x1, x6
	add	x12, x7, x10
	ldr	x10, [x0, 32]
	ldr	w10, [x10, x12, lsl 2]
	add	w11, w11, w10
	mul	x10, x1, x8
	add	x12, x9, x10
	ldr	x10, [x0, 32]
	ldr	w10, [x10, x12, lsl 2]
	add	w10, w11, w10
	cmp	w10, 0
	beq	.L229
	add	w2, w2, 1
.L229:
	add	x1, x1, 1
	b	.L230
.L228:
	cmp	w2, 3
	bne	.L320
	ldr	x2, [x0, 72]
	ldrsw	x4, [sp, 156]
	ldrsw	x3, [sp, 168]
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L233:
	cmp	x1, 9
	bgt	.L232
	mul	x2, x1, x6
	add	x4, x5, x2
	sub	x2, x1, #1
	ldr	x3, [x0, 32]
	ldr	w4, [x3, x4, lsl 2]
	lsl	x2, x2, 2
	add	x3, sp, 24
	str	w4, [x3, x2]
	add	x1, x1, 1
	b	.L233
.L232:
	ldr	x2, [x0, 72]
	ldrsw	x4, [sp, 152]
	ldrsw	x3, [sp, 164]
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L235:
	cmp	x1, 9
	bgt	.L234
	mul	x2, x1, x6
	add	x4, x5, x2
	add	x2, x1, 8
	ldr	x3, [x0, 32]
	ldr	w4, [x3, x4, lsl 2]
	lsl	x2, x2, 2
	add	x3, sp, 24
	str	w4, [x3, x2]
	add	x1, x1, 1
	b	.L235
.L234:
	ldr	x2, [x0, 72]
	ldrsw	x4, [sp, 172]
	ldrsw	x3, [sp, 160]
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L237:
	cmp	x1, 9
	bgt	.L236
	mul	x2, x1, x6
	add	x4, x5, x2
	add	x2, x1, 17
	ldr	x3, [x0, 32]
	ldr	w4, [x3, x4, lsl 2]
	lsl	x2, x2, 2
	add	x3, sp, 24
	str	w4, [x3, x2]
	add	x1, x1, 1
	b	.L237
.L236:
	mov	w3, -2147483648
	ldr	x6, [x0, 72]
	ldr	x4, [x0, 64]
	ldr	x8, [x0, 72]
	ldr	x10, [x0, 72]
	ldrsw	x14, [sp, 156]
	ldrsw	x7, [sp, 168]
	ldrsw	x13, [sp, 152]
	ldrsw	x9, [sp, 164]
	ldrsw	x12, [sp, 172]
	ldrsw	x11, [sp, 160]
	cmp	x4, 0
	ble	.L238
	mov	x2, 1
	b	.L239
.L238:
	mov	x2, 0
.L239:
	mov	x15, 0
	ldr	x5, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x14, x1
	add	x6, x6, x1
	ldr	x1, [x0, 40]
	mul	x1, x7, x1
	add	x6, x6, x1
	ldr	x7, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x13, x1
	add	x8, x8, x1
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x8, x8, x1
	ldr	x9, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x12, x1
	add	x10, x10, x1
	ldr	x1, [x0, 40]
	mul	x1, x11, x1
	add	x10, x10, x1
	mov	x1, 1
.L242:
	cmp	x1, x4
	bgt	.L240
	mul	x11, x1, x5
	add	x12, x6, x11
	ldr	x11, [x0, 32]
	ldr	w12, [x11, x12, lsl 2]
	mul	x11, x1, x7
	add	x13, x8, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w12, w12, w11
	mul	x11, x1, x9
	add	x13, x10, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w11, w12, w11
	cmp	w3, w11
	cset	w11, lt
	cmp	w11, 0
	beq	.L241
	mul	x2, x1, x5
	add	x3, x6, x2
	ldr	x2, [x0, 32]
	ldr	w3, [x2, x3, lsl 2]
	mul	x2, x1, x7
	add	x11, x8, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	mul	x2, x1, x9
	add	x11, x10, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	add	x2, x1, x15
.L241:
	add	x1, x1, 1
	b	.L242
.L240:
	mov	w1, w2
	str	w1, [sp, 148]
	mov	w3, 0
	ldr	x8, [x0, 72]
	ldr	w2, [sp, 136]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x12, w1
	ldr	w1, [sp, 136]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w2, [sp, 132]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 132]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldrsw	x9, [sp, 148]
	ldr	w6, [sp, 148]
	ldr	x7, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x9, x2
	add	x8, x8, x2
.L247:
	cmp	x1, x4
	bgt	.L243
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x9, x8, x2
	mov	x2, x12
.L246:
	cmp	x2, x5
	bgt	.L244
	mul	x10, x2, x7
	add	x11, x9, x10
	ldr	x10, [x0, 32]
	ldr	w10, [x10, x11, lsl 2]
	cmp	w6, w10
	bne	.L245
	add	w3, w3, 1
.L245:
	add	x2, x2, 1
	b	.L246
.L244:
	add	x1, x1, 1
	b	.L247
.L243:
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	ldr	w1, [x1]
	add	w2, w3, w1
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	str	w2, [x1]
	ldr	x10, [x0, 72]
	ldr	w2, [sp, 136]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x7, w1
	ldr	w1, [sp, 136]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	w2, [sp, 132]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x8, w1
	ldr	w1, [sp, 132]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	x12, [x0, 72]
	ldr	w2, [sp, 136]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	w1, [sp, 136]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w2, [sp, 132]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 132]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldrsw	x11, [sp, 148]
	ldrsw	x13, [sp, 148]
	ldr	w6, [sp, 148]
	sub	x7, x7, x3
	sub	x8, x8, x1
	ldr	x9, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x11, x2
	add	x10, x10, x2
	ldr	x11, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x13, x2
	add	x12, x12, x2
.L252:
	cmp	x1, x4
	bgt	.L248
	add	x2, x1, x8
	ldr	x13, [x0, 40]
	mul	x2, x13, x2
	add	x13, x10, x2
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x14, x12, x2
	mov	x2, x3
.L251:
	cmp	x2, x5
	bgt	.L249
	mul	x15, x2, x11
	add	x16, x14, x15
	ldr	x15, [x0, 32]
	ldr	w15, [x15, x16, lsl 2]
	cmp	w6, w15
	bne	.L250
	add	x15, x2, x7
	mul	x15, x9, x15
	add	x16, x13, x15
	ldr	x15, [x0, 32]
	str	wzr, [x15, x16, lsl 2]
.L250:
	add	x2, x2, 1
	b	.L251
.L249:
	add	x1, x1, 1
	b	.L252
.L248:
	mov	w3, -2147483648
	ldr	x6, [x0, 72]
	ldr	x4, [x0, 64]
	ldr	x8, [x0, 72]
	ldr	x10, [x0, 72]
	ldrsw	x14, [sp, 156]
	ldrsw	x7, [sp, 168]
	ldrsw	x13, [sp, 152]
	ldrsw	x9, [sp, 164]
	ldrsw	x12, [sp, 172]
	ldrsw	x11, [sp, 160]
	cmp	x4, 0
	ble	.L253
	mov	x2, 1
	b	.L254
.L253:
	mov	x2, 0
.L254:
	mov	x15, 0
	ldr	x5, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x14, x1
	add	x6, x6, x1
	ldr	x1, [x0, 40]
	mul	x1, x7, x1
	add	x6, x6, x1
	ldr	x7, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x13, x1
	add	x8, x8, x1
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x8, x8, x1
	ldr	x9, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x12, x1
	add	x10, x10, x1
	ldr	x1, [x0, 40]
	mul	x1, x11, x1
	add	x10, x10, x1
	mov	x1, 1
.L257:
	cmp	x1, x4
	bgt	.L255
	mul	x11, x1, x5
	add	x12, x6, x11
	ldr	x11, [x0, 32]
	ldr	w12, [x11, x12, lsl 2]
	mul	x11, x1, x7
	add	x13, x8, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w12, w12, w11
	mul	x11, x1, x9
	add	x13, x10, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w11, w12, w11
	cmp	w3, w11
	cset	w11, lt
	cmp	w11, 0
	beq	.L256
	mul	x2, x1, x5
	add	x3, x6, x2
	ldr	x2, [x0, 32]
	ldr	w3, [x2, x3, lsl 2]
	mul	x2, x1, x7
	add	x11, x8, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	mul	x2, x1, x9
	add	x11, x10, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	add	x2, x1, x15
.L256:
	add	x1, x1, 1
	b	.L257
.L255:
	mov	w1, w2
	str	w1, [sp, 144]
	mov	w3, 0
	ldr	x8, [x0, 72]
	ldr	w2, [sp, 136]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x12, w1
	ldr	w1, [sp, 136]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w2, [sp, 132]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 132]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldrsw	x9, [sp, 144]
	ldr	w6, [sp, 144]
	ldr	x7, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x9, x2
	add	x8, x8, x2
.L262:
	cmp	x1, x4
	bgt	.L258
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x9, x8, x2
	mov	x2, x12
.L261:
	cmp	x2, x5
	bgt	.L259
	mul	x10, x2, x7
	add	x11, x9, x10
	ldr	x10, [x0, 32]
	ldr	w10, [x10, x11, lsl 2]
	cmp	w6, w10
	bne	.L260
	add	w3, w3, 1
.L260:
	add	x2, x2, 1
	b	.L261
.L259:
	add	x1, x1, 1
	b	.L262
.L258:
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	ldr	w1, [x1]
	add	w2, w3, w1
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	str	w2, [x1]
	ldr	x10, [x0, 72]
	ldr	w2, [sp, 136]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x7, w1
	ldr	w1, [sp, 136]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	w2, [sp, 132]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x8, w1
	ldr	w1, [sp, 132]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	x12, [x0, 72]
	ldr	w2, [sp, 136]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	w1, [sp, 136]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w2, [sp, 132]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 132]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldrsw	x11, [sp, 144]
	ldrsw	x13, [sp, 144]
	ldr	w6, [sp, 144]
	sub	x7, x7, x3
	sub	x8, x8, x1
	ldr	x9, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x11, x2
	add	x10, x10, x2
	ldr	x11, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x13, x2
	add	x12, x12, x2
.L267:
	cmp	x1, x4
	bgt	.L263
	add	x2, x1, x8
	ldr	x13, [x0, 40]
	mul	x2, x13, x2
	add	x13, x10, x2
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x14, x12, x2
	mov	x2, x3
.L266:
	cmp	x2, x5
	bgt	.L264
	mul	x15, x2, x11
	add	x16, x14, x15
	ldr	x15, [x0, 32]
	ldr	w15, [x15, x16, lsl 2]
	cmp	w6, w15
	bne	.L265
	add	x15, x2, x7
	mul	x15, x9, x15
	add	x16, x13, x15
	ldr	x15, [x0, 32]
	str	wzr, [x15, x16, lsl 2]
.L265:
	add	x2, x2, 1
	b	.L266
.L264:
	add	x1, x1, 1
	b	.L267
.L263:
	mov	w3, -2147483648
	ldr	x6, [x0, 72]
	ldr	x4, [x0, 64]
	ldr	x8, [x0, 72]
	ldr	x10, [x0, 72]
	ldrsw	x14, [sp, 156]
	ldrsw	x7, [sp, 168]
	ldrsw	x13, [sp, 152]
	ldrsw	x9, [sp, 164]
	ldrsw	x12, [sp, 172]
	ldrsw	x11, [sp, 160]
	cmp	x4, 0
	ble	.L268
	mov	x2, 1
	b	.L269
.L268:
	mov	x2, 0
.L269:
	mov	x15, 0
	ldr	x5, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x14, x1
	add	x6, x6, x1
	ldr	x1, [x0, 40]
	mul	x1, x7, x1
	add	x6, x6, x1
	ldr	x7, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x13, x1
	add	x8, x8, x1
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x8, x8, x1
	ldr	x9, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x12, x1
	add	x10, x10, x1
	ldr	x1, [x0, 40]
	mul	x1, x11, x1
	add	x10, x10, x1
	mov	x1, 1
.L272:
	cmp	x1, x4
	bgt	.L270
	mul	x11, x1, x5
	add	x12, x6, x11
	ldr	x11, [x0, 32]
	ldr	w12, [x11, x12, lsl 2]
	mul	x11, x1, x7
	add	x13, x8, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w12, w12, w11
	mul	x11, x1, x9
	add	x13, x10, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x13, lsl 2]
	add	w11, w12, w11
	cmp	w3, w11
	cset	w11, lt
	cmp	w11, 0
	beq	.L271
	mul	x2, x1, x5
	add	x3, x6, x2
	ldr	x2, [x0, 32]
	ldr	w3, [x2, x3, lsl 2]
	mul	x2, x1, x7
	add	x11, x8, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	mul	x2, x1, x9
	add	x11, x10, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x11, lsl 2]
	add	w3, w3, w2
	add	x2, x1, x15
.L271:
	add	x1, x1, 1
	b	.L272
.L270:
	mov	w1, w2
	str	w1, [sp, 140]
	mov	w4, 0
	mov	x1, 1
.L277:
	cmp	x1, 3
	bgt	.L273
	mov	x2, x1
	lsl	x2, x2, 3
	add	x2, x2, x1
	sub	x3, x2, #10
	mov	x2, 1
.L276:
	cmp	x2, 9
	bgt	.L274
	add	x5, x2, x3
	lsl	x5, x5, 2
	add	x6, sp, 24
	ldr	w5, [x6, x5]
	cmp	w5, 0
	beq	.L275
	add	w4, w4, 1
.L275:
	add	x2, x2, 1
	b	.L276
.L274:
	add	x1, x1, 1
	b	.L277
.L273:
	mov	w3, 0
	ldr	x9, [x0, 72]
	ldr	w2, [sp, 136]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x13, w1
	ldr	w1, [sp, 136]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x6, w1
	ldr	w2, [sp, 132]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 132]
	add	w5, w2, 1
	mov	w2, w5
	lsl	w2, w2, 1
	add	w2, w2, w5
	sxtw	x5, w2
	ldrsw	x10, [sp, 140]
	ldr	w7, [sp, 140]
	ldr	x8, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x10, x2
	add	x9, x9, x2
.L282:
	cmp	x1, x5
	bgt	.L278
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x10, x9, x2
	mov	x2, x13
.L281:
	cmp	x2, x6
	bgt	.L279
	mul	x11, x2, x8
	add	x12, x10, x11
	ldr	x11, [x0, 32]
	ldr	w11, [x11, x12, lsl 2]
	cmp	w7, w11
	bne	.L280
	add	w3, w3, 1
.L280:
	add	x2, x2, 1
	b	.L281
.L279:
	add	x1, x1, 1
	b	.L282
.L278:
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	ldr	w1, [x1]
	sub	w1, w1, w4
	add	w2, w3, w1
	adrp	x1, __logic_MOD_naked3
	add	x1, x1, :lo12:__logic_MOD_naked3
	str	w2, [x1]
	ldr	x10, [x0, 72]
	ldr	w2, [sp, 136]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x7, w1
	ldr	w1, [sp, 136]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	w2, [sp, 132]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x8, w1
	ldr	w1, [sp, 132]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	x12, [x0, 72]
	ldr	w2, [sp, 136]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	w1, [sp, 136]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w2, [sp, 132]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 132]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldrsw	x11, [sp, 140]
	ldrsw	x13, [sp, 140]
	ldr	w6, [sp, 140]
	sub	x7, x7, x3
	sub	x8, x8, x1
	ldr	x9, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x11, x2
	add	x10, x10, x2
	ldr	x11, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x13, x2
	add	x12, x12, x2
.L287:
	cmp	x1, x4
	bgt	.L283
	add	x2, x1, x8
	ldr	x13, [x0, 40]
	mul	x2, x13, x2
	add	x13, x10, x2
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x14, x12, x2
	mov	x2, x3
.L286:
	cmp	x2, x5
	bgt	.L284
	mul	x15, x2, x11
	add	x16, x14, x15
	ldr	x15, [x0, 32]
	ldr	w15, [x15, x16, lsl 2]
	cmp	w6, w15
	bne	.L285
	add	x15, x2, x7
	mul	x15, x9, x15
	add	x16, x13, x15
	ldr	x15, [x0, 32]
	str	wzr, [x15, x16, lsl 2]
.L285:
	add	x2, x2, 1
	b	.L286
.L284:
	add	x1, x1, 1
	b	.L287
.L283:
	ldr	x2, [x0, 72]
	ldrsw	x4, [sp, 156]
	ldrsw	x3, [sp, 168]
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L289:
	cmp	x1, 9
	bgt	.L288
	sub	x2, x1, #1
	mul	x3, x1, x6
	add	x3, x5, x3
	lsl	x2, x2, 2
	add	x4, sp, 24
	ldr	w4, [x4, x2]
	ldr	x2, [x0, 32]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L289
.L288:
	ldr	x2, [x0, 72]
	ldrsw	x4, [sp, 152]
	ldrsw	x3, [sp, 164]
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L291:
	cmp	x1, 9
	bgt	.L290
	add	x2, x1, 8
	mul	x3, x1, x6
	add	x3, x5, x3
	lsl	x2, x2, 2
	add	x4, sp, 24
	ldr	w4, [x4, x2]
	ldr	x2, [x0, 32]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L291
.L290:
	ldr	x2, [x0, 72]
	ldrsw	x4, [sp, 172]
	ldrsw	x3, [sp, 160]
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x5, x2, x1
	mov	x1, 1
.L293:
	cmp	x1, 9
	bgt	.L292
	add	x2, x1, 17
	mul	x3, x1, x6
	add	x3, x5, x3
	lsl	x2, x2, 2
	add	x4, sp, 24
	ldr	w4, [x4, x2]
	ldr	x2, [x0, 32]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L293
.L292:
	b	.L204
.L319:
	nop
	b	.L215
.L320:
	nop
.L215:
	ldr	w1, [sp, 172]
	add	w1, w1, 1
	str	w1, [sp, 172]
	b	.L294
.L318:
	nop
	ldr	w1, [sp, 160]
	add	w1, w1, 1
	str	w1, [sp, 160]
	b	.L295
.L317:
	nop
.L204:
	ldr	w1, [sp, 152]
	add	w1, w1, 1
	str	w1, [sp, 152]
	b	.L296
.L316:
	nop
	ldr	w1, [sp, 164]
	add	w1, w1, 1
	str	w1, [sp, 164]
	b	.L297
.L314:
	nop
	b	.L190
.L315:
	nop
.L190:
	ldr	w1, [sp, 156]
	add	w1, w1, 1
	str	w1, [sp, 156]
	b	.L298
.L313:
	nop
	ldr	w1, [sp, 168]
	add	w1, w1, 1
	str	w1, [sp, 168]
	b	.L299
.L312:
	nop
	nop
	add	sp, sp, 176
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	hidden_triplets.2828, .-hidden_triplets.2828
	.align	2
	.global	__logic_MOD_new_solver
	.type	__logic_MOD_new_solver, %function
__logic_MOD_new_solver:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -256]!
	.cfi_def_cfa_offset 256
	.cfi_offset 29, -256
	.cfi_offset 30, -248
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	str	xzr, [sp, 200]
	ldr	x0, [sp, 24]
	str	x0, [sp, 72]
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 40]
	cmp	x0, 0
	bne	.L323
	mov	x0, 1
.L323:
	str	x0, [sp, 120]
	ldr	x0, [sp, 48]
	ldr	x0, [x0]
	str	x0, [sp, 104]
	ldr	x0, [sp, 48]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 48]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [sp, 80]
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 64]
	str	x0, [sp, 112]
	ldr	x0, [sp, 48]
	ldr	x1, [x0, 80]
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 72]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [sp, 96]
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 88]
	str	x0, [sp, 128]
	ldr	x0, [sp, 48]
	ldr	x1, [x0, 104]
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 96]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [sp, 136]
	ldr	x1, [sp, 128]
	ldr	x0, [sp, 136]
	mul	x2, x1, x0
	ldr	x0, [sp, 120]
	neg	x1, x0
	ldr	x0, [sp, 112]
	sub	x1, x1, x0
	ldr	x0, [sp, 128]
	sub	x0, x1, x0
	str	x0, [sp, 144]
	mov	x0, x2
	mov	x12, x0
	mov	x13, 0
	lsr	x0, x12, 59
	lsl	x9, x13, 5
	orr	x9, x0, x9
	lsl	x8, x12, 5
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 40]
	cmp	x0, 0
	bne	.L325
	mov	x0, 1
.L325:
	str	x0, [sp, 160]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	str	x0, [sp, 152]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 48]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [sp, 88]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 64]
	str	x0, [sp, 168]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 80]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 72]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [sp, 176]
	ldr	x1, [sp, 168]
	ldr	x0, [sp, 176]
	mul	x2, x1, x0
	ldr	x0, [sp, 160]
	neg	x1, x0
	ldr	x0, [sp, 168]
	sub	x0, x1, x0
	str	x0, [sp, 184]
	mov	x0, x2
	mov	x10, x0
	mov	x11, 0
	lsr	x0, x10, 59
	lsl	x7, x11, 5
	orr	x7, x0, x7
	lsl	x6, x10, 5
	str	wzr, [sp, 244]
	ldr	x0, [sp, 40]
	str	wzr, [x0]
	str	wzr, [sp, 240]
	ldr	x3, [sp, 144]
	ldr	x4, [sp, 80]
	ldr	x5, [sp, 96]
	ldr	x6, [sp, 136]
	ldr	x7, [sp, 120]
	mov	x0, 1
.L331:
	cmp	x0, x6
	bgt	.L326
	ldr	x1, [sp, 128]
	mul	x1, x0, x1
	add	x8, x3, x1
	mov	x1, 1
.L330:
	cmp	x1, x5
	bgt	.L327
	ldr	x2, [sp, 112]
	mul	x2, x1, x2
	add	x11, x8, x2
	mov	x2, 1
.L329:
	cmp	x2, x4
	bgt	.L328
	mul	x9, x2, x7
	add	x10, x11, x9
	ldr	x9, [sp, 104]
	str	wzr, [x9, x10, lsl 2]
	add	x2, x2, 1
	b	.L329
.L328:
	add	x1, x1, 1
	b	.L330
.L327:
	add	x0, x0, 1
	b	.L331
.L326:
	mov	w0, 1
	str	w0, [sp, 236]
.L338:
	ldr	w0, [sp, 236]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L517
	mov	w0, 1
	str	w0, [sp, 232]
.L337:
	ldr	w0, [sp, 232]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L518
	ldrsw	x0, [sp, 232]
	ldr	x1, [sp, 168]
	mul	x0, x1, x0
	ldr	x1, [sp, 184]
	add	x1, x1, x0
	ldrsw	x0, [sp, 236]
	ldr	x2, [sp, 160]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [sp, 152]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L334
	ldr	x1, [sp, 144]
	ldrsw	x3, [sp, 236]
	ldrsw	x2, [sp, 232]
	ldr	x5, [sp, 128]
	ldr	x0, [sp, 120]
	mul	x0, x3, x0
	add	x1, x1, x0
	ldr	x0, [sp, 112]
	mul	x0, x2, x0
	add	x4, x1, x0
	mov	x0, 0
.L336:
	cmp	x0, 8
	bgt	.L334
	add	x1, x0, 1
	mul	x1, x5, x1
	add	x2, x4, x1
	adrp	x1, A.609.6998
	add	x1, x1, :lo12:A.609.6998
	ldr	w3, [x1, x0, lsl 2]
	ldr	x1, [sp, 104]
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L336
.L334:
	ldr	w0, [sp, 232]
	add	w0, w0, 1
	str	w0, [sp, 232]
	b	.L337
.L518:
	nop
	ldr	w0, [sp, 236]
	add	w0, w0, 1
	str	w0, [sp, 236]
	b	.L338
.L517:
	nop
	mov	w2, 0
	ldr	x3, [sp, 184]
	ldr	x4, [sp, 88]
	ldr	x5, [sp, 176]
	ldr	x6, [sp, 160]
	mov	x0, 1
.L343:
	cmp	x0, x5
	bgt	.L339
	ldr	x1, [sp, 168]
	mul	x1, x0, x1
	add	x7, x3, x1
	mov	x1, 1
.L342:
	cmp	x1, x4
	bgt	.L340
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [sp, 152]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w8, 0
	beq	.L341
	add	w2, w2, 1
.L341:
	add	x1, x1, 1
	b	.L342
.L340:
	add	x0, x0, 1
	b	.L343
.L339:
	str	w2, [sp, 224]
	adrp	x0, __logic_MOD_to_do
	add	x0, x0, :lo12:__logic_MOD_to_do
	str	wzr, [x0]
	adrp	x0, __logic_MOD_two_in_a_bed
	add	x0, x0, :lo12:__logic_MOD_two_in_a_bed
	str	xzr, [x0]
	adrp	x0, __logic_MOD_three_in_a_bed
	add	x0, x0, :lo12:__logic_MOD_three_in_a_bed
	str	wzr, [x0]
	adrp	x0, __logic_MOD_naked3
	add	x0, x0, :lo12:__logic_MOD_naked3
	str	wzr, [x0]
	adrp	x0, __logic_MOD_four
	add	x0, x0, :lo12:__logic_MOD_four
	str	wzr, [x0]
	adrp	x0, __logic_MOD_clear_out
	add	x0, x0, :lo12:__logic_MOD_clear_out
	str	wzr, [x0]
	adrp	x0, __logic_MOD_fiendish
	add	x0, x0, :lo12:__logic_MOD_fiendish
	mov	w1, 2147483647
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 196]
.L358:
	ldr	w0, [sp, 196]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L519
	mov	w0, 1
	str	w0, [sp, 192]
.L357:
	ldr	w0, [sp, 192]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L520
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x1, [sp, 168]
	mul	x0, x1, x0
	ldr	x1, [sp, 184]
	add	x1, x1, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x2, [sp, 160]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [sp, 152]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L521
	ldr	x4, [sp, 144]
	ldr	x1, [sp, 96]
	ldr	x6, [sp, 144]
	ldr	w0, [sp, 196]
	sxtw	x9, w0
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x2, [sp, 168]
	mul	x0, x2, x0
	ldr	x2, [sp, 184]
	add	x2, x2, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x3, [sp, 160]
	mul	x0, x3, x0
	add	x2, x2, x0
	ldr	x0, [sp, 152]
	ldr	w0, [x0, x2, lsl 2]
	sxtw	x5, w0
	ldr	w0, [sp, 196]
	sxtw	x8, w0
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x2, [sp, 168]
	mul	x0, x2, x0
	ldr	x2, [sp, 184]
	add	x2, x2, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x3, [sp, 160]
	mul	x0, x3, x0
	add	x2, x2, x0
	ldr	x0, [sp, 152]
	ldr	w0, [x0, x2, lsl 2]
	sxtw	x7, w0
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x2, [sp, 168]
	mul	x0, x2, x0
	ldr	x2, [sp, 184]
	add	x2, x2, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x3, [sp, 160]
	mul	x0, x3, x0
	add	x2, x2, x0
	ldr	x0, [sp, 152]
	ldr	w2, [x0, x2, lsl 2]
	ldr	x3, [sp, 112]
	ldr	x0, [sp, 120]
	mul	x0, x9, x0
	add	x4, x4, x0
	ldr	x0, [sp, 128]
	mul	x0, x5, x0
	add	x4, x4, x0
	ldr	x5, [sp, 112]
	ldr	x0, [sp, 120]
	mul	x0, x8, x0
	add	x6, x6, x0
	ldr	x0, [sp, 128]
	mul	x0, x7, x0
	add	x6, x6, x0
	mov	x0, 1
.L349:
	cmp	x0, x1
	bgt	.L347
	mul	x7, x0, x5
	add	x8, x6, x7
	ldr	x7, [sp, 104]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w2, w7
	bne	.L348
	mul	x7, x0, x3
	add	x8, x4, x7
	ldr	x7, [sp, 104]
	str	wzr, [x7, x8, lsl 2]
.L348:
	add	x0, x0, 1
	b	.L349
.L347:
	ldr	x4, [sp, 144]
	ldr	x1, [sp, 80]
	ldr	x6, [sp, 144]
	ldr	w0, [sp, 192]
	sxtw	x9, w0
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x2, [sp, 168]
	mul	x0, x2, x0
	ldr	x2, [sp, 184]
	add	x2, x2, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x3, [sp, 160]
	mul	x0, x3, x0
	add	x2, x2, x0
	ldr	x0, [sp, 152]
	ldr	w0, [x0, x2, lsl 2]
	sxtw	x5, w0
	ldr	w0, [sp, 192]
	sxtw	x8, w0
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x2, [sp, 168]
	mul	x0, x2, x0
	ldr	x2, [sp, 184]
	add	x2, x2, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x3, [sp, 160]
	mul	x0, x3, x0
	add	x2, x2, x0
	ldr	x0, [sp, 152]
	ldr	w0, [x0, x2, lsl 2]
	sxtw	x7, w0
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x2, [sp, 168]
	mul	x0, x2, x0
	ldr	x2, [sp, 184]
	add	x2, x2, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x3, [sp, 160]
	mul	x0, x3, x0
	add	x2, x2, x0
	ldr	x0, [sp, 152]
	ldr	w2, [x0, x2, lsl 2]
	ldr	x3, [sp, 120]
	ldr	x0, [sp, 112]
	mul	x0, x9, x0
	add	x4, x4, x0
	ldr	x0, [sp, 128]
	mul	x0, x5, x0
	add	x4, x4, x0
	ldr	x5, [sp, 120]
	ldr	x0, [sp, 112]
	mul	x0, x8, x0
	add	x6, x6, x0
	ldr	x0, [sp, 128]
	mul	x0, x7, x0
	add	x6, x6, x0
	mov	x0, 1
.L352:
	cmp	x0, x1
	bgt	.L350
	mul	x7, x0, x5
	add	x8, x6, x7
	ldr	x7, [sp, 104]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w2, w7
	bne	.L351
	mul	x7, x0, x3
	add	x8, x4, x7
	ldr	x7, [sp, 104]
	str	wzr, [x7, x8, lsl 2]
.L351:
	add	x0, x0, 1
	b	.L352
.L350:
	ldr	x9, [sp, 144]
	ldr	w0, [sp, 196]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x6, w0
	ldr	w0, [sp, 196]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w0, w0, 1
	lsl	w0, w0, 1
	ldr	w0, [sp, 192]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x7, w0
	ldr	w0, [sp, 192]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w0, w0, 1
	lsl	w0, w0, 1
	ldr	x11, [sp, 144]
	ldr	w0, [sp, 196]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x2, w0
	ldr	w0, [sp, 196]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x4, w0
	ldr	w0, [sp, 192]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w1, [sp, 192]
	sub	w1, w1, #1
	mov	w3, 21846
	movk	w3, 0x5555, lsl 16
	smull	x3, w1, w3
	lsr	x3, x3, 32
	asr	w1, w1, 31
	sub	w1, w3, w1
	add	w3, w1, 1
	mov	w1, w3
	lsl	w1, w1, 1
	add	w1, w1, w3
	sxtw	x3, w1
	ldr	w1, [sp, 192]
	sxtw	x1, w1
	ldr	x5, [sp, 168]
	mul	x1, x5, x1
	ldr	x5, [sp, 184]
	add	x5, x5, x1
	ldr	w1, [sp, 196]
	sxtw	x1, w1
	ldr	x8, [sp, 160]
	mul	x1, x8, x1
	add	x5, x5, x1
	ldr	x1, [sp, 152]
	ldr	w1, [x1, x5, lsl 2]
	sxtw	x10, w1
	ldr	w1, [sp, 192]
	sxtw	x1, w1
	ldr	x5, [sp, 168]
	mul	x1, x5, x1
	ldr	x5, [sp, 184]
	add	x5, x5, x1
	ldr	w1, [sp, 196]
	sxtw	x1, w1
	ldr	x8, [sp, 160]
	mul	x1, x8, x1
	add	x5, x5, x1
	ldr	x1, [sp, 152]
	ldr	w1, [x1, x5, lsl 2]
	sxtw	x12, w1
	ldr	w1, [sp, 192]
	sxtw	x1, w1
	ldr	x5, [sp, 168]
	mul	x1, x5, x1
	ldr	x5, [sp, 184]
	add	x5, x5, x1
	ldr	w1, [sp, 196]
	sxtw	x1, w1
	ldr	x8, [sp, 160]
	mul	x1, x8, x1
	add	x5, x5, x1
	ldr	x1, [sp, 152]
	ldr	w5, [x1, x5, lsl 2]
	sub	x6, x6, x2
	sub	x7, x7, x0
	ldr	x8, [sp, 120]
	ldr	x1, [sp, 128]
	mul	x1, x10, x1
	add	x9, x9, x1
	ldr	x10, [sp, 120]
	ldr	x1, [sp, 128]
	mul	x1, x12, x1
	add	x11, x11, x1
.L356:
	cmp	x0, x3
	bgt	.L521
	add	x1, x0, x7
	ldr	x12, [sp, 112]
	mul	x1, x12, x1
	add	x12, x9, x1
	ldr	x1, [sp, 112]
	mul	x1, x0, x1
	add	x13, x11, x1
	mov	x1, x2
.L355:
	cmp	x1, x4
	bgt	.L353
	mul	x14, x1, x10
	add	x15, x13, x14
	ldr	x14, [sp, 104]
	ldr	w14, [x14, x15, lsl 2]
	cmp	w5, w14
	bne	.L354
	add	x14, x1, x6
	mul	x14, x8, x14
	add	x15, x12, x14
	ldr	x14, [sp, 104]
	str	wzr, [x14, x15, lsl 2]
.L354:
	add	x1, x1, 1
	b	.L355
.L353:
	add	x0, x0, 1
	b	.L356
.L521:
	nop
	ldr	w0, [sp, 192]
	add	w0, w0, 1
	str	w0, [sp, 192]
	b	.L357
.L520:
	nop
	ldr	w0, [sp, 196]
	add	w0, w0, 1
	str	w0, [sp, 196]
	b	.L358
.L519:
	nop
.L344:
	mov	w3, 0
	ldr	x4, [sp, 144]
	ldr	x5, [sp, 80]
	ldr	x6, [sp, 96]
	ldr	x7, [sp, 136]
	ldr	x8, [sp, 120]
	mov	x0, 1
.L365:
	cmp	x0, x7
	bgt	.L359
	ldr	x1, [sp, 128]
	mul	x1, x0, x1
	add	x9, x4, x1
	mov	x1, 1
.L364:
	cmp	x1, x6
	bgt	.L360
	ldr	x2, [sp, 112]
	mul	x2, x1, x2
	add	x10, x9, x2
	mov	x2, 1
.L363:
	cmp	x2, x5
	bgt	.L361
	mul	x11, x2, x8
	add	x12, x10, x11
	ldr	x11, [sp, 104]
	ldr	w11, [x11, x12, lsl 2]
	cmp	w11, 0
	beq	.L362
	add	w3, w3, 1
.L362:
	add	x2, x2, 1
	b	.L363
.L361:
	add	x1, x1, 1
	b	.L364
.L360:
	add	x0, x0, 1
	b	.L365
.L359:
	str	w3, [sp, 220]
	ldr	x0, [sp, 72]
	str	wzr, [x0]
	ldr	w0, [sp, 244]
	add	w0, w0, 1
	str	w0, [sp, 244]
	ldr	w0, [sp, 240]
	cmp	w0, 0
	beq	.L366
	add	x0, sp, 72
	mov	x18, x0
	bl	naked_pairs.2834
	mov	w3, 0
	ldr	x4, [sp, 144]
	ldr	x5, [sp, 80]
	ldr	x6, [sp, 96]
	ldr	x7, [sp, 136]
	ldr	x8, [sp, 120]
	mov	x0, 1
.L373:
	cmp	x0, x7
	bgt	.L367
	ldr	x1, [sp, 128]
	mul	x1, x0, x1
	add	x9, x4, x1
	mov	x1, 1
.L372:
	cmp	x1, x6
	bgt	.L368
	ldr	x2, [sp, 112]
	mul	x2, x1, x2
	add	x10, x9, x2
	mov	x2, 1
.L371:
	cmp	x2, x5
	bgt	.L369
	mul	x11, x2, x8
	add	x12, x10, x11
	ldr	x11, [sp, 104]
	ldr	w11, [x11, x12, lsl 2]
	cmp	w11, 0
	beq	.L370
	add	w3, w3, 1
.L370:
	add	x2, x2, 1
	b	.L371
.L369:
	add	x1, x1, 1
	b	.L372
.L368:
	add	x0, x0, 1
	b	.L373
.L367:
	ldr	w0, [sp, 220]
	cmp	w0, w3
	bne	.L374
	add	x0, sp, 72
	mov	x18, x0
	bl	hidden_pairs.2832
.L374:
	mov	w3, 0
	ldr	x4, [sp, 144]
	ldr	x5, [sp, 80]
	ldr	x6, [sp, 96]
	ldr	x7, [sp, 136]
	ldr	x8, [sp, 120]
	mov	x0, 1
.L381:
	cmp	x0, x7
	bgt	.L375
	ldr	x1, [sp, 128]
	mul	x1, x0, x1
	add	x9, x4, x1
	mov	x1, 1
.L380:
	cmp	x1, x6
	bgt	.L376
	ldr	x2, [sp, 112]
	mul	x2, x1, x2
	add	x10, x9, x2
	mov	x2, 1
.L379:
	cmp	x2, x5
	bgt	.L377
	mul	x11, x2, x8
	add	x12, x10, x11
	ldr	x11, [sp, 104]
	ldr	w11, [x11, x12, lsl 2]
	cmp	w11, 0
	beq	.L378
	add	w3, w3, 1
.L378:
	add	x2, x2, 1
	b	.L379
.L377:
	add	x1, x1, 1
	b	.L380
.L376:
	add	x0, x0, 1
	b	.L381
.L375:
	ldr	w0, [sp, 220]
	cmp	w0, w3
	bne	.L382
	add	x0, sp, 72
	mov	x18, x0
	bl	naked_triplets.2830
.L382:
	mov	w3, 0
	ldr	x4, [sp, 144]
	ldr	x5, [sp, 80]
	ldr	x6, [sp, 96]
	ldr	x7, [sp, 136]
	ldr	x8, [sp, 120]
	mov	x0, 1
.L389:
	cmp	x0, x7
	bgt	.L383
	ldr	x1, [sp, 128]
	mul	x1, x0, x1
	add	x9, x4, x1
	mov	x1, 1
.L388:
	cmp	x1, x6
	bgt	.L384
	ldr	x2, [sp, 112]
	mul	x2, x1, x2
	add	x10, x9, x2
	mov	x2, 1
.L387:
	cmp	x2, x5
	bgt	.L385
	mul	x11, x2, x8
	add	x12, x10, x11
	ldr	x11, [sp, 104]
	ldr	w11, [x11, x12, lsl 2]
	cmp	w11, 0
	beq	.L386
	add	w3, w3, 1
.L386:
	add	x2, x2, 1
	b	.L387
.L385:
	add	x1, x1, 1
	b	.L388
.L384:
	add	x0, x0, 1
	b	.L389
.L383:
	ldr	w0, [sp, 220]
	cmp	w0, w3
	bne	.L390
	add	x0, sp, 72
	mov	x18, x0
	bl	hidden_triplets.2828
.L390:
	mov	w3, 0
	ldr	x4, [sp, 144]
	ldr	x5, [sp, 80]
	ldr	x6, [sp, 96]
	ldr	x7, [sp, 136]
	ldr	x8, [sp, 120]
	mov	x0, 1
.L397:
	cmp	x0, x7
	bgt	.L391
	ldr	x1, [sp, 128]
	mul	x1, x0, x1
	add	x9, x4, x1
	mov	x1, 1
.L396:
	cmp	x1, x6
	bgt	.L392
	ldr	x2, [sp, 112]
	mul	x2, x1, x2
	add	x10, x9, x2
	mov	x2, 1
.L395:
	cmp	x2, x5
	bgt	.L393
	mul	x11, x2, x8
	add	x12, x10, x11
	ldr	x11, [sp, 104]
	ldr	w11, [x11, x12, lsl 2]
	cmp	w11, 0
	beq	.L394
	add	w3, w3, 1
.L394:
	add	x2, x2, 1
	b	.L395
.L393:
	add	x1, x1, 1
	b	.L396
.L392:
	add	x0, x0, 1
	b	.L397
.L391:
	ldr	w0, [sp, 220]
	cmp	w0, w3
	bne	.L398
	add	x0, sp, 72
	mov	x18, x0
	bl	specific.2836
.L398:
	mov	w3, 0
	ldr	x4, [sp, 144]
	ldr	x5, [sp, 80]
	ldr	x6, [sp, 96]
	ldr	x7, [sp, 136]
	ldr	x8, [sp, 120]
	mov	x0, 1
.L405:
	cmp	x0, x7
	bgt	.L399
	ldr	x1, [sp, 128]
	mul	x1, x0, x1
	add	x9, x4, x1
	mov	x1, 1
.L404:
	cmp	x1, x6
	bgt	.L400
	ldr	x2, [sp, 112]
	mul	x2, x1, x2
	add	x10, x9, x2
	mov	x2, 1
.L403:
	cmp	x2, x5
	bgt	.L401
	mul	x11, x2, x8
	add	x12, x10, x11
	ldr	x11, [sp, 104]
	ldr	w11, [x11, x12, lsl 2]
	cmp	w11, 0
	beq	.L402
	add	w3, w3, 1
.L402:
	add	x2, x2, 1
	b	.L403
.L401:
	add	x1, x1, 1
	b	.L404
.L400:
	add	x0, x0, 1
	b	.L405
.L399:
	ldr	w0, [sp, 220]
	cmp	w0, w3
	bne	.L366
	add	x0, sp, 72
	mov	x18, x0
	bl	x_wing.2838
.L366:
	mov	w2, 0
	ldr	x3, [sp, 184]
	ldr	x4, [sp, 88]
	ldr	x5, [sp, 176]
	ldr	x6, [sp, 160]
	mov	x0, 1
.L410:
	cmp	x0, x5
	bgt	.L406
	ldr	x1, [sp, 168]
	mul	x1, x0, x1
	add	x7, x3, x1
	mov	x1, 1
.L409:
	cmp	x1, x4
	bgt	.L407
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [sp, 152]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w8, 0
	bne	.L408
	add	w2, w2, 1
.L408:
	add	x1, x1, 1
	b	.L409
.L407:
	add	x0, x0, 1
	b	.L410
.L406:
	str	w2, [sp, 216]
	mov	w0, 1
	str	w0, [sp, 196]
.L423:
	ldr	w0, [sp, 196]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L522
	mov	w0, 1
	str	w0, [sp, 192]
.L422:
	ldr	w0, [sp, 192]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L523
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x1, [sp, 168]
	mul	x0, x1, x0
	ldr	x1, [sp, 184]
	add	x1, x1, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x2, [sp, 160]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [sp, 152]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L413
	mov	w1, 0
	ldr	x4, [sp, 144]
	ldr	x2, [sp, 136]
	ldr	w0, [sp, 196]
	sxtw	x6, w0
	ldr	w0, [sp, 192]
	sxtw	x5, w0
	ldr	x3, [sp, 128]
	ldr	x0, [sp, 120]
	mul	x0, x6, x0
	add	x4, x4, x0
	ldr	x0, [sp, 112]
	mul	x0, x5, x0
	add	x4, x4, x0
	mov	x0, 1
.L416:
	cmp	x0, x2
	bgt	.L414
	mul	x5, x0, x3
	add	x6, x4, x5
	ldr	x5, [sp, 104]
	ldr	w5, [x5, x6, lsl 2]
	cmp	w5, 0
	beq	.L415
	add	w1, w1, 1
.L415:
	add	x0, x0, 1
	b	.L416
.L414:
	cmp	w1, 1
	bne	.L413
	mov	w2, -2147483648
	ldr	x5, [sp, 144]
	ldr	x3, [sp, 136]
	ldr	w0, [sp, 196]
	sxtw	x7, w0
	ldr	w0, [sp, 192]
	sxtw	x6, w0
	cmp	x3, 0
	ble	.L417
	mov	x1, 1
	b	.L418
.L417:
	mov	x1, 0
.L418:
	mov	x8, 0
	ldr	x4, [sp, 128]
	ldr	x0, [sp, 120]
	mul	x0, x7, x0
	add	x5, x5, x0
	ldr	x0, [sp, 112]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L421:
	cmp	x0, x3
	bgt	.L419
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [sp, 104]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w2, w6
	cset	w6, lt
	cmp	w6, 0
	beq	.L420
	mul	x1, x0, x4
	add	x2, x5, x1
	ldr	x1, [sp, 104]
	ldr	w2, [x1, x2, lsl 2]
	add	x1, x0, x8
.L420:
	add	x0, x0, 1
	b	.L421
.L419:
	mov	w0, w1
	sxtw	x0, w0
	ldr	x1, [sp, 128]
	mul	x0, x1, x0
	ldr	x1, [sp, 144]
	add	x1, x1, x0
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x2, [sp, 112]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x2, [sp, 120]
	mul	x0, x2, x0
	add	x2, x1, x0
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x1, [sp, 168]
	mul	x0, x1, x0
	ldr	x1, [sp, 184]
	add	x1, x1, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x3, [sp, 160]
	mul	x0, x3, x0
	add	x1, x1, x0
	ldr	x0, [sp, 104]
	ldr	w2, [x0, x2, lsl 2]
	ldr	x0, [sp, 152]
	str	w2, [x0, x1, lsl 2]
	add	x0, sp, 72
	mov	x18, x0
	bl	update.2840
.L413:
	ldr	w0, [sp, 192]
	add	w0, w0, 1
	str	w0, [sp, 192]
	b	.L422
.L523:
	nop
	ldr	w0, [sp, 196]
	add	w0, w0, 1
	str	w0, [sp, 196]
	b	.L423
.L522:
	nop
	mov	w0, 1
	str	w0, [sp, 196]
.L433:
	ldr	w0, [sp, 196]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L524
	mov	w0, 1
	str	w0, [sp, 228]
.L432:
	ldr	w0, [sp, 228]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L525
	mov	w1, 0
	ldr	x5, [sp, 144]
	ldr	x2, [sp, 96]
	ldr	w0, [sp, 196]
	sxtw	x7, w0
	ldrsw	x6, [sp, 228]
	ldr	w3, [sp, 228]
	ldr	x4, [sp, 112]
	ldr	x0, [sp, 120]
	mul	x0, x7, x0
	add	x5, x5, x0
	ldr	x0, [sp, 128]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L428:
	cmp	x0, x2
	bgt	.L426
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [sp, 104]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w3, w6
	bne	.L427
	add	w1, w1, 1
.L427:
	add	x0, x0, 1
	b	.L428
.L426:
	cmp	w1, 1
	bne	.L526
	mov	w0, 1
	str	w0, [sp, 192]
.L431:
	ldr	w0, [sp, 192]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L526
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x1, [sp, 168]
	mul	x0, x1, x0
	ldr	x1, [sp, 184]
	add	x1, x1, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x2, [sp, 160]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [sp, 152]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L430
	ldrsw	x0, [sp, 228]
	ldr	x1, [sp, 128]
	mul	x0, x1, x0
	ldr	x1, [sp, 144]
	add	x1, x1, x0
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x2, [sp, 112]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x2, [sp, 120]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [sp, 104]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 228]
	cmp	w1, w0
	bne	.L430
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x1, [sp, 168]
	mul	x0, x1, x0
	ldr	x1, [sp, 184]
	add	x1, x1, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x2, [sp, 160]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [sp, 152]
	ldr	w2, [sp, 228]
	str	w2, [x0, x1, lsl 2]
	add	x0, sp, 72
	mov	x18, x0
	bl	update.2840
	b	.L425
.L430:
	ldr	w0, [sp, 192]
	add	w0, w0, 1
	str	w0, [sp, 192]
	b	.L431
.L526:
	nop
	ldr	w0, [sp, 228]
	add	w0, w0, 1
	str	w0, [sp, 228]
	b	.L432
.L525:
	nop
.L425:
	ldr	w0, [sp, 196]
	add	w0, w0, 1
	str	w0, [sp, 196]
	b	.L433
.L524:
	nop
	mov	w0, 1
	str	w0, [sp, 192]
.L443:
	ldr	w0, [sp, 192]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L527
	mov	w0, 1
	str	w0, [sp, 228]
.L442:
	ldr	w0, [sp, 228]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L528
	mov	w1, 0
	ldr	x5, [sp, 144]
	ldr	x2, [sp, 80]
	ldr	w0, [sp, 192]
	sxtw	x7, w0
	ldrsw	x6, [sp, 228]
	ldr	w3, [sp, 228]
	ldr	x4, [sp, 120]
	ldr	x0, [sp, 112]
	mul	x0, x7, x0
	add	x5, x5, x0
	ldr	x0, [sp, 128]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L438:
	cmp	x0, x2
	bgt	.L436
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [sp, 104]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w3, w6
	bne	.L437
	add	w1, w1, 1
.L437:
	add	x0, x0, 1
	b	.L438
.L436:
	cmp	w1, 1
	bne	.L529
	mov	w0, 1
	str	w0, [sp, 196]
.L441:
	ldr	w0, [sp, 196]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L529
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x1, [sp, 168]
	mul	x0, x1, x0
	ldr	x1, [sp, 184]
	add	x1, x1, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x2, [sp, 160]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [sp, 152]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L440
	ldrsw	x0, [sp, 228]
	ldr	x1, [sp, 128]
	mul	x0, x1, x0
	ldr	x1, [sp, 144]
	add	x1, x1, x0
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x2, [sp, 112]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x2, [sp, 120]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [sp, 104]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 228]
	cmp	w1, w0
	bne	.L440
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x1, [sp, 168]
	mul	x0, x1, x0
	ldr	x1, [sp, 184]
	add	x1, x1, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x2, [sp, 160]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [sp, 152]
	ldr	w2, [sp, 228]
	str	w2, [x0, x1, lsl 2]
	add	x0, sp, 72
	mov	x18, x0
	bl	update.2840
	b	.L435
.L440:
	ldr	w0, [sp, 196]
	add	w0, w0, 1
	str	w0, [sp, 196]
	b	.L441
.L529:
	nop
	ldr	w0, [sp, 228]
	add	w0, w0, 1
	str	w0, [sp, 228]
	b	.L442
.L528:
	nop
.L435:
	ldr	w0, [sp, 192]
	add	w0, w0, 1
	str	w0, [sp, 192]
	b	.L443
.L527:
	nop
	str	wzr, [sp, 248]
.L459:
	ldr	w0, [sp, 248]
	cmp	w0, 2
	cset	w0, gt
	cmp	w0, 0
	bne	.L530
	str	wzr, [sp, 252]
.L458:
	ldr	w0, [sp, 252]
	cmp	w0, 2
	cset	w0, gt
	cmp	w0, 0
	bne	.L531
	mov	w0, 1
	str	w0, [sp, 228]
.L457:
	ldr	w0, [sp, 228]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L532
	mov	w2, 0
	ldr	x7, [sp, 144]
	ldr	w1, [sp, 248]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x11, w0
	ldr	w0, [sp, 248]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x4, w0
	ldr	w1, [sp, 252]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w1, [sp, 252]
	add	w3, w1, 1
	mov	w1, w3
	lsl	w1, w1, 1
	add	w1, w1, w3
	sxtw	x3, w1
	ldrsw	x8, [sp, 228]
	ldr	w5, [sp, 228]
	ldr	x6, [sp, 120]
	ldr	x1, [sp, 128]
	mul	x1, x8, x1
	add	x7, x7, x1
.L451:
	cmp	x0, x3
	bgt	.L447
	ldr	x1, [sp, 112]
	mul	x1, x0, x1
	add	x8, x7, x1
	mov	x1, x11
.L450:
	cmp	x1, x4
	bgt	.L448
	mul	x9, x1, x6
	add	x10, x8, x9
	ldr	x9, [sp, 104]
	ldr	w9, [x9, x10, lsl 2]
	cmp	w5, w9
	bne	.L449
	add	w2, w2, 1
.L449:
	add	x1, x1, 1
	b	.L450
.L448:
	add	x0, x0, 1
	b	.L451
.L447:
	cmp	w2, 1
	bne	.L533
	ldr	w1, [sp, 248]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w3, w0, 1
	ldr	w0, [sp, 248]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w2, w0, w1
	str	w3, [sp, 196]
.L456:
	ldr	w0, [sp, 196]
	cmp	w0, w2
	cset	w0, gt
	cmp	w0, 0
	bne	.L533
	ldr	w1, [sp, 252]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w3, w0, 1
	ldr	w0, [sp, 252]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	str	w3, [sp, 192]
.L455:
	ldr	w0, [sp, 192]
	cmp	w0, w1
	cset	w0, gt
	cmp	w0, 0
	bne	.L534
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x3, [sp, 168]
	mul	x0, x3, x0
	ldr	x3, [sp, 184]
	add	x3, x3, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x4, [sp, 160]
	mul	x0, x4, x0
	add	x3, x3, x0
	ldr	x0, [sp, 152]
	ldr	w0, [x0, x3, lsl 2]
	cmp	w0, 0
	bne	.L454
	ldrsw	x0, [sp, 228]
	ldr	x3, [sp, 128]
	mul	x0, x3, x0
	ldr	x3, [sp, 144]
	add	x3, x3, x0
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x4, [sp, 112]
	mul	x0, x4, x0
	add	x3, x3, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x4, [sp, 120]
	mul	x0, x4, x0
	add	x3, x3, x0
	ldr	x0, [sp, 104]
	ldr	w0, [x0, x3, lsl 2]
	ldr	w3, [sp, 228]
	cmp	w3, w0
	bne	.L454
	ldr	w0, [sp, 192]
	sxtw	x0, w0
	ldr	x1, [sp, 168]
	mul	x0, x1, x0
	ldr	x1, [sp, 184]
	add	x1, x1, x0
	ldr	w0, [sp, 196]
	sxtw	x0, w0
	ldr	x2, [sp, 160]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [sp, 152]
	ldr	w2, [sp, 228]
	str	w2, [x0, x1, lsl 2]
	add	x0, sp, 72
	mov	x18, x0
	bl	update.2840
	b	.L446
.L454:
	ldr	w0, [sp, 192]
	add	w0, w0, 1
	str	w0, [sp, 192]
	b	.L455
.L534:
	nop
	ldr	w0, [sp, 196]
	add	w0, w0, 1
	str	w0, [sp, 196]
	b	.L456
.L533:
	nop
	ldr	w0, [sp, 228]
	add	w0, w0, 1
	str	w0, [sp, 228]
	b	.L457
.L532:
	nop
.L446:
	ldr	w0, [sp, 252]
	add	w0, w0, 1
	str	w0, [sp, 252]
	b	.L458
.L531:
	nop
	ldr	w0, [sp, 248]
	add	w0, w0, 1
	str	w0, [sp, 248]
	b	.L459
.L530:
	nop
	mov	w2, 0
	ldr	x3, [sp, 184]
	ldr	x4, [sp, 88]
	ldr	x5, [sp, 176]
	ldr	x6, [sp, 160]
	mov	x0, 1
.L464:
	cmp	x0, x5
	bgt	.L460
	ldr	x1, [sp, 168]
	mul	x1, x0, x1
	add	x7, x3, x1
	mov	x1, 1
.L463:
	cmp	x1, x4
	bgt	.L461
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [sp, 152]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w8, 0
	bne	.L462
	add	w2, w2, 1
.L462:
	add	x1, x1, 1
	b	.L463
.L461:
	add	x0, x0, 1
	b	.L464
.L460:
	ldr	x0, [sp, 72]
	ldr	w1, [x0]
	cmp	w2, 0
	cset	w0, ne
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L465
	mov	w2, 0
	ldr	x3, [sp, 184]
	ldr	x4, [sp, 88]
	ldr	x5, [sp, 176]
	ldr	x6, [sp, 160]
	mov	x0, 1
.L470:
	cmp	x0, x5
	bgt	.L466
	ldr	x1, [sp, 168]
	mul	x1, x0, x1
	add	x7, x3, x1
	mov	x1, 1
.L469:
	cmp	x1, x4
	bgt	.L467
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [sp, 152]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w8, 0
	bne	.L468
	add	w2, w2, 1
.L468:
	add	x1, x1, 1
	b	.L469
.L467:
	add	x0, x0, 1
	b	.L470
.L466:
	adrp	x0, __logic_MOD_fiendish
	add	x0, x0, :lo12:__logic_MOD_fiendish
	ldr	w0, [x0]
	ldr	w1, [sp, 216]
	sub	w1, w1, w2
	cmp	w1, w0
	csel	w1, w1, w0, le
	adrp	x0, __logic_MOD_fiendish
	add	x0, x0, :lo12:__logic_MOD_fiendish
	str	w1, [x0]
.L465:
	ldr	w0, [sp, 244]
	cmp	w0, 1
	bne	.L471
	mov	w3, 0
	ldr	x4, [sp, 144]
	ldr	x5, [sp, 80]
	ldr	x6, [sp, 96]
	ldr	x7, [sp, 136]
	ldr	x8, [sp, 120]
	mov	x0, 1
.L478:
	cmp	x0, x7
	bgt	.L472
	ldr	x1, [sp, 128]
	mul	x1, x0, x1
	add	x9, x4, x1
	mov	x1, 1
.L477:
	cmp	x1, x6
	bgt	.L473
	ldr	x2, [sp, 112]
	mul	x2, x1, x2
	add	x10, x9, x2
	mov	x2, 1
.L476:
	cmp	x2, x5
	bgt	.L474
	mul	x11, x2, x8
	add	x12, x10, x11
	ldr	x11, [sp, 104]
	ldr	w11, [x11, x12, lsl 2]
	cmp	w11, 0
	beq	.L475
	add	w3, w3, 1
.L475:
	add	x2, x2, 1
	b	.L476
.L474:
	add	x1, x1, 1
	b	.L477
.L473:
	add	x0, x0, 1
	b	.L478
.L472:
	mov	w2, 0
	ldr	x4, [sp, 184]
	ldr	x5, [sp, 88]
	ldr	x6, [sp, 176]
	ldr	x7, [sp, 160]
	mov	x0, 1
.L483:
	cmp	x0, x6
	bgt	.L479
	ldr	x1, [sp, 168]
	mul	x1, x0, x1
	add	x8, x4, x1
	mov	x1, 1
.L482:
	cmp	x1, x5
	bgt	.L480
	mul	x9, x1, x7
	add	x10, x8, x9
	ldr	x9, [sp, 152]
	ldr	w9, [x9, x10, lsl 2]
	cmp	w9, 0
	bne	.L481
	add	w2, w2, 1
.L481:
	add	x1, x1, 1
	b	.L482
.L480:
	add	x0, x0, 1
	b	.L483
.L479:
	add	w1, w3, w2
	adrp	x0, __logic_MOD_to_do
	add	x0, x0, :lo12:__logic_MOD_to_do
	str	w1, [x0]
.L471:
	mov	w3, 0
	ldr	x4, [sp, 144]
	ldr	x5, [sp, 80]
	ldr	x6, [sp, 96]
	ldr	x7, [sp, 136]
	ldr	x8, [sp, 120]
	mov	x0, 1
.L490:
	cmp	x0, x7
	bgt	.L484
	ldr	x1, [sp, 128]
	mul	x1, x0, x1
	add	x9, x4, x1
	mov	x1, 1
.L489:
	cmp	x1, x6
	bgt	.L485
	ldr	x2, [sp, 112]
	mul	x2, x1, x2
	add	x10, x9, x2
	mov	x2, 1
.L488:
	cmp	x2, x5
	bgt	.L486
	mul	x11, x2, x8
	add	x12, x10, x11
	ldr	x11, [sp, 104]
	ldr	w11, [x11, x12, lsl 2]
	cmp	w11, 0
	beq	.L487
	add	w3, w3, 1
.L487:
	add	x2, x2, 1
	b	.L488
.L486:
	add	x1, x1, 1
	b	.L489
.L485:
	add	x0, x0, 1
	b	.L490
.L484:
	ldr	w0, [sp, 220]
	cmp	w0, w3
	beq	.L491
	str	wzr, [sp, 240]
.L491:
	ldr	x0, [sp, 72]
	ldr	w0, [x0]
	eor	w1, w0, 1
	ldr	w0, [sp, 244]
	cmp	w0, 1
	cset	w0, gt
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L492
	ldr	w0, [sp, 240]
	cmp	w0, 0
	beq	.L493
	ldr	w0, [sp, 244]
	sub	w0, w0, #1
	str	w0, [sp, 244]
	b	.L494
.L493:
	mov	w0, 1
	str	w0, [sp, 240]
.L492:
	mov	w2, 1
	ldr	x3, [sp, 184]
	ldr	x4, [sp, 88]
	ldr	x5, [sp, 176]
	ldr	x6, [sp, 160]
	mov	x0, 1
.L499:
	cmp	x0, x5
	bgt	.L495
	ldr	x1, [sp, 168]
	mul	x1, x0, x1
	add	x7, x3, x1
	mov	x1, 1
.L498:
	cmp	x1, x4
	bgt	.L496
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [sp, 152]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w8, 0
	bne	.L497
	mov	w2, 0
	b	.L495
.L497:
	add	x1, x1, 1
	b	.L498
.L496:
	add	x0, x0, 1
	b	.L499
.L495:
	cmp	w2, 0
	bne	.L535
	b	.L344
.L535:
	nop
.L494:
	mov	w3, 0
	ldr	x4, [sp, 144]
	ldr	x5, [sp, 80]
	ldr	x6, [sp, 96]
	ldr	x7, [sp, 136]
	ldr	x8, [sp, 120]
	mov	x0, 1
.L506:
	cmp	x0, x7
	bgt	.L500
	ldr	x1, [sp, 128]
	mul	x1, x0, x1
	add	x9, x4, x1
	mov	x1, 1
.L505:
	cmp	x1, x6
	bgt	.L501
	ldr	x2, [sp, 112]
	mul	x2, x1, x2
	add	x10, x9, x2
	mov	x2, 1
.L504:
	cmp	x2, x5
	bgt	.L502
	mul	x11, x2, x8
	add	x12, x10, x11
	ldr	x11, [sp, 104]
	ldr	w11, [x11, x12, lsl 2]
	cmp	w11, 0
	beq	.L503
	add	w3, w3, 1
.L503:
	add	x2, x2, 1
	b	.L504
.L502:
	add	x1, x1, 1
	b	.L505
.L501:
	add	x0, x0, 1
	b	.L506
.L500:
	mov	w2, 0
	ldr	x4, [sp, 184]
	ldr	x5, [sp, 88]
	ldr	x6, [sp, 176]
	ldr	x7, [sp, 160]
	mov	x0, 1
.L511:
	cmp	x0, x6
	bgt	.L507
	ldr	x1, [sp, 168]
	mul	x1, x0, x1
	add	x8, x4, x1
	mov	x1, 1
.L510:
	cmp	x1, x5
	bgt	.L508
	mul	x9, x1, x7
	add	x10, x8, x9
	ldr	x9, [sp, 152]
	ldr	w9, [x9, x10, lsl 2]
	cmp	w9, 0
	bne	.L509
	add	w2, w2, 1
.L509:
	add	x1, x1, 1
	b	.L510
.L508:
	add	x0, x0, 1
	b	.L511
.L507:
	add	w1, w3, w2
	adrp	x0, __logic_MOD_to_do
	add	x0, x0, :lo12:__logic_MOD_to_do
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, __logic_MOD_two_in_a_bed
	add	x0, x0, :lo12:__logic_MOD_two_in_a_bed
	ldr	w0, [x0]
	add	w2, w1, w0
	ldr	w1, [sp, 244]
	mov	w0, w1
	lsl	w0, w0, 3
	add	w0, w0, w1
	add	w1, w2, w0
	adrp	x0, __logic_MOD_two_in_a_bed
	add	x0, x0, :lo12:__logic_MOD_two_in_a_bed
	ldr	w0, [x0, 4]
	add	w1, w1, w0
	adrp	x0, __logic_MOD_three_in_a_bed
	add	x0, x0, :lo12:__logic_MOD_three_in_a_bed
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, __logic_MOD_naked3
	add	x0, x0, :lo12:__logic_MOD_naked3
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, __logic_MOD_clear_out
	add	x0, x0, :lo12:__logic_MOD_clear_out
	ldr	w0, [x0]
	add	w0, w1, w0
	mov	w1, 36409
	movk	w1, 0x38e3, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 1
	asr	w0, w0, 31
	sub	w0, w1, w0
	sub	w0, w0, #9
	str	w0, [sp, 212]
	mov	w2, 0
	ldr	x3, [sp, 184]
	ldr	x4, [sp, 88]
	ldr	x5, [sp, 176]
	ldr	x6, [sp, 160]
	mov	x0, 1
.L515:
	cmp	x0, x5
	bgt	.L512
	ldr	x1, [sp, 168]
	mul	x1, x0, x1
	add	x9, x3, x1
	mov	x1, 1
.L514:
	cmp	x1, x4
	bgt	.L513
	mul	x7, x1, x6
	add	x8, x9, x7
	ldr	x7, [sp, 152]
	ldr	w7, [x7, x8, lsl 2]
	add	w2, w2, w7
	add	x1, x1, 1
	b	.L514
.L513:
	add	x0, x0, 1
	b	.L515
.L512:
	cmp	w2, 405
	bne	.L536
	ldr	x0, [sp, 40]
	mov	w1, 1
	str	w1, [x0]
.L536:
	nop
	ldp	x29, x30, [sp], 256
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	__logic_MOD_new_solver, .-__logic_MOD_new_solver
	.align	2
	.type	naked_triplets.2830, %function
naked_triplets.2830:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	mov	x0, x18
	str	x18, [sp, 8]
	mov	w1, 1
	str	w1, [x0, 124]
.L588:
	ldr	w1, [x0, 124]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L710
	mov	w2, 0
	ldr	x5, [x0, 112]
	ldr	x3, [x0, 104]
	ldr	w1, [x0, 124]
	sxtw	x6, w1
	ldr	x4, [x0, 96]
	ldr	x1, [x0, 88]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L541:
	cmp	x1, x3
	bgt	.L539
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 80]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L540
	add	w2, w2, 1
.L540:
	add	x1, x1, 1
	b	.L541
.L539:
	cmp	w2, 3
	beq	.L711
	mov	w1, 1
	str	w1, [sp, 60]
.L587:
	ldr	w1, [sp, 60]
	cmp	w1, 7
	cset	w1, gt
	cmp	w1, 0
	bne	.L711
	ldrsw	x1, [sp, 60]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L712
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	w1, [x0, 124]
	sxtw	x7, w1
	ldrsw	x6, [sp, 60]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L546:
	cmp	x1, x3
	bgt	.L544
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L545
	add	w2, w2, 1
.L545:
	add	x1, x1, 1
	b	.L546
.L544:
	cmp	w2, 3
	bne	.L712
	ldr	w1, [sp, 60]
	add	w1, w1, 1
	str	w1, [sp, 56]
.L586:
	ldr	w1, [sp, 56]
	cmp	w1, 8
	cset	w1, gt
	cmp	w1, 0
	bne	.L712
	ldrsw	x1, [sp, 56]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L713
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	w1, [x0, 124]
	sxtw	x7, w1
	ldrsw	x6, [sp, 56]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L550:
	cmp	x1, x3
	bgt	.L548
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L549
	add	w2, w2, 1
.L549:
	add	x1, x1, 1
	b	.L550
.L548:
	cmp	w2, 3
	bne	.L713
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x10, w1
	ldrsw	x6, [sp, 60]
	ldr	w1, [x0, 124]
	sxtw	x9, w1
	ldrsw	x8, [sp, 56]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L553:
	cmp	x1, x3
	bgt	.L551
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L552
	mov	w2, 1
	b	.L551
.L552:
	add	x1, x1, 1
	b	.L553
.L551:
	cmp	w2, 0
	bne	.L713
	ldr	w1, [sp, 56]
	add	w1, w1, 1
	str	w1, [sp, 52]
.L585:
	ldr	w1, [sp, 52]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L713
	ldrsw	x1, [sp, 52]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L714
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	w1, [x0, 124]
	sxtw	x7, w1
	ldrsw	x6, [sp, 52]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L557:
	cmp	x1, x3
	bgt	.L555
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L556
	add	w2, w2, 1
.L556:
	add	x1, x1, 1
	b	.L557
.L555:
	cmp	w2, 3
	bne	.L714
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x10, w1
	ldrsw	x6, [sp, 60]
	ldr	w1, [x0, 124]
	sxtw	x9, w1
	ldrsw	x8, [sp, 52]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L560:
	cmp	x1, x3
	bgt	.L558
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L559
	mov	w2, 1
	b	.L558
.L559:
	add	x1, x1, 1
	b	.L560
.L558:
	cmp	w2, 0
	bne	.L714
	mov	w1, -2147483648
	ldr	x3, [x0, 72]
	ldr	x7, [x0, 64]
	ldr	w2, [x0, 124]
	sxtw	x5, w2
	ldrsw	x4, [sp, 60]
	ldr	x6, [x0, 56]
	ldr	x2, [x0, 48]
	mul	x2, x5, x2
	add	x3, x3, x2
	ldr	x2, [x0, 40]
	mul	x2, x4, x2
	add	x5, x3, x2
	mov	x2, 1
.L562:
	cmp	x2, x7
	bgt	.L561
	mul	x3, x2, x6
	add	x4, x5, x3
	ldr	x3, [x0, 32]
	ldr	w3, [x3, x4, lsl 2]
	cmp	w1, w3
	csel	w1, w1, w3, ge
	add	x2, x2, 1
	b	.L562
.L561:
	str	w1, [sp, 36]
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 24]
	ldr	w1, [x0, 124]
	sxtw	x8, w1
	ldrsw	x7, [sp, 36]
	ldr	w4, [sp, 36]
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L565:
	cmp	x1, x3
	bgt	.L563
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L564
	add	w2, w2, 1
.L564:
	add	x1, x1, 1
	b	.L565
.L563:
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	ldr	w1, [x1]
	add	w2, w2, w1
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 24]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x10, w1
	ldrsw	x6, [sp, 36]
	ldr	w1, [x0, 124]
	sxtw	x9, w1
	ldrsw	x8, [sp, 36]
	ldr	w3, [sp, 36]
	ldr	x4, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L568:
	cmp	x1, x2
	bgt	.L566
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L567
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L567:
	add	x1, x1, 1
	b	.L568
.L566:
	mov	w1, -2147483648
	ldr	x3, [x0, 72]
	ldr	x7, [x0, 64]
	ldr	w2, [x0, 124]
	sxtw	x5, w2
	ldrsw	x4, [sp, 60]
	ldr	x6, [x0, 56]
	ldr	x2, [x0, 48]
	mul	x2, x5, x2
	add	x3, x3, x2
	ldr	x2, [x0, 40]
	mul	x2, x4, x2
	add	x5, x3, x2
	mov	x2, 1
.L570:
	cmp	x2, x7
	bgt	.L569
	mul	x3, x2, x6
	add	x4, x5, x3
	ldr	x3, [x0, 32]
	ldr	w3, [x3, x4, lsl 2]
	cmp	w1, w3
	csel	w1, w1, w3, ge
	add	x2, x2, 1
	b	.L570
.L569:
	str	w1, [sp, 32]
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 24]
	ldr	w1, [x0, 124]
	sxtw	x8, w1
	ldrsw	x7, [sp, 32]
	ldr	w4, [sp, 32]
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L573:
	cmp	x1, x3
	bgt	.L571
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L572
	add	w2, w2, 1
.L572:
	add	x1, x1, 1
	b	.L573
.L571:
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	ldr	w1, [x1]
	add	w2, w2, w1
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 24]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x10, w1
	ldrsw	x6, [sp, 32]
	ldr	w1, [x0, 124]
	sxtw	x9, w1
	ldrsw	x8, [sp, 32]
	ldr	w3, [sp, 32]
	ldr	x4, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L576:
	cmp	x1, x2
	bgt	.L574
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L575
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L575:
	add	x1, x1, 1
	b	.L576
.L574:
	mov	w1, -2147483648
	ldr	x3, [x0, 72]
	ldr	x7, [x0, 64]
	ldr	w2, [x0, 124]
	sxtw	x5, w2
	ldrsw	x4, [sp, 60]
	ldr	x6, [x0, 56]
	ldr	x2, [x0, 48]
	mul	x2, x5, x2
	add	x3, x3, x2
	ldr	x2, [x0, 40]
	mul	x2, x4, x2
	add	x5, x3, x2
	mov	x2, 1
.L578:
	cmp	x2, x7
	bgt	.L577
	mul	x3, x2, x6
	add	x4, x5, x3
	ldr	x3, [x0, 32]
	ldr	w3, [x3, x4, lsl 2]
	cmp	w1, w3
	csel	w1, w1, w3, ge
	add	x2, x2, 1
	b	.L578
.L577:
	str	w1, [sp, 28]
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 24]
	ldr	w1, [x0, 124]
	sxtw	x8, w1
	ldrsw	x7, [sp, 28]
	ldr	w4, [sp, 28]
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L581:
	cmp	x1, x3
	bgt	.L579
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L580
	add	w2, w2, 1
.L580:
	add	x1, x1, 1
	b	.L581
.L579:
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	ldr	w1, [x1]
	add	w2, w2, w1
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 24]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x10, w1
	ldrsw	x6, [sp, 28]
	ldr	w1, [x0, 124]
	sxtw	x9, w1
	ldrsw	x8, [sp, 28]
	ldr	w3, [sp, 28]
	ldr	x4, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L584:
	cmp	x1, x2
	bgt	.L582
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L583
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L583:
	add	x1, x1, 1
	b	.L584
.L582:
	ldrsw	x1, [sp, 36]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 60]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 36]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 36]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 56]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 36]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 36]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 52]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 36]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 32]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 60]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 32]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 32]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 56]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 32]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 32]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 52]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 32]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 28]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 60]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 28]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 28]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 56]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 28]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 28]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 52]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 28]
	str	w3, [x1, x2, lsl 2]
	b	.L547
.L714:
	nop
	ldr	w1, [sp, 52]
	add	w1, w1, 1
	str	w1, [sp, 52]
	b	.L585
.L713:
	nop
.L547:
	ldr	w1, [sp, 56]
	add	w1, w1, 1
	str	w1, [sp, 56]
	b	.L586
.L712:
	nop
	ldr	w1, [sp, 60]
	add	w1, w1, 1
	str	w1, [sp, 60]
	b	.L587
.L711:
	nop
	ldr	w1, [x0, 124]
	add	w1, w1, 1
	str	w1, [x0, 124]
	b	.L588
.L710:
	nop
	mov	w1, 1
	str	w1, [x0, 120]
.L639:
	ldr	w1, [x0, 120]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L715
	mov	w2, 0
	ldr	x5, [x0, 112]
	ldr	x3, [x0, 16]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldr	x4, [x0, 88]
	ldr	x1, [x0, 96]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L592:
	cmp	x1, x3
	bgt	.L590
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 80]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L591
	add	w2, w2, 1
.L591:
	add	x1, x1, 1
	b	.L592
.L590:
	cmp	w2, 3
	beq	.L716
	mov	w1, 1
	str	w1, [sp, 48]
.L638:
	ldr	w1, [sp, 48]
	cmp	w1, 7
	cset	w1, gt
	cmp	w1, 0
	bne	.L716
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 48]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L717
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 48]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L597:
	cmp	x1, x3
	bgt	.L595
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L596
	add	w2, w2, 1
.L596:
	add	x1, x1, 1
	b	.L597
.L595:
	cmp	w2, 3
	bne	.L717
	ldr	w1, [sp, 48]
	add	w1, w1, 1
	str	w1, [sp, 44]
.L637:
	ldr	w1, [sp, 44]
	cmp	w1, 8
	cset	w1, gt
	cmp	w1, 0
	bne	.L717
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 44]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L718
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 44]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L601:
	cmp	x1, x3
	bgt	.L599
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L600
	add	w2, w2, 1
.L600:
	add	x1, x1, 1
	b	.L601
.L599:
	cmp	w2, 3
	bne	.L718
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 48]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldrsw	x9, [sp, 44]
	ldr	w1, [x0, 120]
	sxtw	x8, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L604:
	cmp	x1, x3
	bgt	.L602
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L603
	mov	w2, 1
	b	.L602
.L603:
	add	x1, x1, 1
	b	.L604
.L602:
	cmp	w2, 0
	bne	.L718
	ldr	w1, [sp, 44]
	add	w1, w1, 1
	str	w1, [sp, 40]
.L636:
	ldr	w1, [sp, 40]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L718
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L719
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 40]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L608:
	cmp	x1, x3
	bgt	.L606
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L607
	add	w2, w2, 1
.L607:
	add	x1, x1, 1
	b	.L608
.L606:
	cmp	w2, 3
	bne	.L719
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 48]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldrsw	x9, [sp, 40]
	ldr	w1, [x0, 120]
	sxtw	x8, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L611:
	cmp	x1, x3
	bgt	.L609
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L610
	mov	w2, 1
	b	.L609
.L610:
	add	x1, x1, 1
	b	.L611
.L609:
	cmp	w2, 0
	bne	.L719
	mov	w1, -2147483648
	ldr	x3, [x0, 72]
	ldr	x7, [x0, 64]
	ldrsw	x5, [sp, 48]
	ldr	w2, [x0, 120]
	sxtw	x4, w2
	ldr	x6, [x0, 56]
	ldr	x2, [x0, 48]
	mul	x2, x5, x2
	add	x3, x3, x2
	ldr	x2, [x0, 40]
	mul	x2, x4, x2
	add	x5, x3, x2
	mov	x2, 1
.L613:
	cmp	x2, x7
	bgt	.L612
	mul	x3, x2, x6
	add	x4, x5, x3
	ldr	x3, [x0, 32]
	ldr	w3, [x3, x4, lsl 2]
	cmp	w1, w3
	csel	w1, w1, w3, ge
	add	x2, x2, 1
	b	.L613
.L612:
	str	w1, [sp, 36]
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 8]
	ldr	w1, [x0, 120]
	sxtw	x8, w1
	ldrsw	x7, [sp, 36]
	ldr	w4, [sp, 36]
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L616:
	cmp	x1, x3
	bgt	.L614
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L615
	add	w2, w2, 1
.L615:
	add	x1, x1, 1
	b	.L616
.L614:
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	ldr	w1, [x1]
	add	w2, w2, w1
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 8]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 120]
	sxtw	x10, w1
	ldrsw	x6, [sp, 36]
	ldr	w1, [x0, 120]
	sxtw	x9, w1
	ldrsw	x8, [sp, 36]
	ldr	w3, [sp, 36]
	ldr	x4, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L619:
	cmp	x1, x2
	bgt	.L617
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L618
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L618:
	add	x1, x1, 1
	b	.L619
.L617:
	mov	w1, -2147483648
	ldr	x3, [x0, 72]
	ldr	x7, [x0, 64]
	ldrsw	x5, [sp, 48]
	ldr	w2, [x0, 120]
	sxtw	x4, w2
	ldr	x6, [x0, 56]
	ldr	x2, [x0, 48]
	mul	x2, x5, x2
	add	x3, x3, x2
	ldr	x2, [x0, 40]
	mul	x2, x4, x2
	add	x5, x3, x2
	mov	x2, 1
.L621:
	cmp	x2, x7
	bgt	.L620
	mul	x3, x2, x6
	add	x4, x5, x3
	ldr	x3, [x0, 32]
	ldr	w3, [x3, x4, lsl 2]
	cmp	w1, w3
	csel	w1, w1, w3, ge
	add	x2, x2, 1
	b	.L621
.L620:
	str	w1, [sp, 32]
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 8]
	ldr	w1, [x0, 120]
	sxtw	x8, w1
	ldrsw	x7, [sp, 32]
	ldr	w4, [sp, 32]
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L624:
	cmp	x1, x3
	bgt	.L622
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L623
	add	w2, w2, 1
.L623:
	add	x1, x1, 1
	b	.L624
.L622:
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	ldr	w1, [x1]
	add	w2, w2, w1
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 8]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 120]
	sxtw	x10, w1
	ldrsw	x6, [sp, 32]
	ldr	w1, [x0, 120]
	sxtw	x9, w1
	ldrsw	x8, [sp, 32]
	ldr	w3, [sp, 32]
	ldr	x4, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L627:
	cmp	x1, x2
	bgt	.L625
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L626
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L626:
	add	x1, x1, 1
	b	.L627
.L625:
	mov	w1, -2147483648
	ldr	x3, [x0, 72]
	ldr	x7, [x0, 64]
	ldrsw	x5, [sp, 48]
	ldr	w2, [x0, 120]
	sxtw	x4, w2
	ldr	x6, [x0, 56]
	ldr	x2, [x0, 48]
	mul	x2, x5, x2
	add	x3, x3, x2
	ldr	x2, [x0, 40]
	mul	x2, x4, x2
	add	x5, x3, x2
	mov	x2, 1
.L629:
	cmp	x2, x7
	bgt	.L628
	mul	x3, x2, x6
	add	x4, x5, x3
	ldr	x3, [x0, 32]
	ldr	w3, [x3, x4, lsl 2]
	cmp	w1, w3
	csel	w1, w1, w3, ge
	add	x2, x2, 1
	b	.L629
.L628:
	str	w1, [sp, 28]
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 8]
	ldr	w1, [x0, 120]
	sxtw	x8, w1
	ldrsw	x7, [sp, 28]
	ldr	w4, [sp, 28]
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L632:
	cmp	x1, x3
	bgt	.L630
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L631
	add	w2, w2, 1
.L631:
	add	x1, x1, 1
	b	.L632
.L630:
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	ldr	w1, [x1]
	add	w2, w2, w1
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 8]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 120]
	sxtw	x10, w1
	ldrsw	x6, [sp, 28]
	ldr	w1, [x0, 120]
	sxtw	x9, w1
	ldrsw	x8, [sp, 28]
	ldr	w3, [sp, 28]
	ldr	x4, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L635:
	cmp	x1, x2
	bgt	.L633
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L634
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L634:
	add	x1, x1, 1
	b	.L635
.L633:
	ldrsw	x1, [sp, 36]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 48]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 36]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 36]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 44]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 36]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 36]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 36]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 32]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 48]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 32]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 32]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 44]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 32]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 32]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 32]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 28]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 48]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 28]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 28]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 44]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 28]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 28]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 28]
	str	w3, [x1, x2, lsl 2]
	b	.L598
.L719:
	nop
	ldr	w1, [sp, 40]
	add	w1, w1, 1
	str	w1, [sp, 40]
	b	.L636
.L718:
	nop
.L598:
	ldr	w1, [sp, 44]
	add	w1, w1, 1
	str	w1, [sp, 44]
	b	.L637
.L717:
	nop
	ldr	w1, [sp, 48]
	add	w1, w1, 1
	str	w1, [sp, 48]
	b	.L638
.L716:
	nop
	ldr	w1, [x0, 120]
	add	w1, w1, 1
	str	w1, [x0, 120]
	b	.L639
.L715:
	nop
	mov	w1, 1
	str	w1, [sp, 60]
.L709:
	ldr	w1, [sp, 60]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L720
	mov	w1, 1
	str	w1, [sp, 48]
.L708:
	ldr	w1, [sp, 48]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L721
	ldrsw	x1, [sp, 60]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 48]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L722
	ldr	w1, [sp, 48]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	str	w1, [sp, 24]
	ldr	w1, [sp, 60]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	str	w1, [sp, 20]
	mov	w3, 0
	ldr	x5, [x0, 112]
	ldr	w2, [sp, 24]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x11, w1
	ldr	w1, [sp, 24]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x6, w1
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 20]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldr	x7, [x0, 88]
.L647:
	cmp	x1, x4
	bgt	.L643
	ldr	x2, [x0, 96]
	mul	x2, x1, x2
	add	x8, x5, x2
	mov	x2, x11
.L646:
	cmp	x2, x6
	bgt	.L644
	mul	x9, x2, x7
	add	x10, x8, x9
	ldr	x9, [x0, 80]
	ldr	w9, [x9, x10, lsl 2]
	cmp	w9, 0
	bne	.L645
	add	w3, w3, 1
.L645:
	add	x2, x2, 1
	b	.L646
.L644:
	add	x1, x1, 1
	b	.L647
.L643:
	cmp	w3, 3
	beq	.L723
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 48]
	ldrsw	x6, [sp, 60]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L651:
	cmp	x1, x3
	bgt	.L649
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L650
	add	w2, w2, 1
.L650:
	add	x1, x1, 1
	b	.L651
.L649:
	cmp	w2, 3
	bne	.L722
	mov	w1, 1
	str	w1, [sp, 56]
.L707:
	ldr	w1, [sp, 56]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L722
	ldr	w1, [sp, 56]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	ldr	w2, [sp, 20]
	cmp	w2, w1
	bne	.L724
	mov	w1, 1
	str	w1, [sp, 44]
.L706:
	ldr	w1, [sp, 44]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L724
	ldr	w1, [sp, 44]
	sub	w2, w1, #1
	mov	w1, w2
	lsl	w1, w1, 3
	add	w2, w1, w2
	ldr	w1, [sp, 56]
	add	w3, w2, w1
	ldr	w1, [sp, 48]
	sub	w2, w1, #1
	mov	w1, w2
	lsl	w1, w1, 3
	add	w2, w1, w2
	ldr	w1, [sp, 60]
	add	w1, w2, w1
	cmp	w3, w1
	ble	.L725
	ldrsw	x1, [sp, 56]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 44]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L725
	ldr	w1, [sp, 44]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	ldr	w2, [sp, 24]
	cmp	w2, w1
	bne	.L725
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 44]
	ldrsw	x6, [sp, 56]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L656:
	cmp	x1, x3
	bgt	.L654
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L655
	add	w2, w2, 1
.L655:
	add	x1, x1, 1
	b	.L656
.L654:
	cmp	w2, 3
	bne	.L725
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 48]
	ldrsw	x6, [sp, 60]
	ldrsw	x9, [sp, 44]
	ldrsw	x8, [sp, 56]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L659:
	cmp	x1, x3
	bgt	.L657
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L658
	mov	w2, 1
	b	.L657
.L658:
	add	x1, x1, 1
	b	.L659
.L657:
	cmp	w2, 0
	bne	.L725
	mov	w1, 1
	str	w1, [sp, 52]
.L705:
	ldr	w1, [sp, 52]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L725
	ldr	w1, [sp, 52]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	ldr	w2, [sp, 20]
	cmp	w2, w1
	bne	.L726
	mov	w1, 1
	str	w1, [sp, 40]
.L704:
	ldr	w1, [sp, 40]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L726
	ldr	w1, [sp, 40]
	sub	w2, w1, #1
	mov	w1, w2
	lsl	w1, w1, 3
	add	w2, w1, w2
	ldr	w1, [sp, 52]
	add	w3, w2, w1
	ldr	w1, [sp, 44]
	sub	w2, w1, #1
	mov	w1, w2
	lsl	w1, w1, 3
	add	w2, w1, w2
	ldr	w1, [sp, 56]
	add	w1, w2, w1
	cmp	w3, w1
	ble	.L727
	ldrsw	x1, [sp, 52]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L727
	ldr	w1, [sp, 40]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	ldr	w2, [sp, 24]
	cmp	w2, w1
	bne	.L727
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 40]
	ldrsw	x6, [sp, 52]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L664:
	cmp	x1, x3
	bgt	.L662
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L663
	add	w2, w2, 1
.L663:
	add	x1, x1, 1
	b	.L664
.L662:
	cmp	w2, 3
	bne	.L727
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 48]
	ldrsw	x6, [sp, 60]
	ldrsw	x9, [sp, 40]
	ldrsw	x8, [sp, 52]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L667:
	cmp	x1, x3
	bgt	.L665
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L666
	mov	w2, 1
	b	.L665
.L666:
	add	x1, x1, 1
	b	.L667
.L665:
	cmp	w2, 0
	bne	.L727
	mov	w1, -2147483648
	ldr	x3, [x0, 72]
	ldr	x7, [x0, 64]
	ldrsw	x5, [sp, 48]
	ldrsw	x4, [sp, 60]
	ldr	x6, [x0, 56]
	ldr	x2, [x0, 48]
	mul	x2, x5, x2
	add	x3, x3, x2
	ldr	x2, [x0, 40]
	mul	x2, x4, x2
	add	x5, x3, x2
	mov	x2, 1
.L669:
	cmp	x2, x7
	bgt	.L668
	mul	x3, x2, x6
	add	x4, x5, x3
	ldr	x3, [x0, 32]
	ldr	w3, [x3, x4, lsl 2]
	cmp	w1, w3
	csel	w1, w1, w3, ge
	add	x2, x2, 1
	b	.L669
.L668:
	str	w1, [sp, 36]
	mov	w3, 0
	ldr	x8, [x0, 72]
	ldr	w2, [sp, 24]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x12, w1
	ldr	w1, [sp, 24]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 20]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldrsw	x9, [sp, 36]
	ldr	w6, [sp, 36]
	ldr	x7, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x9, x2
	add	x8, x8, x2
.L674:
	cmp	x1, x4
	bgt	.L670
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x9, x8, x2
	mov	x2, x12
.L673:
	cmp	x2, x5
	bgt	.L671
	mul	x10, x2, x7
	add	x11, x9, x10
	ldr	x10, [x0, 32]
	ldr	w10, [x10, x11, lsl 2]
	cmp	w6, w10
	bne	.L672
	add	w3, w3, 1
.L672:
	add	x2, x2, 1
	b	.L673
.L671:
	add	x1, x1, 1
	b	.L674
.L670:
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	ldr	w1, [x1]
	add	w2, w3, w1
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	str	w2, [x1]
	ldr	x10, [x0, 72]
	ldr	w2, [sp, 24]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x7, w1
	ldr	w1, [sp, 24]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x8, w1
	ldr	w1, [sp, 20]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	x12, [x0, 72]
	ldr	w2, [sp, 24]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	w1, [sp, 24]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 20]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldrsw	x11, [sp, 36]
	ldrsw	x13, [sp, 36]
	ldr	w6, [sp, 36]
	sub	x7, x7, x3
	sub	x8, x8, x1
	ldr	x9, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x11, x2
	add	x10, x10, x2
	ldr	x11, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x13, x2
	add	x12, x12, x2
.L679:
	cmp	x1, x4
	bgt	.L675
	add	x2, x1, x8
	ldr	x13, [x0, 40]
	mul	x2, x13, x2
	add	x13, x10, x2
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x14, x12, x2
	mov	x2, x3
.L678:
	cmp	x2, x5
	bgt	.L676
	mul	x15, x2, x11
	add	x16, x14, x15
	ldr	x15, [x0, 32]
	ldr	w15, [x15, x16, lsl 2]
	cmp	w6, w15
	bne	.L677
	add	x15, x2, x7
	mul	x15, x9, x15
	add	x16, x13, x15
	ldr	x15, [x0, 32]
	str	wzr, [x15, x16, lsl 2]
.L677:
	add	x2, x2, 1
	b	.L678
.L676:
	add	x1, x1, 1
	b	.L679
.L675:
	mov	w1, -2147483648
	ldr	x3, [x0, 72]
	ldr	x7, [x0, 64]
	ldrsw	x5, [sp, 48]
	ldrsw	x4, [sp, 60]
	ldr	x6, [x0, 56]
	ldr	x2, [x0, 48]
	mul	x2, x5, x2
	add	x3, x3, x2
	ldr	x2, [x0, 40]
	mul	x2, x4, x2
	add	x5, x3, x2
	mov	x2, 1
.L681:
	cmp	x2, x7
	bgt	.L680
	mul	x3, x2, x6
	add	x4, x5, x3
	ldr	x3, [x0, 32]
	ldr	w3, [x3, x4, lsl 2]
	cmp	w1, w3
	csel	w1, w1, w3, ge
	add	x2, x2, 1
	b	.L681
.L680:
	str	w1, [sp, 32]
	mov	w3, 0
	ldr	x8, [x0, 72]
	ldr	w2, [sp, 24]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x12, w1
	ldr	w1, [sp, 24]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 20]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldrsw	x9, [sp, 32]
	ldr	w6, [sp, 32]
	ldr	x7, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x9, x2
	add	x8, x8, x2
.L686:
	cmp	x1, x4
	bgt	.L682
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x9, x8, x2
	mov	x2, x12
.L685:
	cmp	x2, x5
	bgt	.L683
	mul	x10, x2, x7
	add	x11, x9, x10
	ldr	x10, [x0, 32]
	ldr	w10, [x10, x11, lsl 2]
	cmp	w6, w10
	bne	.L684
	add	w3, w3, 1
.L684:
	add	x2, x2, 1
	b	.L685
.L683:
	add	x1, x1, 1
	b	.L686
.L682:
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	ldr	w1, [x1]
	add	w2, w3, w1
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	str	w2, [x1]
	ldr	x10, [x0, 72]
	ldr	w2, [sp, 24]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x7, w1
	ldr	w1, [sp, 24]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x8, w1
	ldr	w1, [sp, 20]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	x12, [x0, 72]
	ldr	w2, [sp, 24]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	w1, [sp, 24]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 20]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldrsw	x11, [sp, 32]
	ldrsw	x13, [sp, 32]
	ldr	w6, [sp, 32]
	sub	x7, x7, x3
	sub	x8, x8, x1
	ldr	x9, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x11, x2
	add	x10, x10, x2
	ldr	x11, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x13, x2
	add	x12, x12, x2
.L691:
	cmp	x1, x4
	bgt	.L687
	add	x2, x1, x8
	ldr	x13, [x0, 40]
	mul	x2, x13, x2
	add	x13, x10, x2
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x14, x12, x2
	mov	x2, x3
.L690:
	cmp	x2, x5
	bgt	.L688
	mul	x15, x2, x11
	add	x16, x14, x15
	ldr	x15, [x0, 32]
	ldr	w15, [x15, x16, lsl 2]
	cmp	w6, w15
	bne	.L689
	add	x15, x2, x7
	mul	x15, x9, x15
	add	x16, x13, x15
	ldr	x15, [x0, 32]
	str	wzr, [x15, x16, lsl 2]
.L689:
	add	x2, x2, 1
	b	.L690
.L688:
	add	x1, x1, 1
	b	.L691
.L687:
	mov	w1, -2147483648
	ldr	x3, [x0, 72]
	ldr	x7, [x0, 64]
	ldrsw	x5, [sp, 48]
	ldrsw	x4, [sp, 60]
	ldr	x6, [x0, 56]
	ldr	x2, [x0, 48]
	mul	x2, x5, x2
	add	x3, x3, x2
	ldr	x2, [x0, 40]
	mul	x2, x4, x2
	add	x5, x3, x2
	mov	x2, 1
.L693:
	cmp	x2, x7
	bgt	.L692
	mul	x3, x2, x6
	add	x4, x5, x3
	ldr	x3, [x0, 32]
	ldr	w3, [x3, x4, lsl 2]
	cmp	w1, w3
	csel	w1, w1, w3, ge
	add	x2, x2, 1
	b	.L693
.L692:
	str	w1, [sp, 28]
	mov	w3, 0
	ldr	x8, [x0, 72]
	ldr	w2, [sp, 24]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x12, w1
	ldr	w1, [sp, 24]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 20]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldrsw	x9, [sp, 28]
	ldr	w6, [sp, 28]
	ldr	x7, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x9, x2
	add	x8, x8, x2
.L698:
	cmp	x1, x4
	bgt	.L694
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x9, x8, x2
	mov	x2, x12
.L697:
	cmp	x2, x5
	bgt	.L695
	mul	x10, x2, x7
	add	x11, x9, x10
	ldr	x10, [x0, 32]
	ldr	w10, [x10, x11, lsl 2]
	cmp	w6, w10
	bne	.L696
	add	w3, w3, 1
.L696:
	add	x2, x2, 1
	b	.L697
.L695:
	add	x1, x1, 1
	b	.L698
.L694:
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	ldr	w1, [x1]
	add	w2, w3, w1
	adrp	x1, __logic_MOD_three_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_three_in_a_bed
	str	w2, [x1]
	ldr	x10, [x0, 72]
	ldr	w2, [sp, 24]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x7, w1
	ldr	w1, [sp, 24]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x8, w1
	ldr	w1, [sp, 20]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	x12, [x0, 72]
	ldr	w2, [sp, 24]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	w1, [sp, 24]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 20]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldrsw	x11, [sp, 28]
	ldrsw	x13, [sp, 28]
	ldr	w6, [sp, 28]
	sub	x7, x7, x3
	sub	x8, x8, x1
	ldr	x9, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x11, x2
	add	x10, x10, x2
	ldr	x11, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x13, x2
	add	x12, x12, x2
.L703:
	cmp	x1, x4
	bgt	.L699
	add	x2, x1, x8
	ldr	x13, [x0, 40]
	mul	x2, x13, x2
	add	x13, x10, x2
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x14, x12, x2
	mov	x2, x3
.L702:
	cmp	x2, x5
	bgt	.L700
	mul	x15, x2, x11
	add	x16, x14, x15
	ldr	x15, [x0, 32]
	ldr	w15, [x15, x16, lsl 2]
	cmp	w6, w15
	bne	.L701
	add	x15, x2, x7
	mul	x15, x9, x15
	add	x16, x13, x15
	ldr	x15, [x0, 32]
	str	wzr, [x15, x16, lsl 2]
.L701:
	add	x2, x2, 1
	b	.L702
.L700:
	add	x1, x1, 1
	b	.L703
.L699:
	ldrsw	x1, [sp, 36]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 60]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 48]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 36]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 36]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 56]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 44]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 36]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 36]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 52]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 36]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 32]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 60]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 48]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 32]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 32]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 56]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 44]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 32]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 32]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 52]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 32]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 28]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 60]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 48]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 28]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 28]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 56]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 44]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 28]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 28]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 52]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 28]
	str	w3, [x1, x2, lsl 2]
	b	.L653
.L727:
	nop
	ldr	w1, [sp, 40]
	add	w1, w1, 1
	str	w1, [sp, 40]
	b	.L704
.L726:
	nop
	ldr	w1, [sp, 52]
	add	w1, w1, 1
	str	w1, [sp, 52]
	b	.L705
.L725:
	nop
.L653:
	ldr	w1, [sp, 44]
	add	w1, w1, 1
	str	w1, [sp, 44]
	b	.L706
.L724:
	nop
	ldr	w1, [sp, 56]
	add	w1, w1, 1
	str	w1, [sp, 56]
	b	.L707
.L722:
	nop
	b	.L642
.L723:
	nop
.L642:
	ldr	w1, [sp, 48]
	add	w1, w1, 1
	str	w1, [sp, 48]
	b	.L708
.L721:
	nop
	ldr	w1, [sp, 60]
	add	w1, w1, 1
	str	w1, [sp, 60]
	b	.L709
.L720:
	nop
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	naked_triplets.2830, .-naked_triplets.2830
	.align	2
	.type	hidden_pairs.2832, %function
hidden_pairs.2832:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -352]!
	.cfi_def_cfa_offset 352
	.cfi_offset 29, -352
	.cfi_offset 30, -344
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -336
	mov	x19, x18
	str	x18, [sp, 40]
	mov	w0, 1
	str	w0, [x19, 124]
.L777:
	ldr	w0, [x19, 124]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L885
	mov	w1, 0
	ldr	x4, [x19, 112]
	ldr	x2, [x19, 104]
	ldr	w0, [x19, 124]
	sxtw	x5, w0
	ldr	x3, [x19, 96]
	ldr	x0, [x19, 88]
	mul	x0, x5, x0
	add	x4, x4, x0
	mov	x0, 1
.L732:
	cmp	x0, x2
	bgt	.L730
	mul	x5, x0, x3
	add	x6, x4, x5
	ldr	x5, [x19, 80]
	ldr	w5, [x5, x6, lsl 2]
	cmp	w5, 0
	bne	.L731
	add	w1, w1, 1
.L731:
	add	x0, x0, 1
	b	.L732
.L730:
	cmp	w1, 2
	ble	.L886
	mov	w0, 1
	str	w0, [sp, 344]
.L776:
	ldr	w0, [sp, 344]
	cmp	w0, 8
	cset	w0, gt
	cmp	w0, 0
	bne	.L886
	mov	w1, 0
	ldr	x5, [x19, 72]
	ldr	x2, [x19, 24]
	ldr	w0, [x19, 124]
	sxtw	x7, w0
	ldrsw	x6, [sp, 344]
	ldr	w3, [sp, 344]
	ldr	x4, [x19, 40]
	ldr	x0, [x19, 48]
	mul	x0, x7, x0
	add	x5, x5, x0
	ldr	x0, [x19, 56]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L736:
	cmp	x0, x2
	bgt	.L734
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w3, w6
	bne	.L735
	add	w1, w1, 1
.L735:
	add	x0, x0, 1
	b	.L736
.L734:
	cmp	w1, 2
	bne	.L887
	ldr	w0, [sp, 344]
	add	w0, w0, 1
	str	w0, [sp, 348]
.L775:
	ldr	w0, [sp, 348]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L887
	mov	w1, 0
	ldr	x5, [x19, 72]
	ldr	x2, [x19, 24]
	ldr	w0, [x19, 124]
	sxtw	x7, w0
	ldrsw	x6, [sp, 348]
	ldr	w3, [sp, 348]
	ldr	x4, [x19, 40]
	ldr	x0, [x19, 48]
	mul	x0, x7, x0
	add	x5, x5, x0
	ldr	x0, [x19, 56]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L740:
	cmp	x0, x2
	bgt	.L738
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w3, w6
	bne	.L739
	add	w1, w1, 1
.L739:
	add	x0, x0, 1
	b	.L740
.L738:
	cmp	w1, 2
	bne	.L888
	ldr	x1, [x19, 72]
	ldr	w0, [x19, 124]
	sxtw	x3, w0
	ldrsw	x2, [sp, 344]
	ldr	x5, [x19, 40]
	ldr	x0, [x19, 48]
	mul	x0, x3, x0
	add	x1, x1, x0
	ldr	x0, [x19, 56]
	mul	x0, x2, x0
	add	x4, x1, x0
	mov	x0, 1
.L743:
	cmp	x0, 9
	bgt	.L742
	mul	x1, x0, x5
	add	x3, x4, x1
	sub	x1, x0, #1
	ldr	x2, [x19, 32]
	ldr	w3, [x2, x3, lsl 2]
	lsl	x1, x1, 2
	add	x2, sp, 272
	str	w3, [x2, x1]
	add	x0, x0, 1
	b	.L743
.L742:
	mov	w1, -2147483648
	mov	x2, 1
	mov	x5, 0
	mov	x0, 1
.L746:
	cmp	x0, 9
	bgt	.L744
	sub	x3, x0, #1
	lsl	x3, x3, 2
	add	x4, sp, 272
	ldr	w3, [x4, x3]
	cmp	w1, w3
	cset	w3, lt
	cmp	w3, 0
	beq	.L745
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x2, sp, 272
	ldr	w1, [x2, x1]
	add	x2, x0, x5
.L745:
	add	x0, x0, 1
	b	.L746
.L744:
	mov	w0, w2
	str	w0, [sp, 324]
	ldrsw	x0, [sp, 324]
	sub	x0, x0, #1
	lsl	x0, x0, 2
	add	x1, sp, 272
	str	wzr, [x1, x0]
	mov	w1, -2147483648
	mov	x2, 1
	mov	x5, 0
	mov	x0, 1
.L749:
	cmp	x0, 9
	bgt	.L747
	sub	x3, x0, #1
	lsl	x3, x3, 2
	add	x4, sp, 272
	ldr	w3, [x4, x3]
	cmp	w1, w3
	cset	w3, lt
	cmp	w3, 0
	beq	.L748
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x2, sp, 272
	ldr	w1, [x2, x1]
	add	x2, x0, x5
.L748:
	add	x0, x0, 1
	b	.L749
.L747:
	mov	w0, w2
	str	w0, [sp, 320]
	ldr	x1, [x19, 72]
	ldr	w0, [x19, 124]
	sxtw	x3, w0
	ldrsw	x2, [sp, 348]
	ldr	x5, [x19, 40]
	ldr	x0, [x19, 48]
	mul	x0, x3, x0
	add	x1, x1, x0
	ldr	x0, [x19, 56]
	mul	x0, x2, x0
	add	x4, x1, x0
	mov	x0, 1
.L751:
	cmp	x0, 9
	bgt	.L750
	mul	x1, x0, x5
	add	x3, x4, x1
	sub	x1, x0, #1
	ldr	x2, [x19, 32]
	ldr	w3, [x2, x3, lsl 2]
	lsl	x1, x1, 2
	add	x2, sp, 272
	str	w3, [x2, x1]
	add	x0, x0, 1
	b	.L751
.L750:
	mov	w1, -2147483648
	mov	x2, 1
	mov	x5, 0
	mov	x0, 1
.L754:
	cmp	x0, 9
	bgt	.L752
	sub	x3, x0, #1
	lsl	x3, x3, 2
	add	x4, sp, 272
	ldr	w3, [x4, x3]
	cmp	w1, w3
	cset	w3, lt
	cmp	w3, 0
	beq	.L753
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x2, sp, 272
	ldr	w1, [x2, x1]
	add	x2, x0, x5
.L753:
	add	x0, x0, 1
	b	.L754
.L752:
	mov	w1, w2
	ldr	w0, [sp, 324]
	cmp	w0, w1
	bne	.L888
	ldrsw	x0, [sp, 324]
	sub	x0, x0, #1
	lsl	x0, x0, 2
	add	x1, sp, 272
	str	wzr, [x1, x0]
	mov	w1, -2147483648
	mov	x2, 1
	mov	x5, 0
	mov	x0, 1
.L757:
	cmp	x0, 9
	bgt	.L755
	sub	x3, x0, #1
	lsl	x3, x3, 2
	add	x4, sp, 272
	ldr	w3, [x4, x3]
	cmp	w1, w3
	cset	w3, lt
	cmp	w3, 0
	beq	.L756
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x2, sp, 272
	ldr	w1, [x2, x1]
	add	x2, x0, x5
.L756:
	add	x0, x0, 1
	b	.L757
.L755:
	mov	w1, w2
	ldr	w0, [sp, 320]
	cmp	w0, w1
	bne	.L888
	mov	w2, 0
	ldr	x4, [x19, 72]
	ldr	x1, [x19, 64]
	ldr	w0, [x19, 124]
	sxtw	x6, w0
	ldrsw	x5, [sp, 324]
	ldr	x3, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x6, x0
	add	x4, x4, x0
	ldr	x0, [x19, 40]
	mul	x0, x5, x0
	add	x4, x4, x0
	mov	x0, 1
.L760:
	cmp	x0, x1
	bgt	.L758
	mul	x5, x0, x3
	add	x6, x4, x5
	ldr	x5, [x19, 32]
	ldr	w5, [x5, x6, lsl 2]
	cmp	w5, 0
	beq	.L759
	add	w2, w2, 1
.L759:
	add	x0, x0, 1
	b	.L760
.L758:
	mov	w1, 0
	ldr	x5, [x19, 72]
	ldr	x3, [x19, 64]
	ldr	w0, [x19, 124]
	sxtw	x7, w0
	ldrsw	x6, [sp, 320]
	ldr	x4, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x7, x0
	add	x5, x5, x0
	ldr	x0, [x19, 40]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L763:
	cmp	x0, x3
	bgt	.L761
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L762
	add	w1, w1, 1
.L762:
	add	x0, x0, 1
	b	.L763
.L761:
	cmp	w2, 2
	cset	w2, le
	cmp	w1, 2
	cset	w0, le
	and	w0, w2, w0
	cmp	w0, 0
	bne	.L889
	mov	w2, 0
	ldr	x4, [x19, 72]
	ldr	x1, [x19, 64]
	ldr	w0, [x19, 124]
	sxtw	x6, w0
	ldrsw	x5, [sp, 324]
	ldr	x3, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x6, x0
	add	x4, x4, x0
	ldr	x0, [x19, 40]
	mul	x0, x5, x0
	add	x4, x4, x0
	mov	x0, 1
.L767:
	cmp	x0, x1
	bgt	.L765
	mul	x5, x0, x3
	add	x6, x4, x5
	ldr	x5, [x19, 32]
	ldr	w5, [x5, x6, lsl 2]
	cmp	w5, 0
	beq	.L766
	add	w2, w2, 1
.L766:
	add	x0, x0, 1
	b	.L767
.L765:
	mov	w1, 0
	ldr	x5, [x19, 72]
	ldr	x3, [x19, 64]
	ldr	w0, [x19, 124]
	sxtw	x7, w0
	ldrsw	x6, [sp, 320]
	ldr	x4, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x7, x0
	add	x5, x5, x0
	ldr	x0, [x19, 40]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L770:
	cmp	x0, x3
	bgt	.L768
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L769
	add	w1, w1, 1
.L769:
	add	x0, x0, 1
	b	.L770
.L768:
	adrp	x0, __logic_MOD_two_in_a_bed
	add	x0, x0, :lo12:__logic_MOD_two_in_a_bed
	ldr	w0, [x0, 4]
	add	w0, w2, w0
	sub	w0, w0, #2
	add	w0, w1, w0
	sub	w1, w0, #2
	adrp	x0, __logic_MOD_two_in_a_bed
	add	x0, x0, :lo12:__logic_MOD_two_in_a_bed
	str	w1, [x0, 4]
	ldr	x1, [x19, 72]
	ldr	x5, [x19, 64]
	ldr	w0, [x19, 124]
	sxtw	x3, w0
	ldrsw	x2, [sp, 324]
	ldr	x4, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x3, x0
	add	x1, x1, x0
	ldr	x0, [x19, 40]
	mul	x0, x2, x0
	add	x3, x1, x0
	mov	x0, 1
.L772:
	cmp	x0, x5
	bgt	.L771
	mul	x1, x0, x4
	add	x2, x3, x1
	ldr	x1, [x19, 32]
	str	wzr, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L772
.L771:
	ldr	x1, [x19, 72]
	ldr	x5, [x19, 64]
	ldr	w0, [x19, 124]
	sxtw	x3, w0
	ldrsw	x2, [sp, 320]
	ldr	x4, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x3, x0
	add	x1, x1, x0
	ldr	x0, [x19, 40]
	mul	x0, x2, x0
	add	x3, x1, x0
	mov	x0, 1
.L774:
	cmp	x0, x5
	bgt	.L773
	mul	x1, x0, x4
	add	x2, x3, x1
	ldr	x1, [x19, 32]
	str	wzr, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L774
.L773:
	ldrsw	x0, [sp, 344]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 324]
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	w0, [x19, 124]
	sxtw	x0, w0
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	ldr	w2, [sp, 344]
	str	w2, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 344]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 320]
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	w0, [x19, 124]
	sxtw	x0, w0
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	ldr	w2, [sp, 344]
	str	w2, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 348]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 324]
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	w0, [x19, 124]
	sxtw	x0, w0
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	ldr	w2, [sp, 348]
	str	w2, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 348]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 320]
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	w0, [x19, 124]
	sxtw	x0, w0
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	ldr	w2, [sp, 348]
	str	w2, [x0, x1, lsl 2]
	b	.L733
.L888:
	nop
	b	.L741
.L889:
	nop
.L741:
	ldr	w0, [sp, 348]
	add	w0, w0, 1
	str	w0, [sp, 348]
	b	.L775
.L887:
	nop
	ldr	w0, [sp, 344]
	add	w0, w0, 1
	str	w0, [sp, 344]
	b	.L776
.L886:
	nop
.L733:
	ldr	w0, [x19, 124]
	add	w0, w0, 1
	str	w0, [x19, 124]
	b	.L777
.L885:
	nop
	mov	w0, 1
	str	w0, [x19, 120]
.L826:
	ldr	w0, [x19, 120]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L890
	mov	w1, 0
	ldr	x4, [x19, 112]
	ldr	x2, [x19, 16]
	ldr	w0, [x19, 120]
	sxtw	x5, w0
	ldr	x3, [x19, 88]
	ldr	x0, [x19, 96]
	mul	x0, x5, x0
	add	x4, x4, x0
	mov	x0, 1
.L781:
	cmp	x0, x2
	bgt	.L779
	mul	x5, x0, x3
	add	x6, x4, x5
	ldr	x5, [x19, 80]
	ldr	w5, [x5, x6, lsl 2]
	cmp	w5, 0
	bne	.L780
	add	w1, w1, 1
.L780:
	add	x0, x0, 1
	b	.L781
.L779:
	cmp	w1, 2
	ble	.L891
	mov	w0, 1
	str	w0, [sp, 344]
.L825:
	ldr	w0, [sp, 344]
	cmp	w0, 8
	cset	w0, gt
	cmp	w0, 0
	bne	.L891
	mov	w1, 0
	ldr	x5, [x19, 72]
	ldr	x2, [x19, 8]
	ldr	w0, [x19, 120]
	sxtw	x7, w0
	ldrsw	x6, [sp, 344]
	ldr	w3, [sp, 344]
	ldr	x4, [x19, 48]
	ldr	x0, [x19, 40]
	mul	x0, x7, x0
	add	x5, x5, x0
	ldr	x0, [x19, 56]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L785:
	cmp	x0, x2
	bgt	.L783
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w3, w6
	bne	.L784
	add	w1, w1, 1
.L784:
	add	x0, x0, 1
	b	.L785
.L783:
	cmp	w1, 2
	bne	.L892
	ldr	w0, [sp, 344]
	add	w0, w0, 1
	str	w0, [sp, 348]
.L824:
	ldr	w0, [sp, 348]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L892
	mov	w1, 0
	ldr	x5, [x19, 72]
	ldr	x2, [x19, 8]
	ldr	w0, [x19, 120]
	sxtw	x7, w0
	ldrsw	x6, [sp, 348]
	ldr	w3, [sp, 348]
	ldr	x4, [x19, 48]
	ldr	x0, [x19, 40]
	mul	x0, x7, x0
	add	x5, x5, x0
	ldr	x0, [x19, 56]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L789:
	cmp	x0, x2
	bgt	.L787
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w3, w6
	bne	.L788
	add	w1, w1, 1
.L788:
	add	x0, x0, 1
	b	.L789
.L787:
	cmp	w1, 2
	bne	.L893
	ldr	x1, [x19, 72]
	ldr	w0, [x19, 120]
	sxtw	x3, w0
	ldrsw	x2, [sp, 344]
	ldr	x5, [x19, 48]
	ldr	x0, [x19, 40]
	mul	x0, x3, x0
	add	x1, x1, x0
	ldr	x0, [x19, 56]
	mul	x0, x2, x0
	add	x4, x1, x0
	mov	x0, 1
.L792:
	cmp	x0, 9
	bgt	.L791
	mul	x1, x0, x5
	add	x3, x4, x1
	sub	x1, x0, #1
	ldr	x2, [x19, 32]
	ldr	w3, [x2, x3, lsl 2]
	lsl	x1, x1, 2
	add	x2, sp, 272
	str	w3, [x2, x1]
	add	x0, x0, 1
	b	.L792
.L791:
	mov	w1, -2147483648
	mov	x2, 1
	mov	x5, 0
	mov	x0, 1
.L795:
	cmp	x0, 9
	bgt	.L793
	sub	x3, x0, #1
	lsl	x3, x3, 2
	add	x4, sp, 272
	ldr	w3, [x4, x3]
	cmp	w1, w3
	cset	w3, lt
	cmp	w3, 0
	beq	.L794
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x2, sp, 272
	ldr	w1, [x2, x1]
	add	x2, x0, x5
.L794:
	add	x0, x0, 1
	b	.L795
.L793:
	mov	w0, w2
	str	w0, [sp, 340]
	ldrsw	x0, [sp, 340]
	sub	x0, x0, #1
	lsl	x0, x0, 2
	add	x1, sp, 272
	str	wzr, [x1, x0]
	mov	w1, -2147483648
	mov	x2, 1
	mov	x5, 0
	mov	x0, 1
.L798:
	cmp	x0, 9
	bgt	.L796
	sub	x3, x0, #1
	lsl	x3, x3, 2
	add	x4, sp, 272
	ldr	w3, [x4, x3]
	cmp	w1, w3
	cset	w3, lt
	cmp	w3, 0
	beq	.L797
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x2, sp, 272
	ldr	w1, [x2, x1]
	add	x2, x0, x5
.L797:
	add	x0, x0, 1
	b	.L798
.L796:
	mov	w0, w2
	str	w0, [sp, 336]
	ldr	x1, [x19, 72]
	ldr	w0, [x19, 120]
	sxtw	x3, w0
	ldrsw	x2, [sp, 348]
	ldr	x5, [x19, 48]
	ldr	x0, [x19, 40]
	mul	x0, x3, x0
	add	x1, x1, x0
	ldr	x0, [x19, 56]
	mul	x0, x2, x0
	add	x4, x1, x0
	mov	x0, 1
.L800:
	cmp	x0, 9
	bgt	.L799
	mul	x1, x0, x5
	add	x3, x4, x1
	sub	x1, x0, #1
	ldr	x2, [x19, 32]
	ldr	w3, [x2, x3, lsl 2]
	lsl	x1, x1, 2
	add	x2, sp, 272
	str	w3, [x2, x1]
	add	x0, x0, 1
	b	.L800
.L799:
	mov	w1, -2147483648
	mov	x2, 1
	mov	x5, 0
	mov	x0, 1
.L803:
	cmp	x0, 9
	bgt	.L801
	sub	x3, x0, #1
	lsl	x3, x3, 2
	add	x4, sp, 272
	ldr	w3, [x4, x3]
	cmp	w1, w3
	cset	w3, lt
	cmp	w3, 0
	beq	.L802
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x2, sp, 272
	ldr	w1, [x2, x1]
	add	x2, x0, x5
.L802:
	add	x0, x0, 1
	b	.L803
.L801:
	mov	w1, w2
	ldr	w0, [sp, 340]
	cmp	w0, w1
	bne	.L893
	ldrsw	x0, [sp, 340]
	sub	x0, x0, #1
	lsl	x0, x0, 2
	add	x1, sp, 272
	str	wzr, [x1, x0]
	mov	w1, -2147483648
	mov	x2, 1
	mov	x5, 0
	mov	x0, 1
.L806:
	cmp	x0, 9
	bgt	.L804
	sub	x3, x0, #1
	lsl	x3, x3, 2
	add	x4, sp, 272
	ldr	w3, [x4, x3]
	cmp	w1, w3
	cset	w3, lt
	cmp	w3, 0
	beq	.L805
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x2, sp, 272
	ldr	w1, [x2, x1]
	add	x2, x0, x5
.L805:
	add	x0, x0, 1
	b	.L806
.L804:
	mov	w1, w2
	ldr	w0, [sp, 336]
	cmp	w0, w1
	bne	.L893
	mov	w2, 0
	ldr	x4, [x19, 72]
	ldr	x1, [x19, 64]
	ldrsw	x6, [sp, 340]
	ldr	w0, [x19, 120]
	sxtw	x5, w0
	ldr	x3, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x6, x0
	add	x4, x4, x0
	ldr	x0, [x19, 40]
	mul	x0, x5, x0
	add	x4, x4, x0
	mov	x0, 1
.L809:
	cmp	x0, x1
	bgt	.L807
	mul	x5, x0, x3
	add	x6, x4, x5
	ldr	x5, [x19, 32]
	ldr	w5, [x5, x6, lsl 2]
	cmp	w5, 0
	beq	.L808
	add	w2, w2, 1
.L808:
	add	x0, x0, 1
	b	.L809
.L807:
	mov	w1, 0
	ldr	x5, [x19, 72]
	ldr	x3, [x19, 64]
	ldrsw	x7, [sp, 336]
	ldr	w0, [x19, 120]
	sxtw	x6, w0
	ldr	x4, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x7, x0
	add	x5, x5, x0
	ldr	x0, [x19, 40]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L812:
	cmp	x0, x3
	bgt	.L810
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L811
	add	w1, w1, 1
.L811:
	add	x0, x0, 1
	b	.L812
.L810:
	cmp	w2, 2
	cset	w2, le
	cmp	w1, 2
	cset	w0, le
	and	w0, w2, w0
	cmp	w0, 0
	bne	.L894
	mov	w2, 0
	ldr	x4, [x19, 72]
	ldr	x1, [x19, 64]
	ldrsw	x6, [sp, 340]
	ldr	w0, [x19, 120]
	sxtw	x5, w0
	ldr	x3, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x6, x0
	add	x4, x4, x0
	ldr	x0, [x19, 40]
	mul	x0, x5, x0
	add	x4, x4, x0
	mov	x0, 1
.L816:
	cmp	x0, x1
	bgt	.L814
	mul	x5, x0, x3
	add	x6, x4, x5
	ldr	x5, [x19, 32]
	ldr	w5, [x5, x6, lsl 2]
	cmp	w5, 0
	beq	.L815
	add	w2, w2, 1
.L815:
	add	x0, x0, 1
	b	.L816
.L814:
	mov	w1, 0
	ldr	x5, [x19, 72]
	ldr	x3, [x19, 64]
	ldrsw	x7, [sp, 336]
	ldr	w0, [x19, 120]
	sxtw	x6, w0
	ldr	x4, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x7, x0
	add	x5, x5, x0
	ldr	x0, [x19, 40]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L819:
	cmp	x0, x3
	bgt	.L817
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L818
	add	w1, w1, 1
.L818:
	add	x0, x0, 1
	b	.L819
.L817:
	adrp	x0, __logic_MOD_two_in_a_bed
	add	x0, x0, :lo12:__logic_MOD_two_in_a_bed
	ldr	w0, [x0, 4]
	add	w0, w2, w0
	sub	w0, w0, #2
	add	w0, w1, w0
	sub	w1, w0, #2
	adrp	x0, __logic_MOD_two_in_a_bed
	add	x0, x0, :lo12:__logic_MOD_two_in_a_bed
	str	w1, [x0, 4]
	ldr	x1, [x19, 72]
	ldr	x5, [x19, 64]
	ldrsw	x3, [sp, 340]
	ldr	w0, [x19, 120]
	sxtw	x2, w0
	ldr	x4, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x3, x0
	add	x1, x1, x0
	ldr	x0, [x19, 40]
	mul	x0, x2, x0
	add	x3, x1, x0
	mov	x0, 1
.L821:
	cmp	x0, x5
	bgt	.L820
	mul	x1, x0, x4
	add	x2, x3, x1
	ldr	x1, [x19, 32]
	str	wzr, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L821
.L820:
	ldr	x1, [x19, 72]
	ldr	x5, [x19, 64]
	ldrsw	x3, [sp, 336]
	ldr	w0, [x19, 120]
	sxtw	x2, w0
	ldr	x4, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x3, x0
	add	x1, x1, x0
	ldr	x0, [x19, 40]
	mul	x0, x2, x0
	add	x3, x1, x0
	mov	x0, 1
.L823:
	cmp	x0, x5
	bgt	.L822
	mul	x1, x0, x4
	add	x2, x3, x1
	ldr	x1, [x19, 32]
	str	wzr, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L823
.L822:
	ldrsw	x0, [sp, 344]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldr	w0, [x19, 120]
	sxtw	x0, w0
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldrsw	x0, [sp, 340]
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	ldr	w2, [sp, 344]
	str	w2, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 344]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldr	w0, [x19, 120]
	sxtw	x0, w0
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldrsw	x0, [sp, 336]
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	ldr	w2, [sp, 344]
	str	w2, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 348]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldr	w0, [x19, 120]
	sxtw	x0, w0
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldrsw	x0, [sp, 340]
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	ldr	w2, [sp, 348]
	str	w2, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 348]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldr	w0, [x19, 120]
	sxtw	x0, w0
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldrsw	x0, [sp, 336]
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	ldr	w2, [sp, 348]
	str	w2, [x0, x1, lsl 2]
	b	.L782
.L893:
	nop
	b	.L790
.L894:
	nop
.L790:
	ldr	w0, [sp, 348]
	add	w0, w0, 1
	str	w0, [sp, 348]
	b	.L824
.L892:
	nop
	ldr	w0, [sp, 344]
	add	w0, w0, 1
	str	w0, [sp, 344]
	b	.L825
.L891:
	nop
.L782:
	ldr	w0, [x19, 120]
	add	w0, w0, 1
	str	w0, [x19, 120]
	b	.L826
.L890:
	nop
	str	wzr, [sp, 328]
.L884:
	ldr	w0, [sp, 328]
	cmp	w0, 2
	cset	w0, gt
	cmp	w0, 0
	bne	.L895
	str	wzr, [sp, 332]
.L883:
	ldr	w0, [sp, 332]
	cmp	w0, 2
	cset	w0, gt
	cmp	w0, 0
	bne	.L896
	mov	w2, 0
	ldr	x4, [x19, 112]
	ldr	w1, [sp, 328]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x10, w0
	ldr	w0, [sp, 328]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x5, w0
	ldr	w1, [sp, 332]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w1, [sp, 332]
	add	w3, w1, 1
	mov	w1, w3
	lsl	w1, w1, 1
	add	w1, w1, w3
	sxtw	x3, w1
	ldr	x6, [x19, 88]
.L833:
	cmp	x0, x3
	bgt	.L829
	ldr	x1, [x19, 96]
	mul	x1, x0, x1
	add	x7, x4, x1
	mov	x1, x10
.L832:
	cmp	x1, x5
	bgt	.L830
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x19, 80]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w8, 0
	bne	.L831
	add	w2, w2, 1
.L831:
	add	x1, x1, 1
	b	.L832
.L830:
	add	x0, x0, 1
	b	.L833
.L829:
	cmp	w2, 2
	ble	.L897
	mov	w0, 1
	str	w0, [sp, 344]
.L882:
	ldr	w0, [sp, 344]
	cmp	w0, 8
	cset	w0, gt
	cmp	w0, 0
	bne	.L898
	mov	w2, 0
	ldr	x7, [x19, 72]
	ldr	w1, [sp, 328]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x11, w0
	ldr	w0, [sp, 328]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x4, w0
	ldr	w1, [sp, 332]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w1, [sp, 332]
	add	w3, w1, 1
	mov	w1, w3
	lsl	w1, w1, 1
	add	w1, w1, w3
	sxtw	x3, w1
	ldrsw	x8, [sp, 344]
	ldr	w5, [sp, 344]
	ldr	x6, [x19, 48]
	ldr	x1, [x19, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
.L840:
	cmp	x0, x3
	bgt	.L836
	ldr	x1, [x19, 40]
	mul	x1, x0, x1
	add	x8, x7, x1
	mov	x1, x11
.L839:
	cmp	x1, x4
	bgt	.L837
	mul	x9, x1, x6
	add	x10, x8, x9
	ldr	x9, [x19, 32]
	ldr	w9, [x9, x10, lsl 2]
	cmp	w5, w9
	bne	.L838
	add	w2, w2, 1
.L838:
	add	x1, x1, 1
	b	.L839
.L837:
	add	x0, x0, 1
	b	.L840
.L836:
	cmp	w2, 2
	bne	.L899
	ldr	w0, [sp, 344]
	add	w0, w0, 1
	str	w0, [sp, 348]
.L881:
	ldr	w0, [sp, 348]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L900
	mov	w2, 0
	ldr	x7, [x19, 72]
	ldr	w1, [sp, 328]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x11, w0
	ldr	w0, [sp, 328]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x4, w0
	ldr	w1, [sp, 332]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w1, [sp, 332]
	add	w3, w1, 1
	mov	w1, w3
	lsl	w1, w1, 1
	add	w1, w1, w3
	sxtw	x3, w1
	ldrsw	x8, [sp, 348]
	ldr	w5, [sp, 348]
	ldr	x6, [x19, 48]
	ldr	x1, [x19, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
.L847:
	cmp	x0, x3
	bgt	.L843
	ldr	x1, [x19, 40]
	mul	x1, x0, x1
	add	x8, x7, x1
	mov	x1, x11
.L846:
	cmp	x1, x4
	bgt	.L844
	mul	x9, x1, x6
	add	x10, x8, x9
	ldr	x9, [x19, 32]
	ldr	w9, [x9, x10, lsl 2]
	cmp	w5, w9
	bne	.L845
	add	w2, w2, 1
.L845:
	add	x1, x1, 1
	b	.L846
.L844:
	add	x0, x0, 1
	b	.L847
.L843:
	cmp	w2, 2
	bne	.L901
	mov	x0, 4
	str	x0, [sp, 88]
	stp	xzr, xzr, [sp, 72]
	mov	x0, 4
	str	x0, [sp, 72]
	mov	w0, 1
	strb	w0, [sp, 84]
	mov	w0, 1
	strb	w0, [sp, 85]
	mov	x0, 1
	str	x0, [sp, 104]
	mov	x0, 9
	str	x0, [sp, 112]
	mov	x0, 1
	str	x0, [sp, 96]
	add	x0, sp, 272
	str	x0, [sp, 56]
	mov	x0, -1
	str	x0, [sp, 64]
	ldr	w1, [sp, 328]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x1, w0
	ldr	w0, [sp, 328]
	add	w2, w0, 1
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	sxtw	x6, w0
	ldr	w2, [sp, 332]
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w2, [sp, 332]
	add	w3, w2, 1
	mov	w2, w3
	lsl	w2, w2, 1
	add	w2, w2, w3
	sxtw	x5, w2
	ldrsw	x4, [sp, 344]
	mov	x2, 4
	str	x2, [sp, 216]
	stp	xzr, xzr, [sp, 200]
	mov	x2, 4
	str	x2, [sp, 200]
	mov	w2, 2
	strb	w2, [sp, 212]
	mov	w2, 1
	strb	w2, [sp, 213]
	ldr	x7, [x19, 72]
	ldr	x3, [x19, 48]
	str	x1, [sp, 232]
	str	x6, [sp, 240]
	str	x3, [sp, 224]
	ldr	x2, [x19, 40]
	str	x0, [sp, 256]
	str	x5, [sp, 264]
	str	x2, [sp, 248]
	sub	x5, x1, #1
	mul	x6, x3, x5
	sub	x5, x0, #1
	mul	x5, x2, x5
	add	x6, x6, x5
	sub	x5, x4, #1
	ldr	x8, [x19, 56]
	mul	x5, x8, x5
	add	x5, x6, x5
	ldr	x6, [x19, 32]
	lsl	x5, x5, 2
	add	x5, x6, x5
	str	x5, [sp, 184]
	mov	x5, 1
	sub	x5, x5, x0
	ldr	x6, [x19, 40]
	mul	x6, x6, x5
	mov	x5, 1
	sub	x5, x5, x1
	ldr	x8, [x19, 48]
	mul	x5, x8, x5
	add	x5, x7, x5
	add	x5, x6, x5
	sub	x1, x1, #1
	mul	x1, x3, x1
	sub	x0, x0, #1
	mul	x0, x2, x0
	add	x1, x1, x0
	sub	x0, x4, #1
	ldr	x2, [x19, 56]
	mul	x0, x2, x0
	add	x0, x1, x0
	add	x0, x5, x0
	str	x0, [sp, 192]
	add	x1, sp, 184
	mov	x0, 8
	str	x0, [sp, 152]
	stp	xzr, xzr, [sp, 136]
	mov	x0, 8
	str	x0, [sp, 136]
	mov	w0, 1
	strb	w0, [sp, 148]
	mov	w0, 1
	strb	w0, [sp, 149]
	str	xzr, [sp, 168]
	str	xzr, [sp, 176]
	mov	x0, 1
	str	x0, [sp, 160]
	adrp	x0, A.361.5206
	add	x0, x0, :lo12:A.361.5206
	str	x0, [sp, 120]
	str	xzr, [sp, 128]
	add	x2, sp, 120
	add	x0, sp, 56
	mov	x4, 0
	mov	x3, 0
	bl	_gfortran_reshape_4
	mov	w1, -2147483648
	mov	x2, 1
	mov	x5, 0
	mov	x0, 1
.L852:
	cmp	x0, 9
	bgt	.L850
	sub	x3, x0, #1
	lsl	x3, x3, 2
	add	x4, sp, 272
	ldr	w3, [x4, x3]
	cmp	w1, w3
	cset	w3, lt
	cmp	w3, 0
	beq	.L851
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x2, sp, 272
	ldr	w1, [x2, x1]
	add	x2, x0, x5
.L851:
	add	x0, x0, 1
	b	.L852
.L850:
	mov	w0, w2
	str	w0, [sp, 316]
	ldrsw	x0, [sp, 316]
	sub	x0, x0, #1
	lsl	x0, x0, 2
	add	x1, sp, 272
	str	wzr, [x1, x0]
	mov	w1, -2147483648
	mov	x2, 1
	mov	x5, 0
	mov	x0, 1
.L855:
	cmp	x0, 9
	bgt	.L853
	sub	x3, x0, #1
	lsl	x3, x3, 2
	add	x4, sp, 272
	ldr	w3, [x4, x3]
	cmp	w1, w3
	cset	w3, lt
	cmp	w3, 0
	beq	.L854
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x2, sp, 272
	ldr	w1, [x2, x1]
	add	x2, x0, x5
.L854:
	add	x0, x0, 1
	b	.L855
.L853:
	mov	w0, w2
	str	w0, [sp, 312]
	mov	x0, 4
	str	x0, [sp, 88]
	stp	xzr, xzr, [sp, 72]
	mov	x0, 4
	str	x0, [sp, 72]
	mov	w0, 1
	strb	w0, [sp, 84]
	mov	w0, 1
	strb	w0, [sp, 85]
	mov	x0, 1
	str	x0, [sp, 104]
	mov	x0, 9
	str	x0, [sp, 112]
	mov	x0, 1
	str	x0, [sp, 96]
	add	x0, sp, 272
	str	x0, [sp, 56]
	mov	x0, -1
	str	x0, [sp, 64]
	ldr	w1, [sp, 328]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x1, w0
	ldr	w0, [sp, 328]
	add	w2, w0, 1
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	sxtw	x6, w0
	ldr	w2, [sp, 332]
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w2, [sp, 332]
	add	w3, w2, 1
	mov	w2, w3
	lsl	w2, w2, 1
	add	w2, w2, w3
	sxtw	x5, w2
	ldrsw	x4, [sp, 348]
	mov	x2, 4
	str	x2, [sp, 216]
	stp	xzr, xzr, [sp, 200]
	mov	x2, 4
	str	x2, [sp, 200]
	mov	w2, 2
	strb	w2, [sp, 212]
	mov	w2, 1
	strb	w2, [sp, 213]
	ldr	x7, [x19, 72]
	ldr	x3, [x19, 48]
	str	x1, [sp, 232]
	str	x6, [sp, 240]
	str	x3, [sp, 224]
	ldr	x2, [x19, 40]
	str	x0, [sp, 256]
	str	x5, [sp, 264]
	str	x2, [sp, 248]
	sub	x5, x1, #1
	mul	x6, x3, x5
	sub	x5, x0, #1
	mul	x5, x2, x5
	add	x6, x6, x5
	sub	x5, x4, #1
	ldr	x8, [x19, 56]
	mul	x5, x8, x5
	add	x5, x6, x5
	ldr	x6, [x19, 32]
	lsl	x5, x5, 2
	add	x5, x6, x5
	str	x5, [sp, 184]
	mov	x5, 1
	sub	x5, x5, x0
	ldr	x6, [x19, 40]
	mul	x6, x6, x5
	mov	x5, 1
	sub	x5, x5, x1
	ldr	x8, [x19, 48]
	mul	x5, x8, x5
	add	x5, x7, x5
	add	x5, x6, x5
	sub	x1, x1, #1
	mul	x1, x3, x1
	sub	x0, x0, #1
	mul	x0, x2, x0
	add	x1, x1, x0
	sub	x0, x4, #1
	ldr	x2, [x19, 56]
	mul	x0, x2, x0
	add	x0, x1, x0
	add	x0, x5, x0
	str	x0, [sp, 192]
	add	x1, sp, 184
	mov	x0, 8
	str	x0, [sp, 152]
	stp	xzr, xzr, [sp, 136]
	mov	x0, 8
	str	x0, [sp, 136]
	mov	w0, 1
	strb	w0, [sp, 148]
	mov	w0, 1
	strb	w0, [sp, 149]
	str	xzr, [sp, 168]
	str	xzr, [sp, 176]
	mov	x0, 1
	str	x0, [sp, 160]
	adrp	x0, A.375.5260
	add	x0, x0, :lo12:A.375.5260
	str	x0, [sp, 120]
	str	xzr, [sp, 128]
	add	x2, sp, 120
	add	x0, sp, 56
	mov	x4, 0
	mov	x3, 0
	bl	_gfortran_reshape_4
	mov	w1, -2147483648
	mov	x2, 1
	mov	x5, 0
	mov	x0, 1
.L858:
	cmp	x0, 9
	bgt	.L856
	sub	x3, x0, #1
	lsl	x3, x3, 2
	add	x4, sp, 272
	ldr	w3, [x4, x3]
	cmp	w1, w3
	cset	w3, lt
	cmp	w3, 0
	beq	.L857
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x2, sp, 272
	ldr	w1, [x2, x1]
	add	x2, x0, x5
.L857:
	add	x0, x0, 1
	b	.L858
.L856:
	mov	w1, w2
	ldr	w0, [sp, 316]
	cmp	w0, w1
	bne	.L902
	ldrsw	x0, [sp, 316]
	sub	x0, x0, #1
	lsl	x0, x0, 2
	add	x1, sp, 272
	str	wzr, [x1, x0]
	mov	w1, -2147483648
	mov	x2, 1
	mov	x5, 0
	mov	x0, 1
.L861:
	cmp	x0, 9
	bgt	.L859
	sub	x3, x0, #1
	lsl	x3, x3, 2
	add	x4, sp, 272
	ldr	w3, [x4, x3]
	cmp	w1, w3
	cset	w3, lt
	cmp	w3, 0
	beq	.L860
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x2, sp, 272
	ldr	w1, [x2, x1]
	add	x2, x0, x5
.L860:
	add	x0, x0, 1
	b	.L861
.L859:
	mov	w1, w2
	ldr	w0, [sp, 312]
	cmp	w0, w1
	bne	.L902
	ldr	w1, [sp, 328]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w3, w0, w1
	ldr	w2, [sp, 316]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	add	w0, w3, w1
	str	w0, [sp, 340]
	ldr	w1, [sp, 328]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	ldr	w1, [sp, 340]
	cmp	w1, w0
	bne	.L862
	ldr	w0, [sp, 340]
	add	w0, w0, 3
	str	w0, [sp, 340]
.L862:
	ldr	w1, [sp, 332]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	ldr	w0, [sp, 316]
	sub	w0, w0, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w0, w2
	lsr	x2, x2, 32
	asr	w0, w0, 31
	sub	w0, w2, w0
	add	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 324]
	ldr	w1, [sp, 328]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w3, w0, w1
	ldr	w2, [sp, 312]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	add	w0, w3, w1
	str	w0, [sp, 336]
	ldr	w1, [sp, 328]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	ldr	w1, [sp, 336]
	cmp	w1, w0
	bne	.L863
	ldr	w0, [sp, 336]
	add	w0, w0, 3
	str	w0, [sp, 336]
.L863:
	ldr	w1, [sp, 332]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	ldr	w0, [sp, 312]
	sub	w0, w0, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w0, w2
	lsr	x2, x2, 32
	asr	w0, w0, 31
	sub	w0, w2, w0
	add	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 320]
	mov	w2, 0
	ldr	x4, [x19, 72]
	ldr	x1, [x19, 64]
	ldrsw	x6, [sp, 340]
	ldrsw	x5, [sp, 324]
	ldr	x3, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x6, x0
	add	x4, x4, x0
	ldr	x0, [x19, 40]
	mul	x0, x5, x0
	add	x4, x4, x0
	mov	x0, 1
.L866:
	cmp	x0, x1
	bgt	.L864
	mul	x5, x0, x3
	add	x6, x4, x5
	ldr	x5, [x19, 32]
	ldr	w5, [x5, x6, lsl 2]
	cmp	w5, 0
	beq	.L865
	add	w2, w2, 1
.L865:
	add	x0, x0, 1
	b	.L866
.L864:
	mov	w1, 0
	ldr	x5, [x19, 72]
	ldr	x3, [x19, 64]
	ldrsw	x7, [sp, 336]
	ldrsw	x6, [sp, 320]
	ldr	x4, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x7, x0
	add	x5, x5, x0
	ldr	x0, [x19, 40]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L869:
	cmp	x0, x3
	bgt	.L867
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L868
	add	w1, w1, 1
.L868:
	add	x0, x0, 1
	b	.L869
.L867:
	cmp	w2, 2
	cset	w2, le
	cmp	w1, 2
	cset	w0, le
	and	w0, w2, w0
	cmp	w0, 0
	bne	.L903
	mov	w2, 0
	ldr	x4, [x19, 72]
	ldr	x1, [x19, 64]
	ldrsw	x6, [sp, 340]
	ldrsw	x5, [sp, 324]
	ldr	x3, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x6, x0
	add	x4, x4, x0
	ldr	x0, [x19, 40]
	mul	x0, x5, x0
	add	x4, x4, x0
	mov	x0, 1
.L873:
	cmp	x0, x1
	bgt	.L871
	mul	x5, x0, x3
	add	x6, x4, x5
	ldr	x5, [x19, 32]
	ldr	w5, [x5, x6, lsl 2]
	cmp	w5, 0
	beq	.L872
	add	w2, w2, 1
.L872:
	add	x0, x0, 1
	b	.L873
.L871:
	mov	w1, 0
	ldr	x5, [x19, 72]
	ldr	x3, [x19, 64]
	ldrsw	x7, [sp, 336]
	ldrsw	x6, [sp, 320]
	ldr	x4, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x7, x0
	add	x5, x5, x0
	ldr	x0, [x19, 40]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L876:
	cmp	x0, x3
	bgt	.L874
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L875
	add	w1, w1, 1
.L875:
	add	x0, x0, 1
	b	.L876
.L874:
	adrp	x0, __logic_MOD_two_in_a_bed
	add	x0, x0, :lo12:__logic_MOD_two_in_a_bed
	ldr	w0, [x0, 4]
	add	w0, w2, w0
	sub	w0, w0, #2
	add	w0, w1, w0
	sub	w1, w0, #2
	adrp	x0, __logic_MOD_two_in_a_bed
	add	x0, x0, :lo12:__logic_MOD_two_in_a_bed
	str	w1, [x0, 4]
	ldr	x1, [x19, 72]
	ldr	x5, [x19, 64]
	ldrsw	x3, [sp, 340]
	ldrsw	x2, [sp, 324]
	ldr	x4, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x3, x0
	add	x1, x1, x0
	ldr	x0, [x19, 40]
	mul	x0, x2, x0
	add	x3, x1, x0
	mov	x0, 1
.L878:
	cmp	x0, x5
	bgt	.L877
	mul	x1, x0, x4
	add	x2, x3, x1
	ldr	x1, [x19, 32]
	str	wzr, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L878
.L877:
	ldr	x1, [x19, 72]
	ldr	x5, [x19, 64]
	ldrsw	x3, [sp, 336]
	ldrsw	x2, [sp, 320]
	ldr	x4, [x19, 56]
	ldr	x0, [x19, 48]
	mul	x0, x3, x0
	add	x1, x1, x0
	ldr	x0, [x19, 40]
	mul	x0, x2, x0
	add	x3, x1, x0
	mov	x0, 1
.L880:
	cmp	x0, x5
	bgt	.L879
	mul	x1, x0, x4
	add	x2, x3, x1
	ldr	x1, [x19, 32]
	str	wzr, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L880
.L879:
	ldrsw	x0, [sp, 344]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 324]
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldrsw	x0, [sp, 340]
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	ldr	w2, [sp, 344]
	str	w2, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 344]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 320]
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldrsw	x0, [sp, 336]
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	ldr	w2, [sp, 344]
	str	w2, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 348]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 324]
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldrsw	x0, [sp, 340]
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	ldr	w2, [sp, 348]
	str	w2, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 348]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 320]
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldrsw	x0, [sp, 336]
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	ldr	w2, [sp, 348]
	str	w2, [x0, x1, lsl 2]
	b	.L835
.L901:
	nop
	b	.L849
.L902:
	nop
	b	.L849
.L903:
	nop
.L849:
	ldr	w0, [sp, 348]
	add	w0, w0, 1
	str	w0, [sp, 348]
	b	.L881
.L899:
	nop
	b	.L842
.L900:
	nop
.L842:
	ldr	w0, [sp, 344]
	add	w0, w0, 1
	str	w0, [sp, 344]
	b	.L882
.L897:
	nop
	b	.L835
.L898:
	nop
.L835:
	ldr	w0, [sp, 332]
	add	w0, w0, 1
	str	w0, [sp, 332]
	b	.L883
.L896:
	nop
	ldr	w0, [sp, 328]
	add	w0, w0, 1
	str	w0, [sp, 328]
	b	.L884
.L895:
	nop
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 352
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	hidden_pairs.2832, .-hidden_pairs.2832
	.align	2
	.type	naked_pairs.2834, %function
naked_pairs.2834:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	mov	x0, x18
	str	x18, [sp, 8]
	mov	w1, 1
	str	w1, [x0, 124]
.L939:
	ldr	w1, [x0, 124]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L1023
	mov	w2, 0
	ldr	x5, [x0, 112]
	ldr	x3, [x0, 104]
	ldr	w1, [x0, 124]
	sxtw	x6, w1
	ldr	x4, [x0, 96]
	ldr	x1, [x0, 88]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L908:
	cmp	x1, x3
	bgt	.L906
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 80]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L907
	add	w2, w2, 1
.L907:
	add	x1, x1, 1
	b	.L908
.L906:
	cmp	w2, 2
	beq	.L1024
	mov	w1, 1
	str	w1, [sp, 44]
.L938:
	ldr	w1, [sp, 44]
	cmp	w1, 8
	cset	w1, gt
	cmp	w1, 0
	bne	.L1024
	ldrsw	x1, [sp, 44]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L1025
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	w1, [x0, 124]
	sxtw	x7, w1
	ldrsw	x6, [sp, 44]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L913:
	cmp	x1, x3
	bgt	.L911
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L912
	add	w2, w2, 1
.L912:
	add	x1, x1, 1
	b	.L913
.L911:
	cmp	w2, 2
	bne	.L1025
	ldr	w1, [sp, 44]
	add	w1, w1, 1
	str	w1, [sp, 40]
.L937:
	ldr	w1, [sp, 40]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L1025
	ldrsw	x1, [sp, 40]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L1026
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	w1, [x0, 124]
	sxtw	x7, w1
	ldrsw	x6, [sp, 40]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L917:
	cmp	x1, x3
	bgt	.L915
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L916
	add	w2, w2, 1
.L916:
	add	x1, x1, 1
	b	.L917
.L915:
	cmp	w2, 2
	bne	.L1026
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x10, w1
	ldrsw	x6, [sp, 44]
	ldr	w1, [x0, 124]
	sxtw	x9, w1
	ldrsw	x8, [sp, 40]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L920:
	cmp	x1, x3
	bgt	.L918
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L919
	mov	w2, 1
	b	.L918
.L919:
	add	x1, x1, 1
	b	.L920
.L918:
	cmp	w2, 0
	bne	.L1026
	mov	w1, -2147483648
	ldr	x3, [x0, 72]
	ldr	x7, [x0, 64]
	ldr	w2, [x0, 124]
	sxtw	x5, w2
	ldrsw	x4, [sp, 44]
	ldr	x6, [x0, 56]
	ldr	x2, [x0, 48]
	mul	x2, x5, x2
	add	x3, x3, x2
	ldr	x2, [x0, 40]
	mul	x2, x4, x2
	add	x5, x3, x2
	mov	x2, 1
.L922:
	cmp	x2, x7
	bgt	.L921
	mul	x3, x2, x6
	add	x4, x5, x3
	ldr	x3, [x0, 32]
	ldr	w3, [x3, x4, lsl 2]
	cmp	w1, w3
	csel	w1, w1, w3, ge
	add	x2, x2, 1
	b	.L922
.L921:
	str	w1, [sp, 28]
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 24]
	ldr	w1, [x0, 124]
	sxtw	x8, w1
	ldrsw	x7, [sp, 28]
	ldr	w4, [sp, 28]
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L925:
	cmp	x1, x3
	bgt	.L923
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L924
	add	w2, w2, 1
.L924:
	add	x1, x1, 1
	b	.L925
.L923:
	adrp	x1, __logic_MOD_two_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_two_in_a_bed
	ldr	w1, [x1]
	add	w2, w2, w1
	adrp	x1, __logic_MOD_two_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_two_in_a_bed
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 24]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x10, w1
	ldrsw	x6, [sp, 28]
	ldr	w1, [x0, 124]
	sxtw	x9, w1
	ldrsw	x8, [sp, 28]
	ldr	w3, [sp, 28]
	ldr	x4, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L928:
	cmp	x1, x2
	bgt	.L926
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L927
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L927:
	add	x1, x1, 1
	b	.L928
.L926:
	mov	w1, -2147483648
	ldr	x3, [x0, 72]
	ldr	x7, [x0, 64]
	ldr	w2, [x0, 124]
	sxtw	x5, w2
	ldrsw	x4, [sp, 44]
	ldr	x6, [x0, 56]
	ldr	x2, [x0, 48]
	mul	x2, x5, x2
	add	x3, x3, x2
	ldr	x2, [x0, 40]
	mul	x2, x4, x2
	add	x5, x3, x2
	mov	x2, 1
.L930:
	cmp	x2, x7
	bgt	.L929
	mul	x3, x2, x6
	add	x4, x5, x3
	ldr	x3, [x0, 32]
	ldr	w3, [x3, x4, lsl 2]
	cmp	w1, w3
	csel	w1, w1, w3, ge
	add	x2, x2, 1
	b	.L930
.L929:
	str	w1, [sp, 24]
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 24]
	ldr	w1, [x0, 124]
	sxtw	x8, w1
	ldrsw	x7, [sp, 24]
	ldr	w4, [sp, 24]
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L933:
	cmp	x1, x3
	bgt	.L931
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L932
	add	w2, w2, 1
.L932:
	add	x1, x1, 1
	b	.L933
.L931:
	adrp	x1, __logic_MOD_two_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_two_in_a_bed
	ldr	w1, [x1]
	add	w2, w2, w1
	adrp	x1, __logic_MOD_two_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_two_in_a_bed
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 24]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x10, w1
	ldrsw	x6, [sp, 24]
	ldr	w1, [x0, 124]
	sxtw	x9, w1
	ldrsw	x8, [sp, 24]
	ldr	w3, [sp, 24]
	ldr	x4, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L936:
	cmp	x1, x2
	bgt	.L934
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L935
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L935:
	add	x1, x1, 1
	b	.L936
.L934:
	ldrsw	x1, [sp, 28]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 44]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 28]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 28]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 28]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 24]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 44]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 24]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 24]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 24]
	str	w3, [x1, x2, lsl 2]
	b	.L910
.L1026:
	nop
	ldr	w1, [sp, 40]
	add	w1, w1, 1
	str	w1, [sp, 40]
	b	.L937
.L1025:
	nop
.L910:
	ldr	w1, [sp, 44]
	add	w1, w1, 1
	str	w1, [sp, 44]
	b	.L938
.L1024:
	nop
	ldr	w1, [x0, 124]
	add	w1, w1, 1
	str	w1, [x0, 124]
	b	.L939
.L1023:
	nop
	mov	w1, 1
	str	w1, [x0, 120]
.L974:
	ldr	w1, [x0, 120]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L1027
	mov	w2, 0
	ldr	x5, [x0, 112]
	ldr	x3, [x0, 16]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldr	x4, [x0, 88]
	ldr	x1, [x0, 96]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L943:
	cmp	x1, x3
	bgt	.L941
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 80]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L942
	add	w2, w2, 1
.L942:
	add	x1, x1, 1
	b	.L943
.L941:
	cmp	w2, 2
	beq	.L1028
	mov	w1, 1
	str	w1, [sp, 36]
.L973:
	ldr	w1, [sp, 36]
	cmp	w1, 8
	cset	w1, gt
	cmp	w1, 0
	bne	.L1028
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 36]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L1029
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 36]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L948:
	cmp	x1, x3
	bgt	.L946
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L947
	add	w2, w2, 1
.L947:
	add	x1, x1, 1
	b	.L948
.L946:
	cmp	w2, 2
	bne	.L1029
	ldr	w1, [sp, 36]
	add	w1, w1, 1
	str	w1, [sp, 32]
.L972:
	ldr	w1, [sp, 32]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L1029
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 32]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L1030
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 32]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L952:
	cmp	x1, x3
	bgt	.L950
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L951
	add	w2, w2, 1
.L951:
	add	x1, x1, 1
	b	.L952
.L950:
	cmp	w2, 2
	bne	.L1030
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 36]
	ldr	w1, [x0, 120]
	sxtw	x6, w1
	ldrsw	x9, [sp, 32]
	ldr	w1, [x0, 120]
	sxtw	x8, w1
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L955:
	cmp	x1, x3
	bgt	.L953
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L954
	mov	w2, 1
	b	.L953
.L954:
	add	x1, x1, 1
	b	.L955
.L953:
	cmp	w2, 0
	bne	.L1030
	mov	w1, -2147483648
	ldr	x3, [x0, 72]
	ldr	x7, [x0, 64]
	ldrsw	x5, [sp, 36]
	ldr	w2, [x0, 120]
	sxtw	x4, w2
	ldr	x6, [x0, 56]
	ldr	x2, [x0, 48]
	mul	x2, x5, x2
	add	x3, x3, x2
	ldr	x2, [x0, 40]
	mul	x2, x4, x2
	add	x5, x3, x2
	mov	x2, 1
.L957:
	cmp	x2, x7
	bgt	.L956
	mul	x3, x2, x6
	add	x4, x5, x3
	ldr	x3, [x0, 32]
	ldr	w3, [x3, x4, lsl 2]
	cmp	w1, w3
	csel	w1, w1, w3, ge
	add	x2, x2, 1
	b	.L957
.L956:
	str	w1, [sp, 28]
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 8]
	ldr	w1, [x0, 120]
	sxtw	x8, w1
	ldrsw	x7, [sp, 28]
	ldr	w4, [sp, 28]
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L960:
	cmp	x1, x3
	bgt	.L958
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L959
	add	w2, w2, 1
.L959:
	add	x1, x1, 1
	b	.L960
.L958:
	adrp	x1, __logic_MOD_two_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_two_in_a_bed
	ldr	w1, [x1]
	add	w2, w2, w1
	adrp	x1, __logic_MOD_two_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_two_in_a_bed
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 8]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 120]
	sxtw	x10, w1
	ldrsw	x6, [sp, 28]
	ldr	w1, [x0, 120]
	sxtw	x9, w1
	ldrsw	x8, [sp, 28]
	ldr	w3, [sp, 28]
	ldr	x4, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L963:
	cmp	x1, x2
	bgt	.L961
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L962
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L962:
	add	x1, x1, 1
	b	.L963
.L961:
	mov	w1, -2147483648
	ldr	x3, [x0, 72]
	ldr	x7, [x0, 64]
	ldrsw	x5, [sp, 36]
	ldr	w2, [x0, 120]
	sxtw	x4, w2
	ldr	x6, [x0, 56]
	ldr	x2, [x0, 48]
	mul	x2, x5, x2
	add	x3, x3, x2
	ldr	x2, [x0, 40]
	mul	x2, x4, x2
	add	x5, x3, x2
	mov	x2, 1
.L965:
	cmp	x2, x7
	bgt	.L964
	mul	x3, x2, x6
	add	x4, x5, x3
	ldr	x3, [x0, 32]
	ldr	w3, [x3, x4, lsl 2]
	cmp	w1, w3
	csel	w1, w1, w3, ge
	add	x2, x2, 1
	b	.L965
.L964:
	str	w1, [sp, 24]
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 8]
	ldr	w1, [x0, 120]
	sxtw	x8, w1
	ldrsw	x7, [sp, 24]
	ldr	w4, [sp, 24]
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L968:
	cmp	x1, x3
	bgt	.L966
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L967
	add	w2, w2, 1
.L967:
	add	x1, x1, 1
	b	.L968
.L966:
	adrp	x1, __logic_MOD_two_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_two_in_a_bed
	ldr	w1, [x1]
	add	w2, w2, w1
	adrp	x1, __logic_MOD_two_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_two_in_a_bed
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 8]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 120]
	sxtw	x10, w1
	ldrsw	x6, [sp, 24]
	ldr	w1, [x0, 120]
	sxtw	x9, w1
	ldrsw	x8, [sp, 24]
	ldr	w3, [sp, 24]
	ldr	x4, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L971:
	cmp	x1, x2
	bgt	.L969
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L970
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L970:
	add	x1, x1, 1
	b	.L971
.L969:
	ldrsw	x1, [sp, 28]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 36]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 28]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 28]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 32]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 28]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 24]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 36]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 24]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 24]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 32]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 24]
	str	w3, [x1, x2, lsl 2]
	b	.L945
.L1030:
	nop
	ldr	w1, [sp, 32]
	add	w1, w1, 1
	str	w1, [sp, 32]
	b	.L972
.L1029:
	nop
.L945:
	ldr	w1, [sp, 36]
	add	w1, w1, 1
	str	w1, [sp, 36]
	b	.L973
.L1028:
	nop
	ldr	w1, [x0, 120]
	add	w1, w1, 1
	str	w1, [x0, 120]
	b	.L974
.L1027:
	nop
	mov	w1, 1
	str	w1, [sp, 44]
.L1022:
	ldr	w1, [sp, 44]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L1031
	mov	w1, 1
	str	w1, [sp, 36]
.L1021:
	ldr	w1, [sp, 36]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L1032
	ldrsw	x1, [sp, 44]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 36]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L1033
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 36]
	ldrsw	x6, [sp, 44]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L980:
	cmp	x1, x3
	bgt	.L978
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L979
	add	w2, w2, 1
.L979:
	add	x1, x1, 1
	b	.L980
.L978:
	cmp	w2, 2
	bne	.L1033
	ldr	w1, [sp, 36]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	str	w1, [sp, 20]
	ldr	w1, [sp, 44]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	str	w1, [sp, 16]
	mov	w3, 0
	ldr	x5, [x0, 112]
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x11, w1
	ldr	w1, [sp, 20]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x6, w1
	ldr	w2, [sp, 16]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 16]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldr	x7, [x0, 88]
.L985:
	cmp	x1, x4
	bgt	.L981
	ldr	x2, [x0, 96]
	mul	x2, x1, x2
	add	x8, x5, x2
	mov	x2, x11
.L984:
	cmp	x2, x6
	bgt	.L982
	mul	x9, x2, x7
	add	x10, x8, x9
	ldr	x9, [x0, 80]
	ldr	w9, [x9, x10, lsl 2]
	cmp	w9, 0
	bne	.L983
	add	w3, w3, 1
.L983:
	add	x2, x2, 1
	b	.L984
.L982:
	add	x1, x1, 1
	b	.L985
.L981:
	cmp	w3, 2
	beq	.L1034
	mov	w1, 1
	str	w1, [sp, 40]
.L1020:
	ldr	w1, [sp, 40]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L1033
	ldr	w1, [sp, 40]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	ldr	w2, [sp, 16]
	cmp	w2, w1
	bne	.L1035
	mov	w1, 1
	str	w1, [sp, 32]
.L1019:
	ldr	w1, [sp, 32]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L1035
	ldr	w1, [sp, 32]
	sub	w2, w1, #1
	mov	w1, w2
	lsl	w1, w1, 3
	add	w2, w1, w2
	ldr	w1, [sp, 40]
	add	w3, w2, w1
	ldr	w1, [sp, 36]
	sub	w2, w1, #1
	mov	w1, w2
	lsl	w1, w1, 3
	add	w2, w1, w2
	ldr	w1, [sp, 44]
	add	w1, w2, w1
	cmp	w3, w1
	ble	.L1036
	ldrsw	x1, [sp, 40]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 32]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L1036
	ldr	w1, [sp, 32]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	ldr	w2, [sp, 20]
	cmp	w2, w1
	bne	.L1036
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldrsw	x7, [sp, 32]
	ldrsw	x6, [sp, 40]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x7, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L991:
	cmp	x1, x3
	bgt	.L989
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L990
	add	w2, w2, 1
.L990:
	add	x1, x1, 1
	b	.L991
.L989:
	cmp	w2, 2
	bne	.L1036
	mov	w2, 0
	ldr	x5, [x0, 72]
	ldr	x3, [x0, 64]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 36]
	ldrsw	x6, [sp, 44]
	ldrsw	x9, [sp, 32]
	ldrsw	x8, [sp, 40]
	ldr	x4, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 40]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L994:
	cmp	x1, x3
	bgt	.L992
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	ldr	w9, [x8, x9, lsl 2]
	mul	x8, x1, x6
	add	x10, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x10, lsl 2]
	cmp	w9, w8
	beq	.L993
	mov	w2, 1
	b	.L992
.L993:
	add	x1, x1, 1
	b	.L994
.L992:
	cmp	w2, 0
	bne	.L1036
	mov	w1, -2147483648
	ldr	x3, [x0, 72]
	ldr	x7, [x0, 64]
	ldrsw	x5, [sp, 36]
	ldrsw	x4, [sp, 44]
	ldr	x6, [x0, 56]
	ldr	x2, [x0, 48]
	mul	x2, x5, x2
	add	x3, x3, x2
	ldr	x2, [x0, 40]
	mul	x2, x4, x2
	add	x5, x3, x2
	mov	x2, 1
.L996:
	cmp	x2, x7
	bgt	.L995
	mul	x3, x2, x6
	add	x4, x5, x3
	ldr	x3, [x0, 32]
	ldr	w3, [x3, x4, lsl 2]
	cmp	w1, w3
	csel	w1, w1, w3, ge
	add	x2, x2, 1
	b	.L996
.L995:
	str	w1, [sp, 28]
	mov	w3, 0
	ldr	x8, [x0, 72]
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x12, w1
	ldr	w1, [sp, 20]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w2, [sp, 16]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 16]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldrsw	x9, [sp, 28]
	ldr	w6, [sp, 28]
	ldr	x7, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x9, x2
	add	x8, x8, x2
.L1001:
	cmp	x1, x4
	bgt	.L997
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x9, x8, x2
	mov	x2, x12
.L1000:
	cmp	x2, x5
	bgt	.L998
	mul	x10, x2, x7
	add	x11, x9, x10
	ldr	x10, [x0, 32]
	ldr	w10, [x10, x11, lsl 2]
	cmp	w6, w10
	bne	.L999
	add	w3, w3, 1
.L999:
	add	x2, x2, 1
	b	.L1000
.L998:
	add	x1, x1, 1
	b	.L1001
.L997:
	adrp	x1, __logic_MOD_two_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_two_in_a_bed
	ldr	w1, [x1]
	add	w2, w3, w1
	adrp	x1, __logic_MOD_two_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_two_in_a_bed
	str	w2, [x1]
	ldr	x10, [x0, 72]
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x7, w1
	ldr	w1, [sp, 20]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	w2, [sp, 16]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x8, w1
	ldr	w1, [sp, 16]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	x12, [x0, 72]
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	w1, [sp, 20]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w2, [sp, 16]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 16]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldrsw	x11, [sp, 28]
	ldrsw	x13, [sp, 28]
	ldr	w6, [sp, 28]
	sub	x7, x7, x3
	sub	x8, x8, x1
	ldr	x9, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x11, x2
	add	x10, x10, x2
	ldr	x11, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x13, x2
	add	x12, x12, x2
.L1006:
	cmp	x1, x4
	bgt	.L1002
	add	x2, x1, x8
	ldr	x13, [x0, 40]
	mul	x2, x13, x2
	add	x13, x10, x2
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x14, x12, x2
	mov	x2, x3
.L1005:
	cmp	x2, x5
	bgt	.L1003
	mul	x15, x2, x11
	add	x16, x14, x15
	ldr	x15, [x0, 32]
	ldr	w15, [x15, x16, lsl 2]
	cmp	w6, w15
	bne	.L1004
	add	x15, x2, x7
	mul	x15, x9, x15
	add	x16, x13, x15
	ldr	x15, [x0, 32]
	str	wzr, [x15, x16, lsl 2]
.L1004:
	add	x2, x2, 1
	b	.L1005
.L1003:
	add	x1, x1, 1
	b	.L1006
.L1002:
	mov	w1, -2147483648
	ldr	x3, [x0, 72]
	ldr	x7, [x0, 64]
	ldrsw	x5, [sp, 36]
	ldrsw	x4, [sp, 44]
	ldr	x6, [x0, 56]
	ldr	x2, [x0, 48]
	mul	x2, x5, x2
	add	x3, x3, x2
	ldr	x2, [x0, 40]
	mul	x2, x4, x2
	add	x5, x3, x2
	mov	x2, 1
.L1008:
	cmp	x2, x7
	bgt	.L1007
	mul	x3, x2, x6
	add	x4, x5, x3
	ldr	x3, [x0, 32]
	ldr	w3, [x3, x4, lsl 2]
	cmp	w1, w3
	csel	w1, w1, w3, ge
	add	x2, x2, 1
	b	.L1008
.L1007:
	str	w1, [sp, 24]
	mov	w3, 0
	ldr	x8, [x0, 72]
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x12, w1
	ldr	w1, [sp, 20]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w2, [sp, 16]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 16]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldrsw	x9, [sp, 24]
	ldr	w6, [sp, 24]
	ldr	x7, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x9, x2
	add	x8, x8, x2
.L1013:
	cmp	x1, x4
	bgt	.L1009
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x9, x8, x2
	mov	x2, x12
.L1012:
	cmp	x2, x5
	bgt	.L1010
	mul	x10, x2, x7
	add	x11, x9, x10
	ldr	x10, [x0, 32]
	ldr	w10, [x10, x11, lsl 2]
	cmp	w6, w10
	bne	.L1011
	add	w3, w3, 1
.L1011:
	add	x2, x2, 1
	b	.L1012
.L1010:
	add	x1, x1, 1
	b	.L1013
.L1009:
	adrp	x1, __logic_MOD_two_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_two_in_a_bed
	ldr	w1, [x1]
	add	w2, w3, w1
	adrp	x1, __logic_MOD_two_in_a_bed
	add	x1, x1, :lo12:__logic_MOD_two_in_a_bed
	str	w2, [x1]
	ldr	x10, [x0, 72]
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x7, w1
	ldr	w1, [sp, 20]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	w2, [sp, 16]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x8, w1
	ldr	w1, [sp, 16]
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	x12, [x0, 72]
	ldr	w2, [sp, 20]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	w1, [sp, 20]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w2, [sp, 16]
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [sp, 16]
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldrsw	x11, [sp, 24]
	ldrsw	x13, [sp, 24]
	ldr	w6, [sp, 24]
	sub	x7, x7, x3
	sub	x8, x8, x1
	ldr	x9, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x11, x2
	add	x10, x10, x2
	ldr	x11, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x13, x2
	add	x12, x12, x2
.L1018:
	cmp	x1, x4
	bgt	.L1014
	add	x2, x1, x8
	ldr	x13, [x0, 40]
	mul	x2, x13, x2
	add	x13, x10, x2
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x14, x12, x2
	mov	x2, x3
.L1017:
	cmp	x2, x5
	bgt	.L1015
	mul	x15, x2, x11
	add	x16, x14, x15
	ldr	x15, [x0, 32]
	ldr	w15, [x15, x16, lsl 2]
	cmp	w6, w15
	bne	.L1016
	add	x15, x2, x7
	mul	x15, x9, x15
	add	x16, x13, x15
	ldr	x15, [x0, 32]
	str	wzr, [x15, x16, lsl 2]
.L1016:
	add	x2, x2, 1
	b	.L1017
.L1015:
	add	x1, x1, 1
	b	.L1018
.L1014:
	ldrsw	x1, [sp, 28]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 44]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 36]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 28]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 28]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 32]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 28]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 24]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 44]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 36]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 24]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 24]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 32]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 24]
	str	w3, [x1, x2, lsl 2]
	b	.L977
.L1036:
	nop
	ldr	w1, [sp, 32]
	add	w1, w1, 1
	str	w1, [sp, 32]
	b	.L1019
.L1035:
	nop
	ldr	w1, [sp, 40]
	add	w1, w1, 1
	str	w1, [sp, 40]
	b	.L1020
.L1033:
	nop
	b	.L977
.L1034:
	nop
.L977:
	ldr	w1, [sp, 36]
	add	w1, w1, 1
	str	w1, [sp, 36]
	b	.L1021
.L1032:
	nop
	ldr	w1, [sp, 44]
	add	w1, w1, 1
	str	w1, [sp, 44]
	b	.L1022
.L1031:
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	naked_pairs.2834, .-naked_pairs.2834
	.align	2
	.type	specific.2836, %function
specific.2836:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -416]!
	.cfi_def_cfa_offset 416
	.cfi_offset 29, -416
	.cfi_offset 30, -408
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	.cfi_offset 19, -400
	.cfi_offset 20, -392
	.cfi_offset 21, -384
	.cfi_offset 22, -376
	.cfi_offset 23, -368
	.cfi_offset 24, -360
	.cfi_offset 25, -352
	.cfi_offset 26, -344
	.cfi_offset 27, -336
	mov	x19, x18
	str	x18, [sp, 104]
	mov	w0, 1
	str	w0, [sp, 380]
.L1068:
	ldr	w0, [sp, 380]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L1169
	mov	w0, 1
	str	w0, [sp, 372]
.L1067:
	ldr	w0, [sp, 372]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L1170
	mov	w1, 0
	ldr	x5, [x19, 112]
	ldr	x2, [x19, 104]
	ldrsw	x6, [sp, 380]
	ldr	w3, [sp, 372]
	ldr	x4, [x19, 96]
	ldr	x0, [x19, 88]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L1042:
	cmp	x0, x2
	bgt	.L1040
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 80]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w3, w6
	bne	.L1041
	mov	w1, 1
	b	.L1040
.L1041:
	add	x0, x0, 1
	b	.L1042
.L1040:
	cmp	w1, 0
	bne	.L1043
	mov	w1, 0
	ldr	x5, [x19, 72]
	ldr	x2, [x19, 24]
	ldrsw	x7, [sp, 380]
	ldrsw	x6, [sp, 372]
	ldr	w3, [sp, 372]
	ldr	x4, [x19, 40]
	ldr	x0, [x19, 48]
	mul	x0, x7, x0
	add	x5, x5, x0
	ldr	x0, [x19, 56]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L1046:
	cmp	x0, x2
	bgt	.L1044
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w3, w6
	bne	.L1045
	add	w1, w1, 1
.L1045:
	add	x0, x0, 1
	b	.L1046
.L1044:
	cmp	w1, 0
	beq	.L1043
	mov	x0, 4
	str	x0, [sp, 144]
	stp	xzr, xzr, [sp, 128]
	mov	x0, 4
	str	x0, [sp, 128]
	mov	w0, 1
	strb	w0, [sp, 140]
	mov	w0, 1
	strb	w0, [sp, 141]
	mov	x0, 1
	str	x0, [sp, 160]
	mov	x0, 2
	str	x0, [sp, 168]
	mov	x0, 1
	str	x0, [sp, 152]
	add	x0, sp, 360
	str	x0, [sp, 112]
	mov	x0, -1
	str	x0, [sp, 120]
	ldr	x4, [x19, 24]
	ldr	x3, [x19, 64]
	ldrsw	x0, [sp, 380]
	mov	x1, 4
	str	x1, [sp, 208]
	stp	xzr, xzr, [sp, 192]
	mov	x1, 4
	str	x1, [sp, 192]
	mov	w1, 2
	strb	w1, [sp, 204]
	mov	w1, 1
	strb	w1, [sp, 205]
	ldr	x1, [x19, 72]
	ldr	x2, [x19, 40]
	mov	x5, 1
	str	x5, [sp, 224]
	str	x4, [sp, 232]
	str	x2, [sp, 216]
	ldr	x2, [x19, 56]
	mov	x4, 1
	str	x4, [sp, 248]
	str	x3, [sp, 256]
	str	x2, [sp, 240]
	sub	x2, x0, #1
	ldr	x3, [x19, 48]
	mul	x2, x3, x2
	ldr	x3, [x19, 32]
	lsl	x2, x2, 2
	add	x2, x3, x2
	str	x2, [sp, 176]
	sub	x0, x0, #1
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x0, x1, x0
	str	x0, [sp, 184]
	add	x25, sp, 176
	ldr	x23, [x19, 72]
	ldr	x1, [x19, 24]
	ldr	x0, [x19, 64]
	ldrsw	x24, [sp, 380]
	ldr	w22, [sp, 372]
	sub	x20, x1, #1
	sub	x21, x0, #1
	add	x0, sp, 512
	stp	xzr, xzr, [x0, -232]
	mov	x0, 1
	str	x0, [sp, 280]
	mov	w0, 2
	strb	w0, [sp, 292]
	mov	w0, 2
	strb	w0, [sp, 293]
	mov	x0, 1
	str	x0, [sp, 304]
	str	xzr, [sp, 312]
	str	x20, [sp, 320]
	lsr	x0, x20, 63
	mov	w4, w0
	add	x0, x20, 1
	str	x0, [sp, 328]
	str	xzr, [sp, 336]
	str	x21, [sp, 344]
	lsr	x1, x21, 63
	mov	w3, w1
	add	x1, x21, 1
	mul	x2, x0, x1
	mov	x0, 1
	str	x0, [sp, 296]
	eor	w1, w4, 1
	eor	w0, w3, 1
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L1047
	mov	x0, x2
	mov	x1, 1
	cmp	x0, 0
	csel	x0, x0, x1, ne
	b	.L1048
.L1047:
	mov	x0, 1
.L1048:
	bl	malloc
	str	x0, [sp, 264]
	str	xzr, [sp, 272]
	ldr	x2, [x19, 40]
	ldr	x0, [x19, 48]
	mul	x0, x24, x0
	add	x3, x23, x0
	mov	x0, 0
.L1052:
	cmp	x0, x21
	bgt	.L1049
	ldr	x1, [sp, 328]
	mul	x7, x0, x1
	add	x1, x0, 1
	ldr	x4, [x19, 56]
	mul	x1, x4, x1
	add	x8, x3, x1
	mov	x1, 0
.L1051:
	cmp	x1, x20
	bgt	.L1050
	add	x4, x1, 1
	mul	x4, x2, x4
	add	x5, x8, x4
	ldr	x4, [x19, 32]
	ldr	w6, [x4, x5, lsl 2]
	ldr	x5, [sp, 264]
	add	x4, x1, x7
	cmp	w22, w6
	cset	w6, eq
	and	w6, w6, 255
	strb	w6, [x5, x4]
	add	x1, x1, 1
	b	.L1051
.L1050:
	add	x0, x0, 1
	b	.L1052
.L1049:
	add	x1, sp, 264
	add	x0, sp, 112
	mov	w3, 0
	mov	x2, x1
	mov	x1, x25
	bl	_gfortran_mminloc0_4_i4
	ldr	x0, [sp, 264]
	bl	free
	mov	x0, 4
	str	x0, [sp, 144]
	stp	xzr, xzr, [sp, 128]
	mov	x0, 4
	str	x0, [sp, 128]
	mov	w0, 1
	strb	w0, [sp, 140]
	mov	w0, 1
	strb	w0, [sp, 141]
	mov	x0, 1
	str	x0, [sp, 160]
	mov	x0, 2
	str	x0, [sp, 168]
	mov	x0, 1
	str	x0, [sp, 152]
	add	x0, sp, 352
	str	x0, [sp, 112]
	mov	x0, -1
	str	x0, [sp, 120]
	ldr	x4, [x19, 64]
	ldrsw	x1, [sp, 380]
	mov	x0, 4
	str	x0, [sp, 208]
	stp	xzr, xzr, [sp, 192]
	mov	x0, 4
	str	x0, [sp, 192]
	mov	w0, 2
	strb	w0, [sp, 204]
	mov	w0, 1
	strb	w0, [sp, 205]
	ldr	x2, [x19, 72]
	ldr	x0, [x19, 40]
	str	xzr, [sp, 224]
	mov	x3, 8
	str	x3, [sp, 232]
	neg	x3, x0
	str	x3, [sp, 216]
	ldr	x3, [x19, 56]
	mov	x5, 1
	str	x5, [sp, 248]
	str	x4, [sp, 256]
	str	x3, [sp, 240]
	sub	x3, x1, #1
	ldr	x4, [x19, 48]
	mul	x4, x4, x3
	lsl	x3, x0, 3
	add	x3, x4, x3
	ldr	x4, [x19, 32]
	lsl	x3, x3, 2
	add	x3, x4, x3
	str	x3, [sp, 176]
	ldr	x3, [x19, 40]
	add	x2, x3, x2
	sub	x1, x1, #1
	ldr	x3, [x19, 48]
	mul	x1, x3, x1
	lsl	x0, x0, 3
	add	x0, x1, x0
	add	x0, x2, x0
	str	x0, [sp, 184]
	add	x24, sp, 176
	ldr	x22, [x19, 72]
	ldr	x0, [x19, 64]
	ldrsw	x23, [sp, 380]
	ldr	w21, [sp, 372]
	sub	x20, x0, #1
	add	x0, sp, 512
	stp	xzr, xzr, [x0, -232]
	mov	x0, 1
	str	x0, [sp, 280]
	mov	w0, 2
	strb	w0, [sp, 292]
	mov	w0, 2
	strb	w0, [sp, 293]
	mov	x0, 1
	str	x0, [sp, 304]
	str	xzr, [sp, 312]
	mov	x0, 8
	str	x0, [sp, 320]
	mov	x0, 9
	str	x0, [sp, 328]
	str	xzr, [sp, 336]
	str	x20, [sp, 344]
	lsr	x0, x20, 63
	mov	w2, w0
	add	x1, x20, 1
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	mov	x0, 1
	str	x0, [sp, 296]
	cmp	w2, 0
	beq	.L1053
	mov	x0, 1
	b	.L1054
.L1053:
	mov	x0, x1
	mov	x1, 1
	cmp	x0, 0
	csel	x0, x0, x1, ne
.L1054:
	bl	malloc
	str	x0, [sp, 264]
	str	xzr, [sp, 272]
	ldr	x2, [x19, 40]
	ldr	x0, [x19, 48]
	mul	x0, x23, x0
	add	x3, x22, x0
	mov	x0, 0
.L1058:
	cmp	x0, x20
	bgt	.L1055
	mov	x1, x0
	lsl	x1, x1, 3
	add	x7, x1, x0
	add	x1, x0, 1
	ldr	x4, [x19, 56]
	mul	x1, x4, x1
	add	x8, x3, x1
	mov	x1, 0
.L1057:
	cmp	x1, 8
	bgt	.L1056
	mov	x4, 9
	sub	x4, x4, x1
	mul	x4, x2, x4
	add	x5, x8, x4
	ldr	x4, [x19, 32]
	ldr	w6, [x4, x5, lsl 2]
	ldr	x5, [sp, 264]
	add	x4, x1, x7
	cmp	w21, w6
	cset	w6, eq
	and	w6, w6, 255
	strb	w6, [x5, x4]
	add	x1, x1, 1
	b	.L1057
.L1056:
	add	x0, x0, 1
	b	.L1058
.L1055:
	add	x1, sp, 264
	add	x0, sp, 112
	mov	w3, 0
	mov	x2, x1
	mov	x1, x24
	bl	_gfortran_mminloc0_4_i4
	ldr	x0, [sp, 264]
	bl	free
	ldr	w0, [sp, 352]
	mov	w1, 10
	sub	w0, w1, w0
	str	w0, [sp, 352]
	ldr	w1, [sp, 360]
	ldr	w0, [sp, 352]
	cmp	w1, w0
	beq	.L1043
	ldr	w0, [sp, 360]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	ldr	w0, [sp, 352]
	sub	w0, w0, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w0, w2
	lsr	x2, x2, 32
	asr	w0, w0, 31
	sub	w0, w2, w0
	cmp	w1, w0
	bne	.L1043
	ldr	w0, [sp, 360]
	str	w0, [sp, 396]
	ldr	w0, [sp, 380]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w2, w0, 1
	ldr	w0, [sp, 380]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w4, w0, w1
	str	w2, [sp, 376]
.L1066:
	ldr	w0, [sp, 376]
	cmp	w0, w4
	cset	w0, gt
	cmp	w0, 0
	bne	.L1171
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 380]
	cmp	w1, w0
	beq	.L1172
	mov	w1, 0
	ldr	x7, [x19, 72]
	ldr	w0, [sp, 396]
	sub	w0, w0, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w0, w2
	lsr	x2, x2, 32
	asr	w0, w0, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w2, [sp, 396]
	sub	w2, w2, #1
	mov	w3, 21846
	movk	w3, 0x5555, lsl 16
	smull	x3, w2, w3
	lsr	x3, x3, 32
	asr	w2, w2, 31
	sub	w2, w3, w2
	add	w3, w2, 1
	mov	w2, w3
	lsl	w2, w2, 1
	add	w2, w2, w3
	sxtw	x2, w2
	ldrsw	x9, [sp, 376]
	ldrsw	x8, [sp, 372]
	ldr	w3, [sp, 372]
	ldr	x5, [x19, 40]
	ldr	x6, [x19, 48]
	mul	x6, x9, x6
	add	x7, x7, x6
	ldr	x6, [x19, 56]
	mul	x6, x8, x6
	add	x6, x7, x6
.L1063:
	cmp	x0, x2
	bgt	.L1061
	mul	x7, x0, x5
	add	x8, x6, x7
	ldr	x7, [x19, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w3, w7
	bne	.L1062
	add	w1, w1, 1
.L1062:
	add	x0, x0, 1
	b	.L1063
.L1061:
	adrp	x0, __logic_MOD_clear_out
	add	x0, x0, :lo12:__logic_MOD_clear_out
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, __logic_MOD_clear_out
	add	x0, x0, :lo12:__logic_MOD_clear_out
	str	w1, [x0]
	ldr	x7, [x19, 72]
	ldr	w0, [sp, 396]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x3, w0
	ldr	w0, [sp, 396]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w0, w0, 1
	lsl	w0, w0, 1
	ldr	x9, [x19, 72]
	ldr	w0, [sp, 396]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w1, [sp, 396]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x1, w1
	ldrsw	x12, [sp, 376]
	ldrsw	x8, [sp, 372]
	ldrsw	x11, [sp, 376]
	ldrsw	x10, [sp, 372]
	ldr	w2, [sp, 372]
	sub	x3, x3, x0
	ldr	x5, [x19, 40]
	ldr	x6, [x19, 48]
	mul	x6, x12, x6
	add	x7, x7, x6
	ldr	x6, [x19, 56]
	mul	x6, x8, x6
	add	x6, x7, x6
	ldr	x7, [x19, 40]
	ldr	x8, [x19, 48]
	mul	x8, x11, x8
	add	x9, x9, x8
	ldr	x8, [x19, 56]
	mul	x8, x10, x8
	add	x8, x9, x8
.L1065:
	cmp	x0, x1
	bgt	.L1172
	mul	x9, x0, x7
	add	x10, x8, x9
	ldr	x9, [x19, 32]
	ldr	w9, [x9, x10, lsl 2]
	cmp	w2, w9
	bne	.L1064
	add	x9, x0, x3
	mul	x9, x5, x9
	add	x10, x6, x9
	ldr	x9, [x19, 32]
	str	wzr, [x9, x10, lsl 2]
.L1064:
	add	x0, x0, 1
	b	.L1065
.L1172:
	nop
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
	b	.L1066
.L1171:
	nop
.L1043:
	ldr	w0, [sp, 372]
	add	w0, w0, 1
	str	w0, [sp, 372]
	b	.L1067
.L1170:
	nop
	ldr	w0, [sp, 380]
	add	w0, w0, 1
	str	w0, [sp, 380]
	b	.L1068
.L1169:
	nop
	mov	w0, 1
	str	w0, [sp, 396]
.L1099:
	ldr	w0, [sp, 396]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L1173
	mov	w0, 1
	str	w0, [sp, 372]
.L1098:
	ldr	w0, [sp, 372]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L1174
	mov	w1, 0
	ldr	x5, [x19, 112]
	ldr	x2, [x19, 16]
	ldrsw	x6, [sp, 396]
	ldr	w3, [sp, 372]
	ldr	x4, [x19, 88]
	ldr	x0, [x19, 96]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L1073:
	cmp	x0, x2
	bgt	.L1071
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 80]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w3, w6
	bne	.L1072
	mov	w1, 1
	b	.L1071
.L1072:
	add	x0, x0, 1
	b	.L1073
.L1071:
	cmp	w1, 0
	bne	.L1074
	mov	w1, 0
	ldr	x5, [x19, 72]
	ldr	x2, [x19, 8]
	ldrsw	x7, [sp, 396]
	ldrsw	x6, [sp, 372]
	ldr	w3, [sp, 372]
	ldr	x4, [x19, 48]
	ldr	x0, [x19, 40]
	mul	x0, x7, x0
	add	x5, x5, x0
	ldr	x0, [x19, 56]
	mul	x0, x6, x0
	add	x5, x5, x0
	mov	x0, 1
.L1077:
	cmp	x0, x2
	bgt	.L1075
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w3, w6
	bne	.L1076
	add	w1, w1, 1
.L1076:
	add	x0, x0, 1
	b	.L1077
.L1075:
	cmp	w1, 0
	beq	.L1074
	mov	x0, 4
	str	x0, [sp, 144]
	stp	xzr, xzr, [sp, 128]
	mov	x0, 4
	str	x0, [sp, 128]
	mov	w0, 1
	strb	w0, [sp, 140]
	mov	w0, 1
	strb	w0, [sp, 141]
	mov	x0, 1
	str	x0, [sp, 160]
	mov	x0, 2
	str	x0, [sp, 168]
	mov	x0, 1
	str	x0, [sp, 152]
	add	x0, sp, 360
	str	x0, [sp, 112]
	mov	x0, -1
	str	x0, [sp, 120]
	ldr	x4, [x19, 8]
	ldr	x3, [x19, 64]
	ldrsw	x0, [sp, 396]
	mov	x1, 4
	str	x1, [sp, 208]
	stp	xzr, xzr, [sp, 192]
	mov	x1, 4
	str	x1, [sp, 192]
	mov	w1, 2
	strb	w1, [sp, 204]
	mov	w1, 1
	strb	w1, [sp, 205]
	ldr	x1, [x19, 72]
	ldr	x2, [x19, 48]
	mov	x5, 1
	str	x5, [sp, 224]
	str	x4, [sp, 232]
	str	x2, [sp, 216]
	ldr	x2, [x19, 56]
	mov	x4, 1
	str	x4, [sp, 248]
	str	x3, [sp, 256]
	str	x2, [sp, 240]
	sub	x2, x0, #1
	ldr	x3, [x19, 40]
	mul	x2, x3, x2
	ldr	x3, [x19, 32]
	lsl	x2, x2, 2
	add	x2, x3, x2
	str	x2, [sp, 176]
	sub	x0, x0, #1
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x0, x1, x0
	str	x0, [sp, 184]
	add	x25, sp, 176
	ldr	x23, [x19, 72]
	ldr	x1, [x19, 8]
	ldr	x0, [x19, 64]
	ldrsw	x24, [sp, 396]
	ldr	w22, [sp, 372]
	sub	x20, x1, #1
	sub	x21, x0, #1
	add	x0, sp, 512
	stp	xzr, xzr, [x0, -232]
	mov	x0, 1
	str	x0, [sp, 280]
	mov	w0, 2
	strb	w0, [sp, 292]
	mov	w0, 2
	strb	w0, [sp, 293]
	mov	x0, 1
	str	x0, [sp, 304]
	str	xzr, [sp, 312]
	str	x20, [sp, 320]
	lsr	x0, x20, 63
	mov	w4, w0
	add	x0, x20, 1
	str	x0, [sp, 328]
	str	xzr, [sp, 336]
	str	x21, [sp, 344]
	lsr	x1, x21, 63
	mov	w3, w1
	add	x1, x21, 1
	mul	x2, x0, x1
	mov	x0, 1
	str	x0, [sp, 296]
	eor	w1, w4, 1
	eor	w0, w3, 1
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L1078
	mov	x0, x2
	mov	x1, 1
	cmp	x0, 0
	csel	x0, x0, x1, ne
	b	.L1079
.L1078:
	mov	x0, 1
.L1079:
	bl	malloc
	str	x0, [sp, 264]
	str	xzr, [sp, 272]
	ldr	x2, [x19, 48]
	ldr	x0, [x19, 40]
	mul	x0, x24, x0
	add	x3, x23, x0
	mov	x0, 0
.L1083:
	cmp	x0, x21
	bgt	.L1080
	ldr	x1, [sp, 328]
	mul	x7, x0, x1
	add	x1, x0, 1
	ldr	x4, [x19, 56]
	mul	x1, x4, x1
	add	x8, x3, x1
	mov	x1, 0
.L1082:
	cmp	x1, x20
	bgt	.L1081
	add	x4, x1, 1
	mul	x4, x2, x4
	add	x5, x8, x4
	ldr	x4, [x19, 32]
	ldr	w6, [x4, x5, lsl 2]
	ldr	x5, [sp, 264]
	add	x4, x1, x7
	cmp	w22, w6
	cset	w6, eq
	and	w6, w6, 255
	strb	w6, [x5, x4]
	add	x1, x1, 1
	b	.L1082
.L1081:
	add	x0, x0, 1
	b	.L1083
.L1080:
	add	x1, sp, 264
	add	x0, sp, 112
	mov	w3, 0
	mov	x2, x1
	mov	x1, x25
	bl	_gfortran_mminloc0_4_i4
	ldr	x0, [sp, 264]
	bl	free
	mov	x0, 4
	str	x0, [sp, 144]
	stp	xzr, xzr, [sp, 128]
	mov	x0, 4
	str	x0, [sp, 128]
	mov	w0, 1
	strb	w0, [sp, 140]
	mov	w0, 1
	strb	w0, [sp, 141]
	mov	x0, 1
	str	x0, [sp, 160]
	mov	x0, 2
	str	x0, [sp, 168]
	mov	x0, 1
	str	x0, [sp, 152]
	add	x0, sp, 352
	str	x0, [sp, 112]
	mov	x0, -1
	str	x0, [sp, 120]
	ldr	x4, [x19, 64]
	ldrsw	x1, [sp, 396]
	mov	x0, 4
	str	x0, [sp, 208]
	stp	xzr, xzr, [sp, 192]
	mov	x0, 4
	str	x0, [sp, 192]
	mov	w0, 2
	strb	w0, [sp, 204]
	mov	w0, 1
	strb	w0, [sp, 205]
	ldr	x2, [x19, 72]
	ldr	x0, [x19, 48]
	str	xzr, [sp, 224]
	mov	x3, 8
	str	x3, [sp, 232]
	neg	x3, x0
	str	x3, [sp, 216]
	ldr	x3, [x19, 56]
	mov	x5, 1
	str	x5, [sp, 248]
	str	x4, [sp, 256]
	str	x3, [sp, 240]
	lsl	x4, x0, 3
	sub	x3, x1, #1
	ldr	x5, [x19, 40]
	mul	x3, x5, x3
	add	x3, x4, x3
	ldr	x4, [x19, 32]
	lsl	x3, x3, 2
	add	x3, x4, x3
	str	x3, [sp, 176]
	ldr	x3, [x19, 48]
	add	x2, x3, x2
	lsl	x3, x0, 3
	sub	x0, x1, #1
	ldr	x1, [x19, 40]
	mul	x0, x1, x0
	add	x0, x3, x0
	add	x0, x2, x0
	str	x0, [sp, 184]
	add	x24, sp, 176
	ldr	x22, [x19, 72]
	ldr	x0, [x19, 64]
	ldrsw	x23, [sp, 396]
	ldr	w21, [sp, 372]
	sub	x20, x0, #1
	add	x0, sp, 512
	stp	xzr, xzr, [x0, -232]
	mov	x0, 1
	str	x0, [sp, 280]
	mov	w0, 2
	strb	w0, [sp, 292]
	mov	w0, 2
	strb	w0, [sp, 293]
	mov	x0, 1
	str	x0, [sp, 304]
	str	xzr, [sp, 312]
	mov	x0, 8
	str	x0, [sp, 320]
	mov	x0, 9
	str	x0, [sp, 328]
	str	xzr, [sp, 336]
	str	x20, [sp, 344]
	lsr	x0, x20, 63
	mov	w2, w0
	add	x1, x20, 1
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	mov	x0, 1
	str	x0, [sp, 296]
	cmp	w2, 0
	beq	.L1084
	mov	x0, 1
	b	.L1085
.L1084:
	mov	x0, x1
	mov	x1, 1
	cmp	x0, 0
	csel	x0, x0, x1, ne
.L1085:
	bl	malloc
	str	x0, [sp, 264]
	str	xzr, [sp, 272]
	ldr	x2, [x19, 48]
	ldr	x0, [x19, 40]
	mul	x0, x23, x0
	add	x3, x22, x0
	mov	x0, 0
.L1089:
	cmp	x0, x20
	bgt	.L1086
	mov	x1, x0
	lsl	x1, x1, 3
	add	x7, x1, x0
	add	x1, x0, 1
	ldr	x4, [x19, 56]
	mul	x1, x4, x1
	add	x8, x3, x1
	mov	x1, 0
.L1088:
	cmp	x1, 8
	bgt	.L1087
	mov	x4, 9
	sub	x4, x4, x1
	mul	x4, x2, x4
	add	x5, x8, x4
	ldr	x4, [x19, 32]
	ldr	w6, [x4, x5, lsl 2]
	ldr	x5, [sp, 264]
	add	x4, x1, x7
	cmp	w21, w6
	cset	w6, eq
	and	w6, w6, 255
	strb	w6, [x5, x4]
	add	x1, x1, 1
	b	.L1088
.L1087:
	add	x0, x0, 1
	b	.L1089
.L1086:
	add	x1, sp, 264
	add	x0, sp, 112
	mov	w3, 0
	mov	x2, x1
	mov	x1, x24
	bl	_gfortran_mminloc0_4_i4
	ldr	x0, [sp, 264]
	bl	free
	ldr	w0, [sp, 352]
	mov	w1, 10
	sub	w0, w1, w0
	str	w0, [sp, 352]
	ldr	w1, [sp, 360]
	ldr	w0, [sp, 352]
	cmp	w1, w0
	beq	.L1074
	ldr	w0, [sp, 360]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	ldr	w0, [sp, 352]
	sub	w0, w0, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w0, w2
	lsr	x2, x2, 32
	asr	w0, w0, 31
	sub	w0, w2, w0
	cmp	w1, w0
	bne	.L1074
	ldr	w0, [sp, 360]
	str	w0, [sp, 380]
	ldr	w0, [sp, 396]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w2, w0, 1
	ldr	w0, [sp, 396]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w4, w0, w1
	str	w2, [sp, 392]
.L1097:
	ldr	w0, [sp, 392]
	cmp	w0, w4
	cset	w0, gt
	cmp	w0, 0
	bne	.L1175
	ldr	w1, [sp, 392]
	ldr	w0, [sp, 396]
	cmp	w1, w0
	beq	.L1176
	mov	w1, 0
	ldr	x7, [x19, 72]
	ldr	w0, [sp, 380]
	sub	w0, w0, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w0, w2
	lsr	x2, x2, 32
	asr	w0, w0, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w2, [sp, 380]
	sub	w2, w2, #1
	mov	w3, 21846
	movk	w3, 0x5555, lsl 16
	smull	x3, w2, w3
	lsr	x3, x3, 32
	asr	w2, w2, 31
	sub	w2, w3, w2
	add	w3, w2, 1
	mov	w2, w3
	lsl	w2, w2, 1
	add	w2, w2, w3
	sxtw	x2, w2
	ldrsw	x9, [sp, 392]
	ldrsw	x8, [sp, 372]
	ldr	w3, [sp, 372]
	ldr	x5, [x19, 48]
	ldr	x6, [x19, 40]
	mul	x6, x9, x6
	add	x7, x7, x6
	ldr	x6, [x19, 56]
	mul	x6, x8, x6
	add	x6, x7, x6
.L1094:
	cmp	x0, x2
	bgt	.L1092
	mul	x7, x0, x5
	add	x8, x6, x7
	ldr	x7, [x19, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w3, w7
	bne	.L1093
	add	w1, w1, 1
.L1093:
	add	x0, x0, 1
	b	.L1094
.L1092:
	adrp	x0, __logic_MOD_clear_out
	add	x0, x0, :lo12:__logic_MOD_clear_out
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, __logic_MOD_clear_out
	add	x0, x0, :lo12:__logic_MOD_clear_out
	str	w1, [x0]
	ldr	x7, [x19, 72]
	ldr	w0, [sp, 380]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x3, w0
	ldr	w0, [sp, 380]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w0, w0, 1
	lsl	w0, w0, 1
	ldr	x9, [x19, 72]
	ldr	w0, [sp, 380]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w1, [sp, 380]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x1, w1
	ldrsw	x12, [sp, 392]
	ldrsw	x8, [sp, 372]
	ldrsw	x11, [sp, 392]
	ldrsw	x10, [sp, 372]
	ldr	w2, [sp, 372]
	sub	x3, x3, x0
	ldr	x5, [x19, 48]
	ldr	x6, [x19, 40]
	mul	x6, x12, x6
	add	x7, x7, x6
	ldr	x6, [x19, 56]
	mul	x6, x8, x6
	add	x6, x7, x6
	ldr	x7, [x19, 48]
	ldr	x8, [x19, 40]
	mul	x8, x11, x8
	add	x9, x9, x8
	ldr	x8, [x19, 56]
	mul	x8, x10, x8
	add	x8, x9, x8
.L1096:
	cmp	x0, x1
	bgt	.L1176
	mul	x9, x0, x7
	add	x10, x8, x9
	ldr	x9, [x19, 32]
	ldr	w9, [x9, x10, lsl 2]
	cmp	w2, w9
	bne	.L1095
	add	x9, x0, x3
	mul	x9, x5, x9
	add	x10, x6, x9
	ldr	x9, [x19, 32]
	str	wzr, [x9, x10, lsl 2]
.L1095:
	add	x0, x0, 1
	b	.L1096
.L1176:
	nop
	ldr	w0, [sp, 392]
	add	w0, w0, 1
	str	w0, [sp, 392]
	b	.L1097
.L1175:
	nop
.L1074:
	ldr	w0, [sp, 372]
	add	w0, w0, 1
	str	w0, [sp, 372]
	b	.L1098
.L1174:
	nop
	ldr	w0, [sp, 396]
	add	w0, w0, 1
	str	w0, [sp, 396]
	b	.L1099
.L1173:
	nop
	str	wzr, [sp, 408]
.L1168:
	ldr	w0, [sp, 408]
	cmp	w0, 2
	cset	w0, gt
	cmp	w0, 0
	bne	.L1177
	str	wzr, [sp, 412]
.L1167:
	ldr	w0, [sp, 412]
	cmp	w0, 2
	cset	w0, gt
	cmp	w0, 0
	bne	.L1178
	mov	w0, 1
	str	w0, [sp, 372]
.L1166:
	ldr	w0, [sp, 372]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L1179
	mov	w2, 0
	ldr	x4, [x19, 112]
	ldr	w1, [sp, 408]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x11, w0
	ldr	w0, [sp, 408]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x5, w0
	ldr	w1, [sp, 412]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w1, [sp, 412]
	add	w3, w1, 1
	mov	w1, w3
	lsl	w1, w1, 1
	add	w1, w1, w3
	sxtw	x3, w1
	ldr	w6, [sp, 372]
	ldr	x7, [x19, 88]
.L1107:
	cmp	x0, x3
	bgt	.L1103
	ldr	x1, [x19, 96]
	mul	x1, x0, x1
	add	x8, x4, x1
	mov	x1, x11
.L1106:
	cmp	x1, x5
	bgt	.L1104
	mul	x9, x1, x7
	add	x10, x8, x9
	ldr	x9, [x19, 80]
	ldr	w9, [x9, x10, lsl 2]
	cmp	w6, w9
	bne	.L1105
	mov	w2, 1
	b	.L1103
.L1105:
	add	x1, x1, 1
	b	.L1106
.L1104:
	add	x0, x0, 1
	b	.L1107
.L1103:
	cmp	w2, 0
	bne	.L1108
	mov	w0, 4
	str	w0, [sp, 384]
	ldr	w1, [sp, 412]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w2, w0, 1
	ldr	w0, [sp, 412]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w23, w0, w1
	str	w2, [sp, 392]
.L1120:
	ldr	w0, [sp, 392]
	cmp	w0, w23
	cset	w0, gt
	cmp	w0, 0
	bne	.L1180
	mov	w1, 0
	ldr	x6, [x19, 72]
	ldr	w2, [sp, 408]
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w2, [sp, 408]
	add	w3, w2, 1
	mov	w2, w3
	lsl	w2, w2, 1
	add	w2, w2, w3
	sxtw	x2, w2
	ldrsw	x8, [sp, 392]
	ldrsw	x7, [sp, 372]
	ldr	w3, [sp, 372]
	ldr	x4, [x19, 48]
	ldr	x5, [x19, 40]
	mul	x5, x8, x5
	add	x6, x6, x5
	ldr	x5, [x19, 56]
	mul	x5, x7, x5
	add	x5, x6, x5
.L1112:
	cmp	x0, x2
	bgt	.L1110
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w3, w6
	bne	.L1111
	add	w1, w1, 1
.L1111:
	add	x0, x0, 1
	b	.L1112
.L1110:
	cmp	w1, 0
	beq	.L1181
	mov	x0, 4
	str	x0, [sp, 144]
	stp	xzr, xzr, [sp, 128]
	mov	x0, 4
	str	x0, [sp, 128]
	mov	w0, 1
	strb	w0, [sp, 140]
	mov	w0, 1
	strb	w0, [sp, 141]
	mov	x0, 1
	str	x0, [sp, 160]
	mov	x0, 2
	str	x0, [sp, 168]
	mov	x0, 1
	str	x0, [sp, 152]
	add	x0, sp, 360
	str	x0, [sp, 112]
	mov	x0, -1
	str	x0, [sp, 120]
	ldr	w1, [sp, 408]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w1, [sp, 408]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x3, w1
	ldr	x5, [x19, 64]
	ldrsw	x2, [sp, 392]
	mov	x1, 4
	str	x1, [sp, 208]
	stp	xzr, xzr, [sp, 192]
	mov	x1, 4
	str	x1, [sp, 192]
	mov	w1, 2
	strb	w1, [sp, 204]
	mov	w1, 1
	strb	w1, [sp, 205]
	ldr	x4, [x19, 72]
	ldr	x1, [x19, 48]
	str	x0, [sp, 224]
	str	x3, [sp, 232]
	str	x1, [sp, 216]
	ldr	x3, [x19, 56]
	mov	x6, 1
	str	x6, [sp, 248]
	str	x5, [sp, 256]
	str	x3, [sp, 240]
	sub	x3, x0, #1
	mul	x5, x1, x3
	sub	x3, x2, #1
	ldr	x6, [x19, 40]
	mul	x3, x6, x3
	add	x3, x5, x3
	ldr	x5, [x19, 32]
	lsl	x3, x3, 2
	add	x3, x5, x3
	str	x3, [sp, 176]
	mov	x3, 1
	sub	x3, x3, x0
	ldr	x5, [x19, 48]
	mul	x3, x5, x3
	add	x3, x4, x3
	sub	x0, x0, #1
	mul	x1, x1, x0
	sub	x0, x2, #1
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x0, x1, x0
	add	x0, x3, x0
	str	x0, [sp, 184]
	add	x27, sp, 176
	ldr	x25, [x19, 72]
	ldr	w1, [sp, 408]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x22, w0
	ldr	w0, [sp, 408]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x1, w0
	ldr	x0, [x19, 64]
	ldrsw	x26, [sp, 392]
	ldr	w24, [sp, 372]
	sub	x20, x1, x22
	sub	x21, x0, #1
	add	x0, sp, 512
	stp	xzr, xzr, [x0, -232]
	mov	x0, 1
	str	x0, [sp, 280]
	mov	w0, 2
	strb	w0, [sp, 292]
	mov	w0, 2
	strb	w0, [sp, 293]
	mov	x0, 1
	str	x0, [sp, 304]
	str	xzr, [sp, 312]
	str	x20, [sp, 320]
	lsr	x0, x20, 63
	mov	w4, w0
	add	x0, x20, 1
	str	x0, [sp, 328]
	str	xzr, [sp, 336]
	str	x21, [sp, 344]
	lsr	x1, x21, 63
	mov	w3, w1
	add	x1, x21, 1
	mul	x2, x0, x1
	mov	x0, 1
	str	x0, [sp, 296]
	eor	w1, w4, 1
	eor	w0, w3, 1
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L1114
	mov	x0, x2
	mov	x1, 1
	cmp	x0, 0
	csel	x0, x0, x1, ne
	b	.L1115
.L1114:
	mov	x0, 1
.L1115:
	bl	malloc
	str	x0, [sp, 264]
	str	xzr, [sp, 272]
	ldr	x2, [x19, 48]
	ldr	x0, [x19, 40]
	mul	x0, x26, x0
	add	x3, x25, x0
	mov	x0, 0
.L1119:
	cmp	x0, x21
	bgt	.L1116
	ldr	x1, [sp, 328]
	mul	x7, x0, x1
	add	x1, x0, 1
	ldr	x4, [x19, 56]
	mul	x1, x4, x1
	add	x8, x3, x1
	mov	x1, 0
.L1118:
	cmp	x1, x20
	bgt	.L1117
	add	x4, x1, x22
	mul	x4, x2, x4
	add	x5, x8, x4
	ldr	x4, [x19, 32]
	ldr	w6, [x4, x5, lsl 2]
	ldr	x5, [sp, 264]
	add	x4, x1, x7
	cmp	w24, w6
	cset	w6, eq
	and	w6, w6, 255
	strb	w6, [x5, x4]
	add	x1, x1, 1
	b	.L1118
.L1117:
	add	x0, x0, 1
	b	.L1119
.L1116:
	add	x1, sp, 264
	add	x0, sp, 112
	mov	w3, 0
	mov	x2, x1
	mov	x1, x27
	bl	_gfortran_mminloc0_4_i4
	ldr	x0, [sp, 264]
	bl	free
	ldr	w0, [sp, 384]
	ldr	w1, [sp, 360]
	cmp	w1, w0
	csel	w0, w1, w0, le
	str	w0, [sp, 384]
	b	.L1113
.L1181:
	nop
.L1113:
	ldr	w0, [sp, 392]
	add	w0, w0, 1
	str	w0, [sp, 392]
	b	.L1120
.L1180:
	nop
	mov	w0, 4
	str	w0, [sp, 388]
	ldr	w1, [sp, 412]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w2, w0, 1
	ldr	w0, [sp, 412]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w23, w0, w1
	str	w2, [sp, 392]
.L1132:
	ldr	w0, [sp, 392]
	cmp	w0, w23
	cset	w0, gt
	cmp	w0, 0
	bne	.L1182
	mov	w1, 0
	ldr	x6, [x19, 72]
	ldr	w0, [sp, 408]
	add	w2, w0, 1
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	sxtw	x2, w0
	ldr	w3, [sp, 408]
	mov	w0, w3
	lsl	w0, w0, 1
	add	w0, w0, w3
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x2, x0
	mov	x3, -1
	cmp	x0, 0
	csel	x3, x0, x3, ge
	ldrsw	x8, [sp, 392]
	ldrsw	x7, [sp, 372]
	ldr	w4, [sp, 372]
	ldr	x5, [x19, 48]
	ldr	x0, [x19, 40]
	mul	x0, x8, x0
	add	x6, x6, x0
	ldr	x0, [x19, 56]
	mul	x0, x7, x0
	add	x6, x6, x0
	mov	x0, 0
.L1124:
	cmp	x0, x3
	bgt	.L1122
	sub	x7, x2, x0
	mul	x7, x5, x7
	add	x8, x6, x7
	ldr	x7, [x19, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L1123
	add	w1, w1, 1
.L1123:
	add	x0, x0, 1
	b	.L1124
.L1122:
	cmp	w1, 0
	beq	.L1183
	mov	x0, 4
	str	x0, [sp, 144]
	stp	xzr, xzr, [sp, 128]
	mov	x0, 4
	str	x0, [sp, 128]
	mov	w0, 1
	strb	w0, [sp, 140]
	mov	w0, 1
	strb	w0, [sp, 141]
	mov	x0, 1
	str	x0, [sp, 160]
	mov	x0, 2
	str	x0, [sp, 168]
	mov	x0, 1
	str	x0, [sp, 152]
	add	x0, sp, 360
	str	x0, [sp, 112]
	mov	x0, -1
	str	x0, [sp, 120]
	ldr	w0, [sp, 408]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x1, w0
	ldr	w2, [sp, 408]
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x5, [x19, 64]
	sub	x0, x1, x0
	mov	x2, -1
	cmp	x0, 0
	csel	x4, x0, x2, ge
	ldrsw	x2, [sp, 392]
	mov	x0, 4
	str	x0, [sp, 208]
	stp	xzr, xzr, [sp, 192]
	mov	x0, 4
	str	x0, [sp, 192]
	mov	w0, 2
	strb	w0, [sp, 204]
	mov	w0, 1
	strb	w0, [sp, 205]
	ldr	x3, [x19, 72]
	ldr	x0, [x19, 48]
	str	xzr, [sp, 224]
	str	x4, [sp, 232]
	neg	x4, x0
	str	x4, [sp, 216]
	ldr	x4, [x19, 56]
	mov	x6, 1
	str	x6, [sp, 248]
	str	x5, [sp, 256]
	str	x4, [sp, 240]
	sub	x4, x1, #1
	mul	x5, x0, x4
	sub	x4, x2, #1
	ldr	x6, [x19, 40]
	mul	x4, x6, x4
	add	x4, x5, x4
	ldr	x5, [x19, 32]
	lsl	x4, x4, 2
	add	x4, x5, x4
	str	x4, [sp, 176]
	ldr	x4, [x19, 48]
	add	x3, x4, x3
	sub	x1, x1, #1
	mul	x1, x0, x1
	sub	x0, x2, #1
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x0, x1, x0
	add	x0, x3, x0
	str	x0, [sp, 184]
	add	x27, sp, 176
	ldr	x25, [x19, 72]
	ldr	w0, [sp, 408]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x22, w0
	ldr	w1, [sp, 408]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [x19, 64]
	sub	x0, x22, x0
	mov	x2, -1
	cmp	x0, 0
	csel	x20, x0, x2, ge
	ldrsw	x26, [sp, 392]
	ldr	w24, [sp, 372]
	sub	x21, x1, #1
	add	x0, sp, 512
	stp	xzr, xzr, [x0, -232]
	mov	x0, 1
	str	x0, [sp, 280]
	mov	w0, 2
	strb	w0, [sp, 292]
	mov	w0, 2
	strb	w0, [sp, 293]
	mov	x0, 1
	str	x0, [sp, 304]
	str	xzr, [sp, 312]
	str	x20, [sp, 320]
	lsr	x0, x20, 63
	mov	w4, w0
	add	x0, x20, 1
	str	x0, [sp, 328]
	str	xzr, [sp, 336]
	str	x21, [sp, 344]
	lsr	x1, x21, 63
	mov	w3, w1
	add	x1, x21, 1
	mul	x2, x0, x1
	mov	x0, 1
	str	x0, [sp, 296]
	eor	w1, w4, 1
	eor	w0, w3, 1
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L1126
	mov	x0, x2
	mov	x1, 1
	cmp	x0, 0
	csel	x0, x0, x1, ne
	b	.L1127
.L1126:
	mov	x0, 1
.L1127:
	bl	malloc
	str	x0, [sp, 264]
	str	xzr, [sp, 272]
	ldr	x2, [x19, 48]
	ldr	x0, [x19, 40]
	mul	x0, x26, x0
	add	x3, x25, x0
	mov	x0, 0
.L1131:
	cmp	x0, x21
	bgt	.L1128
	ldr	x1, [sp, 328]
	mul	x7, x0, x1
	add	x1, x0, 1
	ldr	x4, [x19, 56]
	mul	x1, x4, x1
	add	x8, x3, x1
	mov	x1, 0
.L1130:
	cmp	x1, x20
	bgt	.L1129
	sub	x4, x22, x1
	mul	x4, x2, x4
	add	x5, x8, x4
	ldr	x4, [x19, 32]
	ldr	w6, [x4, x5, lsl 2]
	ldr	x5, [sp, 264]
	add	x4, x1, x7
	cmp	w24, w6
	cset	w6, eq
	and	w6, w6, 255
	strb	w6, [x5, x4]
	add	x1, x1, 1
	b	.L1130
.L1129:
	add	x0, x0, 1
	b	.L1131
.L1128:
	add	x1, sp, 264
	add	x0, sp, 112
	mov	w3, 0
	mov	x2, x1
	mov	x1, x27
	bl	_gfortran_mminloc0_4_i4
	ldr	x0, [sp, 264]
	bl	free
	ldr	w0, [sp, 388]
	ldr	w1, [sp, 360]
	cmp	w1, w0
	csel	w0, w1, w0, le
	str	w0, [sp, 388]
	b	.L1125
.L1183:
	nop
.L1125:
	ldr	w0, [sp, 392]
	add	w0, w0, 1
	str	w0, [sp, 392]
	b	.L1132
.L1182:
	nop
	ldr	w1, [sp, 408]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	ldr	w1, [sp, 384]
	add	w0, w1, w0
	str	w0, [sp, 384]
	mov	w1, 4
	ldr	w0, [sp, 388]
	sub	w2, w1, w0
	ldr	w1, [sp, 408]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w2, w0
	str	w0, [sp, 388]
	mov	w0, 10
	str	w0, [sp, 400]
	ldr	w1, [sp, 408]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w2, w0, 1
	ldr	w0, [sp, 408]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w23, w0, w1
	str	w2, [sp, 376]
.L1144:
	ldr	w0, [sp, 376]
	cmp	w0, w23
	cset	w0, gt
	cmp	w0, 0
	bne	.L1184
	mov	w1, 0
	ldr	x6, [x19, 72]
	ldr	w2, [sp, 412]
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w2, [sp, 412]
	add	w3, w2, 1
	mov	w2, w3
	lsl	w2, w2, 1
	add	w2, w2, w3
	sxtw	x2, w2
	ldrsw	x8, [sp, 376]
	ldrsw	x7, [sp, 372]
	ldr	w3, [sp, 372]
	ldr	x4, [x19, 40]
	ldr	x5, [x19, 48]
	mul	x5, x8, x5
	add	x6, x6, x5
	ldr	x5, [x19, 56]
	mul	x5, x7, x5
	add	x5, x6, x5
.L1136:
	cmp	x0, x2
	bgt	.L1134
	mul	x6, x0, x4
	add	x7, x5, x6
	ldr	x6, [x19, 32]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w3, w6
	bne	.L1135
	add	w1, w1, 1
.L1135:
	add	x0, x0, 1
	b	.L1136
.L1134:
	cmp	w1, 0
	beq	.L1185
	mov	x0, 4
	str	x0, [sp, 144]
	stp	xzr, xzr, [sp, 128]
	mov	x0, 4
	str	x0, [sp, 128]
	mov	w0, 1
	strb	w0, [sp, 140]
	mov	w0, 1
	strb	w0, [sp, 141]
	mov	x0, 1
	str	x0, [sp, 160]
	mov	x0, 2
	str	x0, [sp, 168]
	mov	x0, 1
	str	x0, [sp, 152]
	add	x0, sp, 352
	str	x0, [sp, 112]
	mov	x0, -1
	str	x0, [sp, 120]
	ldr	w1, [sp, 412]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w1, [sp, 412]
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x3, w1
	ldr	x5, [x19, 64]
	ldrsw	x2, [sp, 376]
	mov	x1, 4
	str	x1, [sp, 208]
	stp	xzr, xzr, [sp, 192]
	mov	x1, 4
	str	x1, [sp, 192]
	mov	w1, 2
	strb	w1, [sp, 204]
	mov	w1, 1
	strb	w1, [sp, 205]
	ldr	x4, [x19, 72]
	ldr	x1, [x19, 40]
	str	x0, [sp, 224]
	str	x3, [sp, 232]
	str	x1, [sp, 216]
	ldr	x3, [x19, 56]
	mov	x6, 1
	str	x6, [sp, 248]
	str	x5, [sp, 256]
	str	x3, [sp, 240]
	sub	x3, x2, #1
	ldr	x5, [x19, 48]
	mul	x5, x5, x3
	sub	x3, x0, #1
	mul	x3, x1, x3
	add	x3, x5, x3
	ldr	x5, [x19, 32]
	lsl	x3, x3, 2
	add	x3, x5, x3
	str	x3, [sp, 176]
	mov	x3, 1
	sub	x3, x3, x0
	ldr	x5, [x19, 40]
	mul	x3, x5, x3
	add	x3, x4, x3
	sub	x2, x2, #1
	ldr	x4, [x19, 48]
	mul	x2, x4, x2
	sub	x0, x0, #1
	mul	x0, x1, x0
	add	x0, x2, x0
	add	x0, x3, x0
	str	x0, [sp, 184]
	add	x27, sp, 176
	ldr	x25, [x19, 72]
	ldr	w1, [sp, 412]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x22, w0
	ldr	w0, [sp, 412]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x1, w0
	ldr	x0, [x19, 64]
	ldrsw	x26, [sp, 376]
	ldr	w24, [sp, 372]
	sub	x20, x1, x22
	sub	x21, x0, #1
	add	x0, sp, 512
	stp	xzr, xzr, [x0, -232]
	mov	x0, 1
	str	x0, [sp, 280]
	mov	w0, 2
	strb	w0, [sp, 292]
	mov	w0, 2
	strb	w0, [sp, 293]
	mov	x0, 1
	str	x0, [sp, 304]
	str	xzr, [sp, 312]
	str	x20, [sp, 320]
	lsr	x0, x20, 63
	mov	w4, w0
	add	x0, x20, 1
	str	x0, [sp, 328]
	str	xzr, [sp, 336]
	str	x21, [sp, 344]
	lsr	x1, x21, 63
	mov	w3, w1
	add	x1, x21, 1
	mul	x2, x0, x1
	mov	x0, 1
	str	x0, [sp, 296]
	eor	w1, w4, 1
	eor	w0, w3, 1
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L1138
	mov	x0, x2
	mov	x1, 1
	cmp	x0, 0
	csel	x0, x0, x1, ne
	b	.L1139
.L1138:
	mov	x0, 1
.L1139:
	bl	malloc
	str	x0, [sp, 264]
	str	xzr, [sp, 272]
	ldr	x2, [x19, 40]
	ldr	x0, [x19, 48]
	mul	x0, x26, x0
	add	x3, x25, x0
	mov	x0, 0
.L1143:
	cmp	x0, x21
	bgt	.L1140
	ldr	x1, [sp, 328]
	mul	x7, x0, x1
	add	x1, x0, 1
	ldr	x4, [x19, 56]
	mul	x1, x4, x1
	add	x8, x3, x1
	mov	x1, 0
.L1142:
	cmp	x1, x20
	bgt	.L1141
	add	x4, x1, x22
	mul	x4, x2, x4
	add	x5, x8, x4
	ldr	x4, [x19, 32]
	ldr	w6, [x4, x5, lsl 2]
	ldr	x5, [sp, 264]
	add	x4, x1, x7
	cmp	w24, w6
	cset	w6, eq
	and	w6, w6, 255
	strb	w6, [x5, x4]
	add	x1, x1, 1
	b	.L1142
.L1141:
	add	x0, x0, 1
	b	.L1143
.L1140:
	add	x1, sp, 264
	add	x0, sp, 112
	mov	w3, 0
	mov	x2, x1
	mov	x1, x27
	bl	_gfortran_mminloc0_4_i4
	ldr	x0, [sp, 264]
	bl	free
	ldr	w0, [sp, 400]
	ldr	w1, [sp, 352]
	cmp	w1, w0
	csel	w0, w1, w0, le
	str	w0, [sp, 400]
	b	.L1137
.L1185:
	nop
.L1137:
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
	b	.L1144
.L1184:
	nop
	mov	w0, 10
	str	w0, [sp, 404]
	ldr	w1, [sp, 408]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w2, w0, 1
	ldr	w0, [sp, 408]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w23, w0, w1
	str	w2, [sp, 376]
.L1156:
	ldr	w0, [sp, 376]
	cmp	w0, w23
	cset	w0, gt
	cmp	w0, 0
	bne	.L1186
	mov	w1, 0
	ldr	x6, [x19, 72]
	ldr	w0, [sp, 412]
	add	w2, w0, 1
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	sxtw	x2, w0
	ldr	w3, [sp, 412]
	mov	w0, w3
	lsl	w0, w0, 1
	add	w0, w0, w3
	add	w0, w0, 1
	sxtw	x0, w0
	sub	x0, x2, x0
	mov	x3, -1
	cmp	x0, 0
	csel	x3, x0, x3, ge
	ldrsw	x8, [sp, 376]
	ldrsw	x7, [sp, 372]
	ldr	w4, [sp, 372]
	ldr	x5, [x19, 40]
	ldr	x0, [x19, 48]
	mul	x0, x8, x0
	add	x6, x6, x0
	ldr	x0, [x19, 56]
	mul	x0, x7, x0
	add	x6, x6, x0
	mov	x0, 0
.L1148:
	cmp	x0, x3
	bgt	.L1146
	sub	x7, x2, x0
	mul	x7, x5, x7
	add	x8, x6, x7
	ldr	x7, [x19, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L1147
	add	w1, w1, 1
.L1147:
	add	x0, x0, 1
	b	.L1148
.L1146:
	cmp	w1, 0
	beq	.L1187
	mov	x0, 4
	str	x0, [sp, 144]
	stp	xzr, xzr, [sp, 128]
	mov	x0, 4
	str	x0, [sp, 128]
	mov	w0, 1
	strb	w0, [sp, 140]
	mov	w0, 1
	strb	w0, [sp, 141]
	mov	x0, 1
	str	x0, [sp, 160]
	mov	x0, 2
	str	x0, [sp, 168]
	mov	x0, 1
	str	x0, [sp, 152]
	add	x0, sp, 352
	str	x0, [sp, 112]
	mov	x0, -1
	str	x0, [sp, 120]
	ldr	w0, [sp, 412]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x1, w0
	ldr	w2, [sp, 412]
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x5, [x19, 64]
	sub	x0, x1, x0
	mov	x2, -1
	cmp	x0, 0
	csel	x4, x0, x2, ge
	ldrsw	x2, [sp, 376]
	mov	x0, 4
	str	x0, [sp, 208]
	stp	xzr, xzr, [sp, 192]
	mov	x0, 4
	str	x0, [sp, 192]
	mov	w0, 2
	strb	w0, [sp, 204]
	mov	w0, 1
	strb	w0, [sp, 205]
	ldr	x3, [x19, 72]
	ldr	x0, [x19, 40]
	str	xzr, [sp, 224]
	str	x4, [sp, 232]
	neg	x4, x0
	str	x4, [sp, 216]
	ldr	x4, [x19, 56]
	mov	x6, 1
	str	x6, [sp, 248]
	str	x5, [sp, 256]
	str	x4, [sp, 240]
	sub	x4, x2, #1
	ldr	x5, [x19, 48]
	mul	x5, x5, x4
	sub	x4, x1, #1
	mul	x4, x0, x4
	add	x4, x5, x4
	ldr	x5, [x19, 32]
	lsl	x4, x4, 2
	add	x4, x5, x4
	str	x4, [sp, 176]
	ldr	x4, [x19, 40]
	add	x3, x4, x3
	sub	x2, x2, #1
	ldr	x4, [x19, 48]
	mul	x2, x4, x2
	sub	x1, x1, #1
	mul	x0, x0, x1
	add	x0, x2, x0
	add	x0, x3, x0
	str	x0, [sp, 184]
	add	x27, sp, 176
	ldr	x25, [x19, 72]
	ldr	w0, [sp, 412]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x22, w0
	ldr	w1, [sp, 412]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [x19, 64]
	sub	x0, x22, x0
	mov	x2, -1
	cmp	x0, 0
	csel	x20, x0, x2, ge
	ldrsw	x26, [sp, 376]
	ldr	w24, [sp, 372]
	sub	x21, x1, #1
	add	x0, sp, 512
	stp	xzr, xzr, [x0, -232]
	mov	x0, 1
	str	x0, [sp, 280]
	mov	w0, 2
	strb	w0, [sp, 292]
	mov	w0, 2
	strb	w0, [sp, 293]
	mov	x0, 1
	str	x0, [sp, 304]
	str	xzr, [sp, 312]
	str	x20, [sp, 320]
	lsr	x0, x20, 63
	mov	w4, w0
	add	x0, x20, 1
	str	x0, [sp, 328]
	str	xzr, [sp, 336]
	str	x21, [sp, 344]
	lsr	x1, x21, 63
	mov	w3, w1
	add	x1, x21, 1
	mul	x2, x0, x1
	mov	x0, 1
	str	x0, [sp, 296]
	eor	w1, w4, 1
	eor	w0, w3, 1
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L1150
	mov	x0, x2
	mov	x1, 1
	cmp	x0, 0
	csel	x0, x0, x1, ne
	b	.L1151
.L1150:
	mov	x0, 1
.L1151:
	bl	malloc
	str	x0, [sp, 264]
	str	xzr, [sp, 272]
	ldr	x2, [x19, 40]
	ldr	x0, [x19, 48]
	mul	x0, x26, x0
	add	x3, x25, x0
	mov	x0, 0
.L1155:
	cmp	x0, x21
	bgt	.L1152
	ldr	x1, [sp, 328]
	mul	x7, x0, x1
	add	x1, x0, 1
	ldr	x4, [x19, 56]
	mul	x1, x4, x1
	add	x8, x3, x1
	mov	x1, 0
.L1154:
	cmp	x1, x20
	bgt	.L1153
	sub	x4, x22, x1
	mul	x4, x2, x4
	add	x5, x8, x4
	ldr	x4, [x19, 32]
	ldr	w6, [x4, x5, lsl 2]
	ldr	x5, [sp, 264]
	add	x4, x1, x7
	cmp	w24, w6
	cset	w6, eq
	and	w6, w6, 255
	strb	w6, [x5, x4]
	add	x1, x1, 1
	b	.L1154
.L1153:
	add	x0, x0, 1
	b	.L1155
.L1152:
	add	x1, sp, 264
	add	x0, sp, 112
	mov	w3, 0
	mov	x2, x1
	mov	x1, x27
	bl	_gfortran_mminloc0_4_i4
	ldr	x0, [sp, 264]
	bl	free
	ldr	w0, [sp, 404]
	ldr	w1, [sp, 352]
	cmp	w1, w0
	csel	w0, w1, w0, le
	str	w0, [sp, 404]
	b	.L1149
.L1187:
	nop
.L1149:
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
	b	.L1156
.L1186:
	nop
	ldr	w1, [sp, 412]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	ldr	w1, [sp, 400]
	add	w0, w1, w0
	str	w0, [sp, 400]
	mov	w1, 4
	ldr	w0, [sp, 404]
	sub	w2, w1, w0
	ldr	w1, [sp, 412]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w2, w0
	str	w0, [sp, 404]
	ldr	w1, [sp, 384]
	ldr	w0, [sp, 388]
	cmp	w1, w0
	cset	w1, eq
	ldr	w2, [sp, 400]
	ldr	w0, [sp, 404]
	cmp	w2, w0
	cset	w0, ne
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L1157
	mov	w0, 1
	str	w0, [sp, 392]
.L1161:
	ldr	w0, [sp, 392]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L1188
	ldr	w1, [sp, 392]
	ldr	w0, [sp, 400]
	cmp	w1, w0
	cset	w1, ge
	ldr	w2, [sp, 392]
	ldr	w0, [sp, 404]
	cmp	w2, w0
	cset	w0, le
	and	w0, w1, w0
	cmp	w0, 0
	bne	.L1189
	ldrsw	x0, [sp, 372]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 392]
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldrsw	x0, [sp, 384]
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L1160
	adrp	x0, __logic_MOD_clear_out
	add	x0, x0, :lo12:__logic_MOD_clear_out
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, __logic_MOD_clear_out
	add	x0, x0, :lo12:__logic_MOD_clear_out
	str	w1, [x0]
.L1160:
	ldrsw	x0, [sp, 372]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 392]
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldrsw	x0, [sp, 384]
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	str	wzr, [x0, x1, lsl 2]
	b	.L1159
.L1189:
	nop
.L1159:
	ldr	w0, [sp, 392]
	add	w0, w0, 1
	str	w0, [sp, 392]
	b	.L1161
.L1157:
	ldr	w1, [sp, 384]
	ldr	w0, [sp, 388]
	cmp	w1, w0
	cset	w1, ne
	ldr	w2, [sp, 400]
	ldr	w0, [sp, 404]
	cmp	w2, w0
	cset	w0, eq
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L1108
	mov	w0, 1
	str	w0, [sp, 376]
.L1165:
	ldr	w0, [sp, 376]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L1190
	ldr	w1, [sp, 376]
	ldr	w0, [sp, 384]
	cmp	w1, w0
	cset	w1, ge
	ldr	w2, [sp, 376]
	ldr	w0, [sp, 388]
	cmp	w2, w0
	cset	w0, le
	and	w0, w1, w0
	cmp	w0, 0
	bne	.L1191
	ldrsw	x0, [sp, 372]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 400]
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldrsw	x0, [sp, 376]
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L1164
	adrp	x0, __logic_MOD_clear_out
	add	x0, x0, :lo12:__logic_MOD_clear_out
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, __logic_MOD_clear_out
	add	x0, x0, :lo12:__logic_MOD_clear_out
	str	w1, [x0]
.L1164:
	ldrsw	x0, [sp, 372]
	ldr	x1, [x19, 56]
	mul	x0, x1, x0
	ldr	x1, [x19, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 400]
	ldr	x2, [x19, 40]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldrsw	x0, [sp, 376]
	ldr	x2, [x19, 48]
	mul	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [x19, 32]
	str	wzr, [x0, x1, lsl 2]
	b	.L1163
.L1191:
	nop
.L1163:
	ldr	w0, [sp, 376]
	add	w0, w0, 1
	str	w0, [sp, 376]
	b	.L1165
.L1188:
	nop
	b	.L1108
.L1190:
	nop
.L1108:
	ldr	w0, [sp, 372]
	add	w0, w0, 1
	str	w0, [sp, 372]
	b	.L1166
.L1179:
	nop
	ldr	w0, [sp, 412]
	add	w0, w0, 1
	str	w0, [sp, 412]
	b	.L1167
.L1178:
	nop
	ldr	w0, [sp, 408]
	add	w0, w0, 1
	str	w0, [sp, 408]
	b	.L1168
.L1177:
	nop
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 416
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	specific.2836, .-specific.2836
	.align	2
	.type	x_wing.2838, %function
x_wing.2838:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	mov	x0, x18
	str	x18, [sp, 8]
	mov	w1, 1
	str	w1, [sp, 32]
.L1246:
	ldr	w1, [sp, 32]
	cmp	w1, 8
	cset	w1, gt
	cmp	w1, 0
	bne	.L1299
	mov	w2, 0
	ldr	x5, [x0, 112]
	ldr	x3, [x0, 104]
	ldrsw	x6, [sp, 32]
	ldr	x4, [x0, 96]
	ldr	x1, [x0, 88]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L1196:
	cmp	x1, x3
	bgt	.L1194
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 80]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L1195
	add	w2, w2, 1
.L1195:
	add	x1, x1, 1
	b	.L1196
.L1194:
	cmp	w2, 1
	ble	.L1300
	mov	w1, 1
	str	w1, [sp, 44]
.L1245:
	ldr	w1, [sp, 44]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L1300
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 24]
	ldrsw	x8, [sp, 32]
	ldrsw	x7, [sp, 44]
	ldr	w4, [sp, 44]
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1200:
	cmp	x1, x3
	bgt	.L1198
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L1199
	add	w2, w2, 1
.L1199:
	add	x1, x1, 1
	b	.L1200
.L1198:
	cmp	w2, 2
	bne	.L1301
	mov	w3, -2147483648
	ldr	x6, [x0, 72]
	ldr	x4, [x0, 24]
	ldrsw	x8, [sp, 32]
	ldrsw	x7, [sp, 44]
	cmp	x4, 0
	ble	.L1202
	mov	x2, 1
	b	.L1203
.L1202:
	mov	x2, 0
.L1203:
	mov	x9, 0
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1206:
	cmp	x1, x4
	bgt	.L1204
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w3, w7
	cset	w7, lt
	cmp	w7, 0
	beq	.L1205
	mul	x2, x1, x5
	add	x3, x6, x2
	ldr	x2, [x0, 32]
	ldr	w3, [x2, x3, lsl 2]
	add	x2, x1, x9
.L1205:
	add	x1, x1, 1
	b	.L1206
.L1204:
	mov	w1, w2
	str	w1, [sp, 40]
	mov	w2, -2147483648
	ldr	x4, [x0, 72]
	ldrsw	x8, [sp, 32]
	ldrsw	x7, [sp, 44]
	mov	x5, 1
	mov	x6, 1
	ldr	x3, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x4, x4, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x4, x4, x1
	mov	x1, 0
.L1209:
	cmp	x1, 8
	bgt	.L1207
	mov	x7, 9
	sub	x7, x7, x1
	mul	x7, x3, x7
	add	x8, x4, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w2, w7
	cset	w7, lt
	cmp	w7, 0
	beq	.L1208
	mov	x2, 9
	sub	x2, x2, x1
	mul	x2, x3, x2
	add	x5, x4, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x5, lsl 2]
	add	x5, x1, x6
.L1208:
	add	x1, x1, 1
	b	.L1209
.L1207:
	mov	w2, w5
	mov	w1, 10
	sub	w1, w1, w2
	str	w1, [sp, 36]
	ldr	w1, [sp, 32]
	add	w1, w1, 1
	str	w1, [sp, 28]
.L1244:
	ldr	w1, [sp, 28]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L1301
	mov	w2, 0
	ldr	x5, [x0, 112]
	ldr	x3, [x0, 104]
	ldrsw	x6, [sp, 28]
	ldr	x4, [x0, 96]
	ldr	x1, [x0, 88]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L1212:
	cmp	x1, x3
	bgt	.L1210
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 80]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L1211
	add	w2, w2, 1
.L1211:
	add	x1, x1, 1
	b	.L1212
.L1210:
	cmp	w2, 1
	ble	.L1302
	ldrsw	x1, [sp, 40]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 28]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L1302
	ldrsw	x1, [sp, 36]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 28]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L1302
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 24]
	ldrsw	x8, [sp, 28]
	ldrsw	x7, [sp, 44]
	ldr	w4, [sp, 44]
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1216:
	cmp	x1, x3
	bgt	.L1214
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L1215
	add	w2, w2, 1
.L1215:
	add	x1, x1, 1
	b	.L1216
.L1214:
	cmp	w2, 2
	bne	.L1302
	mov	w3, -2147483648
	ldr	x6, [x0, 72]
	ldr	x4, [x0, 24]
	ldrsw	x8, [sp, 28]
	ldrsw	x7, [sp, 44]
	cmp	x4, 0
	ble	.L1217
	mov	x2, 1
	b	.L1218
.L1217:
	mov	x2, 0
.L1218:
	mov	x9, 0
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1221:
	cmp	x1, x4
	bgt	.L1219
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w3, w7
	cset	w7, lt
	cmp	w7, 0
	beq	.L1220
	mul	x2, x1, x5
	add	x3, x6, x2
	ldr	x2, [x0, 32]
	ldr	w3, [x2, x3, lsl 2]
	add	x2, x1, x9
.L1220:
	add	x1, x1, 1
	b	.L1221
.L1219:
	ldr	w1, [sp, 40]
	cmp	w1, w2
	bne	.L1302
	mov	w2, -2147483648
	ldr	x4, [x0, 72]
	ldrsw	x8, [sp, 28]
	ldrsw	x7, [sp, 44]
	mov	x5, 1
	mov	x6, 1
	ldr	x3, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x4, x4, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x4, x4, x1
	mov	x1, 0
.L1224:
	cmp	x1, 8
	bgt	.L1222
	mov	x7, 9
	sub	x7, x7, x1
	mul	x7, x3, x7
	add	x8, x4, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w2, w7
	cset	w7, lt
	cmp	w7, 0
	beq	.L1223
	mov	x2, 9
	sub	x2, x2, x1
	mul	x2, x3, x2
	add	x5, x4, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x5, lsl 2]
	add	x5, x1, x6
.L1223:
	add	x1, x1, 1
	b	.L1224
.L1222:
	mov	w2, w5
	mov	w1, 10
	sub	w1, w1, w2
	ldr	w2, [sp, 36]
	cmp	w2, w1
	bne	.L1302
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 8]
	ldrsw	x8, [sp, 40]
	ldrsw	x7, [sp, 44]
	ldr	w4, [sp, 44]
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1227:
	cmp	x1, x3
	bgt	.L1225
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L1226
	add	w2, w2, 1
.L1226:
	add	x1, x1, 1
	b	.L1227
.L1225:
	cmp	w2, 2
	beq	.L1302
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 8]
	ldrsw	x8, [sp, 36]
	ldrsw	x7, [sp, 44]
	ldr	w4, [sp, 44]
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1230:
	cmp	x1, x3
	bgt	.L1228
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L1229
	add	w2, w2, 1
.L1229:
	add	x1, x1, 1
	b	.L1230
.L1228:
	cmp	w2, 2
	beq	.L1302
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 8]
	ldrsw	x8, [sp, 40]
	ldrsw	x7, [sp, 44]
	ldr	w4, [sp, 44]
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1233:
	cmp	x1, x3
	bgt	.L1231
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L1232
	add	w2, w2, 1
.L1232:
	add	x1, x1, 1
	b	.L1233
.L1231:
	adrp	x1, __logic_MOD_four
	add	x1, x1, :lo12:__logic_MOD_four
	ldr	w1, [x1]
	add	w1, w2, w1
	sub	w2, w1, #2
	adrp	x1, __logic_MOD_four
	add	x1, x1, :lo12:__logic_MOD_four
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 8]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 40]
	ldrsw	x6, [sp, 44]
	ldrsw	x9, [sp, 40]
	ldrsw	x8, [sp, 44]
	ldr	w3, [sp, 44]
	ldr	x4, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L1236:
	cmp	x1, x2
	bgt	.L1234
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L1235
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L1235:
	add	x1, x1, 1
	b	.L1236
.L1234:
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 8]
	ldrsw	x8, [sp, 36]
	ldrsw	x7, [sp, 44]
	ldr	w4, [sp, 44]
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1239:
	cmp	x1, x3
	bgt	.L1237
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L1238
	add	w2, w2, 1
.L1238:
	add	x1, x1, 1
	b	.L1239
.L1237:
	adrp	x1, __logic_MOD_four
	add	x1, x1, :lo12:__logic_MOD_four
	ldr	w1, [x1]
	add	w1, w2, w1
	sub	w2, w1, #2
	adrp	x1, __logic_MOD_four
	add	x1, x1, :lo12:__logic_MOD_four
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 8]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 36]
	ldrsw	x6, [sp, 44]
	ldrsw	x9, [sp, 36]
	ldrsw	x8, [sp, 44]
	ldr	w3, [sp, 44]
	ldr	x4, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L1242:
	cmp	x1, x2
	bgt	.L1240
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L1241
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L1241:
	add	x1, x1, 1
	b	.L1242
.L1240:
	ldrsw	x1, [sp, 44]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 32]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 44]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 44]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 36]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 32]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 44]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 44]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 28]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 44]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 44]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 36]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 28]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x1, x2, x1
	ldr	x0, [x0, 32]
	ldr	w2, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	b	.L1192
.L1302:
	nop
	ldr	w1, [sp, 28]
	add	w1, w1, 1
	str	w1, [sp, 28]
	b	.L1244
.L1301:
	nop
	ldr	w1, [sp, 44]
	add	w1, w1, 1
	str	w1, [sp, 44]
	b	.L1245
.L1300:
	nop
	ldr	w1, [sp, 32]
	add	w1, w1, 1
	str	w1, [sp, 32]
	b	.L1246
.L1299:
	nop
	mov	w1, 1
	str	w1, [sp, 40]
.L1298:
	ldr	w1, [sp, 40]
	cmp	w1, 8
	cset	w1, gt
	cmp	w1, 0
	bne	.L1192
	mov	w2, 0
	ldr	x5, [x0, 112]
	ldr	x3, [x0, 16]
	ldrsw	x6, [sp, 40]
	ldr	x4, [x0, 88]
	ldr	x1, [x0, 96]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L1249:
	cmp	x1, x3
	bgt	.L1247
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 80]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L1248
	add	w2, w2, 1
.L1248:
	add	x1, x1, 1
	b	.L1249
.L1247:
	cmp	w2, 1
	ble	.L1303
	mov	w1, 1
	str	w1, [sp, 44]
.L1297:
	ldr	w1, [sp, 44]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L1303
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 8]
	ldrsw	x8, [sp, 40]
	ldrsw	x7, [sp, 44]
	ldr	w4, [sp, 44]
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1253:
	cmp	x1, x3
	bgt	.L1251
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L1252
	add	w2, w2, 1
.L1252:
	add	x1, x1, 1
	b	.L1253
.L1251:
	cmp	w2, 2
	bne	.L1304
	mov	w3, -2147483648
	ldr	x6, [x0, 72]
	ldr	x4, [x0, 8]
	ldrsw	x8, [sp, 40]
	ldrsw	x7, [sp, 44]
	cmp	x4, 0
	ble	.L1255
	mov	x2, 1
	b	.L1256
.L1255:
	mov	x2, 0
.L1256:
	mov	x9, 0
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1259:
	cmp	x1, x4
	bgt	.L1257
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w3, w7
	cset	w7, lt
	cmp	w7, 0
	beq	.L1258
	mul	x2, x1, x5
	add	x3, x6, x2
	ldr	x2, [x0, 32]
	ldr	w3, [x2, x3, lsl 2]
	add	x2, x1, x9
.L1258:
	add	x1, x1, 1
	b	.L1259
.L1257:
	mov	w1, w2
	str	w1, [sp, 32]
	mov	w2, -2147483648
	ldr	x4, [x0, 72]
	ldrsw	x8, [sp, 40]
	ldrsw	x7, [sp, 44]
	mov	x5, 1
	mov	x6, 1
	ldr	x3, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x4, x4, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x4, x4, x1
	mov	x1, 0
.L1262:
	cmp	x1, 8
	bgt	.L1260
	mov	x7, 9
	sub	x7, x7, x1
	mul	x7, x3, x7
	add	x8, x4, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w2, w7
	cset	w7, lt
	cmp	w7, 0
	beq	.L1261
	mov	x2, 9
	sub	x2, x2, x1
	mul	x2, x3, x2
	add	x5, x4, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x5, lsl 2]
	add	x5, x1, x6
.L1261:
	add	x1, x1, 1
	b	.L1262
.L1260:
	mov	w2, w5
	mov	w1, 10
	sub	w1, w1, w2
	str	w1, [sp, 28]
	ldr	w1, [sp, 40]
	add	w1, w1, 1
	str	w1, [sp, 36]
.L1296:
	ldr	w1, [sp, 36]
	cmp	w1, 9
	cset	w1, gt
	cmp	w1, 0
	bne	.L1304
	mov	w2, 0
	ldr	x5, [x0, 112]
	ldr	x3, [x0, 16]
	ldrsw	x6, [sp, 36]
	ldr	x4, [x0, 88]
	ldr	x1, [x0, 96]
	mul	x1, x6, x1
	add	x5, x5, x1
	mov	x1, 1
.L1265:
	cmp	x1, x3
	bgt	.L1263
	mul	x6, x1, x4
	add	x7, x5, x6
	ldr	x6, [x0, 80]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L1264
	add	w2, w2, 1
.L1264:
	add	x1, x1, 1
	b	.L1265
.L1263:
	cmp	w2, 1
	ble	.L1305
	ldrsw	x1, [sp, 36]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 32]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L1305
	ldrsw	x1, [sp, 36]
	ldr	x2, [x0, 96]
	mul	x1, x2, x1
	ldr	x2, [x0, 112]
	add	x2, x2, x1
	ldrsw	x1, [sp, 28]
	ldr	x3, [x0, 88]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x2, lsl 2]
	cmp	w1, 0
	bne	.L1305
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 8]
	ldrsw	x8, [sp, 36]
	ldrsw	x7, [sp, 44]
	ldr	w4, [sp, 44]
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1269:
	cmp	x1, x3
	bgt	.L1267
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L1268
	add	w2, w2, 1
.L1268:
	add	x1, x1, 1
	b	.L1269
.L1267:
	cmp	w2, 2
	bne	.L1305
	mov	w3, -2147483648
	ldr	x6, [x0, 72]
	ldr	x4, [x0, 8]
	ldrsw	x8, [sp, 36]
	ldrsw	x7, [sp, 44]
	cmp	x4, 0
	ble	.L1270
	mov	x2, 1
	b	.L1271
.L1270:
	mov	x2, 0
.L1271:
	mov	x9, 0
	ldr	x5, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1274:
	cmp	x1, x4
	bgt	.L1272
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w3, w7
	cset	w7, lt
	cmp	w7, 0
	beq	.L1273
	mul	x2, x1, x5
	add	x3, x6, x2
	ldr	x2, [x0, 32]
	ldr	w3, [x2, x3, lsl 2]
	add	x2, x1, x9
.L1273:
	add	x1, x1, 1
	b	.L1274
.L1272:
	ldr	w1, [sp, 32]
	cmp	w1, w2
	bne	.L1305
	mov	w2, -2147483648
	ldr	x4, [x0, 72]
	ldrsw	x8, [sp, 36]
	ldrsw	x7, [sp, 44]
	mov	x5, 1
	mov	x6, 1
	ldr	x3, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x8, x1
	add	x4, x4, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x4, x4, x1
	mov	x1, 0
.L1277:
	cmp	x1, 8
	bgt	.L1275
	mov	x7, 9
	sub	x7, x7, x1
	mul	x7, x3, x7
	add	x8, x4, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w2, w7
	cset	w7, lt
	cmp	w7, 0
	beq	.L1276
	mov	x2, 9
	sub	x2, x2, x1
	mul	x2, x3, x2
	add	x5, x4, x2
	ldr	x2, [x0, 32]
	ldr	w2, [x2, x5, lsl 2]
	add	x5, x1, x6
.L1276:
	add	x1, x1, 1
	b	.L1277
.L1275:
	mov	w2, w5
	mov	w1, 10
	sub	w1, w1, w2
	ldr	w2, [sp, 28]
	cmp	w2, w1
	bne	.L1305
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 24]
	ldrsw	x8, [sp, 32]
	ldrsw	x7, [sp, 44]
	ldr	w4, [sp, 44]
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1280:
	cmp	x1, x3
	bgt	.L1278
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L1279
	add	w2, w2, 1
.L1279:
	add	x1, x1, 1
	b	.L1280
.L1278:
	cmp	w2, 2
	beq	.L1305
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 24]
	ldrsw	x8, [sp, 28]
	ldrsw	x7, [sp, 44]
	ldr	w4, [sp, 44]
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1283:
	cmp	x1, x3
	bgt	.L1281
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L1282
	add	w2, w2, 1
.L1282:
	add	x1, x1, 1
	b	.L1283
.L1281:
	cmp	w2, 2
	beq	.L1305
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 24]
	ldrsw	x8, [sp, 32]
	ldrsw	x7, [sp, 44]
	ldr	w4, [sp, 44]
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1286:
	cmp	x1, x3
	bgt	.L1284
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L1285
	add	w2, w2, 1
.L1285:
	add	x1, x1, 1
	b	.L1286
.L1284:
	adrp	x1, __logic_MOD_four
	add	x1, x1, :lo12:__logic_MOD_four
	ldr	w1, [x1]
	add	w1, w2, w1
	sub	w2, w1, #2
	adrp	x1, __logic_MOD_four
	add	x1, x1, :lo12:__logic_MOD_four
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 24]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 32]
	ldrsw	x6, [sp, 44]
	ldrsw	x9, [sp, 32]
	ldrsw	x8, [sp, 44]
	ldr	w3, [sp, 44]
	ldr	x4, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L1289:
	cmp	x1, x2
	bgt	.L1287
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L1288
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L1288:
	add	x1, x1, 1
	b	.L1289
.L1287:
	mov	w2, 0
	ldr	x6, [x0, 72]
	ldr	x3, [x0, 24]
	ldrsw	x8, [sp, 28]
	ldrsw	x7, [sp, 44]
	ldr	w4, [sp, 44]
	ldr	x5, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x8, x1
	add	x6, x6, x1
	ldr	x1, [x0, 56]
	mul	x1, x7, x1
	add	x6, x6, x1
	mov	x1, 1
.L1292:
	cmp	x1, x3
	bgt	.L1290
	mul	x7, x1, x5
	add	x8, x6, x7
	ldr	x7, [x0, 32]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w4, w7
	bne	.L1291
	add	w2, w2, 1
.L1291:
	add	x1, x1, 1
	b	.L1292
.L1290:
	adrp	x1, __logic_MOD_four
	add	x1, x1, :lo12:__logic_MOD_four
	ldr	w1, [x1]
	add	w1, w2, w1
	sub	w2, w1, #2
	adrp	x1, __logic_MOD_four
	add	x1, x1, :lo12:__logic_MOD_four
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 24]
	ldr	x7, [x0, 72]
	ldrsw	x10, [sp, 28]
	ldrsw	x6, [sp, 44]
	ldrsw	x9, [sp, 28]
	ldrsw	x8, [sp, 44]
	ldr	w3, [sp, 44]
	ldr	x4, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L1295:
	cmp	x1, x2
	bgt	.L1293
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L1294
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L1294:
	add	x1, x1, 1
	b	.L1295
.L1293:
	ldrsw	x1, [sp, 44]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 32]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 44]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 44]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 36]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 32]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 44]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 44]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 40]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 28]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldr	x1, [x0, 32]
	ldr	w3, [sp, 44]
	str	w3, [x1, x2, lsl 2]
	ldrsw	x1, [sp, 44]
	ldr	x2, [x0, 56]
	mul	x1, x2, x1
	ldr	x2, [x0, 72]
	add	x2, x2, x1
	ldrsw	x1, [sp, 36]
	ldr	x3, [x0, 40]
	mul	x1, x3, x1
	add	x2, x2, x1
	ldrsw	x1, [sp, 28]
	ldr	x3, [x0, 48]
	mul	x1, x3, x1
	add	x1, x2, x1
	ldr	x0, [x0, 32]
	ldr	w2, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	b	.L1192
.L1305:
	nop
	ldr	w1, [sp, 36]
	add	w1, w1, 1
	str	w1, [sp, 36]
	b	.L1296
.L1304:
	nop
	ldr	w1, [sp, 44]
	add	w1, w1, 1
	str	w1, [sp, 44]
	b	.L1297
.L1303:
	nop
	ldr	w1, [sp, 40]
	add	w1, w1, 1
	str	w1, [sp, 40]
	b	.L1298
.L1192:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	x_wing.2838, .-x_wing.2838
	.align	2
	.type	update.2840, %function
update.2840:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	x0, x18
	str	x18, [sp, 8]
	ldr	x2, [x0, 72]
	ldr	x6, [x0, 64]
	ldr	w1, [x0, 124]
	sxtw	x4, w1
	ldr	w1, [x0, 120]
	sxtw	x3, w1
	ldr	x5, [x0, 56]
	ldr	x1, [x0, 48]
	mul	x1, x4, x1
	add	x2, x2, x1
	ldr	x1, [x0, 40]
	mul	x1, x3, x1
	add	x4, x2, x1
	mov	x1, 1
.L1308:
	cmp	x1, x6
	bgt	.L1307
	mul	x2, x1, x5
	add	x3, x4, x2
	ldr	x2, [x0, 32]
	str	wzr, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L1308
.L1307:
	ldr	x1, [x0]
	mov	w2, 1
	str	w2, [x1]
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 24]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 124]
	sxtw	x10, w1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 96]
	mul	x1, x3, x1
	ldr	x3, [x0, 112]
	add	x3, x3, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x4, [x0, 88]
	mul	x1, x4, x1
	add	x3, x3, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x3, lsl 2]
	sxtw	x6, w1
	ldr	w1, [x0, 124]
	sxtw	x9, w1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 96]
	mul	x1, x3, x1
	ldr	x3, [x0, 112]
	add	x3, x3, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x4, [x0, 88]
	mul	x1, x4, x1
	add	x3, x3, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x3, lsl 2]
	sxtw	x8, w1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 96]
	mul	x1, x3, x1
	ldr	x3, [x0, 112]
	add	x3, x3, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x4, [x0, 88]
	mul	x1, x4, x1
	add	x3, x3, x1
	ldr	x1, [x0, 80]
	ldr	w3, [x1, x3, lsl 2]
	ldr	x4, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 40]
	ldr	x1, [x0, 48]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L1311:
	cmp	x1, x2
	bgt	.L1309
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L1310
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L1310:
	add	x1, x1, 1
	b	.L1311
.L1309:
	ldr	x5, [x0, 72]
	ldr	x2, [x0, 8]
	ldr	x7, [x0, 72]
	ldr	w1, [x0, 120]
	sxtw	x10, w1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 96]
	mul	x1, x3, x1
	ldr	x3, [x0, 112]
	add	x3, x3, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x4, [x0, 88]
	mul	x1, x4, x1
	add	x3, x3, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x3, lsl 2]
	sxtw	x6, w1
	ldr	w1, [x0, 120]
	sxtw	x9, w1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 96]
	mul	x1, x3, x1
	ldr	x3, [x0, 112]
	add	x3, x3, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x4, [x0, 88]
	mul	x1, x4, x1
	add	x3, x3, x1
	ldr	x1, [x0, 80]
	ldr	w1, [x1, x3, lsl 2]
	sxtw	x8, w1
	ldr	w1, [x0, 120]
	sxtw	x1, w1
	ldr	x3, [x0, 96]
	mul	x1, x3, x1
	ldr	x3, [x0, 112]
	add	x3, x3, x1
	ldr	w1, [x0, 124]
	sxtw	x1, w1
	ldr	x4, [x0, 88]
	mul	x1, x4, x1
	add	x3, x3, x1
	ldr	x1, [x0, 80]
	ldr	w3, [x1, x3, lsl 2]
	ldr	x4, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x10, x1
	add	x5, x5, x1
	ldr	x1, [x0, 56]
	mul	x1, x6, x1
	add	x5, x5, x1
	ldr	x6, [x0, 48]
	ldr	x1, [x0, 40]
	mul	x1, x9, x1
	add	x7, x7, x1
	ldr	x1, [x0, 56]
	mul	x1, x8, x1
	add	x7, x7, x1
	mov	x1, 1
.L1314:
	cmp	x1, x2
	bgt	.L1312
	mul	x8, x1, x6
	add	x9, x7, x8
	ldr	x8, [x0, 32]
	ldr	w8, [x8, x9, lsl 2]
	cmp	w3, w8
	bne	.L1313
	mul	x8, x1, x4
	add	x9, x5, x8
	ldr	x8, [x0, 32]
	str	wzr, [x8, x9, lsl 2]
.L1313:
	add	x1, x1, 1
	b	.L1314
.L1312:
	ldr	x10, [x0, 72]
	ldr	w1, [x0, 124]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w2, w2, w1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x7, w1
	ldr	w1, [x0, 124]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	w1, [x0, 120]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w2, w2, w1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x8, w1
	ldr	w1, [x0, 120]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	add	w1, w1, 1
	lsl	w1, w1, 1
	ldr	x12, [x0, 72]
	ldr	w1, [x0, 124]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w2, w2, w1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	w1, [x0, 124]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x5, w1
	ldr	w1, [x0, 120]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w2, w2, w1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	add	w1, w1, 1
	sxtw	x1, w1
	ldr	w2, [x0, 120]
	sub	w2, w2, #1
	mov	w4, 21846
	movk	w4, 0x5555, lsl 16
	smull	x4, w2, w4
	lsr	x4, x4, 32
	asr	w2, w2, 31
	sub	w2, w4, w2
	add	w4, w2, 1
	mov	w2, w4
	lsl	w2, w2, 1
	add	w2, w2, w4
	sxtw	x4, w2
	ldr	w2, [x0, 120]
	sxtw	x2, w2
	ldr	x6, [x0, 96]
	mul	x2, x6, x2
	ldr	x6, [x0, 112]
	add	x6, x6, x2
	ldr	w2, [x0, 124]
	sxtw	x2, w2
	ldr	x9, [x0, 88]
	mul	x2, x9, x2
	add	x6, x6, x2
	ldr	x2, [x0, 80]
	ldr	w2, [x2, x6, lsl 2]
	sxtw	x11, w2
	ldr	w2, [x0, 120]
	sxtw	x2, w2
	ldr	x6, [x0, 96]
	mul	x2, x6, x2
	ldr	x6, [x0, 112]
	add	x6, x6, x2
	ldr	w2, [x0, 124]
	sxtw	x2, w2
	ldr	x9, [x0, 88]
	mul	x2, x9, x2
	add	x6, x6, x2
	ldr	x2, [x0, 80]
	ldr	w2, [x2, x6, lsl 2]
	sxtw	x13, w2
	ldr	w2, [x0, 120]
	sxtw	x2, w2
	ldr	x6, [x0, 96]
	mul	x2, x6, x2
	ldr	x6, [x0, 112]
	add	x6, x6, x2
	ldr	w2, [x0, 124]
	sxtw	x2, w2
	ldr	x9, [x0, 88]
	mul	x2, x9, x2
	add	x6, x6, x2
	ldr	x2, [x0, 80]
	ldr	w6, [x2, x6, lsl 2]
	sub	x7, x7, x3
	sub	x8, x8, x1
	ldr	x9, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x11, x2
	add	x10, x10, x2
	ldr	x11, [x0, 48]
	ldr	x2, [x0, 56]
	mul	x2, x13, x2
	add	x12, x12, x2
.L1319:
	cmp	x1, x4
	bgt	.L1315
	add	x2, x1, x8
	ldr	x13, [x0, 40]
	mul	x2, x13, x2
	add	x13, x10, x2
	ldr	x2, [x0, 40]
	mul	x2, x1, x2
	add	x14, x12, x2
	mov	x2, x3
.L1318:
	cmp	x2, x5
	bgt	.L1316
	mul	x15, x2, x11
	add	x16, x14, x15
	ldr	x15, [x0, 32]
	ldr	w15, [x15, x16, lsl 2]
	cmp	w6, w15
	bne	.L1317
	add	x15, x2, x7
	mul	x15, x9, x15
	add	x16, x13, x15
	ldr	x15, [x0, 32]
	str	wzr, [x15, x16, lsl 2]
.L1317:
	add	x2, x2, 1
	b	.L1318
.L1316:
	add	x1, x1, 1
	b	.L1319
.L1315:
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	update.2840, .-update.2840
	.hidden	__brute_force_MOD_bc
	.global	__brute_force_MOD_bc
	.bss
	.align	2
	.type	__brute_force_MOD_bc, %object
	.size	__brute_force_MOD_bc, 4
__brute_force_MOD_bc:
	.zero	4
	.hidden	__brute_force_MOD_block
	.global	__brute_force_MOD_block
	.align	3
	.type	__brute_force_MOD_block, %object
	.size	__brute_force_MOD_block, 2916
__brute_force_MOD_block:
	.zero	2916
	.hidden	__brute_force_MOD_br
	.global	__brute_force_MOD_br
	.align	2
	.type	__brute_force_MOD_br, %object
	.size	__brute_force_MOD_br, 4
__brute_force_MOD_br:
	.zero	4
	.hidden	__brute_force_MOD_changed
	.global	__brute_force_MOD_changed
	.align	2
	.type	__brute_force_MOD_changed, %object
	.size	__brute_force_MOD_changed, 4
__brute_force_MOD_changed:
	.zero	4
	.hidden	__brute_force_MOD_i
	.global	__brute_force_MOD_i
	.align	2
	.type	__brute_force_MOD_i, %object
	.size	__brute_force_MOD_i, 4
__brute_force_MOD_i:
	.zero	4
	.hidden	__brute_force_MOD_j
	.global	__brute_force_MOD_j
	.align	2
	.type	__brute_force_MOD_j, %object
	.size	__brute_force_MOD_j, 4
__brute_force_MOD_j:
	.zero	4
	.global	__brute_force_MOD_pearl
	.align	2
	.type	__brute_force_MOD_pearl, %object
	.size	__brute_force_MOD_pearl, 4
__brute_force_MOD_pearl:
	.zero	4
	.global	__brute_force_MOD_soln
	.align	2
	.type	__brute_force_MOD_soln, %object
	.size	__brute_force_MOD_soln, 4
__brute_force_MOD_soln:
	.zero	4
	.hidden	__brute_force_MOD_sudoku1
	.global	__brute_force_MOD_sudoku1
	.align	3
	.type	__brute_force_MOD_sudoku1, %object
	.size	__brute_force_MOD_sudoku1, 324
__brute_force_MOD_sudoku1:
	.zero	324
	.hidden	__brute_force_MOD_sudoku2
	.global	__brute_force_MOD_sudoku2
	.align	3
	.type	__brute_force_MOD_sudoku2, %object
	.size	__brute_force_MOD_sudoku2, 324
__brute_force_MOD_sudoku2:
	.zero	324
	.hidden	__brute_force_MOD_sudoku3
	.global	__brute_force_MOD_sudoku3
	.align	3
	.type	__brute_force_MOD_sudoku3, %object
	.size	__brute_force_MOD_sudoku3, 324
__brute_force_MOD_sudoku3:
	.zero	324
	.hidden	__brute_force_MOD_val
	.global	__brute_force_MOD_val
	.align	2
	.type	__brute_force_MOD_val, %object
	.size	__brute_force_MOD_val, 4
__brute_force_MOD_val:
	.zero	4
	.text
	.align	2
	.type	__brute_force_MOD_reflected, %function
__brute_force_MOD_reflected:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 40]
	cmp	x0, 0
	bne	.L1322
	mov	x0, 1
.L1322:
	ldr	x1, [sp, 8]
	ldr	x1, [x1]
	str	x1, [sp, 72]
	ldr	x1, [sp, 8]
	ldr	x2, [x1, 56]
	ldr	x1, [sp, 8]
	ldr	x1, [x1, 48]
	sub	x1, x2, x1
	add	x1, x1, 1
	str	x1, [sp, 64]
	ldr	x1, [sp, 8]
	ldr	x1, [x1, 64]
	ldr	x2, [sp, 8]
	ldr	x3, [x2, 80]
	ldr	x2, [sp, 8]
	ldr	x2, [x2, 72]
	sub	x2, x3, x2
	add	x2, x2, 1
	str	x2, [sp, 56]
	ldr	x2, [sp, 56]
	mul	x12, x1, x2
	neg	x2, x0
	sub	x3, x2, x1
	mov	x2, x12
	mov	x10, x2
	mov	x11, 0
	lsr	x2, x10, 59
	lsl	x5, x11, 5
	orr	x5, x2, x5
	lsl	x4, x10, 5
	ldr	x2, [sp]
	ldr	x2, [x2, 40]
	cmp	x2, 0
	bne	.L1324
	mov	x2, 1
.L1324:
	ldr	x4, [sp]
	ldr	x4, [x4]
	str	x4, [sp, 48]
	ldr	x4, [sp]
	ldr	x5, [x4, 56]
	ldr	x4, [sp]
	ldr	x4, [x4, 48]
	sub	x4, x5, x4
	add	x4, x4, 1
	str	x4, [sp, 40]
	ldr	x4, [sp]
	ldr	x4, [x4, 64]
	ldr	x5, [sp]
	ldr	x10, [x5, 80]
	ldr	x5, [sp]
	ldr	x5, [x5, 72]
	sub	x5, x10, x5
	add	x5, x5, 1
	str	x5, [sp, 32]
	ldr	x5, [sp, 32]
	mul	x10, x4, x5
	neg	x5, x2
	sub	x5, x5, x4
	mov	x8, x10
	mov	x9, 0
	lsr	x10, x8, 59
	lsl	x7, x9, 5
	orr	x7, x10, x7
	lsl	x6, x8, 5
	mov	w6, 1
	str	w6, [sp, 28]
	mov	w6, 1
	str	w6, [sp, 96]
.L1340:
	ldr	w6, [sp, 96]
	cmp	w6, 3
	cset	w6, gt
	cmp	w6, 0
	bne	.L1342
	mov	w6, 1
	str	w6, [sp, 92]
.L1339:
	ldr	w6, [sp, 92]
	cmp	w6, 3
	cset	w6, gt
	cmp	w6, 0
	bne	.L1343
	ldr	w6, [sp, 96]
	sub	w7, w6, #1
	mov	w6, w7
	lsl	w6, w6, 1
	add	w6, w6, w7
	add	w8, w6, 1
	ldr	w7, [sp, 96]
	mov	w6, w7
	lsl	w6, w6, 1
	add	w9, w6, w7
	str	w8, [sp, 88]
.L1338:
	ldr	w6, [sp, 88]
	cmp	w6, w9
	cset	w6, gt
	cmp	w6, 0
	bne	.L1344
	ldr	w6, [sp, 88]
	add	w6, w6, 1
	str	w6, [sp, 84]
	ldr	w8, [sp, 88]
	mov	w6, 21846
	movk	w6, 0x5555, lsl 16
	smull	x6, w8, w6
	lsr	x7, x6, 32
	asr	w6, w8, 31
	sub	w7, w7, w6
	mov	w6, w7
	lsl	w6, w6, 1
	add	w6, w6, w7
	sub	w7, w8, w6
	cmp	w7, 0
	bne	.L1328
	ldr	w6, [sp, 88]
	sub	w6, w6, #2
	str	w6, [sp, 84]
.L1328:
	ldr	w6, [sp, 92]
	sub	w7, w6, #1
	mov	w6, w7
	lsl	w6, w6, 1
	add	w6, w6, w7
	add	w10, w6, 1
	ldr	w7, [sp, 92]
	mov	w6, w7
	lsl	w6, w6, 1
	add	w8, w6, w7
	str	w10, [sp, 108]
.L1337:
	ldr	w6, [sp, 108]
	cmp	w6, w8
	cset	w6, gt
	cmp	w6, 0
	bne	.L1345
	ldr	w6, [sp, 92]
	sub	w7, w6, #1
	mov	w6, w7
	lsl	w6, w6, 1
	add	w6, w6, w7
	add	w11, w6, 1
	ldr	w7, [sp, 92]
	mov	w6, w7
	lsl	w6, w6, 1
	add	w10, w6, w7
	str	w11, [sp, 104]
.L1336:
	ldr	w6, [sp, 104]
	cmp	w6, w10
	cset	w6, gt
	cmp	w6, 0
	bne	.L1346
	ldr	w7, [sp, 108]
	ldr	w6, [sp, 104]
	cmp	w7, w6
	beq	.L1347
	mov	w6, 1
	str	w6, [sp, 100]
.L1335:
	ldr	w6, [sp, 100]
	cmp	w6, 9
	cset	w6, gt
	cmp	w6, 0
	bne	.L1347
	ldr	w6, [sp, 92]
	sub	w7, w6, #1
	mov	w6, w7
	lsl	w6, w6, 1
	add	w6, w6, w7
	ldr	w7, [sp, 100]
	cmp	w7, w6
	cset	w11, gt
	ldr	w7, [sp, 92]
	mov	w6, w7
	lsl	w6, w6, 1
	add	w6, w6, w7
	ldr	w7, [sp, 100]
	cmp	w7, w6
	cset	w6, le
	and	w6, w11, w6
	cmp	w6, 0
	bne	.L1348
	ldrsw	x6, [sp, 104]
	mul	x6, x1, x6
	add	x7, x3, x6
	ldrsw	x6, [sp, 84]
	mul	x6, x0, x6
	add	x7, x7, x6
	ldr	x6, [sp, 72]
	ldr	w7, [x6, x7, lsl 2]
	ldrsw	x6, [sp, 100]
	mul	x6, x1, x6
	add	x11, x3, x6
	ldrsw	x6, [sp, 88]
	mul	x6, x0, x6
	add	x11, x11, x6
	ldr	x6, [sp, 72]
	ldr	w6, [x6, x11, lsl 2]
	cmp	w7, w6
	bne	.L1348
	ldrsw	x6, [sp, 108]
	mul	x6, x1, x6
	add	x7, x3, x6
	ldrsw	x6, [sp, 88]
	mul	x6, x0, x6
	add	x7, x7, x6
	ldr	x6, [sp, 72]
	ldr	w7, [x6, x7, lsl 2]
	ldrsw	x6, [sp, 100]
	mul	x6, x1, x6
	add	x11, x3, x6
	ldrsw	x6, [sp, 84]
	mul	x6, x0, x6
	add	x11, x11, x6
	ldr	x6, [sp, 72]
	ldr	w6, [x6, x11, lsl 2]
	cmp	w7, w6
	bne	.L1348
	mov	w6, 1
	str	w6, [sp, 80]
.L1334:
	ldr	w6, [sp, 80]
	cmp	w6, 9
	cset	w6, gt
	cmp	w6, 0
	bne	.L1348
	ldr	w6, [sp, 96]
	sub	w7, w6, #1
	mov	w6, w7
	lsl	w6, w6, 1
	add	w6, w6, w7
	ldr	w7, [sp, 80]
	cmp	w7, w6
	cset	w11, gt
	ldr	w7, [sp, 96]
	mov	w6, w7
	lsl	w6, w6, 1
	add	w6, w6, w7
	ldr	w7, [sp, 80]
	cmp	w7, w6
	cset	w6, le
	and	w6, w11, w6
	cmp	w6, 0
	bne	.L1349
	ldrsw	x6, [sp, 108]
	mul	x6, x1, x6
	add	x7, x3, x6
	ldrsw	x6, [sp, 88]
	mul	x6, x0, x6
	add	x7, x7, x6
	ldr	x6, [sp, 72]
	ldr	w7, [x6, x7, lsl 2]
	ldrsw	x6, [sp, 104]
	mul	x6, x1, x6
	add	x11, x3, x6
	ldrsw	x6, [sp, 80]
	mul	x6, x0, x6
	add	x11, x11, x6
	ldr	x6, [sp, 72]
	ldr	w6, [x6, x11, lsl 2]
	cmp	w7, w6
	cset	w7, ne
	ldrsw	x6, [sp, 104]
	mul	x6, x1, x6
	add	x11, x3, x6
	ldrsw	x6, [sp, 84]
	mul	x6, x0, x6
	add	x11, x11, x6
	ldr	x6, [sp, 72]
	ldr	w11, [x6, x11, lsl 2]
	ldrsw	x6, [sp, 108]
	mul	x6, x1, x6
	add	x12, x3, x6
	ldrsw	x6, [sp, 80]
	mul	x6, x0, x6
	add	x12, x12, x6
	ldr	x6, [sp, 72]
	ldr	w6, [x6, x12, lsl 2]
	cmp	w11, w6
	cset	w6, ne
	orr	w6, w7, w6
	cmp	w6, 0
	bne	.L1349
	ldrsw	x6, [sp, 108]
	mul	x6, x4, x6
	add	x7, x5, x6
	ldrsw	x6, [sp, 88]
	mul	x6, x2, x6
	add	x7, x7, x6
	ldr	x6, [sp, 48]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L1349
	ldrsw	x6, [sp, 100]
	mul	x6, x4, x6
	add	x7, x5, x6
	ldrsw	x6, [sp, 88]
	mul	x6, x2, x6
	add	x7, x7, x6
	ldr	x6, [sp, 48]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L1349
	ldrsw	x6, [sp, 104]
	mul	x6, x4, x6
	add	x7, x5, x6
	ldrsw	x6, [sp, 84]
	mul	x6, x2, x6
	add	x7, x7, x6
	ldr	x6, [sp, 48]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L1349
	ldrsw	x6, [sp, 100]
	mul	x6, x4, x6
	add	x7, x5, x6
	ldrsw	x6, [sp, 84]
	mul	x6, x2, x6
	add	x7, x7, x6
	ldr	x6, [sp, 48]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L1349
	ldrsw	x6, [sp, 108]
	mul	x6, x4, x6
	add	x7, x5, x6
	ldrsw	x6, [sp, 80]
	mul	x6, x2, x6
	add	x7, x7, x6
	ldr	x6, [sp, 48]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L1349
	ldrsw	x6, [sp, 104]
	mul	x6, x4, x6
	add	x7, x5, x6
	ldrsw	x6, [sp, 80]
	mul	x6, x2, x6
	add	x7, x7, x6
	ldr	x6, [sp, 48]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	bne	.L1349
	str	wzr, [sp, 28]
	b	.L1325
.L1349:
	nop
	ldr	w6, [sp, 80]
	add	w6, w6, 1
	str	w6, [sp, 80]
	b	.L1334
.L1348:
	nop
	ldr	w6, [sp, 100]
	add	w6, w6, 1
	str	w6, [sp, 100]
	b	.L1335
.L1347:
	nop
	ldr	w6, [sp, 104]
	add	w6, w6, 1
	str	w6, [sp, 104]
	b	.L1336
.L1346:
	nop
	ldr	w6, [sp, 108]
	add	w6, w6, 1
	str	w6, [sp, 108]
	b	.L1337
.L1345:
	nop
	ldr	w6, [sp, 88]
	add	w6, w6, 1
	str	w6, [sp, 88]
	b	.L1338
.L1344:
	nop
	ldr	w6, [sp, 92]
	add	w6, w6, 1
	str	w6, [sp, 92]
	b	.L1339
.L1343:
	nop
	ldr	w6, [sp, 96]
	add	w6, w6, 1
	str	w6, [sp, 96]
	b	.L1340
.L1342:
	nop
.L1325:
	ldr	w0, [sp, 28]
	add	sp, sp, 112
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	__brute_force_MOD_reflected, .-__brute_force_MOD_reflected
	.align	2
	.global	__brute_force_MOD_covered
	.type	__brute_force_MOD_covered, %function
__brute_force_MOD_covered:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #1216
	.cfi_def_cfa_offset 1216
	stp	x29, x30, [sp]
	.cfi_offset 29, -1216
	.cfi_offset 30, -1208
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x10, [x0, 40]
	cmp	x10, 0
	bne	.L1352
	mov	x10, 1
.L1352:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 1152]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [sp, 1144]
	ldr	x0, [sp, 24]
	ldr	x11, [x0, 64]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 80]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 72]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [sp, 1136]
	ldr	x0, [sp, 1136]
	mul	x1, x11, x0
	neg	x0, x10
	sub	x12, x0, x11
	mov	x0, x1
	mov	x8, x0
	mov	x9, 0
	lsr	x0, x8, 59
	lsl	x5, x9, 5
	orr	x5, x0, x5
	lsl	x4, x8, 5
	ldr	x0, [sp, 16]
	ldr	x4, [x0, 40]
	cmp	x4, 0
	bne	.L1354
	mov	x4, 1
.L1354:
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	str	x0, [sp, 1128]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 48]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [sp, 1120]
	ldr	x0, [sp, 16]
	ldr	x5, [x0, 64]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 80]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 72]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [sp, 1112]
	ldr	x0, [sp, 1112]
	mul	x1, x5, x0
	neg	x0, x4
	sub	x8, x0, x5
	mov	x0, x1
	mov	x6, x0
	mov	x7, 0
	lsr	x0, x6, 59
	lsl	x3, x7, 5
	orr	x3, x0, x3
	lsl	x2, x6, 5
	mov	x0, 1
.L1358:
	cmp	x0, 9
	bgt	.L1355
	mul	x1, x0, x11
	add	x9, x12, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x7, x1, #10
	mov	x1, 1
.L1357:
	cmp	x1, 9
	bgt	.L1356
	mul	x2, x1, x10
	add	x6, x9, x2
	add	x2, x1, x7
	ldr	x3, [sp, 1152]
	ldr	w6, [x3, x6, lsl 2]
	lsl	x2, x2, 2
	add	x3, sp, 456
	str	w6, [x3, x2]
	add	x1, x1, 1
	b	.L1357
.L1356:
	add	x0, x0, 1
	b	.L1358
.L1355:
	mov	x0, 1
.L1362:
	cmp	x0, 9
	bgt	.L1359
	mul	x1, x0, x5
	add	x9, x8, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x7, x1, #10
	mov	x1, 1
.L1361:
	cmp	x1, 9
	bgt	.L1360
	mul	x2, x1, x4
	add	x6, x9, x2
	add	x2, x1, x7
	ldr	x3, [sp, 1128]
	ldr	w6, [x3, x6, lsl 2]
	lsl	x2, x2, 2
	add	x3, sp, 784
	str	w6, [x3, x2]
	add	x1, x1, 1
	b	.L1361
.L1360:
	add	x0, x0, 1
	b	.L1362
.L1359:
	mov	w0, 1
	str	w0, [sp, 452]
	mov	w0, 1
	str	w0, [sp, 1184]
.L1411:
	ldr	w0, [sp, 1184]
	cmp	w0, 2
	cset	w0, gt
	cmp	w0, 0
	bne	.L1414
	mov	w0, 1
	str	w0, [sp, 1188]
.L1394:
	ldr	w0, [sp, 1188]
	cmp	w0, 3
	cset	w0, gt
	cmp	w0, 0
	bne	.L1415
	mov	w0, 4
	str	w0, [sp, 1212]
	mov	w0, 1
	str	w0, [sp, 1200]
.L1377:
	ldr	w0, [sp, 1200]
	cmp	w0, 6
	cset	w0, gt
	cmp	w0, 0
	bne	.L1416
	ldr	w0, [sp, 1200]
	cmp	w0, 4
	bne	.L1366
	mov	w0, 7
	str	w0, [sp, 1212]
.L1366:
	ldr	w0, [sp, 1212]
	str	w0, [sp, 1196]
.L1376:
	ldr	w0, [sp, 1196]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L1417
	ldr	w0, [sp, 1188]
	sub	w1, w0, #1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	str	w0, [sp, 1176]
	ldr	w0, [sp, 1176]
	add	w0, w0, 1
	str	w0, [sp, 1172]
	mov	w0, 1
	str	w0, [sp, 1164]
.L1373:
	ldr	w0, [sp, 1164]
	cmp	w0, 3
	cset	w0, gt
	cmp	w0, 0
	bne	.L1418
	ldr	w0, [sp, 1164]
	cmp	w0, 2
	beq	.L1369
	ldr	w0, [sp, 1164]
	cmp	w0, 3
	beq	.L1370
	b	.L1371
.L1369:
	ldr	w0, [sp, 1172]
	add	w0, w0, 1
	str	w0, [sp, 1172]
	b	.L1371
.L1370:
	ldr	w0, [sp, 1176]
	add	w0, w0, 1
	str	w0, [sp, 1176]
.L1371:
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w2, [x1, x0]
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w2, w0
	bne	.L1419
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w2, [x1, x0]
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w2, w0
	bne	.L1419
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1419
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1419
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1419
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1419
	str	wzr, [sp, 452]
	b	.L1363
.L1419:
	nop
	ldr	w0, [sp, 1164]
	add	w0, w0, 1
	str	w0, [sp, 1164]
	b	.L1373
.L1418:
	nop
	ldr	w0, [sp, 1188]
	sub	w1, w0, #1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	str	w0, [sp, 1176]
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w2, [x1, x0]
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	add	w2, w2, w0
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	add	w2, w2, w0
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w3, [x1, x0]
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	add	w3, w3, w0
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	add	w0, w3, w0
	cmp	w2, w0
	bne	.L1374
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w2, [x1, x0]
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w2, w0
	cset	w2, ne
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w3, [x1, x0]
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w3, w0
	cset	w0, ne
	orr	w2, w2, w0
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w3, [x1, x0]
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w3, w0
	cset	w0, ne
	orr	w2, w2, w0
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w3, [x1, x0]
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w3, w0
	cset	w3, ne
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w4, [x1, x0]
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w4, w0
	cset	w0, ne
	orr	w3, w3, w0
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w4, [x1, x0]
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w4, w0
	cset	w0, ne
	orr	w0, w3, w0
	and	w0, w2, w0
	cmp	w0, 0
	bne	.L1420
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1374
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1374
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1374
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1374
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1374
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 1176]
	add	w0, w0, 2
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1374
	str	wzr, [sp, 452]
	b	.L1363
.L1420:
	nop
.L1374:
	ldr	w0, [sp, 1196]
	add	w0, w0, 1
	str	w0, [sp, 1196]
	b	.L1376
.L1417:
	nop
	ldr	w0, [sp, 1200]
	add	w0, w0, 1
	str	w0, [sp, 1200]
	b	.L1377
.L1416:
	nop
	ldr	w0, [sp, 1188]
	sub	w1, w0, #1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w2, w0, 1
	ldr	w1, [sp, 1188]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w3, w0, w1
	str	w2, [sp, 1176]
.L1393:
	ldr	w0, [sp, 1176]
	cmp	w0, w3
	cset	w0, gt
	cmp	w0, 0
	bne	.L1421
	ldr	w0, [sp, 1176]
	add	w0, w0, 1
	str	w0, [sp, 1172]
	ldr	w2, [sp, 1176]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	bne	.L1379
	ldr	w0, [sp, 1176]
	sub	w0, w0, #2
	str	w0, [sp, 1172]
.L1379:
	mov	w0, 1
	str	w0, [sp, 1200]
.L1392:
	ldr	w0, [sp, 1200]
	cmp	w0, 3
	cset	w0, gt
	cmp	w0, 0
	bne	.L1422
	mov	w0, 4
	str	w0, [sp, 1196]
.L1391:
	ldr	w0, [sp, 1196]
	cmp	w0, 6
	cset	w0, gt
	cmp	w0, 0
	bne	.L1423
	mov	w0, 7
	str	w0, [sp, 1192]
.L1390:
	ldr	w0, [sp, 1192]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L1424
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w2, [x1, x0]
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	add	w2, w2, w0
	ldrsw	x1, [sp, 1192]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	add	w2, w2, w0
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w4, [x1, x0]
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	add	w4, w4, w0
	ldrsw	x1, [sp, 1192]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	add	w0, w4, w0
	cmp	w2, w0
	bne	.L1383
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w2, [x1, x0]
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w2, w0
	cset	w2, ne
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w4, [x1, x0]
	ldrsw	x1, [sp, 1192]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w4, w0
	cset	w0, ne
	orr	w2, w2, w0
	ldrsw	x1, [sp, 1192]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w4, [x1, x0]
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w4, w0
	cset	w0, ne
	orr	w2, w2, w0
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w4, [x1, x0]
	ldrsw	x1, [sp, 1192]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w4, w0
	cset	w4, ne
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w5, [x1, x0]
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w5, w0
	cset	w0, ne
	orr	w4, w4, w0
	ldrsw	x1, [sp, 1192]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w5, [x1, x0]
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w5, w0
	cset	w0, ne
	orr	w0, w4, w0
	and	w0, w2, w0
	cmp	w0, 0
	bne	.L1425
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1426
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1426
	ldrsw	x1, [sp, 1192]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1426
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1426
	ldrsw	x1, [sp, 1196]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1426
	ldrsw	x1, [sp, 1192]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1426
	str	wzr, [sp, 452]
	b	.L1363
.L1383:
	ldr	w0, [sp, 1176]
	sub	w0, w0, #1
	str	w0, [sp, 1168]
	ldr	w2, [sp, 1168]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	bne	.L1386
	ldr	w0, [sp, 1168]
	add	w0, w0, 3
	str	w0, [sp, 1168]
.L1386:
	ldr	w0, [sp, 1196]
	str	w0, [sp, 1208]
	ldr	w0, [sp, 1192]
	str	w0, [sp, 1204]
	mov	w0, 1
	str	w0, [sp, 1180]
.L1389:
	ldr	w0, [sp, 1180]
	cmp	w0, 2
	cset	w0, gt
	cmp	w0, 0
	bne	.L1426
	ldr	w0, [sp, 1180]
	cmp	w0, 2
	bne	.L1387
	ldr	w0, [sp, 1192]
	str	w0, [sp, 1208]
	ldr	w0, [sp, 1196]
	str	w0, [sp, 1204]
.L1387:
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w2, [x1, x0]
	ldrsw	x1, [sp, 1208]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1168]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w2, w0
	cset	w2, ne
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w4, [x1, x0]
	ldrsw	x1, [sp, 1204]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w4, w0
	cset	w0, ne
	orr	w0, w2, w0
	cmp	w0, 0
	bne	.L1427
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w2, [x1, x0]
	ldrsw	x1, [sp, 1208]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w2, w0
	cset	w2, ne
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w4, [x1, x0]
	ldrsw	x1, [sp, 1204]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1168]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 456
	ldr	w0, [x1, x0]
	cmp	w4, w0
	cset	w0, ne
	orr	w0, w2, w0
	cmp	w0, 0
	bne	.L1427
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1427
	ldrsw	x1, [sp, 1208]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1176]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1427
	ldrsw	x1, [sp, 1200]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1427
	ldrsw	x1, [sp, 1204]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1172]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1427
	ldrsw	x1, [sp, 1208]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1168]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1427
	ldrsw	x1, [sp, 1204]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldrsw	x0, [sp, 1168]
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 784
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L1427
	str	wzr, [sp, 452]
	b	.L1363
.L1427:
	nop
	ldr	w0, [sp, 1180]
	add	w0, w0, 1
	str	w0, [sp, 1180]
	b	.L1389
.L1425:
	nop
	b	.L1385
.L1426:
	nop
.L1385:
	ldr	w0, [sp, 1192]
	add	w0, w0, 1
	str	w0, [sp, 1192]
	b	.L1390
.L1424:
	nop
	ldr	w0, [sp, 1196]
	add	w0, w0, 1
	str	w0, [sp, 1196]
	b	.L1391
.L1423:
	nop
	ldr	w0, [sp, 1200]
	add	w0, w0, 1
	str	w0, [sp, 1200]
	b	.L1392
.L1422:
	nop
	ldr	w0, [sp, 1176]
	add	w0, w0, 1
	str	w0, [sp, 1176]
	b	.L1393
.L1421:
	nop
	ldr	w0, [sp, 1188]
	add	w0, w0, 1
	str	w0, [sp, 1188]
	b	.L1394
.L1415:
	nop
	stp	xzr, xzr, [sp, 56]
	mov	x0, 4
	str	x0, [sp, 56]
	mov	w0, 2
	strb	w0, [sp, 68]
	mov	w0, 1
	strb	w0, [sp, 69]
	mov	x0, 1
	str	x0, [sp, 80]
	str	xzr, [sp, 88]
	mov	x0, 8
	str	x0, [sp, 96]
	mov	x0, 9
	str	x0, [sp, 104]
	str	xzr, [sp, 112]
	mov	x0, 8
	str	x0, [sp, 120]
	mov	x0, 4
	str	x0, [sp, 72]
	add	x0, sp, 128
	str	x0, [sp, 40]
	str	xzr, [sp, 48]
	mov	x0, 0
.L1398:
	cmp	x0, 8
	bgt	.L1395
	mov	x1, x0
	lsl	x1, x1, 3
	add	x6, x1, x0
	sub	x7, x0, #9
	add	x1, x0, 1
	lsl	x1, x1, 3
	mov	x1, 0
.L1397:
	cmp	x1, 8
	bgt	.L1396
	add	x3, x1, 1
	mov	x2, x3
	lsl	x2, x2, 3
	add	x2, x2, x3
	add	x4, x7, x2
	ldr	x2, [sp, 40]
	add	x3, x1, x6
	lsl	x4, x4, 2
	add	x5, sp, 456
	ldr	w4, [x5, x4]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L1397
.L1396:
	add	x0, x0, 1
	b	.L1398
.L1395:
	mov	x0, 0
.L1402:
	cmp	x0, 8
	bgt	.L1399
	mov	x1, x0
	lsl	x1, x1, 3
	add	x6, x1, x0
	add	x2, x0, 1
	mov	x1, x2
	lsl	x1, x1, 3
	add	x1, x1, x2
	sub	x5, x1, #10
	mov	x1, 0
.L1401:
	cmp	x1, 8
	bgt	.L1400
	ldr	x3, [sp, 40]
	add	x4, x1, x6
	add	x2, x1, 1
	add	x2, x5, x2
	ldr	w4, [x3, x4, lsl 2]
	lsl	x2, x2, 2
	add	x3, sp, 456
	str	w4, [x3, x2]
	add	x1, x1, 1
	b	.L1401
.L1400:
	add	x0, x0, 1
	b	.L1402
.L1399:
	stp	xzr, xzr, [sp, 56]
	mov	x0, 4
	str	x0, [sp, 56]
	mov	w0, 2
	strb	w0, [sp, 68]
	mov	w0, 1
	strb	w0, [sp, 69]
	mov	x0, 1
	str	x0, [sp, 80]
	str	xzr, [sp, 88]
	mov	x0, 8
	str	x0, [sp, 96]
	mov	x0, 9
	str	x0, [sp, 104]
	str	xzr, [sp, 112]
	mov	x0, 8
	str	x0, [sp, 120]
	mov	x0, 4
	str	x0, [sp, 72]
	add	x0, sp, 128
	str	x0, [sp, 40]
	str	xzr, [sp, 48]
	mov	x0, 0
.L1406:
	cmp	x0, 8
	bgt	.L1403
	mov	x1, x0
	lsl	x1, x1, 3
	add	x6, x1, x0
	sub	x7, x0, #9
	add	x1, x0, 1
	lsl	x1, x1, 3
	mov	x1, 0
.L1405:
	cmp	x1, 8
	bgt	.L1404
	add	x3, x1, 1
	mov	x2, x3
	lsl	x2, x2, 3
	add	x2, x2, x3
	add	x4, x7, x2
	ldr	x2, [sp, 40]
	add	x3, x1, x6
	lsl	x4, x4, 2
	add	x5, sp, 784
	ldr	w4, [x5, x4]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L1405
.L1404:
	add	x0, x0, 1
	b	.L1406
.L1403:
	mov	x0, 0
.L1410:
	cmp	x0, 8
	bgt	.L1407
	mov	x1, x0
	lsl	x1, x1, 3
	add	x6, x1, x0
	add	x2, x0, 1
	mov	x1, x2
	lsl	x1, x1, 3
	add	x1, x1, x2
	sub	x5, x1, #10
	mov	x1, 0
.L1409:
	cmp	x1, 8
	bgt	.L1408
	ldr	x3, [sp, 40]
	add	x4, x1, x6
	add	x2, x1, 1
	add	x2, x5, x2
	ldr	w4, [x3, x4, lsl 2]
	lsl	x2, x2, 2
	add	x3, sp, 784
	str	w4, [x3, x2]
	add	x1, x1, 1
	b	.L1409
.L1408:
	add	x0, x0, 1
	b	.L1410
.L1407:
	ldr	w0, [sp, 1184]
	add	w0, w0, 1
	str	w0, [sp, 1184]
	b	.L1411
.L1414:
	nop
.L1363:
	ldr	w0, [sp, 452]
	cmp	w0, 0
	beq	.L1412
	mov	x0, 4
	str	x0, [sp, 72]
	stp	xzr, xzr, [sp, 56]
	mov	x0, 4
	str	x0, [sp, 56]
	mov	w0, 2
	strb	w0, [sp, 68]
	mov	w0, 1
	strb	w0, [sp, 69]
	mov	x0, 1
	str	x0, [sp, 88]
	mov	x0, 9
	str	x0, [sp, 96]
	mov	x0, 1
	str	x0, [sp, 80]
	mov	x0, 1
	str	x0, [sp, 112]
	mov	x0, 9
	str	x0, [sp, 120]
	mov	x0, 9
	str	x0, [sp, 104]
	add	x0, sp, 456
	str	x0, [sp, 40]
	mov	x0, -10
	str	x0, [sp, 48]
	mov	x0, 4
	str	x0, [sp, 160]
	stp	xzr, xzr, [sp, 144]
	mov	x0, 4
	str	x0, [sp, 144]
	mov	w0, 2
	strb	w0, [sp, 156]
	mov	w0, 1
	strb	w0, [sp, 157]
	mov	x0, 1
	str	x0, [sp, 176]
	mov	x0, 9
	str	x0, [sp, 184]
	mov	x0, 1
	str	x0, [sp, 168]
	mov	x0, 1
	str	x0, [sp, 200]
	mov	x0, 9
	str	x0, [sp, 208]
	mov	x0, 9
	str	x0, [sp, 192]
	add	x0, sp, 784
	str	x0, [sp, 128]
	mov	x0, -10
	str	x0, [sp, 136]
	add	x1, sp, 128
	add	x0, sp, 40
	bl	__brute_force_MOD_reflected
	str	w0, [sp, 452]
.L1412:
	ldr	w0, [sp, 452]
	ldp	x29, x30, [sp]
	add	sp, sp, 1216
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	__brute_force_MOD_covered, .-__brute_force_MOD_covered
	.align	2
	.type	__brute_force_MOD_digits_2, %function
__brute_force_MOD_digits_2:
.LFB10:
	.cfi_startproc
	stp	x29, x30, [sp, -448]!
	.cfi_def_cfa_offset 448
	.cfi_offset 29, -448
	.cfi_offset 30, -440
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	.cfi_offset 19, -432
	.cfi_offset 20, -424
	.cfi_offset 21, -416
	.cfi_offset 22, -408
	.cfi_offset 23, -400
	.cfi_offset 24, -392
	.cfi_offset 25, -384
	.cfi_offset 26, -376
	.cfi_offset 27, -368
	str	x0, [sp, 104]
	mov	x1, 0
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	sub	x4, x0, #10
	mov	x0, 1
.L1430:
	cmp	x0, 9
	bgt	.L1429
	mov	x2, x0
	lsl	x2, x2, 3
	add	x2, x2, x0
	add	x3, x4, x2
	adrp	x2, __brute_force_MOD_sudoku1
	add	x2, x2, :lo12:__brute_force_MOD_sudoku1
	ldr	w2, [x2, x3, lsl 2]
	cmp	w2, 0
	cset	w2, ne
	and	w3, w2, 255
	add	x2, sp, 304
	strb	w3, [x2, x1]
	add	x1, x1, 1
	add	x0, x0, 1
	b	.L1430
.L1429:
	mov	x1, 0
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	sub	x3, x0, #10
	mov	x0, 1
.L1433:
	cmp	x0, 9
	bgt	.L1431
	add	x2, sp, 304
	ldrb	w2, [x2, x1]
	cmp	w2, 0
	beq	.L1432
	mov	x2, x0
	lsl	x2, x2, 3
	add	x2, x2, x0
	add	x5, x3, x2
	sub	x2, x0, #1
	adrp	x4, __brute_force_MOD_sudoku1
	add	x4, x4, :lo12:__brute_force_MOD_sudoku1
	ldr	w5, [x4, x5, lsl 2]
	lsl	x2, x2, 2
	add	x4, sp, 360
	str	w5, [x4, x2]
.L1432:
	add	x1, x1, 1
	add	x0, x0, 1
	b	.L1433
.L1431:
	mov	x1, 0
	mov	x0, 1
.L1436:
	cmp	x0, 9
	bgt	.L1434
	add	x2, sp, 304
	ldrb	w2, [x2, x1]
	cmp	w2, 0
	beq	.L1435
	sub	x3, x0, #1
	sub	x2, x0, #1
	lsl	x3, x3, 2
	add	x4, sp, 360
	ldr	w4, [x4, x3]
	lsl	x2, x2, 2
	add	x3, sp, 320
	str	w4, [x3, x2]
.L1435:
	add	x1, x1, 1
	add	x0, x0, 1
	b	.L1436
.L1434:
	mov	x1, 0
	mov	x0, 1
.L1439:
	cmp	x0, 9
	bgt	.L1437
	add	x2, sp, 304
	ldrb	w2, [x2, x1]
	eor	w2, w2, 1
	and	w2, w2, 255
	cmp	w2, 0
	beq	.L1438
	sub	x2, x0, #1
	lsl	x2, x2, 2
	add	x3, sp, 360
	mov	w4, 1
	str	w4, [x3, x2]
.L1438:
	add	x1, x1, 1
	add	x0, x0, 1
	b	.L1439
.L1437:
	mov	x1, 0
	mov	x0, 1
.L1442:
	cmp	x0, 9
	bgt	.L1440
	add	x2, sp, 304
	ldrb	w2, [x2, x1]
	eor	w2, w2, 1
	and	w2, w2, 255
	cmp	w2, 0
	beq	.L1441
	sub	x2, x0, #1
	lsl	x2, x2, 2
	add	x3, sp, 320
	mov	w4, 9
	str	w4, [x3, x2]
.L1441:
	add	x1, x1, 1
	add	x0, x0, 1
	b	.L1442
.L1440:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	str	w0, [sp, 400]
	ldr	w0, [sp, 360]
	ldr	w19, [sp, 320]
	str	w0, [sp, 440]
.L1703:
	ldr	w0, [sp, 440]
	cmp	w0, w19
	cset	w0, gt
	cmp	w0, 0
	bne	.L1704
	ldrsw	x1, [sp, 440]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x0, x1
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x1, x0, #82
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L1444
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 440]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	sxtw	x3, w1
	ldrsw	x1, [sp, 440]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 2
.L1446:
	cmp	x0, 9
	bgt	.L1445
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1446
.L1445:
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 440]
	ldrsw	x2, [sp, 440]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #82
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #82
.L1448:
	cmp	x1, 9
	bgt	.L1447
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	sub	w3, w0, #10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1448
.L1447:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1449
	cmp	w0, 2
	beq	.L1450
	b	.L1705
.L1449:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 440]
	ldrsw	x1, [sp, 440]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 1
.L1455:
	cmp	x0, 3
	bgt	.L1452
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1454:
	cmp	x1, x4
	bgt	.L1453
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	sub	w9, w7, #10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1454
.L1453:
	add	x0, x0, 1
	b	.L1455
.L1452:
	b	.L1451
.L1450:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 440]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 440]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 1
.L1457:
	cmp	x0, 3
	bgt	.L1456
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1457
.L1456:
.L1705:
	nop
.L1451:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	sub	x1, x0, #1
	adrp	x0, __brute_force_MOD_sudoku2
	add	x0, x0, :lo12:__brute_force_MOD_sudoku2
	ldr	w2, [sp, 440]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 364]
	ldr	w20, [sp, 324]
	str	w0, [sp, 436]
.L1690:
	ldr	w0, [sp, 436]
	cmp	w0, w20
	cset	w0, gt
	cmp	w0, 0
	bne	.L1706
	ldrsw	x1, [sp, 436]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x0, x1
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x1, x0, #73
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L1459
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 436]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	sxtw	x3, w1
	ldrsw	x1, [sp, 436]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 3
.L1461:
	cmp	x0, 9
	bgt	.L1460
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1461
.L1460:
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 436]
	ldrsw	x2, [sp, 436]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #73
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #73
.L1463:
	cmp	x1, 9
	bgt	.L1462
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	sub	w3, w0, #10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1463
.L1462:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1464
	cmp	w0, 2
	beq	.L1465
	b	.L1707
.L1464:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 436]
	ldrsw	x1, [sp, 436]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 1
.L1470:
	cmp	x0, 3
	bgt	.L1467
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1469:
	cmp	x1, x4
	bgt	.L1468
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	sub	w9, w7, #10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1469
.L1468:
	add	x0, x0, 1
	b	.L1470
.L1467:
	b	.L1466
.L1465:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 436]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 436]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 1
.L1472:
	cmp	x0, 3
	bgt	.L1471
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1472
.L1471:
.L1707:
	nop
.L1466:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x1, x0, 8
	adrp	x0, __brute_force_MOD_sudoku2
	add	x0, x0, :lo12:__brute_force_MOD_sudoku2
	ldr	w2, [sp, 436]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 368]
	ldr	w21, [sp, 328]
	str	w0, [sp, 432]
.L1677:
	ldr	w0, [sp, 432]
	cmp	w0, w21
	cset	w0, gt
	cmp	w0, 0
	bne	.L1708
	ldrsw	x1, [sp, 432]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x0, x1
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x1, x0, #64
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L1474
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 432]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	sxtw	x3, w1
	ldrsw	x1, [sp, 432]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 4
.L1476:
	cmp	x0, 9
	bgt	.L1475
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1476
.L1475:
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 432]
	ldrsw	x2, [sp, 432]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #64
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #64
.L1478:
	cmp	x1, 9
	bgt	.L1477
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	sub	w3, w0, #10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1478
.L1477:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1479
	cmp	w0, 2
	beq	.L1480
	b	.L1709
.L1479:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 432]
	ldrsw	x1, [sp, 432]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 1
.L1485:
	cmp	x0, 3
	bgt	.L1482
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1484:
	cmp	x1, x4
	bgt	.L1483
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	sub	w9, w7, #10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1484
.L1483:
	add	x0, x0, 1
	b	.L1485
.L1482:
	b	.L1481
.L1480:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 432]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 432]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 1
.L1487:
	cmp	x0, 3
	bgt	.L1486
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1487
.L1486:
.L1709:
	nop
.L1481:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x1, x0, 17
	adrp	x0, __brute_force_MOD_sudoku2
	add	x0, x0, :lo12:__brute_force_MOD_sudoku2
	ldr	w2, [sp, 432]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 372]
	ldr	w22, [sp, 332]
	str	w0, [sp, 428]
.L1664:
	ldr	w0, [sp, 428]
	cmp	w0, w22
	cset	w0, gt
	cmp	w0, 0
	bne	.L1710
	ldrsw	x1, [sp, 428]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x0, x1
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x1, x0, #55
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L1489
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 428]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	sxtw	x3, w1
	ldrsw	x1, [sp, 428]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 5
.L1491:
	cmp	x0, 9
	bgt	.L1490
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1491
.L1490:
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 428]
	ldrsw	x2, [sp, 428]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #55
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #55
.L1493:
	cmp	x1, 9
	bgt	.L1492
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	sub	w3, w0, #10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1493
.L1492:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1494
	cmp	w0, 2
	beq	.L1495
	b	.L1711
.L1494:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 428]
	ldrsw	x1, [sp, 428]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 4
.L1500:
	cmp	x0, 6
	bgt	.L1497
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1499:
	cmp	x1, x4
	bgt	.L1498
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	sub	w9, w7, #10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1499
.L1498:
	add	x0, x0, 1
	b	.L1500
.L1497:
	b	.L1496
.L1495:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 428]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 428]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 4
.L1502:
	cmp	x0, 6
	bgt	.L1501
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1502
.L1501:
.L1711:
	nop
.L1496:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x1, x0, 26
	adrp	x0, __brute_force_MOD_sudoku2
	add	x0, x0, :lo12:__brute_force_MOD_sudoku2
	ldr	w2, [sp, 428]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 376]
	ldr	w23, [sp, 336]
	str	w0, [sp, 424]
.L1651:
	ldr	w0, [sp, 424]
	cmp	w0, w23
	cset	w0, gt
	cmp	w0, 0
	bne	.L1712
	ldrsw	x1, [sp, 424]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x0, x1
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x1, x0, #46
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L1504
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 424]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	sxtw	x3, w1
	ldrsw	x1, [sp, 424]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 6
.L1506:
	cmp	x0, 9
	bgt	.L1505
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1506
.L1505:
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 424]
	ldrsw	x2, [sp, 424]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #46
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #46
.L1508:
	cmp	x1, 9
	bgt	.L1507
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	sub	w3, w0, #10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1508
.L1507:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1509
	cmp	w0, 2
	beq	.L1510
	b	.L1713
.L1509:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 424]
	ldrsw	x1, [sp, 424]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 4
.L1515:
	cmp	x0, 6
	bgt	.L1512
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1514:
	cmp	x1, x4
	bgt	.L1513
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	sub	w9, w7, #10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1514
.L1513:
	add	x0, x0, 1
	b	.L1515
.L1512:
	b	.L1511
.L1510:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 424]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 424]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 4
.L1517:
	cmp	x0, 6
	bgt	.L1516
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1517
.L1516:
.L1713:
	nop
.L1511:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x1, x0, 35
	adrp	x0, __brute_force_MOD_sudoku2
	add	x0, x0, :lo12:__brute_force_MOD_sudoku2
	ldr	w2, [sp, 424]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 380]
	ldr	w24, [sp, 340]
	str	w0, [sp, 420]
.L1638:
	ldr	w0, [sp, 420]
	cmp	w0, w24
	cset	w0, gt
	cmp	w0, 0
	bne	.L1714
	ldrsw	x1, [sp, 420]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x0, x1
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x1, x0, #37
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L1519
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 420]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	sxtw	x3, w1
	ldrsw	x1, [sp, 420]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 7
.L1521:
	cmp	x0, 9
	bgt	.L1520
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1521
.L1520:
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 420]
	ldrsw	x2, [sp, 420]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #37
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #37
.L1523:
	cmp	x1, 9
	bgt	.L1522
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	sub	w3, w0, #10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1523
.L1522:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1524
	cmp	w0, 2
	beq	.L1525
	b	.L1715
.L1524:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 420]
	ldrsw	x1, [sp, 420]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 4
.L1530:
	cmp	x0, 6
	bgt	.L1527
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1529:
	cmp	x1, x4
	bgt	.L1528
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	sub	w9, w7, #10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1529
.L1528:
	add	x0, x0, 1
	b	.L1530
.L1527:
	b	.L1526
.L1525:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 420]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 420]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 4
.L1532:
	cmp	x0, 6
	bgt	.L1531
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1532
.L1531:
.L1715:
	nop
.L1526:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x1, x0, 44
	adrp	x0, __brute_force_MOD_sudoku2
	add	x0, x0, :lo12:__brute_force_MOD_sudoku2
	ldr	w2, [sp, 420]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 384]
	ldr	w25, [sp, 344]
	str	w0, [sp, 416]
.L1625:
	ldr	w0, [sp, 416]
	cmp	w0, w25
	cset	w0, gt
	cmp	w0, 0
	bne	.L1716
	ldrsw	x1, [sp, 416]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x0, x1
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x1, x0, #28
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L1534
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 416]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	sxtw	x3, w1
	ldrsw	x1, [sp, 416]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 8
.L1536:
	cmp	x0, 9
	bgt	.L1535
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1536
.L1535:
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 416]
	ldrsw	x2, [sp, 416]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #28
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #28
.L1538:
	cmp	x1, 9
	bgt	.L1537
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	sub	w3, w0, #10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1538
.L1537:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1539
	cmp	w0, 2
	beq	.L1540
	b	.L1717
.L1539:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 416]
	ldrsw	x1, [sp, 416]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 7
.L1545:
	cmp	x0, 9
	bgt	.L1542
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1544:
	cmp	x1, x4
	bgt	.L1543
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	sub	w9, w7, #10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1544
.L1543:
	add	x0, x0, 1
	b	.L1545
.L1542:
	b	.L1541
.L1540:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 416]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 416]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 7
.L1547:
	cmp	x0, 9
	bgt	.L1546
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1547
.L1546:
.L1717:
	nop
.L1541:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x1, x0, 53
	adrp	x0, __brute_force_MOD_sudoku2
	add	x0, x0, :lo12:__brute_force_MOD_sudoku2
	ldr	w2, [sp, 416]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 388]
	ldr	w26, [sp, 348]
	str	w0, [sp, 412]
.L1612:
	ldr	w0, [sp, 412]
	cmp	w0, w26
	cset	w0, gt
	cmp	w0, 0
	bne	.L1718
	ldrsw	x1, [sp, 412]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x0, x1
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x1, x0, #19
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L1549
	ldrsw	x1, [sp, 412]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x0, x1
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x1, x0, #10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w2, [x0, x1, lsl 2]
	ldrsw	x1, [sp, 412]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x0, x1
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x1, x0, #10
	sub	w2, w2, #10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w2, [x0, x1, lsl 2]
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 412]
	ldrsw	x2, [sp, 412]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #19
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #19
.L1551:
	cmp	x1, 9
	bgt	.L1550
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	sub	w3, w0, #10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1551
.L1550:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1552
	cmp	w0, 2
	beq	.L1553
	b	.L1719
.L1552:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 412]
	ldrsw	x1, [sp, 412]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 7
.L1558:
	cmp	x0, 9
	bgt	.L1555
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1557:
	cmp	x1, x4
	bgt	.L1556
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	sub	w9, w7, #10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1557
.L1556:
	add	x0, x0, 1
	b	.L1558
.L1555:
	b	.L1554
.L1553:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 412]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 412]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 7
.L1560:
	cmp	x0, 9
	bgt	.L1559
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1560
.L1559:
.L1719:
	nop
.L1554:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x1, x0, 62
	adrp	x0, __brute_force_MOD_sudoku2
	add	x0, x0, :lo12:__brute_force_MOD_sudoku2
	ldr	w2, [sp, 412]
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 440]
	ldr	w0, [sp, 436]
	add	w1, w1, w0
	ldr	w0, [sp, 432]
	add	w1, w1, w0
	ldr	w0, [sp, 428]
	add	w1, w1, w0
	ldr	w0, [sp, 424]
	add	w1, w1, w0
	ldr	w0, [sp, 420]
	add	w1, w1, w0
	ldr	w0, [sp, 416]
	add	w1, w1, w0
	ldr	w0, [sp, 412]
	add	w0, w1, w0
	mov	w1, 45
	sub	w0, w1, w0
	ldr	w2, [sp, 440]
	ldr	w1, [sp, 436]
	add	w2, w2, w1
	ldr	w1, [sp, 432]
	add	w2, w2, w1
	ldr	w1, [sp, 428]
	add	w2, w2, w1
	ldr	w1, [sp, 424]
	add	w2, w2, w1
	ldr	w1, [sp, 420]
	add	w2, w2, w1
	ldr	w1, [sp, 416]
	add	w2, w2, w1
	ldr	w1, [sp, 412]
	add	w1, w2, w1
	mov	w2, 45
	sub	w27, w2, w1
	str	w0, [sp, 408]
.L1601:
	ldr	w0, [sp, 408]
	cmp	w0, w27
	cset	w0, gt
	cmp	w0, 0
	bne	.L1720
	ldrsw	x1, [sp, 408]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x0, x1
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x1, x0, #10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L1562
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 408]
	ldrsw	x2, [sp, 408]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #10
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #10
.L1564:
	cmp	x1, 9
	bgt	.L1563
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	sub	w3, w0, #10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1564
.L1563:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1565
	cmp	w0, 2
	beq	.L1566
	b	.L1721
.L1565:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 408]
	ldrsw	x1, [sp, 408]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 7
.L1571:
	cmp	x0, 9
	bgt	.L1568
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1570:
	cmp	x1, x4
	bgt	.L1569
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	sub	w9, w7, #10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1570
.L1569:
	add	x0, x0, 1
	b	.L1571
.L1568:
	b	.L1567
.L1566:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 408]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 408]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 7
.L1573:
	cmp	x0, 9
	bgt	.L1572
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	sub	w3, w3, #10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1573
.L1572:
.L1721:
	nop
.L1567:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x1, x0, 71
	adrp	x0, __brute_force_MOD_sudoku2
	add	x0, x0, :lo12:__brute_force_MOD_sudoku2
	ldr	w2, [sp, 408]
	str	w2, [x0, x1, lsl 2]
	mov	w0, 1
	str	w0, [sp, 404]
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	cmp	w0, 5
	bne	.L1574
	mov	w0, 1
	str	w0, [sp, 444]
.L1580:
	ldr	w0, [sp, 444]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L1722
	ldrsw	x1, [sp, 444]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x1, x0, #10
	adrp	x0, __brute_force_MOD_sudoku1
	add	x0, x0, :lo12:__brute_force_MOD_sudoku1
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L1723
	mov	w2, 0
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x1, [sp, 444]
	sub	x3, x0, #91
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x3, x3, x0
	mov	x1, 1
.L1579:
	cmp	x1, 9
	bgt	.L1577
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x3, x0
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x4, lsl 2]
	cmp	w0, 0
	ble	.L1578
	mov	w2, 1
	b	.L1577
.L1578:
	add	x1, x1, 1
	b	.L1579
.L1577:
	cmp	w2, 0
	bne	.L1723
	str	wzr, [sp, 404]
	b	.L1574
.L1723:
	nop
	ldr	w0, [sp, 444]
	add	w0, w0, 1
	str	w0, [sp, 444]
	b	.L1580
.L1722:
	nop
.L1574:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	cmp	w0, 8
	bne	.L1581
	mov	x0, 1
.L1585:
	cmp	x0, 9
	bgt	.L1582
	mov	w2, 0
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x5, x1, #10
	mov	x1, 1
.L1584:
	cmp	x1, 8
	bgt	.L1583
	add	x4, x1, x5
	adrp	x3, __brute_force_MOD_sudoku2
	add	x3, x3, :lo12:__brute_force_MOD_sudoku2
	ldr	w3, [x3, x4, lsl 2]
	add	w2, w2, w3
	add	x1, x1, 1
	b	.L1584
.L1583:
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x3, x1, #1
	mov	w1, 45
	sub	w2, w1, w2
	adrp	x1, __brute_force_MOD_sudoku2
	add	x1, x1, :lo12:__brute_force_MOD_sudoku2
	str	w2, [x1, x3, lsl 2]
	add	x0, x0, 1
	b	.L1585
.L1582:
	mov	w1, 0
	mov	x0, 1
.L1587:
	cmp	x0, 9
	bgt	.L1586
	mov	x2, x0
	lsl	x2, x2, 3
	add	x2, x2, x0
	sub	x3, x2, #1
	adrp	x2, __brute_force_MOD_sudoku2
	add	x2, x2, :lo12:__brute_force_MOD_sudoku2
	ldr	w2, [x2, x3, lsl 2]
	add	w1, w1, w2
	add	x0, x0, 1
	b	.L1587
.L1586:
	cmp	w1, 45
	bne	.L1562
	adrp	x0, __brute_force_MOD_soln
	add	x0, x0, :lo12:__brute_force_MOD_soln
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, __brute_force_MOD_soln
	add	x0, x0, :lo12:__brute_force_MOD_soln
	str	w1, [x0]
	adrp	x0, __brute_force_MOD_sudoku3
	add	x1, x0, :lo12:__brute_force_MOD_sudoku3
	adrp	x0, __brute_force_MOD_sudoku2
	add	x0, x0, :lo12:__brute_force_MOD_sudoku2
	mov	x3, x1
	mov	x1, x0
	mov	x0, 324
	mov	x2, x0
	mov	x0, x3
	bl	memcpy
	mov	x0, 4
	str	x0, [sp, 152]
	stp	xzr, xzr, [sp, 136]
	mov	x0, 4
	str	x0, [sp, 136]
	mov	w0, 2
	strb	w0, [sp, 148]
	mov	w0, 1
	strb	w0, [sp, 149]
	mov	x0, 1
	str	x0, [sp, 168]
	mov	x0, 9
	str	x0, [sp, 176]
	mov	x0, 1
	str	x0, [sp, 160]
	mov	x0, 1
	str	x0, [sp, 192]
	mov	x0, 9
	str	x0, [sp, 200]
	mov	x0, 9
	str	x0, [sp, 184]
	adrp	x0, __brute_force_MOD_sudoku3
	add	x0, x0, :lo12:__brute_force_MOD_sudoku3
	str	x0, [sp, 120]
	mov	x0, -10
	str	x0, [sp, 128]
	mov	x0, 4
	str	x0, [sp, 240]
	stp	xzr, xzr, [sp, 224]
	mov	x0, 4
	str	x0, [sp, 224]
	mov	w0, 2
	strb	w0, [sp, 236]
	mov	w0, 1
	strb	w0, [sp, 237]
	mov	x0, 1
	str	x0, [sp, 256]
	mov	x0, 9
	str	x0, [sp, 264]
	mov	x0, 1
	str	x0, [sp, 248]
	mov	x0, 1
	str	x0, [sp, 280]
	mov	x0, 9
	str	x0, [sp, 288]
	mov	x0, 9
	str	x0, [sp, 272]
	adrp	x0, __brute_force_MOD_sudoku1
	add	x0, x0, :lo12:__brute_force_MOD_sudoku1
	str	x0, [sp, 208]
	mov	x0, -10
	str	x0, [sp, 216]
	add	x1, sp, 208
	add	x0, sp, 120
	bl	__brute_force_MOD_covered
	eor	w0, w0, 1
	cmp	w0, 0
	beq	.L1589
	adrp	x0, __brute_force_MOD_soln
	add	x0, x0, :lo12:__brute_force_MOD_soln
	mov	w1, 2
	str	w1, [x0]
	b	.L1589
.L1581:
	ldr	w0, [sp, 404]
	cmp	w0, 0
	beq	.L1589
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	str	w0, [sp, 300]
	add	x0, sp, 300
	bl	__brute_force_MOD_digits_2
	adrp	x0, __brute_force_MOD_soln
	add	x0, x0, :lo12:__brute_force_MOD_soln
	ldr	w0, [x0]
	cmp	w0, 1
	bgt	.L1724
.L1589:
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 408]
	ldrsw	x2, [sp, 408]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #10
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #10
.L1592:
	cmp	x1, 9
	bgt	.L1591
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	add	w3, w0, 10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1592
.L1591:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1593
	cmp	w0, 2
	beq	.L1594
	b	.L1725
.L1593:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 408]
	ldrsw	x1, [sp, 408]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 7
.L1598:
	cmp	x0, 9
	bgt	.L1595
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1597:
	cmp	x1, x4
	bgt	.L1596
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	add	w9, w7, 10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1597
.L1596:
	add	x0, x0, 1
	b	.L1598
.L1595:
	b	.L1562
.L1594:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 408]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 408]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 7
.L1600:
	cmp	x0, 9
	bgt	.L1599
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1600
.L1599:
.L1725:
	nop
.L1562:
	ldr	w0, [sp, 408]
	add	w0, w0, 1
	str	w0, [sp, 408]
	b	.L1601
.L1720:
	nop
	ldrsw	x1, [sp, 412]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x0, x1
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x1, x0, #10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w2, [x0, x1, lsl 2]
	ldrsw	x1, [sp, 412]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x0, x1
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x1, x0, #10
	add	w2, w2, 10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w2, [x0, x1, lsl 2]
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 412]
	ldrsw	x2, [sp, 412]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #19
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #19
.L1603:
	cmp	x1, 9
	bgt	.L1602
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	add	w3, w0, 10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1603
.L1602:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1604
	cmp	w0, 2
	beq	.L1605
	b	.L1726
.L1604:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 412]
	ldrsw	x1, [sp, 412]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 7
.L1609:
	cmp	x0, 9
	bgt	.L1606
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1608:
	cmp	x1, x4
	bgt	.L1607
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	add	w9, w7, 10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1608
.L1607:
	add	x0, x0, 1
	b	.L1609
.L1606:
	b	.L1549
.L1605:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 412]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 412]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 7
.L1611:
	cmp	x0, 9
	bgt	.L1610
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1611
.L1610:
.L1726:
	nop
.L1549:
	ldr	w0, [sp, 412]
	add	w0, w0, 1
	str	w0, [sp, 412]
	b	.L1612
.L1718:
	nop
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 416]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	sxtw	x3, w1
	ldrsw	x1, [sp, 416]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 8
.L1614:
	cmp	x0, 9
	bgt	.L1613
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1614
.L1613:
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 416]
	ldrsw	x2, [sp, 416]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #28
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #28
.L1616:
	cmp	x1, 9
	bgt	.L1615
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	add	w3, w0, 10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1616
.L1615:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1617
	cmp	w0, 2
	beq	.L1618
	b	.L1727
.L1617:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 416]
	ldrsw	x1, [sp, 416]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 7
.L1622:
	cmp	x0, 9
	bgt	.L1619
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1621:
	cmp	x1, x4
	bgt	.L1620
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	add	w9, w7, 10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1621
.L1620:
	add	x0, x0, 1
	b	.L1622
.L1619:
	b	.L1534
.L1618:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 416]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 416]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 7
.L1624:
	cmp	x0, 9
	bgt	.L1623
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1624
.L1623:
.L1727:
	nop
.L1534:
	ldr	w0, [sp, 416]
	add	w0, w0, 1
	str	w0, [sp, 416]
	b	.L1625
.L1716:
	nop
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 420]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	sxtw	x3, w1
	ldrsw	x1, [sp, 420]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 7
.L1627:
	cmp	x0, 9
	bgt	.L1626
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1627
.L1626:
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 420]
	ldrsw	x2, [sp, 420]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #37
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #37
.L1629:
	cmp	x1, 9
	bgt	.L1628
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	add	w3, w0, 10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1629
.L1628:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1630
	cmp	w0, 2
	beq	.L1631
	b	.L1728
.L1630:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 420]
	ldrsw	x1, [sp, 420]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 4
.L1635:
	cmp	x0, 6
	bgt	.L1632
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1634:
	cmp	x1, x4
	bgt	.L1633
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	add	w9, w7, 10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1634
.L1633:
	add	x0, x0, 1
	b	.L1635
.L1632:
	b	.L1519
.L1631:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 420]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 420]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 4
.L1637:
	cmp	x0, 6
	bgt	.L1636
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1637
.L1636:
.L1728:
	nop
.L1519:
	ldr	w0, [sp, 420]
	add	w0, w0, 1
	str	w0, [sp, 420]
	b	.L1638
.L1714:
	nop
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 424]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	sxtw	x3, w1
	ldrsw	x1, [sp, 424]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 6
.L1640:
	cmp	x0, 9
	bgt	.L1639
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1640
.L1639:
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 424]
	ldrsw	x2, [sp, 424]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #46
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #46
.L1642:
	cmp	x1, 9
	bgt	.L1641
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	add	w3, w0, 10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1642
.L1641:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1643
	cmp	w0, 2
	beq	.L1644
	b	.L1729
.L1643:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 424]
	ldrsw	x1, [sp, 424]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 4
.L1648:
	cmp	x0, 6
	bgt	.L1645
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1647:
	cmp	x1, x4
	bgt	.L1646
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	add	w9, w7, 10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1647
.L1646:
	add	x0, x0, 1
	b	.L1648
.L1645:
	b	.L1504
.L1644:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 424]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 424]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 4
.L1650:
	cmp	x0, 6
	bgt	.L1649
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1650
.L1649:
.L1729:
	nop
.L1504:
	ldr	w0, [sp, 424]
	add	w0, w0, 1
	str	w0, [sp, 424]
	b	.L1651
.L1712:
	nop
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 428]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	sxtw	x3, w1
	ldrsw	x1, [sp, 428]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 5
.L1653:
	cmp	x0, 9
	bgt	.L1652
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1653
.L1652:
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 428]
	ldrsw	x2, [sp, 428]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #55
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #55
.L1655:
	cmp	x1, 9
	bgt	.L1654
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	add	w3, w0, 10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1655
.L1654:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1656
	cmp	w0, 2
	beq	.L1657
	b	.L1730
.L1656:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 428]
	ldrsw	x1, [sp, 428]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 4
.L1661:
	cmp	x0, 6
	bgt	.L1658
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1660:
	cmp	x1, x4
	bgt	.L1659
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	add	w9, w7, 10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1660
.L1659:
	add	x0, x0, 1
	b	.L1661
.L1658:
	b	.L1489
.L1657:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 428]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 428]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 4
.L1663:
	cmp	x0, 6
	bgt	.L1662
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1663
.L1662:
.L1730:
	nop
.L1489:
	ldr	w0, [sp, 428]
	add	w0, w0, 1
	str	w0, [sp, 428]
	b	.L1664
.L1710:
	nop
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 432]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	sxtw	x3, w1
	ldrsw	x1, [sp, 432]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 4
.L1666:
	cmp	x0, 9
	bgt	.L1665
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1666
.L1665:
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 432]
	ldrsw	x2, [sp, 432]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #64
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #64
.L1668:
	cmp	x1, 9
	bgt	.L1667
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	add	w3, w0, 10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1668
.L1667:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1669
	cmp	w0, 2
	beq	.L1670
	b	.L1731
.L1669:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 432]
	ldrsw	x1, [sp, 432]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 1
.L1674:
	cmp	x0, 3
	bgt	.L1671
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1673:
	cmp	x1, x4
	bgt	.L1672
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	add	w9, w7, 10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1673
.L1672:
	add	x0, x0, 1
	b	.L1674
.L1671:
	b	.L1474
.L1670:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 432]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 432]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 1
.L1676:
	cmp	x0, 3
	bgt	.L1675
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1676
.L1675:
.L1731:
	nop
.L1474:
	ldr	w0, [sp, 432]
	add	w0, w0, 1
	str	w0, [sp, 432]
	b	.L1677
.L1708:
	nop
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 436]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	sxtw	x3, w1
	ldrsw	x1, [sp, 436]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 3
.L1679:
	cmp	x0, 9
	bgt	.L1678
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1679
.L1678:
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 436]
	ldrsw	x2, [sp, 436]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #73
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #73
.L1681:
	cmp	x1, 9
	bgt	.L1680
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	add	w3, w0, 10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1681
.L1680:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1682
	cmp	w0, 2
	beq	.L1683
	b	.L1732
.L1682:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 436]
	ldrsw	x1, [sp, 436]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 1
.L1687:
	cmp	x0, 3
	bgt	.L1684
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1686:
	cmp	x1, x4
	bgt	.L1685
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	add	w9, w7, 10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1686
.L1685:
	add	x0, x0, 1
	b	.L1687
.L1684:
	b	.L1459
.L1683:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 436]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 436]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 1
.L1689:
	cmp	x0, 3
	bgt	.L1688
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1689
.L1688:
.L1732:
	nop
.L1459:
	ldr	w0, [sp, 436]
	add	w0, w0, 1
	str	w0, [sp, 436]
	b	.L1690
.L1706:
	nop
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 440]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	sxtw	x3, w1
	ldrsw	x1, [sp, 440]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 2
.L1692:
	cmp	x0, 9
	bgt	.L1691
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1692
.L1691:
	ldrsw	x1, [sp, 400]
	ldrsw	x0, [sp, 400]
	ldrsw	x3, [sp, 440]
	ldrsw	x2, [sp, 440]
	sub	x5, x0, x1
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x6, x0, #82
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x4, x0, #82
.L1694:
	cmp	x1, 9
	bgt	.L1693
	add	x2, x1, x6
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x2, lsl 2]
	add	x2, x1, x5
	add	x2, x4, x2
	add	w3, w0, 10
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w3, [x0, x2, lsl 2]
	add	x1, x1, 1
	b	.L1694
.L1693:
	ldr	x0, [sp, 104]
	ldr	w2, [x0]
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	cmp	w0, 1
	beq	.L1695
	cmp	w0, 2
	beq	.L1696
	b	.L1733
.L1695:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 2
	sxtw	x4, w1
	ldrsw	x2, [sp, 440]
	ldrsw	x1, [sp, 440]
	sub	x5, x0, x3
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	sub	x6, x0, #91
	mov	x0, 1
.L1700:
	cmp	x0, 3
	bgt	.L1697
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x11, x2, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x10, x6, x1
	mov	x1, x3
.L1699:
	cmp	x1, x4
	bgt	.L1698
	add	x7, x1, x5
	add	x8, x11, x7
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	ldr	w7, [x7, x8, lsl 2]
	add	x8, x1, x10
	add	w9, w7, 10
	adrp	x7, __brute_force_MOD_block
	add	x7, x7, :lo12:__brute_force_MOD_block
	str	w9, [x7, x8, lsl 2]
	add	x1, x1, 1
	b	.L1699
.L1698:
	add	x0, x0, 1
	b	.L1700
.L1697:
	b	.L1444
.L1696:
	ldr	x0, [sp, 104]
	ldr	w0, [x0]
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x2, [sp, 440]
	ldr	x1, [sp, 104]
	ldr	w1, [x1]
	add	w1, w1, 1
	sxtw	x3, w1
	ldrsw	x1, [sp, 440]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x5, x4, x0
	sub	x2, x3, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 1
.L1702:
	cmp	x0, 3
	bgt	.L1701
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x5, x1
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	ldr	w3, [x1, x2, lsl 2]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x2, x4, x1
	add	w3, w3, 10
	adrp	x1, __brute_force_MOD_block
	add	x1, x1, :lo12:__brute_force_MOD_block
	str	w3, [x1, x2, lsl 2]
	add	x0, x0, 1
	b	.L1702
.L1701:
.L1733:
	nop
.L1444:
	ldr	w0, [sp, 440]
	add	w0, w0, 1
	str	w0, [sp, 440]
	b	.L1703
.L1704:
	nop
	b	.L1428
.L1724:
	nop
.L1428:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 448
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	__brute_force_MOD_digits_2, .-__brute_force_MOD_digits_2
	.section	.rodata
	.align	3
.LC0:
	.xword	2
	.text
	.align	2
	.type	__brute_force_MOD_rearrange, %function
__brute_force_MOD_rearrange:
.LFB11:
	.cfi_startproc
	sub	sp, sp, #768
	.cfi_def_cfa_offset 768
	stp	x29, x30, [sp]
	.cfi_offset 29, -768
	.cfi_offset 30, -760
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -752
	.cfi_offset 20, -744
	.cfi_offset 21, -736
	.cfi_offset 22, -728
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	ldr	x0, [sp, 48]
	ldr	w0, [x0]
	cmp	w0, 1
	beq	.L1735
	cmp	w0, 2
	beq	.L1736
	b	.L1873
.L1735:
	adrp	x0, passes.8708
	add	x0, x0, :lo12:passes.8708
	mov	w1, 2
	str	w1, [x0]
	mov	w3, 0
	mov	x0, 1
.L1742:
	cmp	x0, 9
	bgt	.L1738
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x2, x1, #10
	mov	x1, 1
.L1741:
	cmp	x1, 3
	bgt	.L1739
	add	x5, x1, x2
	ldr	x4, [sp, 56]
	ldr	w4, [x4, x5, lsl 2]
	cmp	w4, 0
	beq	.L1740
	add	w3, w3, 1
.L1740:
	add	x1, x1, 1
	b	.L1741
.L1739:
	add	x0, x0, 1
	b	.L1742
.L1738:
	mov	w4, 0
	mov	x0, 1
.L1747:
	cmp	x0, 9
	bgt	.L1743
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x2, x1, #10
	mov	x1, 4
.L1746:
	cmp	x1, 6
	bgt	.L1744
	add	x6, x1, x2
	ldr	x5, [sp, 56]
	ldr	w5, [x5, x6, lsl 2]
	cmp	w5, 0
	beq	.L1745
	add	w4, w4, 1
.L1745:
	add	x1, x1, 1
	b	.L1746
.L1744:
	add	x0, x0, 1
	b	.L1747
.L1743:
	mov	w2, 0
	mov	x0, 1
.L1752:
	cmp	x0, 9
	bgt	.L1748
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x5, x1, #10
	mov	x1, 7
.L1751:
	cmp	x1, 9
	bgt	.L1749
	add	x7, x1, x5
	ldr	x6, [sp, 56]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L1750
	add	w2, w2, 1
.L1750:
	add	x1, x1, 1
	b	.L1751
.L1749:
	add	x0, x0, 1
	b	.L1752
.L1748:
	cmp	w4, w3
	csel	w0, w4, w3, ge
	cmp	w2, w0
	csel	w5, w2, w0, ge
	mov	w3, 0
	mov	x0, 1
.L1757:
	cmp	x0, 3
	bgt	.L1753
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x2, x1, #10
	mov	x1, 1
.L1756:
	cmp	x1, 9
	bgt	.L1754
	add	x6, x1, x2
	ldr	x4, [sp, 56]
	ldr	w4, [x4, x6, lsl 2]
	cmp	w4, 0
	beq	.L1755
	add	w3, w3, 1
.L1755:
	add	x1, x1, 1
	b	.L1756
.L1754:
	add	x0, x0, 1
	b	.L1757
.L1753:
	mov	w4, 0
	mov	x0, 4
.L1762:
	cmp	x0, 6
	bgt	.L1758
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x2, x1, #10
	mov	x1, 1
.L1761:
	cmp	x1, 9
	bgt	.L1759
	add	x7, x1, x2
	ldr	x6, [sp, 56]
	ldr	w6, [x6, x7, lsl 2]
	cmp	w6, 0
	beq	.L1760
	add	w4, w4, 1
.L1760:
	add	x1, x1, 1
	b	.L1761
.L1759:
	add	x0, x0, 1
	b	.L1762
.L1758:
	mov	w2, 0
	mov	x0, 7
.L1767:
	cmp	x0, 9
	bgt	.L1763
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x6, x1, #10
	mov	x1, 1
.L1766:
	cmp	x1, 9
	bgt	.L1764
	add	x8, x1, x6
	ldr	x7, [sp, 56]
	ldr	w7, [x7, x8, lsl 2]
	cmp	w7, 0
	beq	.L1765
	add	w2, w2, 1
.L1765:
	add	x1, x1, 1
	b	.L1766
.L1764:
	add	x0, x0, 1
	b	.L1767
.L1763:
	cmp	w4, w3
	csel	w0, w4, w3, ge
	cmp	w2, w0
	csel	w0, w2, w0, ge
	cmp	w5, w0
	ble	.L1768
	adrp	x0, passes.8708
	add	x0, x0, :lo12:passes.8708
	mov	w1, 1
	str	w1, [x0]
.L1768:
	adrp	x0, passes.8708
	add	x0, x0, :lo12:passes.8708
	ldr	w21, [x0]
	mov	w0, 1
	str	w0, [sp, 760]
.L1829:
	ldr	w0, [sp, 760]
	cmp	w0, w21
	cset	w0, gt
	cmp	w0, 0
	bne	.L1869
	ldr	w0, [sp, 760]
	cmp	w0, 2
	bne	.L1770
	stp	xzr, xzr, [sp, 152]
	mov	x0, 4
	str	x0, [sp, 152]
	mov	w0, 2
	strb	w0, [sp, 164]
	mov	w0, 1
	strb	w0, [sp, 165]
	mov	x0, 1
	str	x0, [sp, 176]
	str	xzr, [sp, 184]
	mov	x0, 8
	str	x0, [sp, 192]
	mov	x0, 9
	str	x0, [sp, 200]
	str	xzr, [sp, 208]
	mov	x0, 8
	str	x0, [sp, 216]
	mov	x0, 4
	str	x0, [sp, 168]
	add	x0, sp, 224
	str	x0, [sp, 136]
	str	xzr, [sp, 144]
	mov	x0, 0
.L1774:
	cmp	x0, 8
	bgt	.L1771
	mov	x1, x0
	lsl	x1, x1, 3
	add	x6, x1, x0
	sub	x7, x0, #9
	add	x1, x0, 1
	lsl	x1, x1, 3
	mov	x1, 0
.L1773:
	cmp	x1, 8
	bgt	.L1772
	add	x3, x1, 1
	mov	x2, x3
	lsl	x2, x2, 3
	add	x2, x2, x3
	add	x5, x7, x2
	ldr	x2, [sp, 136]
	add	x3, x1, x6
	ldr	x4, [sp, 56]
	ldr	w4, [x4, x5, lsl 2]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L1773
.L1772:
	add	x0, x0, 1
	b	.L1774
.L1771:
	mov	x0, 0
.L1778:
	cmp	x0, 8
	bgt	.L1770
	mov	x1, x0
	lsl	x1, x1, 3
	add	x6, x1, x0
	add	x2, x0, 1
	mov	x1, x2
	lsl	x1, x1, 3
	add	x1, x1, x2
	sub	x5, x1, #10
	mov	x1, 0
.L1777:
	cmp	x1, 8
	bgt	.L1776
	ldr	x2, [sp, 136]
	add	x4, x1, x6
	add	x3, x1, 1
	add	x3, x5, x3
	ldr	w4, [x2, x4, lsl 2]
	ldr	x2, [sp, 56]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L1777
.L1776:
	add	x0, x0, 1
	b	.L1778
.L1770:
	mov	x0, 4
	str	x0, [sp, 104]
	stp	xzr, xzr, [sp, 88]
	mov	x0, 4
	str	x0, [sp, 88]
	mov	w0, 1
	strb	w0, [sp, 100]
	mov	w0, 1
	strb	w0, [sp, 101]
	mov	x0, 1
	str	x0, [sp, 120]
	mov	x0, 9
	str	x0, [sp, 128]
	mov	x0, 1
	str	x0, [sp, 112]
	add	x0, sp, 592
	str	x0, [sp, 72]
	mov	x0, -1
	str	x0, [sp, 80]
	stp	xzr, xzr, [sp, 240]
	mov	x0, 1
	str	x0, [sp, 240]
	mov	w0, 2
	strb	w0, [sp, 252]
	mov	w0, 2
	strb	w0, [sp, 253]
	mov	x0, 1
	str	x0, [sp, 264]
	str	xzr, [sp, 272]
	mov	x0, 8
	str	x0, [sp, 280]
	mov	x0, 9
	str	x0, [sp, 288]
	str	xzr, [sp, 296]
	mov	x0, 8
	str	x0, [sp, 304]
	mov	x0, 1
	str	x0, [sp, 256]
	add	x0, sp, 136
	str	x0, [sp, 224]
	str	xzr, [sp, 232]
	mov	x0, 0
.L1782:
	cmp	x0, 8
	bgt	.L1779
	mov	x1, x0
	lsl	x1, x1, 3
	add	x5, x1, x0
	add	x2, x0, 1
	mov	x1, x2
	lsl	x1, x1, 3
	add	x1, x1, x2
	sub	x6, x1, #10
	mov	x1, 0
.L1781:
	cmp	x1, 8
	bgt	.L1780
	add	x2, x1, 1
	add	x3, x6, x2
	ldr	x2, [sp, 56]
	ldr	w4, [x2, x3, lsl 2]
	ldr	x3, [sp, 224]
	add	x2, x1, x5
	cmp	w4, 0
	cset	w4, ne
	and	w4, w4, 255
	strb	w4, [x3, x2]
	add	x1, x1, 1
	b	.L1781
.L1780:
	add	x0, x0, 1
	b	.L1782
.L1779:
	add	x1, sp, 224
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	add	x0, sp, 72
	bl	_gfortran_count_4_l
	mov	w0, 1
	str	w0, [sp, 764]
	mov	w2, 2
.L1797:
	ldr	w0, [sp, 764]
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 756]
	mov	w1, 2147483647
	ldrsw	x0, [sp, 764]
	ldr	w3, [sp, 764]
	add	w3, w3, 2
	sxtw	x4, w3
	mov	x3, 1
	mov	x5, 1
	sub	x5, x5, x0
.L1785:
	cmp	x0, x4
	bgt	.L1783
	sub	x6, x0, #1
	lsl	x6, x6, 2
	add	x7, sp, 592
	ldr	w6, [x7, x6]
	cmp	w1, w6
	cset	w6, gt
	cmp	w6, 0
	beq	.L1784
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x3, sp, 592
	ldr	w1, [x3, x1]
	add	x3, x0, x5
.L1784:
	add	x0, x0, 1
	b	.L1785
.L1783:
	mov	w1, w3
	ldr	w0, [sp, 764]
	add	w3, w1, w0
	ldrsw	x1, [sp, 760]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x1, x0, x1
	ldrsw	x0, [sp, 756]
	add	x0, x1, x0
	sub	x1, x0, #4
	sub	w3, w3, #1
	adrp	x0, smin.8717
	add	x0, x0, :lo12:smin.8717
	str	w3, [x0, x1, lsl 2]
	mov	w3, -2147483648
	ldr	w0, [sp, 764]
	add	w0, w0, 2
	sxtw	x1, w0
	ldrsw	x0, [sp, 764]
	sub	x0, x1, x0
	mov	x4, -1
	cmp	x0, 0
	csel	x5, x0, x4, ge
	mov	x4, 1
	mov	x6, 1
	mov	x0, 0
.L1788:
	cmp	x0, x5
	bgt	.L1786
	sub	x7, x1, x0
	sub	x7, x7, #1
	lsl	x7, x7, 2
	add	x8, sp, 592
	ldr	w7, [x8, x7]
	cmp	w3, w7
	cset	w7, lt
	cmp	w7, 0
	beq	.L1787
	sub	x3, x1, x0
	sub	x3, x3, #1
	lsl	x3, x3, 2
	add	x4, sp, 592
	ldr	w3, [x4, x3]
	add	x4, x0, x6
.L1787:
	add	x0, x0, 1
	b	.L1788
.L1786:
	mov	w1, w4
	mov	w0, 4
	sub	w1, w0, w1
	ldr	w0, [sp, 764]
	add	w3, w1, w0
	ldrsw	x1, [sp, 760]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x1, x0, x1
	ldrsw	x0, [sp, 756]
	add	x0, x1, x0
	sub	x1, x0, #4
	sub	w3, w3, #1
	adrp	x0, smax.8715
	add	x0, x0, :lo12:smax.8715
	str	w3, [x0, x1, lsl 2]
	ldrsw	x1, [sp, 760]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x1, x0, x1
	ldrsw	x0, [sp, 756]
	add	x0, x1, x0
	sub	x1, x0, #4
	adrp	x0, smin.8717
	add	x0, x0, :lo12:smin.8717
	ldr	w3, [x0, x1, lsl 2]
	ldrsw	x1, [sp, 760]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x1, x0, x1
	ldrsw	x0, [sp, 756]
	add	x0, x1, x0
	sub	x1, x0, #4
	adrp	x0, smax.8715
	add	x0, x0, :lo12:smax.8715
	ldr	w0, [x0, x1, lsl 2]
	cmp	w3, w0
	bge	.L1789
	ldrsw	x1, [sp, 760]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x1, x0, x1
	ldrsw	x0, [sp, 756]
	add	x0, x1, x0
	sub	x1, x0, #4
	adrp	x0, smin.8717
	add	x0, x0, :lo12:smin.8717
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x0, w0
	sub	x5, x0, #10
	mov	x0, 1
.L1791:
	cmp	x0, 9
	bgt	.L1790
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x4, x5, x1
	sub	x1, x0, #1
	ldr	x3, [sp, 56]
	ldr	w4, [x3, x4, lsl 2]
	lsl	x1, x1, 2
	add	x3, sp, 552
	str	w4, [x3, x1]
	add	x0, x0, 1
	b	.L1791
.L1790:
	ldrsw	x1, [sp, 760]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x1, x0, x1
	ldrsw	x0, [sp, 756]
	add	x0, x1, x0
	sub	x1, x0, #4
	adrp	x0, smax.8715
	add	x0, x0, :lo12:smax.8715
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x3, w0
	ldrsw	x1, [sp, 760]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x1, x0, x1
	ldrsw	x0, [sp, 756]
	add	x0, x1, x0
	sub	x1, x0, #4
	adrp	x0, smin.8717
	add	x0, x0, :lo12:smin.8717
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x0, w0
	sub	x6, x3, #10
	sub	x5, x0, #10
	mov	x0, 1
.L1793:
	cmp	x0, 9
	bgt	.L1792
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x4, x6, x1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x3, x5, x1
	ldr	x1, [sp, 56]
	ldr	w4, [x1, x4, lsl 2]
	ldr	x1, [sp, 56]
	str	w4, [x1, x3, lsl 2]
	add	x0, x0, 1
	b	.L1793
.L1792:
	ldrsw	x1, [sp, 760]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x1, x0, x1
	ldrsw	x0, [sp, 756]
	add	x0, x1, x0
	sub	x1, x0, #4
	adrp	x0, smax.8715
	add	x0, x0, :lo12:smax.8715
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x0, w0
	sub	x5, x0, #10
	mov	x0, 1
.L1795:
	cmp	x0, 9
	bgt	.L1789
	sub	x4, x0, #1
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x3, x5, x1
	lsl	x1, x4, 2
	add	x4, sp, 552
	ldr	w4, [x4, x1]
	ldr	x1, [sp, 56]
	str	w4, [x1, x3, lsl 2]
	add	x0, x0, 1
	b	.L1795
.L1789:
	ldr	w0, [sp, 764]
	add	w0, w0, 3
	str	w0, [sp, 764]
	mov	w0, w2
	sub	w2, w2, #1
	cmp	w0, 0
	beq	.L1870
	b	.L1797
.L1870:
	nop
	mov	w1, 0
	mov	x0, 1
.L1799:
	cmp	x0, 3
	bgt	.L1798
	sub	x2, x0, #1
	lsl	x2, x2, 2
	add	x3, sp, 592
	ldr	w2, [x3, x2]
	add	w1, w1, w2
	add	x0, x0, 1
	b	.L1799
.L1798:
	str	w1, [sp, 744]
	mov	w1, 0
	mov	x0, 4
.L1801:
	cmp	x0, 6
	bgt	.L1800
	sub	x2, x0, #1
	lsl	x2, x2, 2
	add	x3, sp, 592
	ldr	w2, [x3, x2]
	add	w1, w1, w2
	add	x0, x0, 1
	b	.L1801
.L1800:
	str	w1, [sp, 748]
	mov	w1, 0
	mov	x0, 7
.L1803:
	cmp	x0, 9
	bgt	.L1802
	sub	x2, x0, #1
	lsl	x2, x2, 2
	add	x3, sp, 592
	ldr	w2, [x3, x2]
	add	w1, w1, w2
	add	x0, x0, 1
	b	.L1803
.L1802:
	str	w1, [sp, 752]
	mov	w1, 2147483647
	mov	x2, 1
	mov	x5, 0
	mov	x0, 1
.L1806:
	cmp	x0, 3
	bgt	.L1804
	sub	x3, x0, #1
	lsl	x3, x3, 2
	add	x4, sp, 744
	ldr	w3, [x4, x3]
	cmp	w1, w3
	cset	w3, gt
	cmp	w3, 0
	beq	.L1805
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x2, sp, 744
	ldr	w1, [x2, x1]
	add	x2, x0, x5
.L1805:
	add	x0, x0, 1
	b	.L1806
.L1804:
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmin.8706
	add	x0, x0, :lo12:cmin.8706
	str	w2, [x0, x1, lsl 2]
	mov	w1, -2147483648
	mov	x2, 1
	mov	x3, 1
	mov	x0, 0
.L1809:
	cmp	x0, 2
	bgt	.L1807
	mov	x4, 2
	sub	x4, x4, x0
	lsl	x4, x4, 2
	add	x5, sp, 744
	ldr	w4, [x5, x4]
	cmp	w1, w4
	cset	w4, lt
	cmp	w4, 0
	beq	.L1808
	mov	x1, 2
	sub	x1, x1, x0
	lsl	x1, x1, 2
	add	x2, sp, 744
	ldr	w1, [x2, x1]
	add	x2, x0, x3
.L1808:
	add	x0, x0, 1
	b	.L1809
.L1807:
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	mov	w0, 4
	sub	w2, w0, w2
	adrp	x0, cmax.8704
	add	x0, x0, :lo12:cmax.8704
	str	w2, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmin.8706
	add	x0, x0, :lo12:cmin.8706
	ldr	w1, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 760]
	sub	x2, x0, #1
	adrp	x0, cmax.8704
	add	x0, x0, :lo12:cmax.8704
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L1810
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmin.8706
	add	x0, x0, :lo12:cmin.8706
	ldr	w0, [x0, x1, lsl 2]
	sub	w1, w0, #1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x1, [sp, 760]
	sub	x2, x1, #1
	adrp	x1, cmin.8706
	add	x1, x1, :lo12:cmin.8706
	ldr	w1, [x1, x2, lsl 2]
	lsl	w1, w1, 1
	sub	x2, x0, #1
	mov	x0, 1
.L1814:
	cmp	x0, 9
	bgt	.L1811
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x7, x1, #10
	mov	x1, x0
	lsl	x1, x1, 1
	add	x1, x1, x0
	sub	x6, x1, #4
	mov	x1, 1
.L1813:
	cmp	x1, 3
	bgt	.L1812
	add	x3, x1, x2
	add	x5, x7, x3
	add	x3, x1, x6
	ldr	x4, [sp, 56]
	ldr	w5, [x4, x5, lsl 2]
	lsl	x3, x3, 2
	add	x4, sp, 632
	str	w5, [x4, x3]
	add	x1, x1, 1
	b	.L1813
.L1812:
	add	x0, x0, 1
	b	.L1814
.L1811:
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmax.8704
	add	x0, x0, :lo12:cmax.8704
	ldr	w0, [x0, x1, lsl 2]
	sub	w1, w0, #1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x22, w0
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmax.8704
	add	x0, x0, :lo12:cmax.8704
	ldr	w0, [x0, x1, lsl 2]
	lsl	w0, w0, 1
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmin.8706
	add	x0, x0, :lo12:cmin.8706
	ldr	w0, [x0, x1, lsl 2]
	sub	w1, w0, #1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x20, w0
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmin.8706
	add	x0, x0, :lo12:cmin.8706
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x0, w0
	sub	x19, x0, x20
	stp	xzr, xzr, [sp, 240]
	mov	x0, 4
	str	x0, [sp, 240]
	mov	w0, 2
	strb	w0, [sp, 252]
	mov	w0, 1
	strb	w0, [sp, 253]
	mov	x0, 1
	str	x0, [sp, 264]
	str	xzr, [sp, 272]
	str	x19, [sp, 280]
	lsr	x0, x19, 63
	mov	w2, w0
	add	x0, x19, 1
	str	x0, [sp, 288]
	str	xzr, [sp, 296]
	mov	x1, 8
	str	x1, [sp, 304]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x0, x1, x0
	mov	x1, 4
	str	x1, [sp, 256]
	cmp	w2, 0
	beq	.L1815
	mov	x0, 1
	b	.L1816
.L1815:
	lsl	x0, x0, 2
	mov	x1, 1
	cmp	x0, 0
	csel	x0, x0, x1, ne
.L1816:
	bl	malloc
	str	x0, [sp, 224]
	str	xzr, [sp, 232]
	mov	x0, 0
.L1820:
	cmp	x0, 8
	bgt	.L1817
	ldr	x1, [sp, 288]
	mul	x6, x0, x1
	add	x2, x0, 1
	mov	x1, x2
	lsl	x1, x1, 3
	add	x1, x1, x2
	sub	x7, x1, #10
	add	x1, x0, 1
	lsl	x1, x1, 3
	mov	x1, 0
.L1819:
	cmp	x1, x19
	bgt	.L1818
	add	x2, x1, x22
	add	x5, x7, x2
	ldr	x2, [sp, 224]
	add	x3, x1, x6
	ldr	x4, [sp, 56]
	ldr	w4, [x4, x5, lsl 2]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L1819
.L1818:
	add	x0, x0, 1
	b	.L1820
.L1817:
	mov	x0, 0
.L1824:
	cmp	x0, 8
	bgt	.L1821
	ldr	x1, [sp, 288]
	mul	x6, x0, x1
	add	x2, x0, 1
	mov	x1, x2
	lsl	x1, x1, 3
	add	x1, x1, x2
	sub	x5, x1, #10
	mov	x1, 0
.L1823:
	cmp	x1, x19
	bgt	.L1822
	ldr	x2, [sp, 224]
	add	x4, x1, x6
	add	x3, x1, x20
	add	x3, x5, x3
	ldr	w4, [x2, x4, lsl 2]
	ldr	x2, [sp, 56]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L1823
.L1822:
	add	x0, x0, 1
	b	.L1824
.L1821:
	ldr	x0, [sp, 224]
	bl	free
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmax.8704
	add	x0, x0, :lo12:cmax.8704
	ldr	w0, [x0, x1, lsl 2]
	sub	w1, w0, #1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x2, w0
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmax.8704
	add	x0, x0, :lo12:cmax.8704
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x3, w0
	mov	x0, 1
	sub	x4, x0, x2
	mov	x0, 1
.L1828:
	cmp	x0, 9
	bgt	.L1810
	mov	x1, x0
	lsl	x1, x1, 1
	add	x1, x1, x0
	sub	x9, x1, #4
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x8, x1, #10
	mov	x1, x2
.L1827:
	cmp	x1, x3
	bgt	.L1826
	add	x5, x1, x4
	add	x5, x9, x5
	add	x6, x1, x8
	lsl	x5, x5, 2
	add	x7, sp, 632
	ldr	w7, [x7, x5]
	ldr	x5, [sp, 56]
	str	w7, [x5, x6, lsl 2]
	add	x1, x1, 1
	b	.L1827
.L1826:
	add	x0, x0, 1
	b	.L1828
.L1810:
	ldr	w0, [sp, 760]
	add	w0, w0, 1
	str	w0, [sp, 760]
	b	.L1829
.L1869:
	nop
	b	.L1737
.L1736:
	adrp	x0, passes.8708
	add	x0, x0, :lo12:passes.8708
	ldr	w0, [x0]
	str	w0, [sp, 760]
.L1868:
	ldr	w0, [sp, 760]
	cmp	w0, 0
	cset	w0, le
	cmp	w0, 0
	bne	.L1871
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmin.8706
	add	x0, x0, :lo12:cmin.8706
	ldr	w1, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 760]
	sub	x2, x0, #1
	adrp	x0, cmax.8704
	add	x0, x0, :lo12:cmax.8704
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L1831
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmin.8706
	add	x0, x0, :lo12:cmin.8706
	ldr	w0, [x0, x1, lsl 2]
	sub	w1, w0, #1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldrsw	x1, [sp, 760]
	sub	x2, x1, #1
	adrp	x1, cmin.8706
	add	x1, x1, :lo12:cmin.8706
	ldr	w1, [x1, x2, lsl 2]
	lsl	w1, w1, 1
	sub	x2, x0, #1
	mov	x0, 1
.L1835:
	cmp	x0, 9
	bgt	.L1832
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x7, x1, #10
	mov	x1, x0
	lsl	x1, x1, 1
	add	x1, x1, x0
	sub	x6, x1, #4
	mov	x1, 1
.L1834:
	cmp	x1, 3
	bgt	.L1833
	add	x3, x1, x2
	add	x5, x7, x3
	add	x3, x1, x6
	ldr	x4, [sp, 56]
	ldr	w5, [x4, x5, lsl 2]
	lsl	x3, x3, 2
	add	x4, sp, 632
	str	w5, [x4, x3]
	add	x1, x1, 1
	b	.L1834
.L1833:
	add	x0, x0, 1
	b	.L1835
.L1832:
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmax.8704
	add	x0, x0, :lo12:cmax.8704
	ldr	w0, [x0, x1, lsl 2]
	sub	w1, w0, #1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x21, w0
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmax.8704
	add	x0, x0, :lo12:cmax.8704
	ldr	w0, [x0, x1, lsl 2]
	lsl	w0, w0, 1
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmin.8706
	add	x0, x0, :lo12:cmin.8706
	ldr	w0, [x0, x1, lsl 2]
	sub	w1, w0, #1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x20, w0
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmin.8706
	add	x0, x0, :lo12:cmin.8706
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x0, w0
	sub	x19, x0, x20
	stp	xzr, xzr, [sp, 240]
	mov	x0, 4
	str	x0, [sp, 240]
	mov	w0, 2
	strb	w0, [sp, 252]
	mov	w0, 1
	strb	w0, [sp, 253]
	mov	x0, 1
	str	x0, [sp, 264]
	str	xzr, [sp, 272]
	str	x19, [sp, 280]
	lsr	x0, x19, 63
	mov	w2, w0
	add	x0, x19, 1
	str	x0, [sp, 288]
	str	xzr, [sp, 296]
	mov	x1, 8
	str	x1, [sp, 304]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x0, x1, x0
	mov	x1, 4
	str	x1, [sp, 256]
	cmp	w2, 0
	beq	.L1836
	mov	x0, 1
	b	.L1837
.L1836:
	lsl	x0, x0, 2
	mov	x1, 1
	cmp	x0, 0
	csel	x0, x0, x1, ne
.L1837:
	bl	malloc
	str	x0, [sp, 224]
	str	xzr, [sp, 232]
	mov	x0, 0
.L1841:
	cmp	x0, 8
	bgt	.L1838
	ldr	x1, [sp, 288]
	mul	x6, x0, x1
	add	x2, x0, 1
	mov	x1, x2
	lsl	x1, x1, 3
	add	x1, x1, x2
	sub	x7, x1, #10
	add	x1, x0, 1
	lsl	x1, x1, 3
	mov	x1, 0
.L1840:
	cmp	x1, x19
	bgt	.L1839
	add	x2, x1, x21
	add	x5, x7, x2
	ldr	x2, [sp, 224]
	add	x3, x1, x6
	ldr	x4, [sp, 56]
	ldr	w4, [x4, x5, lsl 2]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L1840
.L1839:
	add	x0, x0, 1
	b	.L1841
.L1838:
	mov	x0, 0
.L1845:
	cmp	x0, 8
	bgt	.L1842
	ldr	x1, [sp, 288]
	mul	x6, x0, x1
	add	x2, x0, 1
	mov	x1, x2
	lsl	x1, x1, 3
	add	x1, x1, x2
	sub	x5, x1, #10
	mov	x1, 0
.L1844:
	cmp	x1, x19
	bgt	.L1843
	ldr	x2, [sp, 224]
	add	x4, x1, x6
	add	x3, x1, x20
	add	x3, x5, x3
	ldr	w4, [x2, x4, lsl 2]
	ldr	x2, [sp, 56]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L1844
.L1843:
	add	x0, x0, 1
	b	.L1845
.L1842:
	ldr	x0, [sp, 224]
	bl	free
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmax.8704
	add	x0, x0, :lo12:cmax.8704
	ldr	w0, [x0, x1, lsl 2]
	sub	w1, w0, #1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x2, w0
	ldrsw	x0, [sp, 760]
	sub	x1, x0, #1
	adrp	x0, cmax.8704
	add	x0, x0, :lo12:cmax.8704
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x3, w0
	mov	x0, 1
	sub	x4, x0, x2
	mov	x0, 1
.L1849:
	cmp	x0, 9
	bgt	.L1831
	mov	x1, x0
	lsl	x1, x1, 1
	add	x1, x1, x0
	sub	x9, x1, #4
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x8, x1, #10
	mov	x1, x2
.L1848:
	cmp	x1, x3
	bgt	.L1847
	add	x5, x1, x4
	add	x5, x9, x5
	add	x6, x1, x8
	lsl	x5, x5, 2
	add	x7, sp, 632
	ldr	w7, [x7, x5]
	ldr	x5, [sp, 56]
	str	w7, [x5, x6, lsl 2]
	add	x1, x1, 1
	b	.L1848
.L1847:
	add	x0, x0, 1
	b	.L1849
.L1831:
	mov	w0, 1
	str	w0, [sp, 764]
	mov	w1, 2
.L1858:
	ldr	w0, [sp, 764]
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w0, w2
	lsr	x2, x2, 32
	asr	w0, w0, 31
	sub	w0, w2, w0
	add	w0, w0, 1
	str	w0, [sp, 756]
	ldrsw	x2, [sp, 760]
	mov	x0, x2
	lsl	x0, x0, 1
	add	x2, x0, x2
	ldrsw	x0, [sp, 756]
	add	x0, x2, x0
	sub	x2, x0, #4
	adrp	x0, smin.8717
	add	x0, x0, :lo12:smin.8717
	ldr	w3, [x0, x2, lsl 2]
	ldrsw	x2, [sp, 760]
	mov	x0, x2
	lsl	x0, x0, 1
	add	x2, x0, x2
	ldrsw	x0, [sp, 756]
	add	x0, x2, x0
	sub	x2, x0, #4
	adrp	x0, smax.8715
	add	x0, x0, :lo12:smax.8715
	ldr	w0, [x0, x2, lsl 2]
	cmp	w3, w0
	bge	.L1850
	ldrsw	x2, [sp, 760]
	mov	x0, x2
	lsl	x0, x0, 1
	add	x2, x0, x2
	ldrsw	x0, [sp, 756]
	add	x0, x2, x0
	sub	x2, x0, #4
	adrp	x0, smin.8717
	add	x0, x0, :lo12:smin.8717
	ldr	w0, [x0, x2, lsl 2]
	sxtw	x0, w0
	sub	x5, x0, #10
	mov	x0, 1
.L1852:
	cmp	x0, 9
	bgt	.L1851
	mov	x2, x0
	lsl	x2, x2, 3
	add	x2, x2, x0
	add	x4, x5, x2
	sub	x2, x0, #1
	ldr	x3, [sp, 56]
	ldr	w4, [x3, x4, lsl 2]
	lsl	x2, x2, 2
	add	x3, sp, 552
	str	w4, [x3, x2]
	add	x0, x0, 1
	b	.L1852
.L1851:
	ldrsw	x2, [sp, 760]
	mov	x0, x2
	lsl	x0, x0, 1
	add	x2, x0, x2
	ldrsw	x0, [sp, 756]
	add	x0, x2, x0
	sub	x2, x0, #4
	adrp	x0, smax.8715
	add	x0, x0, :lo12:smax.8715
	ldr	w0, [x0, x2, lsl 2]
	sxtw	x3, w0
	ldrsw	x2, [sp, 760]
	mov	x0, x2
	lsl	x0, x0, 1
	add	x2, x0, x2
	ldrsw	x0, [sp, 756]
	add	x0, x2, x0
	sub	x2, x0, #4
	adrp	x0, smin.8717
	add	x0, x0, :lo12:smin.8717
	ldr	w0, [x0, x2, lsl 2]
	sxtw	x0, w0
	sub	x6, x3, #10
	sub	x5, x0, #10
	mov	x0, 1
.L1854:
	cmp	x0, 9
	bgt	.L1853
	mov	x2, x0
	lsl	x2, x2, 3
	add	x2, x2, x0
	add	x4, x6, x2
	mov	x2, x0
	lsl	x2, x2, 3
	add	x2, x2, x0
	add	x3, x5, x2
	ldr	x2, [sp, 56]
	ldr	w4, [x2, x4, lsl 2]
	ldr	x2, [sp, 56]
	str	w4, [x2, x3, lsl 2]
	add	x0, x0, 1
	b	.L1854
.L1853:
	ldrsw	x2, [sp, 760]
	mov	x0, x2
	lsl	x0, x0, 1
	add	x2, x0, x2
	ldrsw	x0, [sp, 756]
	add	x0, x2, x0
	sub	x2, x0, #4
	adrp	x0, smax.8715
	add	x0, x0, :lo12:smax.8715
	ldr	w0, [x0, x2, lsl 2]
	sxtw	x0, w0
	sub	x5, x0, #10
	mov	x0, 1
.L1856:
	cmp	x0, 9
	bgt	.L1850
	sub	x4, x0, #1
	mov	x2, x0
	lsl	x2, x2, 3
	add	x2, x2, x0
	add	x3, x5, x2
	lsl	x2, x4, 2
	add	x4, sp, 552
	ldr	w4, [x4, x2]
	ldr	x2, [sp, 56]
	str	w4, [x2, x3, lsl 2]
	add	x0, x0, 1
	b	.L1856
.L1850:
	ldr	w0, [sp, 764]
	add	w0, w0, 3
	str	w0, [sp, 764]
	mov	w0, w1
	sub	w1, w1, #1
	cmp	w0, 0
	beq	.L1872
	b	.L1858
.L1872:
	nop
	ldr	w0, [sp, 760]
	cmp	w0, 2
	bne	.L1859
	stp	xzr, xzr, [sp, 152]
	mov	x0, 4
	str	x0, [sp, 152]
	mov	w0, 2
	strb	w0, [sp, 164]
	mov	w0, 1
	strb	w0, [sp, 165]
	mov	x0, 1
	str	x0, [sp, 176]
	str	xzr, [sp, 184]
	mov	x0, 8
	str	x0, [sp, 192]
	mov	x0, 9
	str	x0, [sp, 200]
	str	xzr, [sp, 208]
	mov	x0, 8
	str	x0, [sp, 216]
	mov	x0, 4
	str	x0, [sp, 168]
	add	x0, sp, 224
	str	x0, [sp, 136]
	str	xzr, [sp, 144]
	mov	x0, 0
.L1863:
	cmp	x0, 8
	bgt	.L1860
	mov	x1, x0
	lsl	x1, x1, 3
	add	x6, x1, x0
	sub	x7, x0, #9
	add	x1, x0, 1
	lsl	x1, x1, 3
	mov	x1, 0
.L1862:
	cmp	x1, 8
	bgt	.L1861
	add	x3, x1, 1
	mov	x2, x3
	lsl	x2, x2, 3
	add	x2, x2, x3
	add	x5, x7, x2
	ldr	x2, [sp, 136]
	add	x3, x1, x6
	ldr	x4, [sp, 56]
	ldr	w4, [x4, x5, lsl 2]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L1862
.L1861:
	add	x0, x0, 1
	b	.L1863
.L1860:
	mov	x0, 0
.L1867:
	cmp	x0, 8
	bgt	.L1859
	mov	x1, x0
	lsl	x1, x1, 3
	add	x6, x1, x0
	add	x2, x0, 1
	mov	x1, x2
	lsl	x1, x1, 3
	add	x1, x1, x2
	sub	x5, x1, #10
	mov	x1, 0
.L1866:
	cmp	x1, 8
	bgt	.L1865
	ldr	x2, [sp, 136]
	add	x4, x1, x6
	add	x3, x1, 1
	add	x3, x5, x3
	ldr	w4, [x2, x4, lsl 2]
	ldr	x2, [sp, 56]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L1866
.L1865:
	add	x0, x0, 1
	b	.L1867
.L1859:
	ldr	w0, [sp, 760]
	sub	w0, w0, #1
	str	w0, [sp, 760]
	b	.L1868
.L1871:
	nop
	nop
.L1737:
.L1873:
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp]
	add	sp, sp, 768
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	__brute_force_MOD_rearrange, .-__brute_force_MOD_rearrange
	.section	.rodata
	.align	2
.LC1:
	.word	1
	.align	2
.LC2:
	.word	2
	.text
	.align	2
	.global	__brute_force_MOD_brute
	.type	__brute_force_MOD_brute, %function
__brute_force_MOD_brute:
.LFB12:
	.cfi_startproc
	stp	x29, x30, [sp, -320]!
	.cfi_def_cfa_offset 320
	.cfi_offset 29, -320
	.cfi_offset 30, -312
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	adrp	x0, __brute_force_MOD_sudoku1
	add	x1, x0, :lo12:__brute_force_MOD_sudoku1
	ldr	x0, [sp, 24]
	mov	x3, x1
	mov	x1, x0
	mov	x0, 324
	mov	x2, x0
	mov	x0, x3
	bl	memcpy
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, __brute_force_MOD_sudoku1
	add	x0, x0, :lo12:__brute_force_MOD_sudoku1
	bl	__brute_force_MOD_rearrange
	mov	w2, 0
	mov	x0, 1
.L1879:
	cmp	x0, 9
	bgt	.L1875
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x3, x1, #10
	mov	x1, 1
.L1878:
	cmp	x1, 9
	bgt	.L1876
	add	x5, x1, x3
	adrp	x4, __brute_force_MOD_sudoku1
	add	x4, x4, :lo12:__brute_force_MOD_sudoku1
	ldr	w4, [x4, x5, lsl 2]
	cmp	w4, 0
	beq	.L1877
	add	w2, w2, 1
.L1877:
	add	x1, x1, 1
	b	.L1878
.L1876:
	add	x0, x0, 1
	b	.L1879
.L1875:
	str	w2, [sp, 312]
	mov	x0, 4
	str	x0, [sp, 72]
	stp	xzr, xzr, [sp, 56]
	mov	x0, 4
	str	x0, [sp, 56]
	mov	w0, 2
	strb	w0, [sp, 68]
	mov	w0, 1
	strb	w0, [sp, 69]
	mov	x0, 1
	str	x0, [sp, 88]
	mov	x0, 9
	str	x0, [sp, 96]
	mov	x0, 1
	str	x0, [sp, 80]
	mov	x0, 1
	str	x0, [sp, 112]
	mov	x0, 9
	str	x0, [sp, 120]
	mov	x0, 9
	str	x0, [sp, 104]
	adrp	x0, __brute_force_MOD_sudoku1
	add	x0, x0, :lo12:__brute_force_MOD_sudoku1
	str	x0, [sp, 40]
	mov	x0, -10
	str	x0, [sp, 48]
	mov	x0, 4
	str	x0, [sp, 160]
	stp	xzr, xzr, [sp, 144]
	mov	x0, 4
	str	x0, [sp, 144]
	mov	w0, 3
	strb	w0, [sp, 156]
	mov	w0, 1
	strb	w0, [sp, 157]
	mov	x0, 1
	str	x0, [sp, 176]
	mov	x0, 9
	str	x0, [sp, 184]
	mov	x0, 1
	str	x0, [sp, 168]
	mov	x0, 1
	str	x0, [sp, 200]
	mov	x0, 9
	str	x0, [sp, 208]
	mov	x0, 9
	str	x0, [sp, 192]
	mov	x0, 1
	str	x0, [sp, 224]
	mov	x0, 9
	str	x0, [sp, 232]
	mov	x0, 81
	str	x0, [sp, 216]
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	x0, [sp, 128]
	mov	x0, -91
	str	x0, [sp, 136]
	add	x2, sp, 284
	add	x1, sp, 128
	add	x5, sp, 40
	adrp	x0, __brute_force_MOD_changed
	add	x4, x0, :lo12:__brute_force_MOD_changed
	ldr	x3, [sp, 16]
	mov	x0, x5
	bl	__logic_MOD_new_solver
	mov	w2, 0
	mov	x0, 1
.L1884:
	cmp	x0, 9
	bgt	.L1880
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x3, x1, #10
	mov	x1, 1
.L1883:
	cmp	x1, 9
	bgt	.L1881
	add	x5, x1, x3
	adrp	x4, __brute_force_MOD_sudoku1
	add	x4, x4, :lo12:__brute_force_MOD_sudoku1
	ldr	w4, [x4, x5, lsl 2]
	cmp	w4, 0
	beq	.L1882
	add	w2, w2, 1
.L1882:
	add	x1, x1, 1
	b	.L1883
.L1881:
	add	x0, x0, 1
	b	.L1884
.L1880:
	str	w2, [sp, 308]
	ldr	w1, [sp, 308]
	ldr	w0, [sp, 312]
	cmp	w1, w0
	cset	w1, eq
	adrp	x0, __brute_force_MOD_pearl
	add	x0, x0, :lo12:__brute_force_MOD_pearl
	str	w1, [x0]
	ldr	w0, [sp, 284]
	cmp	w0, 0
	beq	.L1885
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, __brute_force_MOD_sudoku1
	add	x0, x0, :lo12:__brute_force_MOD_sudoku1
	bl	__brute_force_MOD_rearrange
	ldr	x1, [sp, 24]
	adrp	x0, __brute_force_MOD_sudoku1
	add	x0, x0, :lo12:__brute_force_MOD_sudoku1
	mov	x3, x1
	mov	x1, x0
	mov	x0, 324
	mov	x2, x0
	mov	x0, x3
	bl	memcpy
	adrp	x0, __brute_force_MOD_soln
	add	x0, x0, :lo12:__brute_force_MOD_soln
	mov	w1, 1
	str	w1, [x0]
	b	.L1874
.L1885:
	mov	w0, 1
	str	w0, [sp, 244]
	adrp	x0, __brute_force_MOD_soln
	add	x0, x0, :lo12:__brute_force_MOD_soln
	mov	w1, -1
	str	w1, [x0]
	mov	x3, 0
	mov	w2, 1
	mov	w0, 9
.L1890:
	cmp	w0, 0
	ble	.L1887
	mov	w4, 1
	mov	w1, 9
.L1889:
	cmp	w1, 0
	ble	.L1888
	sxtw	x6, w2
	mov	x5, x6
	lsl	x5, x5, 3
	add	x6, x5, x6
	sxtw	x5, w4
	add	x5, x6, x5
	sub	x6, x5, #10
	adrp	x5, __brute_force_MOD_sudoku1
	add	x5, x5, :lo12:__brute_force_MOD_sudoku1
	ldr	w5, [x5, x6, lsl 2]
	cmp	w5, 0
	cset	w5, ne
	and	w6, w5, 255
	add	x5, sp, 128
	strb	w6, [x5, x3]
	add	x3, x3, 1
	add	w4, w4, 1
	sub	w1, w1, #1
	b	.L1889
.L1888:
	add	w2, w2, 1
	sub	w0, w0, #1
	b	.L1890
.L1887:
	mov	x5, 0
	mov	w3, 1
	mov	w1, 9
.L1895:
	cmp	w1, 0
	ble	.L1891
	mov	w4, 1
	mov	w2, 9
.L1894:
	cmp	w2, 0
	ble	.L1892
	add	x0, sp, 128
	ldrb	w0, [x0, x5]
	cmp	w0, 0
	beq	.L1893
	sxtw	x6, w3
	mov	x0, x6
	lsl	x0, x0, 3
	add	x6, x0, x6
	sxtw	x0, w4
	add	x0, x6, x0
	sub	x7, x0, #10
	sxtw	x6, w3
	mov	x0, x6
	lsl	x0, x0, 3
	add	x6, x0, x6
	sxtw	x0, w4
	add	x0, x6, x0
	sub	x6, x0, #10
	adrp	x0, __brute_force_MOD_sudoku1
	add	x0, x0, :lo12:__brute_force_MOD_sudoku1
	ldr	w0, [x0, x6, lsl 2]
	sxtw	x6, w0
	mov	x0, x6
	lsl	x0, x0, 2
	add	x0, x0, x6
	lsl	x0, x0, 4
	add	x8, x0, x6
	sxtw	x6, w3
	mov	x0, x6
	lsl	x0, x0, 3
	add	x0, x0, x6
	add	x6, x8, x0
	sxtw	x0, w4
	add	x0, x6, x0
	sub	x6, x0, #91
	adrp	x0, __brute_force_MOD_sudoku1
	add	x0, x0, :lo12:__brute_force_MOD_sudoku1
	ldr	w7, [x0, x7, lsl 2]
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	str	w7, [x0, x6, lsl 2]
.L1893:
	add	w4, w4, 1
	add	x5, x5, 1
	sub	w2, w2, #1
	b	.L1894
.L1892:
	add	w3, w3, 1
	sub	w1, w1, #1
	b	.L1895
.L1891:
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	mov	w1, 1
	str	w1, [x0]
.L1970:
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w0, [x0]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L1974
	adrp	x0, __brute_force_MOD_j
	add	x0, x0, :lo12:__brute_force_MOD_j
	mov	w1, 1
	str	w1, [x0]
.L1969:
	adrp	x0, __brute_force_MOD_j
	add	x0, x0, :lo12:__brute_force_MOD_j
	ldr	w0, [x0]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L1975
	mov	w2, 0
	adrp	x0, __brute_force_MOD_j
	add	x0, x0, :lo12:__brute_force_MOD_j
	ldr	w0, [x0]
	sxtw	x0, w0
	adrp	x1, __brute_force_MOD_val
	add	x1, x1, :lo12:__brute_force_MOD_val
	ldr	w3, [x1]
	sub	x4, x0, #10
	mov	x0, 1
.L1900:
	cmp	x0, 9
	bgt	.L1898
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x5, x4, x1
	adrp	x1, __brute_force_MOD_sudoku1
	add	x1, x1, :lo12:__brute_force_MOD_sudoku1
	ldr	w1, [x1, x5, lsl 2]
	cmp	w3, w1
	bne	.L1899
	add	w2, w2, 1
.L1899:
	add	x0, x0, 1
	b	.L1900
.L1898:
	mov	w1, 0
	adrp	x0, __brute_force_MOD_j
	add	x0, x0, :lo12:__brute_force_MOD_j
	ldr	w0, [x0]
	sxtw	x0, w0
	adrp	x3, __brute_force_MOD_val
	add	x3, x3, :lo12:__brute_force_MOD_val
	ldr	w3, [x3]
	sxtw	x3, w3
	adrp	x4, __brute_force_MOD_val
	add	x4, x4, :lo12:__brute_force_MOD_val
	ldr	w4, [x4]
	sub	x5, x0, #91
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	add	x5, x5, x0
	mov	x0, 1
.L1903:
	cmp	x0, 9
	bgt	.L1901
	mov	x3, x0
	lsl	x3, x3, 3
	add	x3, x3, x0
	add	x6, x5, x3
	adrp	x3, __brute_force_MOD_block
	add	x3, x3, :lo12:__brute_force_MOD_block
	ldr	w3, [x3, x6, lsl 2]
	cmp	w4, w3
	bne	.L1902
	add	w1, w1, 1
.L1902:
	add	x0, x0, 1
	b	.L1903
.L1901:
	cmp	w2, 0
	cset	w2, eq
	cmp	w1, 0
	cset	w0, eq
	and	w0, w2, w0
	cmp	w0, 0
	bne	.L1974
	mov	w2, 0
	adrp	x0, __brute_force_MOD_j
	add	x0, x0, :lo12:__brute_force_MOD_j
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w3, [x0]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	sub	x1, x0, #10
	mov	x0, 1
.L1906:
	cmp	x0, 9
	bgt	.L1904
	add	x5, x0, x1
	adrp	x4, __brute_force_MOD_sudoku1
	add	x4, x4, :lo12:__brute_force_MOD_sudoku1
	ldr	w4, [x4, x5, lsl 2]
	cmp	w3, w4
	bne	.L1905
	add	w2, w2, 1
.L1905:
	add	x0, x0, 1
	b	.L1906
.L1904:
	mov	w1, 0
	adrp	x0, __brute_force_MOD_j
	add	x0, x0, :lo12:__brute_force_MOD_j
	ldr	w0, [x0]
	sxtw	x4, w0
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w0, [x0]
	sxtw	x3, w0
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w5, [x0]
	mov	x0, x4
	lsl	x0, x0, 3
	add	x0, x0, x4
	sub	x4, x0, #91
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	add	x3, x4, x0
	mov	x0, 1
.L1909:
	cmp	x0, 9
	bgt	.L1907
	add	x6, x0, x3
	adrp	x4, __brute_force_MOD_block
	add	x4, x4, :lo12:__brute_force_MOD_block
	ldr	w4, [x4, x6, lsl 2]
	cmp	w5, w4
	bne	.L1908
	add	w1, w1, 1
.L1908:
	add	x0, x0, 1
	b	.L1909
.L1907:
	cmp	w2, 0
	cset	w2, eq
	cmp	w1, 0
	cset	w0, eq
	and	w0, w2, w0
	cmp	w0, 0
	bne	.L1974
	adrp	x0, __brute_force_MOD_j
	add	x0, x0, :lo12:__brute_force_MOD_j
	ldr	w1, [x0]
	adrp	x0, __brute_force_MOD_br
	add	x0, x0, :lo12:__brute_force_MOD_br
	str	w1, [x0]
	adrp	x0, __brute_force_MOD_j
	add	x0, x0, :lo12:__brute_force_MOD_j
	ldr	w0, [x0]
	sub	w2, w0, #1
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w0, w1, w0
	mov	w1, w0
	lsl	w1, w1, 1
	add	w1, w1, w0
	sub	w0, w2, w1
	mov	w1, w0
	lsl	w1, w1, 1
	add	w0, w1, w0
	add	w1, w0, 1
	adrp	x0, __brute_force_MOD_bc
	add	x0, x0, :lo12:__brute_force_MOD_bc
	str	w1, [x0]
	mov	w3, 0
	adrp	x0, __brute_force_MOD_br
	add	x0, x0, :lo12:__brute_force_MOD_br
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x9, w0
	adrp	x0, __brute_force_MOD_br
	add	x0, x0, :lo12:__brute_force_MOD_br
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x4, w0
	adrp	x0, __brute_force_MOD_bc
	add	x0, x0, :lo12:__brute_force_MOD_bc
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	adrp	x1, __brute_force_MOD_bc
	add	x1, x1, :lo12:__brute_force_MOD_bc
	ldr	w1, [x1]
	sub	w1, w1, #1
	mov	w2, 21846
	movk	w2, 0x5555, lsl 16
	smull	x2, w1, w2
	lsr	x2, x2, 32
	asr	w1, w1, 31
	sub	w1, w2, w1
	add	w2, w1, 1
	mov	w1, w2
	lsl	w1, w1, 1
	add	w1, w1, w2
	sxtw	x2, w1
	adrp	x1, __brute_force_MOD_val
	add	x1, x1, :lo12:__brute_force_MOD_val
	ldr	w5, [x1]
.L1914:
	cmp	x0, x2
	bgt	.L1910
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x6, x1, #10
	mov	x1, x9
.L1913:
	cmp	x1, x4
	bgt	.L1911
	add	x8, x1, x6
	adrp	x7, __brute_force_MOD_sudoku1
	add	x7, x7, :lo12:__brute_force_MOD_sudoku1
	ldr	w7, [x7, x8, lsl 2]
	cmp	w5, w7
	bne	.L1912
	add	w3, w3, 1
.L1912:
	add	x1, x1, 1
	b	.L1913
.L1911:
	add	x0, x0, 1
	b	.L1914
.L1910:
	mov	w2, 0
	adrp	x0, __brute_force_MOD_br
	add	x0, x0, :lo12:__brute_force_MOD_br
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x11, w0
	adrp	x0, __brute_force_MOD_br
	add	x0, x0, :lo12:__brute_force_MOD_br
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x5, w0
	adrp	x0, __brute_force_MOD_bc
	add	x0, x0, :lo12:__brute_force_MOD_bc
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x1, w0
	adrp	x0, __brute_force_MOD_bc
	add	x0, x0, :lo12:__brute_force_MOD_bc
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w4, 21846
	movk	w4, 0x5555, lsl 16
	smull	x4, w0, w4
	lsr	x4, x4, 32
	asr	w0, w0, 31
	sub	w0, w4, w0
	add	w4, w0, 1
	mov	w0, w4
	lsl	w0, w0, 1
	add	w0, w0, w4
	sxtw	x6, w0
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w0, [x0]
	sxtw	x4, w0
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w7, [x0]
	mov	x0, x4
	lsl	x0, x0, 2
	add	x0, x0, x4
	lsl	x0, x0, 4
	add	x0, x0, x4
	sub	x4, x0, #91
.L1919:
	cmp	x1, x6
	bgt	.L1915
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x8, x4, x0
	mov	x0, x11
.L1918:
	cmp	x0, x5
	bgt	.L1916
	add	x10, x0, x8
	adrp	x9, __brute_force_MOD_block
	add	x9, x9, :lo12:__brute_force_MOD_block
	ldr	w9, [x9, x10, lsl 2]
	cmp	w7, w9
	bne	.L1917
	add	w2, w2, 1
.L1917:
	add	x0, x0, 1
	b	.L1918
.L1916:
	add	x1, x1, 1
	b	.L1919
.L1915:
	cmp	w3, 0
	cset	w1, eq
	cmp	w2, 0
	cset	w0, eq
	and	w0, w1, w0
	cmp	w0, 0
	bne	.L1976
	adrp	x0, __brute_force_MOD_j
	add	x0, x0, :lo12:__brute_force_MOD_j
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w0, [x0]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x1, x0, #10
	adrp	x0, __brute_force_MOD_sudoku1
	add	x0, x0, :lo12:__brute_force_MOD_sudoku1
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L1921
	mov	w2, 1
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w0, [x0]
	sxtw	x0, w0
	adrp	x1, __brute_force_MOD_j
	add	x1, x1, :lo12:__brute_force_MOD_j
	ldr	w1, [x1]
	sxtw	x1, w1
	sub	x3, x0, #91
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x3, x3, x0
	mov	x1, 1
.L1924:
	cmp	x1, 9
	bgt	.L1922
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x3, x0
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x4, lsl 2]
	cmp	w0, 0
	beq	.L1923
	mov	w2, 0
	b	.L1922
.L1923:
	add	x1, x1, 1
	b	.L1924
.L1922:
	cmp	w2, 0
	bne	.L1974
.L1921:
	mov	w2, 0
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w0, [x0]
	sxtw	x0, w0
	adrp	x1, __brute_force_MOD_j
	add	x1, x1, :lo12:__brute_force_MOD_j
	ldr	w1, [x1]
	sxtw	x1, w1
	sub	x3, x0, #91
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x3, x3, x0
	mov	x1, 1
.L1927:
	cmp	x1, 9
	bgt	.L1925
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x3, x0
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x4, lsl 2]
	cmp	w0, 0
	beq	.L1926
	add	w2, w2, 1
.L1926:
	add	x1, x1, 1
	b	.L1927
.L1925:
	cmp	w2, 2
	bne	.L1977
	str	xzr, [sp, 288]
	str	wzr, [sp, 296]
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w1, [x0]
	adrp	x0, __brute_force_MOD_br
	add	x0, x0, :lo12:__brute_force_MOD_br
	str	w1, [x0]
	adrp	x0, __brute_force_MOD_j
	add	x0, x0, :lo12:__brute_force_MOD_j
	ldr	w1, [x0]
	adrp	x0, __brute_force_MOD_bc
	add	x0, x0, :lo12:__brute_force_MOD_bc
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 316]
.L1968:
	ldr	w0, [sp, 316]
	cmp	w0, 2
	cset	w0, gt
	cmp	w0, 0
	bne	.L1977
	ldr	w0, [sp, 316]
	cmp	w0, 1
	bne	.L1929
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w0, [x0]
	sxtw	x0, w0
	adrp	x1, __brute_force_MOD_j
	add	x1, x1, :lo12:__brute_force_MOD_j
	ldr	w1, [x1]
	sxtw	x1, w1
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 1
.L1931:
	cmp	x0, 9
	bgt	.L1930
	mov	x1, x0
	lsl	x1, x1, 2
	add	x1, x1, x0
	lsl	x1, x1, 4
	add	x1, x1, x0
	add	x3, x4, x1
	sub	x1, x0, #1
	adrp	x2, __brute_force_MOD_block
	add	x2, x2, :lo12:__brute_force_MOD_block
	ldr	w3, [x2, x3, lsl 2]
	lsl	x1, x1, 2
	add	x2, sp, 248
	str	w3, [x2, x1]
	add	x0, x0, 1
	b	.L1931
.L1930:
	mov	x0, 1
.L1934:
	cmp	x0, 9
	bgt	.L1932
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x2, sp, 248
	ldr	w1, [x2, x1]
	cmp	w1, 0
	bne	.L1933
	sub	x1, x0, #1
	lsl	x1, x1, 2
	add	x2, sp, 248
	mov	w3, 10
	str	w3, [x2, x1]
.L1933:
	add	x0, x0, 1
	b	.L1934
.L1932:
	mov	w0, 2147483647
	mov	x1, 1
.L1936:
	cmp	x1, 9
	bgt	.L1935
	sub	x2, x1, #1
	lsl	x2, x2, 2
	add	x3, sp, 248
	ldr	w2, [x3, x2]
	cmp	w0, w2
	csel	w0, w0, w2, le
	add	x1, x1, 1
	b	.L1936
.L1935:
	str	w0, [sp, 304]
	mov	w1, 0
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 304]
	ldr	w3, [sp, 304]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x4, x4, x0
	mov	x0, 1
.L1939:
	cmp	x0, 9
	bgt	.L1937
	mov	x2, x0
	lsl	x2, x2, 3
	add	x2, x2, x0
	add	x5, x4, x2
	adrp	x2, __brute_force_MOD_block
	add	x2, x2, :lo12:__brute_force_MOD_block
	ldr	w2, [x2, x5, lsl 2]
	cmp	w3, w2
	bne	.L1938
	add	w1, w1, 1
.L1938:
	add	x0, x0, 1
	b	.L1939
.L1937:
	cmp	w1, 1
	bne	.L1940
	mov	w0, 1
	str	w0, [sp, 288]
.L1940:
	mov	w1, 0
	adrp	x0, __brute_force_MOD_j
	add	x0, x0, :lo12:__brute_force_MOD_j
	ldr	w0, [x0]
	sxtw	x3, w0
	ldrsw	x2, [sp, 304]
	ldr	w4, [sp, 304]
	mov	x0, x3
	lsl	x0, x0, 3
	add	x0, x0, x3
	sub	x3, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x2, x3, x0
	mov	x0, 1
.L1943:
	cmp	x0, 9
	bgt	.L1941
	add	x5, x0, x2
	adrp	x3, __brute_force_MOD_block
	add	x3, x3, :lo12:__brute_force_MOD_block
	ldr	w3, [x3, x5, lsl 2]
	cmp	w4, w3
	bne	.L1942
	add	w1, w1, 1
.L1942:
	add	x0, x0, 1
	b	.L1943
.L1941:
	cmp	w1, 1
	bne	.L1944
	mov	w0, 1
	str	w0, [sp, 292]
.L1944:
	mov	w2, 0
	adrp	x0, __brute_force_MOD_br
	add	x0, x0, :lo12:__brute_force_MOD_br
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x10, w0
	adrp	x0, __brute_force_MOD_br
	add	x0, x0, :lo12:__brute_force_MOD_br
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x4, w0
	adrp	x0, __brute_force_MOD_bc
	add	x0, x0, :lo12:__brute_force_MOD_bc
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x1, w0
	adrp	x0, __brute_force_MOD_bc
	add	x0, x0, :lo12:__brute_force_MOD_bc
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w3, 21846
	movk	w3, 0x5555, lsl 16
	smull	x3, w0, w3
	lsr	x3, x3, 32
	asr	w0, w0, 31
	sub	w0, w3, w0
	add	w3, w0, 1
	mov	w0, w3
	lsl	w0, w0, 1
	add	w0, w0, w3
	sxtw	x5, w0
	ldrsw	x3, [sp, 304]
	ldr	w6, [sp, 304]
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x3, x0, #91
.L1949:
	cmp	x1, x5
	bgt	.L1945
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x7, x3, x0
	mov	x0, x10
.L1948:
	cmp	x0, x4
	bgt	.L1946
	add	x9, x0, x7
	adrp	x8, __brute_force_MOD_block
	add	x8, x8, :lo12:__brute_force_MOD_block
	ldr	w8, [x8, x9, lsl 2]
	cmp	w6, w8
	bne	.L1947
	add	w2, w2, 1
.L1947:
	add	x0, x0, 1
	b	.L1948
.L1946:
	add	x1, x1, 1
	b	.L1949
.L1945:
	cmp	w2, 1
	bne	.L1950
	mov	w0, 1
	str	w0, [sp, 296]
.L1950:
	mov	w1, 1
	mov	x0, 1
.L1953:
	cmp	x0, 3
	bgt	.L1951
	sub	x2, x0, #1
	lsl	x2, x2, 2
	add	x3, sp, 288
	ldr	w2, [x3, x2]
	cmp	w2, 0
	beq	.L1952
	mov	w1, 0
	b	.L1951
.L1952:
	add	x0, x0, 1
	b	.L1953
.L1951:
	cmp	w1, 0
	bne	.L1977
	b	.L1954
.L1929:
	mov	w2, -2147483648
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w0, [x0]
	sxtw	x0, w0
	adrp	x1, __brute_force_MOD_j
	add	x1, x1, :lo12:__brute_force_MOD_j
	ldr	w1, [x1]
	sxtw	x1, w1
	sub	x3, x0, #91
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x4, x3, x0
	mov	x1, 1
.L1956:
	cmp	x1, 9
	bgt	.L1955
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x3, x4, x0
	adrp	x0, __brute_force_MOD_block
	add	x0, x0, :lo12:__brute_force_MOD_block
	ldr	w0, [x0, x3, lsl 2]
	cmp	w2, w0
	csel	w2, w2, w0, ge
	add	x1, x1, 1
	b	.L1956
.L1955:
	str	w2, [sp, 304]
	mov	w1, 0
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w0, [x0]
	sxtw	x0, w0
	ldrsw	x2, [sp, 304]
	ldr	w3, [sp, 304]
	sub	x4, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x4, x4, x0
	mov	x0, 1
.L1959:
	cmp	x0, 9
	bgt	.L1957
	mov	x2, x0
	lsl	x2, x2, 3
	add	x2, x2, x0
	add	x5, x4, x2
	adrp	x2, __brute_force_MOD_block
	add	x2, x2, :lo12:__brute_force_MOD_block
	ldr	w2, [x2, x5, lsl 2]
	cmp	w3, w2
	bne	.L1958
	add	w1, w1, 1
.L1958:
	add	x0, x0, 1
	b	.L1959
.L1957:
	ldr	w2, [sp, 288]
	cmp	w1, 1
	cset	w0, eq
	and	w0, w2, w0
	cmp	w0, 0
	bne	.L1974
	mov	w1, 0
	adrp	x0, __brute_force_MOD_j
	add	x0, x0, :lo12:__brute_force_MOD_j
	ldr	w0, [x0]
	sxtw	x3, w0
	ldrsw	x2, [sp, 304]
	ldr	w4, [sp, 304]
	mov	x0, x3
	lsl	x0, x0, 3
	add	x0, x0, x3
	sub	x3, x0, #91
	mov	x0, x2
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 4
	add	x0, x0, x2
	add	x2, x3, x0
	mov	x0, 1
.L1962:
	cmp	x0, 9
	bgt	.L1960
	add	x5, x0, x2
	adrp	x3, __brute_force_MOD_block
	add	x3, x3, :lo12:__brute_force_MOD_block
	ldr	w3, [x3, x5, lsl 2]
	cmp	w4, w3
	bne	.L1961
	add	w1, w1, 1
.L1961:
	add	x0, x0, 1
	b	.L1962
.L1960:
	ldr	w2, [sp, 292]
	cmp	w1, 1
	cset	w0, eq
	and	w0, w2, w0
	cmp	w0, 0
	bne	.L1974
	mov	w2, 0
	adrp	x0, __brute_force_MOD_br
	add	x0, x0, :lo12:__brute_force_MOD_br
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x10, w0
	adrp	x0, __brute_force_MOD_br
	add	x0, x0, :lo12:__brute_force_MOD_br
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x4, w0
	adrp	x0, __brute_force_MOD_bc
	add	x0, x0, :lo12:__brute_force_MOD_bc
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x1, w0
	adrp	x0, __brute_force_MOD_bc
	add	x0, x0, :lo12:__brute_force_MOD_bc
	ldr	w0, [x0]
	sub	w0, w0, #1
	mov	w3, 21846
	movk	w3, 0x5555, lsl 16
	smull	x3, w0, w3
	lsr	x3, x3, 32
	asr	w0, w0, 31
	sub	w0, w3, w0
	add	w3, w0, 1
	mov	w0, w3
	lsl	w0, w0, 1
	add	w0, w0, w3
	sxtw	x5, w0
	ldrsw	x3, [sp, 304]
	ldr	w6, [sp, 304]
	mov	x0, x3
	lsl	x0, x0, 2
	add	x0, x0, x3
	lsl	x0, x0, 4
	add	x0, x0, x3
	sub	x3, x0, #91
.L1967:
	cmp	x1, x5
	bgt	.L1963
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x7, x3, x0
	mov	x0, x10
.L1966:
	cmp	x0, x4
	bgt	.L1964
	add	x9, x0, x7
	adrp	x8, __brute_force_MOD_block
	add	x8, x8, :lo12:__brute_force_MOD_block
	ldr	w8, [x8, x9, lsl 2]
	cmp	w6, w8
	bne	.L1965
	add	w2, w2, 1
.L1965:
	add	x0, x0, 1
	b	.L1966
.L1964:
	add	x1, x1, 1
	b	.L1967
.L1963:
	ldr	w1, [sp, 296]
	cmp	w2, 1
	cset	w0, eq
	and	w0, w1, w0
	cmp	w0, 0
	bne	.L1978
.L1954:
	ldr	w0, [sp, 316]
	add	w0, w0, 1
	str	w0, [sp, 316]
	b	.L1968
.L1977:
	nop
	adrp	x0, __brute_force_MOD_j
	add	x0, x0, :lo12:__brute_force_MOD_j
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, __brute_force_MOD_j
	add	x0, x0, :lo12:__brute_force_MOD_j
	str	w1, [x0]
	b	.L1969
.L1975:
	nop
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	str	w1, [x0]
	b	.L1970
.L1974:
	nop
	b	.L1896
.L1976:
	nop
	b	.L1896
.L1978:
	nop
.L1896:
	adrp	x0, __brute_force_MOD_val
	add	x0, x0, :lo12:__brute_force_MOD_val
	ldr	w0, [x0]
	cmp	w0, 10
	bne	.L1971
	adrp	x0, __brute_force_MOD_soln
	add	x0, x0, :lo12:__brute_force_MOD_soln
	str	wzr, [x0]
.L1971:
	adrp	x0, __brute_force_MOD_soln
	add	x0, x0, :lo12:__brute_force_MOD_soln
	ldr	w0, [x0]
	cmn	w0, #1
	beq	.L1874
	adrp	x0, __brute_force_MOD_soln
	add	x0, x0, :lo12:__brute_force_MOD_soln
	str	wzr, [x0]
	add	x0, sp, 244
	bl	__brute_force_MOD_digits_2
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, __brute_force_MOD_sudoku3
	add	x0, x0, :lo12:__brute_force_MOD_sudoku3
	bl	__brute_force_MOD_rearrange
	ldr	x1, [sp, 24]
	adrp	x0, __brute_force_MOD_sudoku3
	add	x0, x0, :lo12:__brute_force_MOD_sudoku3
	mov	x3, x1
	mov	x1, x0
	mov	x0, 324
	mov	x2, x0
	mov	x0, x3
	bl	memcpy
.L1874:
	ldp	x29, x30, [sp], 320
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12:
	.size	__brute_force_MOD_brute, .-__brute_force_MOD_brute
	.section	.rodata
	.align	3
.LC3:
	.string	"./exchange2.F90"
	.align	3
.LC4:
	.ascii	"puzzles.txt"
	.align	3
.LC5:
	.ascii	"(a81)"
	.align	3
.LC6:
	.ascii	"(81i1)"
	.align	3
.LC7:
	.ascii	" Puzzle number out of range 1 - 54. Stop."
	.text
	.align	2
	.type	read_raw_data.9242, %function
read_raw_data.9242:
.LFB14:
	.cfi_startproc
	sub	sp, sp, #672
	.cfi_def_cfa_offset 672
	stp	x29, x30, [sp]
	.cfi_offset 29, -672
	.cfi_offset 30, -664
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x18, [sp, 24]
	adrp	x0, opened.9263
	add	x0, x0, :lo12:opened.9263
	ldr	w0, [x0]
	eor	w0, w0, 1
	cmp	w0, 0
	beq	.L1980
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 144]
	mov	w0, 1650
	str	w0, [sp, 152]
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	str	x0, [sp, 200]
	mov	x0, 11
	str	x0, [sp, 192]
	str	wzr, [sp, 440]
	mov	w0, 16777472
	str	w0, [sp, 136]
	mov	w0, 7
	str	w0, [sp, 140]
	add	x0, sp, 136
	bl	_gfortran_st_open
	adrp	x0, opened.9263
	add	x0, x0, :lo12:opened.9263
	mov	w1, 1
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 668]
.L1982:
	ldr	w0, [sp, 668]
	cmp	w0, 27
	cset	w0, gt
	cmp	w0, 0
	bne	.L1997
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 144]
	mov	w0, 1653
	str	w0, [sp, 152]
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	str	x0, [sp, 216]
	mov	x0, 5
	str	x0, [sp, 224]
	mov	w0, 4096
	str	w0, [sp, 136]
	mov	w0, 7
	str	w0, [sp, 140]
	add	x0, sp, 136
	bl	_gfortran_st_read
	ldrsw	x0, [sp, 668]
	sub	x1, x0, #1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	adrp	x1, raw_data.9265
	add	x1, x1, :lo12:raw_data.9265
	add	x1, x0, x1
	add	x0, sp, 136
	mov	x2, 81
	bl	_gfortran_transfer_character
	add	x0, sp, 136
	bl	_gfortran_st_read_done
	ldr	w0, [sp, 668]
	add	w0, w0, 1
	str	w0, [sp, 668]
	b	.L1982
.L1997:
	nop
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 144]
	mov	w0, 1655
	str	w0, [sp, 152]
	str	wzr, [sp, 136]
	mov	w0, 7
	str	w0, [sp, 140]
	add	x0, sp, 136
	bl	_gfortran_st_close
.L1980:
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
	cmp	w0, 27
	bgt	.L1983
	cmp	w0, 0
	bgt	.L1984
	b	.L1985
.L1983:
	sub	w0, w0, #28
	cmp	w0, 26
	bhi	.L1985
	b	.L1996
.L1984:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 144]
	mov	w0, 1661
	str	w0, [sp, 152]
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
	sxtw	x0, w0
	sub	x1, x0, #1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	adrp	x1, raw_data.9265
	add	x1, x1, :lo12:raw_data.9265
	add	x0, x0, x1
	str	x0, [sp, 248]
	mov	x0, 81
	str	x0, [sp, 256]
	str	xzr, [sp, 208]
	mov	w0, -1
	str	w0, [sp, 140]
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	str	x0, [sp, 216]
	mov	x0, 6
	str	x0, [sp, 224]
	mov	w0, 20480
	str	w0, [sp, 136]
	add	x0, sp, 136
	bl	_gfortran_st_read
	mov	x0, 4
	str	x0, [sp, 80]
	stp	xzr, xzr, [sp, 64]
	mov	x0, 4
	str	x0, [sp, 64]
	mov	w0, 2
	strb	w0, [sp, 76]
	mov	w0, 1
	strb	w0, [sp, 77]
	mov	x0, 1
	str	x0, [sp, 96]
	mov	x0, 9
	str	x0, [sp, 104]
	mov	x0, 1
	str	x0, [sp, 88]
	mov	x0, 1
	str	x0, [sp, 120]
	mov	x0, 9
	str	x0, [sp, 128]
	mov	x0, 9
	str	x0, [sp, 112]
	ldr	x0, [sp, 40]
	str	x0, [sp, 48]
	mov	x0, -10
	str	x0, [sp, 56]
	add	x1, sp, 48
	add	x0, sp, 136
	mov	x3, 0
	mov	w2, 4
	bl	_gfortran_transfer_array
	add	x0, sp, 136
	bl	_gfortran_st_read_done
	stp	xzr, xzr, [sp, 64]
	mov	x0, 4
	str	x0, [sp, 64]
	mov	w0, 2
	strb	w0, [sp, 76]
	mov	w0, 1
	strb	w0, [sp, 77]
	mov	x0, 1
	str	x0, [sp, 88]
	str	xzr, [sp, 96]
	mov	x0, 8
	str	x0, [sp, 104]
	mov	x0, 9
	str	x0, [sp, 112]
	str	xzr, [sp, 120]
	mov	x0, 8
	str	x0, [sp, 128]
	mov	x0, 4
	str	x0, [sp, 80]
	add	x0, sp, 136
	str	x0, [sp, 48]
	str	xzr, [sp, 56]
	mov	x0, 0
.L1990:
	cmp	x0, 8
	bgt	.L1987
	mov	x1, x0
	lsl	x1, x1, 3
	add	x6, x1, x0
	sub	x7, x0, #9
	add	x1, x0, 1
	lsl	x1, x1, 3
	mov	x1, 0
.L1989:
	cmp	x1, 8
	bgt	.L1988
	add	x3, x1, 1
	mov	x2, x3
	lsl	x2, x2, 3
	add	x2, x2, x3
	add	x5, x7, x2
	ldr	x2, [sp, 48]
	add	x3, x1, x6
	ldr	x4, [sp, 40]
	ldr	w4, [x4, x5, lsl 2]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L1989
.L1988:
	add	x0, x0, 1
	b	.L1990
.L1987:
	mov	x0, 0
.L1994:
	cmp	x0, 8
	bgt	.L1991
	mov	x1, x0
	lsl	x1, x1, 3
	add	x6, x1, x0
	add	x2, x0, 1
	mov	x1, x2
	lsl	x1, x1, 3
	add	x1, x1, x2
	sub	x5, x1, #10
	mov	x1, 0
.L1993:
	cmp	x1, 8
	bgt	.L1992
	ldr	x2, [sp, 48]
	add	x4, x1, x6
	add	x3, x1, 1
	add	x3, x5, x3
	ldr	w4, [x2, x4, lsl 2]
	ldr	x2, [sp, 40]
	str	w4, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L1993
.L1992:
	add	x0, x0, 1
	b	.L1994
.L1991:
	b	.L1995
.L1996:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 144]
	mov	w0, 1664
	str	w0, [sp, 152]
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
	sub	w0, w0, #27
	sxtw	x0, w0
	sub	x1, x0, #1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	adrp	x1, raw_data.9265
	add	x1, x1, :lo12:raw_data.9265
	add	x0, x0, x1
	str	x0, [sp, 248]
	mov	x0, 81
	str	x0, [sp, 256]
	str	xzr, [sp, 208]
	mov	w0, -1
	str	w0, [sp, 140]
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	str	x0, [sp, 216]
	mov	x0, 6
	str	x0, [sp, 224]
	mov	w0, 20480
	str	w0, [sp, 136]
	add	x0, sp, 136
	bl	_gfortran_st_read
	mov	x0, 4
	str	x0, [sp, 80]
	stp	xzr, xzr, [sp, 64]
	mov	x0, 4
	str	x0, [sp, 64]
	mov	w0, 2
	strb	w0, [sp, 76]
	mov	w0, 1
	strb	w0, [sp, 77]
	mov	x0, 1
	str	x0, [sp, 96]
	mov	x0, 9
	str	x0, [sp, 104]
	mov	x0, 1
	str	x0, [sp, 88]
	mov	x0, 1
	str	x0, [sp, 120]
	mov	x0, 9
	str	x0, [sp, 128]
	mov	x0, 9
	str	x0, [sp, 112]
	ldr	x0, [sp, 40]
	str	x0, [sp, 48]
	mov	x0, -10
	str	x0, [sp, 56]
	add	x1, sp, 48
	add	x0, sp, 136
	mov	x3, 0
	mov	w2, 4
	bl	_gfortran_transfer_array
	add	x0, sp, 136
	bl	_gfortran_st_read_done
	b	.L1995
.L1985:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 144]
	mov	w0, 1666
	str	w0, [sp, 152]
	mov	w0, 128
	str	w0, [sp, 136]
	mov	w0, 6
	str	w0, [sp, 140]
	add	x0, sp, 136
	bl	_gfortran_st_write
	add	x3, sp, 136
	mov	x2, 41
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x3
	bl	_gfortran_transfer_character_write
	add	x0, sp, 136
	bl	_gfortran_st_write_done
	mov	w2, 0
	mov	x1, 0
	mov	x0, 0
	bl	_gfortran_stop_string
.L1995:
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 672
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE14:
	.size	read_raw_data.9242, .-read_raw_data.9242
	.section	.rodata
	.align	3
.LC8:
	.ascii	"no"
	.align	3
.LC9:
	.ascii	"(\" Number of puzzles (0 - 54)? \")"
	.align	3
.LC10:
	.ascii	"s.txt"
	.align	3
.LC11:
	.ascii	"(/\"Puzzle \",i0)"
	.align	3
.LC12:
	.ascii	"(9i3)"
	.align	3
.LC13:
	.ascii	"(' last')"
	.align	3
.LC14:
	.ascii	"(/,\" At\", 2(2i2,\" change to\", i2,:,\", \"))"
	.align	3
.LC15:
	.ascii	"Pearl"
	.align	3
.LC16:
	.ascii	"(81i1,1x,i5, a2, 1x, 4i1)"
	.align	3
.LC17:
	.ascii	"()"
	.align	3
.LC18:
	.ascii	"(/,\" Puzzle, count, changes: \", 3i3)"
	.align	3
.LC19:
	.ascii	"(a, f10.2)"
	.align	3
.LC20:
	.ascii	" Elapsed time: "
	.text
	.align	2
	.type	MAIN__, %function
MAIN__:
.LFB13:
	.cfi_startproc
	mov	x12, 32080
	sub	sp, sp, x12
	.cfi_def_cfa_offset 32080
	stp	x29, x30, [sp]
	.cfi_offset 29, -32080
	.cfi_offset 30, -32072
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32064
	str	xzr, [sp, 2128]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 112]
	mov	w0, 1404
	str	w0, [sp, 120]
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	str	x0, [sp, 208]
	mov	x0, 2
	str	x0, [sp, 200]
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	str	x0, [sp, 184]
	mov	x0, 33
	str	x0, [sp, 192]
	mov	w0, 12288
	str	w0, [sp, 104]
	mov	w0, 6
	str	w0, [sp, 108]
	add	x0, sp, 104
	bl	_gfortran_st_write
	add	x0, sp, 104
	bl	_gfortran_st_write_done
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 112]
	mov	w0, 1405
	str	w0, [sp, 120]
	mov	w0, 128
	str	w0, [sp, 104]
	mov	w0, 5
	str	w0, [sp, 108]
	add	x0, sp, 104
	bl	_gfortran_st_read
	add	x1, sp, 4096
	add	x1, x1, 1636
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_integer
	add	x0, sp, 104
	bl	_gfortran_st_read_done
	adrp	x0, grind.9402
	add	x0, x0, :lo12:grind.9402
	mov	w1, 1
	str	w1, [x0]
	mov	w0, 2
	add	x1, sp, 16384
	str	w0, [x1, 15660]
	ldr	w0, [sp, 5732]
	cmp	w0, 0
	bge	.L1999
	mov	w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15660]
.L1999:
	ldr	w0, [sp, 5732]
	mov	w1, 1
	cmp	w0, 0
	csel	w1, w0, w1, gt
	adrp	x0, limit.9426
	add	x0, x0, :lo12:limit.9426
	str	w1, [x0]
	add	x0, sp, 2148
	bl	_gfortran_cpu_time_4
	adrp	x0, grind.9402
	add	x0, x0, :lo12:grind.9402
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L2000
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 112]
	mov	w0, 1414
	str	w0, [sp, 120]
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	str	x0, [sp, 168]
	mov	x0, 5
	str	x0, [sp, 160]
	str	wzr, [sp, 408]
	mov	w0, 16777472
	str	w0, [sp, 104]
	mov	w0, 3
	str	w0, [sp, 108]
	add	x0, sp, 104
	bl	_gfortran_st_open
.L2000:
	adrp	x0, limit.9426
	add	x0, x0, :lo12:limit.9426
	ldr	w19, [x0]
	mov	w0, 1
	str	w0, [sp, 5756]
.L2134:
	ldr	w0, [sp, 5756]
	cmp	w19, w0
	cset	w0, lt
	cmp	w0, 0
	bne	.L2136
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 112]
	mov	w0, 1417
	str	w0, [sp, 120]
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	str	x0, [sp, 184]
	mov	x0, 15
	str	x0, [sp, 192]
	mov	w0, 4096
	str	w0, [sp, 104]
	mov	w0, 6
	str	w0, [sp, 108]
	add	x0, sp, 104
	bl	_gfortran_st_write
	add	x1, sp, 4096
	add	x1, x1, 1660
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	add	x0, sp, 104
	bl	_gfortran_st_write_done
	add	x1, sp, 4096
	add	x1, x1, 1660
	add	x0, sp, 680
	add	x0, x0, 800
	add	x2, sp, 680
	mov	x18, x2
	bl	read_raw_data.9242
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 112]
	mov	w0, 1419
	str	w0, [sp, 120]
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	str	x0, [sp, 184]
	mov	x0, 5
	str	x0, [sp, 192]
	mov	w0, 4096
	str	w0, [sp, 104]
	mov	w0, 6
	str	w0, [sp, 108]
	add	x0, sp, 104
	bl	_gfortran_st_write
	mov	w0, 1
	str	w0, [sp, 5772]
.L2005:
	ldr	w0, [sp, 104]
	and	w0, w0, 3
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L2002
	ldr	w0, [sp, 5772]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2002
	mov	w0, 1
	str	w0, [sp, 5764]
.L2004:
	ldr	w0, [sp, 104]
	and	w0, w0, 3
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L2003
	ldr	w0, [sp, 5764]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2003
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x1, sp, 680
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, x1, x0
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	ldr	w0, [sp, 5764]
	add	w0, w0, 1
	str	w0, [sp, 5764]
	b	.L2004
.L2003:
	ldr	w0, [sp, 5772]
	add	w0, w0, 1
	str	w0, [sp, 5772]
	b	.L2005
.L2002:
	add	x0, sp, 104
	bl	_gfortran_st_write_done
	add	x0, sp, 4096
	add	x0, x0, 1312
	add	x1, sp, 1480
	mov	x2, 324
	bl	memcpy
	add	x0, sp, 684
	add	x1, sp, 4096
	add	x1, x1, 1312
	mov	x2, 324
	bl	memcpy
	mov	w0, 1
	str	w0, [sp, 680]
	add	x0, sp, 4096
	add	x0, x0, 1536
	stp	xzr, xzr, [x0, 104]
.L2124:
	adrp	x0, grind.9402
	add	x0, x0, :lo12:grind.9402
	ldr	w0, [x0]
	ldr	w1, [sp, 680]
	orr	w0, w1, w0
	add	x1, sp, 16384
	str	w0, [x1, 15656]
	ldr	w0, [sp, 680]
	cmp	w0, 0
	beq	.L2006
	mov	w0, 1
	str	w0, [sp, 5772]
.L2013:
	ldr	w0, [sp, 5772]
	cmp	w0, 4
	cset	w0, gt
	cmp	w0, 0
	bne	.L2137
	adrp	x0, random.9434
	add	x0, x0, :lo12:random.9434
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L2008
	add	x1, sp, 4096
	add	x1, x1, 1676
	add	x2, sp, 4096
	add	x2, x2, 1676
	stp	xzr, xzr, [sp, 120]
	mov	x0, 4
	str	x0, [sp, 120]
	mov	w0, 1
	strb	w0, [sp, 132]
	mov	w0, 1
	strb	w0, [sp, 133]
	mov	x0, 1
	str	x0, [sp, 144]
	str	xzr, [sp, 152]
	mov	x0, 8
	str	x0, [sp, 160]
	mov	x0, 4
	str	x0, [sp, 136]
	add	x0, sp, 40
	str	x0, [sp, 104]
	str	xzr, [sp, 112]
	add	x0, sp, 104
	add	x3, sp, 680
	mov	x18, x3
	bl	one_nine.9251
	ldr	w0, [sp, 5772]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	sub	x4, x0, #10
	mov	x0, 0
.L2010:
	cmp	x0, 8
	bgt	.L2011
	ldr	x2, [sp, 104]
	add	x1, x0, 1
	add	x1, x4, x1
	ldr	w3, [x2, x0, lsl 2]
	add	x1, x1, 164
	lsl	x1, x1, 2
	add	x2, sp, 680
	str	w3, [x2, x1]
	add	x0, x0, 1
	b	.L2010
.L2008:
	ldr	w0, [sp, 5772]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	sub	x4, x0, #10
	mov	x0, 0
.L2012:
	cmp	x0, 8
	bgt	.L2011
	add	x1, x0, 1
	add	x1, x4, x1
	adrp	x2, A.1020.9488
	add	x2, x2, :lo12:A.1020.9488
	ldr	w3, [x2, x0, lsl 2]
	add	x1, x1, 164
	lsl	x1, x1, 2
	add	x2, sp, 680
	str	w3, [x2, x1]
	add	x0, x0, 1
	b	.L2012
.L2011:
	ldr	w0, [sp, 5772]
	add	w0, w0, 1
	str	w0, [sp, 5772]
	b	.L2013
.L2137:
	nop
	mov	w0, 1
	str	w0, [sp, 5772]
.L2020:
	ldr	w0, [sp, 5772]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2138
	mov	w0, 1
	str	w0, [sp, 5764]
.L2019:
	ldr	w0, [sp, 5764]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2139
	adrp	x0, random.9434
	add	x0, x0, :lo12:random.9434
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L2016
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	ldr	w0, [x1, x0]
	cmp	w0, 0
	beq	.L2017
	ldr	w0, [sp, 5772]
	sxtw	x3, w0
	ldr	w0, [sp, 5764]
	sxtw	x2, w0
	mov	x0, 4
	str	x0, [sp, 136]
	stp	xzr, xzr, [sp, 120]
	mov	x0, 4
	str	x0, [sp, 120]
	mov	w0, 1
	strb	w0, [sp, 132]
	mov	w0, 1
	strb	w0, [sp, 133]
	mov	x0, 1
	str	x0, [sp, 152]
	mov	x0, 9
	str	x0, [sp, 160]
	mov	x0, 1
	str	x0, [sp, 144]
	sub	x1, x3, #1
	mov	x0, x1
	lsl	x0, x0, 3
	add	x4, x0, x1
	sub	x1, x2, #1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x0, x4, x0
	add	x1, sp, 2480
	lsl	x0, x0, 2
	add	x0, x1, x0
	str	x0, [sp, 104]
	sub	x1, x3, #1
	mov	x0, x1
	lsl	x0, x0, 3
	add	x3, x0, x1
	sub	x1, x2, #1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x0, x3, x0
	sub	x0, x0, #91
	str	x0, [sp, 112]
	add	x1, sp, 4096
	add	x1, x1, 1676
	add	x2, sp, 4096
	add	x2, x2, 1668
	add	x0, sp, 104
	add	x3, sp, 680
	mov	x18, x3
	bl	one_nine.9251
	b	.L2017
.L2016:
	ldr	w0, [sp, 5772]
	sxtw	x2, w0
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x2
	lsl	x0, x0, 3
	add	x0, x0, x2
	sub	x2, x0, #91
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x1
	add	x4, x2, x0
	mov	x0, 0
.L2018:
	cmp	x0, 8
	bgt	.L2017
	add	x1, x0, 1
	add	x1, x4, x1
	adrp	x2, A.1023.9512
	add	x2, x2, :lo12:A.1023.9512
	ldr	w3, [x2, x0, lsl 2]
	lsl	x1, x1, 2
	add	x2, sp, 2480
	str	w3, [x2, x1]
	add	x0, x0, 1
	b	.L2018
.L2017:
	ldr	w0, [sp, 5764]
	add	w0, w0, 1
	str	w0, [sp, 5764]
	b	.L2019
.L2139:
	nop
	ldr	w0, [sp, 5772]
	add	w0, w0, 1
	str	w0, [sp, 5772]
	b	.L2020
.L2138:
	nop
	adrp	x0, grind.9402
	add	x0, x0, :lo12:grind.9402
	ldr	w0, [x0]
	eor	w0, w0, 1
	cmp	w0, 0
	beq	.L2021
	add	x0, sp, 1804
	add	x1, sp, 1480
	mov	x2, 324
	bl	memcpy
	add	x0, sp, 680
	add	x2, x0, 800
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	__brute_force_MOD_brute
	add	x0, sp, 1012
	add	x1, sp, 1480
	mov	x2, 324
	bl	memcpy
	add	x0, sp, 1480
	add	x1, sp, 1804
	mov	x2, 324
	bl	memcpy
	add	x0, sp, 680
	mov	x18, x0
	bl	eliminate.9260
.L2021:
	mov	w0, 0
	str	w0, [sp, 680]
.L2006:
	add	x0, sp, 1804
	add	x1, sp, 1480
	mov	x2, 324
	bl	memcpy
	add	x0, sp, 2152
	add	x1, sp, 1480
	mov	x2, 324
	bl	memcpy
	add	x0, sp, 4096
	add	x0, x0, 1680
	mov	x1, 26244
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w2, 0
	mov	x0, 1
.L2026:
	cmp	x0, 9
	bgt	.L2022
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x3, x1, #10
	mov	x1, 1
.L2025:
	cmp	x1, 9
	bgt	.L2023
	add	x4, x1, x3
	add	x4, x4, 280
	lsl	x4, x4, 2
	add	x5, sp, 684
	ldr	w4, [x5, x4]
	cmp	w4, 0
	beq	.L2024
	add	w2, w2, 1
.L2024:
	add	x1, x1, 1
	b	.L2025
.L2023:
	add	x0, x0, 1
	b	.L2026
.L2022:
	str	w2, [sp, 5752]
	mov	w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15692]
.L2108:
	add	x0, sp, 16384
	ldr	w0, [x0, 15692]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2140
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15692]
	sub	x0, x0, #1
	add	x0, x0, 164
	lsl	x0, x0, 2
	add	x1, sp, 680
	ldr	w0, [x1, x0]
	str	w0, [sp, 5772]
	mov	w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15684]
.L2107:
	add	x0, sp, 16384
	ldr	w0, [x0, 15684]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2141
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15684]
	add	x0, x0, 8
	add	x0, x0, 164
	lsl	x0, x0, 2
	add	x1, sp, 680
	ldr	w0, [x1, x0]
	str	w0, [sp, 5764]
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 280
	lsl	x0, x0, 2
	add	x1, sp, 684
	ldr	w0, [x1, x0]
	cmp	w0, 0
	beq	.L2142
	mov	w2, 0
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	ldr	w3, [x1, x0]
	mov	x0, 1
.L2034:
	cmp	x0, 9
	bgt	.L2030
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x4, x1, #10
	mov	x1, 1
.L2033:
	cmp	x1, 9
	bgt	.L2031
	add	x5, x1, x4
	add	x5, x5, 200
	lsl	x5, x5, 2
	add	x6, sp, 680
	ldr	w5, [x6, x5]
	cmp	w3, w5
	bne	.L2032
	add	w2, w2, 1
.L2032:
	add	x1, x1, 1
	b	.L2033
.L2031:
	add	x0, x0, 1
	b	.L2034
.L2030:
	cmp	w2, 1
	cset	w0, eq
	add	x1, sp, 16384
	str	w0, [x1, 15652]
	mov	w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15676]
.L2106:
	add	x0, sp, 16384
	ldr	w0, [x0, 15676]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2142
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x2, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x1, x2, x0
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15676]
	add	x0, x1, x0
	sub	x0, x0, #91
	lsl	x0, x0, 2
	add	x1, sp, 2480
	ldr	w0, [x1, x0]
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	str	w0, [sp, 2140]
	add	x0, sp, 16384
	ldr	w0, [x0, 15660]
	cmp	w0, 2
	cset	w1, le
	ldr	w0, [sp, 2140]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w1, w0
	cmp	w0, 0
	bne	.L2143
	mov	w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15688]
.L2105:
	add	x0, sp, 16384
	ldr	w0, [x0, 15688]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2143
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15688]
	add	x0, x0, 17
	add	x0, x0, 164
	lsl	x0, x0, 2
	add	x1, sp, 680
	ldr	w0, [x1, x0]
	str	w0, [sp, 5768]
	mov	w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15680]
.L2104:
	add	x0, sp, 16384
	ldr	w0, [x0, 15680]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2144
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15680]
	add	x0, x0, 26
	add	x0, x0, 164
	lsl	x0, x0, 2
	add	x1, sp, 680
	ldr	w0, [x1, x0]
	str	w0, [sp, 5760]
	mov	w1, 1
	stp	xzr, xzr, [sp, 56]
	mov	x0, 4
	str	x0, [sp, 56]
	mov	w0, 1
	strb	w0, [sp, 68]
	mov	w0, 1
	strb	w0, [sp, 69]
	mov	x0, 1
	str	x0, [sp, 80]
	str	xzr, [sp, 88]
	mov	x0, 3
	str	x0, [sp, 96]
	mov	x0, 4
	str	x0, [sp, 72]
	add	x0, sp, 664
	str	x0, [sp, 40]
	str	xzr, [sp, 48]
	ldr	x0, [sp, 40]
	ldr	w2, [sp, 5772]
	str	w2, [x0]
	ldr	x0, [sp, 40]
	ldr	w2, [sp, 5764]
	str	w2, [x0, 4]
	ldr	x0, [sp, 40]
	ldr	w2, [sp, 5768]
	str	w2, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	w2, [sp, 5760]
	str	w2, [x0, 12]
	mov	x0, 0
.L2039:
	cmp	x0, 3
	bgt	.L2037
	lsl	x2, x0, 2
	add	x3, sp, 4096
	add	x3, x3, 1640
	ldr	w3, [x3, x2]
	ldr	x2, [sp, 40]
	ldr	w2, [x2, x0, lsl 2]
	cmp	w3, w2
	beq	.L2038
	mov	w1, 0
	b	.L2037
.L2038:
	add	x0, x0, 1
	b	.L2039
.L2037:
	cmp	w1, 0
	beq	.L2040
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 112]
	mov	w0, 1472
	str	w0, [sp, 120]
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	str	x0, [sp, 184]
	mov	x0, 9
	str	x0, [sp, 192]
	mov	w0, 4096
	str	w0, [sp, 104]
	mov	w0, 6
	str	w0, [sp, 108]
	add	x0, sp, 104
	bl	_gfortran_st_write
	add	x0, sp, 104
	bl	_gfortran_st_write_done
	b	.L2027
.L2040:
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 280
	lsl	x0, x0, 2
	add	x1, sp, 684
	ldr	w0, [x1, x0]
	cmp	w0, 0
	beq	.L2145
	ldr	w1, [sp, 5772]
	ldr	w0, [sp, 5768]
	cmp	w1, w0
	cset	w1, eq
	ldr	w2, [sp, 5764]
	ldr	w0, [sp, 5760]
	cmp	w2, w0
	cset	w0, eq
	and	w0, w1, w0
	cmp	w0, 0
	bne	.L2145
	ldr	w0, [sp, 5772]
	sub	w1, w0, #1
	mov	w0, w1
	lsl	w0, w0, 3
	add	w1, w0, w1
	ldr	w0, [sp, 5764]
	add	w1, w1, w0
	ldr	w0, [sp, 5768]
	sub	w2, w0, #1
	mov	w0, w2
	lsl	w0, w0, 3
	add	w2, w0, w2
	ldr	w0, [sp, 5760]
	add	w0, w2, w0
	cmp	w0, w1
	csel	w3, w0, w1, ge
	ldr	w0, [sp, 5772]
	sub	w1, w0, #1
	mov	w0, w1
	lsl	w0, w0, 3
	add	w1, w0, w1
	ldr	w0, [sp, 5764]
	add	w1, w1, w0
	ldr	w0, [sp, 5768]
	sub	w2, w0, #1
	mov	w0, w2
	lsl	w0, w0, 3
	add	w2, w0, w2
	ldr	w0, [sp, 5760]
	add	w0, w2, w0
	cmp	w0, w1
	csel	w2, w0, w1, le
	sxtw	x1, w3
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x0, x1
	sxtw	x0, w2
	add	x0, x1, x0
	sub	x0, x0, #82
	lsl	x0, x0, 2
	add	x1, sp, 4096
	add	x1, x1, 1680
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L2145
	mov	w2, 0
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	ldr	w3, [x1, x0]
	mov	x0, 1
.L2046:
	cmp	x0, 9
	bgt	.L2042
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x4, x1, #10
	mov	x1, 1
.L2045:
	cmp	x1, 9
	bgt	.L2043
	add	x5, x1, x4
	add	x5, x5, 200
	lsl	x5, x5, 2
	add	x6, sp, 680
	ldr	w5, [x6, x5]
	cmp	w3, w5
	bne	.L2044
	add	w2, w2, 1
.L2044:
	add	x1, x1, 1
	b	.L2045
.L2043:
	add	x0, x0, 1
	b	.L2046
.L2042:
	cmp	w2, 1
	cset	w1, eq
	add	x0, sp, 16384
	ldr	w0, [x0, 15652]
	and	w0, w1, w0
	cmp	w0, 0
	bne	.L2145
	mov	w2, 0
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	ldr	w3, [x1, x0]
	mov	x0, 1
.L2051:
	cmp	x0, 9
	bgt	.L2047
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x4, x1, #10
	mov	x1, 1
.L2050:
	cmp	x1, 9
	bgt	.L2048
	add	x5, x1, x4
	add	x5, x5, 200
	lsl	x5, x5, 2
	add	x6, sp, 680
	ldr	w5, [x6, x5]
	cmp	w3, w5
	bne	.L2049
	add	w2, w2, 1
.L2049:
	add	x1, x1, 1
	b	.L2050
.L2048:
	add	x0, x0, 1
	b	.L2051
.L2047:
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	ldr	w3, [x1, x0]
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	ldr	w0, [x1, x0]
	cmp	w3, w0
	cset	w1, eq
	cmp	w2, 2
	cset	w0, eq
	and	w0, w1, w0
	add	x1, sp, 16384
	str	w0, [x1, 15648]
	mov	w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15672]
.L2103:
	add	x0, sp, 16384
	ldr	w0, [x0, 15672]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2145
	mov	w0, 0
	str	w0, [sp, 1008]
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x2, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x1, x2, x0
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15672]
	add	x0, x1, x0
	sub	x0, x0, #91
	lsl	x0, x0, 2
	add	x1, sp, 2480
	ldr	w0, [x1, x0]
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	str	w0, [sp, 2136]
	add	x0, sp, 16384
	ldr	w0, [x0, 15660]
	cmp	w0, 2
	bgt	.L2052
	add	x0, sp, 16384
	ldr	w0, [x0, 15660]
	cmp	w0, 0
	bgt	.L2053
	b	.L2054
.L2052:
	add	x0, sp, 16384
	ldr	w0, [x0, 15660]
	cmp	w0, 3
	bne	.L2054
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x2, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x1, x2, x0
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15676]
	add	x0, x1, x0
	sub	x0, x0, #91
	lsl	x0, x0, 2
	add	x1, sp, 2480
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 2140]
	neg	w0, w0
	cmp	w1, w0
	cset	w2, eq
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x3, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x1, x3, x0
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15672]
	add	x0, x1, x0
	sub	x0, x0, #91
	lsl	x0, x0, 2
	add	x1, sp, 2480
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 2136]
	neg	w0, w0
	cmp	w1, w0
	cset	w0, eq
	and	w0, w2, w0
	cmp	w0, 0
	bne	.L2146
	b	.L2054
.L2053:
	ldr	w0, [sp, 2136]
	cmp	w0, 0
	beq	.L2146
.L2054:
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 684
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 2140]
	cmp	w1, w0
	cset	w2, eq
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	lsl	x0, x0, 2
	add	x1, sp, 684
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 2136]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w2, w0
	cmp	w0, 0
	bne	.L2146
	mov	w2, 0
	ldr	w3, [sp, 2140]
	mov	x0, 1
.L2060:
	cmp	x0, 9
	bgt	.L2056
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x4, x1, #10
	mov	x1, 1
.L2059:
	cmp	x1, 9
	bgt	.L2057
	add	x5, x1, x4
	add	x5, x5, 200
	lsl	x5, x5, 2
	add	x6, sp, 680
	ldr	w5, [x6, x5]
	cmp	w3, w5
	bne	.L2058
	add	w2, w2, 1
.L2058:
	add	x1, x1, 1
	b	.L2059
.L2057:
	add	x0, x0, 1
	b	.L2060
.L2056:
	ldr	w1, [sp, 2140]
	ldr	w0, [sp, 2136]
	cmp	w1, w0
	cset	w1, eq
	add	x0, sp, 16384
	ldr	w0, [x0, 15648]
	and	w1, w1, w0
	cmp	w2, 0
	cset	w0, eq
	and	w0, w1, w0
	cmp	w0, 0
	bne	.L2146
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	ldr	w0, [x1, x0]
	add	x1, sp, 16384
	str	w0, [x1, 15644]
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	ldr	w2, [sp, 2136]
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	str	w2, [x1, x0]
	mov	w2, 0
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	ldr	w3, [sp, 2140]
	sub	x4, x0, #10
	mov	x0, 1
.L2063:
	cmp	x0, 9
	bgt	.L2061
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x1, x4, x1
	add	x1, x1, 200
	lsl	x1, x1, 2
	add	x5, sp, 680
	ldr	w1, [x5, x1]
	cmp	w3, w1
	bne	.L2062
	mov	w2, 1
	b	.L2061
.L2062:
	add	x0, x0, 1
	b	.L2063
.L2061:
	cmp	w2, 0
	beq	.L2064
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	add	x2, sp, 16384
	ldr	w2, [x2, 15644]
	str	w2, [x1, x0]
	b	.L2055
.L2064:
	mov	w1, 0
	ldr	w0, [sp, 5764]
	sxtw	x2, w0
	ldr	w3, [sp, 2140]
	mov	x0, x2
	lsl	x0, x0, 3
	add	x0, x0, x2
	sub	x2, x0, #10
	mov	x0, 1
.L2067:
	cmp	x0, 9
	bgt	.L2065
	add	x4, x0, x2
	add	x4, x4, 200
	lsl	x4, x4, 2
	add	x5, sp, 680
	ldr	w4, [x5, x4]
	cmp	w3, w4
	bne	.L2066
	mov	w1, 1
	b	.L2065
.L2066:
	add	x0, x0, 1
	b	.L2067
.L2065:
	cmp	w1, 0
	beq	.L2068
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	add	x2, sp, 16384
	ldr	w2, [x2, 15644]
	str	w2, [x1, x0]
	b	.L2055
.L2068:
	mov	w2, 0
	ldr	w0, [sp, 5772]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x9, w0
	ldr	w0, [sp, 5772]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x4, w0
	ldr	w0, [sp, 5764]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w1, [sp, 5764]
	sub	w1, w1, #1
	mov	w3, 21846
	movk	w3, 0x5555, lsl 16
	smull	x3, w1, w3
	lsr	x3, x3, 32
	asr	w1, w1, 31
	sub	w1, w3, w1
	add	w3, w1, 1
	mov	w1, w3
	lsl	w1, w1, 1
	add	w1, w1, w3
	sxtw	x3, w1
	ldr	w5, [sp, 2140]
.L2073:
	cmp	x0, x3
	bgt	.L2069
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x6, x1, #10
	mov	x1, x9
.L2072:
	cmp	x1, x4
	bgt	.L2070
	add	x7, x1, x6
	add	x7, x7, 200
	lsl	x7, x7, 2
	add	x8, sp, 680
	ldr	w7, [x8, x7]
	cmp	w5, w7
	bne	.L2071
	mov	w2, 1
	b	.L2069
.L2071:
	add	x1, x1, 1
	b	.L2072
.L2070:
	add	x0, x0, 1
	b	.L2073
.L2069:
	cmp	w2, 0
	beq	.L2074
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	add	x2, sp, 16384
	ldr	w2, [x2, 15644]
	str	w2, [x1, x0]
	b	.L2055
.L2074:
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	add	x2, sp, 16384
	ldr	w2, [x2, 15644]
	str	w2, [x1, x0]
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	ldr	w0, [x1, x0]
	add	x1, sp, 16384
	str	w0, [x1, 15644]
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	ldr	w2, [sp, 2140]
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	str	w2, [x1, x0]
	mov	w2, 0
	ldr	w0, [sp, 5768]
	sxtw	x0, w0
	ldr	w3, [sp, 2136]
	sub	x4, x0, #10
	mov	x0, 1
.L2077:
	cmp	x0, 9
	bgt	.L2075
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	add	x1, x4, x1
	add	x1, x1, 200
	lsl	x1, x1, 2
	add	x5, sp, 680
	ldr	w1, [x5, x1]
	cmp	w3, w1
	bne	.L2076
	mov	w2, 1
	b	.L2075
.L2076:
	add	x0, x0, 1
	b	.L2077
.L2075:
	cmp	w2, 0
	beq	.L2078
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	add	x2, sp, 16384
	ldr	w2, [x2, 15644]
	str	w2, [x1, x0]
	b	.L2055
.L2078:
	mov	w1, 0
	ldr	w0, [sp, 5760]
	sxtw	x2, w0
	ldr	w3, [sp, 2136]
	mov	x0, x2
	lsl	x0, x0, 3
	add	x0, x0, x2
	sub	x2, x0, #10
	mov	x0, 1
.L2081:
	cmp	x0, 9
	bgt	.L2079
	add	x4, x0, x2
	add	x4, x4, 200
	lsl	x4, x4, 2
	add	x5, sp, 680
	ldr	w4, [x5, x4]
	cmp	w3, w4
	bne	.L2080
	mov	w1, 1
	b	.L2079
.L2080:
	add	x0, x0, 1
	b	.L2081
.L2079:
	cmp	w1, 0
	beq	.L2082
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	add	x2, sp, 16384
	ldr	w2, [x2, 15644]
	str	w2, [x1, x0]
	b	.L2055
.L2082:
	mov	w2, 0
	ldr	w0, [sp, 5768]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x9, w0
	ldr	w0, [sp, 5768]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x4, w0
	ldr	w0, [sp, 5760]
	sub	w0, w0, #1
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	w1, [sp, 5760]
	sub	w1, w1, #1
	mov	w3, 21846
	movk	w3, 0x5555, lsl 16
	smull	x3, w1, w3
	lsr	x3, x3, 32
	asr	w1, w1, 31
	sub	w1, w3, w1
	add	w3, w1, 1
	mov	w1, w3
	lsl	w1, w1, 1
	add	w1, w1, w3
	sxtw	x3, w1
	ldr	w5, [sp, 2136]
.L2087:
	cmp	x0, x3
	bgt	.L2083
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x6, x1, #10
	mov	x1, x9
.L2086:
	cmp	x1, x4
	bgt	.L2084
	add	x7, x1, x6
	add	x7, x7, 200
	lsl	x7, x7, 2
	add	x8, sp, 680
	ldr	w7, [x8, x7]
	cmp	w5, w7
	bne	.L2085
	mov	w2, 1
	b	.L2083
.L2085:
	add	x1, x1, 1
	b	.L2086
.L2084:
	add	x0, x0, 1
	b	.L2087
.L2083:
	cmp	w2, 0
	beq	.L2088
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	add	x2, sp, 16384
	ldr	w2, [x2, 15644]
	str	w2, [x1, x0]
	b	.L2055
.L2088:
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	ldr	w2, [sp, 2136]
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, sp, 680
	str	w2, [x1, x0]
	add	x0, sp, 680
	add	x0, x0, 800
	add	x1, sp, 680
	mov	x18, x1
	bl	knt_val.9257
	eor	w0, w0, 1
	cmp	w0, 0
	beq	.L2089
	add	x0, sp, 680
	add	x2, x0, 800
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	__brute_force_MOD_brute
	adrp	x0, __brute_force_MOD_soln
	add	x0, x0, :lo12:__brute_force_MOD_soln
	ldr	w0, [x0]
	cmp	w0, 1
	bne	.L2089
	add	x0, sp, 1012
	add	x1, sp, 1480
	mov	x2, 324
	bl	memcpy
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	ldr	w2, [sp, 2140]
	add	x0, x0, 280
	lsl	x0, x0, 2
	add	x1, sp, 684
	str	w2, [x1, x0]
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	ldr	w2, [sp, 2136]
	add	x0, x0, 280
	lsl	x0, x0, 2
	add	x1, sp, 684
	str	w2, [x1, x0]
	add	x0, sp, 1480
	add	x1, sp, 1804
	mov	x2, 324
	bl	memcpy
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 112]
	mov	w0, 1531
	str	w0, [sp, 120]
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	str	x0, [sp, 184]
	mov	x0, 41
	str	x0, [sp, 192]
	mov	w0, 4096
	str	w0, [sp, 104]
	mov	w0, 6
	str	w0, [sp, 108]
	add	x0, sp, 104
	bl	_gfortran_st_write
	add	x1, sp, 4096
	add	x1, x1, 1676
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	add	x1, sp, 4096
	add	x1, x1, 1668
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	add	x1, sp, 2140
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	add	x1, sp, 4096
	add	x1, x1, 1672
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	add	x1, sp, 4096
	add	x1, x1, 1664
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	add	x1, sp, 2136
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	add	x0, sp, 104
	bl	_gfortran_st_write_done
	mov	w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15656]
	ldr	w0, [sp, 5772]
	sub	w1, w0, #1
	mov	w0, w1
	lsl	w0, w0, 3
	add	w1, w0, w1
	ldr	w0, [sp, 5764]
	add	w1, w1, w0
	ldr	w0, [sp, 5768]
	sub	w2, w0, #1
	mov	w0, w2
	lsl	w0, w0, 3
	add	w2, w0, w2
	ldr	w0, [sp, 5760]
	add	w0, w2, w0
	cmp	w0, w1
	csel	w3, w0, w1, ge
	ldr	w0, [sp, 5772]
	sub	w1, w0, #1
	mov	w0, w1
	lsl	w0, w0, 3
	add	w1, w0, w1
	ldr	w0, [sp, 5764]
	add	w1, w1, w0
	ldr	w0, [sp, 5768]
	sub	w2, w0, #1
	mov	w0, w2
	lsl	w0, w0, 3
	add	w2, w0, w2
	ldr	w0, [sp, 5760]
	add	w0, w2, w0
	cmp	w0, w1
	csel	w2, w0, w1, le
	sxtw	x1, w3
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, x0, x1
	sxtw	x0, w2
	add	x0, x1, x0
	sub	x0, x0, #82
	lsl	x0, x0, 2
	add	x1, sp, 4096
	add	x1, x1, 1680
	mov	w2, 1
	str	w2, [x1, x0]
	add	x0, sp, 16384
	ldr	w0, [x0, 15660]
	cmp	w0, 2
	bgt	.L2090
	add	x0, sp, 16384
	ldr	w0, [x0, 15660]
	cmp	w0, 0
	bgt	.L2091
	b	.L2147
.L2090:
	add	x0, sp, 16384
	ldr	w0, [x0, 15660]
	cmp	w0, 3
	beq	.L2093
	b	.L2147
.L2091:
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x2, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x1, x2, x0
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15676]
	add	x0, x1, x0
	sub	x0, x0, #91
	lsl	x0, x0, 2
	add	x1, sp, 2480
	str	wzr, [x1, x0]
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x2, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x1, x2, x0
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15672]
	add	x0, x1, x0
	sub	x0, x0, #91
	lsl	x0, x0, 2
	add	x1, sp, 2480
	str	wzr, [x1, x0]
	b	.L2092
.L2093:
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x2, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x1, x2, x0
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15676]
	add	x0, x1, x0
	sub	x0, x0, #91
	lsl	x0, x0, 2
	add	x1, sp, 2480
	ldr	w0, [x1, x0]
	mvn	w1, w0
	asr	w2, w1, 31
	add	w3, w0, w2
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x4, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x1, x4, x0
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15676]
	add	x0, x1, x0
	sub	x0, x0, #91
	eor	w2, w2, w3
	lsl	x0, x0, 2
	add	x1, sp, 2480
	str	w2, [x1, x0]
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x2, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x1, x2, x0
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15672]
	add	x0, x1, x0
	sub	x0, x0, #91
	lsl	x0, x0, 2
	add	x1, sp, 2480
	ldr	w0, [x1, x0]
	mvn	w1, w0
	asr	w2, w1, 31
	add	w3, w0, w2
	ldr	w0, [sp, 5760]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x4, x0, x1
	ldr	w0, [sp, 5768]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x1, x4, x0
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15672]
	add	x0, x1, x0
	sub	x0, x0, #91
	eor	w2, w2, w3
	lsl	x0, x0, 2
	add	x1, sp, 2480
	str	w2, [x1, x0]
.L2147:
	nop
.L2092:
	stp	xzr, xzr, [sp, 120]
	mov	x0, 4
	str	x0, [sp, 120]
	mov	w0, 1
	strb	w0, [sp, 132]
	mov	w0, 1
	strb	w0, [sp, 133]
	mov	x0, 1
	str	x0, [sp, 144]
	str	xzr, [sp, 152]
	mov	x0, 3
	str	x0, [sp, 160]
	mov	x0, 4
	str	x0, [sp, 136]
	add	x0, sp, 648
	str	x0, [sp, 104]
	str	xzr, [sp, 112]
	ldr	x0, [sp, 104]
	ldr	w1, [sp, 5772]
	str	w1, [x0]
	ldr	x0, [sp, 104]
	ldr	w1, [sp, 5764]
	str	w1, [x0, 4]
	ldr	x0, [sp, 104]
	ldr	w1, [sp, 5768]
	str	w1, [x0, 8]
	ldr	x0, [sp, 104]
	ldr	w1, [sp, 5760]
	str	w1, [x0, 12]
	mov	x0, 0
.L2095:
	cmp	x0, 3
	bgt	.L2094
	ldr	x1, [sp, 104]
	ldr	w3, [x1, x0, lsl 2]
	lsl	x1, x0, 2
	add	x2, sp, 4096
	add	x2, x2, 1640
	str	w3, [x2, x1]
	add	x0, x0, 1
	b	.L2095
.L2094:
	adrp	x0, __brute_force_MOD_pearl
	add	x0, x0, :lo12:__brute_force_MOD_pearl
	ldr	w0, [x0]
	add	x1, sp, 16384
	str	w0, [x1, 15640]
	add	x0, sp, 680
	mov	x18, x0
	bl	eliminate.9260
	adrp	x0, __brute_force_MOD_pearl
	add	x0, x0, :lo12:__brute_force_MOD_pearl
	add	x1, sp, 16384
	ldr	w1, [x1, 15640]
	str	w1, [x0]
	ldr	w0, [sp, 1008]
	eor	w1, w0, 1
	adrp	x0, grind.9402
	add	x0, x0, :lo12:grind.9402
	ldr	w0, [x0]
	and	w0, w1, w0
	cmp	w0, 0
	beq	.L2148
	adrp	x0, se.9439
	add	x0, x0, :lo12:se.9439
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, se.9439
	add	x0, x0, :lo12:se.9439
	str	w1, [x0]
	mov	w0, 32
	add	x1, sp, 4096
	strb	w0, [x1, 1304]
	add	x0, sp, 4096
	add	x0, x0, 1304
	add	x0, x0, 1
	mov	w1, 538976288
	str	w1, [x0]
	adrp	x0, __brute_force_MOD_pearl
	add	x0, x0, :lo12:__brute_force_MOD_pearl
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L2097
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	add	x0, sp, 4096
	add	x0, x0, 1304
	ldr	w2, [x1]
	str	w2, [x0]
	ldrb	w1, [x1, 4]
	strb	w1, [x0, 4]
.L2097:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 112]
	mov	w0, 1550
	str	w0, [sp, 120]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	str	x0, [sp, 184]
	mov	x0, 25
	str	x0, [sp, 192]
	mov	w0, 4096
	str	w0, [sp, 104]
	mov	w0, 3
	str	w0, [sp, 108]
	add	x0, sp, 104
	bl	_gfortran_st_write
	mov	w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15668]
.L2101:
	ldr	w0, [sp, 104]
	and	w0, w0, 3
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L2098
	add	x0, sp, 16384
	ldr	w0, [x0, 15668]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2098
	mov	w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15664]
.L2100:
	ldr	w0, [sp, 104]
	and	w0, w0, 3
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L2099
	add	x0, sp, 16384
	ldr	w0, [x0, 15664]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2099
	add	x0, sp, 16384
	ldrsw	x1, [x0, 15664]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	add	x0, sp, 16384
	ldrsw	x0, [x0, 15668]
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x1, sp, 680
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, x1, x0
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	add	x0, sp, 16384
	ldr	w0, [x0, 15664]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15664]
	b	.L2100
.L2099:
	add	x0, sp, 16384
	ldr	w0, [x0, 15668]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15668]
	b	.L2101
.L2098:
	add	x3, sp, 104
	mov	w2, 4
	adrp	x0, se.9439
	add	x1, x0, :lo12:se.9439
	mov	x0, x3
	bl	_gfortran_transfer_integer_write
	add	x1, sp, 4096
	add	x1, x1, 1304
	add	x0, sp, 104
	mov	x2, 1
	bl	_gfortran_transfer_character_write
	mov	x0, 4
	str	x0, [sp, 72]
	stp	xzr, xzr, [sp, 56]
	mov	x0, 4
	str	x0, [sp, 56]
	mov	w0, 1
	strb	w0, [sp, 68]
	mov	w0, 1
	strb	w0, [sp, 69]
	mov	x0, 1
	str	x0, [sp, 88]
	mov	x0, 4
	str	x0, [sp, 96]
	mov	x0, 1
	str	x0, [sp, 80]
	add	x0, sp, 4096
	add	x0, x0, 1640
	str	x0, [sp, 40]
	mov	x0, -1
	str	x0, [sp, 48]
	add	x1, sp, 40
	add	x0, sp, 104
	mov	x3, 0
	mov	w2, 4
	bl	_gfortran_transfer_array_write
	add	x0, sp, 104
	bl	_gfortran_st_write_done
	add	x0, sp, 16384
	ldr	w0, [x0, 15660]
	cmp	w0, 1
	beq	.L2149
	b	.L2148
.L2089:
	add	x0, sp, 1480
	add	x1, sp, 1804
	mov	x2, 324
	bl	memcpy
	b	.L2055
.L2146:
	nop
.L2055:
	add	x0, sp, 16384
	ldr	w0, [x0, 15672]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15672]
	b	.L2103
.L2145:
	nop
	add	x0, sp, 16384
	ldr	w0, [x0, 15680]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15680]
	b	.L2104
.L2144:
	nop
	add	x0, sp, 16384
	ldr	w0, [x0, 15688]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15688]
	b	.L2105
.L2143:
	nop
	add	x0, sp, 16384
	ldr	w0, [x0, 15676]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15676]
	b	.L2106
.L2142:
	nop
	b	.L2029
.L2148:
	nop
.L2029:
	add	x0, sp, 16384
	ldr	w0, [x0, 15684]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15684]
	b	.L2107
.L2141:
	nop
	add	x0, sp, 16384
	ldr	w0, [x0, 15692]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 15692]
	b	.L2108
.L2140:
	nop
.L2027:
	mov	w2, 1
	mov	x0, 1
.L2113:
	cmp	x0, 9
	bgt	.L2109
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x3, x1, #10
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x4, x1, #10
	mov	x1, 1
.L2112:
	cmp	x1, 9
	bgt	.L2110
	add	x5, x1, x3
	lsl	x5, x5, 2
	add	x6, sp, 2152
	ldr	w6, [x6, x5]
	add	x5, x1, x4
	add	x5, x5, 200
	lsl	x5, x5, 2
	add	x7, sp, 680
	ldr	w5, [x7, x5]
	cmp	w6, w5
	beq	.L2111
	mov	w2, 0
	b	.L2109
.L2111:
	add	x1, x1, 1
	b	.L2112
.L2110:
	add	x0, x0, 1
	b	.L2113
.L2109:
	cmp	w2, 0
	bne	.L2150
	mov	w2, 0
	mov	x0, 1
.L2119:
	cmp	x0, 9
	bgt	.L2115
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x3, x1, #10
	mov	x1, 1
.L2118:
	cmp	x1, 9
	bgt	.L2116
	add	x4, x1, x3
	add	x4, x4, 280
	lsl	x4, x4, 2
	add	x5, sp, 684
	ldr	w4, [x5, x4]
	cmp	w4, 0
	beq	.L2117
	add	w2, w2, 1
.L2117:
	add	x1, x1, 1
	b	.L2118
.L2116:
	add	x0, x0, 1
	b	.L2119
.L2115:
	str	w2, [sp, 5752]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 112]
	mov	w0, 1567
	str	w0, [sp, 120]
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	str	x0, [sp, 184]
	mov	x0, 5
	str	x0, [sp, 192]
	mov	w0, 4096
	str	w0, [sp, 104]
	mov	w0, 6
	str	w0, [sp, 108]
	add	x0, sp, 104
	bl	_gfortran_st_write
	mov	w0, 1
	str	w0, [sp, 5772]
.L2123:
	ldr	w0, [sp, 104]
	and	w0, w0, 3
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L2120
	ldr	w0, [sp, 5772]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2120
	mov	w0, 1
	str	w0, [sp, 5764]
.L2122:
	ldr	w0, [sp, 104]
	and	w0, w0, 3
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L2121
	ldr	w0, [sp, 5764]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2121
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x1, sp, 680
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, x1, x0
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	ldr	w0, [sp, 5764]
	add	w0, w0, 1
	str	w0, [sp, 5764]
	b	.L2122
.L2121:
	ldr	w0, [sp, 5772]
	add	w0, w0, 1
	str	w0, [sp, 5772]
	b	.L2123
.L2120:
	add	x0, sp, 104
	bl	_gfortran_st_write_done
	ldr	w0, [sp, 5732]
	cmp	w0, 0
	beq	.L2150
	b	.L2124
.L2150:
	nop
	add	x0, sp, 2144
	bl	_gfortran_cpu_time_4
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 112]
	mov	w0, 1573
	str	w0, [sp, 120]
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	str	x0, [sp, 184]
	mov	x0, 2
	str	x0, [sp, 192]
	mov	w0, 4096
	str	w0, [sp, 104]
	mov	w0, 6
	str	w0, [sp, 108]
	add	x0, sp, 104
	bl	_gfortran_st_write
	add	x0, sp, 104
	bl	_gfortran_st_write_done
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 112]
	mov	w0, 1574
	str	w0, [sp, 120]
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	str	x0, [sp, 184]
	mov	x0, 5
	str	x0, [sp, 192]
	mov	w0, 4096
	str	w0, [sp, 104]
	mov	w0, 6
	str	w0, [sp, 108]
	add	x0, sp, 104
	bl	_gfortran_st_write
	mov	w0, 1
	str	w0, [sp, 5772]
.L2128:
	ldr	w0, [sp, 104]
	and	w0, w0, 3
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L2125
	ldr	w0, [sp, 5772]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2125
	mov	w0, 1
	str	w0, [sp, 5764]
.L2127:
	ldr	w0, [sp, 104]
	and	w0, w0, 3
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L2126
	ldr	w0, [sp, 5764]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2126
	ldr	w0, [sp, 5764]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 5772]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x1, sp, 680
	add	x0, x0, 200
	lsl	x0, x0, 2
	add	x1, x1, x0
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	ldr	w0, [sp, 5764]
	add	w0, w0, 1
	str	w0, [sp, 5764]
	b	.L2127
.L2126:
	ldr	w0, [sp, 5772]
	add	w0, w0, 1
	str	w0, [sp, 5772]
	b	.L2128
.L2125:
	add	x0, sp, 104
	bl	_gfortran_st_write_done
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 112]
	mov	w0, 1575
	str	w0, [sp, 120]
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	str	x0, [sp, 184]
	mov	x0, 36
	str	x0, [sp, 192]
	mov	w0, 4096
	str	w0, [sp, 104]
	mov	w0, 6
	str	w0, [sp, 108]
	add	x0, sp, 104
	bl	_gfortran_st_write
	add	x1, sp, 4096
	add	x1, x1, 1660
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	add	x1, sp, 4096
	add	x1, x1, 1656
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	mov	w2, 0
	mov	x0, 1
.L2133:
	cmp	x0, 9
	bgt	.L2129
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x3, x1, #10
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x4, x1, #10
	mov	x1, 1
.L2132:
	cmp	x1, 9
	bgt	.L2130
	add	x5, x1, x3
	lsl	x5, x5, 2
	add	x6, sp, 4096
	add	x6, x6, 1312
	ldr	w6, [x6, x5]
	add	x5, x1, x4
	add	x5, x5, 200
	lsl	x5, x5, 2
	add	x7, sp, 680
	ldr	w5, [x7, x5]
	cmp	w6, w5
	beq	.L2131
	add	w2, w2, 1
.L2131:
	add	x1, x1, 1
	b	.L2132
.L2130:
	add	x0, x0, 1
	b	.L2133
.L2129:
	str	w2, [sp, 644]
	add	x1, sp, 644
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	add	x0, sp, 104
	bl	_gfortran_st_write_done
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 112]
	mov	w0, 1577
	str	w0, [sp, 120]
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	str	x0, [sp, 184]
	mov	x0, 10
	str	x0, [sp, 192]
	mov	w0, 4096
	str	w0, [sp, 104]
	mov	w0, 6
	str	w0, [sp, 108]
	add	x0, sp, 104
	bl	_gfortran_st_write
	add	x3, sp, 104
	mov	x2, 15
	adrp	x0, .LC20
	add	x1, x0, :lo12:.LC20
	mov	x0, x3
	bl	_gfortran_transfer_character_write
	ldr	s1, [sp, 2144]
	ldr	s0, [sp, 2148]
	fsub	s0, s1, s0
	str	s0, [sp, 640]
	add	x1, sp, 640
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_real_write
	add	x0, sp, 104
	bl	_gfortran_st_write_done
	b	.L2102
.L2149:
	nop
.L2102:
	ldr	w0, [sp, 5756]
	add	w0, w0, 1
	str	w0, [sp, 5756]
	b	.L2134
.L2136:
	nop
	add	x0, sp, 16384
	ldr	w0, [x0, 15660]
	cmp	w0, 1
	bne	.L2135
	add	x0, sp, 2144
	bl	_gfortran_cpu_time_4
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 112]
	mov	w0, 1584
	str	w0, [sp, 120]
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	str	x0, [sp, 184]
	mov	x0, 2
	str	x0, [sp, 192]
	mov	w0, 4096
	str	w0, [sp, 104]
	mov	w0, 6
	str	w0, [sp, 108]
	add	x0, sp, 104
	bl	_gfortran_st_write
	add	x0, sp, 104
	bl	_gfortran_st_write_done
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 112]
	mov	w0, 1585
	str	w0, [sp, 120]
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	str	x0, [sp, 184]
	mov	x0, 10
	str	x0, [sp, 192]
	mov	w0, 4096
	str	w0, [sp, 104]
	mov	w0, 6
	str	w0, [sp, 108]
	add	x0, sp, 104
	bl	_gfortran_st_write
	add	x3, sp, 104
	mov	x2, 15
	adrp	x0, .LC20
	add	x1, x0, :lo12:.LC20
	mov	x0, x3
	bl	_gfortran_transfer_character_write
	ldr	s1, [sp, 2144]
	ldr	s0, [sp, 2148]
	fsub	s0, s1, s0
	str	s0, [sp, 636]
	add	x1, sp, 636
	add	x0, sp, 104
	mov	w2, 4
	bl	_gfortran_transfer_real_write
	add	x0, sp, 104
	bl	_gfortran_st_write_done
.L2135:
	mov	w2, 0
	mov	x1, 0
	mov	x0, 0
	bl	_gfortran_stop_string
	.cfi_endproc
.LFE13:
	.size	MAIN__, .-MAIN__
	.align	2
	.type	one_nine.9251, %function
one_nine.9251:
.LFB15:
	.cfi_startproc
	stp	x29, x30, [sp, -224]!
	.cfi_def_cfa_offset 224
	.cfi_offset 29, -224
	.cfi_offset 30, -216
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x18, [sp, 16]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 40]
	cmp	x0, 0
	bne	.L2153
	mov	x0, 1
.L2153:
	ldr	x1, [sp, 40]
	ldr	x1, [x1]
	str	x1, [sp, 216]
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	neg	x8, x0
	mov	x6, x1
	mov	x7, 0
	lsr	x1, x6, 59
	lsl	x5, x7, 5
	orr	x5, x1, x5
	lsl	x4, x6, 5
	mov	x1, 1
.L2155:
	cmp	x1, 9
	bgt	.L2154
	sub	x3, x1, #1
	adrp	x2, numbers.9314
	add	x2, x2, :lo12:numbers.9314
	ldr	s0, [x2, x3, lsl 2]
	mul	x2, x1, x0
	add	x3, x8, x2
	fcvtzs	s0, s0
	ldr	x2, [sp, 216]
	str	s0, [x2, x3, lsl 2]
	add	x1, x1, 1
	b	.L2155
.L2154:
	mov	x0, 4
	str	x0, [sp, 120]
	stp	xzr, xzr, [sp, 104]
	mov	x0, 4
	str	x0, [sp, 104]
	mov	w0, 1
	strb	w0, [sp, 116]
	mov	w0, 3
	strb	w0, [sp, 117]
	mov	x0, 1
	str	x0, [sp, 136]
	mov	x0, 9
	str	x0, [sp, 144]
	mov	x0, 1
	str	x0, [sp, 128]
	adrp	x0, numbers.9314
	add	x0, x0, :lo12:numbers.9314
	str	x0, [sp, 88]
	mov	x0, -1
	str	x0, [sp, 96]
	add	x1, sp, 88
	adrp	x0, .LC1
	add	x2, x0, :lo12:.LC1
	stp	xzr, xzr, [sp, 168]
	mov	x0, 4
	str	x0, [sp, 168]
	mov	w0, 1
	strb	w0, [sp, 180]
	mov	w0, 3
	strb	w0, [sp, 181]
	mov	x0, 1
	str	x0, [sp, 192]
	str	xzr, [sp, 200]
	mov	x0, 8
	str	x0, [sp, 208]
	mov	x0, 4
	str	x0, [sp, 184]
	add	x0, sp, 48
	str	x0, [sp, 152]
	str	xzr, [sp, 160]
	add	x0, sp, 152
	mov	x3, 0
	bl	_gfortran_cshift0_4
	mov	x0, 0
.L2157:
	cmp	x0, 8
	bgt	.L2156
	ldr	x1, [sp, 152]
	ldr	s0, [x1, x0, lsl 2]
	fmov	s1, 1.0e+1
	fsub	s0, s1, s0
	adrp	x1, numbers.9314
	add	x1, x1, :lo12:numbers.9314
	str	s0, [x1, x0, lsl 2]
	add	x0, x0, 1
	b	.L2157
.L2156:
	nop
	ldp	x29, x30, [sp], 224
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE15:
	.size	one_nine.9251, .-one_nine.9251
	.align	2
	.type	knt_val.9257, %function
knt_val.9257:
.LFB16:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x18, [sp]
	str	wzr, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 24]
.L2166:
	ldr	w0, [sp, 24]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2168
	mov	w2, 0
	ldr	w3, [sp, 24]
	mov	x0, 1
.L2164:
	cmp	x0, 9
	bgt	.L2160
	mov	x1, x0
	lsl	x1, x1, 3
	add	x1, x1, x0
	sub	x4, x1, #10
	mov	x1, 1
.L2163:
	cmp	x1, 9
	bgt	.L2161
	add	x6, x1, x4
	ldr	x5, [sp, 8]
	ldr	w5, [x5, x6, lsl 2]
	cmp	w3, w5
	bne	.L2162
	add	w2, w2, 1
.L2162:
	add	x1, x1, 1
	b	.L2163
.L2161:
	add	x0, x0, 1
	b	.L2164
.L2160:
	cmp	w2, 0
	beq	.L2165
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2165:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	b	.L2166
.L2168:
	nop
	ldr	w0, [sp, 28]
	cmp	w0, 7
	cset	w0, le
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE16:
	.size	knt_val.9257, .-knt_val.9257
	.section	.rodata
	.align	3
.LC21:
	.ascii	"(\" Delete value in cell \",2i2,/)"
	.text
	.align	2
	.type	eliminate.9260, %function
eliminate.9260:
.LFB17:
	.cfi_startproc
	sub	sp, sp, #768
	.cfi_def_cfa_offset 768
	stp	x29, x30, [sp]
	.cfi_offset 29, -768
	.cfi_offset 30, -760
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -752
	.cfi_offset 20, -744
	mov	x19, x18
	str	x18, [sp, 40]
	add	x1, x19, 1124
	add	x0, x19, 800
	mov	x3, x1
	mov	x1, x0
	mov	x0, 324
	mov	x2, x0
	mov	x0, x3
	bl	memcpy
	mov	w0, 1
	str	w0, [sp, 764]
.L2177:
	ldr	w0, [sp, 764]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2178
	ldrsw	x0, [sp, 764]
	add	x0, x0, 8
	add	x0, x0, 164
	ldr	w0, [x19, x0, lsl 2]
	str	w0, [sp, 756]
	mov	w0, 1
	str	w0, [sp, 760]
.L2176:
	ldr	w0, [sp, 760]
	cmp	w0, 9
	cset	w0, gt
	cmp	w0, 0
	bne	.L2179
	ldrsw	x0, [sp, 760]
	add	x0, x0, 17
	add	x0, x0, 164
	ldr	w0, [x19, x0, lsl 2]
	str	w0, [sp, 752]
	ldr	w0, [sp, 752]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 756]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 280
	lsl	x0, x0, 2
	add	x0, x19, x0
	ldr	w0, [x0, 4]
	cmp	w0, 0
	beq	.L2180
	ldr	w0, [sp, 752]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 756]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 200
	str	wzr, [x19, x0, lsl 2]
	mov	x0, 4
	str	x0, [sp, 80]
	stp	xzr, xzr, [sp, 64]
	mov	x0, 4
	str	x0, [sp, 64]
	mov	w0, 2
	strb	w0, [sp, 76]
	mov	w0, 1
	strb	w0, [sp, 77]
	mov	x0, 1
	str	x0, [sp, 96]
	mov	x0, 9
	str	x0, [sp, 104]
	mov	x0, 1
	str	x0, [sp, 88]
	mov	x0, 1
	str	x0, [sp, 120]
	mov	x0, 9
	str	x0, [sp, 128]
	mov	x0, 9
	str	x0, [sp, 112]
	add	x0, x19, 332
	str	x0, [sp, 48]
	mov	x0, -10
	str	x0, [sp, 56]
	mov	x0, 4
	str	x0, [sp, 168]
	stp	xzr, xzr, [sp, 152]
	mov	x0, 4
	str	x0, [sp, 152]
	mov	w0, 2
	strb	w0, [sp, 164]
	mov	w0, 1
	strb	w0, [sp, 165]
	mov	x0, 1
	str	x0, [sp, 184]
	mov	x0, 9
	str	x0, [sp, 192]
	mov	x0, 1
	str	x0, [sp, 176]
	mov	x0, 1
	str	x0, [sp, 208]
	mov	x0, 9
	str	x0, [sp, 216]
	mov	x0, 9
	str	x0, [sp, 200]
	add	x0, x19, 800
	str	x0, [sp, 136]
	mov	x0, -10
	str	x0, [sp, 144]
	add	x0, x19, 800
	mov	x18, x19
	bl	knt_val.9257
	eor	w20, w0, 1
	add	x1, sp, 136
	add	x0, sp, 48
	bl	__brute_force_MOD_covered
	and	w0, w20, w0
	cmp	w0, 0
	beq	.L2173
	add	x2, x19, 800
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	__brute_force_MOD_brute
	adrp	x0, __brute_force_MOD_soln
	add	x0, x0, :lo12:__brute_force_MOD_soln
	ldr	w0, [x0]
	cmp	w0, 1
	bne	.L2173
	adrp	x0, grind.9402
	add	x0, x0, :lo12:grind.9402
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L2174
	mov	w0, 1
	str	w0, [x19, 328]
	add	x1, x19, 800
	add	x0, x19, 1124
	mov	x3, x1
	mov	x1, x0
	mov	x0, 324
	mov	x2, x0
	mov	x0, x3
	bl	memcpy
	b	.L2169
.L2174:
	ldr	w0, [sp, 752]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x1, x0, x1
	ldr	w0, [sp, 756]
	sxtw	x0, w0
	add	x0, x1, x0
	sub	x0, x0, #10
	add	x0, x0, 280
	lsl	x0, x0, 2
	add	x0, x19, x0
	str	wzr, [x0, 4]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	str	x0, [sp, 232]
	mov	w0, 1612
	str	w0, [sp, 240]
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	str	x0, [sp, 304]
	mov	x0, 32
	str	x0, [sp, 312]
	mov	w0, 4096
	str	w0, [sp, 224]
	mov	w0, 6
	str	w0, [sp, 228]
	add	x0, sp, 224
	bl	_gfortran_st_write
	add	x1, sp, 756
	add	x0, sp, 224
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	add	x1, sp, 752
	add	x0, sp, 224
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	add	x0, sp, 224
	bl	_gfortran_st_write_done
	add	x1, x19, 4
	add	x0, x19, 1124
	mov	x3, x1
	mov	x1, x0
	mov	x0, 324
	mov	x2, x0
	mov	x0, x3
	bl	memcpy
	mov	w0, 1
	str	w0, [x19]
.L2173:
	add	x1, x19, 800
	add	x0, x19, 1124
	mov	x3, x1
	mov	x1, x0
	mov	x0, 324
	mov	x2, x0
	mov	x0, x3
	bl	memcpy
	b	.L2172
.L2180:
	nop
.L2172:
	ldr	w0, [sp, 760]
	add	w0, w0, 1
	str	w0, [sp, 760]
	b	.L2176
.L2179:
	nop
	ldr	w0, [sp, 764]
	add	w0, w0, 1
	str	w0, [sp, 764]
	b	.L2177
.L2178:
	nop
.L2169:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp]
	add	sp, sp, 768
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE17:
	.size	eliminate.9260, .-eliminate.9260
	.align	2
	.global	main
	.type	main, %function
main:
.LFB18:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	w0, [sp, 28]
	bl	_gfortran_set_args
	adrp	x0, options.1087.9761
	add	x1, x0, :lo12:options.1087.9761
	mov	w0, 7
	bl	_gfortran_set_options
	bl	MAIN__
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE18:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	A.609.6998, %object
	.size	A.609.6998, 36
A.609.6998:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
	.type	A.361.5206, %object
	.size	A.361.5206, 8
A.361.5206:
	.xword	9
	.align	3
	.type	A.375.5260, %object
	.size	A.375.5260, 8
A.375.5260:
	.xword	9
	.local	passes.8708
	.comm	passes.8708,4,4
	.local	smin.8717
	.comm	smin.8717,24,8
	.local	smax.8715
	.comm	smax.8715,24,8
	.local	cmin.8706
	.comm	cmin.8706,8,8
	.local	cmax.8704
	.comm	cmax.8704,8,8
	.local	grind.9402
	.comm	grind.9402,4,4
	.data
	.align	2
	.type	limit.9426, %object
	.size	limit.9426, 4
limit.9426:
	.word	1
	.align	2
	.type	random.9434, %object
	.size	random.9434, 4
random.9434:
	.word	1
	.section	.rodata
	.align	3
	.type	A.1020.9488, %object
	.size	A.1020.9488, 36
A.1020.9488:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
	.type	A.1023.9512, %object
	.size	A.1023.9512, 36
A.1023.9512:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.local	se.9439
	.comm	se.9439,4,4
	.local	opened.9263
	.comm	opened.9263,4,4
	.local	raw_data.9265
	.comm	raw_data.9265,2187,8
	.data
	.align	3
	.type	numbers.9314, %object
	.size	numbers.9314, 36
numbers.9314:
	.word	1084227584
	.word	1086324736
	.word	1077936128
	.word	1090519040
	.word	1091567616
	.word	1065353216
	.word	1088421888
	.word	1082130432
	.word	1073741824
	.section	.rodata
	.align	3
	.type	options.1087.9761, %object
	.size	options.1087.9761, 28
options.1087.9761:
	.word	2116
	.word	4095
	.word	0
	.word	1
	.word	1
	.word	0
	.word	31
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
