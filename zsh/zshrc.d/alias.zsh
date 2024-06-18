# Daves aliases

#######
# source company (private aliases)
source "${0:A:h}"/company_aliases.zsh

#######
# eza
alias ll="eza --long --header"
alias lla="eza --long --all"
alias ls="eza"
alias tree="eza --tree --all --level=2 --long --ignore-glob='*.git'"
alias tree3="eza --tree --all --level=3 --long --ignore-glob='*.git'"

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
alias gdf="git diff | diff-so-fancy"

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
alias zconf="cd $DOTFILES && ${EDITOR:-nvim} $DOTFILES/zsh/.zshrc"
alias aliasconf="cd $DOTFILES && ${EDITOR:-nvim} $DOTFILES/zsh/zshrc.d/alias.zsh"

# open i3 configs with i3
alias i3conf="cd $DOTFILES && ${EDITOR:-nvim} $DOTFILES/i3/.config/i3/config"
alias i3bconf="cd $DOTFILES && ${EDITOR:-nvim} $DOTFILES/i3status/.config/i3status/config"

# neovim conf
alias vimconf="cd $DOTFILES && ${EDITOR:-nvim} $DOTFILES/nvim/.config/nvim/init.lua"

# ssh conf
alias sshconf="${EDITOR:-nvim} ~/.ssh/config"

# open tmux conf
alias tmuxconf="${EDITOR:-nvim} ~/.tmux.conf"

# list above confs
alias conf="alias | grep 'conf' | sed 's/alias //g' | bat -l bash"


#
alias lzd="lazydocker"
