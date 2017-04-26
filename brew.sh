#!/usr/bin/env bash

# Install command line tools with Homebrew.

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew install git
brew install diff-so-fancy
brew install node
brew install the_silver_searcher
brew install tree
brew install zplug # https://github.com/zplug/zplug
brew install zsh

# Extra tools
brew install shpotify
brew install wifi-password

# Misc Development
# https://raamdev.com/2008/howto-install-md5sum-sha1sum-on-mac-os-x/
brew install md5sha1sum