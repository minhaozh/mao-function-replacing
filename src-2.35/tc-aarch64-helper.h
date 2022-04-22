/* tc-i386.c -- Assemble code for the Intel 80386
   Copyright 1989, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999,
   2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008
   Free Software Foundation, Inc.

   This file is part of GAS, the GNU Assembler.

   GAS is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3, or (at your option)
   any later version.

   GAS is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with GAS; see the file COPYING.  If not, write to the Free
   Software Foundation, 51 Franklin Street - Fifth Floor, Boston, MA
   02110-1301, USA.  */

/* Intel 80386 machine specific gas.
   Written by Eliot Dresselhaus (eliot@mgm.mit.edu).
   x86_64 support by Jan Hubicka (jh@suse.cz)
   VIA PadLock support by Michal Ludvig (mludvig@suse.cz)
   Bugs & suggestions are completely welcome.  This is free software.
   Please help us make it better.  */

#include "as.h"

#ifndef TC_AARCH64_HELPER_H_
#define TC_AARCH64_HELPER_H_

#ifndef INLINE
#if __GNUC__ >= 2
#define INLINE __inline__
#else
#define INLINE
#endif
#endif

/* Macros to define the register types and masks for the purpose
   of parsing.  */

#undef AARCH64_REG_TYPES
#define AARCH64_REG_TYPES	\
  BASIC_REG_TYPE(R_32)	/* w[0-30] */	\
  BASIC_REG_TYPE(R_64)	/* x[0-30] */	\
  BASIC_REG_TYPE(SP_32)	/* wsp     */	\
  BASIC_REG_TYPE(SP_64)	/* sp      */	\
  BASIC_REG_TYPE(Z_32)	/* wzr     */	\
  BASIC_REG_TYPE(Z_64)	/* xzr     */	\
  BASIC_REG_TYPE(FP_B)	/* b[0-31] *//* NOTE: keep FP_[BHSDQ] consecutive! */\
  BASIC_REG_TYPE(FP_H)	/* h[0-31] */	\
  BASIC_REG_TYPE(FP_S)	/* s[0-31] */	\
  BASIC_REG_TYPE(FP_D)	/* d[0-31] */	\
  BASIC_REG_TYPE(FP_Q)	/* q[0-31] */	\
  BASIC_REG_TYPE(VN)	/* v[0-31] */	\
  BASIC_REG_TYPE(ZN)	/* z[0-31] */	\
  BASIC_REG_TYPE(PN)	/* p[0-15] */	\
  /* Typecheck: any 64-bit int reg         (inc SP exc XZR).  */	\
  MULTI_REG_TYPE(R64_SP, REG_TYPE(R_64) | REG_TYPE(SP_64))		\
  /* Typecheck: same, plus SVE registers.  */				\
  MULTI_REG_TYPE(SVE_BASE, REG_TYPE(R_64) | REG_TYPE(SP_64)		\
		 | REG_TYPE(ZN))					\
  /* Typecheck: x[0-30], w[0-30] or [xw]zr.  */				\
  MULTI_REG_TYPE(R_Z, REG_TYPE(R_32) | REG_TYPE(R_64)			\
		 | REG_TYPE(Z_32) | REG_TYPE(Z_64))			\
  /* Typecheck: same, plus SVE registers.  */				\
  MULTI_REG_TYPE(SVE_OFFSET, REG_TYPE(R_32) | REG_TYPE(R_64)		\
		 | REG_TYPE(Z_32) | REG_TYPE(Z_64)			\
		 | REG_TYPE(ZN))					\
  /* Typecheck: x[0-30], w[0-30] or {w}sp.  */				\
  MULTI_REG_TYPE(R_SP, REG_TYPE(R_32) | REG_TYPE(R_64)			\
		 | REG_TYPE(SP_32) | REG_TYPE(SP_64))			\
  /* Typecheck: any int                    (inc {W}SP inc [WX]ZR).  */	\
  MULTI_REG_TYPE(R_Z_SP, REG_TYPE(R_32) | REG_TYPE(R_64)		\
		 | REG_TYPE(SP_32) | REG_TYPE(SP_64)			\
		 | REG_TYPE(Z_32) | REG_TYPE(Z_64)) 			\
  /* Typecheck: any [BHSDQ]P FP.  */					\
  MULTI_REG_TYPE(BHSDQ, REG_TYPE(FP_B) | REG_TYPE(FP_H)			\
		 | REG_TYPE(FP_S) | REG_TYPE(FP_D) | REG_TYPE(FP_Q))	\
  /* Typecheck: any int or [BHSDQ]P FP or V reg (exc SP inc [WX]ZR).  */ \
  MULTI_REG_TYPE(R_Z_BHSDQ_V, REG_TYPE(R_32) | REG_TYPE(R_64)		\
		 | REG_TYPE(Z_32) | REG_TYPE(Z_64) | REG_TYPE(VN)	\
		 | REG_TYPE(FP_B) | REG_TYPE(FP_H)			\
		 | REG_TYPE(FP_S) | REG_TYPE(FP_D) | REG_TYPE(FP_Q))	\
  /* Typecheck: as above, but also Zn, Pn, and {W}SP.  This should only	\
     be used for SVE instructions, since Zn and Pn are valid symbols	\
     in other contexts.  */						\
  MULTI_REG_TYPE(R_Z_SP_BHSDQ_VZP, REG_TYPE(R_32) | REG_TYPE(R_64)	\
		 | REG_TYPE(SP_32) | REG_TYPE(SP_64)			\
		 | REG_TYPE(Z_32) | REG_TYPE(Z_64) | REG_TYPE(VN)	\
		 | REG_TYPE(FP_B) | REG_TYPE(FP_H)			\
		 | REG_TYPE(FP_S) | REG_TYPE(FP_D) | REG_TYPE(FP_Q)	\
		 | REG_TYPE(ZN) | REG_TYPE(PN))				\
  /* Any integer register; used for error messages only.  */		\
  MULTI_REG_TYPE(R_N, REG_TYPE(R_32) | REG_TYPE(R_64)			\
		 | REG_TYPE(SP_32) | REG_TYPE(SP_64)			\
		 | REG_TYPE(Z_32) | REG_TYPE(Z_64))			\
  /* Pseudo type to mark the end of the enumerator sequence.  */	\
  BASIC_REG_TYPE(MAX)

#undef BASIC_REG_TYPE
#define BASIC_REG_TYPE(T)	REG_TYPE_##T,
#undef MULTI_REG_TYPE
#define MULTI_REG_TYPE(T,V)	BASIC_REG_TYPE(T)

/* Register type enumerators.  */
typedef enum aarch64_reg_type_
{
  /* A list of REG_TYPE_*.  */
  AARCH64_REG_TYPES
} aarch64_reg_type;

#undef BASIC_REG_TYPE
#define BASIC_REG_TYPE(T)	1 << REG_TYPE_##T,
#undef REG_TYPE
#define REG_TYPE(T)		(1 << REG_TYPE_##T)
#undef MULTI_REG_TYPE
#define MULTI_REG_TYPE(T,V)	V,

/* Structure for a hash table entry for a register.  */
typedef struct
{
  const char *name;
  unsigned char number;
  ENUM_BITFIELD (aarch64_reg_type_) type : 8;
  unsigned char builtin;
} reg_entry;

/* Values indexed by aarch64_reg_type to assist the type checking.  */
static const unsigned reg_type_masks[] =
{
  AARCH64_REG_TYPES
};

#undef BASIC_REG_TYPE
#undef REG_TYPE
#undef MULTI_REG_TYPE
#undef AARCH64_REG_TYPES

// TODO(@tianaoge):这个可能在arm上不适用，在这里声明只是为了编译通过
enum flag_code {
	CODE_32BIT,
	CODE_16BIT,
	CODE_64BIT };

struct reloc
{
    bfd_reloc_code_real_type type;
    expressionS exp;
    int pc_rel;
    enum aarch64_opnd opnd;
    uint32_t flags;
    unsigned need_libopcodes_p : 1;
};

struct aarch64_instruction
{
    /* libopcodes structure for instruction intermediate representation.  */
    aarch64_inst base;
    /* Record assembly errors found during the parsing.  */
    struct
    {
        enum aarch64_operand_error_kind kind;
        const char *error;
    } parsing_error;
    /* The condition that appears in the assembly line.  */
    int cond;
    /* Relocation information (including the GAS internal fixup).  */
    struct reloc reloc;
    /* Need to generate an immediate in the literal pool.  */
    unsigned gen_lit_pool : 1;
};



typedef struct aarch64_instruction aarch64_instruction;


#endif  /* TC_AARCH64_HELPER_H_ */
