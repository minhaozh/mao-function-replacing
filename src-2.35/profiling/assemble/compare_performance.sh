#!/bin/bash

COLLECT_CLANG=clang-9
CLANG_FLAGS="-lm  --target=aarch64-linux-gnu"
OUTPUT_DIR=output
GCC_FLAGS=-lm
PROGRAM_INPUT=8
USE_CROSS_COMPILE=0

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

echo "****** invoking mao ******"
../../../bin/mao-aarch64-none-linux    \
--mao=-T    \
--mao=-v    \
--mao=ASM=o[output/output.merge_bef.gcc.s]    \
--mao=MergeFunction=i[/GPUFS/nsccgz_yfdu_16/gta/mao/src-2.35/profiling/assemble/inverse_matrix.clang.s]    \
--mao=ASM=o[output/output.merge_aft.gcc_clang.s]    \
/GPUFS/nsccgz_yfdu_16/gta/mao/src-2.35/profiling/assemble/inverse_matrix.gcc.s

echo "****** compiling ******"
mkdir -p ${OUTPUT_DIR}/obj
#  aarch64-linux-gnu-gcc output/output.merge_aft.gcc_clang.s -o output/obj/output.merge_aft.gcc_clang.out -static -lm
${COLLECT_GCC} inverse_matrix.gcc.s -o ${OUTPUT_DIR}/obj/output.origin.gcc.out ${GCC_FLAGS} ${CROSSCOMPILE_FLAGS}
${COLLECT_GCC} inverse_matrix.clang.s -o ${OUTPUT_DIR}/obj/output.origin.clang.out ${GCC_FLAGS} ${CROSSCOMPILE_FLAGS}
${COLLECT_GCC} ${OUTPUT_DIR}/output.merge_bef.gcc.s -o ${OUTPUT_DIR}/obj/output.merge_bef.gcc.out ${GCC_FLAGS} ${CROSSCOMPILE_FLAGS}
${COLLECT_GCC} ${OUTPUT_DIR}/output.merge_aft.gcc_clang.s -o ${OUTPUT_DIR}/obj/output.merge_aft.gcc_clang.out ${GCC_FLAGS} ${CROSSCOMPILE_FLAGS}

echo "****** perf ******"
rm -f ${OUTPUT_DIR}/perf_result.txt
(perf stat ${QEMU} ${OUTPUT_DIR}/obj/output.origin.gcc.out ${PROGRAM_INPUT}) >> ${OUTPUT_DIR}/perf_result.txt
(perf stat ${QEMU} ${OUTPUT_DIR}/obj/output.origin.clang.out ${PROGRAM_INPUT}) >> ${OUTPUT_DIR}/perf_result.txt
(perf stat ${QEMU} ${OUTPUT_DIR}/obj/output.merge_bef.gcc.out ${PROGRAM_INPUT}) >> ${OUTPUT_DIR}/perf_result.txt
(perf stat ${QEMU} ${OUTPUT_DIR}/obj/output.merge_aft.gcc_clang.out ${PROGRAM_INPUT}) >> ${OUTPUT_DIR}/perf_result.txt
