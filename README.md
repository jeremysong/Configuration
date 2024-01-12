## Useful Links for Configuring New Machine
* [iTerm2](https://www.iterm2.com/)
* [Oh my zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Powerline Theme](https://github.com/Powerlevel9k/powerlevel9k/wiki/Install-Instructions#option-2-install-for-oh-my-zsh)
* [Powerline Fonts](https://github.com/powerline/fonts): Cloning the git repo and building it directly should be sufficient. [Reference](https://github.com/powerline/fonts#quick-installation)
* [Homebrew](http://brew.sh/)
* [Vundle](https://github.com/VundleVim/Vundle.vim)

## Configure Zsh and Vim
* `ln -s ./Configuration/.zshrc .zshrc`
* `ln -s ./Configuration/.vimrc .vimrc`
* `ln -s ./Configuration/.tmux.conf .tmux.conf`

## Installation

### Amazon JDK
Download Amazon JDK [here](https://docs.aws.amazon.com/corretto/latest/corretto-8-ug/downloads-list.html).

Or Homebrew `brew install --cask corretto`.

### Miniconda
Download Miniconda [here](https://docs.conda.io/en/main/miniconda.html#installing).

Or Homebrew: `brew install --cask miniconda`

### SSH without Password
1. Generate a new key with `ssh-keygen`
1. Copy the public key to remote-host `ssh-copy-id -i ~/.ssh/id_rsa.pub remote-host`

### Other
* `brew install fortune cowsay lolcat`
* `brew install --cask visual-studio-code`
* `brew install --cask jetbrains-toolbox`
* `brew install --cask rectangle`
