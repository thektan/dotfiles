#!/usr/bin/env bash

# Install xcode for command line tools
xcode-select --install

# Run brew and brew cask
./brew.sh
./brew-cask.sh

# Install global npm packages
yarn global add n               # https://github.com/tj/n
yarn global add rebase-editor   # https://github.com/sjurba/rebase-editor

npm install -g check-it-out     # https://github.com/jwu910/check-it-out
npm install -g jack-cli         # https://github.com/drewbrokke/jack
npm install -g tldr             # https://github.com/tldr-pages/tldr

# Git Configs

# Use rebase-editor as default rebase editor.
git config --global sequence.editor rebase-editor

# Set sublime as default git editor.
git config --global core.editor "subl -n -w"

# Other apps to install
echo "╭───────────────────────────────────────────────────────╮"
echo "│                                                       │"
echo "│    Other apps to install manually:                    │"
echo "│      • https://eagle.cool/                            │"
echo "│      • https://www.jetbrains.com/idea/                │"
echo "│                                                       │"
echo "╰───────────────────────────────────────────────────────╯"

export DOTFILES_HOME=${HOME}/Developer/dotfiles

# Create symlinks
ln -s ${DOTFILES_HOME}/.zshrc ~/.zshrc
ln -s ${DOTFILES_HOME}/.editorconfig ~/.editorconfig
ln -s ${DOTFILES_HOME}/karabiner ~/.config/karabiner
ln -s ${DOTFILES_HOME}/sublime/Preferences.sublime-settings  ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
ln -s ${DOTFILES_HOME}/sublime/Package\ Control.sublime-settings  ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
