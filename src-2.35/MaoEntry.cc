//
// Copyright 2010 Google Inc.
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
// Foundation, Inc., 51 Franklin Street, 5th Floor, Boston, MA 02110-1301, USA.


#include "Mao.h"

// Needed for macros (OPERAND_TYPE_IMM64, ..) in gotrel[]
#include "opcodes/i386-init.h"
#include "tc-aarch64-helper.h"
#include "tc-aarch64.h"

#include <iostream>
#include <sstream>
#include <string>

//
// Class: MaoEntry
//

MaoEntry::MaoEntry(unsigned int line_number, const char *line_verbatim,
                   MaoUnit *maounit) :
    maounit_(maounit), id_(0), next_(NULL), prev_(NULL),
    line_number_(line_number) {
  if (line_verbatim) {
    MAO_ASSERT(strlen(line_verbatim) < MAX_VERBATIM_ASSEMBLY_STRING_LENGTH);
    line_verbatim_ = strdup(line_verbatim);
  } else {
    line_verbatim_ = 0;
  }
}

MaoEntry::~MaoEntry() {
}

// Returns the flag code of the closest instruction entry that precedes this
// entry. This is a virtual method which is overridden by the InstructionEntry
// class and so if the entry is an instruction entry, it simply returns the flag
// code associated with it
enum flag_code MaoEntry::GetFlag() const {
  MaoEntry *prev = prev_;
  while (prev != NULL) {
    if (prev->IsInstruction()) {
      InstructionEntry *ie = prev->AsInstruction();
      return ie->GetFlag();
    }
    prev = prev->prev_;
  }
  // This could be an entry before the first instruction.
  // Use arch_ to determine code type
  if (maounit_->Is64BitMode())
    return CODE_64BIT;
  else
    return CODE_32BIT;
}
// used when creating temporary expression
// used when processing the dot (".") label in non-absolute sections
#ifndef FAKE_LABEL_NAME
#define FAKE_LABEL_NAME "L0\001"
#endif

std::string MaoEntry::GetDotOrSymbol(symbolS *symbol) const {
  std::string out_string;

  const char *symbol_name = S_GET_NAME(symbol);
  MAO_ASSERT(symbol_name);
  if (strcmp(symbol_name, FAKE_LABEL_NAME) == 0) {
    // Check if there is a sy_value assigned to a temporary expression
    // or if it is the "current location".
    if (S_GET_SEGMENT(symbol) == maounit_->mao_expr_section ||
        S_GET_SEGMENT(symbol) == absolute_section) {
      // sy_value containts an expression. Return it as a string.
      out_string = "(";
      ExpressionToString(symbol_get_value_expression(symbol), &out_string);
      out_string.append(")");
    } else {
      out_string = ".";
    }
  } else {
    out_string = symbol_name;
  }
  return out_string;
}


// Return the matching relocation string, or an empty string
// if no match is found.
const std::string &MaoEntry::RelocToString(const enum bfd_reloc_code_real reloc,
                                           std::string *out) const {
//  // copied gotrel from tc-i386.c
//  static const struct {
//    const char *str;
//    const enum bfd_reloc_code_real rel[2];
//    const i386_operand_type types64;
//  } gotrel[] = {
//    { "PLTOFF",   { _dummy_first_bfd_reloc_code_real,
//                    BFD_RELOC_X86_64_PLTOFF64 },
//      OPERAND_TYPE_IMM64 },
//    { "PLT",      { BFD_RELOC_386_PLT32,
//                    BFD_RELOC_X86_64_PLT32    },
//      OPERAND_TYPE_IMM32_32S_DISP32 },
//    { "GOTPLT",   { _dummy_first_bfd_reloc_code_real,
//                    BFD_RELOC_X86_64_GOTPLT64 },
//      OPERAND_TYPE_IMM64_DISP64 },
//    { "GOTOFF",   { BFD_RELOC_386_GOTOFF,
//                BFD_RELOC_X86_64_GOTOFF64 },
//      OPERAND_TYPE_IMM64_DISP64 },
//    { "GOTPCREL", { _dummy_first_bfd_reloc_code_real,
//                    BFD_RELOC_X86_64_GOTPCREL },
//      OPERAND_TYPE_IMM32_32S_DISP32 },
//    { "TLSGD",    { BFD_RELOC_386_TLS_GD,
//                    BFD_RELOC_X86_64_TLSGD    },
//      OPERAND_TYPE_IMM32_32S_DISP32 },
//    { "TLSLDM",   { BFD_RELOC_386_TLS_LDM,
//                    _dummy_first_bfd_reloc_code_real },
//      OPERAND_TYPE_NONE },
//    { "TLSLD",    { _dummy_first_bfd_reloc_code_real,
//                    BFD_RELOC_X86_64_TLSLD    },
//      OPERAND_TYPE_IMM32_32S_DISP32 },
//    { "GOTTPOFF", { BFD_RELOC_386_TLS_IE_32,
//                    BFD_RELOC_X86_64_GOTTPOFF },
//      OPERAND_TYPE_IMM32_32S_DISP32 },
//    { "TPOFF",    { BFD_RELOC_386_TLS_LE_32,
//                    BFD_RELOC_X86_64_TPOFF32  },
//      OPERAND_TYPE_IMM32_32S_64_DISP32_64 },
//    { "NTPOFF",   { BFD_RELOC_386_TLS_LE,
//                    _dummy_first_bfd_reloc_code_real },
//      OPERAND_TYPE_NONE },
//    { "DTPOFF",   { BFD_RELOC_386_TLS_LDO_32,
//                    BFD_RELOC_X86_64_DTPOFF32 },
//      OPERAND_TYPE_IMM32_32S_64_DISP32_64 },
//    { "GOTNTPOFF", { BFD_RELOC_386_TLS_GOTIE,
//                    _dummy_first_bfd_reloc_code_real },
//      OPERAND_TYPE_NONE },
//    { "INDNTPOFF", { BFD_RELOC_386_TLS_IE,
//                    _dummy_first_bfd_reloc_code_real },
//      OPERAND_TYPE_NONE },
//    { "GOT",      { BFD_RELOC_386_GOT32,
//                    BFD_RELOC_X86_64_GOT32    },
//      OPERAND_TYPE_IMM32_32S_64_DISP32 },
//    { "TLSDESC",  { BFD_RELOC_386_TLS_GOTDESC,
//                    BFD_RELOC_X86_64_GOTPC32_TLSDESC },
//      OPERAND_TYPE_IMM32_32S_DISP32 },
//    { "TLSCALL",  { BFD_RELOC_386_TLS_DESC_CALL,
//                    BFD_RELOC_X86_64_TLSDESC_CALL },
//      OPERAND_TYPE_IMM32_32S_DISP32 },
//  };
//
//
//  for (unsigned int i = 0; i < sizeof(gotrel)/sizeof(gotrel[0]); ++i) {
//    int idx = maounit_->Is64BitMode()?1:0;
//    if (reloc == gotrel[i].rel[idx]) {
//      out->append("@");
//      out->append(gotrel[i].str);
//      return *out;
//    }
//  }
//  // Specal case not covered in the gotrel array.
//  // Found in gas test-suite reloc32.s etc.
//  switch (reloc) {
//    case BFD_RELOC_32:
//      out->append("@GOTOFF");
//      break;
//    case BFD_RELOC_32_PCREL:
//      out->append("@GOTPCREL");
//      break;
//    case BFD_RELOC_64:
//      out->append("@GOTOFF");
//      break;
//    case BFD_RELOC_64_PCREL:
//      out->append("@GOTPCREL");
//      break;
//    case   BFD_RELOC_NONE:
//    case _dummy_first_bfd_reloc_code_real:
//      break;
//    default:
//      MAO_ASSERT_MSG(reloc == _dummy_first_bfd_reloc_code_real,
//                     "Unknown reloc: %d", reloc);
//  }
//  // No matching relocation found!
//  return *out;
}


const char *MaoEntry::OpToString(operatorT op) const {
  switch (op) {
    case O_add:             return "+";
    case O_subtract:        return "-";
    case O_divide:          return "/";
    case O_multiply:        return "*";
    case O_modulus:         return "%";
    case O_left_shift:      return "<<";
    case O_right_shift:     return ">>";
    case O_bit_inclusive_or:return "|";
    case O_bit_or_not:      return "|~";
    case O_bit_exclusive_or:return "^";
    case O_bit_and:         return "&";
    case O_eq:              return "==";
    case O_ne:              return "!=";
    case O_lt:              return "<";
    case O_le:              return "<=";
    case O_ge:              return ">=";
    case O_gt:              return ">";
    case O_logical_and:     return "&&";
    case O_logical_or:      return "||";
    case O_uminus:          return "-";
    case O_bit_not:         return "~";
    case O_logical_not:     return "!";
    default:
      break;
  }
  MAO_ASSERT(false);
  return "";
}

const std::string &MaoEntry::ExpressionToString(const expressionS *expr,
                                                std::string *out) const {
  return ExpressionToStringImp(expr, out, false, NULL);
}

const std::string &MaoEntry::ExpressionToStringDisp(
    const expressionS *expr,
    std::string *out,
    const enum bfd_reloc_code_real *reloc) const {
  return ExpressionToStringImp(expr, out, false, reloc);
}


const std::string &MaoEntry::ExpressionToStringImmediate(
    const expressionS *expr,
    std::string *out,
    const enum bfd_reloc_code_real *reloc) const {
  return ExpressionToStringImp(expr, out, true, reloc);
}


const std::string &MaoEntry::ExpressionToStringImp(
    const expressionS *expr, std::string *out,
    bool immedate,
    const enum bfd_reloc_code_real *reloc)  // NULL if not used
    const {
  switch (expr->X_op) {
    // SUPPORTED
      /* X_add_number (a constant expression).  */
    case O_constant:
      {
        std::ostringstream int_string;
        if (immedate)
          out->append("$");
        int_string << expr->X_add_number;
        out->append(int_string.str());
      }
      break;
      /* X_add_symbol + X_add_number.  */
    case O_symbol:
      {
        std::ostringstream exp_string;
        if (immedate)
          exp_string << "$";
        if (expr->X_add_symbol) {
          exp_string << GetDotOrSymbol(expr->X_add_symbol);
          if (reloc != NULL) {
            std::string s;
            exp_string << RelocToString(*reloc, &s);
          }
          if (expr->X_add_number != 0) {
            exp_string << "+";
          }
        }
        if (expr->X_add_number != 0) {
          exp_string << expr->X_add_number;
        }
        out->append(exp_string.str());
      }
      break;

    case O_add:             /* (X_add_symbol +  X_op_symbol) + X_add_number.  */
    case O_subtract:        /* (X_add_symbol -  X_op_symbol) + X_add_number.  */
    case O_divide:          /* (X_add_symbol /  X_op_symbol) + X_add_number.  */
    case O_multiply:        /* (X_add_symbol *  X_op_symbol) + X_add_number.  */
    case O_modulus:         /* (X_add_symbol %  X_op_symbol) + X_add_number.  */
    case O_left_shift:      /* (X_add_symbol << X_op_symbol) + X_add_number.  */
    case O_right_shift:     /* (X_add_symbol >> X_op_symbol) + X_add_number.  */
    case O_bit_inclusive_or:/* (X_add_symbol |  X_op_symbol) + X_add_number.  */
    case O_bit_or_not:      /* (X_add_symbol |~ X_op_symbol) + X_add_number.  */
    case O_bit_exclusive_or:/* (X_add_symbol ^  X_op_symbol) + X_add_number.  */
    case O_bit_and:         /* (X_add_symbol &  X_op_symbol) + X_add_number.  */
    case O_eq:              /* (X_add_symbol == X_op_symbol) + X_add_number.  */
    case O_ne:              /* (X_add_symbol != X_op_symbol) + X_add_number.  */
    case O_lt:              /* (X_add_symbol <  X_op_symbol) + X_add_number.  */
    case O_le:              /* (X_add_symbol <= X_op_symbol) + X_add_number.  */
    case O_ge:              /* (X_add_symbol >= X_op_symbol) + X_add_number.  */
    case O_gt:              /* (X_add_symbol >  X_op_symbol) + X_add_number.  */
    case O_logical_and:     /* (X_add_symbol && X_op_symbol) + X_add_number.  */
    case O_logical_or:      /* (X_add_symbol || X_op_symbol) + X_add_number.  */
      {
        std::ostringstream exp_string;
        if (immedate)
          exp_string << "$";
        if (expr->X_add_symbol) {
          exp_string << GetDotOrSymbol(expr->X_add_symbol);
          if (reloc != NULL) {
            std::string s;
            exp_string << RelocToString(*reloc, &s);
          }
          // When GOTPCREL is used, the second symbol is implicit and
          // should not be printed.
          if (reloc == NULL ||
              (*reloc != BFD_RELOC_32_PCREL && *reloc != BFD_RELOC_32)) {
            if (expr->X_op_symbol) {
              exp_string << OpToString(expr->X_op);
              exp_string << GetDotOrSymbol(expr->X_op_symbol);
              if (expr->X_add_number != 0) {
                exp_string << "+";
              }
            }
          }
        }
        if (expr->X_add_number != 0) {
          exp_string << expr->X_add_number;
        }
        out->append(exp_string.str());
      }
      break;
      /* A register (X_add_number is register number).  */
    case O_register:
      {
//        std::ostringstream exp_string;
//        exp_string << "%" << i386_regtab[expr->X_add_number].reg_name;
//        out->append(exp_string.str());
      }
      break;

    case O_uminus:        /* (- X_add_symbol) + X_add_number.  */
    case O_bit_not:       /* (~ X_add_symbol) + X_add_number.  */
    case O_logical_not:   /* (! X_add_symbol) + X_add_number.  */
      {
        std::ostringstream exp_string;
        if (immedate)
          exp_string << "$";
        exp_string << "(" << OpToString(expr->X_op)
                   << GetDotOrSymbol(expr->X_add_symbol) << ")";
        if (expr->X_add_number != 0) {
          exp_string << expr->X_add_number;
        }
        out->append(exp_string.str());
      }
      break;
    // UNSUPPORTED
    /* An illegal expression.  */
    case O_illegal:
      /* A nonexistent expression.  */
    case O_absent:
        break;
      /* X_add_symbol + X_add_number - the base address of the image.  */
    case O_symbol_rva:

      /* A big value.  If X_add_number is negative or 0, the value is in
         generic_floating_point_number.  Otherwise the value is in
         generic_bignum, and X_add_number is the number of LITTLENUMs in
         the value.  */
    case O_big:
      /* X_op_symbol [ X_add_symbol ] */
    case O_index:
      /* machine dependent operators */
    case O_md1:
    case O_md2:
    case O_md3:
    case O_md4:
    case O_md5:
    case O_md6:
    case O_md7:
    case O_md8:
    case O_md9:
    case O_md10:
    case O_md11:
    case O_md12:
    case O_md13:
    case O_md14:
    case O_md15:
    case O_md16:
    case O_md17:
    case O_md18:
    case O_md19:
    case O_md20:
    case O_md21:
    case O_md22:
    case O_md23:
    case O_md24:
    case O_md25:
    case O_md26:
    case O_md27:
    case O_md28:
    case O_md29:
    case O_md30:
    case O_md31:
    case O_md32:
  /* this must be the largest value */
    case O_max:
    default:
      MAO_ASSERT_MSG(
          0,
          "ExpressionToStringImp does not support the op %d\n",
          expr->X_op);
      break;
  }
  return *out;
}

void MaoEntry::Spaces(unsigned int n, FILE *outfile) const {
  for (unsigned int i = 0; i < n; i++) {
    fprintf(outfile, " ");
  }
}

std::string &MaoEntry::SourceInfoToString(std::string *out) const {
  std::ostringstream stream;
  stream << "\t// id: "
         << id()
         << ", l: "
         << line_number()
         << "\t";
  if (0 && line_verbatim())  // TODO(rhundt): Invent option for this
    stream << line_verbatim();
  out->append(stream.str());
  return *out;
}

void MaoEntry::Unlink() {
  MaoEntry *prev = prev_, *next = next_;
  if (prev != NULL) {
    prev->set_next(next);
  }
  if (next != NULL) {
    next->set_prev(prev);
  }
  Function *function = maounit_->GetFunction(this);
  if (function &&
      function->first_entry() == this) {
    function->set_first_entry(next);
  }
  if (function &&
      function->last_entry() == this) {
    function->set_last_entry(prev);
  }
  SubSection *subsection = maounit_->GetSubSection(this);
  if (subsection &&
      subsection->first_entry() == this) {
    subsection->set_first_entry(next);
  }
  if (subsection&&
      subsection->last_entry() == this) {
    subsection->set_last_entry(prev);
  }
  prev_ = NULL;
  next_ = NULL;
}

void MaoEntry::Unlink(MaoEntry *last_in_chain) {
  MaoEntry *prev = prev_, *next = last_in_chain->next();
  MAO_RASSERT(last_in_chain != NULL);
  Function *function = maounit_->GetFunction(this);
  SubSection *subsection = maounit_->GetSubSection(this);
  MAO_RASSERT_MSG(function == maounit_->GetFunction(last_in_chain),
                  "Last instruction to unlink is in a different function\n");
  MAO_RASSERT_MSG(subsection == maounit_->GetSubSection(last_in_chain),
                  "Last instruction to unlink is in a different subsection\n");
  if (prev != NULL) {
    prev->set_next(next);
  }
  if (next != NULL) {
    next->set_prev(prev);
  }
  if (function &&
      function->first_entry() == this) {
    function->set_first_entry(next);
  }
  if (function &&
      function->last_entry() == last_in_chain) {
    function->set_last_entry(prev);
  }
  if (subsection &&
      subsection->first_entry() == this) {
    subsection->set_first_entry(next);
  }
  if (subsection&&
      subsection->last_entry() == last_in_chain) {
    subsection->set_last_entry(prev);
  }
  prev_ = NULL;
  last_in_chain->next_ = NULL;
}

MaoEntry *MaoEntry::GetLastEntry(MaoEntry *entry) const {
  MaoEntry *last_entry = entry;
  MAO_ASSERT(last_entry != NULL);
  while (last_entry->next() != NULL) {
    last_entry = last_entry->next();
    MAO_ASSERT_MSG(entry != last_entry, "Cycle detected.");
  }
  return last_entry;
}

// Link a chain of instructions (one or more) before the current instruction.
// Function and subsection pointers are updated in case the instructions
// are inserted at the beginning of such a unit.
void MaoEntry::LinkBefore(MaoEntry *entry) {
  MAO_ASSERT(entry != NULL);

  // Find the last entry in the chain.
  MaoEntry *last_entry = GetLastEntry(entry);

  // Set prev and next pointers.
  last_entry->set_next(this);
  entry->set_prev(prev());

  if (prev()) {
    prev()->set_next(entry);
  }
  this->set_prev(last_entry);

  // Do we need to update the function?
  Function *function = maounit_->GetFunction(this);
  if (function &&
      function->first_entry() == this) {
    function->set_first_entry(entry);
  }

  // Do we need to update the subsection?
  SubSection *subsection = maounit_->GetSubSection(this);
  MAO_ASSERT(subsection);
  if (subsection->first_entry() == this) {
    subsection->set_first_entry(entry);
  }
}

// Link a chain of instructions (one or more) after the current instruction.
// Function and subsection pointers are updated in case the instructions
// are inserted at the end of such a unit.
void MaoEntry::LinkAfter(MaoEntry *entry) {
  MAO_ASSERT(entry != NULL);

  // Find the last entry in the chain.
  MaoEntry *last_entry = GetLastEntry(entry);

  last_entry->set_next(next());
  entry->set_prev(this);
  if (next()) {
    next()->set_prev(last_entry);
  }
  set_next(entry);

  // Do we need to update the function?
  Function *function = maounit_->GetFunction(this);
  if (function &&  // Not all entries are part of a function.
      function->last_entry() == this) {
    function->set_last_entry(last_entry);
  }

  // Do we need to update the subsection?
  SubSection *subsection = maounit_->GetSubSection(this);
  MAO_ASSERT(subsection);
  if (subsection->last_entry() == this) {
    subsection->set_last_entry(last_entry);
  }
}


void MaoEntry::AlignTo(int power_of_2_alignment,
                       int fill_value,
                       int max_bytes_to_skip) {
  MAO_ASSERT(maounit_->GetFunction(this));

  Function *function = maounit_->GetFunction(this);
  SubSection *ss = function->GetSubSection();
  MAO_ASSERT(ss);

  DirectiveEntry::OperandVector operands;
  operands.push_back(new DirectiveEntry::Operand(power_of_2_alignment));
  if (fill_value == -1)
    operands.push_back(new DirectiveEntry::Operand());
  else
    operands.push_back(new DirectiveEntry::Operand(fill_value));
  operands.push_back(new DirectiveEntry::Operand(max_bytes_to_skip));
  DirectiveEntry *align_entry = maounit_->CreateDirective(
    DirectiveEntry::P2ALIGN, operands,
    function, ss);
  LinkBefore(align_entry);
}


const char *MaoEntry::GetSymbolnameFromExpression(expressionS *expr) const {
  const char *label_name = NULL;
  // TODO(martint): support all expression

  MAO_ASSERT(expr != NULL);

  switch (expr->X_op) {
    case O_constant:
      if (expr->X_add_symbol) {
        label_name = S_GET_NAME(expr->X_add_symbol);
      } else {
        return NULL;
      }
      break;
    case O_symbol:
      label_name = S_GET_NAME(expr->X_add_symbol);
      break;
    case O_add:
      label_name = S_GET_NAME(expr->X_add_symbol);
      break;
    case O_subtract:
      label_name = S_GET_NAME(expr->X_add_symbol);
      break;
    default:
      // Expression not supported
      return NULL;
  }
  return label_name;
}


// Casting functions.
InstructionEntry *MaoEntry::AsInstruction() {
  MAO_ASSERT(IsInstruction());
  return static_cast<InstructionEntry*>(this);
}

LabelEntry *MaoEntry::AsLabel() {
  MAO_ASSERT(IsLabel());
  return static_cast<LabelEntry*>(this);
}

DirectiveEntry *MaoEntry::AsDirective() {
  MAO_ASSERT(IsDirective());
  return static_cast<DirectiveEntry*>(this);
}

InstructionEntry *MaoEntry::nextInstruction() {
  if (next_ && next_->IsInstruction())
    return next_->AsInstruction();
  return NULL;
}

InstructionEntry *MaoEntry::prevInstruction() {
  if (prev_ && prev_->IsInstruction())
    return prev_->AsInstruction();
  return NULL;
}

//
// Class: LabelEntry
//

void LabelEntry::PrintEntry(FILE *out) const {
  MAO_ASSERT(name_);
  std::string s;
  ToString(&s);
  if(quotationFlag==1)
      s="\"" + s.substr(0,s.length()-1) + "\":";
  MaoEntry::SourceInfoToString(&s);
  fprintf(out, "%s\n", s.c_str());
}


std::string &LabelEntry::ToString(std::string *out) const {
  out->append(name_);
  out->append(":");
  return *out;
}


void LabelEntry::PrintIR(FILE *out) const {
//  MAO_ASSERT(name_);
//  fprintf(out, "%s", name_);
}


//
// Class: DirectiveEntry
//

const DirectiveEntry::Opcode DirectiveEntry::data_directives[NUM_DATA_DIRECTIVES] = {BYTE,
  WORD, LONG, QUAD, STRING8, STRING16, STRING32, STRING64};

const char *const DirectiveEntry::kOpcodeNames[NUM_OPCODES] = {
  ".file",
  ".section",
  ".text",
  ".data",
  ".bss",
  ".subsection",
  ".pushsection",
  ".popsection",
  ".globl",
  ".local",
  ".weak",
  ".type",
  ".size",
  ".byte",
  ".word",
  ".long",
  ".quad",
  ".rva",
  ".ascii",
  ".string",
  ".string16",
  ".string32",
  ".string64",
  ".sleb128",
  ".uleb128",
  ".p2align",
  ".p2alignw",
  ".p2alignl",
  ".space",
  ".ds.b",
  ".ds.w",
  ".ds.l",
  ".ds.d",
  ".ds.x",
  ".dcb.d",
  ".dcb.s",
  ".dcb.x",
  ".comm",
  ".tls_common",
  ".ident",
  ".set",  // identical to .equ
  ".equiv",
  ".eqv",
  ".weakref",
  ".arch",
  ".linefile",
  ".line",
  ".loc",
  ".allow_index_reg",
  ".disallow_index_reg",
  ".org",
  ".code16",
  ".code16gcc",
  ".code32",
  ".code64",
  ".dc.d",
  ".dc.s",
  ".dc.x",
  ".hidden",
  ".fill",
  ".struct",
  ".incbin",
  ".symver",
  ".loc_mark_labels",
  ".cfi_startproc",
  ".cfi_endproc",
  ".cfi_def_cfa",
  ".cfi_def_cfa_register",
  ".cfi_def_cfa_offset",
  ".cfi_adjust_cfa_offset",
  ".cfi_offset",
  ".cfi_rel_offset",
  ".cfi_register",
  ".cfi_return_column",
  ".cfi_restore",
  ".cfi_undefined",
  ".cfi_same_value",
  ".cfi_remember_state",
  ".cfi_restore_state",
  ".cfi_window_save",
  ".cfi_escape",
  ".cfi_signal_frame",
  ".cfi_personality",
  ".cfi_lsda",
  ".cfi_val_encoded_addr",
  ".cfi_personality_id",
  ".cfi_fde_data",
  ".cfi_inline_lsda",
  ".cfi_val_offset",
  ".arch_extension",
  ".cpu",
  ".dword",
  ".xword",
  ".float16",
  ".bfloat16",
  ".inst",
  ".ltorg",
  ".pool",
  ".req",
  ".unreq",
  ".tlsdescadd",
  ".tlsdesccall",
  ".tlsdescldr",
  ".variant_pcs",
  ".cfi_b_key_frame",
  ".hword",
  ".octa",
  ".reloc"
};


const char *DirectiveEntry::GetOperandSeparator() const {
  if (IsDebugDirective()) {
    return " ";
  }
  return ", ";
}

void DirectiveEntry::PrintEntry(::FILE *out) const {
  std::string s;
  s.append("\t");
  /* .req goes between the alias and the register name,
   * not at the beginning of the line.  For example:
     my_alias .req r11 */
  if(this->op() != REQ)
  {
      s.append(GetOpcodeName());
      s.append("\t");
  }
  OperandsToString(&s, GetOperandSeparator());
  SourceInfoToString(&s);
  fprintf(out, "%s\n", s.c_str());
}

std::string &DirectiveEntry::ToString(std::string *out) const {
 //  std::ostringstream stream;
 out->append(GetOpcodeName());
 out->append(" ");
 OperandsToString(out, GetOperandSeparator());
 return *out;
}

void DirectiveEntry::PrintIR(::FILE *out) const {
 std::string operands;
 fprintf(out, "%s %s", GetOpcodeName(),
         OperandsToString(&operands, GetOperandSeparator()).c_str());
}

const std::string &DirectiveEntry::OperandsToString(
    std::string *out,
    const char *separator) const {
  for (OperandVector::const_iterator iter = operands_.begin();
       iter != operands_.end(); ++iter) {
    if (iter != operands_.begin())
      out->append(separator);
    OperandToString(**iter, out);
  }
  return *out;
}



const std::string &DirectiveEntry::OperandToString(const Operand &operand,
                                                   std::string *out) const {
  switch (operand.type) {
    case NO_OPERAND:
      break;
    case STRING:
      out->append(operand.data.str->c_str());
      break;
    case INT: {
      std::ostringstream int_string;
      int_string << operand.data.i;
      out->append(int_string.str());
      break;
    }
    case SYMBOL:
      out->append(S_GET_NAME(operand.data.sym));
      break;
    case SYMBOL_QUOTATION:
      out->append("\"");
      out->append(S_GET_NAME(operand.data.sym));
      out->append("\"");
      break;
    case EXPRESSION:
      ExpressionToString(operand.data.expr, out);
      break;
    case EXPRESSION_RELOC:
      ExpressionToString(operand.data.expr_reloc.expr, out);
      // Append the relocation to the string here!
      if (operand.data.expr_reloc.reloc != _dummy_first_bfd_reloc_code_real) {
        std::string reloc;
        out->append(RelocToString(operand.data.expr_reloc.reloc, &reloc));
      }
      break;
    case STRING_RELOC:
      out->append(operand.data.str->c_str());
      // Append the relocation to the string here!
      if (operand.data.expr_reloc.reloc != _dummy_first_bfd_reloc_code_real) {
          std::string reloc;
          out->append(RelocToString(operand.data.expr_reloc.reloc, &reloc));
      }
      break;
    case EMPTY_OPERAND:
      // Nothing to do
      break;
    default:
      MAO_ASSERT(false);
  }
  return *out;
}

MaoEntry::EntryType DirectiveEntry::Type() const {
  return DIRECTIVE;
}

bool DirectiveEntry::IsJumpTableEntry() const {
//  // TODO(martint): Make sure we support jump tables generated for various
//  // optimization levels and targets.
//  if ((op_ == LONG || op_ == QUAD)) {
//    return true;
//  } else {
//    return false;
//  }
}


// Return label entry found, or NULL if unknown
// For PIC-code, the expression might be a subtraction. Then the symbol
// needed to find the target is the first symbol.
LabelEntry *DirectiveEntry::GetJumpTableTarget() {
//  LabelEntry *le = NULL;
//  const char *label_name = NULL;
//  MAO_ASSERT(IsJumpTableEntry());
//  if (NumOperands() == 1) {
//    // Get the operand!
//    const Operand *op = GetOperand(0);
//    switch (op->type) {
//      case STRING:
//        label_name = op->data.str->c_str();
//        break;
//      case EXPRESSION:
//        // Get the label from expression
//        label_name = GetSymbolnameFromExpression(op->data.expr);
//        break;
//      default:
//        // Operand type (%d) not supported in jump-table.
//        return NULL;
//    }
//    // if we found a label, find the corresponding entry
//    if (label_name == NULL) {
//      // Unable to find label in jump table
//      return NULL;
//    }
//    // GetLabelEntry returns NULL if it cant find the entry.
//    le = maounit_->GetLabelEntry(label_name);
//  }
//  return le;
}

bool DirectiveEntry::IsDebugDirective() const {
  return (op() == DirectiveEntry::LINEFILE ||
          op() == DirectiveEntry::FILE ||
          op() == DirectiveEntry::LOC);
}


bool DirectiveEntry::IsInList(const Opcode opcode, const Opcode list[],
              const unsigned int number_of_elements) const {
//  for (unsigned int i = 0; i < number_of_elements; i++) {
//    if (opcode == list[i])
//      return true;
//  }
//  return false;
}

bool DirectiveEntry::IsCFIDirective() const {
//  const Opcode cfi_directives[] = {
//    CFI_STARTPROC,
//    CFI_ENDPROC,
//    CFI_DEF_CFA,
//    CFI_DEF_CFA_REGISTER,
//    CFI_DEF_CFA_OFFSET,
//    CFI_ADJUST_CFA_OFFSET,
//    CFI_OFFSET,
//    CFI_REL_OFFSET,
//    CFI_REGISTER,
//    CFI_RETURN_COLUMN,
//    CFI_RESTORE,
//    CFI_UNDEFINED,
//    CFI_SAME_VALUE,
//    CFI_REMEMBER_STATE,
//    CFI_RESTORE_STATE,
//    CFI_WINDOW_SAVE,
//    CFI_ESCAPE,
//    CFI_SIGNAL_FRAME,
//    CFI_PERSONALITY,
//    CFI_LSDA,
//    CFI_VAL_ENCODED_ADDR,
//  };
//  return (IsInList(op(), cfi_directives,
//                   sizeof(cfi_directives)/sizeof(Opcode)));
}

bool DirectiveEntry::IsAlignDirective() const {
//  const Opcode align_directives[] = {
//    P2ALIGN,
//    P2ALIGNW,
//    P2ALIGNL,
//  };
//  return (IsInList(op(), align_directives,
//                   sizeof(align_directives)/sizeof(Opcode)));
}



//
// Class: InstructionEntry
//

/* Returns 0 if attempting to add a prefix where one from the same
   class already exists, 1 if non rep/repne added, 2 if rep/repne
   added.  */
int InstructionEntry::AddPrefix(unsigned int prefix) {
//  int ret = 1;
//  unsigned int q;
//  if (prefix >= REX_OPCODE && prefix < REX_OPCODE + 16
//      && code_flag_ == CODE_64BIT) {
//    if ((instruction_->prefix[X86InstructionSizeHelper::REX_PREFIX] &
//         prefix & REX_W)
//        || ((instruction_->prefix[X86InstructionSizeHelper::REX_PREFIX] &
//             (REX_R | REX_X | REX_B))
//            && (prefix & (REX_R | REX_X | REX_B))))
//      ret = 0;
//    q = X86InstructionSizeHelper::REX_PREFIX;
//  } else {
//    switch (prefix) {
//      default:
//        MAO_ASSERT(false);
//
//      case CS_PREFIX_OPCODE:
//      case DS_PREFIX_OPCODE:
//      case ES_PREFIX_OPCODE:
//      case FS_PREFIX_OPCODE:
//      case GS_PREFIX_OPCODE:
//      case SS_PREFIX_OPCODE:
//        q = X86InstructionSizeHelper::SEG_PREFIX;
//        break;
//
//      case REPNE_PREFIX_OPCODE:
//      case REPE_PREFIX_OPCODE:
//        ret = 2;
//        q = X86InstructionSizeHelper::REP_PREFIX;
//        break;
//      case LOCK_PREFIX_OPCODE:
//        ret = 2;
//        q = X86InstructionSizeHelper::LOCK_PREFIX;
//        break;
//
//      case FWAIT_OPCODE:
//        q = X86InstructionSizeHelper::WAIT_PREFIX;
//        break;
//
//      case ADDR_PREFIX_OPCODE:
//        q = X86InstructionSizeHelper::ADDR_PREFIX;
//        break;
//
//      case DATA_PREFIX_OPCODE:
//        q = X86InstructionSizeHelper::DATA_PREFIX;
//        break;
//    }
//    if (instruction_->prefix[q] != 0) {
//      ret = 0;
//    }
//  }
//
//  if (ret) {
//    if (!instruction_->prefix[q])
//      ++instruction_->prefixes;
//    instruction_->prefix[q] |= prefix;
//  } else {
//    MAO_ASSERT_MSG(false, "same type of prefix used twice");
//  }
//
//  return ret;
}

InstructionEntry::InstructionEntry(aarch64_instruction *instruction,
                                   enum flag_code code_flag,
                                   unsigned int line_number,
                                   const char* line_verbatim,
                                   MaoUnit *maounit) :
    MaoEntry(line_number, line_verbatim, maounit), code_flag_(code_flag),
    execution_count_valid_(false), execution_count_(0) {
  op_ = GetOpcode(instruction->base.opcode->name);
  MAO_ASSERT(op_ != OP_invalid);
  MAO_ASSERT(instruction);
  instruction_ = CreateInstructionCopy(instruction);

//  // Here we can make sure that the prefixes are correct!
//  unsigned int prefix;
//  if (!instruction_->tm.opcode_modifier.vex) {
//    switch (instruction_->tm.opcode_length) {
//      case 3:
//        if (instruction_->tm.base_opcode & 0xff000000) {
//          prefix = (instruction_->tm.base_opcode >> 24) & 0xff;
//          goto check_prefix;
//        }
//        break;
//      case 2:
//        if ((instruction_->tm.base_opcode & 0xff0000) != 0) {
//          prefix = (instruction_->tm.base_opcode >> 16) & 0xff;
//          if (instruction_->tm.cpu_flags.bitfield.cpupadlock) {
//         check_prefix:
//            if (prefix != REPE_PREFIX_OPCODE ||
//                (instruction_->prefix[X86InstructionSizeHelper::REP_PREFIX]
//                 != REPE_PREFIX_OPCODE))
//              AddPrefix(prefix);
//          } else {
//            AddPrefix(prefix);
//          }
//        }
//        break;
//      case 1:
//        break;
//      default:
//        MAO_ASSERT(false);
//    }
//  }
}

InstructionEntry::~InstructionEntry() {
//  MAO_ASSERT(instruction_);
//  FreeInstruction();
}

void InstructionEntry::PrintEntry(FILE *out) const {
  std::string s;
  InstructionToString(&s);
  ProfileToString(&s);
  SourceInfoToString(&s);
  fprintf(out, "%s\n", s.c_str());
}


std::string &InstructionEntry::ToString(std::string *out) const {
//  InstructionToString(out);
//  return *out;
}


void InstructionEntry::PrintIR(FILE *out) const {
//  std::string s;
//  InstructionToString(&s);
//  ProfileToString(&s);
//  fprintf(out, "%s", s.c_str());
}

MaoEntry::EntryType InstructionEntry::Type() const {
  return INSTRUCTION;
}

const char *InstructionEntry::op_str() const {
//  MAO_ASSERT(instruction_);
//  MAO_ASSERT(instruction_->tm.name);
//  return(instruction_->tm.name);
}

// This deallocates memory allocated in CreateInstructionCopy().
void InstructionEntry::FreeInstruction() {
//  MAO_ASSERT(instruction_);
//  for (unsigned int i = 0; i < instruction_->operands; i++) {
//    if (IsImmediateOperand(instruction_, i)) {
//      delete instruction_->op[i].imms;
//    }
//    if (IsMemOperand(instruction_, i)) {
//      delete instruction_->op[i].disps;
//    }
//  }
//  for (unsigned int i = 0; i < 2; i++) {
//    delete instruction_->seg[i];
//  }
//
//  // Registers are shared, and should not be freed.
//  //   - instruction_->base_reg;
//  //   - instruction_->index_reg;
//  //   - instruction_->op[*].regs;
//
//  delete instruction_;
}

bool InstructionEntry::IsPredicated() const {
//  const MaoOpcode opcode_is_predicated[] =  {
//    OP_cmovo,   OP_cmovno,  OP_cmovb,   OP_cmovc,    OP_cmovnae,
//    OP_cmovae,  OP_cmovnc,  OP_cmovnb,  OP_cmove,    OP_cmovz,
//    OP_cmovne,  OP_cmovnz,  OP_cmovbe,  OP_cmovna,   OP_cmova,
//    OP_cmovnbe, OP_cmovs,   OP_cmovns,  OP_cmovp,    OP_cmovnp,
//    OP_cmovl,   OP_cmovnge, OP_cmovge,  OP_cmovnl,   OP_cmovle,
//    OP_cmovng,  OP_cmovg,   OP_cmovnle, OP_fcmovb,   OP_fcmovnae,
//    OP_fcmove,  OP_fcmovbe, OP_fcmovna, OP_fcmovu,   OP_fcmovae,
//    OP_fcmovnb, OP_fcmovne, OP_fcmova,  OP_fcmovnbe, OP_fcmovnu
//  };
//
//  if (IsInList(op(), opcode_is_predicated,
//               sizeof(opcode_is_predicated)/sizeof(MaoOpcode)))
//    return true;
//  return false;
}

bool InstructionEntry::IsMemOperand(const aarch64_instruction *instruction,
                                  const unsigned int op_index) {
//  MAO_ASSERT(instruction->operands > op_index);
//  i386_operand_type t = instruction->types[op_index];
//  return (t.bitfield.disp8
//          || t.bitfield.disp16
//          || t.bitfield.disp32
//          || t.bitfield.disp32s
//          || t.bitfield.disp64
//          || t.bitfield.baseindex);
}

bool InstructionEntry::IsImmediateOperand(const aarch64_instruction *instruction,
                                        const unsigned int op_index) {
//  MAO_ASSERT(instruction->operands > op_index);
//  i386_operand_type t = instruction->types[op_index];
//  return (t.bitfield.imm1
//          || t.bitfield.imm8
//          || t.bitfield.imm8s
//          || t.bitfield.imm16
//          || t.bitfield.imm32
//          || t.bitfield.imm32s
//          || t.bitfield.imm64);
}

bool InstructionEntry::IsImmediateIntOperand(const aarch64_instruction *instruction,
                                             const unsigned int op_index) {
//  MAO_ASSERT(instruction->operands > op_index);
//  i386_operand_type t = instruction->types[op_index];
//  expressionS *imm1 = instruction->op[op_index].imms;
//  if (!imm1)
//    return false;
//  if (imm1->X_op != O_constant)
//    return false;
//
//  return (t.bitfield.imm1
//          || t.bitfield.imm8
//          || t.bitfield.imm8s
//          || t.bitfield.imm16
//          || t.bitfield.imm32
//          || t.bitfield.imm32s
//          || t.bitfield.imm64);
}

bool InstructionEntry::IsRegisterOperand(const aarch64_instruction *instruction,
                                       const unsigned int op_index) {
//  MAO_ASSERT(instruction->operands > op_index);
//  i386_operand_type t = instruction->types[op_index];
//  return (t.bitfield.instance==Accum
//          || t.bitfield.instance==RegC
//          || t.bitfield.word
//          || t.bitfield.dword
//          || t.bitfield.fword
//          || t.bitfield.qword
//          || t.bitfield.class_width==RegCR
//          || t.bitfield.class_width==RegTR
//          || t.bitfield.class_width==RegDR
//          || t.bitfield.class_width==SReg
//          || t.bitfield.class_width==RegSIMD
//          || t.bitfield.class_width==RegMMX
//          || t.bitfield.class_width==Reg
//          );
}

// If an operand is an immediate, get it's integer value
offsetT  InstructionEntry::GetImmediateIntValue(const unsigned int op_index) {
//  aarch64_instruction   *insn = instruction();
//  MAO_ASSERT(IsImmediateOperand(insn, op_index));
//  MAO_ASSERT(insn->operands > op_index);
//
//  expressionS *imm1 = insn->op[op_index].imms;
//  MAO_ASSERT(imm1->X_op == O_constant);
//
//  return imm1->X_add_number;
}

// Set an Operand to be an immediate integer.
// Bit Width is specified as an integer (1,8,16,32,64).
// The gas sources also support the cases 8s and 32s,
// which cannot be set with this routin.
//
void InstructionEntry::SetImmediateIntOperand(const unsigned int op_index,
                                              int bit_size,
                                              int value) {
//  aarch64_instruction *ins = instruction();
//  MAO_ASSERT(ins->operands > op_index);
//
//  switch (bit_size) {
//    case 1:
//      ins->types[op_index].bitfield.imm1 = 1;
//      break;
//    case 8:
//      ins->types[op_index].bitfield.imm8 = 1;
//      break;
//    case 16:
//      ins->types[op_index].bitfield.imm16 = 1;
//      break;
//    case 32:
//      ins->types[op_index].bitfield.imm32 = 1;
//      break;
//    case 64:
//      ins->types[op_index].bitfield.imm64 = 1;
//      break;
//  }
//  if (ins->op[op_index].imms)
//    delete ins->op[op_index].imms;
//  ins->op[op_index].imms = new expressionS();
//  ins->op[op_index].imms->X_op = O_constant;
//  ins->op[op_index].imms->X_add_number = value;
}


// Make a copy of an expression.
expressionS *InstructionEntry::CreateExpressionCopy(expressionS *in_exp) {
//  if (!in_exp)
//    return NULL;
//  expressionS *new_exp = new expressionS;
//  memcpy(new_exp, in_exp, sizeof(expressionS));
//  MAO_ASSERT(new_exp->X_add_number == in_exp->X_add_number);
//  return new_exp;
}


// Checks if two expressions are equal. It does not resolve anything,
// and is conservative. It only returns true if it is sure they are
// equal. Equal here means they have identical experssions. Note that
// the expressions might resolve to different things if the "." symbols
// is used.
bool InstructionEntry::EqualExpressions(expressionS *expression1,
                                        expressionS *expression2) const {
//  if (expression1->X_op != expression2->X_op)
//    return false;
//
//  switch (expression1->X_op) {
//    case O_constant:        /* X_add_number (a constant expression).  */
//      return (expression1->X_add_number == expression2->X_add_number);
//    case O_symbol:          /* X_add_symbol + X_add_number.  */
//      return (expression1->X_add_symbol == expression2->X_add_symbol &&
//              expression1->X_add_number == expression2->X_add_number);
//    case O_add:             /* (X_add_symbol +  X_op_symbol) + X_add_number.  */
//    case O_subtract:        /* (X_add_symbol -  X_op_symbol) + X_add_number.  */
//    case O_divide:          /* (X_add_symbol /  X_op_symbol) + X_add_number.  */
//    case O_multiply:        /* (X_add_symbol *  X_op_symbol) + X_add_number.  */
//    case O_modulus:         /* (X_add_symbol %  X_op_symbol) + X_add_number.  */
//    case O_left_shift:      /* (X_add_symbol << X_op_symbol) + X_add_number.  */
//    case O_right_shift:     /* (X_add_symbol >> X_op_symbol) + X_add_number.  */
//    case O_bit_inclusive_or:/* (X_add_symbol |  X_op_symbol) + X_add_number.  */
//    case O_bit_or_not:      /* (X_add_symbol |~ X_op_symbol) + X_add_number.  */
//    case O_bit_exclusive_or:/* (X_add_symbol ^  X_op_symbol) + X_add_number.  */
//    case O_bit_and:         /* (X_add_symbol &  X_op_symbol) + X_add_number.  */
//    case O_eq:              /* (X_add_symbol == X_op_symbol) + X_add_number.  */
//    case O_ne:              /* (X_add_symbol != X_op_symbol) + X_add_number.  */
//    case O_lt:              /* (X_add_symbol <  X_op_symbol) + X_add_number.  */
//    case O_le:              /* (X_add_symbol <= X_op_symbol) + X_add_number.  */
//    case O_ge:              /* (X_add_symbol >= X_op_symbol) + X_add_number.  */
//    case O_gt:              /* (X_add_symbol >  X_op_symbol) + X_add_number.  */
//    case O_logical_and:     /* (X_add_symbol && X_op_symbol) + X_add_number.  */
//    case O_logical_or:      /* (X_add_symbol || X_op_symbol) + X_add_number.  */
//      return (expression1->X_add_symbol == expression2->X_add_symbol &&
//              expression1->X_op_symbol  == expression2->X_op_symbol  &&
//              expression1->X_add_number == expression2->X_add_number);
//    case O_register:        /* A register (X_add_number is register number).  */
//      return (expression1->X_add_number == expression2->X_add_number);
//    case O_illegal:         /* An illegal expression.  */
//    case O_absent:          /* A nonexistent expression.  */
//      // absent and illegal expressions are not equal.
//      return false;
//    case O_symbol_rva:      /* X_add_symbol + X_add_number - the base address */
//                            /* the image.                                     */
//        // TODO(martint): Look at this case
//      return false;
//      /* A big value.  If X_add_number is negative or 0, the value is in
//         generic_floating_point_number.  Otherwise the value is in
//         generic_bignum, and X_add_number is the number of LITTLENUMs in
//         the value.  */
//    case O_big:
//        // TODO(martint): Look at this case
//        return false;
//    case O_uminus:           /* (- X_add_symbol) + X_add_number.  */
//    case O_bit_not:          /* (~ X_add_symbol) + X_add_number.  */
//    case O_logical_not:      /* (! X_add_symbol) + X_add_number.  */
//      return (expression1->X_add_symbol == expression2->X_add_symbol &&
//              expression1->X_add_number == expression2->X_add_number);
//    case O_index:             /* X_op_symbol [ X_add_symbol ] */
//      return (expression1->X_add_symbol == expression2->X_add_symbol &&
//              expression1->X_op_symbol  == expression2->X_op_symbol);
//      /* machine dependent operators */
//    case O_md1:
//    case O_md2:
//    case O_md3:
//    case O_md4:
//    case O_md5:
//    case O_md6:
//    case O_md7:
//    case O_md8:
//    case O_md9:
//    case O_md10:
//    case O_md11:
//    case O_md12:
//    case O_md13:
//    case O_md14:
//    case O_md15:
//    case O_md16:
//    case O_md17:
//    case O_md18:
//    case O_md19:
//    case O_md20:
//    case O_md21:
//    case O_md22:
//    case O_md23:
//    case O_md24:
//    case O_md25:
//    case O_md26:
//    case O_md27:
//    case O_md28:
//    case O_md29:
//    case O_md30:
//    case O_md31:
//    case O_md32:
//      // Fallback on a full compare for machine dependent expressions.
//      return memcmp(expression1, expression2, sizeof(expressionS)) == 0;
//    case O_max:      /* this must be the largest value */
//      MAO_ASSERT_MSG(false, "Invalid expression in compare.");
//    default:
//      MAO_ASSERT_MSG(false, "Invalid expression in compare.");
//  }
//  MAO_ASSERT(false);
//  return false;
}

void InstructionEntry::SetOperand(int op1,
                                  InstructionEntry *insn2,
                                  int op2) {
//  aarch64_instruction *i1 = instruction();
//  aarch64_instruction *i2 = insn2->instruction();
//
//  memcpy(&i1->types[op1], &i2->types[op2], sizeof(i386_operand_type));
//  i1->flags[op1] = i2->flags[op2];
//  if (insn2->IsImmediateOperand(op2))
//    i1->op[op1].imms = CreateExpressionCopy(i2->op[op2].imms);
//  if (insn2->IsRegisterOperand(op2))
//    i1->op[op1].regs = i2->op[op2].regs;
//  if (insn2->IsMemOperand(op2))
//    i1->op[op1].disps = CreateExpressionCopy(i2->op[op2].disps);
//  if (insn2->IsMemOperand(op2)) {
//    i1->base_reg = i2->base_reg;
//    i1->index_reg = i2->index_reg;
//    i1->log2_scale_factor = i2->log2_scale_factor;
//  }
//  i1->reloc[op1] = i2->reloc[op2];
}

bool InstructionEntry::CompareMemOperand(int op1,
                                         InstructionEntry *insn2,
                                         int op2) const {
//  aarch64_instruction *i1 = instruction();
//  aarch64_instruction *i2 = insn2->instruction();
//
//  if (memcmp(&i1->types[op1], &i2->types[op2], sizeof(i386_operand_type)))
//    return false;
//  if (i1->flags[op1] != i2->flags[op2])
//    return false;
//
//  if (i1->types[op1].bitfield.disp8 ||
//      i1->types[op1].bitfield.disp16 ||
//      i1->types[op1].bitfield.disp32 ||
//      i1->types[op1].bitfield.disp32s ||
//      i1->types[op1].bitfield.disp64 ||
//      i2->types[op2].bitfield.disp8 ||
//      i2->types[op2].bitfield.disp16 ||
//      i2->types[op2].bitfield.disp32 ||
//      i2->types[op2].bitfield.disp32s ||
//      i2->types[op2].bitfield.disp64) {
//    const expressionS *disp1 = i1->op[op1].disps;
//    const expressionS *disp2 = i2->op[op2].disps;
//    if (disp1 && !disp2) return false;
//    if (!disp1 && disp2) return false;
//    if (disp1 && disp2) {
//      if (disp1->X_op != disp2->X_op) return false;
//      if (disp1->X_op == O_constant &&
//          disp1->X_add_number != disp2->X_add_number)
//        return false;
//      if (disp1->X_op == O_symbol &&
//          strcmp(S_GET_NAME(disp1->X_add_symbol),
//                 S_GET_NAME(disp2->X_add_symbol)))
//        return false;
//      // TODO: Check RelocString
//      if (disp1->X_op == O_symbol &&
//          disp1->X_add_number != disp2->X_add_number)
//        return false;
//      if (disp1->X_op == O_subtract) {
//        if (disp1->X_add_symbol &&
//            disp1->X_add_symbol != disp2->X_add_symbol)
//          return false;
//        if (disp1->X_op_symbol &&
//            strcmp(S_GET_NAME(disp1->X_op_symbol),
//                   S_GET_NAME(disp2->X_op_symbol)))
//          return false;
//        if (disp1->X_add_number != disp2->X_add_number)
//          return false;
//      }
//    }
//  }
//
//  if (i1->base_reg != i2->base_reg)
//    return false;
//
//  if (i1->index_reg != i2->index_reg)
//    return false;
//
//  if (i1->log2_scale_factor != i2->log2_scale_factor)
//    return false;
//
//  return true;
//}
//
//// segment-override:signed-offset(base,index,scale)
//std::string &InstructionEntry::MemoryOperandToString(std::string *out,
//                                                     int op_index) const {
//  std::ostringstream string_stream;
//
//  // Find out the correct segment index. The index is based on the number
//  // of memory operands in the instruction.
//  int seg_index = op_index;
//  for (int i = 0; i < op_index; i++) {
//    if (!IsMemOperand(instruction_, i)) {
//      seg_index--;
//    }
//  }
//
//
//  const expressionS *expr = instruction_->op[op_index].disps;
//  const char *segment_override = instruction_->seg[seg_index]?
//      instruction_->seg[seg_index]->seg_name:
//      0;
//  const bool jumpabsolute = instruction_->tm.opcode_modifier.jump == JUMP_ABSOLUTE
//      || instruction_->tm.opcode_modifier.jump == JUMP_ABSOLUTE;
//
//  int scale[] = { 1, 2, 4, 8 };
//
//  if (jumpabsolute) {
//    string_stream << "*";
//  }
//
//  // segment-override:
//  if (segment_override) {
//    // cmps only allows es as the first segment override. Gas
//    // incorrectly gives ds as the segement. We need to work
//    // around this here. See tc-i386.c check_string() for details.
//    unsigned int es_op = instruction_->tm.opcode_modifier.isstring - IS_STRING_ES_OP0;
//    unsigned int op = instruction_->tm.operand_types[0].bitfield.baseindex ? es_op : 0;
//    if (instruction_->seg[op] != NULL && instruction_->seg[op] != &es) {
//      string_stream << "%es:";
//    } else {
//      string_stream << "%"
//                    << segment_override
//                    << ":";
//    }
//  }
//
//  const i386_operand_type &operand_type = instruction_->types[op_index];
//  if (operand_type.bitfield.disp8 ||
//      operand_type.bitfield.disp16 ||
//      operand_type.bitfield.disp32 ||
//      operand_type.bitfield.disp32s ||
//      operand_type.bitfield.disp64) {
//    const enum bfd_reloc_code_real reloc = instruction_->reloc[op_index];
//    std::string expr_string;
//    ExpressionToStringDisp(expr, &expr_string, &reloc);
//    string_stream << expr_string;
//  }
//
//  // (base,index,scale)
//
//  // The gas structure only holds on base_reg (the last one parsed in the
//  // instruction). For instructions with multiple base_regs (movs, ..?)
//  // this means that we have manually print out the correct register name.
//  // movs always have si/esi as the first register (depending on the mode).
//  // See the Intel Manual vol 2a specifics on movs instructions.
//  const char *base_reg_name = 0;
//  if (op_index == 0 && instruction_->operands > 1 &&
//      (instruction_->types[0].bitfield.baseindex ||
//         instruction_->tm.operand_types[0].bitfield.instance == RegD
//		      || instruction_->tm.operand_types[1].bitfield.instance == RegD) &&
//      (instruction_->types[1].bitfield.baseindex ||
//         instruction_->tm.operand_types[0].bitfield.instance == RegD
//		      || instruction_->tm.operand_types[1].bitfield.instance == RegD)) {
//    // If the instruction has a prefix, we need to change
//    // the register name accordingly.
//    // e.g.: movsw  %cs:(%si),%es:(%di)
//    //       outsb  %ds:(%esi),   (%dx)
//    // rep   cmpsb      (%edi),   (%esi)
//    // One could either check:
//    //    instruction_->tm.operand_types[op_index].bitfield.disp32
//    // or:
//    //    HasPrefix(ADDR_PREFIX_OPCODE)
//
//    // Depending on the OP, we can determine the actual register.
//    //  CMPS  -> %(e)di
//    //  Ohter -> %(e)si
//
//    if (op() == OP_cmps &&
//        instruction_->tm.operand_types[op_index].bitfield.disp32) {
//      base_reg_name = "edi";
//    } else if (op() == OP_cmps &&
//               !instruction_->tm.operand_types[op_index].bitfield.disp32) {
//      base_reg_name = "di";
//    } else if (instruction_->tm.operand_types[op_index].bitfield.disp32) {
//      base_reg_name = "esi";
//    } else {
//      base_reg_name = "si";
//    }
//  } else if (instruction_->base_reg) {
//    base_reg_name = instruction_->base_reg->reg_name;
//  }
//
//
//  if (instruction_->base_reg || instruction_->index_reg)
//    string_stream << "(";
//  if (instruction_->base_reg)
//    string_stream << "%"
//                  << base_reg_name;
//  if (instruction_->index_reg)
//    string_stream << ",%"
//                  << instruction_->index_reg->reg_name;
//  if (instruction_->log2_scale_factor)
//    string_stream << ","
//                  << scale[instruction_->log2_scale_factor];
//  if (instruction_->base_reg || instruction_->index_reg)
//    string_stream << ")";
//
//  out->append(string_stream.str());
//  return *out;
}

bool InstructionEntry::HasBaseRegister() const {
//  return instruction_->base_reg != NULL;
}

bool InstructionEntry::HasIndexRegister() const {
//  return instruction_->index_reg != NULL;
}

const char *InstructionEntry::GetBaseRegisterStr() const {
//  return instruction_->base_reg ? instruction_->base_reg->reg_name : NULL;
}
const char *InstructionEntry::GetIndexRegisterStr() const {
//  return instruction_->index_reg ? instruction_->index_reg->reg_name : NULL;
}
const reg_entry *InstructionEntry::GetBaseRegister() const {
//  return instruction_->base_reg;
}
const reg_entry *InstructionEntry::GetIndexRegister() const {
//  return instruction_->index_reg;
}


unsigned int InstructionEntry::GetLog2ScaleFactor() {
//  return instruction_->log2_scale_factor;
}


std::string &
InstructionEntry::GetAssemblyInstructionName(std::string *out) const {
  #define XMMWORD_MNEM_SUFFIX  'x'
  #define YMMWORD_MNEM_SUFFIX 'y'

  // This prefix is found for some Intel syntax
  // instructions. See tc-i386.c for more info.
  #ifndef LONG_DOUBLE_MNEM_SUFFIX
  #define LONG_DOUBLE_MNEM_SUFFIX '\1'
  #endif

  bool no_suffix = false;

  // fdiv and fsub have different opcodes in intel and at&t syntax. They
  // are also bug-compatible with older compilers/tools, making the
  // intel documentation wrong.
  // Since the templates in i386-tbl.h are build in a way that the name
  // and opcode in the matched tempalte does not always match the at&t
  // syntax that we output, we need to handle these instruction
  // in a special way.
//  if (instruction_->tm.base_opcode >= 0xdcf8 &&
//      instruction_->tm.base_opcode <= (0xdcf8 + 7)) *out = "fdivr";
//  else if (instruction_->tm.base_opcode >= 0xdcf0 &&
//           instruction_->tm.base_opcode <= (0xdcf0 + 7)) *out = "fdiv";
//  else if (instruction_->tm.base_opcode >= 0xdef8 &&
//           instruction_->tm.base_opcode <= (0xdef8 + 7)) *out = "fdivrp";
//  else if (instruction_->tm.base_opcode >= 0xdef0 &&
//           instruction_->tm.base_opcode <= (0xdef0 + 7)) *out = "fdivp";
//  else if (instruction_->tm.base_opcode >= 0xdce8 &&
//           instruction_->tm.base_opcode <= (0xdce8 + 7)) *out = "fsubr";
//  else if (instruction_->tm.base_opcode >= 0xdce0 &&
//           instruction_->tm.base_opcode <= (0xdce0 + 7)) *out = "fsub";
//  else if (instruction_->tm.base_opcode >= 0xdee8 &&
//           instruction_->tm.base_opcode <= (0xdee8 + 7)) *out = "fsubrp";
//  else if (instruction_->tm.base_opcode >= 0xdee0 &&
//           instruction_->tm.base_opcode <= (0xdee0 + 7)) *out = "fsubp";
//  else if (instruction_->tm.base_opcode == 0xfbe) *out = "movsb";
//  else if (instruction_->tm.base_opcode == 0xfbf) *out = "movsw";
//  else if (instruction_->tm.base_opcode == 0x63 &&
//           ((GetRexPrefix() & REX_W) || op() == OP_movsx))
//    *out = "movsl";
//  else if (instruction_->tm.base_opcode == 0xfb6) *out = "movzb";
//  else if (instruction_->tm.base_opcode == 0xfb7) *out = "movzw";
//  else
    if(instruction_->base.cond[0].names!=NULL)
    {
        char name[512];
        strcpy(name,instruction_->base.opcode->name);
        name[strlen(name)-1]='\0';
        out->append(name);
        out->append(reinterpret_cast<const char *>(instruction_->base.cond->names[0]));
    }
    else
        out->append(instruction_->base.opcode->name);

//  if (instruction_->suffix != 0) {
//    if (instruction_->suffix == LONG_DOUBLE_MNEM_SUFFIX) {
//      // TODO(martint): Handle these special case found in intelok.s
//      // in a cleaner way.
//      // It seems that some intel syntax causes an invalid l prefix
//      // to be added for some instructions.
//      const MaoOpcode supress_l_prefix[] = {
//        // AVX Instructions from gas test-suite:
//        OP_fbld, OP_fbstp, OP_fld, OP_fstp
//      };
//      if (!IsInList(op(), supress_l_prefix,
//                    sizeof(supress_l_prefix)/sizeof(MaoOpcode))) {
//        out->insert(out->begin(), 'l');
//      }
//      // For these instructions, the suggested l prefix should
//      // be translated to a t suffix.
//      if (op() == OP_fld || op() == OP_fstp) {
//        out->insert(out->end(), 't');
//      }
//      no_suffix = true;
//    }
//
//    const MaoOpcode opcode_needs_y_suffix[] = {
//      // AVX Instructions from gas test-suite:
//      OP_vcvtpd2dq, OP_vcvtpd2ps, OP_vcvttpd2dq
//    };
//
//    const MaoOpcode opcode_has_l_suffix[] =  {
//      OP_cmovl, OP_cmovnl, OP_cwtl, OP_cltd, OP_movbe
//    };
//    const MaoOpcode opcode_has_w_suffix[] =  {
//      OP_cbtw, OP_fnstsw
//    };
//    const MaoOpcode opcode_has_b_suffix[] =  {
//      OP_setb
//    };
//    const MaoOpcode keep_sse4_2_suffix[] =  {
//      OP_crc32
//    };
//
//    const MaoOpcode supress_suffix[] =  {
//      // Misc instructions from the gas testsuite.
//      OP_invept, OP_movd, OP_cmpxchg16b, OP_vmptrld, OP_vmclear, OP_vmxon,
//      OP_vmptrst, OP_ldmxcsr, OP_stmxcsr, OP_clflush, OP_addsubps, OP_cvtpd2dq,
//      OP_comiss, OP_cvttps2dq, OP_haddps, OP_movdqu, OP_movshdup, OP_pshufhw,
//      OP_movsldup, OP_pshuflw, OP_punpcklbw, OP_unpckhpd, OP_paddq, OP_psubq,
//      OP_pmuludq, OP_punpckldq, OP_punpcklqdq, OP_unpckhps, OP_punpcklwd,
//      OP_cmpeqss, OP_ucomiss, OP_cvtss2sd, OP_divss, OP_minss, OP_maxss,
//      OP_movntss, OP_movss, OP_rcpss, OP_rsqrtss, OP_sqrtss, OP_subss,
//      OP_unpcklpd, OP_mulss, OP_unpcklps, OP_cmpss, OP_vmovd, OP_vextractps,
//      OP_vpextrb, OP_vpinsrb, OP_vpextrd, OP_cqto, OP_jecxz,
//      // AVX Instructions from gas test-suite:
//      OP_vldmxcsr, OP_vstmxcsr, OP_vaddss, OP_vdivss, OP_vcvtss2sd, OP_vmaxss,
//      OP_vminss, OP_vmulss, OP_vrcpss, OP_vrsqrtss, OP_vsqrtss, OP_vsubss,
//      OP_vcmpeqss, OP_vcmpltss, OP_vcmpless, OP_vcmpunordss, OP_vcmpneqss,
//      OP_vcmpnltss, OP_vcmpnless, OP_vcmpordss, OP_vcmpeq_uqss, OP_vcmpngess,
//      OP_vcmpngtss, OP_vcmpfalsess, OP_vcmpneq_oqss, OP_vcmpgess, OP_vcmpgtss,
//      OP_vcmptruess, OP_vcmpeq_osss, OP_vcmplt_oqss, OP_vcmple_oqss,
//      OP_vcmpunord_sss, OP_vcmpneq_usss, OP_vcmpnlt_uqss, OP_vcmpnle_uqss,
//      OP_vcmpord_sss, OP_vcmpeq_usss, OP_vcmpnge_uqss, OP_vcmpngt_uqss,
//      OP_vcmpfalse_osss, OP_vcmpneq_osss, OP_vcmpge_oqss, OP_vcmpgt_oqss,
//      OP_vcmptrue_usss, OP_vbroadcastss, OP_vcomiss, OP_vpmovsxbd, OP_vpmovsxwq,
//      OP_vpmovzxbd, OP_vpmovzxwq, OP_vucomiss, OP_vmovss, OP_vmovss, OP_vcmpss,
//      OP_vinsertps, OP_vroundss, OP_vfmaddss, OP_vfmaddss, OP_vfmsubss,
//      OP_vfmsubss, OP_vfnmaddss, OP_vfnmsubss, OP_vfnmsubss, OP_vpmovsxbq,
//      OP_vpmovzxbq, OP_vpextrw, OP_vpextrw, OP_vpinsrw, OP_vpinsrw,
//      // CBW instructions
//      OP_cbw, OP_cwde, OP_cdqe, OP_cwd, OP_cdq, OP_cqo,
//      // From x86-64-ept.s
//      OP_invvpid,
//      // From x86-64-prescott.s
//      OP_monitor, OP_mwait,
//      // From general.s
//      OP_movzbw,
//      // From i386.s
//      OP_fstsw,
//      // From opcode.s
//      OP_cwtd,
//      // From svme.s
//      OP_skinit, OP_vmload, OP_vmsave, OP_invlpga, OP_vmrun,
//      // From intelok.s
//      OP_addss, OP_pinsrw
//    };
//
//    if ((instruction_->suffix == XMMWORD_MNEM_SUFFIX ||
//         instruction_->suffix == YMMWORD_MNEM_SUFFIX) &&
//        !IsInList(op(), opcode_needs_y_suffix,
//                  sizeof(opcode_needs_y_suffix)/sizeof(MaoOpcode))) {
//      no_suffix = true;
//    }
//
//    if ((instruction_->suffix == 'l') &&
//        IsInList(op(), opcode_has_l_suffix,
//                 sizeof(opcode_has_l_suffix)/sizeof(MaoOpcode))) {
//      no_suffix = true;
//    }
//    if ((instruction_->suffix == 'w') &&
//        IsInList(op(), opcode_has_w_suffix,
//                 sizeof(opcode_has_w_suffix)/sizeof(MaoOpcode))) {
//      no_suffix = true;
//    }
//    if ((instruction_->suffix == 'b') &&
//        IsInList(op(), opcode_has_b_suffix,
//                 sizeof(opcode_has_b_suffix)/sizeof(MaoOpcode))) {
//      no_suffix = true;
//    }
//    if (instruction_->suffix == 'q' &&
//        out->c_str()[out->length()-1] == 'q') {
//      no_suffix = true;
//    }
//
//    // Do not print suffix for cpusse4_1 instructions
//    //  e.g.: OP_extractps, OP_pextrb, OP_pextrd, OP_pinsrb, OP_pinsrd
//    if (instruction_->tm.cpu_flags.bitfield.cpusse4_1) {
//      no_suffix = true;
//    }
//    // Do not print suffix for cpusse4_2 instructions
//    // except for OP_crc32
//    if (instruction_->tm.cpu_flags.bitfield.cpusse4_2 &&
//        !IsInList(op(), keep_sse4_2_suffix,
//                  sizeof(keep_sse4_2_suffix)/sizeof(MaoOpcode))) {
//      no_suffix = true;
//    }
//
//    // SPECIAL case movslq.  For some reason gas lists its suffix as
//    // 'l' when it should be 'q'.
//    if (instruction_->tm.base_opcode == 0x63 &&
//        (GetRexPrefix() & REX_W) && instruction_->suffix == 'l') {
//      out->append("q");
//      no_suffix = true;
//    }
//
//    if (IsInList(op(), supress_suffix,
//                 sizeof(supress_suffix)/sizeof(MaoOpcode))) {
//      no_suffix = true;
//    }
//
//    if (!no_suffix) {
//      out->insert(out->end(), instruction_->suffix);
//    }
//  }
  return *out;
}

std::string &InstructionEntry::PrintRexPrefix(std::string *out,
                                              int prefix) const {
//  const char *rex_arr[] = {"rex", "rexz", "rexy", "rexyz", "rexx",
//                           "rexxz", "rexxy", "rexxyz", "rex64",
//                           "rex64z", "rex64y", "rex64yz", "rex64x",
//                           "rex64xz", "rex64xy", "rex64xyz"};
//
//  MAO_ASSERT_MSG(prefix >= REX_OPCODE &&
//                 prefix < REX_OPCODE+16,
//                 "Error in REX prefix: %d\n", prefix);
//
//  out->append(rex_arr[prefix-REX_OPCODE]);
//  out->append(" ");
//  return *out;
}


unsigned char InstructionEntry::GetRexPrefix() const {
//  if (instruction_->prefixes > 0) {
//    for (unsigned int i = 0;
//         i < sizeof(instruction_->prefix)/sizeof(unsigned char);
//         ++i) {
//      if (instruction_->prefix[i] >= REX_OPCODE &&
//          instruction_->prefix[i] < REX_OPCODE+16) {
//        return instruction_->prefix[i];
//      }
//    }
//  }
//  return 0;
}


bool InstructionEntry::HasPrefix(unsigned char prefix) const {
//  if (instruction_->prefixes > 0) {
//    for (unsigned int i = 0;
//         i < sizeof(instruction_->prefix)/sizeof(unsigned char);
//         ++i) {
//      if (instruction_->prefix[i] == prefix) {
//        return true;
//      }
//    }
//  }
//  return false;
}


// If the register name cr8..15 is used, the lock prefix is implicit.
bool InstructionEntry::SuppressLockPrefix() const {
//  for (unsigned int op_index = 0;
//      op_index < instruction_->operands;
//      op_index++) {
//    if (instruction_->types[op_index].bitfield.class_width==RegCR &&
//        instruction_->op[op_index].regs->reg_flags != 0) {
//      return true;
//    }
//  }
//  return false;
}

// Removes prefixes from the prefix byte that are implicit from the instruction.
int InstructionEntry::StripRexPrefix(int prefix) const {
//  int stripped_prefix = prefix;
//
//  // there are 4 bits that we want to track
//  // - rex.w REX_W
//  // - rex.r REX_R
//  // - rex.x REX_X
//  // - rex.b REX_B
//
//  // If none of the bits are given, return unmodified.
//  if (stripped_prefix == REX_OPCODE) {
//    return prefix;
//  }
//
//  // No prefixes for NOP instructions
//  if (op() == OP_nop) {
//    return 0;
//  }
//
//  // No prefixes for multimedia instructions
//  if (instruction_->tm.cpu_flags.bitfield.cpuavx ||
//      instruction_->tm.cpu_flags.bitfield.cpusse ||
//      instruction_->tm.cpu_flags.bitfield.cpusse2 ||
//      instruction_->tm.cpu_flags.bitfield.cpusse3 ||
//      instruction_->tm.cpu_flags.bitfield.cpusse4_1 ||
//      instruction_->tm.cpu_flags.bitfield.cpusse4_2) {
//    return 0;
//  }
//
//  // Special case for movslq.  No prefix is necessary.
//  if (instruction_->tm.base_opcode == 0x63 &&
//      ((stripped_prefix-REX_OPCODE) & REX_W)) {
//    return 0;
//  }
//
//  // Check for the four bits, and remove them if they are unnecessary
//  if ((stripped_prefix-REX_OPCODE) & REX_W) {
//    // Make sure xchange-based noops are not stripped of their rex prefix
//    // xchange based nops use the rax register.
//    const reg_entry *rax = GetRegFromName("rax");
//    if (op() == OP_xchg &&
//        instruction_->operands == 2 &&
//        IsRegisterOperand(instruction_, 0) &&
//        IsRegisterOperand(instruction_, 1) &&
//        instruction_->op[0].regs == rax &&
//        instruction_->op[1].regs == rax) {
//      // Do not strip any prefixes.
//    } else if (instruction_->suffix == 'q') {
//      // Remove prefixes for instructions with the q suffix
//      stripped_prefix = ((stripped_prefix-REX_OPCODE) & ~REX_W)+REX_OPCODE;
//    }
//  }
//
//  if ((stripped_prefix-REX_OPCODE) & REX_R) {
//    // Does this instruction have a register
//    for (unsigned int i = 0; i < instruction_->operands; ++i) {
//      if (IsRegisterOperand(instruction_, i)) {
//        stripped_prefix = ((stripped_prefix-REX_OPCODE) & ~REX_R)+REX_OPCODE;
//      }
//    }
//  }
//  if ((stripped_prefix-REX_OPCODE) & REX_X) {
//    // Does this instruction have a register
//    for (unsigned int i = 0; i < instruction_->operands; ++i) {
//      if (IsMemOperand(instruction_, i)) {
//        stripped_prefix = ((stripped_prefix-REX_OPCODE) & ~REX_X)+REX_OPCODE;
//      }
//    }
//  }
//  if ((stripped_prefix-REX_OPCODE) & REX_B) {
//    // Special case with xchg. e.g. xchg %rax,%r8
//    if (op() == OP_xchg) {
//      stripped_prefix = ((stripped_prefix-REX_OPCODE) & ~REX_B)+REX_OPCODE;
//    } else {
//      for (unsigned int i = 0; i < instruction_->operands; ++i) {
//        if (IsMemOperand(instruction_, i) ||
//            IsRegisterOperand(instruction_, i)) {
//          // Does this instruction have a register
//          stripped_prefix = ((stripped_prefix-REX_OPCODE) & ~REX_B)+REX_OPCODE;
//        }
//      }
//    }
//  }
//
//  // Stripped away rex prefix if all the bits are removed
//  if (stripped_prefix == REX_OPCODE) {
//    return 0;
//  }
//
//  return stripped_prefix;
}

// Prints out the instruction.
// Goal is to make it print instructions generated by gcc
std::string &InstructionEntry::InstructionToString(std::string *out) const {
//  const MaoOpcode rep_ops[] = {OP_ins, OP_outs, OP_movs, OP_lods, OP_stos};
//  const MaoOpcode repe_ops[]= {OP_cmps, OP_scas};
//
//
//  const MaoOpcode via_padlock_ops[] = {OP_xstorerng, OP_xcryptecb, OP_xcryptcbc,
//                                       OP_xcryptcfb, OP_xcryptofb, OP_xstore,
//                                       OP_montmul,   OP_xsha1,     OP_xsha256};
//
//  // TODO(martint): This is a workaround, until I can figure out
//  // how to write
//  //   .data16
//  //   jmp fword ptr [bx]
//  // in at&t syntax.
//  if ((IsJump()||IsCall()) && NumOperands() == 1
//      && HasBaseRegister()
//      && instruction_->types[0].bitfield.fword == 1
//      && code_flag_ == CODE_16BIT) {
//    out->append("\t.intel_syntax noprefix\n");
//    if (IsJump())
//      out->append("\tjmp     fword ptr [");
//    else if (IsCall())
//      out->append("\tcall     fword ptr [");
//    out->append(GetBaseRegister()->reg_name);
//    out->append("]\n");
//    out->append("\t.att_syntax\n");
//    return *out;
//  }

  // Prefixes
  out->append("\t");
//  if (instruction_->prefixes > 0) {
//    for (unsigned int i = 0;
//         i < sizeof(instruction_->prefix)/sizeof(unsigned char);
//         ++i) {
//      // The prefixes in the instruction is stored in a array of size 6:
//      //    These are the indexes:
//      //    WAIT_PREFIX     0,
//      //    SEG_PREFIX      1
//      //    ADDR_PREFIX     2
//      //    DATA_PREFIX     3
//      //    LOCKREP_PREFIX  4
//      //    REX_PREFIX      5
//
//      if (instruction_->prefix[i] != 0) {
//        // The list of available prefixes can be found in the following file:
//        // ../binutils-2.19/include/opcode/i386.h
//        switch (instruction_->prefix[i]) {
//          // http://www.intel.com/software/products/documentation/vlin/mergedprojects/analyzer_ec/mergedprojects/reference_olh/mergedProjects/instructions/instruct32_hh/vc276.htm
//          // Repeats a string instruction the number of times specified in the
//          // count register ((E)CX) or until the indicated condition of the ZF
//          // flag is no longer met.
//          // REP (repeat)                                 ins: INS, OUTS, MOVS
//          //                                                   LODS, STOS
//          // REPE,  REPZ (repeat while equal, zero)          ins: CMPS, SCAS
//          // REPNE, REPNZ (repeat while not equal, not zero) ins: CMPS, SCAS
//          case REPNE_PREFIX_OPCODE:
//            if (IsInList(op(), repe_ops, sizeof(repe_ops)/sizeof(MaoOpcode))) {
//              out->append("repne ");
//            } else if (IsInList(op(), rep_ops,
//                                sizeof(repe_ops)/sizeof(MaoOpcode))) {
//              MAO_ASSERT_MSG(false,
//                             "Found prefix does not match the instruction.");
//            }
//            break;
//          case REPE_PREFIX_OPCODE:
//            if (IsInList(op(), repe_ops, sizeof(repe_ops)/sizeof(MaoOpcode))) {
//              out->append("repe ");
//            } else if (IsInList(op(), rep_ops,
//                                sizeof(rep_ops)/sizeof(MaoOpcode))) {
//              out->append("rep ");
//            } else if (IsInList(op(), via_padlock_ops,
//                                sizeof(via_padlock_ops)/sizeof(MaoOpcode))) {
//              out->append("rep ");
//            }
//            break;
//          // Rex prefixes are used for 64-bit extention
//          // There are 4 rex-bits -> 16 rex versions
//          case REX_OPCODE+0:
//          case REX_OPCODE+1:
//          case REX_OPCODE+2:
//          case REX_OPCODE+3:
//          case REX_OPCODE+4:
//          case REX_OPCODE+5:
//          case REX_OPCODE+6:
//          case REX_OPCODE+7:
//          case REX_OPCODE+8:
//          case REX_OPCODE+9:
//          case REX_OPCODE+10:
//          case REX_OPCODE+11:
//          case REX_OPCODE+12:
//          case REX_OPCODE+13:
//          case REX_OPCODE+14:
//          case REX_OPCODE+15: {
//            // Remove prefixes that are implicit in the instruction
//            int stripped_prefix = StripRexPrefix(instruction_->prefix[i]);
//            // Print the remaining
//            if (stripped_prefix != 0) {
//              PrintRexPrefix(out, stripped_prefix);
//            }
//            break;
//          }
//          case DATA_PREFIX_OPCODE:  // e.g. : cmpw    %cx, %ax
//            break;
//          case CS_PREFIX_OPCODE:
//          case DS_PREFIX_OPCODE:
//          case ES_PREFIX_OPCODE:
//          case FS_PREFIX_OPCODE:
//          case GS_PREFIX_OPCODE:
//          case SS_PREFIX_OPCODE:
//            break;
//          case ADDR_PREFIX_OPCODE:
//            // used in movl (%eax), %eax
//            //  addr32 lea symbol,%rax
//            switch (code_flag_) {
//              case  CODE_16BIT:
//                out->append("addr32  ");
//                break;
//              case  CODE_32BIT:
//                out->append("addr16  ");
//                break;
//              case  CODE_64BIT:
//                out->append("addr32  ");
//                break;
//              default:
//                MAO_ASSERT_MSG(false, "Fould illegal prefix.");
//                break;
//            }
//            break;
//          case LOCK_PREFIX_OPCODE:
//            // used in  lock xaddl        %eax, 16(%rdi)
//
//            // If an instruction has a control-register as operand,
//            // the lock prefix should not be printed.
//            if (!SuppressLockPrefix()) {
//              out->append("lock ");
//            }
//            break;
//          case FWAIT_OPCODE:
//            // Found in fstsw instruction
//            break;
//          default:
//            MAO_ASSERT_MSG(false, "Unknown prefix found 0x%x\n",
//                           instruction_->prefix[i]);
//        }
//      }
//    }
//  }

  // Gets the name of the assembly instruction, including
  // suffixes.
  std::string instruction_name;
  GetAssemblyInstructionName(&instruction_name);
  out->append(instruction_name);
  out->append("\t");

//   Loop over operands
//  int num_operands = instruction_->operands;

//  if (instruction_->tm.opcode_modifier.immext) {
//    num_operands = instruction_->operands - 1;
//  }

    for (int i = 0; i < AARCH64_MAX_OPND_NUM; ++i)
    {
        char str[512];

        /* We regard the opcode operand info more, however we also look into
       the inst->operands to support the disassembling of the optional
       operand.
       The two operand code should be the same in all cases, apart from
       when the operand can be optional.  */
        if (instruction_->base.opcode->operands[i] == AARCH64_OPND_NIL
            || instruction_->base.operands[i].type == AARCH64_OPND_NIL)
            break;

        /* Generate the operand string in STR.  */
        fixInstruction(i);
//        TODO(@getianao): Extract this part to a function.
        if((instruction_->base.operands[i].type==AARCH64_OPND_AIMM
                || instruction_->base.operands[i].type==AARCH64_OPND_ADDR_ADRP	/* Memory address for ADRP */
              ||instruction_->base.operands[i].type==AARCH64_OPND_ADDR_PCREL14	/* 14-bit PC-relative address for e.g. TBZ.  */
                || instruction_->base.operands[i].type==AARCH64_OPND_ADDR_PCREL19	/* 19-bit PC-relative address for e.g. LDR.  */
                || instruction_->base.operands[i].type==AARCH64_OPND_ADDR_PCREL21	/* 21-bit PC-relative address for e.g. ADR.  */
                || instruction_->base.operands[i].type==AARCH64_OPND_ADDR_PCREL26	/* 26-bit PC-relative address for e.g. BL.  */
                || instruction_->base.operands[i].type==AARCH64_OPND_ADDR_SIMPLE	/* Address of ld/st exclusive.  */
                || instruction_->base.operands[i].type==AARCH64_OPND_ADDR_REGOFF	/* Address of register offset.  */
                || instruction_->base.operands[i].type==AARCH64_OPND_ADDR_SIMM7	/* Address of signed 7-bit immediate.  */
                || instruction_->base.operands[i].type==AARCH64_OPND_ADDR_SIMM9	/* Address of signed 9-bit immediate.  */
                || instruction_->base.operands[i].type==AARCH64_OPND_ADDR_SIMM9_2	/* Same as the above, but the immediate is
				   negative or unaligned and there is
				   no writeback allowed.  This operand code
				   is only used to support the programmer-
				   friendly feature of using LDR/STR as the
				   the mnemonic name for LDUR/STUR instructions
				   wherever there is no ambiguity.  */
                || instruction_->base.operands[i].type==AARCH64_OPND_ADDR_SIMM10	/* Address of signed 10-bit immediate.  */
                || instruction_->base.operands[i].type== AARCH64_OPND_ADDR_SIMM11	/* Address with a signed 11-bit (multiple of
				   16) immediate.  */
                || instruction_->base.operands[i].type== AARCH64_OPND_ADDR_UIMM12	/* Address of unsigned 12-bit immediate.  */
                || instruction_->base.operands[i].type== AARCH64_OPND_ADDR_SIMM13	/* Address with a signed 13-bit (multiple of
				   16) immediate.  */
                || instruction_->base.operands[i].type== AARCH64_OPND_SIMD_ADDR_SIMPLE/* Address of ld/st multiple structures.  */
                || instruction_->base.operands[i].type==AARCH64_OPND_ADDR_OFFSET    /* Address with an optional 9-bit immediate.  */
                || instruction_->base.operands[i].type== AARCH64_OPND_SIMD_ADDR_POST	/* Address of ld/st multiple post-indexed.  */
                || instruction_->base.operands[i].type== AARCH64_OPND_HALF) &&
                instruction_->reloc.exp.X_add_symbol!=NULL)
        {
            std::string r;
            switch( instruction_->reloc.type){
                case BFD_RELOC_AARCH64_LD32_GOTPAGE_LO14:
                    r=":gotpage_lo14:";
                    break;
                case BFD_RELOC_AARCH64_LD64_GOTPAGE_LO15:
                    r=":gotpage_lo15:";
                    break;
                case BFD_RELOC_AARCH64_LD64_GOTOFF_LO15:
                    r=":gotoff_lo15:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_G3:
                    r=":abs_g3:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_G2_NC:
                    r=":abs_g2_nc:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_G2_S:
                    r=":abs_g2_s:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_G2:
                    r=":abs_g2:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_G1_NC:
                    r=":abs_g1_nc:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_G1_S:
                    r=":abs_g1_s:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_G1:
                    r=":abs_g1:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_G0_NC:
                    r=":abs_g0_nc:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_G0_S:
                    r=":abs_g0_s:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_G0:
                    r=":abs_g0:";
                    break;
                case BFD_RELOC_AARCH64_LDST128_LO12:
                case BFD_RELOC_AARCH64_LDST64_LO12:
                case BFD_RELOC_AARCH64_LDST32_LO12:
                case BFD_RELOC_AARCH64_LDST16_LO12:
                case BFD_RELOC_AARCH64_LDST8_LO12:
                case BFD_RELOC_AARCH64_ADD_LO12:
                    r=":lo12:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_GOTOFF_G0_NC:
                    r=":gotoff_g0_nc:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_GOTOFF_G1:
                    r=":gotoff_g1:";
                    break;
                case BFD_RELOC_AARCH64_TLSIE_MOVW_GOTTPREL_G0_NC:
                    r=":gottprel_g0_nc:";
                    break;
                case BFD_RELOC_AARCH64_TLSIE_MOVW_GOTTPREL_G1:
                    r=":gottprel_g1:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_PREL_G0:
                    r=":prel_g0:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_PREL_G0_NC:
                    r=":prel_g0_nc:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_PREL_G1:
                    r=":prel_g1:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_PREL_G1_NC:
                    r=":prel_g1_nc:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_PREL_G2:
                    r=":prel_g2:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_PREL_G2_NC:
                    r=":prel_g2_nc:";
                    break;
                case BFD_RELOC_AARCH64_MOVW_PREL_G3:
                    r=":prel_g3:";
                    break;
                case BFD_RELOC_AARCH64_TLSGD_MOVW_G0_NC:
                    r=":tlsgd_g0_nc:";
                    break;
                case BFD_RELOC_AARCH64_TLSGD_MOVW_G1:
                    r=":tlsgd_g1:";
                    break;
                case BFD_RELOC_AARCH64_TLSLD_MOVW_DTPREL_G0:
                    r=":dtprel_g0:";
                    break;
                case BFD_RELOC_AARCH64_TLSLD_MOVW_DTPREL_G0_NC:
                    r=":dtprel_g0_nc:";
                    break;
                case BFD_RELOC_AARCH64_TLSLD_MOVW_DTPREL_G1:
                    r=":dtprel_g1:";
                    break;
                case BFD_RELOC_AARCH64_TLSLD_MOVW_DTPREL_G1_NC:
                    r=":dtprel_g1_nc:";
                    break;
                case BFD_RELOC_AARCH64_TLSLD_MOVW_DTPREL_G2:
                    r=":dtprel_g2:";
                    break;
                case BFD_RELOC_AARCH64_TLSLD_ADD_DTPREL_HI12:
                    r=":dtprel_hi12:";
                    break;
                case BFD_RELOC_AARCH64_TLSLD_LDST64_DTPREL_LO12:
                case BFD_RELOC_AARCH64_TLSLD_LDST32_DTPREL_LO12:
                case BFD_RELOC_AARCH64_TLSLD_LDST16_DTPREL_LO12:
                case BFD_RELOC_AARCH64_TLSLD_LDST8_DTPREL_LO12:
                case BFD_RELOC_AARCH64_TLSLD_ADD_DTPREL_LO12:
                    r=":dtprel_lo12:";
                    break;
                case BFD_RELOC_AARCH64_TLSLD_LDST64_DTPREL_LO12_NC:
                case BFD_RELOC_AARCH64_TLSLD_LDST32_DTPREL_LO12_NC:
                case BFD_RELOC_AARCH64_TLSLD_LDST16_DTPREL_LO12_NC:
                case BFD_RELOC_AARCH64_TLSLD_LDST8_DTPREL_LO12_NC:
                case BFD_RELOC_AARCH64_TLSLD_ADD_DTPREL_LO12_NC:
                    r=":dtprel_lo12_nc:";
                    break;
                case BFD_RELOC_AARCH64_TLSLE_LDST16_TPREL_LO12:
                case BFD_RELOC_AARCH64_TLSLE_LDST8_TPREL_LO12:
                case BFD_RELOC_AARCH64_TLSLE_LDST32_TPREL_LO12:
                case BFD_RELOC_AARCH64_TLSLE_LDST64_TPREL_LO12:
                    r=":tprel_lo12:";
                    break;
                case BFD_RELOC_AARCH64_TLSLE_LDST16_TPREL_LO12_NC:
                case BFD_RELOC_AARCH64_TLSLE_LDST32_TPREL_LO12_NC:
                case BFD_RELOC_AARCH64_TLSLE_LDST64_TPREL_LO12_NC:
                case BFD_RELOC_AARCH64_TLSLE_LDST8_TPREL_LO12_NC:
                    r=":tprel_lo12_nc:";
                    break;
                case BFD_RELOC_AARCH64_TLSLD_ADD_LO12_NC:
                    r=":tlsldm_lo12_nc:";
                    break;
                case BFD_RELOC_AARCH64_TLSLD_ADR_PREL21:
                case BFD_RELOC_AARCH64_TLSLD_ADR_PAGE21:
                    r=":tlsldm:";
                    break;
                case BFD_RELOC_AARCH64_TLSDESC_OFF_G1:
                    r=":tlsdesc_off_g1:";
                    break;
                case BFD_RELOC_AARCH64_TLSDESC_OFF_G0_NC:
                    r=":tlsdesc_off_g0_nc:";
                    break;
                case BFD_RELOC_AARCH64_TLSLE_MOVW_TPREL_G0_NC:
                    r=":tprel_g0_nc:";
                    break;
                case BFD_RELOC_AARCH64_TLSLE_MOVW_TPREL_G1:
                    r=":tprel_g1:";
                    break;
                case BFD_RELOC_AARCH64_TLSLE_ADD_TPREL_LO12_NC:
                    r=":tprel_lo12_nc:";
                    break;
                case BFD_RELOC_AARCH64_TLSLE_ADD_TPREL_HI12:
                    r=":tprel_hi12:";
                    break;
                case BFD_RELOC_AARCH64_TLSLE_ADD_TPREL_LO12:
                    r=":tprel_lo12:";
                    break;
                case BFD_RELOC_AARCH64_TLSIE_LD_GOTTPREL_LO12_NC:
                    r=":gottprel_lo12:";
                    break;
                case BFD_RELOC_AARCH64_TLSIE_ADR_GOTTPREL_PAGE21:
                    r=":gottprel:";
                    break;
                case BFD_RELOC_AARCH64_CALL26:
                    break;
                case BFD_RELOC_AARCH64_TLSGD_ADD_LO12_NC:
                    r=":tlsgd_lo12:";
                    break;
                case BFD_RELOC_AARCH64_TLSGD_ADR_PAGE21:
                    r=":tlsgd:";
                    break;
                case BFD_RELOC_AARCH64_TLSDESC_ADD_LO12:
                case BFD_RELOC_AARCH64_TLSDESC_LD_LO12_NC:
                    r=":tlsdesc_lo12:";
                    break;
                case BFD_RELOC_AARCH64_TLSDESC_ADR_PAGE21:
                    r=":tlsdesc:";
                    break;
                case BFD_RELOC_AARCH64_GOT_LD_PREL19:
                case BFD_RELOC_AARCH64_ADR_GOT_PAGE:
                    r=":got:";
                    break;
                case BFD_RELOC_AARCH64_LD_GOT_LO12_NC:
                    r="#:got_lo12:";
                    break;
                default:
                    r="";
            }

            if(instruction_->reloc.exp.X_op == O_symbol)
            {
                if (instruction_->reloc.type == BFD_RELOC_AARCH64_GAS_INTERNAL_FIXUP &&
                    instruction_->base.operands[i].type == instruction_->reloc.opnd )
                {
                    switch (instruction_->base.operands[i].type)
                    {
                        case AARCH64_OPND_ADDR_SIMM7:
                        case AARCH64_OPND_ADDR_SIMM9:
                        case AARCH64_OPND_ADDR_SIMM9_2:
                        case AARCH64_OPND_ADDR_SIMM10:
                        case AARCH64_OPND_ADDR_SIMM11:
                        case AARCH64_OPND_ADDR_SIMM13:
                        case AARCH64_OPND_ADDR_OFFSET:
                        case AARCH64_OPND_SVE_ADDR_RI_S4x16:
                        case AARCH64_OPND_SVE_ADDR_RI_S4x32:
                        case AARCH64_OPND_SVE_ADDR_RI_S4xVL:
                        case AARCH64_OPND_SVE_ADDR_RI_S4x2xVL:
                        case AARCH64_OPND_SVE_ADDR_RI_S4x3xVL:
                        case AARCH64_OPND_SVE_ADDR_RI_S4x4xVL:
                        case AARCH64_OPND_SVE_ADDR_RI_S6xVL:
                        case AARCH64_OPND_SVE_ADDR_RI_S9xVL:
                        case AARCH64_OPND_SVE_ADDR_RI_U6:
                        case AARCH64_OPND_SVE_ADDR_RI_U6x2:
                        case AARCH64_OPND_SVE_ADDR_RI_U6x4:
                        case AARCH64_OPND_SVE_ADDR_RI_U6x8:
                        {
                            std::string s = "";
                            int size=512;
                            ExpressionToString(&instruction_->reloc.exp, &s);
                            char str2[512];
                            char *note;
                            aarch64_print_operand(str2, sizeof(str2), 0, instruction_->base.opcode,
                                                  instruction_->base.operands, i, NULL, NULL, &note);
                            char *cur=str2;
                            if(*str2=='[') {
                                while (*cur != ',' && *cur != ']')
                                    cur++;
                                *cur = '\0';
                            }
                            if (instruction_->base.operands[i].addr.writeback)
                            {
                                if (instruction_->base.operands[i].addr.preind)
                                {
                                    snprintf (str, size, "[%s, #%s]!", str2+1,s.c_str());
                                }
                                else
                                    snprintf (str, size, "[%s], #%s", str2+1, s.c_str());
                            }
                            else
                            {
                                if (instruction_->base.operands[i].shifter.operator_present)
                                {
                                    assert (instruction_->base.operands[i].shifter.kind == AARCH64_MOD_MUL_VL);
                                    snprintf (str, size, "[%s, #%s, mul vl]",
                                              str2+1, s.c_str());
                                }
                                else
                                    snprintf (str, size, "[%s, #%s]", str2+1, s.c_str());

                            }
                            break;
                        }
                        case AARCH64_OPND_AIMM:
                            {
                            std::string s = "";
                            ExpressionToString(&instruction_->reloc.exp, &s);
                            snprintf(str, sizeof(str), "%s", s.c_str());
                            break;
                        }
                        case AARCH64_OPND_ADDR_UIMM12:
                        {
                            std::string s = "";
                            ExpressionToString(&instruction_->reloc.exp, &s);
                            char str2[512];
                            char *note;
                            aarch64_print_operand(str2, sizeof(str2), 0, instruction_->base.opcode,
                                                  instruction_->base.operands, i, NULL, NULL, &note);
                            char *cur=str2;
                            if(*str2=='[') {
                                while (*cur != ',' && *cur != ']')
                                    cur++;
                                *cur = '\0';
                            }
                            snprintf (str, sizeof(str), "[%s, #%s]", str2+1, s.c_str());

                            break;
                        }
                        default:
                            break;
                    }
                }
                else if(instruction_->gen_lit_pool == 1 )
                {
                    std::string litname = S_GET_NAME(instruction_->reloc.exp.X_add_symbol);
                    int litSize = litname[litname.find_first_of('\002')+1]-'0';
                    int litIndex = instruction_->reloc.exp.X_add_number/litSize;
                    int start=litname.find_first_of('\002');
                    for(;litIndex >= 0; litIndex--)
                    {
                      start++;
                      start = litname.find('\002',start);
                    }
                    int last= litname.find('\002',start+1);
                    litname = litname.substr(start + 1, last - start - 1);
                    snprintf(str, sizeof(str), "=%s", litname.c_str());
                }
                else
                {

                        std::string addNumString="";
                        if(instruction_->reloc.exp.X_add_number!=0){
                            char buf[512];
                            snprintf (buf, 512, "0x%" PRIx64, instruction_->reloc.exp.X_add_number);
                            addNumString="+"+std::string(buf);
                        }
                        snprintf (str, sizeof (str), "%s%s%s", r.c_str(),
                                  S_GET_NAME(instruction_->reloc.exp.X_add_symbol),
                                  addNumString.c_str());
                }
            }
            if(instruction_->reloc.exp.X_op == O_bit_and)
            {
                std::string bitandString="";
                ExpressionToString(&instruction_->reloc.exp, &bitandString);
                char *note;
                aarch64_print_operand (str, sizeof (str), 0, instruction_->base.opcode,
                                       instruction_->base.operands, i, NULL, NULL, &note);
                strcpy(str,str+4);
                bitandString=bitandString+str;
                strcpy(str,bitandString.c_str());
            }
            if(instruction_->reloc.exp.X_op == O_multiply)
            {
                if (instruction_->reloc.type == BFD_RELOC_AARCH64_GAS_INTERNAL_FIXUP &&
                    instruction_->base.operands[i].type == instruction_->reloc.opnd)
                {
                    std::string s = "";
                    int size=512;

                    ExpressionToString(&instruction_->reloc.exp, &s);
                    char str2[512];
                    char *note;
                    aarch64_print_operand(str2, sizeof(str2), 0, instruction_->base.opcode,
                                          instruction_->base.operands, i, NULL, NULL, &note);
                    char *cur=str2;
                    while(*cur!=','&&*cur!=']')
                        cur++;
                    *cur='\0';
                    if (instruction_->base.operands[i].addr.writeback)
                    {
                        if (instruction_->base.operands[i].addr.preind)
                        {
                            snprintf (str, size, "[%s, #%s]!", str2+1,s.c_str());
                        }
                        else
                            snprintf (str, size, "[%s], #%s", str2+1, s.c_str());
                    }
                    else
                    {
                        if (instruction_->base.operands[i].shifter.operator_present)
                        {
                            assert (instruction_->base.operands[i].shifter.kind == AARCH64_MOD_MUL_VL);
                            snprintf (str, size, "[%s, #%s, mul vl]",
                                      str2+1, s.c_str());
                        }
                        else
                            snprintf (str, size, "[%s, #%s]", str2+1, s.c_str());

                    }
                }
            }
            if (instruction_->reloc.type == BFD_RELOC_AARCH64_LD_GOT_LO12_NC ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSDESC_LD_LO12_NC ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSIE_LD_GOTTPREL_LO12_NC ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLE_LDST8_TPREL_LO12_NC ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLE_LDST64_TPREL_LO12_NC ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLE_LDST32_TPREL_LO12_NC ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLE_LDST16_TPREL_LO12_NC ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLE_LDST8_TPREL_LO12_NC ||

                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLE_LDST8_TPREL_LO12 ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLE_LDST16_TPREL_LO12 ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLE_LDST32_TPREL_LO12 ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLE_LDST64_TPREL_LO12 ||

                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLD_LDST8_DTPREL_LO12 ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLD_LDST16_DTPREL_LO12 ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLD_LDST32_DTPREL_LO12 ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLD_LDST64_DTPREL_LO12 ||

                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLD_LDST8_DTPREL_LO12_NC ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLD_LDST16_DTPREL_LO12_NC ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLD_LDST32_DTPREL_LO12_NC ||
                instruction_->reloc.type == BFD_RELOC_AARCH64_TLSLD_LDST64_DTPREL_LO12_NC ||

                    instruction_->reloc.type == BFD_RELOC_AARCH64_LDST8_LO12 ||
                    instruction_->reloc.type == BFD_RELOC_AARCH64_LDST16_LO12 ||
                    instruction_->reloc.type == BFD_RELOC_AARCH64_LDST32_LO12 ||
                    instruction_->reloc.type == BFD_RELOC_AARCH64_LDST64_LO12 ||
                    instruction_->reloc.type ==BFD_RELOC_AARCH64_LDST128_LO12 ||

                    instruction_->reloc.type == BFD_RELOC_AARCH64_LD64_GOTOFF_LO15 ||
                    instruction_->reloc.type == BFD_RELOC_AARCH64_LD64_GOTPAGE_LO15 ||
                    instruction_->reloc.type == BFD_RELOC_AARCH64_LD32_GOTPAGE_LO14
                )
            {
                char *note;
                char str2[128];
                aarch64_print_operand (str2, sizeof (str2), 0, instruction_->base.opcode,
                                       instruction_->base.operands, i, NULL, NULL, &note);
                std::string s=str2;
                s=s.substr(0,s.length()-1)+','+str+"]";
                strcpy(str,s.c_str());
            }
        }
        else
        {
            if (instruction_->reloc.type == BFD_RELOC_AARCH64_GAS_INTERNAL_FIXUP &&
                instruction_->base.operands[i].type == instruction_->reloc.opnd &&
                instruction_->reloc.exp.X_op == O_symbol)
            {
                std::string s = "";
                ExpressionToString(&instruction_->reloc.exp, &s);
                strcpy(str,s.c_str());
            }
            else
            {
                char *note;
                aarch64_print_operand(str, sizeof(str), 0, instruction_->base.opcode,
                                      instruction_->base.operands, i, NULL, NULL, &note);
            }
        }


        /* Delimiter.  */
        if (str[0] != '\0')
            out->append(i == 0 ? " " : ", ");
        /* Append the operand string.  */
        out->append(str);
    }
  return *out;
}

void InstructionEntry::fixInstruction(int i) const {
    if(((instruction_->reloc.type==BFD_RELOC_AARCH64_GAS_INTERNAL_FIXUP)&&
      instruction_->base.operands[i].type==instruction_->reloc.opnd) ||    //movz     x2,#:abs_g0:0x64 cant satisfied the second condition and get into the part setting the imm.value
      (instruction_->reloc.type == BFD_RELOC_AARCH64_MOVW_G0 ||
       instruction_->reloc.type == BFD_RELOC_AARCH64_MOVW_G1 ||
       instruction_->reloc.type == BFD_RELOC_AARCH64_MOVW_G2 ||
       instruction_->reloc.type == BFD_RELOC_AARCH64_MOVW_G3))
    {
        std::string s="";
        switch (instruction_->base.operands[i].type) {
            case AARCH64_OPND_LIMM:	/* Logical Immediate.  */
            case AARCH64_OPND_AIMM:	/* Arithmetic immediate.  */
            case AARCH64_OPND_HALF:	/* #<imm16>{, LSL #<shift>} operand in move wide.  */
            case AARCH64_OPND_FBITS:	/* FP #<fbits> operand in e.g. SCVTF */
            case AARCH64_OPND_IMM_MOV:	/* Immediate operand for the MOV alias.  */
            case AARCH64_OPND_IMM_ROT1:	/* Immediate rotate operand for FCMLA.  */
            case AARCH64_OPND_IMM_ROT2:	/* Immediate rotate operand for indexed FCMLA.  */
            case AARCH64_OPND_IMM_ROT3:	/* Immediate rotate operand for FCADD.  */
            {
                if (instruction_->reloc.exp.X_op == O_constant) {

                  if(instruction_->base.operands[i].shifter.amount
                     && instruction_->base.operands[i].type == AARCH64_OPND_HALF  //According to current test info, we only apply this in this operand
                     && !instruction_->base.operands[i].shifter.operator_present  //This means we dont have explicit LSL operater, we only have an expr to do shift
                     && !instruction_->base.operands[i].shifter.amount_present)   //This happens when we dont have explicit LSL
                  {
                    //We have to make all shifted constant to be like (imm, LSL n)
                    //If input is like an expr(imm << n) the value will be calculated when it's being parsed for the first time
                    //then we cant get the original value if we need to output imm, LSL n
                    //If input is like (imm, LSL n), we only need to make sure the imm.value is handled right
                    instruction_->base.operands[i].imm.value = (offsetT)((valueT)instruction_->reloc.exp.X_add_number >> (valueT)instruction_->base.operands[i].shifter.amount);
                  }
                  else
                  {
                    s = ExpressionToStringImmediate(
                            &instruction_->reloc.exp, &s, NULL);
                    instruction_->base.operands[i].imm.value =
                            atol(s.substr(1).c_str());
                  }
                }
                break;
            }
            case AARCH64_OPND_ADDR_UIMM12:
                s=ExpressionToStringImmediate(
                        &instruction_->reloc.exp,&s,NULL);
                instruction_->base.operands[i].addr.offset.imm=
                        atoi(s.substr(1).c_str());
                break;
        }
    }
}

std::string &InstructionEntry::ProfileToString(std::string *out) const {
  std::ostringstream string_stream;
  if (execution_count_valid_)
    string_stream << "\t# ecount=" << execution_count_;
  out->append(string_stream.str());
  return *out;
}

// From an instruction given by gas, allocate new memory and populate the
// members.
aarch64_instruction *InstructionEntry::CreateInstructionCopy(aarch64_instruction *in_inst) {
    aarch64_instruction *new_inst = new aarch64_instruction;
  MAO_ASSERT(new_inst);

  // Copy all non-pointer data
  memcpy(new_inst, in_inst, sizeof(aarch64_instruction));

//  // Copy references
//  for (unsigned int i = 0; i < new_inst->operands; i++) {
//    // Select the correct part of the operand union.
//    if (IsImmediateOperand(in_inst, i)) {
//      new_inst->op[i].imms = new expressionS;
//      MAO_ASSERT(new_inst->op[i].imms);
//      *new_inst->op[i].imms = *in_inst->op[i].imms;
//    } else if (IsMemOperand(in_inst, i) && in_inst->op[i].disps) {
//      new_inst->op[i].disps = new expressionS;
//      MAO_ASSERT(new_inst->op[i].disps);
//      *new_inst->op[i].disps = *in_inst->op[i].disps;
//    } else if (IsRegisterOperand(in_inst, i)) {
//      new_inst->op[i].regs = in_inst->op[i].regs;
//    }
//  }
//  new_inst->base_reg = in_inst->base_reg;
//  new_inst->index_reg = in_inst->index_reg;
//
//  // Segment overrides
//  for (unsigned int i = 0; i < 2; i++) {
//    if (in_inst->seg[i]) {
//      seg_entry *tmp_seg = new seg_entry;
//      MAO_ASSERT(tmp_seg);
//      MAO_ASSERT(strlen(in_inst->seg[i]->seg_name) < MAX_SEGMENT_NAME_LENGTH);
//      tmp_seg->seg_name = strdup(in_inst->seg[i]->seg_name);
//      tmp_seg->seg_prefix = in_inst->seg[i]->seg_prefix;
//      new_inst->seg[i] = tmp_seg;
//    }
//  }

  return new_inst;
}

bool InstructionEntry::IsInList(MaoOpcode opcode, const MaoOpcode list[],
                              const unsigned int number_of_elements) const {
//  for (unsigned int i = 0; i < number_of_elements; i++) {
//    if (opcode == list[i])
//      return true;
//  }
//  return false;
}


bool InstructionEntry::HasFallThrough() const {
//  if (IsReturn()) return false;
//  if (!HasTarget()) return true;
//  if (IsCall()) return true;
//  if (IsCondJump()) return true;
//  return false;
}

bool InstructionEntry::HasTarget() const {
//  const MaoOpcode insn[] = {OP_jmp, OP_ljmp};
//  if (IsInList(op(), insn, sizeof(insn)/sizeof(MaoOpcode)))
//    return true;
//  if (IsCondJump())
//    return true;
//
//  return false;
}

const char *InstructionEntry::GetTarget() const {
//  //
//  for (unsigned int i =0; i < instruction_->operands; i++) {
//    if (IsMemOperand(instruction_, i)) {
//      // symbol?
//      if (instruction_->types[i].bitfield.disp8 ||
//          instruction_->types[i].bitfield.disp16 ||
//          instruction_->types[i].bitfield.disp32 ||
//          instruction_->types[i].bitfield.disp32s ||
//          instruction_->types[i].bitfield.disp64) {
//        if (instruction_->op[i].disps->X_op == O_symbol) {
//          return S_GET_NAME(instruction_->op[i].disps->X_add_symbol);
//        }
//      }
//    }
//  }
//  return "<UKNOWN>";
}


bool InstructionEntry::IsJump() const {
//  const MaoOpcode jumps[] = {
//    OP_jmp, OP_ljmp
//  };
//  return IsInList(op(), jumps, sizeof(jumps)/sizeof(MaoOpcode));
}

bool InstructionEntry::IsIndirectJump() const {
//  // Jump instructions always have one operand
//  MAO_ASSERT(!IsJump() || instruction_->operands == 1);
//  return IsJump() && (instruction_->types[0].bitfield.baseindex ||
//                      IsRegisterOperand(instruction_, 0));
}


bool InstructionEntry::IsCondJump() const {
//  static const MaoOpcode cond_jumps[] = {
//    // Conditional jumps.
//    OP_jo,  OP_jno, OP_jb,   OP_jc,  OP_jnae, OP_jnb,  OP_jnc, OP_jae, OP_je,
//    OP_jz,  OP_jne, OP_jnz,  OP_jbe, OP_jna,  OP_jnbe, OP_ja,  OP_js,  OP_jns,
//    OP_jp,  OP_jpe, OP_jnp,  OP_jpo, OP_jl,   OP_jnge, OP_jnl, OP_jge, OP_jle,
//    OP_jng,  OP_jnle, OP_jg,
//
//    // jcxz vs. jecxz is chosen on the basis of the address size prefix.
//    OP_jcxz, OP_jecxz, OP_jecxz, OP_jrcxz,
//
//    // loop variants
//    OP_loop, OP_loopz, OP_loope, OP_loopnz, OP_loopne
//  };
//  return IsInList(op(), cond_jumps, sizeof(cond_jumps)/sizeof(MaoOpcode));
}

bool InstructionEntry::IsCall() const {
//  const MaoOpcode calls[] = {
//    OP_call, OP_lcall, OP_vmcall, OP_syscall, OP_vmmcall
//  };
//  return IsInList(op(), calls, sizeof(calls)/sizeof(MaoOpcode));
}

bool InstructionEntry::IsThunkCall() const {
//  if (!IsCall())
//    return false;
//  const char *target = GetTarget();
//  return (strstr(target, "get_pc_thunk") != NULL);
}

bool InstructionEntry::IsReturn() const {
//  const MaoOpcode rets[] = {
//    OP_ret, OP_lret, OP_retf, OP_iret, OP_sysret
//  };
//  return IsInList(op(), rets, sizeof(rets)/sizeof(MaoOpcode));
}

bool InstructionEntry::IsAdd() const {
//  return op() == OP_add;
}


//
// Class: EntryIterator
//

EntryIterator::EntryIterator(MaoEntry *entry)
    : current_entry_(entry) {
  return;
}

EntryIterator &EntryIterator::operator ++() {
  current_entry_ = current_entry_->next();
  return *this;
}

EntryIterator &EntryIterator::operator --() {
  current_entry_ = current_entry_->prev();
  return *this;
}

bool EntryIterator::operator ==(const EntryIterator &other)
    const {
  return (current_entry_ == other.current_entry_);
}

bool EntryIterator::operator !=(const EntryIterator &other)
    const {
  return !((*this) == other);
}

ReverseEntryIterator::ReverseEntryIterator(MaoEntry *entry)
    : current_entry_(entry) {
  return;
}

ReverseEntryIterator &ReverseEntryIterator::operator ++() {
  current_entry_ = current_entry_->prev();
  return *this;
}

ReverseEntryIterator &ReverseEntryIterator::operator --() {
  current_entry_ = current_entry_->next();
  return *this;
}

bool ReverseEntryIterator::operator ==(const ReverseEntryIterator
                                              &other)
    const {
  return (current_entry_ == other.current_entry_);
}

bool ReverseEntryIterator::operator !=(const ReverseEntryIterator
                                              &other)
    const {
  return !((*this) == other);
}
