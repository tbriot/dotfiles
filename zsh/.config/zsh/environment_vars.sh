######################################################################################
# 			Environment variables
######################################################################################
# XDG Base Directory
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_BIN_HOME=$HOME/.local/bin

export PATH=$XDG_BIN_HOME:$PATH

# Set terminal
export TERMINAL=/usr/local/bin/alacritty

# Add Golang binary to path
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

export GOPATH=~/go
