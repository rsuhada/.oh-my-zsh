# my aliases and paths
# taken from bash, needs cleanup but works

# Search Path additions
#    export PATH=/utils/ds9/:/utils/p2pp/bin/:/utils/skycat/:/home/rsuhada/data1/sw/zhtools/bin:/home/rsuhada/data1/sw/misc:/home/rsuhada/data1/sw/scripts:$PATH
#    export PATH="$HOME/bin:/opt/local/bin:$PATH"
export PATH="$PATH:/usr/local/bin/:~/data1/sw/scripts/:/usr/texbin/"
DYLD_FALLBACK_LIBRARY_PATH=/opt/local/lib
export CVSROOT=":pserver:rsuhada@moon.usm.lmu.de:/home/moon/spt/cvs"
# Source shortcut
alias sourcebash='source ~/.bashrc'
alias sourcezsh='source ~/.zshrc'
export EDITOR="/usr/bin/nano"

# Remote copy dir from 023 to dst01
#alias cp_o23='scp -r 'o23:~/data1/Export_dst01/*' ~/data1/Import_o23/'

#More Listing options
alias ls='ls -G'
alias l='ls'
alias la='ls -la'
alias ll='ls -lh'
alias lA='ls -lhA'
alias ld='ls -F | grep "/"'
alias lld='ls -lF | grep "/"'
alias lrt='ls -lrth'

# Shortcuts
export CDPATH=.:~/:..:../..:~/data1/
alias cd1='cd ~/data1 ; ls -l'
alias cdsz='cd ~/data1/APEX/ ; ls -l'
alias cdsw='cd ~/data1/sw/ ; ls -l'
alias cdsd='cd ~/data1/sandbox/ ; ls -l'
alias cdpy='cd /Library/Frameworks/Python.framework/Versions/2.5/lib/python2.5/site-packages/'
alias cdt='cd /Users/rsuhada/Dropbox/thesis/'
alias cd.='cd ../'
alias cd..='cd ../../'
alias cd...='cd ../../../'
alias cd....='cd ../../../../'
alias cd.....='cd ../../../../../'
alias cdb='cd ${OLDPWD}'
alias cdbx='cd /Users/rsuhada/Dropbox/'

# a2ps 1sided
alias a2ps_1='a2ps -l120 --columns=1'

# bash mods
alias tdate='date +"%y%m%d"'

# XMM pipeline shortcut
#alias xmm_pipeline='~/data1/SW/XMM/pipeline_hxb_dst01.sh'        # single ODF reduction
alias dcp='/home/rsuhada/data1/sw/Red_Pipe/dcp_pipeline.sh'    # batch DCP specific reduction
alias blackcp='/home/rsuhada/data1/sw/Black_Pipe/dcp_pipeline.sh'    # experimental DCP modifications

# SAS 8.0.0
alias sas80='source ~/data1/sw/sas-8.0.1/xmmsas_20080701_1803/setsas.sh; export SAS_MEMORY_MODEL=high; export SAS_CCF=/xmm/ccf/public_ccf.cif; export SAS_CCFPATH=/xmm/ccf/public; export SAS_IMAGEVIEWER=ds9'

# SAS 10.0.0
alias sas10='source ~/data1/sw/sas.10.0.0/xmmsas_20100423_1803/setsas.sh; export SAS_MEMORY_MODEL=high; export SAS_CCFPATH=/xmm/ccf/; export SAS_IMAGEVIEWER=ds9'


# SAS 7.1.0
 alias sas71='source /utils/xmmsas-setup.sh 7.1.0; export SAS_MEMORY_MODEL=high; export SAS_CCF=/xmm/ccf/public_ccf.cif; export SAS_CCFPATH=/xmm/ccf/public; export SAS_IMAGEVIEWER=ds9'

# SAS 6.5.0
alias sas65='source /utils/xmmsas-setup.sh 6.5.0; export SAS_MEMORY_MODEL=high; export SAS_CCF=/xmm/ccf/public_ccf.cif; export SAS_CCFPATH=/xmm/ccf/public; export SAS_IMAGEVIEWER=ds9'

# old SAS version 6.1.0
alias sas610='source /utils/xmmsas-setup.sh 6.1.0; export SAS_MEMORY_MODEL=high; export SAS_CCF=/xmm/ccf/public_ccf.cif; export SAS_CCFPATH=/xmm/ccf/public; export SAS_IMAGEVIEWER=ds9'

# CIAO
alias ciao='source /usr/ciao-4.2/bin/ciao.bash'

# Software aliases
alias sex='/utils/sextractor-2.5.0/src/sex'
alias fims1='export HOST=$HOSTNAME ; /home/rsuhada/data1/sw/fimsP80/bin/fims.sh 1'
alias fims2='export HOST=$HOSTNAME ; /home/rsuhada/data1/sw/fimsP80/bin/fims.sh 2'
alias p2pp='/utils/p2pp/bin/p2pp'
alias skycat='/utils/skycat/skycat'
alias ds9='/Applications/SAOImage\ DS9.app/Contents/MacOS/ds9'
alias na='nano'
alias le='less'
alias calc='~/data1/sw/calc/calc-src.txt'
alias je='/home/rsuhada/bin/jedit'
alias py='python'
alias ip='ipython'
alias latex='/usr/texbin/latex -interaction=nonstopmode'
alias pdftotext='pdftotext -enc UTF-8'


# python
export PYTHONPATH=/System/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/site-packages/:/Library/Python/2.6/site-packages/:/Users/rsuhada/.emacs.d/plugins/ropemacs/:/Users/rsuhada/data1/sw/Pymacs/
export NUMERIX=numpy
export FISHERPATH=/Users/rsuhada/data1/sw/pythonlibs/Fisher
export PYTHONPATH=${PYTHONPATH}:${FISHERPATH}:/Users/rsuhada/data1/sw/pythonlibs/rs

#HEADAS-XSPEC
HEADAS="/Users/rsuhada/data1/sw/heasoft-6.8/i386-apple-darwin10.2.0/"
export HEADAS
alias heainit=". $HEADAS/headas-init.sh"

#    alias ds9new='/data1/rfassben/SW/Shareware/ds9'
#    alias ds10='/data1/rfassben/SW/Shareware/ds9'
#    alias ds11='/data1/rfassben/SW/shell/load_cuts.sh'
#    alias dsRGB='/data1/rfassben/SW/shell/load_RGB.sh'
#    alias imwcs='/data1/rfassben/SW/Shareware/wcstools-3.6.5/bin/imwcs'
#    alias swarp='/data1/rfassben/SW/Shareware/SWARP/bin/swarp'
#    alias ispiwcs='/data1/rfassben/SW/O2K/ISPI/ispiwcs.sh'
#    alias copywcs='/data1/rfassben/SW/O2K/ISPI/copy_wcs.sh'
#    alias ispiphot='/data1/rfassben/SW/O2K/ISPI/ispi_phot.sh'
#    alias o2kphot='/data1/rfassben/SW/O2K/o2k_util_MPE/scripts/o2k_phot.sh'
#    alias o2kwcs='/data1/rfassben/SW/O2K/o2k_util_MPE/scripts/o2kwcs.sh'
#    alias copyo2kwcs='/data1/rfassben/SW/O2K/o2k_util_MPE/scripts/copy_o2kwcs.sh'


#My init
#    source /utils/exsas-setup.sh    # should include MIDAS definitions
#    source /utils/lheasoft-setup.sh
#    source /utils/xmmsas-setup.sh
#    source /utils/spex-setup.sh
export SAS_MEMORY_MODEL=high
export SAS_IMAGEVIEWER=ds9

#IDL
#    source /utils/idl-setup.sh
export IDL_STARTUP=~/data1/sw/IDL/
export IDL_PATH=".:+~/data1/sw/IDL:+~/data1/sw/IDL/libs:+~/data1/sw/IDL/projects:+/utils/idl_6.0"

export SDSSIDL_DIR=/home/rsuhada/data1/sw/IDL/libs/SDSSIDL
export SDSSIDL_PRO_DIR=${SDSSIDL_DIR}/pro
export SDSSIDL_DLM_DIR=${SDSSIDL_DIR}/src/DLM


## Additional setups added on May 27 2004
#    source /utils/ftools-setup.sh
#    source /utils/iraf-setup.sh    # for bash users

###More setups for software tools: Sept 23 2004
#source /utils/ds9-setup.sh
#    source /utils/iraf-setup.csh
#source /utils/

# Change/set SAS Environment Variables

#RS .bash_history settings
export HISTCONTROL=ignoreboth
export HISTSIZE=10000


#export FVTMP=/tmp/rsuhada

# VO
alias tpc='java -jar /Applications/topcat-full.jar'
alias tpca='java -jar /Applications/topcat-full.jar -ascii'
alias stl='java -jar /Applications/stilts.jar'

# alias tpc='~/data1/sw/tpc/bin/topcat'
# alias tpca='~/data1/sw/tpc/bin/topcat -ascii'
# alias stl='~/data1/sw/tpc/bin/stilts'

# try adding zenburn to iterm
# function EXT_COLOR () { echo -ne "\e[38;5;$1m"; }
# function CLOSE_COLOR () { echo -ne '\e[m'; }
# export PS1="\[`EXT_COLOR 187`\]\u@\h\[`CLOSE_COLOR`\]\[`EXT_COLOR 174`\] \w \$ \[`CLOSE_COLOR`\] > "
# export LS_COLORS='di=38;5;108:fi=00:*svn-commit.tmp=31:ln=38;5;116:ex=38;5;186'

alias emacs='/Applications/Aquamacs.app/Contents/MacOS/Aquamacs'

