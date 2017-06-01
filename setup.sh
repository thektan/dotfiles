#!/usr/bin/env bash

# Run brew and brew cask
./brew.sh
./brew-cask.sh

# Install global npm packages
npm install -g diff-so-fancy
npm install -g git-open
npm install -g git-recent
npm install -g jack-cli
npm install -g n
npm install -g rebase-editor
npm install -g trash-cli

# Other apps to install
echo "╭───────────────────────────────────────────────────────╮"
echo "│                                                       │"
echo "│    The following will need to be install manually:    │"
echo "│      • https://www.wunderlist.com/download/           │"
echo "│      • https://getpocket.com/                         │"
echo "│      • https://getcaption.co/                         │"
echo "│                                                       │"
echo "╰───────────────────────────────────────────────────────╯"

echo "Opening links..."
open https://www.wunderlist.com/download/
open https://getpocket.com/
open https://getcaption.co/

export DOTFILES_HOME=${HOME}/.dotfiles

# Create symlinks
ln -s ${DOTFILES_HOME}/.zshrc ~/.zshrc
ln -s ${DOTFILES_HOME}/.editorconfig ~/.editorconfig
ln -s ${DOTFILES_HOME}/sublime/Preferences.sublime-settings  ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
ln -s ${DOTFILES_HOME}/sublime/Package\ Control.sublime-settings  ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings