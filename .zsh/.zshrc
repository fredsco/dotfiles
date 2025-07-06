### ZSH HOME
export ZSH=$HOME/.zsh

### ---- history config -------------------------------------

# How many commands zsh will load to memory.
export HISTSIZE=10000

# How many commands history will save on file.
export SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

eval "$(/opt/homebrew/bin/brew shellenv)"

### ---- PLUGINS & THEMES -----------------------------------



### ---- ALIASES -----------------------------------
alias ls='ls --color'


### ----  -----------------------------------


