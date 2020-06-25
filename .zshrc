osname=`uname`
if [[ "$osname" == 'Darwin' ]]; then
    source /Users/$USER/Configuration/.zshrc-mac
else
    source /home/$USER/Configuration/.zshrc-rhel
fi

