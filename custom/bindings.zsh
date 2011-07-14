######################################################################
# bindings
######################################################################

######################################################################
# general
bindkey -me 2>/dev/null      # use emacs bindgs + meta
bindkey '^O/' undo

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
function snippet_sed()
{
    LBUFFER+="sed '"
    RBUFFER="///g' $RBUFFER"
}
zle -N snippet_sed snippet_sed
bindkey "^[OQ" snippet_sed


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