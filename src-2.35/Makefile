OS=Linux
# TARGET=x86_64-linux
TARGET=aarch64-none-linux
DEVPREFIX=
LOCALEDIR=/usr/share/locale
BINUTILSRC=../binutils-2.35
BINUTILOBJ=$(BINUTILSRC)-obj-$(TARGET)
PYTHON=../python-2.5.4
PYTHONLIB=$(PYTHON)/usr/local/lib/python2.5/config/libpython2.5.a
PYTHONINCL=/usr/local/include/python2.5
EXTRALIBS=

ifeq ($(OS),Linux)
 PYTHONLDOPTS=-Xlinker -export-dynamic 
 DYNFLAGS=-fPIC -shared
 DYNLIBEXT=so
else
 PYTHONLDOPTS=
 DYNFLAGS=-fPIC -dynamiclib -undefined dynamic_lookup
 DYNLIBEXT=dylib
endif

# disable PYTHON integration for now
PYTHONLIB=
PYTHONINCL=
PYTHONLDOPTS=

LIBZ=-lz
OBJDIR=../obj-$(TARGET)
BINDIR=../bin
HEADERDIR=../include
CC=gcc

# Allow users to set this SRCDIR, to build outside of the source directory.
SRCDIR=.
VPATH=$(SRCDIR)
PLUGINSRC=plugins
PROFILINGSRC=profiling

CCEXTRAFLAGS=-Xlinker --unresolved-symbols=ignore-in-shared-libs -fexceptions
CFLAGS=						\
	-D_GNU_SOURCE				\
	-I.					\
	-I$(OBJDIR)				\
	-I$(BINUTILOBJ)/gas 			\
	-I$(BINUTILSRC)/gas 			\
	-I$(BINUTILOBJ)/bfd			\
	-I$(BINUTILSRC)/bfd			\
	-I$(BINUTILOBJ)/gas/config		\
	-I$(BINUTILSRC)/gas/config		\
	-I$(BINUTILOBJ)				\
	-I$(BINUTILSRC)				\
	-I$(BINUTILSRC)/include			\
	-I$(BINUTILOBJ)/include			\
    -I$(BINUTILSRC)/opcodes			\
    -I$(BINUTILOBJ)/opcodes			\
    -I$(BINUTILSRC)/include/opcode			\
    -I$(BINUTILOBJ)/include/opcode			\
    -I$(PROFILINGSRC)				\
	-DLOCALEDIR="\"$(LOCALEDIR)\""		\
	-DHAVE_DECL_BASENAME=1                  \
	-g -O0 -Wno-narrowing -fno-exceptions -Wno-unused-function

MAKEDEPEND=$(CC) -MM $(CFLAGS) $(CCEXTRAFLAGS) -o $(patsubst %.o,%.P,$@) $<

GAS_SRC=					\
	$(BINUTILSRC)/gas/app.c			\
	$(BINUTILSRC)/gas/atof-generic.c	\
	$(BINUTILSRC)/gas/compress-debug.c	\
	$(BINUTILSRC)/gas/cond.c		\
	$(BINUTILSRC)/gas/depend.c		\
	$(BINUTILSRC)/gas/ecoff.c		\
	$(BINUTILSRC)/gas/ehopt.c		\
	$(BINUTILSRC)/gas/flonum-copy.c		\
	$(BINUTILSRC)/gas/flonum-konst.c	\
	$(BINUTILSRC)/gas/flonum-mult.c		\
	$(BINUTILSRC)/gas/frags.c		\
	$(BINUTILSRC)/gas/listing.c		\
	$(BINUTILSRC)/gas/hash.c		\
	$(BINUTILSRC)/gas/input-file.c		\
	$(BINUTILSRC)/gas/input-scrub.c		\
	$(BINUTILSRC)/gas/messages.c		\
	$(BINUTILSRC)/gas/macro.c		\
	$(BINUTILSRC)/gas/output-file.c		\
	$(BINUTILSRC)/gas/remap.c		\
	$(BINUTILSRC)/gas/sb.c			\
	$(BINUTILSRC)/gas/stabs.c		\
	$(BINUTILSRC)/gas/subsegs.c		\
	$(BINUTILSRC)/gas/write.c

GAS_CONFIG_SRC=					\
	$(BINUTILSRC)/gas/config/atof-ieee.c

OPCODES_SRC=					\
	$(BINUTILSRC)/opcodes/aarch64-opc.c \
	$(BINUTILSRC)/opcodes/aarch64-opc-2.c \
	$(BINUTILSRC)/opcodes/aarch64-asm.c \
	$(BINUTILSRC)/opcodes/aarch64-asm-2.c \
	$(BINUTILSRC)/opcodes/aarch64-dis.c \
	$(BINUTILSRC)/opcodes/aarch64-dis-2.c \

CSRCS=						\
	as.c					\
	read.c					\
	tc-aarch64.c				\
	dwarf2dbg.c				\
	dw2gencfi.c				\
	obj-elf.c				\
	expr.c					\
	symbols.c

CCSRCS=						\
	ir.cc					\
	mao.cc					\
	MaoDefs.cc				\
	MaoDebug.cc				\
	MaoEntry.cc				\
	MaoFunction.cc				\
	MaoOpcodes.cc				\
	MaoOptions.cc				\
	MaoPasses.cc				\
	MaoPlugin.cc				\
	MaoSection.cc				\
	MaoUnit.cc				\
	MaoUtil.cc				\
	MaoDataFlow.cc                          \
	SymbolTable.cc          \
	$(PROFILINGSRC)/profiling.cc		\
	$(PROFILINGSRC)/spilt_utils.cc

PLUGIN_CCSRCS=
# 	$(PLUGINSRC)/MaoAddAdd.cc		\
# 	$(PLUGINSRC)/MaoAdd2Inc.cc		\
# 	$(PLUGINSRC)/MaoBackBranchAlign.cc	\
# 	$(PLUGINSRC)/MaoBranchSeparator.cc	\
# 	$(PLUGINSRC)/MaoDCE.cc			\
# 	$(PLUGINSRC)/MaoEnableFunctionHijacking.cc \
# 	$(PLUGINSRC)/MaoInc2Add.cc		\
# 	$(PLUGINSRC)/MaoInsertPrefNta.cc	\
# 	$(PLUGINSRC)/MaoLoop16.cc		\
# 	$(PLUGINSRC)/MaoMissDisp.cc		\
# 	$(PLUGINSRC)/MaoNopinizer.cc		\
# 	$(PLUGINSRC)/MaoNopKiller.cc		\
# 	$(PLUGINSRC)/MaoPrefAlias.cc		\
# 	$(PLUGINSRC)/MaoPrefetchNta.cc		\
# 	$(PLUGINSRC)/MaoRatFinder.cc		\
# 	$(PLUGINSRC)/MaoRedundantTestElim.cc	\
# 	$(PLUGINSRC)/MaoRedundantMemMove.cc	\
# 	$(PLUGINSRC)/MaoScheduler.cc		\
# 	$(PLUGINSRC)/MaoTestDF.cc		\
# 	$(PLUGINSRC)/MaoTestPlugin.cc		\
# 	$(PLUGINSRC)/MaoUOpsFuse.cc		\
# 	$(PLUGINSRC)/MaoZee.cc			\
#	$(PLUGINSRC)/MaoInstructionBuilder.cc	


PLUGINS=
#     MaoAddAdd				\
# 	MaoAdd2Inc				\
# 	MaoBackBranchAlign			\
# 	MaoBranchSeparator	  		\
# 	MaoDCE					\
# 	MaoEnableFunctionHijacking		\
# 	MaoInsertPrefNta			\
# 	MaoInc2Add				\
# 	MaoLoop16				\
# 	MaoMissDisp				\
# 	MaoNopinizer				\
# 	MaoNopKiller				\
# 	MaoPrefAlias				\
# 	MaoPrefetchNta				\
# 	MaoRatFinder				\
# 	MaoRedundantTestElim			\
# 	MaoRedundantMemMove			\
# 	MaoScheduler				\
# 	MaoTestDF				\
# 	MaoTestPlugin				\
# 	MaoUOpsFuse				\
# 	MaoZee					\
#	MaoInstructionBuilder

# ../binutils-2.22/gas/*.c -> ../obj-x86_64-linux/*.o
GAS_OBJS=$(patsubst %.c,$(OBJDIR)/%.o,$(notdir $(GAS_SRC)))
# ../binutils-2.22/gas/config/atof-ieee.c -> ../obj-x86_64-linux/*.o
GAS_CONFIG_OBJS=$(patsubst %.c,$(OBJDIR)/%.o,$(notdir $(GAS_CONFIG_SRC)))
# ../binutils-2.22/opcodes/i386-opc.c -> ../obj-x86_64-linux/*.o
OPCODES_OBJS=$(patsubst %.c,$(OBJDIR)/%.o,$(notdir $(OPCODES_SRC)))
BINUTILS_OBJS=$(GAS_OBJS) $(GAS_CONFIG_OBJS) $(OPCODES_OBJS)

# ./plugins/*.cc -> ../obj-x86_64-linux/*.o
PLUGIN_OBJS=$(patsubst %.cc,$(OBJDIR)/%.o,$(notdir $(PLUGIN_CCSRCS)))
# ../bin/*-x86_64-linux.so
PLUGIN_TARGETS=$(patsubst %,$(BINDIR)/%-$(TARGET).$(DYNLIBEXT),$(PLUGINS))

# binutils和src里需要生成*.o文件
OBJS=							\
	$(BINUTILS_OBJS)				\
	$(patsubst %.c,$(OBJDIR)/%.o,$(CSRCS))		\
	$(patsubst %.cc,$(OBJDIR)/%.o,$(CCSRCS))
# src里生成的*.d文件
CDEPS=$(patsubst %.c,$(OBJDIR)/%.d,$(CSRCS))
CCDEPS=$(patsubst %.cc,$(OBJDIR)/%.d,$(CCSRCS))
# src/plugins里生成的*.d文件
PLUGINDEPS=$(patsubst %.cc,$(OBJDIR)/%.d,$(PLUGIN_CCSRCS))
# src所有*.d文件
DEPS=$(CDEPS) $(CCDEPS) $(PLUGINDEPS)

# 默认make任务
# all有两个目标：一个是标签，一个是文件
all: mao-$(DEVPREFIX)$(TARGET) $(PLUGIN_TARGETS)

# step 5.4
# src/*.c编译目标文件/obj-x86_64-linux/*.o
# $(OBJS)：src中c条件
# C source rule
$(OBJDIR)/%.o : %.c stamp-obj-$(TARGET) $(OBJDIR)/gen-opcodes.h
	@$(MAKEDEPEND) -MQ $@;					\
	cp $(OBJDIR)/$*.P $(OBJDIR)/$*.d;			\
	sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//'	\
	    -e '/^$$/ d' -e 's/$$/ :/' -e 's/^ *//'		\
            < $(OBJDIR)/$*.P >> $(OBJDIR)/$*.d;			\
	rm -f $(OBJDIR)/$*.P
	$(CC) $(CFLAGS) -c -o $@ $<

# step 6
# $(OBJS)：src中cpp条件
# C++ source rule
$(OBJDIR)/%.o : %.cc stamp-obj-$(TARGET) $(OBJDIR)/gen-opcodes.h
	@$(MAKEDEPEND) -MQ $@;					\
	cp $(OBJDIR)/$*.P $(OBJDIR)/$*.d;			\
	sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//'	\
	    -e '/^$$/ d' -e 's/$$/ :/' -e 's/^ *//'		\
            < $(OBJDIR)/$*.P >> $(OBJDIR)/$*.d;			\
	rm -f $(OBJDIR)/$*.P
	$(CC) $(CFLAGS) $(CCEXTRAFLAGS) -c -o $@ $<

# step 2
# Specal cases required to avoid circular dependenies sicne GenOpCodes
# depends on these.
# 先编MaoDebug.o防止GenOpCodes中的循环依赖
$(OBJDIR)/MaoDebug.o : $(SRCDIR)/MaoDebug.cc stamp-obj-$(TARGET) 
	$(CC) $(CFLAGS) $(CCEXTRAFLAGS) -c -o $@ $(SRCDIR)/MaoDebug.cc

$(OBJDIR)/MaoOpcodes.o : $(SRCDIR)/MaoOpcodes.cc $(OBJDIR)/gen-opcodes.h stamp-obj-$(TARGET)
	$(CC) $(CFLAGS) $(CCEXTRAFLAGS) -c -o $@ $<


# Plugin source rule
$(PLUGIN_OBJS) : $(OBJDIR)/%.o : $(PLUGINSRC)/%.cc stamp-obj-$(TARGET) $(OBJDIR)/gen-opcodes.h
	@$(MAKEDEPEND) -MQ $@;					\
	cp $(OBJDIR)/$*.P $(OBJDIR)/$*.d;			\
	sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//'	\
	    -e '/^$$/ d' -e 's/$$/ :/' -e 's/^ *//'		\
            < $(OBJDIR)/$*.P >> $(OBJDIR)/$*.d;			\
	rm -f $(OBJDIR)/$*.P
	$(CC) $(CFLAGS) $(CCEXTRAFLAGS) -fPIC -c -o $@ $< 

# $(OBJS)：$(BINUTILS_OBJS)的条件
# step 5.1
# ../binutils-2.22/gas/*.c编译目标文件/obj-x86_64-linux/*.o
$(GAS_OBJS) : $(OBJDIR)/%.o : $(BINUTILSRC)/gas/%.c
	$(CC) $(CFLAGS) -c -o $@ $<
# step 5.2
# ../binutils-2.22/gas/config/atof-ieee.c编译目标文件/obj-x86_64-linux/*.o
$(GAS_CONFIG_OBJS) : $(OBJDIR)/%.o : $(BINUTILSRC)/gas/config/%.c
	$(CC) $(CFLAGS) -c -o $@ $<
# step 5.3
# ../binutils-2.22/opcodes/i386-opc.c编译目标文件/obj-x86_64-linux/*.o
$(OPCODES_OBJS) : $(OBJDIR)/%.o : $(BINUTILSRC)/opcodes/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

# step 3.1
# 直接编$(OBJDIR)/GenOpcodes
$(OBJDIR)/GenOpcodes: stamp-obj-$(TARGET) $(SRCDIR)/GenOpcodes.cc $(SRCDIR)/MaoDebug.h $(OBJDIR)/MaoDebug.o $(SRCDIR)/MaoDefs.h $(SRCDIR)/MaoDefs.tbl $(SRCDIR)/MaoUses.tbl $(SRCDIR)/MaoUtil.h $(SRCDIR)/Makefile
	mkdir -p $(OBJDIR)
	mkdir -p $(OBJDIR)/$(PROFILINGSRC)
	$(CC) $(CFLAGS) $(CCEXTRAFLAGS) $(OBJDIR)/MaoDebug.o -o $(OBJDIR)/GenOpcodes $(SRCDIR)/GenOpcodes.cc -lstdc++

# step 3.2
# GenOpcodes assumes that the names are sorted in the input. As of binutils 2.22 this not true,
# so we manually sort the file before processing it.
$(OBJDIR)/aarch64-opc.tbl.sorted: stamp-obj-$(TARGET) ./opcode/aarch64-opc.tbl
	mkdir -p $(OBJDIR)
	sort ./opcode/aarch64-opc.tbl > $(OBJDIR)/aarch64-opc.tbl.sorted

# step 3.3
# gen-opcodes [-p outputpath] optable-file regtable-file sideeffect-file
$(OBJDIR)/gen-opcodes.h: $(OBJDIR)/GenOpcodes $(OBJDIR)/aarch64-opc.tbl.sorted
	$(OBJDIR)/GenOpcodes -p $(OBJDIR) $(OBJDIR)/aarch64-opc.tbl.sorted $(BINUTILSRC)/opcodes/i386-reg.tbl $(SRCDIR)/MaoDefs.tbl $(SRCDIR)/MaoUses.tbl

# 标签"mao-$(DEVPREFIX)$(TARGET)"指向“bin/mao-x86_64-linux”文件
mao-$(DEVPREFIX)$(TARGET): $(BINDIR)/mao-$(DEVPREFIX)$(TARGET)

# step 7
# bin/mao-x86_64-linux生成
# -L库文件 libbfd：二进制文件描述器
$(BINDIR)/mao-$(DEVPREFIX)$(TARGET): stamp-bin $(OBJDIR)/gen-opcodes.h $(OBJS)
	$(CC) $(CFLAGS) $(PYTHONLDOPTS) -rdynamic -o $(BINDIR)/mao-$(DEVPREFIX)$(TARGET) $(OBJS) -L$(BINUTILOBJ)/libiberty -L$(BINUTILOBJ)/bfd -lbfd -liberty -lstdc++ $(LIBZ) $(PYTHONLIB) -lpthread -ldl -lutil -lm $(EXTRALIBS)

mao: all
	ln -s $(BINDIR)/mao-$(DEVPREFIX)$(TARGET) $(BINDIR)/mao

# step 8
# bin/*.so生成
$(PLUGIN_TARGETS) : $(BINDIR)/%-$(TARGET).$(DYNLIBEXT) : $(OBJDIR)/%.o stamp-bin
	$(CC) $(CFLAGS) $(DYNFLAGS) -o $@ $< -lm

.PHONY : clean allclean all mao-$(DEVPREFIX)$(TARGET) headers mao


# step 0
stamp-bin:
	test -d $(BINDIR) || mkdir -p $(BINDIR)
	touch stamp-bin

# step 1
stamp-obj-$(TARGET):
	test -d $(OBJDIR) || mkdir -p $(OBJDIR)
	touch stamp-obj-$(TARGET)

clean : 
	-rm -rf $(OBJDIR) stamp-obj-$(TARGET)
	-rm -f $(BINDIR)/mao-$(DEVPREFIX)$(TARGET) $(PLUGIN_TARGETS) $(BINDIR)/mao

allclean : 
	-rm -rf ../obj-*
	-rm -rf $(BINDIR)
	-rm -f stamp-bin
	-rm -f stamp-obj-*

-include $(DEPS)
