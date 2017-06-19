osname=`uname`
if [[ "$osname" == 'Darwin' ]]; then
    source /Users/yanson/Configuration/.zshrc-mac
else
    source /home/yanson/Configuration/.zshrc-rhel
fi

PATH="/Users/yanson/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/yanson/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/yanson/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/yanson/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/yanson/perl5"; export PERL_MM_OPT;
