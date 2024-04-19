# Personal dotfiles

I'm using [gnu stow](https://www.gnu.org/software/stow/)


## List of tools

- tmux
- zsh
    - antidote plugin loader
- i3wm
- i3status
- nvim
- autojump
- vscode (for now)
- obsidian

## Adding .config configurations to this repo

```
mkdir i3/.config/i3
mv config i3/.config/i3
stow i3
```


## Removing a stow

`stow -D`


### Dependencies

#### tmux

[snazzy theme](https://github.com/ivnvxd/tmux-snazzy)


#### zsh

```
sudo apt install zsh -y
```

## other tools I use

- autojump
- xfc4-terminal


## dir and config file structure

- ~/repos
- ~/notes
- ~/scripts


