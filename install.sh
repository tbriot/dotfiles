#!/usr/bin/env bash
cp .zshenv $HOME
cp -R ./alacritty ./git ./p10k ./tmux ./zsh $XDG_CONFIG_HOME 
cp -R ./i3/i3 ./i3/i3status $XDG_CONFIG_HOME 
