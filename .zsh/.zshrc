


# -------
# HISTORY
# -------
export HISTFILE=~/.zsh_history
export HISTSIZE=5000000
export SAVEHIST=$HISTSIZE

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt SHARE_HISTORY             # Share history between all sessions.
# -------
# END HISTORY
# -------

export EDITOR='vim'

# -------
# ZSH PROMPT
# -------
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
# -------
# END ZSH PROMPT
# -------


# -------
# Aliases
# -------
alias l="ls --color" 
alias ll="ls -al --color" 
alias o="open ."

# -------
# 
# -------
source  ~/.zsh-plugins/fsh/fast-syntax-highlighting.plugin.zsh



# -------
# 
# -------
export PICO_SDK_PATH=~/pico/pico-sdk
export PICO_EXTRAS_PATH=~/pico/pico-extras


