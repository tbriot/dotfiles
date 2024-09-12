######################################################################################
# 			Environment variables
######################################################################################
# XDG Base Directory
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_BIN_HOME=$HOME/.local/bin

# Set terminal
export TERMINAL=/usr/local/bin/alacritty

# Git's text editor
export EDITOR='nvim'

######################################################################################
# 			PATH
######################################################################################
# Neovim
path=(/opt/nvim/bin $path)

# NVM (Node Version Manager)
path=($HOME/.config/nvm $path)

# Cargo (Rust package manager)
path=($HOME/.cargo/bin $path)

# Golang
path=(/usr/local/go/bin $path)
path=(~/go/bin $path)

path=(~/.local/scripts $path)
path=($XDG_BIN_HOME $path)
path=(~/bin $path)

export PATH

export GOPATH=~/go
