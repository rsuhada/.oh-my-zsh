######################################################################
# bindings
######################################################################

######################################################ie############
# general

bindkey -me 2>/dev/null      # use emacs bindgs + meta
bindkey '^O/' undo
bindkey '\eh' backward-kill-word

# my emacs motion

bindkey '\eu' up-line-or-history
bindkey '\ee' down-line-or-history
bindkey '\en' backward-char
bindkey '\ei' forward-char

######################################################################
# function keys

# f1
function snippet_for()
{
    LBUFFER+="for i in "
    RBUFFER=" ; do echo \$i; done $RBUFFER"
}
zle -N snippet_for snippet_for
bindkey "^[OP" snippet_for


# f2
function snippet_awk()
{
    LBUFFER+="awk '{print \$1"
    RBUFFER="}' $RBUFFER"
}
zle -N snippet_awk snippet_awk
bindkey "^[OQ" snippet_awk


# f3
function snippet_sed()
{
    LBUFFER+="'s/"
    RBUFFER="//g' $RBUFFER"
}
zle -N snippet_sed snippet_sed
bindkey "^[OR" snippet_sed


# f5
insert_rgrep () {
LBUFFER+="grep -riI \""
RBUFFER+="\" ./"
}
zle -N insert-rgrep insert_rgrep
bindkey "^[[15~" insert-rgrep


# f6
insert_find () {
LBUFFER+="find . -iname \\*"
RBUFFER+="\\* | while read i; do echo \$i ; done"
}
zle -N insert-find insert_find
bindkey "^[[17~" insert-find


# f4
insert_et () {
LBUFFER+="2>&1 | tee "
}
zle -N insert-et insert_et
bindkey "^[OS" insert-et


# f7
insert_ds9_reg () {
LBUFFER+="-regions load "
}
zle -N insert-ds9_reg insert_ds9_reg
bindkey "^[[18~" insert-ds9_reg

# f8
insert_wildc () {
LBUFFER+="*"
RBUFFER="* $RBUFFER"
}
zle -N insert-wildc insert_wildc
bindkey "^[[19~" insert-wildc

# f9
function snippet_hist_arg()
{
    LBUFFER+=" !-1:"
    RBUFFER=" $RBUFFER"
}
zle -N snippet_hist_arg snippet_hist_arg
bindkey "^[[20~" snippet_hist_arg

# f10
insert_x-dict () {
LBUFFER+="x-dict \""
RBUFFER+="\" H"
}
zle -N insert-x-dict insert_x-dict
bindkey "^[[21~" insert-x-dict

# f11
function snippet_for()
{
    LBUFFER+="for i in "
    RBUFFER=" ; do echo \$i; done $RBUFFER"
}
zle -N snippet_for snippet_for
bindkey "^[[23~" snippet_for

# FIXME!!


# f12
bindkey -s "^[[24~" "pwd | perl -ne 'chomp and print' | pbcopy\n"
# bindkey -s "^[;" "^Qls -rt -1 | tail -1\n"


######################################################################
# misc functions

######################################################################
# sudo

insert_sudo () {
zle beginning-of-line
LBUFFER+="sudo "
zle end-of-line
}
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo

######################################################################
# jump

insert_jump () {
LBUFFER+="n "
}
zle -N insert-jump insert_jump
bindkey "^[j" insert-jump

######################################################################
# echo

insert_echo () {
LBUFFER+="echo "
}
zle -N insert-echo insert_echo
bindkey "^[e" insert-echo

######################################################################
# rsync

insert_rsync_local () {
LBUFFER+="rsync -a --stats --progress "
}
zle -N insert-rsync_local insert_rsync_local
bindkey "^[c" insert-rsync_local

######################################################################
# pparallel

insert_pparallel () {
LBUFFER+="pparallel "
}
zle -N insert-pparallel insert_pparallel
bindkey "^[q" insert-pparallel

######################################################################
# grep

insert_grep () {
LBUFFER+="grep "
# RBUFFER+=" *."
}
zle -N insert-grep insert_grep
bindkey "^[g" insert-grep

######################################################################
# ack

insert_ack () {
LBUFFER+="ack "
# RBUFFER+=" *."
}
zle -N insert-ack insert_ack
bindkey "^[a" insert-ack

######################################################################
# mkdir

insert_mkdir () {
LBUFFER+="mkdir -p "
}
zle -N insert-mkdir insert_mkdir
# bindkey "^[m" insert-mkdir

######################################################################
# open

insert_open () {
LBUFFER+="open "
}
zle -N insert-open insert_open
bindkey "^[q" insert-open

######################################################################
# ds9

insert_ds9 () {
LBUFFER+="ds9 "
RBUFFER+=" &"
}
zle -N insert-ds9 insert_ds9
bindkey "^[9" insert-ds9

# insert_ds9_fp () {
# LBUFFER+="/Applications/SAOImage\ DS9.app/Contents/MacOS/ds9 "
# RBUFFER+=" &"
# }
# zle -N insert-ds9_fp insert_ds9_fp
# bindkey "^[0" insert-ds9_fp

######################################################################
# underscore

insert_underscore () {
LBUFFER+="_"
# RBUFFER+=" &"
}
zle -N insert-underscore insert_underscore
bindkey "^[l" insert-underscore

######################################################################
# lrt

# for shell function:
# > function foo () {
# >
# > echo "Foo ooo"
# > }
#
# bindkey -s '<keystroke>' '^qfoo\n'
#
# This assumes ^q is bound to the editor command push-line.  You can
# remove the ^q if you only want to use this on an empty command line.

bindkey -s "^[u" "^qls -lrth\n"
bindkey -s "^[U" "^qls -lrtha\n"
bindkey -s "^[e" "^qls -a\n"
bindkey -s "^[," "^qcd ..\n"
bindkey -s "^[." "^qcd -\n"

# insert most recent filename
insert_recentfile () {
LBUFFER+=" `ls -rt -1 | tail -1`"
}
zle -N insert-recentfile insert_recentfile
bindkey "^[o" insert-recentfile

# insert most lastbutone filename
insert_lastbutonefile () {
LBUFFER+=" `ls -rt -1 | tail -2 | head -1`"
}
zle -N insert-lastbutonefile insert_lastbutonefile
bindkey "^[O" insert-lastbutonefile

#####################################################################
# rsync

insert_rsync () {
LBUFFER+="rsync -av "
RBUFFER+=" rsuhada@desproc1:"
}
zle -N insert-rsync insert_rsync
bindkey "^[r" insert-rsync


# insert_rsync () {
# LBUFFER+="rsync -av "
# RBUFFER+=" rs@lap120.usm.uni-muenchen.de:"
# }
# zle -N insert-rsync insert_rsync
# bindkey "^[r" insert-rsync


######################################################################
# boom

insert_boom () {
LBUFFER+="boom main "
RBUFFER+=""
}
zle -N insert-boom insert_boom
bindkey "^b" insert-boom


######################################################################
# fasd for quick access

# not used at the moment

insert_fasd_file () {
LBUFFER+="\`f "
RBUFFER+=" \`"
}
zle -N insert-fasd_file insert_fasd_file
bindkey "^f" insert-fasd_file

# insert_fasd_dir () {
# LBUFFER+="\`d "
# RBUFFER+=" \`"
# }
# zle -N insert-fasd_dir insert_fasd_dir
# bindkey "^[2" insert-fasd_dir


# first f6, type name, c-e, M-6 for full find/xargs pipe
insert_xarg () {
LBUFFER+="-type f | xargs "  #  -print0
RBUFFER+=""
}
zle -N insert-xarg insert_xarg
bindkey "^[6" insert-xarg

######################################################################
# topcat

insert_tpca () {
LBUFFER+="tpca "
RBUFFER+=" &"
}
zle -N insert-tpca insert_tpca
bindkey "^l" insert-tpca

######################################################################
# topcat

insert_tpc () {
LBUFFER+="tpc "
RBUFFER+=" &"
}
zle -N insert-tpc insert_tpc
bindkey "^y" insert-tpc


######################################################################
# add & and run detached

insert_run_detach () {
zle end-of-line
LBUFFER+=" &"
zle accept-line
}
zle -N insert-run_detach insert_run_detach
bindkey "^[m" insert-run_detach

######################################################################
# nummerals

# 0,1,2,3 are bound to window managaemet in tmux

# 4

# bindkey -s "^[4" "path=`pwd` ; file=`ls -rt | tail -1 | head -1` : echo ${path}/${file} | perl -ne 'chomp and print' | pbcopy\n"
bindkey -s "^[\`" "/Users/rs/data1/sw/scripts/clipmostrecent\n" # maybe remove later
bindkey -s "^[4" "/Users/rs/data1/sw/scripts/clipmostrecent\n"

# 5

# bindkey -s "^[5" "pathpwd=`pwd` ; file=`ls -rt | tail -2 | head -1` : echo `pwd`/`ls -rt | tail -2 | head -1` | perl -ne 'chomp and print' | pbcopy\n"
bindkey -s "^[5" "/Users/rs/data1/sw/scripts/clipmostrecent 2\n"


# 9
insert_ds9 () {
LBUFFER+="ds9 "
RBUFFER+=" &"
}
zle -N insert-ds9 insert_ds9
bindkey "^[9" insert-ds9
