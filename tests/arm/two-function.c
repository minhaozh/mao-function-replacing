int foo(int i) {
    return i+2;
}

int foo2(int i) {
    return i+4;
}


int main(){
    return   foo(1)+foo2(2);
}

//aarch64-linux-gnu-gcc -static /home/getianao/CLionProjects/mao2/tests/arm/two-function.c -S -o  /home/getianao/CLionProjects/mao2/tests/arm/two-function.s
