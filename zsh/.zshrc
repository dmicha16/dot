# ======================================================
#                     Dave's zshrc                     
# ======================================================

#zmodload zsh/zprof

# set history
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt incappendhistory
setopt HIST_IGNORE_ALL_DUPS # Ignore duplicate commands
setopt HIST_FIND_NO_DUPS    # Avoid duplicates in reverse search
setopt HIST_REDUCE_BLANKS   # Remove unnecessary blanks from commands

#######
# Daves antidote settings

# Load Antidote
if [[ "$(uname)" == "Darwin" ]]; then
    # macOS path
    antidote_path="/opt/homebrew/opt/antidote/share/antidote/antidote.zsh"
else
    # Linux path (assuming installed via package manager)
    antidote_path="$HOME/.antidote/antidote.zsh"
fi

# Source antidote if it exists
if [[ -f $antidote_path ]]; then
    source $antidote_path
    antidote load || echo "Warning: Antidote failed to load plugins"
else
    echo "Warning: antidote not found at $antidote_path"
fi


# nice names for antidote plugin dirs
zstyle ':antidote:bundle' use-friendly-names 'yes'

# Set your prompt
autoload -Uz promptinit && promptinit

#######
# sourcing config files from $HOME/zshrc.d (keep the order)
source $HOME/zshrc.d/vi_mode.zsh
source $HOME/zshrc.d/autosuggestions.zsh
source $HOME/zshrc.d/alias.zsh
source $HOME/zshrc.d/bindings.zsh
source $HOME/zshrc.d/fzf.zsh
source $HOME/zshrc.d/journal.zsh

######
# autojump (manually installed, see repos/autojump
[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh

######
# Load and initialize the completion system
autoload -Uz compinit

# Regenerate the dump file if older than 24 hours
if [[ -f $HOME/.zcompdump && "$(find $HOME/.zcompdump -mmin +1440)" ]]; then
    compinit
else
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
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    eval "$(ssh-agent -s)" > /dev/null
fi
ssh-add $HOME/.ssh/id_rsa > /dev/null 2>&1

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
