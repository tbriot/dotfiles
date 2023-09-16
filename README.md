# tbriot dotfiles
Dotfiles and set-up scripts

## Zsh installation

    sudo apt install zsh

Verify installation

    zsh --version

Make zsh the default shell

    chsh -s $(which zsh) 

Log out and log in again

## Powerlevel10k  (Zsh theme)
See https://github.com/romkatv/powerlevel10k

## VIM
- install latest vim version with package manager
- install vim-plug: https://github.com/junegunn/vim-plug
- copy .vimrc file
- launch vim, run :PlugInstall command

## ssh config file
Copy ssh/config to your .ssh directory

## Tmux
- Install TMUX Plugin Manager : https://github.com/tmux-plugins/tpm.
- Install Tmux Resurrect plugin to save sessions between system restart : https://github.com/tmux-plugins/tmux-resurrect.
- Inatall tmux-continuum plugin : https://github.com/tmux-plugins/tmux-continuum. Enable automatic sessions restore. TODO : find a way to start tmux server on system start.
