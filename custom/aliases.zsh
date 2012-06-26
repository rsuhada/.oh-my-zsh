# my aliases and paths
# taken from bash, needs cleanup but works

# Search Path additions
export PATH=~/bin:/utils/ds9/:/utils/p2pp/bin/:/utils/skycat/:~/data1/sw/zhtools/bin:~/data1/sw/misc:~/data1/sw/scripts:~/data1/sw/esaspi:~/data1/sw/esaspi/quick-spec:~/data1/sw/esaspi/utils:~/data1/sw/esaspi/iter-spec:~/data1/sw/kapi:~/data1/sw/root-5.30/bin:$PATH
export PATH="$PATH:/usr/local/bin/:~/data1/sw/scripts/:/usr/texbin/"
DYLD_FALLBACK_LIBRARY_PATH=/opt/local/lib
export LD_LIBRARY_PATH=/Users/rs/data1/sw/minuit2/lib:${LD_LIBRARY_PATH}
# Source shortcut
alias sourcebash='source ~/.bashrc'
alias sourcezsh='source ~/.zshrc'
# export EDITOR="/usr/bin/emacsclient"
export EDITOR="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient"

#More Listing options
# alias ls='ls --color=auto'     # version: linux
alias ls='ls -G'                # version: mac
alias l='ls'
alias la='ls -la'
alias ll='ls -lh'
alias lA='ls -lhA'
alias ld='ls -F | grep "/"'
alias lld='ls -lF | grep "/"'
alias lrt='ls -lrth'
alias l1='ls -1'

export CDPATH=.:~/:..:../..:~/w/:~/data1/:~/data1/lab/:~/pw
alias c='cd'
alias c1='cd ~/data1 ; ls -l'
alias ce='cd ~/data1/sw/esaspi ; ls -l'
alias cw='cd ~/w ; ls -l'
alias cpw='cd ~/pw ; ls -l'
alias csz='cd ~/data1/APEX/ ; ls -l'
alias csw='cd ~/data1/sw/ ; ls -l'
alias csd='cd ~/data1/sandbox/ ; ls -l'
alias cpy='cd /usr/local/lib/python2.6/site-packages'
alias ct='cd /Users/rs/Dropbox/thesis/'
alias cdl='cd ~/Downloads'
alias cspt='cd ~/w/xspt/data'
alias c.='cd ../'
alias c..='cd ../../'
alias c...='cd ../../../'
alias c....='cd ../../../../'
alias c.....='cd ../../../../../'
alias cb='cd -'
alias cbb='cd --'
alias cbx='cd /Users/rs/Dropbox/'

# bash mods
alias duh='du -sh'
alias grep='grep --color'
alias tdate='date +"%y%m%d"'
alias tarx='tar -xvvf'
alias targx='tar -xvvzf'
alias tarc='tar -cvvf'
alias targc='tar -cvvzf'
alias tgx='tar -xvvzf'
alias tgc='tar -cvvzf'
alias sourcebash='source ~/.bashrc'
alias cx='chmod 744'

# git
alias ga='git add .'
alias gst='git status'
alias gc='git commit'
alias gpush='git push -u origin master'
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias glg='git lg'
alias glgp='git lg -p'

# # sh options
# shopt -s cdspell

# calendar
alias cal='gcal -q DE_BY -s Monday --date-format=de --type=special .'
alias gcal='gcal -q DE_BY -s Monday --date-format=de --type=special .'

# a2ps 1sided
alias a2ps_1='a2ps -l120 --columns=1'

# bash mods
alias tdate='date +"%y%m%d"'

# SAS 11.0.0
alias sas11='export SAS_DIR=/Users/rs/data1/sw/sas-11.0.0/xmmsas_20110223_1803; export SAS_PATH=/Users/rs/data1/sw/sas-11.0.0/xmmsas_20110223_1803; source /Users/rs/data1/sw/sas-11.0.0/xmmsas_20110223_1803/sas-setup.sh; export SAS_MEMORY_MODEL=high; export SAS_CCFPATH=/Users/rs/calib/xmm/ccf/; export SAS_IMAGEVIEWER=ds9'

# CIAO
alias ciao='source /usr/ciao-4.2/bin/ciao.bash'

# Software aliases
alias ds9='/Applications/SAOImage\ DS9.app/Contents/MacOS/ds9'
alias na='nano'
alias le='less'
# alias calc='~/data1/sw/calc/calc.pl' # better put/link it in your path!
alias je='~/bin/jedit'
alias py='python'
alias ip='ipython'
alias latex='/usr/texbin/latex -interaction=nonstopmode'
alias pdftotext='pdftotext -enc UTF-8'

# python
# export PYTHONPATH=/System/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/site-packages/:/Library/Python/2.6/site-packages/:/Users/rs/.emacs.d/plugins/ropemacs/:/Users/rs/data1/sw/Pymacs/
export PYTHONPATH=/usr/local/lib/python2.6/site-packages/:/Users/rs/data1/sw/pythonlibs/rs:/Users/rs/data1/sw/kapi:/Users/rs/data1/sw/esaspi/py/:/Users/rs/data1/sw/esaspi/sb/:
export NUMERIX=numpy
# export FISHERPATH=/Users/rs/data1/sw/pythonlibs/Fisher
# export PYTHONPATH=${PYTHONPATH}:${FISHERPATH}:/Users/rs/data1/sw/pythonlibs/rs

#HEADAS-XSPEC
HEADAS="/Users/rs/data1/sw/heasoft-6.11/i386-apple-darwin10.7.0/"
export HEADAS
alias heainit=". $HEADAS/headas-init.sh"

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

export SDSSIDL_DIR=~/data1/sw/IDL/libs/SDSSIDL
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
export HISTSIZE=50000


# VO
alias tpc='java -jar ~/data1/sw/topcat-3.8/topcat-full.jar'
alias tpca='java -jar ~/data1/sw/topcat-3.8/topcat-full.jar -f ascii'
alias stilts='java -jar ~/data1/sw/stilts-2.3.1/stilts.jar'
alias stl='java -jar ~/data1/sw/stilts-2.3.1/stilts.jar'

# other java stuff
alias lang='java -jar ~/data1/sw/languagetool-1.5/LanguageTool.jar'


# alias tpc='~/data1/sw/tpc/bin/topcat'
# alias tpca='~/data1/sw/tpc/bin/topcat -ascii'
# alias stl='~/data1/sw/tpc/bin/stilts'

# try adding zenburn to iterm
# function EXT_COLOR () { echo -ne "\e[38;5;$1m"; }
# function CLOSE_COLOR () { echo -ne '\e[m'; }
# export PS1="\[`EXT_COLOR 187`\]\u@\h\[`CLOSE_COLOR`\]\[`EXT_COLOR 174`\] \w \$ \[`CLOSE_COLOR`\] > "
# export LS_COLORS='di=38;5;108:fi=00:*svn-commit.tmp=31:ln=38;5;116:ex=38;5;186'

# alias emacs='/Applications/Aquamacs.app/Contents/MacOS/Aquamacs'
alias e='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -nw'
alias emacs='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -nw'
alias ew='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient'

# fink setup
test -r /sw/bin/init.sh && . /sw/bin/init.sh


######################################################################
# private stuff

# CVS stuff
source /Users/rs/.private-shell-configs/cvs-setup.sh

# ssh
source /Users/rs/.private-shell-configs/ssh-logins.sh

######################################################################
# minuit package

export DYLD_LIBRARY_PATH=/Users/rs/data1/sw/Minuit-1_7_9/src/.libs:$DY_LIBRARY_PATH
export PYTHONPATH=/Users/rs/data1/sw/pyminuit/build/lib.macosx-10.6-universal-2.6:$PYTHONPATH

######################################################################
# tmux stuff

# run daemon for clipboard integration
alias tmux='/Users/rs/bin/clipb & ; tmux'

# autocomplete
compctl -g '~/.teamocil/*(:t:r)' teamocil

# ######################################################################
# # logging - not working for
# promptFunc()
# {
#     # right before prompting for the next command, save the previous
#     # command in a file.
#     echo "$(date +%Y-%m-%d--%H-%M-%S) $(hostname) $PWD $(history 1)" >> ~/Dropbox/dotfiles/.zsh_full_history
# }
# PROMPT_COMMAND=promptFunc