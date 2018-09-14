#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing homebrew and mac defaults..."
. ${DIR}/brew.sh
. ${DIR}/mac.sh

echo "Installing homebrew apps and packages..."
brew bundle
# Install basictex from file (homebrew doesn't provide an easily pipeable pkg output, hence the mess")
# open $(brew cask info basictex | sed -n 3p | cut -d " " -f1)/$(brew cask info basictex | sed -n 8p | cut -d " " -f1)

echo "Starting f.lux and spectacle..."
open -a spectacle
open -a flux
