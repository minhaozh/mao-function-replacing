ld里的--no-relax选项[Linker Script Format - Documentation](https://docs.adacore.com/live/wave/binutils-stable/html/ld/ld.html)

链接器在解析地址的时候会做一些优化：松散地址模式、合成新指令、选择更短的指令、合成常量

> *relaxing address modes*
>
> ld finds all `jsr` and `jmp` instructions whose targets are within eight bits, and turns them into eight-bit program-counter relative `bsr` and `bra` instructions, respectively.

*Redundant Zero Extension:*

当向一个8/16位的寄存器写数据时，这个64位寄存器的高位不会改变。但是当向一个32位的寄存器写数据时，剩下的32位将会被清零。



## mao代码编译流程

编`/GenOpcodes`

生成有序的`i386-opc.tbl`

`GenOpcodes`使用`../obj-x86_64-linux/i386-opc.tbl.sorted`、`../binutils-2.22/opcodes/i386-reg.tbl`、`./MaoDefs.tbl`、`./MaoUses.tbl`在`../obj-x86_64-linux`目录下生成`gen-def.h`、`gen-opcodes-table.h`、`gen-opcodes.h`、`gen-uses.h`
操作数表、寄存器表、副作用表

```
/root/workspace/mao/tests/../bin/mao-x86_64-linux --mao=-v --mao=-T --mao=-s --mao=--plugin=../bin/MaoAddAdd-x86_64-linux.so --mao=READ=create_anonymous[1] --mao=ADDADD=trace[2]:ASM=o[output/output.s] /root/workspace/mao/tests/addadd.s
```

--mao=会自动装载所有plugin
```
/root/workspace/mao/tests/../bin/mao-x86_64-linux --mao=-v --mao=-T --mao=-s  --mao=READ=create_anonymous[1] --mao=ADDADD=trace[2]:ASM=o[output/output.s] /root/workspace/mao/tests/addadd.s
```

集成到gcc，-B使gcc优先在这个目录寻找as，使用-Wa将选项传给as
```
gcc /root/workspace/mao/benchmarks/src/hello.c  -o /root/workspace/mao/benchmarks/test/hello -B/root/workspace/mao/scripts -Wa,--mao=READ=create_anonymous[1]

gcc --save-temps -o /root/workspace/mao/benchmarks/test/hello -B/root/workspace/mao/scripts -Wa,--save-temps,--mao==-T,--mao=-v,--mao=-s,--mao=READ=create_anonymous[1]:ZEE=trace /root/workspace/mao/benchmarks/src/hello.c
```

生成diff
```
diff -urpN binutils-2.35.orig/gas/config/  binutils-2.35/gas/config > patch
```

DefEntry用来保存opcode的读取信息


所有register会存在