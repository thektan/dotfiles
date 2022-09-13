# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Get export variables
source $HOME/Developer/dotfiles/.exports

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

# For compatability with gnu find and sed.
# Required after running:
# $ brew install findutils
# $ brew install gnu-sed
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# Python PATH
export PATH="$HOME/.pyenv/shims:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
