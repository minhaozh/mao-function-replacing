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
~/gta/mao/bin/mao-aarch64-none-linux    \
--mao=-T    \
--mao=-v    \
--mao=ASM=o[output/lbm.merge_bef.gcc.s]    \
--mao=MergeFunction=i[/GPUFS/nsccgz_yfdu_16/gta/mao/src-2.35/profiling/assemble/519.lbm_r/src/lbm.clang.s]    \
--mao=ASM=o[output/lbm.merge_aft.gcc_clang.s]    \
lbm.gcc.s

~/gta/mao/bin/mao-aarch64-none-linux    \
--mao=-T    \
--mao=-v    \
--mao=ASM=o[output/main.merge_bef.gcc.s]    \
--mao=MergeFunction=i[/GPUFS/nsccgz_yfdu_16/gta/mao/src-2.35/profiling/assemble/519.lbm_r/src/main.clang.s]    \
--mao=ASM=o[output/main.merge_aft.gcc_clang.s]    \
main.gcc.s
