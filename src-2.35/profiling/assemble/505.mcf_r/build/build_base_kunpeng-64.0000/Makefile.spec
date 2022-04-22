TUNE=base
LABEL=kunpeng-64
NUMBER=505
NAME=mcf_r
SOURCES= mcf.c mcfutil.c readmin.c implicit.c pstart.c output.c treeup.c \
	 pbla.c pflowup.c psimplex.c pbeampp.c spec_qsort/spec_qsort.c
EXEBASE=mcf_r
NEED_MATH=yes
BENCHLANG=C

BENCH_CFLAGS     = -Ispec_qsort -DSPEC_AUTO_SUPPRESS_OPENMP
CC               = $(SPECLANG)gcc     -std=c99   -mabi=lp64
CC_VERSION_OPTION = -v
CXX              = $(SPECLANG)g++     -std=c++03 -mabi=lp64
CXX_VERSION_OPTION = -v
EXTRA_COPTIMIZE  = -fno-strict-aliasing -fgnu89-inline
EXTRA_LIBS       = -L/GPUFS/nsccgz_yfdu_16/gta/jemalloc-5.2.1/lib -ljemalloc
EXTRA_PORTABILITY = -DSPEC_LP64
FC               = $(SPECLANG)gfortran           -mabi=lp64
FC_VERSION_OPTION = -v
LDCFLAGS         = -z muldefs
OPTIMIZE         = -O3 -march=armv8.2-a+lse -fno-PIE -no-pie -fomit-frame-pointer -funroll-loops
OS               = unix
SPECLANG         = /usr/local/bin/
absolutely_no_locking = 0
abstol           = 
action           = validate
allow_label_override = 0
backup_config    = 1
baseexe          = mcf_r
basepeak         = 1
benchdir         = benchspec
benchmark        = 505.mcf_r
binary           = 
bindir           = exe
builddir         = build
bundleaction     = 
bundlename       = 
calctol          = 1
changedhash      = 0
check_version    = 0
clean_between_builds = no
command_add_redirect = 1
commanderrfile   = speccmds.err
commandexe       = mcf_r_base.kunpeng-64
commandfile      = speccmds.cmd
commandoutfile   = speccmds.out
commandstdoutfile = speccmds.stdout
comparedir       = compare
compareerrfile   = compare.err
comparefile      = compare.cmd
compareoutfile   = compare.out
comparestdoutfile = compare.stdout
compile_error    = 0
compwhite        = 
configdir        = config
configfile       = kunpeng-920-7260.cfg
configpath       = /GPUFS/nsccgz_yfdu_16/gta/cpu2017/config/kunpeng-920-7260.cfg
copies           = 1
current_range    = 
datadir          = data
default_size     = ref
default_submit   = $command
delay            = 0
deletebinaries   = 0
deletework       = 0
dependent_workloads = 0
device           = 
difflines        = 10
dirprot          = 511
discard_power_samples = 0
enable_monitor   = 1
endian           = 12345678
env_vars         = 0
expand_notes     = 0
expid            = 
exthash_bits     = 256
failflags        = 0
fake             = 0
feedback         = 1
flag_url_base    = https://www.spec.org/auto/cpu2017/Docs/benchmarks/flags/
floatcompare     = 
force_monitor    = 0
from_runcpu      = 2
fw_bios          = Huawei Corp. Version 1.16 released Feb-2020
hostname         = apn508
http_proxy       = 
http_timeout     = 30
hw_avail         = Jun-2019
hw_cpu_max_mhz   = 2600
hw_cpu_name      = Huawei Kunpeng 920 7260
hw_cpu_nominal_mhz = 2600
hw_disk          = 1 x 1.92 TB SAS SSD
hw_memory000     = 512 GB (16 x 32 GB 2Rx4 PC4-2933Y-R)
hw_memory001     = 510.619 GB fixme: If using DDR4, the format is:
hw_memory002     = 'N GB (N x N GB nRxn PC4-nnnnX-X)'
hw_model000      = Huawei TaiShan 200 Server (Model 2280)
hw_model001      = (2.6 GHz, Huawei Kunpeng 920 7260)
hw_nchips        = 2
hw_ncores        = 128
hw_ncpuorder     = 1,2 chips
hw_nthreadspercore = 1
hw_ocache        = None
hw_other         = None
hw_pcache        = 64 KB I + 64 KB D on chip per core
hw_scache        = 512 KB I+D on chip per core
hw_tcache        = 64 MB I+D on chip per chip
hw_vendor        = Huawei
idle_current_range = 
idledelay        = 10
idleduration     = 60
ignore_errors    = 0
ignore_sigint    = 0
ignorecase       = 
info_wrap_columns = 50
inputdir         = input
inputgenerrfile  = inputgen.err
inputgenfile     = inputgen.cmd
inputgenoutfile  = inputgen.out
inputgenstdoutfile = inputgen.stdout
iteration        = -1
iterations       = 1
keeptmp          = 0
label            = kunpeng-64
license_num      = 5036
line_width       = 1020
link_input_files = 1
locking          = 1
log              = CPU2017
log_line_width   = 1020
log_timestamp    = 0
logfile          = /GPUFS/nsccgz_yfdu_16/gta/cpu2017/tmp/CPU2017.027/templogs/preenv.intrate.027.0
logname          = /GPUFS/nsccgz_yfdu_16/gta/cpu2017/tmp/CPU2017.027/templogs/preenv.intrate.027.0
lognum           = 027.0
mail_reports     = all
mailcompress     = 0
mailmethod       = smtp
mailport         = 25
mailserver       = 127.0.0.1
mailto           = 
make             = specmake
make_no_clobber  = 0
makefile_template = Makefile.YYYtArGeTYYYspec
makeflags        = --jobs=8
max_average_uncertainty = 1
max_hum_limit    = 0
max_report_runs  = 3
max_unknown_uncertainty = 1
mean_anyway      = 1
meter_connect_timeout = 30
meter_errors_default = 5
meter_errors_percentage = 5
min_report_runs  = 2
min_temp_limit   = 20
minimize_builddirs = 0
minimize_rundirs = 0
name             = mcf_r
nansupport       = 
need_math        = yes
no_input_handler = close
no_monitor       = 
noratios         = 0
note_preenv      = 1
notes_000        = Transparent Huge Pages enabled by default
notes_005        = Prior to runcpu invocation
notes_010        = Filesystem page cache synced and cleared with:
notes_015        = sync; echo 3>       /proc/sys/vm/drop_caches
notes_020        = jemalloc: configured and built at default for 64bit targets;
notes_025        = jemalloc: built with the kylin V10, and the system compiler gcc 7.3.0;
notes_030        = jemalloc: sources available via jemalloc.net or https://github.com/jemalloc/jemalloc/releases
notes_035        = NA: The test sponsor attests, as of date of publication, that CVE-2017-5754 (Meltdown)
notes_040        = is mitigated in the system as tested and documented.
notes_045        = Yes: The test sponsor attests, as of date of publication, that CVE-2017-5753 (Spectre variant 1)
notes_050        = is mitigated in the system as tested and documented.
notes_055        = NA: The test sponsor attests, as of date of publication, that CVE-2017-5715 (Spectre variant 2)
notes_060        = is mitigated in the system as tested and documented.
notes_os_000     =  Stack size set to unlimited using "ulimit -s unlimited"
notes_plat_000   =  BIOS configuration:
notes_plat_005   =  Power Policy Set to Performance
notes_plat_010   =  Custom Refresh Rate Set to 64ms
notes_plat_015   =  CPU Prefetcher Set to Enabled
notes_plat_sysinfo_000 =  Sysinfo program /GPUFS/nsccgz_yfdu_16/gta/cpu2017/bin/sysinfo
notes_plat_sysinfo_005 =  Rev: r5974 of 2018-05-19 9bcde8f2999c33d61f64985e45859ea9
notes_plat_sysinfo_010 =  running on apn508 Sat Jan  9 19:47:48 2021
notes_plat_sysinfo_015 = 
notes_plat_sysinfo_020 =  SUT (System Under Test) info as seen by some common utilities.
notes_plat_sysinfo_025 =  For more information on this section, see
notes_plat_sysinfo_030 =     https://www.spec.org/cpu2017/Docs/config.html\#sysinfo
notes_plat_sysinfo_035 = 
notes_plat_sysinfo_040 =  From /proc/cpuinfo
notes_plat_sysinfo_045 =  *
notes_plat_sysinfo_050 =  * Did not identify cpu model.  If you would
notes_plat_sysinfo_055 =  * like to write your own sysinfo program, see
notes_plat_sysinfo_060 =  * www.spec.org/cpu2017/config.html\#sysinfo
notes_plat_sysinfo_065 =  *
notes_plat_sysinfo_070 =  *
notes_plat_sysinfo_075 =  * 0 "physical id" tags found.  Perhaps this is an older system,
notes_plat_sysinfo_080 =  * or a virtualized system.  Not attempting to guess how to
notes_plat_sysinfo_085 =  * count chips/cores for this system.
notes_plat_sysinfo_090 =  *
notes_plat_sysinfo_095 =        128 "processors"
notes_plat_sysinfo_100 =     cores, siblings (Caution: counting these is hw and system dependent. The following
notes_plat_sysinfo_105 =     excerpts from /proc/cpuinfo might not be reliable.  Use with caution.)
notes_plat_sysinfo_110 = 
notes_plat_sysinfo_115 =  From lscpu:
notes_plat_sysinfo_120 =       Architecture:          aarch64
notes_plat_sysinfo_125 =       Byte Order:            Little Endian
notes_plat_sysinfo_130 =       CPU(s):                128
notes_plat_sysinfo_135 =       On-line CPU(s) list:   0-127
notes_plat_sysinfo_140 =       Thread(s) per core:    1
notes_plat_sysinfo_145 =       Core(s) per socket:    64
notes_plat_sysinfo_150 =       Socket(s):             2
notes_plat_sysinfo_155 =       NUMA node(s):          4
notes_plat_sysinfo_160 =       Model:                 0
notes_plat_sysinfo_165 =       BogoMIPS:              200.00
notes_plat_sysinfo_170 =       L1d cache:             64K
notes_plat_sysinfo_175 =       L1i cache:             64K
notes_plat_sysinfo_180 =       L2 cache:              512K
notes_plat_sysinfo_185 =       L3 cache:              65536K
notes_plat_sysinfo_190 =       NUMA node0 CPU(s):     0-31
notes_plat_sysinfo_195 =       NUMA node1 CPU(s):     32-63
notes_plat_sysinfo_200 =       NUMA node2 CPU(s):     64-95
notes_plat_sysinfo_205 =       NUMA node3 CPU(s):     96-127
notes_plat_sysinfo_210 =       Flags:                 fp asimd evtstrm aes pmull sha1 sha2 crc32 atomics fphp
notes_plat_sysinfo_215 =       asimdhp cpuid asimdrdm jscvt fcma dcpop
notes_plat_sysinfo_220 =     WARNING: the 'lscpu' utility claims that 2 "Socket(s)" were seen, which does not match
notes_plat_sysinfo_225 =     the could not determine "physyical id"s seen in /proc/cpuinfo.  The tester should
notes_plat_sysinfo_230 =     verify the count independently.
notes_plat_sysinfo_235 = 
notes_plat_sysinfo_240 =  From numactl --hardware  WARNING: a numactl 'node' might or might not correspond to a
notes_plat_sysinfo_245 =  physical chip.
notes_plat_sysinfo_250 =    available: 4 nodes (0-3)
notes_plat_sysinfo_255 =    node 0 cpus: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
notes_plat_sysinfo_260 =    28 29 30 31
notes_plat_sysinfo_265 =    node 0 size: 130062 MB
notes_plat_sysinfo_270 =    node 0 free: 126504 MB
notes_plat_sysinfo_275 =    node 1 cpus: 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56
notes_plat_sysinfo_280 =    57 58 59 60 61 62 63
notes_plat_sysinfo_285 =    node 1 size: 130937 MB
notes_plat_sysinfo_290 =    node 1 free: 130216 MB
notes_plat_sysinfo_295 =    node 2 cpus: 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88
notes_plat_sysinfo_300 =    89 90 91 92 93 94 95
notes_plat_sysinfo_305 =    node 2 size: 130937 MB
notes_plat_sysinfo_310 =    node 2 free: 128421 MB
notes_plat_sysinfo_315 =    node 3 cpus: 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114
notes_plat_sysinfo_320 =    115 116 117 118 119 120 121 122 123 124 125 126 127
notes_plat_sysinfo_325 =    node 3 size: 130935 MB
notes_plat_sysinfo_330 =    node 3 free: 128888 MB
notes_plat_sysinfo_335 =    node distances:
notes_plat_sysinfo_340 =    node   0   1   2   3
notes_plat_sysinfo_345 =      0:  10  16  32  33
notes_plat_sysinfo_350 =      1:  16  10  25  32
notes_plat_sysinfo_355 =      2:  32  25  10  16
notes_plat_sysinfo_360 =      3:  33  32  16  10
notes_plat_sysinfo_365 = 
notes_plat_sysinfo_370 =  From /proc/meminfo
notes_plat_sysinfo_375 =     MemTotal:       535422720 kB
notes_plat_sysinfo_380 =     HugePages_Total:       0
notes_plat_sysinfo_385 =     Hugepagesize:     524288 kB
notes_plat_sysinfo_390 = 
notes_plat_sysinfo_395 =  From /etc/*release* /etc/*version*
notes_plat_sysinfo_400 =     centos-release: CentOS Linux release 7.6.1810 (AltArch)
notes_plat_sysinfo_405 =     centos-release-upstream: Derived from Red Hat Enterprise Linux 7.6 (Source)
notes_plat_sysinfo_410 =     os-release:
notes_plat_sysinfo_415 =        NAME="CentOS Linux"
notes_plat_sysinfo_420 =        VERSION="7 (AltArch)"
notes_plat_sysinfo_425 =        ID="centos"
notes_plat_sysinfo_430 =        ID_LIKE="rhel fedora"
notes_plat_sysinfo_435 =        VERSION_ID="7"
notes_plat_sysinfo_440 =        PRETTY_NAME="CentOS Linux 7 (AltArch)"
notes_plat_sysinfo_445 =        ANSI_COLOR="0;31"
notes_plat_sysinfo_450 =        CPE_NAME="cpe:/o:centos:centos:7"
notes_plat_sysinfo_455 =     redhat-release: CentOS Linux release 7.6.1810 (AltArch)
notes_plat_sysinfo_460 =     system-release: CentOS Linux release 7.6.1810 (AltArch)
notes_plat_sysinfo_465 =     system-release-cpe: cpe:/o:centos:centos:7
notes_plat_sysinfo_470 = 
notes_plat_sysinfo_475 =  uname -a:
notes_plat_sysinfo_480 =     Linux apn508 4.14.0-115.el7a.0.1.aarch64 \#1 SMP Sun Nov 25 20:54:21 UTC 2018 aarch64
notes_plat_sysinfo_485 =     aarch64 aarch64 GNU/Linux
notes_plat_sysinfo_490 = 
notes_plat_sysinfo_495 =  Kernel self-reported vulnerability status:
notes_plat_sysinfo_500 = 
notes_plat_sysinfo_505 =  CVE-2017-5754 (Meltdown):          Mitigation: PTI
notes_plat_sysinfo_510 =  CVE-2017-5753 (Spectre variant 1): Mitigation: __user pointer sanitization
notes_plat_sysinfo_515 =  CVE-2017-5715 (Spectre variant 2): Vulnerable
notes_plat_sysinfo_520 = 
notes_plat_sysinfo_525 =  run-level 5 Nov 2 14:52
notes_plat_sysinfo_530 = 
notes_plat_sysinfo_535 =  SPEC is set to: /GPUFS/nsccgz_yfdu_16/gta/cpu2017
notes_plat_sysinfo_540 =     Filesystem                              Type    Size  Used Avail Use% Mounted on
notes_plat_sysinfo_545 =     10.20.10.100@tcp4:10.20.10.101@tcp4:/L2 lustre  1.7P  393T  1.3P  24% /GPUFS
notes_plat_sysinfo_550 = 
notes_plat_sysinfo_555 =  Additional information from dmidecode follows.  WARNING: Use caution when you interpret
notes_plat_sysinfo_560 =  this section. The 'dmidecode' program reads system data which is "intended to allow
notes_plat_sysinfo_565 =  hardware to be accurately determined", but the intent may not be met, as there are
notes_plat_sysinfo_570 =  frequent changes to hardware, firmware, and the "DMTF SMBIOS" standard.
notes_plat_sysinfo_575 = 
notes_plat_sysinfo_580 =  (End of data from sysinfo program)
notes_plat_update_000 = The sysinfo is missing the cpu name, the processor under test is Huawei Kunpeng 920 7260.
notes_plat_update_005 = The L3 capacity is 64MB per processor for Huawei Kunpeng 920 7260 processor for a SUT
notes_plat_update_010 = total of 128 MiB.
notes_submit_000 =  The taskset mechanism was used to bind copies to processors. The config file option 'submit'
notes_submit_005 =  was used to generate taskset commands to bind each copy to a specific processor.
notes_submit_010 =  For details, please see the config file.
notes_wrap_columns = 0
notes_wrap_indent =   
num              = 505
obiwan           = 
oldhash          = 
os_exe_ext       = 
output_format    = txt,html,cfg,pdf,csv
output_root      = 
outputdir        = output
parallel_test    = 128
parallel_test_submit = 0
parallel_test_workloads = 
path             = /GPUFS/nsccgz_yfdu_16/gta/cpu2017/benchspec/CPU/505.mcf_r
plain_train      = 1
platform         = 
power            = 0
power_management = BIOS set to prefer performance at the cost of additional power usage
preENV_LD_LIBRARY_PATH = %{gcc_dir}/lib64/:%{gcc_dir}/lib/:/lib64
preenv           = 0
prefix           = 
prepared_by      = Peng Cheng Laboratory
ranks            = 1
rawhash_bits     = 256
rebuild          = 0
reftime          = reftime
reltol           = 
reportable       = 1
resultdir        = result
review           = 0
run              = all
runcpu           = /GPUFS/nsccgz_yfdu_16/gta/cpu2017/bin/harness/runcpu --configfile kunpeng-920-7260.cfg --nopower --runmode rate --tune base --size refrate --nopower --runmode rate --tune base --size refrate intrate --nopreenv --note-preenv --logfile /GPUFS/nsccgz_yfdu_16/gta/cpu2017/tmp/CPU2017.027/templogs/preenv.intrate.027.0 --lognum 027.0 --from_runcpu 2
rundir           = run
runmode          = rate
safe_eval        = 1
save_build_files = 
section_specifier_fatal = 1
setprocgroup     = 1
setup_error      = 0
sigint           = 2
size             = test
size_class       = test
skipabstol       = 
skipobiwan       = 
skipreltol       = 
skiptol          = 
smarttune        = base
specdiff         = specdiff
specrun          = specinvoke
srcalt           = 
srcdir           = src
srcsource        = /GPUFS/nsccgz_yfdu_16/gta/cpu2017/benchspec/CPU/505.mcf_r/src
stagger          = 10
strict_rundir_verify = 1
submit_default   = taskset -c $BIND $command
sw_avail         = Jul-2020
sw_base_ptrsize  = 64-bit
sw_compiler000   = C/C++/Fortran: Version 9.1.0 of GCC, the
sw_compiler001   = GNU Compiler Collection
sw_file          = lustre
sw_os001         = CentOS Linux release 7.6.1810 (AltArch)
sw_os002         = 4.14.0-115.el7a.0.1.aarch64
sw_other         = jemalloc memory allocator V5.2.1
sw_peak_ptrsize  = Not Applicable
sw_state         = Run level 5 (add definition here)
sysinfo_hash_bits = 256
sysinfo_program  = specperl /GPUFS/nsccgz_yfdu_16/gta/cpu2017/bin/sysinfo
sysinfo_program_hash = sysinfo:SHA:32259ebd59f3e93740723202f27c44c82ee68e0f2e40cd2ca50cfd5519772397
table            = 1
teeout           = 0
test_date        = Jan-2021
test_sponsor     = Peng Cheng Laboratory
testaddedbytools94841 = 1
tester           = Peng Cheng Laboratory
threads          = 1
top              = /GPUFS/nsccgz_yfdu_16/gta/cpu2017
train_single_thread = 0
train_with       = train
trainaddedbytools94841 = 1
tune             = base
uid              = 7778
unbuffer         = 1
uncertainty_exception = 5
update           = 0
update_url       = http://www.spec.org/auto/cpu2017/updates/
use_submit_for_compare = 0
use_submit_for_speed = 0
username         = nsccgz_yfdu_16
verbose          = 5
verify_binaries  = 1
version          = 0.905000
version_url      = http://www.spec.org/auto/cpu2017/current_version
voltage_range    = 
worklist         = list
OUTPUT_RMFILES   = inp.out mcf.out
