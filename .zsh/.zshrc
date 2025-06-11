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


### ---- PLUGINS & THEMES -----------------------------------
source $ZSH/themes/agnoster-zsh-theme/agnoster.zsh-theme
source $HOMEBREW_PREFIX/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

#Enables parameter expansion in the prompt otherwise git info is not displayed
setopt prompt_subst

### ---- ALIASES -----------------------------------
alias ls='ls --color'


### ----  -----------------------------------
# Added by LM Studio CLI (lms)
export PATH="$PATH:$HOME/.lmstudio/bin"

# Android
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export ANDROID_HOME=~/Library/Android/sdk
export PATH="$HOME/.bin:$PATH"
export PATH="~/Library/Android/sdk/platform-tools":$PATH

# Pico
export PICO_SDK_PATH=$HOME/pico/sdk/2.1.1
