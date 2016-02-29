osname=`uname`
if [[ "$osname" == 'Darwin' ]]; then
    source /Users/yanson/Configuration/.zshrc-mac
else
    source /home/yanson/Configuration/.zshrc-rhel
fi
