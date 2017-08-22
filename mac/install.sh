#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing homebrew and mac defaults..."
./${DIR}/brew.sh
./${DIR}/mac.sh

echo "Installing homebrew apps and packages..."
brew bundle

echo "Starting f.lux and spectacle..."
open -a spectacle
open -a flux
