#!/bin/bash

## Configure zsh, vim, and tmux
ln -f -s ./Configuration/.zshrc ~/.zshrc
ln -f -s ./Configuration/.vimrc ~/.vimrc
ln -f -s ./Configuration/.tmux.conf ~/.tmux.conf

brew install fortune cowsay lolcat
brew install apache-spark
brew install stats
brew install nvim
brew install --cask corretto
brew install --cask miniconda
brew install --cask visual-studio-code
brew install --cask jetbrains-toolbox
brew install --cask rectangle
brew install --cask 1password
brew install --cask brave-browser
brew install --cask github
brew install --cask notion
