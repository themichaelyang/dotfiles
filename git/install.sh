#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Use an older version because
# https://apple.stackexchange.com/questions/327817/git-completion-bash-producing-error-on-macos-sierra-10-12-6
LINK="https://raw.githubusercontent.com/git/git/v2.17.1/contrib/completion/git-completion.bash"

# Install Git Tab Completion script
curl $LINK -o $BASEDIR/git-completion
