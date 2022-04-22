#Option: --mao=READ=create_anonymous[1] --mao=ADDADD=trace[2]
#Plugin: MaoAddAdd
#grep \[ADDADD\].*Addi/Subi pattern identified 3
#
# Three patterns should match in this code
# 
#

bar:	
	addl    $2, %eax
	nop
	addl    $2, %eax
foo:
	jmp bar
	addl    $2, %eax
	nop
	sub    $2, %ebx
	nop
	nop
	sub    $2, %ebx	
	sub    $2, %eax
	nop

# /root/workspace/mao/tests/../bin/mao-x86_64-linux --mao=-T --mao=-s --mao=-v --mao=READ=create_anonymous[1] --mao=ADDADD=trace[3]:ASM=o[output/output.s] /root/workspace/mao/tests/addadd.s

# 	.code64		# id: 0, l: 0	
# bar:	# id: 1, l: 9	
# 	addl	$2, %eax	# id: 2, l: 10	
# 	nop		# id: 3, l: 11	
# 	addl	$2, %eax	# id: 4, l: 12	
# foo:	# id: 5, l: 13	
# 	jmp	bar	# id: 6, l: 14	
# 	addl	$2, %eax	# id: 7, l: 15	
# 	nop		# id: 8, l: 16	
# 	subl	$2, %ebx	# id: 9, l: 17	
# 	nop		# id: 10, l: 18	
# 	nop		# id: 11, l: 19	
# 	subl	$2, %ebx	# id: 12, l: 20	
# 	subl	$2, %eax	# id: 13, l: 21	
# 	nop		# id: 14, l: 22	