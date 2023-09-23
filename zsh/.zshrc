######################################################################################
# 			Load environment variables				 
######################################################################################
if [ -f $ZDOTDIR/environment_vars.sh ]; then
  . $ZDOTDIR/environment_vars.sh
fi

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
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

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
