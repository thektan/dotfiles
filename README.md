# My Bash Aliases, Functions, and Settings

Feel free to make suggestions on any improvements or functions/plugins I should add/remove in my system!

## Setup

1. Install Homebrew (https://brew.sh/)

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

2. Point iTerm2 preferences file to `$HOME/.dotfiles/iterm/`.

3. Run `setup.sh` to install node packages, gems, and create symlinks to dotfiles. See [setup.sh](https://github.com/thektan/dotfiles/blob/master/setup.sh) for full details on commands called.

```bash
. ./setup.sh
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

## Other Improvements

### Improve pasting in MacOS

![Paste and Match Style](/assets/paste-screenshot.png)

1.  System Preferences > Keyboard > Shortcuts > App Shortcuts > All Applications
2.  Add "Paste and Match Style" for `⌘V`

## Resources

Places I've referenced while creating my dotfiles.

-   https://github.com/mathiasbynens/dotfiles
-   https://github.com/paulirish/dotfiles
-   https://github.com/holman/dotfiles
