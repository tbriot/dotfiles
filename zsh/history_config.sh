##############################################################################
# 			Zsh history configuration
##############################################################################
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=$XDG_CACHE_HOME/zsh/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
#HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed
setopt    hist_ignore_space #Remove command lines from the history list when the first character on the line is a space
