# ··· dotfiles ···

Here are some dotfiles for your bash, git, vim, tmux, and mac.

## Features
- neat bash prompt
- pretty nice vim setup (`jk` as `esc`, vim-plug, lightline)
- swell tmux keybindings (`ctrl+space` as prefix, shared clipboard w/ vim and macOS)
- great aliases (`down` to git root, `back` to last dir, `list` to list all files, `rm` disabled by default)
- awesome git setup (smart global gitignore, git completion, git aliases: `git pushme` to push current branch)
- slick Brewfile and script for easy mac setup
- rad install and symlink scripts for hassle free install
- cool custom jupyter notebook theme
- everything is commented and cleanly written (go wild)
- no powerline or zsh nonsense (runs everywhere)
- and much much more (what are you waiting for)

## Installation

```
$ cd ~
$ git clone https://github.com/themichaelyang/dotfiles
```


To start, set up symlinks:

```
$ cd ~/dotfiles
$ ./link.sh
```

Want to reset your dotfiles? This script will remove all symlinked dotfiles (".*") in your home directory:
```
$ ./unlink.sh
```

Add your own private dotfiles in:
`git/gitprivate` and `shell/bashprivate`. These are included and gitignored by default!
