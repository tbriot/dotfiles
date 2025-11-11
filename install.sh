#!/usr/bin/env bash

if [[ -z $STOW_FOLDERS ]]; then
    STOW_FOLDERS="git ssh bash"
fi

stow -D --target ~ $STOW_FOLDERS
stow --target ~ $STOW_FOLDERS
