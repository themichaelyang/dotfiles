#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASEDIR+="/"

HOMEDIR=$HOME/

function link {
    local origin=$BASEDIR$1
    local target=$HOMEDIR$2

    if ! [[ -e "$target" ]]; then
        ln -s $origin $target && echo -e "\033[0;32mADDED:\033[0m $target."
    else
        echo -e "\033[0;31mERROR:\033[0m Target $target already exists"
    fi
}

# Remember, if you want to change the filename of any these,
# update their references in .bashrc, and .gitconfig

echo "Setting up symlinks..."

# Bash!
link shell/bashrc .bashrc
link shell/bash_profile .bash_profile
link shell/bashprompt .bashprompt
link shell/bashprivate .bashprivate

# Input
link shell/inputrc .inputrc
link shell/editrc .editrc

# Vim
link vim/vimrc .vimrc

# Git
link git/gitconfig .gitconfig
link git/gitignore-global .gitignore-global
link git/gitprivate .gitprivate

echo "Sourcing bashrc..."
source ~/.bashrc

echo "Finished creating symlinks."
