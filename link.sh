#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASEDIR+="/"

HOMEDIR=$HOME/

function link {
    local origin=$BASEDIR$1
    local target=$HOMEDIR$2

    if ! [[ -f "$origin" ]]; then
      echo -e "\033[0;31mERROR:\033[0m Origin $origin does not exist."; return;
    fi

    if ! [[ -e "$target" ]]; then
      mkdir -p $(dirname "$target")
        ln -s $origin $target && echo -e "\033[0;32mADDED:\033[0m $target."
    else
        echo -e "\033[0;33mWARNING:\033[0m Target $target already exists."
    fi
}

# Remember, if you want to change the filename of any these,
# update their references in .bashrc, and .gitconfig

echo "Setting up symlinks..."

# Bash!
link shell/bashrc .bashrc
link shell/profile .profile
link shell/bash_profile .bash_profile
link shell/bashprompt .bashprompt
link shell/bashprivate .bashprivate

# Input
link shell/inputrc .inputrc
link shell/editrc .editrc

# Tmux + Direnv
link shell/tmux.conf .tmux.conf
link shell/direnvrc .direnvrc

# Vim
link vim/vimrc .vimrc

# Git
link git/gitconfig .gitconfig
link git/gitignore-global .gitignore-global
link git/gitprivate .gitprivate
link git/git-completion .git-completion

# Jupyter
link notebook/custom.css .jupyter/custom/custom.css
link notebook/jupyter_notebook_config.py .jupyter/jupyter_notebook_config.py

echo "Finished. Don't forget to restart your terminal or source ~/.bashrc!"
