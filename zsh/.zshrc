# .zshrc
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# set history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt incappendhistory

#######
# Daves antidote settings 

# Load Antidote
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

antidote load

# Set your prompt
autoload -Uz promptinit && promptinit

#######
# sourcing config files from ~/zshrc.d (keep the order)
source ~/zshrc.d/vi_mode.zsh
source ~/zshrc.d/autosuggestions.zsh
source ~/zshrc.d/autosuggestions.zsh
source ~/zshrc.d/alias.zsh

######
# autojump (manually installed, see repos/autojump
[[ -s /home/dave/.autojump/etc/profile.d/autojump.sh ]] && source /home/dave/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

export EDITOR=nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.cargo/env"
