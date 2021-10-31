#!/bin/bash

## BASH_SOURCE contains the (potentially relative) path of the containing script in all invocation scenarios
## dirname returns the directory for the provided path (i.e. /foo/bar/baz -> /foo/bar)
## pwd -P prints the working directory with symlinks resolved
## assuming this script is inside 
script_root=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
dotfile_root=$( dirname "$script_root" )

echo -n "Symlinking zsh and bash assets . . . "

## TODO handle existing directories/symlinks
ln -s ${dotfile_root}/bash ${HOME}/.bash
ln -s ${dotfile_root}/zsh ${HOME}/.zsh
ln -s ${dotfile_root}/zsh/.zshrc $HOME/.zshrc

echo "done!"

echo "dotfile installation complete"
