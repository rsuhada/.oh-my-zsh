# autopair
function autopair1()
{
    LBUFFER+="("
    RBUFFER=")$RBUFFER"
}
zle -N autopair1 autopair1
bindkey "(" autopair1

function autopair2()
{
    LBUFFER+="{"
    RBUFFER="}$RBUFFER"
}
zle -N autopair2 autopair2
bindkey "{" autopair2

function autopair3()
{
    LBUFFER+='['
    RBUFFER=']'$RBUFFER
}
zle -N autopair3 autopair3
bindkey '[' autopair3

function autopair4()
{
    LBUFFER+="\`"
    RBUFFER="\`$RBUFFER"
}
zle -N autopair4 autopair4
bindkey "\`" autopair4

function autopair5()
{
    LBUFFER+="'"
    RBUFFER="'$RBUFFER"
}
zle -N autopair5 autopair5
bindkey "'" autopair5

function autopair6()
{
    LBUFFER+="\""
    RBUFFER="\"$RBUFFER"
}
zle -N autopair6 autopair6
bindkey "\"" autopair6
