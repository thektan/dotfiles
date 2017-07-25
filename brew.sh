#!/usr/bin/env bash

# Install command line tools with Homebrew.

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew install git
brew install coreutils 				# https://en.wikipedia.org/wiki/GNU_Core_Utilities
brew install diff-so-fancy			# https://github.com/so-fancy/diff-so-fancy/
brew install node
brew install ripgrep 				# https://github.com/BurntSushi/ripgrep
brew install ruby
brew install tree					# http://brewformulas.org/Tree
brew install yarn
brew install zplug 					# https://github.com/zplug/zplug
brew install zsh

# Extra tools
brew install shpotify				# https://github.com/hnarayanan/shpotify
brew install wifi-password			# https://github.com/rauchg/wifi-password

# Misc Development
# https://raamdev.com/2008/howto-install-md5sum-sha1sum-on-mac-os-x/
brew install md5sha1sum
