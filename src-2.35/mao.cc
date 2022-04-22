//
// Copyright 2012 Google Inc.
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
// along with this program; if not, write to the Free Software Foundation, Inc.,
// 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

#include "Mao.h"

#include <stdio.h>
#include <string.h>

//==================================
// MAO Main Entry
//==================================
int main(int argc, const char *argv[])
{
  InitPasses();

  // mao_options包括那些以--mao=开头的参数，一般就是指定的pass和pass的option
  MaoOptions mao_options;

  // Parse any mao-specific command line flags (start with --mao=)
  // new_argv用于保存不是--mao=开头的参数
  const char **new_argv = new const char *[argc];
  int new_argc = 0;
  int gas_help_requested = false;

  mao_options.Parse(argv[0], getenv("MAOOPTS"));
  for (int i = 0; i < argc; i++)
  {
    if (strncmp(argv[i], "--help", 6) == 0)
    {
      gas_help_requested = true;
    }

    if (strncmp(argv[i], "--mao=", 6) == 0)
    {
      // --mao=开头的参数由mao_options.Parse解析保存
      mao_options.Parse(argv[0], &argv[i][6]);
    }
    else
      new_argv[new_argc++] = argv[i];
  }

  // If gas help is requested, make sure the MAO options are printed first.
  if (gas_help_requested && !mao_options.help())
  {
    mao_options.ProvideHelp(false, true);
  }

  // Static Initialization
  mao_options.ProvideHelp(!gas_help_requested);

  if (gas_help_requested)
  {
    fprintf(stdout, "\nAssembler specific options:\n\n");
  }

// 初始化寄存器
//  InitRegisters();

  MaoUnit mao_unit(&mao_options);
  MaoUnit mao_unit_mf(&mao_options);
  RegisterMaoUnit(&mao_unit, &mao_unit_mf);

  MaoPassManager mao_pass_man(&mao_unit, &mao_unit_mf);
  mao_pass_man.LinkPass(new ReadInputPass(new_argc, new_argv,
                                          GetStaticOptionPass("READ"),
                                          &mao_unit));

  // Reparse the arguments now that all the dynamic passes have been
  // loaded.  This will initialize the pass manager with the desired
  // passes for execution.
  mao_options.Reparse(&mao_unit, &mao_unit_mf, &mao_pass_man);

  // run the passes
  mao_pass_man.Run();

  mao_unit.GetStats()->Print(stdout);
  if (mao_options.timer_print())
    mao_options.TimerPrint();
  return 0;
}
