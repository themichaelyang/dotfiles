#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Updating mac defaults..."
./${DIR}/mac.sh

# Actually brew *upgrade* will update packages/formulae
# Whereas brew *update* will update brew itself
echo "Updating homebrew and packages..."
brew bundle
brew upgrade
brew update
