# .zshrc
#
#zmodload zsh/zprof

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
# nice names for antidote plugin dirs
zstyle ':antidote:bundle' use-friendly-names 'yes'

# Set your prompt
autoload -Uz promptinit && promptinit

#######
# sourcing config files from ~/zshrc.d (keep the order)
source ~/zshrc.d/vi_mode.zsh
source ~/zshrc.d/autosuggestions.zsh
source ~/zshrc.d/alias.zsh
source ~/zshrc.d/bindings.zsh

######
# autojump (manually installed, see repos/autojump
[[ -s /home/dave/.autojump/etc/profile.d/autojump.sh ]] && source /home/dave/.autojump/etc/profile.d/autojump.sh

######
# Load and initialize the completion system
autoload -Uz compinit

# Check if .zcompdump exists and is older than 24 hours
if [[ -f ~/.zcompdump && -n "$(find ~/.zcompdump -mmin +1440)" ]]; then
  # Regenerate the dump file every 24 hours
  compinit
else
  # Use existing dump file to speed up startup
  compinit -C
fi

# set default editor to nvim
export EDITOR=nvim

######
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  --no-use # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.cargo/env"

#zprof
