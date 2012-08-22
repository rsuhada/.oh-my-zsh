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
