# Daves aliases

#######
# exa
alias ll="exa --long --header"
alias lla="exa --long --all"
alias ls="exa"
alias tree="exa --tree --level=2 --long"

#######
# batcat
alias catb="bat"
alias catl="bat --paging=never"

#######
# rm
alias rm="rm -i"

#######
# movement
alias cl="clear"
alias -- -="cd -"
alias ..="cd .."
alias vim=nvim

#######
# git
alias gd="git diff"
alias gl="git log --oneline --decorate --graph"
alias gas="git add . && git status"
alias do_daily="cd ~/notes/Turf\ Tank/ && gas && git commit -m 'files' && cd-"

#######
# misc
alias naut="nautilus --no-desktop"

#######
# alias to dump aliases
alias aliasd="bat ~/zshrc.d/alias.zsh"

#######
# sourcing the shell
alias src="source ~/.zshrc"
alias ns="src"

#######
# tmux
alias tls="tmux ls"
alias ta="tmux a"
alias tka="tmux kill-server"

#######
# aliases made with the scripts/create_alias.sh
alias create_alias="~/scripts/create_alias.sh"
alias ca="create_alias"
alias prodt="cd repos/tt_robot/common/src/tt_prod_test_server" 
alias ttest="cd repos/tt_test_sw/" 
alias clear_proton="sudo nmcli connection delete pvpn-ipv6leak-protection" 
alias pt="cd repos/pt/tt_pt_sw" 

#######
# autojump
alias stats="autojump -s"

#######
# conf inside .dotfiles repo
DOTFILES="~/.dotfiles"
DOTFILES="~/.config"

# open .zshrc with neovim
alias zconf="vim ~/.zshrc"
alias aliasconf='${EDITOR:-nvim} "${ZDOTDIR:-$HOME}"/zshrc.d/alias.zsh'

# open i3 configs with i3
alias i3conf="${EDITOR:-nvim} $DOTFILES/i3/config"
alias i3bconf="${EDITOR:-nvim} $DOTFILES/i3status/config"

# neovim conf
alias vimconf='${EDITOR:-nvim} "${I3DIR:-$HOME}"/.config/nvim/init.lua'

# open tmux conf
alias tmuxconf="${EDITOR:-nvim} ~/.tmux.conf"

# list above confs
alias conf="alias | grep 'conf' | sed 's/alias //g' | bat -l bash"
