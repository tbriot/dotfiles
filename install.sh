#!/bin/bash

set -e

# backup directory
BKP_DIR=~/.bkp_dotfiles

LIGHT_MAGENTA="\e[95m"
ENDCOLOR="\e[0m"

# Change to user HOME directory
cd

# backup existing dotfiles
echo -e "${LIGHT_MAGENTA}Backup existing dotfiles in ${BKP_DIR}${ENDCOLOR}"
mkdir -p $BKP_DIR

if [[ -e  .bash* ]]
then
        cp .bash* $BKP_DIR
fi

if [[ -e  .git* ]]
then
        cp .git* $BKP_DIR
fi

if [[ -e  .tmux.conf ]]
then
        cp .tmux* $BKP_DIR
fi

# download dotfiles from github repo
echo -e "${LIGHT_MAGENTA}Download dotfiles from tbriot github repo...${ENDCOLOR}"
wget -O - "https://github.com/tbriot/dotfiles/archive/main.tar.gz" 2> /dev/null | tar xz
cp ./dotfiles-main/.bash* ./dotfiles-main/.git* ./dotfiles-main/.tmux* .
rm -r ./dotfiles-main

echo -e "${LIGHT_MAGENTA}Dotfiles installed successfully !${ENDCOLOR}"
