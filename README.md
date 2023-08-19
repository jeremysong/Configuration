## Useful Links for Configuring New Machine
* [iTerm2](https://www.iterm2.com/)
* [Oh my zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Powerline Theme](https://github.com/Powerlevel9k/powerlevel9k/wiki/Install-Instructions#option-2-install-for-oh-my-zsh)
* [Powerline Fonts](https://github.com/powerline/fonts): Cloning the git repo and building it directly should be sufficient. [Reference](https://github.com/powerline/fonts#quick-installation)
* [Homebrew](http://brew.sh/)

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

### Multipass with SSH
1. Install Multipass: `brew install --cask multipass`.
1. Create new SSH key.
    ```
    ssh-keygen -C ubuntu -f multipass-ssh-key
    ```
1. Replace `ssh_authorized_keys` with public key in `cloud-init.yaml` file.
1. Launch new multipass instance.
    ```
    multipass launch -n ubuntu-ssh --cloud-init cloud-init.yaml
    ```
1. Update `~/.ssh/config` file.
    ```
    Host <IP Address>
    HostName <IP Address>
    User ubuntu
    IdentityFile <Path of private SSH key>
    ```

### Other
`brew install fortune cowsay lolcat`