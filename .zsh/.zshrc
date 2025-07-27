export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

# -------
# Aliases
# -------
alias l="ls" 
alias ll="ls -al" 
alias o="open ." 


# -------
# 
# -------
export PICO_SDK_PATH=~/pico/pico-sdk
export PICO_EXTRAS_PATH=~/pico/pico-extras
