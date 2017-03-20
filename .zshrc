# zsh settings
setopt AUTO_CD

# zplug setup
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Plugins
zplug "plugins/git", from:oh-my-zsh
zplug "rupa/z", use:z.sh, from:github
zplug "mafredri/zsh-async", from:github # required for pure theme
zplug "zsh-users/zsh-autosuggestions"

# Theme
# @source https://github.com/sindresorhus/pure
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

export DOTFILES=$HOME/.dotfiles

# Source files
source $DOTFILES/.aliases
source $DOTFILES/.functions

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Source plugins and add commands to $PATH
zplug load