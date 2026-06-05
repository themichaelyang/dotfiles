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
# and unlink the originals

echo "Setting up symlinks..."

# Shared between bash and zsh
link shell/aliases .aliases

# Bash!
link shell/bashrc .bashrc
link shell/profile .profile
link shell/bash_profile .bash_profile
link shell/bashprompt .bashprompt
link shell/bashprivate .bashprivate

# Zsh
link shell/zshrc .zshrc
link shell/zshprompt .zshprompt

# Fish
link fish/config.fish .config/fish/config.fish

# Input
link shell/inputrc .inputrc
link shell/editrc .editrc

# Tmux + Direnv
link shell/tmux.conf .tmux.conf

# Vim
link vim/vimrc .vimrc
link vim/init.vim .config/nvim/init.vim
# Fix for https://github.com/vim/vim/issues/11937
link vim/sh.vim .vim/syntax/sh.vim
link vim/plugins/vim-plug/plug.vim .vim/autoload/plug.vim

# Helix
link helix/config.toml .config/helix/config.toml
link helix/languages.toml .config/helix/languages.toml

# Mise, may need to `mise trust`
link mise/config.toml .config/mise/config.toml

# Git
link git/gitconfig .gitconfig
link git/gitignore-global .gitignore-global
link git/gitprivate .gitprivate
link git/git-completion .git-completion

# Jupyter
link notebook/custom.css .jupyter/custom/custom.css
link notebook/custom.js .jupyter/custom/custom.js
link notebook/jupyter_notebook_config.py .jupyter/jupyter_notebook_config.py

echo "Finished. Don't forget to exec <your-shell> or source ~/.bashrc!"
