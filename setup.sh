#!/usr/bin/env bash

# Get export variables
source .exports

# Run brew and brew cask
./brew.sh
./brew-cask.sh

# Install global npm packages
yarn global add rebase-editor   # https://github.com/sjurba/rebase-editor

# Git Configs

# Use rebase-editor as default rebase editor.
git config --global sequence.editor rebase-editor

# Set Visual Studio Code as default git editor.
git config --global core.editor "code --wait"

# Other apps to install
echo "╭───────────────────────────────────────────────────────╮"
echo "│                                                       │"
echo "│    Other apps to install manually:                    │"
echo "│      • https://eagle.cool/                            │"
echo "│                                                       │"
echo "╰───────────────────────────────────────────────────────╯"

# Create symlinks
ln -s ${DOTFILES}/.zshrc ~/.zshrc
ln -s ${DOTFILES}/.editorconfig ~/.editorconfig
ln -s ${DOTFILES}/karabiner ~/.config/karabiner
