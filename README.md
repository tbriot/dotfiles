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

## ssh config file
Copy ssh/config to your .ssh directory

## Tmux
- Install TMUX Plugin Manager : https://github.com/tmux-plugins/tpm.
- Install Tmux Resurrect plugin to save sessions between system restart : https://github.com/tmux-plugins/tmux-resurrect.
