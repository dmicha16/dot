# Personal dotfiles

These are all my personal dotfiles I use for writing mainly python on Ubuntu.

To manage my dotfiles, I'm using [gnu stow](https://www.gnu.org/software/stow/).


## List of tools

### Editing
- [nvim](https://github.com/neovim/neovim)
- Occasionally vscode

### Terminal

- [tmux](https://github.com/tmux/tmux)
- [zsh](https://en.wikipedia.org/wiki/Z_shell)
    - [antidote](https://github.com/mattmc3/antidote) plugin loader
    - fish autosuggest
    - my own theme
    -
- [autojump](https://github.com/wting/autojump)
- [eza](https://github.com/eza-community/eza)
- [fd](https://github.com/sharkdp/fd)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fzf](https://github.com/junegunn/fzf)

### UI
- [i3wm](https://i3wm.org/)
- [i3status](https://i3wm.org/docs/i3status.html)

### Notes
- [obsidian.md](https://obsidian.md/)

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

```
sudo apt install zsh -y
```

## dir and config file structure

- ~/repos
- ~/notes
- ~/scripts

