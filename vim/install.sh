#!/bin/bash

# install vim-plug
echo "Installing vim-plug manager..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing vim plugins..."
vim +PlugUpgrade +qall
vim +PlugInstall +qall
vim +PlugUpdate +qall
vim +PlugClean +qall

