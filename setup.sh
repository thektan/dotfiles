#!/usr/bin/env bash

export DOTFILES_HOME=${HOME}/.dotfiles

# Create symlinks
ln -s ${DOTFILES_HOME}/.zshrc ~/.zshrc
ln -s ${DOTFILES_HOME}/.editorconfig ~/.editorconfig
ln -s ${DOTFILES_HOME}/sublime/Preferences.sublime-settings  ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
ln -s ${DOTFILES_HOME}/sublime/Package\ Control.sublime-settings  ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings