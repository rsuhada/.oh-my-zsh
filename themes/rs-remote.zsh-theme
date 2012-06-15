# my minimal prompt
# autoload -U colors && colors
# PS1="%{$fg[green]%}%~> %{$reset_color%}% "

local rspath="%{$fg[green]%}%~> %{$reset_color%}% "
# local user_host="%{$fg[red]%}%m%{$reset_color%}% "
local user_host="%{$fg[red]%}d1%{$reset_color%}% "
PROMPT="${user_host}:${rspath}"
