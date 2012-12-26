ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
export GREP_COLOR='1;4'        # good colors: 30 31 34 35 36, special:
                               # 7 4, standard bash: 32

# LS_COLORS="or=01;90:di=01;90"
# export LS_COLORS

# TERM=xterm-256color


# fixes the problem with tmux backspace when ss into linux
case ${TERM} in
  screen-256color) TERM=screen.xterm-xfree86
  ;;
esac


# fast cd
eval "$(fasd --init auto)"

# mega history
function precmd() {
    if [ "$(id -u)" -ne 0 ]; then
        FULL_CMD_LOG="$HOME/.zshhist/zsh-history-$(date "+%Y-%m-%d").log"
        echo "`pwd` [$(date)] `\history -1`" >> ${FULL_CMD_LOG}
    fi
}
