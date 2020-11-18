osname=`uname`
arch=`uname -p`
if [[ "$osname" == 'Darwin' ]]; then
    if [[ "$arch" == 'arm' ]]; then
        source /Users/$USER/Configuration/.zshrc-mac-arm
    else
        source /Users/$USER/Configuration/.zshrc-mac
    fi
else
    source /home/$USER/Configuration/.zshrc-rhel
fi

