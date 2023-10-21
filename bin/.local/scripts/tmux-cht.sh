#!/usr/bin/env zsh
selected=`cat $XDG_CONFIG_HOME/tmux/tmux-cht-languages $XDG_CONFIG_HOME/tmux/tmux-cht-commands | fzf`
if [[ -z $selected ]]; then
    exit 0
fi

read "query?Enter Query: "

if grep -qs "$selected" $XDG_CONFIG_HOME/tmux/tmux-cht-languages; then
    query=`echo $query | tr ' ' '+'`
    tmux neww zsh -c "curl -s cht.sh/$selected/$query | less -R"
else
    tmux neww zsh -c "curl -s cht.sh/$selected~$query | less -R"
fi
