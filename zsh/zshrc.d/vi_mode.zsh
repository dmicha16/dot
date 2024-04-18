# Always starting with insert mode for each command line
ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
ZVM_INSERT_MODE_CURSOR=$ZVM_BLINKING_BLOCK

# Append a command directly
# this has to be done because ZVM overrides all other shortcuts
# see https://github.com/jeffreytse/zsh-vi-mode?tab=readme-ov-file#execute-extra-commands
zvm_after_init_commands+=('source ~/zshrc.d/autosuggestions.zsh')
