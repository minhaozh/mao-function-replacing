-E BASH_FUNC_module() '() {  eval `modulecmd bash $*` }'
-E CLICOLOR 1
-E ENVIRONMENT BATCH
-E HISTCONTROL ignoredups
-E HISTSIZE 1000
-E HISTTIMEFORMAT '[%Y-%m-%d %H:%M:%S] [172.17.69.254] '
-E HOME /GPUFS/nsccgz_yfdu_16
-E HOSTNAME apn508
-E LANG en_US.UTF-8
-E LANGUAGE en_US
-E LAST_CMD ' 1010  [2021-01-10 09:56:19] [172.17.69.254] vim kunpeng.sh '
-E LC_ALL C
-E LC_LANG C
-E LD_LIBRARY_PATH /usr/local/lib64/:/usr/local/lib/:/lib64::/GPUFS/nsccgz_yfdu_16/gta/jemalloc-5.2.1/lib
-E LESSOPEN '||/usr/bin/lesspipe.sh %s'
-E LIBC_FATAL_STDERR_ 1
-E LOADEDMODULES ''
-E LOGNAME nsccgz_yfdu_16
-E LSCOLORS gxfxcxdxbxegedabagacad
-E LS_COLORS 'rs=0:di=38;5;27:ln=38;5;51:mh=44;38;5;15:pi=40;38;5;11:so=38;5;13:do=38;5;5:bd=48;5;232;38;5;11:cd=48;5;232;38;5;3:or=48;5;232;38;5;9:mi=05;48;5;232;38;5;15:su=48;5;196;38;5;15:sg=48;5;11;38;5;16:ca=48;5;196;38;5;226:tw=48;5;10;38;5;16:ow=48;5;10;38;5;21:st=48;5;21;38;5;15:ex=38;5;34:*.tar=38;5;9:*.tgz=38;5;9:*.arc=38;5;9:*.arj=38;5;9:*.taz=38;5;9:*.lha=38;5;9:*.lz4=38;5;9:*.lzh=38;5;9:*.lzma=38;5;9:*.tlz=38;5;9:*.txz=38;5;9:*.tzo=38;5;9:*.t7z=38;5;9:*.zip=38;5;9:*.z=38;5;9:*.Z=38;5;9:*.dz=38;5;9:*.gz=38;5;9:*.lrz=38;5;9:*.lz=38;5;9:*.lzo=38;5;9:*.xz=38;5;9:*.bz2=38;5;9:*.bz=38;5;9:*.tbz=38;5;9:*.tbz2=38;5;9:*.tz=38;5;9:*.deb=38;5;9:*.rpm=38;5;9:*.jar=38;5;9:*.war=38;5;9:*.ear=38;5;9:*.sar=38;5;9:*.rar=38;5;9:*.alz=38;5;9:*.ace=38;5;9:*.zoo=38;5;9:*.cpio=38;5;9:*.7z=38;5;9:*.rz=38;5;9:*.cab=38;5;9:*.jpg=38;5;13:*.jpeg=38;5;13:*.gif=38;5;13:*.bmp=38;5;13:*.pbm=38;5;13:*.pgm=38;5;13:*.ppm=38;5;13:*.tga=38;5;13:*.xbm=38;5;13:*.xpm=38;5;13:*.tif=38;5;13:*.tiff=38;5;13:*.png=38;5;13:*.svg=38;5;13:*.svgz=38;5;13:*.mng=38;5;13:*.pcx=38;5;13:*.mov=38;5;13:*.mpg=38;5;13:*.mpeg=38;5;13:*.m2v=38;5;13:*.mkv=38;5;13:*.webm=38;5;13:*.ogm=38;5;13:*.mp4=38;5;13:*.m4v=38;5;13:*.mp4v=38;5;13:*.vob=38;5;13:*.qt=38;5;13:*.nuv=38;5;13:*.wmv=38;5;13:*.asf=38;5;13:*.rm=38;5;13:*.rmvb=38;5;13:*.flc=38;5;13:*.avi=38;5;13:*.fli=38;5;13:*.flv=38;5;13:*.gl=38;5;13:*.dl=38;5;13:*.xcf=38;5;13:*.xwd=38;5;13:*.yuv=38;5;13:*.cgm=38;5;13:*.emf=38;5;13:*.axv=38;5;13:*.anx=38;5;13:*.ogv=38;5;13:*.ogx=38;5;13:*.aac=38;5;45:*.au=38;5;45:*.flac=38;5;45:*.mid=38;5;45:*.midi=38;5;45:*.mka=38;5;45:*.mp3=38;5;45:*.mpc=38;5;45:*.ogg=38;5;45:*.ra=38;5;45:*.wav=38;5;45:*.axa=38;5;45:*.oga=38;5;45:*.spx=38;5;45:*.xspf=38;5;45:'
-E MAIL /var/spool/mail/nsccgz_yfdu_16
-E MODULEPATH /GPUFS/app_taishan/modulefiles:/usr/share/Modules/modulefiles:/etc/modulefiles:/GPUFS/nsccgz_yfdu_16/fgn/sriov-test/modulefiles:/GPUFS/nsccgz_yfdu_16/fgn/modules
-E MODULESHOME /usr/share/Modules
-E OLD_PWD /GPUFS/nsccgz_yfdu_16/gta/mao-spec-sbatch
-E OMPI_ALLOW_RUN_AS_ROOT 1
-E OMPI_ALLOW_RUN_AS_ROOT_CONFIRM 1
-E OMP_NUM_THREADS 1
-E OMP_THREAD_LIMIT 1
-E PATH /GPUFS/nsccgz_yfdu_16/gta/cpu2017/bin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/ibutils/bin:/usr/share/Modules/bin:/usr/bin
-E PROMPT_COMMAND ' if [ -z "$OLD_PWD" ];then      export OLD_PWD=$PWD;  fi;  if [ ! -z "$LAST_CMD" ] && [ "$(history 1)" != "$LAST_CMD" ]; then      logger -t `whoami`_shell_cmd "[$OLD_PWD]$(history 1)";  fi;  export LAST_CMD="$(history 1)";  export OLD_PWD=$PWD;'
-E QTDIR /usr/lib64/qt-3.3
-E QTINC /usr/lib64/qt-3.3/include
-E QTLIB /usr/lib64/qt-3.3/lib
-E QT_GRAPHICSSYSTEM_CHECKED 1
-E SHELL /bin/bash
-E SLURMD_NODENAME apn508
-E SLURM_CLUSTER_NAME tianhe2-t
-E SLURM_CPUS_ON_NODE 128
-E SLURM_GTIDS 0
-E SLURM_JOBID 4404
-E SLURM_JOB_ACCOUNT tianhe2t_test
-E SLURM_JOB_CPUS_PER_NODE 128
-E SLURM_JOB_GID 7037
-E SLURM_JOB_ID 4404
-E SLURM_JOB_NAME gta
-E SLURM_JOB_NODELIST apn508
-E SLURM_JOB_NUM_NODES 1
-E SLURM_JOB_PARTITION arm
-E SLURM_JOB_QOS normal
-E SLURM_JOB_UID 7778
-E SLURM_JOB_USER nsccgz_yfdu_16
-E SLURM_LOCALID 0
-E SLURM_NNODES 1
-E SLURM_NODEID 0
-E SLURM_NODELIST apn508
-E SLURM_NODE_ALIASES '(null)'
-E SLURM_NPROCS 128
-E SLURM_NTASKS 128
-E SLURM_PRIO_PROCESS 0
-E SLURM_PROCID 0
-E SLURM_SUBMIT_DIR /GPUFS/nsccgz_yfdu_16/gta/mao-spec-sbatch
-E SLURM_SUBMIT_HOST aln220
-E SLURM_TASKS_PER_NODE 128
-E SLURM_TASK_PID 16149
-E SLURM_TOPOLOGY_ADDR apn508
-E SLURM_TOPOLOGY_ADDR_PATTERN node
-E SLURM_WORKING_CLUSTER tianhe2-t:aln220:6817:8704:102
-E SPEC /GPUFS/nsccgz_yfdu_16/gta/cpu2017
-E SPECDB_PWD /GPUFS/nsccgz_yfdu_16/gta/mao-spec-sbatch
-E SPECPERLLIB /GPUFS/nsccgz_yfdu_16/gta/cpu2017/bin/lib:/GPUFS/nsccgz_yfdu_16/gta/cpu2017/bin
-E SSH_CLIENT '172.17.69.254 55320 22'
-E SSH_CONNECTION '172.17.69.254 55320 172.16.20.220 22'
-E SSH_TTY /dev/pts/3
-E TERM xterm-256color
-E TMPDIR /tmp
-E USER nsccgz_yfdu_16
-E XDG_DATA_DIRS /GPUFS/nsccgz_yfdu_16/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share
-E XDG_RUNTIME_DIR /run/user/7778
-E XDG_SESSION_ID 120291
-E ftp_proxy ftp://172.16.20.3:3138
-E http_proxy http://172.16.20.3:3138
-E https_proxy https://172.16.20.3:3138
-r
-N C
-b 0
-C /GPUFS/nsccgz_yfdu_16/gta/cpu2017/benchspec/CPU/505.mcf_r/run/run_base_train_kunpeng-64.0000
-o inp.out -e inp.err ../run_base_train_kunpeng-64.0000/mcf_r_base.kunpeng-64 inp.in  > inp.out 2>> inp.err
