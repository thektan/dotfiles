#!/usr/bin/env bash

# Install command line tools with Homebrew.

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew install git
brew install coreutils              # https://en.wikipedia.org/wiki/GNU_Core_Utilities
                                    # Provides `gls` instead of `ls` to list directories first.
                                    # More about it in this link: https://superuser.com/questions/109537/how-to-sort-first-directories-then-files-etc-when-using-ls-in-unix
brew install diff-so-fancy          # https://github.com/so-fancy/diff-so-fancy/
brew install fd                     # https://github.com/sharkdp/fd
                                    # Faster alternative to `find`
brew install fzf                    # https://github.com/junegunn/fzf
                                    # Fuzzy finder
brew install m-cli                  # https://github.com/rgcr/m-cli
                                    # Provides utility macOS commands.
brew install mpv                    # https://github.com/mpv-player/mpv
                                    # Play videos from command line for audio-only.
brew install node
brew install ripgrep                # https://github.com/BurntSushi/ripgrep
brew install ruby
brew install tree                   # http://brewformulas.org/Tree
brew install yarn
brew install zplug                  # https://github.com/zplug/zplug
brew install zsh

# Extra tools
brew install shpotify               # https://github.com/hnarayanan/shpotify
                                    # CLI for Spotify
brew install wifi-password          # https://github.com/rauchg/wifi-password
                                    # Gets the wifi password

# Misc Development
# brew install md5sha1sum           # https://raamdev.com/2008/howto-install-md5sum-sha1sum-on-mac-os-x/
