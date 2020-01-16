# zsh settings
setopt AUTO_CD

# Enable menu-style completion.
zstyle ':completion:*' menu select

# zplug setup
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Plugins
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "rupa/z", use:z.sh, from:github
zplug "sindresorhus/trash-cli", as:command
zplug "paulirish/git-open", as:command
zplug "paulirish/git-recent", as:command
zplug "mafredri/zsh-async", from:github # required for pure theme
zplug "zsh-users/zsh-autosuggestions"

# Theme
# @source https://github.com/sindresorhus/pure
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
PURE_GIT_DELAY_DIRTY_CHECK=0

# Shell theme customizations
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

PURE_PROMPT_SYMBOL=➜

# Source files
export DOTFILES=$HOME/.dotfiles
export DOTFILES_LOGS_PATH=$DOTFILES/logs

[ -f $DOTFILES/.fzf.zsh ] && source $DOTFILES/.fzf.zsh

[ -f $DOTFILES/.aliases ] && source $DOTFILES/.aliases
[ -f $DOTFILES/.functions ] && source $DOTFILES/.functions
[ -f $DOTFILES/.liferay ] && source $DOTFILES/.liferay
[ -f $DOTFILES/.extras ] && source $DOTFILES/.extras

# Link dircolors for ls color highlighting
eval $(gdircolors $DOTFILES/.dircolors)

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi


# Source plugins and add commands to $PATH
zplug load

# Misc path bindings
export PATH="$HOME/.yarn/bin:$PATH"
export BAT_CONFIG_PATH="$DOTFILES/bat/bat.conf"

# Ruby PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Add br command to launch Broot
# https://dystroy.org/broot/documentation/usage/#launch-broot
source /Users/ktan/Library/Preferences/org.dystroy.broot/launcher/bash/br
