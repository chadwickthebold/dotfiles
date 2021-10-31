dotfiles
=============================

What's Included
-----------------------------

* bash
  - .bash_profile
* vim
  - .vimrc
* zsh
  - .zshrc

Usage
-----------------------------

To use these dotfiles either checkout this project and symlink the files 
to their appropriate locations or download the individual files to the correct
location.

### MacOS

#### zsh

1. Symlink bash and zsh dirs to your home folder
```
$ ln -s ~/Documents/dev/chadwickthebold/dotfiles/bash ~/.bash
$ ln -s ~/Documents/dev/chadwickthebold/dotfiles/zsh ~/.zsh
```
2. Symlink the `.zshrc` file to the home dir
```
$ ln -s ~/Documents/dev/chadwickthebold/dotfiles/zsh/.zshrc ~/.zshrc
```

#### vim

1. Symlink `.vimrc` to the home dir
```
$ ln -s ~/Documents/dev/chadwickthebold/dotfiles/vim ~/.vimrc
```
2. Copy the `vim_colors/badwolf.vim to ~/.vim/colors
```
$ cp ~/Documents/dev/chadwickthebold/dotfiles/vim/vim_colors/badwolf.vim ~/.vim/colors
```

### Linux

????

