#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASEDIR+="/"

HOMEDIR=$HOME/

function link {
    origin=$BASEDIR$1
    target=$HOMEDIR$2    

    if ! [[ -e "$target" ]]; then
	      ln -s $origin $target && echo -e "\033[0;32mADDED:\033[0m $target."
    else 
        echo -e "\033[0;31mERROR:\033[0m Target $target already exists"
    fi 
}

# Bash!
link shell/bashrc .bashrc
link shell/bash_profile .bash_profile

# Input
link shell/inputrc .inputrc
link shell/editrc .editrc

# Vim
link vim/vimrc .vimrc


