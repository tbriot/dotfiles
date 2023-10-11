#!/usr/bin/env zsh


if [[ -z $STOW_FOLDERS ]]; then
    STOW_FOLDERS="alacritty,git,i3,nvim,p10k,tmux,zsh"
fi

if [[ -z $DOTFILES ]]; then
    DOTFILES=$HOME/.dotfiles
fi

cd $DOTFILES
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    echo "stow $folder"
    stow -D $folder
    stow $folder
done
cd -
