#include<stdio.h>
int fun(int n)      //n代表第几项。特别指出：0是第0项，不是第1项。
{
    if (n <= 1)
        return n;
    else
        return fun(n-1) + fun(n-2);
}

int main()
{
    int n=10;
    //int *a = (int *)malloc((n+1)*sizeof(int));//如需存储，使用动态内存分配n+1个空间进行存储
    int i;
    for (i = 0; i < n+1; i++)         //输出所有项
    {
        printf("%d, ", fun(i));
        if (i != 0 && i%5 == 0)     //每五项进行一次换行（第一行多一个第0项）
            printf("\n");
    }
    printf("第 %d 项是：%d\n", n, fun(n)); //输出要求的项
    return 0;
}

// aarch64-linux-gnu-gcc -o ./fibonacci.s -S ./fibonacci.c
// aarch64-linux-gnu-gcc -static -o ./fibonacci.o ./fibonacci.c
// qemu-aarch64 ./fibonacci.o
// aarch64-linux-gnu-gcc -static -o /home/getianao/CLionProjects/mao2/src-2.35/output/matrixMul.o /home/getianao/CLionProjects/mao2/src-2.35/output/output.s