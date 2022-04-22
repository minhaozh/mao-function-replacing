//
// Copyright 2008 Google Inc.
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, 5th Floor, Boston, MA  02110-1301, USA.



extern "C" {
#include "as.h"
}

#include <cstring>
#include <fstream>
#include <iostream>
#include <stdio.h>
#include <sstream>

#include "Mao.h"
#include "SymbolTable.h"

// Reference to a the mao_unit.
static MaoUnit *maounit_;
static MaoUnit *maounit_temp_;
static MaoUnit *maounit_mf_;

// Swith operations to Clang.
void switchUnitToMF() {
  maounit_temp_ = maounit_;
  maounit_ = maounit_mf_;
//   maounit_mf_ = maounit_temp_;
}

void restoreUnitFromMF() {
  maounit_mf_ = maounit_;
  maounit_ = maounit_temp_;
}
static enum bfd_reloc_code_real reloc_ = _dummy_first_bfd_reloc_code_real;

struct link_context_s					//Record where the processing insn is
{
	unsigned int line_number;
	char * filename;
};

static std::string quote_c_string(const char *c_str) {
  std::string str;
  str.append("\"");
  str.append(c_str);
  str.append("\"");
  return str;
}

static std::string quote_string_piece(const MaoStringPiece &piece) {
  std::string str;
  str.append("\"");
  str.append(piece.data, piece.length);
  str.append("\"");
  return str;
}

struct link_context_s get_link_context()
{
	struct link_context_s link_context;
  	unsigned int line_no;
  	const char *file;
  	// 拿到当前的logical_input_file和logical_input_line
  	file=as_where( &line_no);
  	link_context.line_number = line_no;
  	link_context.filename = const_cast <char*>(file);
  	return link_context;
};

static void link_directive_tail(DirectiveEntry::Opcode opcode, DirectiveEntry::OperandVector operands)
{
	struct link_context_s link_context = get_link_context();
	DirectiveEntry * directive = new DirectiveEntry(opcode, operands, link_context.line_number, NULL, maounit_);
	maounit_->AddEntry(directive, false);

	reloc_ = _dummy_first_bfd_reloc_code_real;				//QUES: What is this?
}


void link_insn(aarch64_instruction * insn, size_t SizeOfInsn, int code_flag, const char * line_verbatim)		//In Aarch64, insn's size doesn't change
{
	MAO_ASSERT(sizeof(aarch64_instruction) == SizeOfInsn);				//Aarch64_Insn_Size is const int var meaning size of aarch64's insn
	aarch64_instruction * i = insn;

	struct link_context_s link_context = get_link_context();
	MAO_ASSERT(maounit_);
	maounit_->AddEntry( new InstructionEntry(i, (enum flag_code) code_flag, link_context.line_number,
	                    line_verbatim, maounit_), true);		//Need to change the InstructionEntry class

	reloc_ = _dummy_first_bfd_reloc_code_real;		//QUES: What is this for?
}


void link_label( const char * name, const char * line_verbatim, int quotationFlag)		//QUES: in original code, it didn't add label into symbol table. why?
{
	//label has two kinds: 1.  .label:   2. data label before mnemonic in a insn

	SymbolTable * symbol_table = maounit_->GetSymbolTable();
	MAO_ASSERT(symbol_table);
	struct link_context_s link_context = get_link_context();
	MAO_ASSERT(maounit_);
	maounit_->AddEntry(new LabelEntry(name, link_context.line_number,
                       line_verbatim, maounit_, quotationFlag), true);

	//If we need to add label to the symbol table(like the comment in original code), what should we do?(which label? what info of label do we need?)

}

void link_section(int push, const char * section_name, struct MaoStringPiece arguments, bfd_boolean isSubsection)
{
	MAO_ASSERT(section_name);
	MAO_ASSERT(maounit_);
	if (push)	maounit_->PushSubSection();			//Sub-section?

	DirectiveEntry::OperandVector operands;
    if (!isSubsection)
	    operands.push_back(new DirectiveEntry::Operand(section_name));		//Init the operand with the current section

	if (arguments.length)												//arguments is the string character and it's len.  If its len is 0, it means nothing
	{
		operands.push_back(new DirectiveEntry::Operand(arguments));
	}
    if(push)
        link_directive_tail(DirectiveEntry::PUSHSECTION, operands);
    else if (isSubsection && strcmp(section_name, ".text") == 0)
        link_directive_tail(DirectiveEntry::TEXT_SECTION, operands);
    else if (isSubsection && strcmp(section_name, ".data") == 0)
        link_directive_tail(DirectiveEntry::DATA_SECTION, operands);
    else if (isSubsection && strcmp(section_name, ".bss") == 0)
        link_directive_tail(DirectiveEntry::BSS_SECTION, operands);
    else
        link_directive_tail(DirectiveEntry::SECTION, operands);				//what's the operand of SECTION?

}

void link_subsection_directive(int subsection_number)						//This only have section number without name of subsection
{	//QUES:So where is the name?
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(subsection_number));

	link_directive_tail(DirectiveEntry::SUBSECTION, operands);
}


void link_symbol(const char *name, enum SymbolVisibility symbol_visibility,
                 const char *line_verbatim) {
	// one of two things happens here.
	// If the symbol exists, then update its visibility.
	// If a symbol does not exists, then create a symbol, but
	// with an undefined section

	// Get table
	MAO_ASSERT(maounit_);
	SymbolTable *symbol_table = maounit_->GetSymbolTable();
	MAO_ASSERT(symbol_table);
	// Create symbol if needed
	if (!symbol_table->Exists(name)) {
		maounit_->AddSymbol(name);			//We dont have to
	}
	// Get symbol
	Symbol *symbol = symbol_table->Find(name);
	MAO_ASSERT(symbol);

	// Update symbol
	symbol->set_symbol_visibility(symbol_visibility);
}

void link_comm(const char *name, unsigned int common_size,
               unsigned int common_align, const char *line_verbatim) {
	//https://sourceware.org/binutils/docs/as/Comm.html#Comm
	//This is according to AS in GCC, no need to change
	MAO_ASSERT(name);
	MAO_ASSERT(maounit_);
	maounit_->AddCommSymbol(name, common_size, common_align);

	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(name));
	operands.push_back(new DirectiveEntry::Operand(common_size));
	operands.push_back(new DirectiveEntry::Operand(common_align));
	link_directive_tail(DirectiveEntry::COMM, operands);
}

// FIXME(@getianao): It's hard to link tls_common without invoking link_comm.
// It's unsafe to modify the entry and may cause unexpected error. But it's the only
// way i thought of.
void update_comm_entry(int comm_type){
    switch (comm_type) {
        case 1:
            DirectiveEntry* e = dynamic_cast<DirectiveEntry *>(maounit_->GetLastEntry());
            DirectiveEntry::OperandVector operands;
            operands.push_back(new DirectiveEntry::Operand(*(e->GetOperand(0)->data.str)));
            operands.push_back(new DirectiveEntry::Operand(e->GetOperand(1)->data.i));
            operands.push_back(new DirectiveEntry::Operand(e->GetOperand(2)->data.i));
            struct link_context_s link_context = get_link_context();
            DirectiveEntry *directive  = new DirectiveEntry(DirectiveEntry::TLS_COMMON, operands,
                                                            link_context.line_number, NULL, maounit_);
            maounit_->ReplaceLastEntry(directive);
    }
}

char is_whitespace(char c) {
	return (c == ' ' || c == '\t');
}


void link_type(symbolS *symbol, SymbolType symbol_type,
               const char *line_verbatim) {								//.type symbol symbol_type
	MAO_ASSERT(maounit_);
	SymbolTable *symbol_table = maounit_->GetSymbolTable();
	MAO_ASSERT(symbol_table);
	Symbol *mao_symbol = maounit_->FindOrCreateAndFindSymbol(S_GET_NAME(symbol));

	MAO_ASSERT(mao_symbol);
	mao_symbol->set_symbol_type(symbol_type);

	/*
	First, we need to get the pointer pointing to the target symbol in maounit->symbol_table
	and update its type
	Then, in order to put such a directive in entry list, need to init an operand to store it.
	symbol_type switch here is right, no need to change
	 */

	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(symbol));
	const char *type_name;
	switch (symbol_type) {
	case OBJECT_SYMBOL: type_name = "%object"; break;
	case UNIQUE_OBJECT_SYMBOL: type_name = "%gnu_unique_object"; break;
	case FUNCTION_SYMBOL: type_name = "%function"; break;
    case INDIRECT_FUNCTION_SYMBOL: type_name = "%gnu_indirect_function"; break;
	case NOTYPE_SYMBOL: type_name = "%notype"; break;
	case TLS_SYMBOL: type_name = "%tls_object"; break;
	case COMMON_SYMBOL: type_name = "%common"; break;
	case FILE_SYMBOL: MAO_ASSERT(false); return;
	case SECTION_SYMBOL: MAO_ASSERT(false); return;
	default: MAO_ASSERT(false); return;
	}
	operands.push_back(new DirectiveEntry::Operand(type_name));

	link_directive_tail(DirectiveEntry::TYPE, operands);
}

void link_size(const char *name, unsigned int size, const char *line_verbatim) {		//for .size name , expression
	MAO_ASSERT(name);
	MAO_ASSERT(maounit_);
	SymbolTable *symbol_table = maounit_->GetSymbolTable();
	MAO_ASSERT(symbol_table);
	Symbol *symbol = maounit_->FindOrCreateAndFindSymbol(name);
	MAO_ASSERT(symbol);
	symbol->set_size(size);
	return;

	//This should not be changed

}

void link_file_directive(const char *name, const int *filenum) {
	std::string quoted_name = quote_c_string(name);		//This is the filename

	DirectiveEntry::OperandVector operands;
	if (filenum != NULL) {
		operands.push_back(new DirectiveEntry::Operand(*filenum));		//Push the num first. The num only apears in DWARF5 version.
	}
	operands.push_back(new DirectiveEntry::Operand(quoted_name));
	link_directive_tail(DirectiveEntry::FILE, operands);

	//No need to change
}

void link_file_md5_directive(const char *dirname, const char *filename,
                             const int *filenum, const char *md5Str) {
    std::string quoted_dirname = quote_c_string(dirname);
    std::string quoted_filename = quote_c_string(filename);
    DirectiveEntry::OperandVector operands;
    operands.push_back(new DirectiveEntry::Operand(*filenum));
    operands.push_back(new DirectiveEntry::Operand(quoted_dirname));
    operands.push_back(new DirectiveEntry::Operand(quoted_filename));
    operands.push_back(new DirectiveEntry::Operand("md5"));
    operands.push_back(new DirectiveEntry::Operand(md5Str));
    link_directive_tail(DirectiveEntry::FILE, operands);
}

void link_global_directive(symbolS *symbol, int quotationFlag ) {
	DirectiveEntry::OperandVector operands;
	if(quotationFlag == 1)
        operands.push_back(new DirectiveEntry::Operand(symbol,1));
    else
        operands.push_back(new DirectiveEntry::Operand(symbol));
	link_directive_tail(DirectiveEntry::GLOBAL, operands);
	//No need to change
}

void link_local_directive(symbolS *symbol) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(symbol));
	link_directive_tail(DirectiveEntry::LOCAL, operands);

	//This assumes that symbol already exists in symbol_table
	//For ELF target, .lcomm dosen't accept alignment argument
	//.local and .comm can be combinned to define local aligned comm symbol
	//Seems dont need to change now
}

void link_weak_directive(symbolS *symbol) {
	//http://ps-2.kev009.com/wisclibrary/aix52/usr/share/man/info/en_US/a_doc_lib/aixassem/alangref/weak.htm
	//https://downloads.ti.com/docs/esd/SPNU118O/Content/SPNU118O_HTML/assembler_directives.html#IDsymdependdesc
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(symbol));
	link_directive_tail(DirectiveEntry::WEAK, operands);
	//But I wonder it makes the symbol visible for other module, shouldn't change its visibility in synbol_table?
}

void link_size_directive(symbolS *symbol, expressionS *expr) {
	//This uses exprS to express the size, unlike the link_size(int size)
	//The size in bytes is computed from expression which can make use of label arithmetic.
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(symbol));
	operands.push_back(new DirectiveEntry::Operand(expr));
	link_directive_tail(DirectiveEntry::SIZE, operands);
	//No need to change
}

void link_dc_directive(int size, int rva, expressionS *expr) {
	//What does these arguments mean?  .dc[size] expr
	//https://sourceware.org/binutils/docs/as/Dc.html#Dc
	//https://sourceware.org/binutils/docs/as/Word.html#Word
	DirectiveEntry::OperandVector operands;
    if(expr->X_op == O_big)
    {
        std::string bignumStr="";
        for(int i=0; i < expr->X_add_number;i++)
        {
            std::stringstream ioss;                       //定义字符串流
            std::string s_temp;                           //存放转化后字符
            ioss << std::hex <<  generic_bignum[i];       //以十六制形式输出
            ioss >> s_temp;
            if(s_temp.size()<4)
            {
                std::string s_0(4 - s_temp.size(), '0');      //位数不够则补0
                s_temp = s_0+s_temp;
            }
            bignumStr = s_temp + bignumStr;
        }
        bignumStr="0x" + bignumStr;
        struct MaoStringPiece description = {bignumStr.c_str(), bignumStr.length()};
        if (reloc_ != _dummy_first_bfd_reloc_code_real)
        {					//_dummy_first_bfd_reloc_code_real means?
            operands.push_back(new DirectiveEntry::Operand(description, reloc_));
            reloc_ = _dummy_first_bfd_reloc_code_real;
        }
        else
        {
            operands.push_back(new DirectiveEntry::Operand(description));
        }
    }
    else
    {
        if (reloc_ != _dummy_first_bfd_reloc_code_real)
        {                    //_dummy_first_bfd_reloc_code_real means?
            operands.push_back(new DirectiveEntry::Operand(expr, reloc_));
            reloc_ = _dummy_first_bfd_reloc_code_real;
        }
        else
        {
            operands.push_back(new DirectiveEntry::Operand(expr));
        }
    }

	DirectiveEntry::Opcode opcode;
	if (rva) {								//rva means?
		MAO_ASSERT(size == 4);
		opcode = DirectiveEntry::RVA;
	} else {
		switch (size) {						//size is transfered to int before
		case 1: opcode = DirectiveEntry::BYTE; break;
		case 2: opcode = DirectiveEntry::HWORD; break;
		case 4: opcode = DirectiveEntry::LONG; break;
		case 8: opcode = DirectiveEntry::QUAD; break;
		default: MAO_ASSERT(false); return;
		//if no suffix, it should be WORD(2) by default
		}
	}
	link_directive_tail(opcode, operands);
	//no need to change
	//It would be used in potable[] in read.c, including for .byte/dc/dc.b/dc.l/dc.w/hword/int/long/octa/quad/short/word
	//like in x86 the old one. So.. Just keep it
}

void link_string_directive(int bitsize, int append_zero,
                           MaoStringPiece value) {

	//We may expect to accept more than one string in double quote. Is this implemented upper layer?

	std::string quoted_value = quote_string_piece(value);

	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(quoted_value));

	DirectiveEntry::Opcode opcode;
	if (!append_zero) {
		MAO_ASSERT(bitsize == 8);
		opcode = DirectiveEntry::ASCII;
	} else {
		switch (bitsize) {
		case 8: opcode = DirectiveEntry::STRING8; break;
		case 16: opcode = DirectiveEntry::STRING16; break;
		case 32: opcode = DirectiveEntry::STRING32; break;
		case 64: opcode = DirectiveEntry::STRING64; break;
		default: MAO_ASSERT(false); return;
		}
	}
	link_directive_tail(opcode, operands);
	//No need to change
}

void link_leb128_directive(expressionS *expr, int sign) {
	DirectiveEntry::Opcode opcode = sign ? DirectiveEntry::SLEB128 :
	                                DirectiveEntry::ULEB128;
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(expr));
	link_directive_tail(opcode, operands);

	//This is used for DWARF debugging format output
	//No need to change
}

void link_align_directive(int align, int fill_len, int fill, int max) {
	//https://sourceware.org/binutils/docs/as/Align.html#Align
	//https://sourceware.org/binutils/docs/as/P2align.html#P2align
	//.align [abs-expr[, abs-expr[, abs-expr]]]
	//first abs-expr is alignment requirement
	//second abs-expr is fill value to be stored in padding bytes
	//third abs-expr is the max bytes skipped by align directive
	DirectiveEntry::Opcode opcode;

	switch (fill_len) {										//This is to specify the align directive
	case 0:
	case 1: opcode = DirectiveEntry::P2ALIGN; break;
	case 2: opcode = DirectiveEntry::P2ALIGNW; break;
	case 4: opcode = DirectiveEntry::P2ALIGNL; break;
	default: MAO_ASSERT(false); return;
	}

	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(align));
	if (fill_len)
		operands.push_back(new DirectiveEntry::Operand(fill));
	else
		operands.push_back(new DirectiveEntry::Operand());
	operands.push_back(new DirectiveEntry::Operand(max));
	link_directive_tail(opcode, operands);

	//https://developer.arm.com/documentation/dui0802/a/Directives-Reference/ALIGN
	//According to arm asm doc, ALIGN {expr{,offset{,pad{,padsize}}}}, up to 4 parameter
	//In s_align(), the parameter means different. QUES: Does it matter?

}

void link_space_directive(expressionS *size, expressionS *fill, int mult) {
	//This is not understood yet. QUES: Should we need to change it?
	DirectiveEntry::Opcode opcode;
	switch (mult) {
	case  0: opcode = DirectiveEntry::SPACE; break;
	case  1: opcode = DirectiveEntry::DS_B; break;
	case  2: opcode = DirectiveEntry::DS_W; break;
	case  4: opcode = DirectiveEntry::DS_L; break;
	case  8: opcode = DirectiveEntry::DS_D; break;
	case 12: opcode = DirectiveEntry::DS_X; break;
	default: MAO_ASSERT(false); return;
	}

	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(size));
	operands.push_back(new DirectiveEntry::Operand(fill));
	link_directive_tail(opcode, operands);
}

void link_float_space_directive(int float_type, int number, char* fill) {
    //This is not understood yet. QUES: Should we need to change it?
    DirectiveEntry::Opcode opcode;
    switch (float_type) {
        case  'd': opcode = DirectiveEntry::DCB_D; break;
        case  'f': opcode = DirectiveEntry::DCB_S; break;
        case  'x': opcode = DirectiveEntry::DCB_X; break;
        default: MAO_ASSERT(false); return;
    }
    DirectiveEntry::OperandVector operands;
    operands.push_back(new DirectiveEntry::Operand(number));
    operands.push_back(new DirectiveEntry::Operand(fill));
    link_directive_tail(opcode, operands);
}

void RegisterMaoUnit(MaoUnit *maounit,MaoUnit *maounit_mf) {		//Put it into the instance we use
	MAO_ASSERT(maounit);
	maounit_ = maounit;
	maounit_mf_ = maounit_mf;
}

void link_ident_directive(MaoStringPiece value) {
	DirectiveEntry::OperandVector operands;
	std::string quoted_value = quote_string_piece(value);
	operands.push_back(new DirectiveEntry::Operand(quoted_value));

	link_directive_tail(DirectiveEntry::IDENT, operands);
	//No need to change
}

void link_set_directive(symbolS *symbol, expressionS *expr) {
	// Link .set/.equ directives from gas
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(symbol));
	operands.push_back(new DirectiveEntry::Operand(expr));
	link_directive_tail(DirectiveEntry::SET, operands);

	//no need to change

}
/* 			These are not used in A64 	*/
void link_equiv_directive(symbolS *symbol, expressionS *expr) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(symbol));
	operands.push_back(new DirectiveEntry::Operand(expr));
	link_directive_tail(DirectiveEntry::EQUIV, operands);

	//no need to change
}

void link_eqv_directive(symbolS *symbol, expressionS *expr) {

	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(symbol));
	operands.push_back(new DirectiveEntry::Operand(expr));
	link_directive_tail(DirectiveEntry::EQV, operands);

	//no need to change
}

void link_weakref_directive(struct MaoStringPiece alias,
                            struct MaoStringPiece target) {
	// TODO(martint): handle weakref for symboltable

	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(alias));
	operands.push_back(new DirectiveEntry::Operand(target));
	link_directive_tail(DirectiveEntry::WEAKREF, operands);

	//no need to change

}

void link_arch_directive(struct MaoStringPiece description) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(description));
	link_directive_tail(DirectiveEntry::ARCH, operands);
	//no need to change
}

void link_linefile_directive(int line_number, struct MaoStringPiece filename,
                             int num_flags, int* flag) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(line_number));
	operands.push_back(new DirectiveEntry::Operand(filename));
	for (int i = 0; i < num_flags; i++) {
		operands.push_back(new DirectiveEntry::Operand(flag[i]));
	}
	link_directive_tail(DirectiveEntry::LINEFILE, operands);

	//QUES:what is this directive? Cant fine its info. Remains to see.
}

void link_line_directive(int line_number) {
    DirectiveEntry::OperandVector operands;
    operands.push_back(new DirectiveEntry::Operand(line_number));
    link_directive_tail(DirectiveEntry::LINE, operands);
}

void link_loc_directive(int file_number, int line_number, int column,
                        struct MaoStringPiece options[], int num_options) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(file_number));
	operands.push_back(new DirectiveEntry::Operand(line_number));
	operands.push_back(new DirectiveEntry::Operand(column));
	for (int i = 0; i < num_options; ++i) {
		operands.push_back(new DirectiveEntry::Operand(options[i]));
	}
	link_directive_tail(DirectiveEntry::LOC, operands);
	//QUES:Doesn't which directive it means, only knows it is in dwarf2
}

void link_allow_index_reg_directive() {
	DirectiveEntry::OperandVector operands;
	link_directive_tail(DirectiveEntry::ALLOW_INDEX_REG, operands);

	//The operands is NULL vector, and QUES: what is this?

}

void link_disallow_index_reg_directive() {
	DirectiveEntry::OperandVector operands;
	link_directive_tail(DirectiveEntry::DISALLOW_INDEX_REG, operands);

	//The operands is NULL vector, and QUES: what is this?
}

void link_org_directive(expressionS *expr, int fill) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(expr));
	operands.push_back(new DirectiveEntry::Operand(fill));
	link_directive_tail(DirectiveEntry::ORG, operands);
}

void link_float_directive(int float_type, struct MaoStringPiece value) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(value));
	DirectiveEntry::Opcode opcode;
	switch (float_type) {
	case 'd': opcode = DirectiveEntry::DC_D; break;
	case 'f': opcode = DirectiveEntry::DC_S; break;
	case 'x': opcode = DirectiveEntry::DC_X; break;
	case 'h': opcode = DirectiveEntry::FLOAT16; break;
	case 'b': opcode = DirectiveEntry::BFLOAT16; break;
	default: MAO_ASSERT(false); return;
	}
	link_directive_tail(opcode, operands);

	//Already to modify to adjust aarch64 float
}

void link_code_directive(int flag_code, char gcc) {
	DirectiveEntry::OperandVector operands;
	switch (flag_code) {
	case CODE_16BIT:
		//Put a ASSERT
		MAO_ASSERT(NULL);
		if (gcc)
			link_directive_tail(DirectiveEntry::CODE16GCC, operands);
		else
			link_directive_tail(DirectiveEntry::CODE16, operands);
		break;
	case CODE_32BIT:
		//Put a ASSERT
		MAO_ASSERT(NULL);
		MAO_ASSERT(!gcc);
		link_directive_tail(DirectiveEntry::CODE32, operands);
		break;
	case CODE_64BIT:
		MAO_ASSERT(!gcc);
		link_directive_tail(DirectiveEntry::CODE64, operands);
		break;
	default:
		MAO_ASSERT_MSG(false, "Unknown code-mode.");
		break;
	}

	//In A64 assembly, flag code should always be 64BITS,
}

void link_popsection_directive() {
	struct link_context_s link_context = get_link_context();
	maounit_->PopSubSection(link_context.line_number);
}


void link_previous_directive() {
	struct link_context_s link_context = get_link_context();
	maounit_->SetPreviousSubSection(link_context.line_number);
}

// This code makes it possible to catch relocations
// found in cons directives (.long, .byte etc). The relocation is
// parsed in the machine dependent code (tc-i386.h) and not visible
// in read.c where we link the directive itself. To solve this, link_cons_reloc
// is called from tc-i386.c before link_dc_directive is called in read.c. This
// way we can check in link_dc_directive if we should include a relocation.
void link_cons_reloc(enum bfd_reloc_code_real reloc) {
	reloc_ = reloc;

	//.byte/.long expr  QUES: Find the correspoding reloc directive in a64

}

void link_hidden_directive(struct MaoStringPiece symbol_name) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(symbol_name));
	link_directive_tail(DirectiveEntry::HIDDEN, operands);

	//no need to change

}

void link_fill_directive(expressionS *repeat, long size, long value) {
	//https://sourceware.org/binutils/docs/as/Fill.html#Fill
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(repeat));
	operands.push_back(new DirectiveEntry::Operand(size));
	operands.push_back(new DirectiveEntry::Operand(value));
	link_directive_tail(DirectiveEntry::FILL, operands);
	// no need to change
}

void link_struct_directive(long value) {
	DirectiveEntry::OperandVector operands;
	// ... the current section is actually the absolute section
	// from now on.
	// TODO(martint): Fix this bug. .struct does not actually
	// push anything on the sectionstack.
	maounit_->PushSubSection();
	operands.push_back(new DirectiveEntry::Operand(value));
	link_directive_tail(DirectiveEntry::STRUCT, operands);

	//No need to change
	//QUES: But this bug should be fixed?
}


void link_incbin_directive(struct MaoStringPiece filename, long skip,
                           long count) {
	DirectiveEntry::OperandVector operands;
	std::string quoted_filename = quote_string_piece(filename);
	operands.push_back(new DirectiveEntry::Operand(quoted_filename));
	operands.push_back(new DirectiveEntry::Operand(skip));  // 0 is default
	// A count of 0 is used in binutils 2.19 to mean the whole file. If it is
	// explicitly mentioned in the assembly, a warning is produced. Thus we
	// suppress that argument here.
	if (count != 0) {
		operands.push_back(new DirectiveEntry::Operand(count));
	}
	link_directive_tail(DirectiveEntry::INCBIN, operands);

	//no need to change
}

void link_symver_directive(struct MaoStringPiece name,
                           struct MaoStringPiece symvername) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(name));
	operands.push_back(new DirectiveEntry::Operand(symvername));
	link_directive_tail(DirectiveEntry::SYMVER, operands);

	//https://sourceware.org/binutils/docs/as/Symver.html#Symver
	//usage can include up to three @
	//no need to change
}

void link_loc_mark_labels_directive(long value) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(value));
	link_directive_tail(DirectiveEntry::LOC_MARK_LABELS, operands);
	//no need to change
}


//https://stackoverflow.com/questions/29527623/in-assembly-code-how-cfi-directive-works

void link_cfi_startproc_directive(char is_simple) {
	DirectiveEntry::OperandVector operands;
	if (is_simple) {
		operands.push_back(new DirectiveEntry::Operand("simple"));
	}
	link_directive_tail(DirectiveEntry::CFI_STARTPROC, operands);
	//no need to change
}
void link_cfi_endproc_directive() {
	DirectiveEntry::OperandVector operands;
	link_directive_tail(DirectiveEntry::CFI_ENDPROC, operands);
	//no need to change
}

void link_cfi_def_cfa_direcive(struct MaoStringPiece reg, long offset) {
	//take address from register and add offset to it.
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(reg));
	operands.push_back(new DirectiveEntry::Operand(offset));
	link_directive_tail(DirectiveEntry::CFI_DEF_CFA, operands);
	//no need to change
}


void link_cfi_def_cfa_register_direcive(struct MaoStringPiece reg) {
	//.cfi_def_cfa_register modifies a rule for computing CFA.
	//From now on register will be used instead of the old one. Offset remains the same.
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(reg));
	link_directive_tail(DirectiveEntry::CFI_DEF_CFA_REGISTER, operands);
	//no need to change
}

void link_cfi_def_cfa_offset_direcive(long offset) {
	//.cfi_def_cfa_offset modifies a rule for computing CFA.
	//Register remains the same, but offset is new.
	//Note that it is the absolute offset that will be added to a defined register to compute CFA address.
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(offset));
	link_directive_tail(DirectiveEntry::CFI_DEF_CFA_OFFSET, operands);
	//no need to change
}

void link_cfi_adjust_cfa_offset(long offset) {
	//Same as .cfi_def_cfa_offset but offset is a relative value
	//that is added/subtracted from the previous offset.
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(offset));
	link_directive_tail(DirectiveEntry::CFI_ADJUST_CFA_OFFSET, operands);
	//no need to change
}

void link_cfi_offset_direcive(struct MaoStringPiece reg, long offset) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(reg));
	operands.push_back(new DirectiveEntry::Operand(offset));
	link_directive_tail(DirectiveEntry::CFI_OFFSET, operands);
	//no need to change
}

void link_cfi_rel_offset_direcive(struct MaoStringPiece reg, long offset) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(reg));
	operands.push_back(new DirectiveEntry::Operand(offset));
	link_directive_tail(DirectiveEntry::CFI_REL_OFFSET, operands);
	//no need to change
}

void link_cfi_register_direcive(struct MaoStringPiece reg1,
                                struct MaoStringPiece reg2) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(reg1));
	operands.push_back(new DirectiveEntry::Operand(reg2));
	link_directive_tail(DirectiveEntry::CFI_REGISTER, operands);
	//no need to change
}

void link_cfi_return_column_direcive(struct MaoStringPiece reg) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(reg));
	link_directive_tail(DirectiveEntry::CFI_RETURN_COLUMN, operands);
	//no need to change
}

void link_cfi_restore_direcive(int num_regs, struct MaoStringPiece *regs) {
	DirectiveEntry::OperandVector operands;
	for (int i = 0; i < num_regs; ++i) {
		operands.push_back(new DirectiveEntry::Operand(regs[i]));
	}
	link_directive_tail(DirectiveEntry::CFI_RESTORE, operands);
	//no need to change
}

void link_cfi_undefined_direcive(int num_regs, struct MaoStringPiece *regs) {
	DirectiveEntry::OperandVector operands;
	for (int i = 0; i < num_regs; ++i) {
		operands.push_back(new DirectiveEntry::Operand(regs[i]));
	}
	link_directive_tail(DirectiveEntry::CFI_UNDEFINED, operands);
	//no need to change
}
void link_cfi_same_value_direcive(struct MaoStringPiece reg) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(reg));
	link_directive_tail(DirectiveEntry::CFI_SAME_VALUE, operands);
	//no need to change
}
void link_cfi_remember_state_direcive() {
	DirectiveEntry::OperandVector operands;
	link_directive_tail(DirectiveEntry::CFI_REMEMBER_STATE, operands);
	//no need to change
}

void link_cfi_restore_state_direcive() {
	DirectiveEntry::OperandVector operands;
	link_directive_tail(DirectiveEntry::CFI_RESTORE_STATE, operands);
	//no need to change
}
void link_cfi_window_save_direcive() {
	DirectiveEntry::OperandVector operands;
	link_directive_tail(DirectiveEntry::CFI_WINDOW_SAVE, operands);
	//no need to change
}

void link_cfi_escape_direcive(int num_expressions, expressionS *expr[]) {
	DirectiveEntry::OperandVector operands;
	for (int i = 0; i < num_expressions; ++i) {
		operands.push_back(new DirectiveEntry::Operand(expr[i]));
	}
	link_directive_tail(DirectiveEntry::CFI_ESCAPE, operands);
	//no need to change
}
void link_cfi_signal_frame_direcive() {
	DirectiveEntry::OperandVector operands;
	link_directive_tail(DirectiveEntry::CFI_SIGNAL_FRAME, operands);
	//no need to change
}

void link_cfi_personality_direcive(long encoding, expressionS *expr) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(encoding));
	if (expr != NULL) {
		operands.push_back(new DirectiveEntry::Operand(expr));
	}
	link_directive_tail(DirectiveEntry::CFI_PERSONALITY, operands);
	//no need to change
}

void link_cfi_lsda_direcive(long encoding, expressionS *expr) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(encoding));
	if (expr != NULL) {
		operands.push_back(new DirectiveEntry::Operand(expr));
	}
	link_directive_tail(DirectiveEntry::CFI_LSDA, operands);
	//no need to change
}

void link_cfi_val_encoded_addr_direcive(struct MaoStringPiece reg,
                                        long encoding,
                                        struct MaoStringPiece label) {
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(reg));
	operands.push_back(new DirectiveEntry::Operand(encoding));
	operands.push_back(new DirectiveEntry::Operand(label));
	link_directive_tail(DirectiveEntry::CFI_VAL_ENCODED_ADDR, operands);
	//no need to change
}

//How following directive works: https://stackoverflow.com/questions/14091231/what-do-the-eh-frame-and-eh-frame-hdr-sections-store-exactly
//Are these not used by ARM? If so, I dont think we need to do this

/********************new added code*********************/

void link_cfi_personality_id_directive(int personality_id){
	//called in dot_cfi_personality_id()
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(personality_id));
	link_directive_tail(DirectiveEntry::CFI_PERSONALITY_ID, operands);
}

void link_cfi_fde_data_directive(int num_expr, expressionS * expr[]){
	//We can do it like link_cfi_undefined_direcive when it is called
	//QUES:I dont think it's appropiate to call the argument opcode
	DirectiveEntry::OperandVector operands;
	for(int i = 0; i < num_expr; i++)
	{
		operands.push_back(new DirectiveEntry::Operand(expr[i]));
	}
	link_directive_tail(DirectiveEntry::CFI_FDE_DATA, operands);
}

void link_cfi_inline_lsda_directive(int align){
	//align argument is optional in this directive, so maybe we can set it as -1 if we dont have one matched
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(align));
	link_directive_tail(DirectiveEntry::CFI_INLINE_LSDA, operands);
}

void link_cfi_val_offset_directive(struct MaoStringPiece reg, long offset){
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(reg));
	operands.push_back(new DirectiveEntry::Operand(offset));
	link_directive_tail(DirectiveEntry::CFI_VAL_OFFSET, operands);
}

void link_arch_extension_directive(struct MaoStringPiece description)
{
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(description));
	link_directive_tail(DirectiveEntry::ARCH_EXT, operands);
}

void link_cpu_directive(struct MaoStringPiece cpu_name)		//QUES: Can I just use a const char * as argument? What's the diff?
{
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(cpu_name));
	link_directive_tail(DirectiveEntry::CPU, operands);
}

void link_dr_directive(expressionS * expr, int nbytes)
{
	DirectiveEntry::OperandVector operands;
	if(expr->X_op == O_big)
    {
	    std::string bignumStr="";
        for(int i=0; i < expr->X_add_number;i++)
        {
            std::stringstream ioss;                       //定义字符串流
            std::string s_temp;                           //存放转化后字符
            ioss << std::hex <<  generic_bignum[i];       //以十六制形式输出
            ioss >> s_temp;
            if(s_temp.size()<4)
            {
                std::string s_0(4 - s_temp.size(), '0');      //位数不够则补0
                s_temp = s_0+s_temp;
            }
            bignumStr = s_temp + bignumStr;
        }
        bignumStr="0x" + bignumStr;
        struct MaoStringPiece description = {bignumStr.c_str(), bignumStr.length()};
        operands.push_back(new DirectiveEntry::Operand(description));
    }
	else
	    operands.push_back(new DirectiveEntry::Operand(expr));

	if(nbytes == 4) link_directive_tail(DirectiveEntry::WORD, operands);		//For .word/.long
	else if(nbytes == 8) link_directive_tail(DirectiveEntry::XWORD, operands);	//For .xword/.dword
	else if(nbytes == 16) link_directive_tail(DirectiveEntry::OCTA, operands);	//For .octa
	else MAO_ASSERT(NULL);
}


void link_inst_directive(expressionS * expr)
{
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(expr));
	link_directive_tail(DirectiveEntry::INST, operands);
}

void link_ltorg_directive()
{
	DirectiveEntry::OperandVector operands;
	link_directive_tail(DirectiveEntry::LTORG, operands);
}

void link_pool_directive()
{
	DirectiveEntry::OperandVector operands;
	link_directive_tail(DirectiveEntry::POOL, operands);
}

void link_reloc_directive(expressionS *expr,struct MaoStringPiece label,expressionS *expr2) {
    DirectiveEntry::OperandVector operands;
    if (expr != NULL) {
        operands.push_back(new DirectiveEntry::Operand(expr));
    }
    operands.push_back(new DirectiveEntry::Operand(label));
    if (expr2 != NULL) {
        operands.push_back(new DirectiveEntry::Operand(expr2));
    }
    link_directive_tail(DirectiveEntry::RELOC, operands);
}
void link_req_directive(const char * newname, const char * oldname)
{
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(newname));
	operands.push_back(new DirectiveEntry::Operand(oldname));
	link_directive_tail(DirectiveEntry::REQ, operands);
}

void link_unreq_directibe(const char * alias)
{
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(alias));
	link_directive_tail(DirectiveEntry::UNREQ, operands);
}

void link_tlsdescadd_directive(expressionS * expr)
{
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(expr));
	link_directive_tail(DirectiveEntry::TLSDESCADD, operands);
}

void link_tlsdesccall_directive(expressionS * expr)
{
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(expr));
	link_directive_tail(DirectiveEntry::TLSDESCCALL, operands);
}

void link_tlsdescldr_directive(expressionS * expr)
{
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(expr));
	link_directive_tail(DirectiveEntry::TLSDESCLDR, operands);
}

void link_variant_pcs_directive(symbolS * symbol)
{
	DirectiveEntry::OperandVector operands;
	operands.push_back(new DirectiveEntry::Operand(symbol));
	link_directive_tail(DirectiveEntry::VARIANTPCS, operands);
}

void link_cfi_b_key_frame_directive()
{
	DirectiveEntry::OperandVector operands;
	link_directive_tail(DirectiveEntry::CFIBKEYFRAME, operands);
}

/********************new added code*********************/






