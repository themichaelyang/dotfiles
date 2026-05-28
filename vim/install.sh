#!/bin/bash

# install vim-plug
# echo "Installing vim-plug manager..."
# cp ~/dotfiles/vim/plugins/vim-plug/plug.vim ~/.vim/autoload/plug.vim

echo "Installing vim plugins..."
vim +PlugUpgrade +qall
vim +PlugInstall +qall
vim +PlugUpdate +qall
vim +PlugClean +qall

