# dotfiles
Just scripts and dotfiles to setup macOs and install stuff.

## Setup

All scripts can be executed on their own.


| Guide           | Description                                               |
|-----------------|-----------------------------------------------------------|
| setup.sh        | Initial setup, runs all scripts.                          |
| symlinks.sh     | Creates symlinks for all dotfiles                         |
| brew.sh         | Installs Homebrew and stnadrad packages                   |
| brew-bask.sh    | Installs native apps via Homebrew                         |
| npm.sh          | Installs global NPM packages                              |
| atom.sh         | Configs and installs packages for Atom                    |
| composer.sh     | Installs Composer and global packages                     |
| macos.sh        | Setup sensible macOS defaults                             |

To run all just do:

```
bash setup.sh
```

## Override stuff
If `~/.extra` exists, it will be sourced along with the other files.   
This is useful for adding git username and git email configurations.

If you add `~/.extra` just `source .bash_profile` again to have it load it.

*Example:*

```
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="Jamie"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="jamie.telin@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

### Extra

#### brew.sh

To be able to use Bash 4 that we install via Brew you need to:

**Add the new shell to the list of allowed shells**
```
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
```
**Change to the new shell**
```
chsh -s /usr/local/bin/bash
```

*More info can be found at http://clubmate.fi/upgrade-to-bash-4-in-mac-os-x/*

### atom.sh

Easy way to update atom packages.list file;
```
ls ~/.atom/packages/ > packages.list
```


## Credz

Shamelessly stolen and edited from:

- https://github.com/paulirish/dotfiles
- https://github.com/mathiasbynens/dotfiles
- and perhaps some more...

## Fin

You are free to use this at your own risk. Copy, fork, do whatever you want.   
But I do recommend reading though the files so you know what is done.
