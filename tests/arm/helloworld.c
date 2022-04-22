#include <stdio.h>
int main()
{
    int a, b;
    a=0;
    b=1;
    a=a+b;
    printf("hello!%d\n",a);
    return 0;
}

// aarch64-linux-gnu-gcc -o helloworld.s -S helloworld.c
// aarch64-linux-gnu-gcc -static -o ./tests/arm/helloworld.o ./tests/arm/helloworld.c
// qemu-aarch64 ./helloworld.o