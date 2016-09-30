# My Bash Aliases, Functions, and Settings

It's a work in progress. Feel free to make suggestions on any improvements or functions/plugins I should add/remove in my system!

# Setup

No cool script yet to get it all setup so we'll need to do the following.

**Create a symlink of .zshrc in the home directory.**

```
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
```

**Point iTerm2 perferences file to `$HOME/.dotfiles/iterm/`**

**Create a symlink of Preferences.sublime-settings for Sublime Text 3.**

```
ln -s ~/.dotfiles/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
```

**Create symlink for editorconfig file**

```
ln -s ~/.dotfiles/.editorconfig ~
```