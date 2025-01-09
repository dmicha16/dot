# Personal dotfiles

These are all my personal dotfiles I use for writing mainly python on Ubuntu and macOS.
Whereever possible there are checks for the OS before the configurations try to source anything.

If you find some edge cases, please make a PR, I'll be more than happy to include it.

To deploy my dotfiles, I'm using [gnu stow](https://www.gnu.org/software/stow/), but you can also
use your own tool, or just simply copy-paste these config files into their appropriate folders.

By using `stow` I can choose to install only the configurations I need based on the OS, such as on macOS, there's no `i3wm` (unfortunately).

> **Note**
This is of course a very opiniated setup, somethings you might strongly dislike, take only what you feel like taking!

## Download and Setup
- git clone this repo to `~/`
- stow individual configurations
    - `cd ~/dot`
    - `stow zsh`
    - `stow i3`

## Dependencies

These are software and packages that you need to install before you can use these configurations.

- antidote
    - macos: `brew install antidote`
    - linux: `git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-$HOME}/.antidote`

### List of tools

### Editing
- [nvim](https://github.com/neovim/neovim)

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
- [lazygit](https://github.com/jesseduffield/lazygit)

### windows manager
- [i3wm](https://i3wm.org/)
- [i3status](https://i3wm.org/docs/i3status.html)

## Adding a new .config configurations to this repo

```
cd ~/dot
mkdir i3/.config/i3
mv config i3/.config/i3
stow i3
```


## Removing a stow

`stow -D`

## installing a nerdfont

*coming soon*

