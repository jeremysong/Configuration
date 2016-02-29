uname=`uname`
if [[ "$uname" == 'Darwin' ]]; then
    source /Users/yanson/Configuration/.zshrc-mac
else
    source /Users/yanson/Configuration/.zshrc-rhel
fi
