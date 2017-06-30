# zsh settings
setopt AUTO_CD

# zplug setup
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Plugins
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "rupa/z", use:z.sh, from:github
zplug "paulirish/git-open", as:command
zplug "paulirish/git-recent", as:command
zplug "mafredri/zsh-async", from:github # required for pure theme
zplug "zsh-users/zsh-autosuggestions"

# Theme
# @source https://github.com/sindresorhus/pure
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

# Shell theme customizations
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

PURE_PROMPT_SYMBOL=➜

# Source files
export DOTFILES=$HOME/.dotfiles

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