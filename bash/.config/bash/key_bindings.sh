######################################################################################
# 			key bindings
######################################################################################
# Enable Emacs-style keybindings for terminal navigation (Ctrl+A, Ctrl+E, ...)
set -o emacs

# Bash key bindings for word navigation
bind '"\e[1;5C": forward-word'             # Ctrl+Right Arrow: move cursor forward one word
bind '"\e[1;5D": backward-word'            # Ctrl+Left Arrow: move cursor backward one word

# Delete the word before the cursor
bind '"\C-h": backward-delete-word'

# Alternative escape sequences for different terminals
bind '"\e[5C": forward-word'               # Ctrl+Right Arrow (alternative)
bind '"\e[5D": backward-word'              # Ctrl+Left Arrow (alternative)

# ctrl+f launches fzf search on favorite directories + opens a tmux session
bind '"\C-f": "tmux-sessionizer.sh\n"'     # Ctrl+F: execute tmux-sessionizer.sh script