######################################################################
# bindings
######################################################################

######################################################################
# general

bindkey -me 2>/dev/null      # use emacs bindgs + meta
bindkey '^O/' undo
bindkey '\eh' backward-kill-word

# my emacs motion

bindkey '\ei' up-line-or-history
bindkey '\ek' down-line-or-history
bindkey '\ej' backward-char
bindkey '\el' forward-char

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
LBUFFER+="grep -ri \""
RBUFFER+="\" ./"
}
zle -N insert-rgrep insert_rgrep
bindkey "^[[15~" insert-rgrep

# f5

insert_find () {
LBUFFER+="find . -name \\*"
}
zle -N insert-find insert_find
bindkey "^[[17~" insert-find


# f4

insert_et () {
LBUFFER+="2>&1 | tee "
}
zle -N insert-et insert_et
bindkey "^[OS" insert-et



# f12: ^[[24~

# f8

function snippet_hist_arg()
{
    LBUFFER+=" !-1:"
    RBUFFER=" $RBUFFER"
}
zle -N snippet_hist_arg snippet_hist_arg
bindkey "^[[19~" snippet_hist_arg


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
# echo

insert_echo () {
LBUFFER+="echo "
}
zle -N insert-echo insert_echo
bindkey "^[e" insert-echo

######################################################################
# grep

insert_grep () {
LBUFFER+="grep "
}
zle -N insert-grep insert_grep
bindkey "^[g" insert-grep

######################################################################
# mkdir

insert_mkdir () {
LBUFFER+="mkdir -p "
}
zle -N insert-mkdir insert_mkdir
bindkey "^[m" insert-mkdir

######################################################################
# open

insert_open () {
LBUFFER+="open "
}
zle -N insert-open insert_open
bindkey "^[o" insert-open





