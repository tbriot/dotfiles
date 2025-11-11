export ZDOTDIR=$HOME/.config/zsh

###############################################################################
##          Load environment variables               
###############################################################################
if [ -f $ZDOTDIR/environment_vars.sh ]; then
  . $ZDOTDIR/environment_vars.sh
fi
