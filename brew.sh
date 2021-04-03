#!/usr/bin/env bash

# Install command line tools with Homebrew.
#
# Commented out commands are ones I haven't used for awhile so I'll enable as I
# find the need again.

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew install git
brew install gh

# https://en.wikipedia.org/wiki/GNU_Core_Utilities
# Provides `gls` instead of `ls` to list directories first.
# More about it in this link: https://superuser.com/questions/109537/how-to-sort-first-directories-then-files-etc-when-using-ls-in-unix
brew install coreutils     

# https://github.com/so-fancy/diff-so-fancy/
# brew install diff-so-fancy

# Faster alternative to `find`
# https://github.com/sharkdp/fd
brew install fd                                

# Fuzzy finder
# https://github.com/junegunn/fzf
# If re-enabling, remember to uncomment source in .zshrc
# brew install fzf                 

# https://github.com/rgcr/m-cli
# Provides utility macOS commands.
# brew install m-cli

# https://github.com/mpv-player/mpv
# Play videos from command line for audio-only.
# brew install mpv

brew install node

# https://github.com/BurntSushi/ripgrep
brew install ripgrep                

brew install ruby

# https://formulae.brew.sh/formula/tree
# brew install tree   

brew install yarn

# https://github.com/zplug/zplug
brew install zplug       

brew install zsh


### Extra tools ###

# CLI for Spotify
# https://github.com/hnarayanan/shpotify
# brew install shpotify      

# Gets the wifi password
# https://github.com/rauchg/wifi-password
# brew install wifi-password        


###  Misc Development ###

# https://raamdev.com/2008/howto-install-md5sum-sha1sum-on-mac-os-x/
# brew install md5sha1sum           
