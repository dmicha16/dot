# Personal dotfiles

I'm using [gnu stow](https://www.gnu.org/software/stow/)


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


