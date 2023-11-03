######################################################################################
# 			Zsh theme = Powerlevel 10k
######################################################################################
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.8.1
source ~/zsh-plugins/powerlevel10k/powerlevel10k.zsh-theme

######################################################################################
# 				Powerlevel10k Zsh theme 
######################################################################################
if [ -f $XDG_CONFIG_HOME/p10k/.p10k.zsh ]; then
  . $XDG_CONFIG_HOME/p10k/.p10k.zsh 
fi

######################################################################################
# 				Key bindings 
######################################################################################
if [ -f $ZDOTDIR/key_bindings.sh ]; then
  . $ZDOTDIR/key_bindings.sh
fi

######################################################################################
# 				Zsh history config 
######################################################################################
if [ -f $ZDOTDIR/history_config.sh ]; then
  . $ZDOTDIR/history_config.sh
fi

######################################################################################
# 				Aliases 
######################################################################################
if [ -f $ZDOTDIR/aliases.sh ]; then
  . $ZDOTDIR/aliases.sh
fi

######################################################################################
# 			   SSH agent 
######################################################################################
if [ -f $ZDOTDIR/ssh-agent.sh ]; then
  . $ZDOTDIR/ssh-agent.sh
fi

######################################################################################
# 		    Zsh autosuggestions 
######################################################################################
if [ -f ~/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  . ~/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

######################################################################################
# 		    fzf 
######################################################################################
if [ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]; then
  . /usr/share/doc/fzf/examples/key-bindings.zsh
fi

if [ -f /usr/share/doc/fzf/examples/completion.zsh ]; then
  . /usr/share/doc/fzf/examples/completion.zsh
fi

