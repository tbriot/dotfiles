##############################################################################
# 			Bash history configuration
##############################################################################
HISTSIZE=5000               # How many lines of history to keep in memory
HISTFILE=$XDG_CACHE_HOME/bash/.bash_history     # Where to save history to disk
SAVEHIST=5000               # Number of history entries to save to disk

# Bash history options (equivalent to Zsh setopt)
shopt -s histappend         # Append history to the history file (no overwriting)
shopt -s cmdhist            # Save multi-line commands as single history entry
shopt -s lithist            # Save multi-line commands with newlines

# History control
export HISTCONTROL=ignorespace:erasedups     # Ignore commands starting with space, erase duplicates

# Share history across terminals
export PROMPT_COMMAND='history -a; history -c; history -r'
