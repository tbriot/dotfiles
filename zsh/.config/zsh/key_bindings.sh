######################################################################################
# 			key bindings
######################################################################################
bindkey ";5C" forward-word
bindkey ";5D" backward-word

# ctrl+f launches fzf search on favorite directories + opens a tmux session
bindkey -s ^f "tmux-sessionizer\n"
