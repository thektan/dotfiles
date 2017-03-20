#!/usr/bin/env bash

export DOTFILES_HOME=${HOME}/.dotfiles

# Create symlinks
ln -s ${DOTFILES_HOME}/.zshrc ~/.zshrc
ln -s ${DOTFILES_HOME}/.editorconfig ~/.editorconfig