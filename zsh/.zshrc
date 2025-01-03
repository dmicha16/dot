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
if [[ "$(uname)" == "Darwin" ]]; then
    # macOS path
    antidote_path="/opt/homebrew/opt/antidote/share/antidote/antidote.zsh"
else
    # Linux path (assuming installed via package manager)
    antidote_path="/usr/share/zsh-antidote/antidote.zsh"
    source ${ZDOTDIR:-~}/.antidote/antidote.zsh
fi

# Source antidote if it exists
if [[ -f $antidote_path ]]; then
    source $antidote_path
    antidote load
else
    echo "Warning: antidote not found at $antidote_path"
fi


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
source ~/zshrc.d/fzf.zsh
source ~/zshrc.d/journal.zsh

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


######
# start ssh-agent and add ssh configurations to avoid repeated passphrase prompsts in single session
eval "$(ssh-agent -s)" > /dev/null 2>&1
ssh-add ~/.ssh/id_rsa > /dev/null 2>&1
#zprof

# Source cargo if it exists
# (this is mostly for work-envs on linux)
if [[ -f "$HOME/.cargo/env" ]]; then
    source "$HOME/.cargo/env"
fi

# Initialize pyenv if it exists
if command -v pyenv &> /dev/null; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi
