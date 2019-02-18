# My Configuration Files

Feel free to make suggestions on any improvements or functions/plugins I should add/remove in my system!

## Screenshots of my environment

**iTerm**

![Screenshot of terminal](/assets/terminal.png)

**VS Code**

![Screenshot of terminal](/assets/vscode.png)

## Setup

1. Install [Homebrew](https://brew.sh/)

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

1. Point iTerm2 preferences file to `$HOME/.dotfiles/iterm/`.

1. Run `setup.sh` to install node packages, gems, and create symlinks to dotfiles. See [setup.sh](https://github.com/thektan/dotfiles/blob/master/setup.sh) for full details on commands called.

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

1. System Preferences > Keyboard > Shortcuts > App Shortcuts > All Applications
2. Add "Paste and Match Style" for `⌘V`

### Improve vscode editor colors

These are my tweaked colors to match Atom's One Dark with the git colors. I have the following in the vscode `settings.json`.

```json
"workbench.colorCustomizations": {
    "editorGutter.addedBackground": "#348f68",
    "activityBar.background": "#282c34",
    "editorGutter.deletedBackground": "#ac4243",
    "gitDecoration.ignoredResourceForeground": "#646572",
    "editorGutter.modifiedBackground": "#a59167",
    "diffEditor.insertedTextBackground": "#2d4d3f",
    "diffEditor.removedTextBackground": "#4d3232",
    "editorOverviewRuler.addedForeground": "#348f68",
    "editorOverviewRuler.deletedForeground": "#ac4243",
    "editorOverviewRuler.modifiedForeground": "#a59167",
    "sideBar.foreground": "#a0a5b1"
}
```

## Notes

- Create an `.extras` file in the root directory of this repo for any aliases/functions unique to the current workspace. This file is ignored from git.

## Resources

Places I've referenced while creating my dotfiles.

- https://github.com/mathiasbynens/dotfiles
- https://github.com/paulirish/dotfiles
- https://github.com/holman/dotfiles
