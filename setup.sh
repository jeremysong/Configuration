#!/bin/bash

## Configure zsh, vim, and tmux
ln -s ./Configuration/.zshrc ~/.zshrc
ln -s ./Configuration/.vimrc ~/.vimrc
ln -s ./Configuration/.tmux.conf ~/.tmux.conf

brew install fortune cowsay lolcat
