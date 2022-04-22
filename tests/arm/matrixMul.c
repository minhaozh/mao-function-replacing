#include<stdio.h>

int main()
{
    int a[3][2] = {2,3,4,5,3,5};
    int b[2][3] = {1,2,3,4,5,6};
    int c[3][3];
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            c[i][j] = 0;
            for (int k = 0; k < 2; k++)
                c[i][j] += a[i][k] * b[k][j];
        }
    }

    printf("矩阵1与矩阵2相乘的结果为:\n");
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            printf("%d\t", c[i][j]);
        }
        printf("\n");
    }
    return 0;
}

// aarch64-linux-gnu-gcc -o ./matrixMul.s -S ./matrixMul.c
// aarch64-linux-gnu-gcc -static -o ./matrixMul.o ./matrixMul.c
// qemu-aarch64 ./matrixMul.o
//  aarch64-linux-gnu-gcc -static -o /home/getianao/CLionProjects/mao2/src-2.35/output/matrixMul.o /home/getianao/CLionProjects/mao2/src-2.35/output/output.s

