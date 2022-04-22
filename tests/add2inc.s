#Option: --mao=ADD2INC=trace[2]
#grep Replaced 10

.globl add1
.type	add1, @function

add1:
.LFB0:
 add    $1, %ah
 add    $1, %al
 add    $1, %ax
 addl   $1, %eax
 add    $1, %rax


 sub    $1, %ah
 sub    $1, %al
 sub    $1, %ax
 subl   $1, %eax
 sub    $1, %rax         

# /root/workspace/mao/tests/../bin/mao-x86_64-linux --mao=-s  --mao=ADDADD=trace[2]=ASM=o[output/output.s] /root/workspace/mao/tests/add2inc.s

# 	.code64		# id: 0, l: 0	
# 	.globl	add1	# id: 1, l: 4	
# 	.type	add1, @function	# id: 2, l: 5	
# add1:	# id: 3, l: 7	
# .LFB0:	# id: 4, l: 8	
# 	addb	$1, %ah	# id: 5, l: 9	
# 	addb	$1, %al	# id: 6, l: 10	
# 	addw	$1, %ax	# id: 7, l: 11	
# 	addl	$1, %eax	# id: 8, l: 12	
# 	addq	$1, %rax	# id: 9, l: 13	
# 	subb	$1, %ah	# id: 10, l: 16	
# 	subb	$1, %al	# id: 11, l: 17	
# 	subw	$1, %ax	# id: 12, l: 18	
# 	subl	$1, %eax	# id: 13, l: 19	
# 	subq	$1, %rax	# id: 14, l: 20	