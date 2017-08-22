#!/bin/bash

echo "WARNING: This script will delete all symlinked dotfiles in ~."
read -p "Proceed? (y/n): " yn
case $yn in
    [Yy]* ) echo "Deleting: " \
	    && find $HOME -maxdepth 1 \( -type l -and -name ".*" \) -print -delete \
            && echo "Finished deleting.";;
    * ) echo "Cancelled.";;
esac
