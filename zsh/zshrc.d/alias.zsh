# Daves aliases

#######
# source company (private aliases)
source "${0:A:h}"/company_aliases.zsh

#######
# exa
alias ll="exa --long --header"
alias lla="exa --long --all"
alias ls="exa"
alias tree="exa --tree --all --level=2 --long --ignore-glob='*.git'"
alias tree3="exa --tree --all --level=3 --long --ignore-glob='*.git'"

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
alias gds="echo 'GIT STAGED \n' && git diff --staged"

#######
# misc

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
alias clear_proton="sudo nmcli connection delete pvpn-ipv6leak-protection" 
alias pt="cd repos/pt/tt_pt_sw" 

#######
# autojump
alias stats="autojump -s"

#######
# conf inside .dotfiles repo
DOTFILES="~/dot"

# open .zshrc with neovim
alias zconf="${EDITOR:-nvim} $DOTFILES/zsh/.zshrc"
alias aliasconf="${EDITOR:-nvim} $DOTFILES/zsh/zshrc.d/alias.zsh"

# open i3 configs with i3
alias i3conf="${EDITOR:-nvim} $DOTFILES/i3/.config/i3/config"
alias i3bconf="${EDITOR:-nvim} $DOTFILES/i3status/.config/i3status/config"

# neovim conf
alias vimconf="${EDITOR:-nvim} $DOTFILES/nvim/.config/nvim/init.lua"

# open tmux conf
alias tmuxconf="${EDITOR:-nvim} ~/.tmux.conf"

# list above confs
alias conf="alias | grep 'conf' | sed 's/alias //g' | bat -l bash"
