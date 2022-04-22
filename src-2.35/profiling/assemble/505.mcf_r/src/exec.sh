#!/bin/bash

COLLECT_CLANG=clang-9
CLANG_FLAGS="-lm  --target=aarch64-linux-gnu"
OUTPUT_DIR=output
GCC_FLAGS=-lm
PROGRAM_INPUT="300 reference.dat 0 1 ../data/train/input/100_100_130_cf_b.of"
USE_CROSS_COMPILE=0


echo ${OPTION2}
if [ ${USE_CROSS_COMPILE} -eq 0 ]
then

  COLLECT_GCC=gcc
  CROSSCOMPILE_FLAGS=
  QEMU=
else
  COLLECT_GCC=aarch64-linux-gnu-gcc
  CROSSCOMPILE_FLAGS=-static
  QEMU=qemu-aarch64
fi



echo "****** compiling ******"
mkdir -p ${OUTPUT_DIR}/obj
#  aarch64-linux-gnu-gcc output/output.merge_aft.gcc_clang.s -o output/obj/output.merge_aft.gcc_clang.out -static -lm

echo "gcc:"
${COLLECT_GCC} main.gcc.s lbm.gcc.s -o ${OUTPUT_DIR}/obj/output.gcc.out ${GCC_FLAGS} ${CROSSCOMPILE_FLAGS}
echo "clang"
${COLLECT_GCC} main.clang.s lbm.clang.s -o ${OUTPUT_DIR}/obj/output.clang.out ${GCC_FLAGS} ${CROSSCOMPILE_FLAGS}
echo "merge_bef.gcc"
${COLLECT_GCC} ${OUTPUT_DIR}/main.merge_bef.gcc.s ${OUTPUT_DIR}/lbm.merge_bef.gcc.s -o ${OUTPUT_DIR}/obj/output.merge_bef.gcc.out ${GCC_FLAGS} ${CROSSCOMPILE_FLAGS}
echo "merge_aft.gcc_clang"
${COLLECT_GCC} ${OUTPUT_DIR}/main.merge_aft.gcc_clang.s ${OUTPUT_DIR}/lbm.merge_aft.gcc_clang.s -o ${OUTPUT_DIR}/obj/output.merge_aft.gcc_clang.out ${GCC_FLAGS} ${CROSSCOMPILE_FLAGS}

echo "****** perf ******"
rm -f ${OUTPUT_DIR}/perf_result.txt

# OPTION="20 reference.dat 0 1 ../data/test/input/100_100_130_cf_a.of"
echo  ${CLANG_FLAGS}
(perf stat ${QEMU} ${OUTPUT_DIR}/obj/output.gcc.out  ${PROGRAM_INPUT}) >> ${OUTPUT_DIR}/perf_result.txt
(perf stat ${QEMU} ${OUTPUT_DIR}/obj/output.clang.out  ${PROGRAM_INPUT}) >> ${OUTPUT_DIR}/perf_result.txt
(perf stat ${QEMU} ${OUTPUT_DIR}/obj/output.merge_bef.gcc.out  ${PROGRAM_INPUT}) >> ${OUTPUT_DIR}/perf_result.txt
(perf stat ${QEMU} ${OUTPUT_DIR}/obj/output.merge_aft.gcc_clang.out  ${PROGRAM_INPUT}) >> ${OUTPUT_DIR}/perf_result.txt
