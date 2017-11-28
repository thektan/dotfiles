#!/usr/bin/env bash

# Run brew and brew cask
./brew.sh
./brew-cask.sh

# Install global npm packages
yarn global add git-open        # https://github.com/paulirish/git-open
yarn global add git-recent      # https://github.com/paulirish/git-recent
yarn global add jack-cli        # https://github.com/drewbrokke/jack
yarn global add n               # https://github.com/tj/n
yarn global add npm-check       # https://github.com/dylang/npm-check
yarn global add trash-cli       # https://github.com/sindresorhus/trash-cli
yarn global add rebase-editor   # https://github.com/sjurba/rebase-editor
yarn global add tldr            # https://github.com/tldr-pages/tldr
yarn global add stacks-cli      # https://github.com/WeiChiaChang/stacks-cli

git config --global sequence.editor rebase-editor
git config --global core.editor "subl -n -w"

# Ruby
gem install travis -v 1.8.8 --no-rdoc --no-ri   # https://github.com/travis-ci/travis.rb#installation
gem install t                                   # https://github.com/sferik/t

# Install xcode for command line tools
xcode-select --install

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
ln -s ${DOTFILES_HOME}/karabiner ~/.config/karabiner
ln -s ${DOTFILES_HOME}/sublime/Preferences.sublime-settings  ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
ln -s ${DOTFILES_HOME}/sublime/Package\ Control.sublime-settings  ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings