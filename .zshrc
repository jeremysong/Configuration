osname=`uname`
username=`id -un`
if [[ "$osname" == 'Darwin' ]]; then
    # Fix this after Homebrew officially supports ARM-based Mac
    if [[ "$username" == 'yanson' ]]; then
        source /Users/$USER/Configuration/.zshrc-mac-work
    else
        source /Users/$USER/Configuration/.zshrc-mac-home
    fi
else
    source /home/$USER/Configuration/.zshrc-rhel
fi

