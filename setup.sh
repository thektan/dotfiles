#!/usr/bin/env bash

export DOTFILES_HOME=${HOME}/.dotfiles

# Create symlinks
ln -sf ${DOTFILES_HOME}/zsh/.zshrc ~/.zshrc
ln -sf ${DOTFILES_HOME}/.editorconfig ~/.editorconfig