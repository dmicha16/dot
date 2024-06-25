# Personal dotfiles

These are all my personal dotfiles I use for writing mainly python on Ubuntu.

To manage my dotfiles, I'm using [gnu stow](https://www.gnu.org/software/stow/).


## List of tools

### Editing
- nvim
- Occasionally vscode

### Terminal

- tmux
- zsh
    - antidote plugin loader
    - fish autosuggest
    - my own theme
    -
- autojump
- eza
- fd
- ripgrep
- fzf

### UI
- i3wm
- i3status

### Notes
- obsidian

## Adding .config configurations to this repo

```
cd ~/dot
mkdir i3/.config/i3
mv config i3/.config/i3
stow i3
```


## Removing a stow

`stow -D`

## installing a nerdfont

### Dependencies

- feh

#### tmux

[snazzy theme](https://github.com/ivnvxd/tmux-snazzy)


#### zsh

- could fork the theme and change the colors + fix the clock
- then antidote could just download my own fork of the theme
- make the update to the awesomezsh as well

```
sudo apt install zsh -y
```

## dir and config file structure

- ~/repos
- ~/notes
- ~/scripts

