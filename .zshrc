osname=`uname`
arch=`uname -p`
if [[ "$osname" == 'Darwin' ]]; then
    # Fix this after Homebrew officially supports ARM-based Mac
    if [[ "$arch" == 'arm' ]]; then
        source /Users/$USER/Configuration/.zshrc-mac-arm
    else
        source /Users/$USER/Configuration/.zshrc-mac
    fi
else
    source /home/$USER/Configuration/.zshrc-rhel
fi


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/yanson/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/yanson/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/yanson/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/yanson/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

