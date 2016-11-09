# This small script defines shell aliases for the Gordian Knot tools.
# Each alias name starts with the "gk-" prefix to avoid collisions.
#
# The aliases call brazil-bootstrap, which means that some package caching will
# occur the first time one of the aliases is called. It should be much faster
# after that. Using brazil-bootstrap has the big advantage that it keeps the GK
# tools up to date without manual user action.
#
# Usage: source the script from your shell.
#   - With zsh: add "source /path/to/create-gk-aliases.sh" to your .zshrc
#   - With bash: add "source /path/to/create-gk-aliases.sh" to your .profile
#   - Interactively (one time use): run "source /path/to/create-gk-aliases.sh"
#     directly from your current shell
# The changes will take effect after reloading your shell config (e.g. by
# starting a new shell).
#
# The tools themselves are installed in /tmp/GK by default, but you can change
# that by setting GK_INSTALL_DIR to another location before sourcing the
# script.
# Recommendations:
#   - A folder outside /tmp is better to avoid losing the files after every
#     reboot (they will get re-created, but it's still annoying).
#   - On Mac, you might want to choose a folder located on a case-sensitive
#     volume.

# Set the default installation directory
if [ -z "$GK_INSTALL_DIR" ]; then
    GK_INSTALL_DIR=/tmp/GK
fi

# Run the installation script from the installation directory if available.
# This is for forwards-compatibility, e.g. in case the __gk_launcher function
# changes later on, or if more aliases are needed.
if [ -f "$GK_INSTALL_DIR/install/create-gk-aliases.sh" ]; then
    # Avoid infinite sourcing
    if [ -z "$GK_ALIASES_SOURCED" ]; then
        export GK_ALIASES_SOURCED=1
        source "$GK_INSTALL_DIR/install/create-gk-aliases.sh"
        unset GK_ALIASES_SOURCED
        return
    fi
fi

# List of aliases to create
GK_TOOLS=" \
    gk-analyze-guidance \
    gk-analyze-all \
    gk-analyze-package \
    gk-analyze-inconsistencies \
    gk-explain \
    gk-fix-mv-conflicts \
    "

# Function executed by each alias
__gk_launcher() {
    install_dir=$1
    tool=$2
    shift
    shift
    echo "Starting Gordian Knot self-update..."
    # Make sure the environment is up to date
    echo $(brazil-bootstrap --package GordianKnot-1.0 --vs GordianKnot/release --environmentRoot $install_dir) >/dev/null \
        && echo "Gordian Knot is up to date" \
        && $install_dir/bin/$tool "$@"
}

# Create aliases
for tool in $(echo $GK_TOOLS); do
    alias $tool="__gk_launcher $GK_INSTALL_DIR $tool"
done

# Highlighting with gk-highlight is not supported when bootstrapping for the
# first time.
alias gk-highlight="if [ -x '$GK_INSTALL_DIR/bin/gk-highlight' 2>/dev/null ]; then '$GK_INSTALL_DIR/bin/gk-highlight'; else cat; fi"

# Cleanup
unset GK_TOOLS
