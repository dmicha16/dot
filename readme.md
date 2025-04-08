# Personal dotfiles

These are all my personal dotfiles I use for writing mainly python on Ubuntu and macOS.
Whereever possible there are checks for the OS before the configurations try to source anything.

If you find some edge cases, please make a PR, I'll be more than happy to include it.

To deploy my dotfiles, I'm using [gnu stow](https://www.gnu.org/software/stow/), but you can also
use your own tool, or just simply copy-paste these config files into their appropriate folders.

By using `stow` I can choose to install only the configurations I need based on the OS, such as on macOS there's no `i3wm` (unfortunately).

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
- nerdfonts

## List of tools

### Coding
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


## Usage

## Adding a new .config configurations to this repo

```
cd ~/dot
mkdir i3/.config/i3
mv config i3/.config/i3
stow i3
```


## Removing a stow

`stow -D`

## Outstanding issues as of 2025-04-08

### i3wm
- automatise `tlp` for power management on thinkpads (in i3wm that is not included by default)
- fix some of the broken elements in i3status

### neovim
- enable all LSP functions of Ruff in neovim
- fix project management
- spell check LSP
- LSP for lua

### zsh
- clean up own theme
- fix coloring (some elements in the shell don't take the right color in right prompt)
- better keyboard shortcuts in tmux

