#Option: --mao=READ=create_anonymous[1] --mao=REDTEST=trace[1]
#grep REDTEST 2
        
        subl     $1, %r15d
     	mov	(%rax), %r15
        testl    %r15d, %r15d

        subl     $1, %r15d
        movl    (%rax), %eax     
        testl    %r15d, %r15d

        subl     $1, %r15d
        testl    %r15d, %r15d

# /root/workspace/mao/tests/../bin/mao-x86_64-linux --mao=-s --mao=READ=create_anonymous[1] --mao=REDTEST=trace[1] /root/workspace/mao/tests/redtest.s
# /root/workspace/mao/tests/../bin/mao-x86_64-linux --mao=-T --mao=-v --mao=-s --mao=READ=create_anonymous[1]:REDTEST=trace[1]=ASM=o[../tests/redtest.mao.s] /root/workspace/mao/tests/redtest.s