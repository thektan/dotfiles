# My Bash Aliases, Functions, and Settings

It's a work in progress. Feel free to make suggestions on any improvements or functions/plugins I should add/remove in my system!

## Setup

No cool script yet to get it all setup so we'll need to do the following.

Install Homebrew (https://brew.sh/)

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Point iTerm2 preferences file to `$HOME/.dotfiles/iterm/`.

Run `setup.sh`

```bash
. ./setup.sh
```

## Notes

### Backup and Install Atom Packages

```bash
# Generates and saves a list of installed atom packages.
# @source https://github.com/holman/dotfiles/blob/master/bin/atom-package-backup
apm list --installed --bare > ~/.dotfiles/atom/packages.txt
```

```bash
# Installs the atom packages backed up.
# @source https://github.com/holman/dotfiles/blob/master/bin/atom-package-install
apm install --packages-file ~/.dotfiles/atom/packages.txt
```

### Make sure macOS is using the zsh installed by brew. (Copied from [this StackOverflow article](https://stackoverflow.com/questions/17648621/how-do-i-update-zsh-to-the-latest-version).)

```bash
# check the zsh info
brew info zsh

# install zsh
brew install --without-etcdir zsh

# add shell path
sudo vim /etc/shells

# add the following line into the end of the file(/etc/shells)
/usr/local/bin/zsh

# change default shell
chsh -s /usr/local/bin/zsh
```

### Improve pasting in MacOS

![Paste and Match Style](/assets/paste-screenshot.png)

1.  System Preferences > Keyboard > Shortcuts > App Shortcuts > All Applications
2.  Add "Paste and Match Style" for `⌘V`

## Resources

Places I've referenced while creating my dotfiles.

-   https://github.com/mathiasbynens/dotfiles
-   https://github.com/paulirish/dotfiles
-   https://github.com/holman/dotfiles
