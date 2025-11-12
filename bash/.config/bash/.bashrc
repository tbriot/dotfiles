export BASHCONFIGDIR="~/.config/bash"

################################################################################
#					Aliases 
################################################################################
if [ -f $BASHCONFIGDIR/.bash_aliases ]; then
  . $BASHCONFIGDIR/.bash_aliases
fi

###############################################################################
#				Environment variables 
###############################################################################
if [ -f $BASHCONFIGDIR/.bash_env_vars ]; then
  . $BASHCONFIGDIR/.bash_env_vars
fi

######################################################################################
#					Key bindings 
######################################################################################
if [ -f $BASHCONFIGDIR/key_bindings.sh ]; then
  . $BASHCONFIGDIR/key_bindings.sh
fi

######################################################################################
#					Bash history config 
######################################################################################
if [ -f $BASHCONFIGDIR/history_config.sh ]; then
  . $BASHCONFIGDIR/history_config.sh
fi

######################################################################################
#					SSH agent 
######################################################################################
if [ -f $BASHCONFIGDIR/ssh-agent.sh ]; then
  . $BASHCONFIGDIR/ssh-agent.sh
fi

######################################################################################
#					fzf 
######################################################################################
if [ -f /usr/share/doc/fzf/examples/key-bindings.bash ]; then
  . /usr/share/doc/fzf/examples/key-bindings.bash
fi

######################################################################################
#					Node Version Manager
######################################################################################
[ -s "$NVM_PATH/nvm.sh" ] && \. "$NVM_PATH/nvm.sh"  # This loads nvm
[ -s "$NVM_PATH/bash_completion" ] && \. "$NVM_PATH/bash_completion"  # This loads nvm bash_completion

######################################################################################
#					Kubectl
######################################################################################
# Kubectl autocompletion - alias for 'kubectl' is 'k'
if command -v kubectl &> /dev/null; then
    source <(kubectl completion bash)
    complete -F __start_kubectl k
fi

######################################################################################
#					Pyenv
######################################################################################
if command -v pyenv &> /dev/null; then
    eval "$(pyenv init - bash)"
fi

######################################################################################
#					Starship prompt shell
######################################################################################
if command -v starship &> /dev/null; then
    eval "$(starship init bash)"
fi

######################################################################################
#					Start tmux
######################################################################################
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach || exec tmux new-session
fi