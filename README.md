# dotfiles

Here are some dotfiles for your vim, bash, git, and mac.

To start, set up symlinks:

```
$ chmod +x link.sh
$ ./link.sh
```

Want to reset your dotfiles? This script will remove all symlinked dotfiles (".*") in your home directory:
```
$ chmod +x unlink.sh
$ ./unlink.sh
```

Add your own private dotfiles in:
`git/gitprivate` and `shell/bashprivate`. These are included and gitignored by default!
