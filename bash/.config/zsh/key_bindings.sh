######################################################################################
# 			key bindings
######################################################################################
# bind zsh to standard Emacs bindings
set -o emacs

bindkey ";5C" forward-word
bindkey ";5D" backward-word

# ctrl+f launches fzf search on favorite directories + opens a tmux session
bindkey -s ^f "tmux-sessionizer.sh\n"
