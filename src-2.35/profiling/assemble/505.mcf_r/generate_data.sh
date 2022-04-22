#!/bin/bash

# gcc inverse_matrix.c -g -pg -o inverse_matrix.gcc.out -lm
# clang-9 inverse_matrix.c -g -pg -o inverse_matrix.clang.out -lm
# ./inverse_matrix.gcc72.out  10
# gprof -p -q ./inverse_matrix.gcc.out > profile.txt

#echo "perf gcc&clang"
#aarch64-linux-gnu-gcc inverse_matrix.c -o inverse_matrix.gcc.out -lm -static -g
#clang-9 inverse_matrix.c -g -o inverse_matrix.clang.out -lm --target=aarch64-linux-gnu -static -g
##perf stat qemu-aarch64 ./inverse_matrix.clang.out 10
##perf stat qemu-aarch64 ./inverse_matrix.gcc.out 10
##perf record -g -F 99 qemu-aarch64 ./inverse_matrix.clang.out 10
#perf record -g -e cpu-cycles,instructions -o perf.clang.data qemu-aarch64 ./inverse_matrix.clang.out 10
#perf record -g -e cpu-cycles,instructions -o perf.gcc.data qemu-aarch64 ./inverse_matrix.gcc.out 10
#perf report -g folded,count -n --stdio -t , -i perf.clang.data >perf.clang.txt
#perf report -g folded,count -n --stdio -t , -i perf.gcc.data >perf.gcc.txt
#
#echo "generate asm"
#aarch64-linux-gnu-gcc inverse_matrix.c -g -o inverse_matrix.gcc.s -S
#clang-9 inverse_matrix.c -g -o inverse_matrix.clang.s -S --target=aarch64-linux-gnu


echo "****** perf gcc&clang ******"
#gcc inverse_matrix.c -o inverse_matrix.gcc.out -lm -g
#clang inverse_matrix.c -g -o inverse_matrix.clang.out -lm  -g
#perf stat ./inverse_matrix.clang.out 10
#perf stat ./inverse_matrix.gcc.out 10
#perf record -g -F 99 ./inverse_matrix.clang.out 10

OPTION="20 reference.dat 0 1 ../data/test/input/100_100_130_cf_a.of"

perf record -g -e cpu-cycles,instructions -o perf.clang.data ./a.clang.out ${OPTION}
perf record -g -e cpu-cycles,instructions -o perf.gcc.data ./a.gcc.out ${OPTION}
perf report -g folded,count -n --stdio -t , -i perf.clang.data >perf.clang.txt
perf report -g folded,count -n --stdio -t , -i perf.gcc.data >perf.gcc.txt

echo "****** generate asm ******"
gcc lbm.c  -o lbm.gcc.s -S
gcc main.c  -o main.gcc.s -S
clang lbm.c  -o lbm.clang.s -S -fno-integrated-as
clang main.c  -o main.clang.s -S -fno-integrated-as
