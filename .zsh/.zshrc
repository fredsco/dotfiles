### ZSH HOME
export ZSH=$HOME/dotfiles/.zsh

### ---- history config -------------------------------------

# How many commands zsh will load to memory.
export HISTSIZE=10000

# How many commands history will save on file.
export SAVEHIST=10000

HISTFILE=~/.zsh_history

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS


### ---- PLUGINS & THEMES -----------------------------------
source $ZSH/themes/agnoster-zsh-theme/agnoster.zsh-theme
autoload -U compinit promptinit

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh




#Enables parameter expansion in the prompt otherwise git info is not displayed
setopt prompt_subst

### ---- ALIASES -----------------------------------
alias ls='ls --color'


### ----  -----------------------------------

export PICO_SDK_PATH=~/pico/pico-sdk
export PICO_EXTRAS_PATH=~/pico/pico-extras
