#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew install gh
brew install fd # https://github.com/sharkdp/fd
brew install fzf # https://github.com/junegunn/fzf
brew install node
brew install ripgrep # https://github.com/BurntSushi/ripgrep
brew install yarn
brew install zplug # https://github.com/zplug/zplug
brew install zsh

# Provides `gls` instead of `ls` to list directories first.
# More about it in this link: https://superuser.com/questions/109537/how-to-sort-first-directories-then-files-etc-when-using-ls-in-unix
brew install coreutils

# GNU find and sed, put ahead of the macOS versions on $PATH in .zshrc.
# .liferay relies on GNU sed (`sed -i` with no backup suffix, `\U`).
brew install findutils
brew install gnu-sed