osname=`uname`
if [[ "$osname" == 'Darwin' ]]; then
    source /Users/$USER/Configuration/.zshrc-mac
else
    source /home/$USER/Configuration/.zshrc-rhel
fi

PATH="/Users/$USER/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/$USER/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/$USER/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/$USER/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/$USER/perl5"; export PERL_MM_OPT;

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/yanson/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/yanson/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/yanson/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/yanson/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

