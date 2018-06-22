#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install Git Tab Completion script
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o $BASEDIR/git-completion
