# dotfiles

Here are some dotfiles for your vim, bash, git, and mac.

To start, set up symlinks:

```
$ ./link.sh
```

Want to reset your dotfiles? This script will remove all symlinked dotfiles (".*") in your home directory:
```
$ ./unlink.sh
```

Add your own private dotfiles in:
`git/gitprivate` and `shell/bashprivate`. These are included and gitignored by default!
