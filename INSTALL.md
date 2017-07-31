# New Installation Steps

### Brew

1. Install Command Line Tools
`xcode-select --install`

2. Install Brew
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### Shell

1. Install brew packages
`brew install zsh`
`brew install tmux`
`brew install zsh-syntax-highlighting`
`brew install reattach-to-user-namespace`

2. Instal oh-my-zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

3. Install powerline [Meslo Slashed](https://github.com/powerline/fonts/tree/master/Meslo%20Slashed) fonts

4. Copy **.zshrc**, **.zsh-alias** and **.zsh-export** into home directory

5. In OS X Terminal, import **Solarized Dark Yosemite.terminal** file

6. Set *Meslo LG M Regular for Powerline 14 pt.* as default font to show custom icons

7. Set cursor to *Block*

8. In *Window* uncheck all *Title* options to have a cleaner title bar

9. In *Shell* set *When the shell exits* to *Close if the shell exited cleanly* to exit shell on esc

10. In *Advanced* uncheck *Allow VT100 application keypad mode* to avoid pressing numlock on start

11. Uncheck *Audible bell* and *Visual Bell* to prevent error visual/sound

12. In top menu, uncheck *Edit* > *Marks* > *Automatically Mark Prompt Lines* to remove brackets in command line

### Git

1. Install latestgit package and diff-so-fancy
`brew install git`
`brew install diff-so-fancy`

2. Copy *.gitconfig* into home directory and replace name/e-mail

### Mac OS Tweaks

1. Display full path on top bar (Finder)
`defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder`
