# Options
setopt auto_cd
setopt autopushd
setopt pushdminus
setopt extended_glob
setopt prompt_subst

# Export vars
export ZDOTDIR=~
export EDITOR=nvim
export VISUAL=nvim
export KEYTIMEOUT=1

# Autoload
autoload -U colors && colors
autoload -U zmv

# Base aliases
alias l='ls -lh --time-style="+%Y-%m-%d %H:%M" --color=auto'
alias ll='ls -lhF --all --time-style="+%Y-%m-%d %H:%M" --color=auto'
alias ls='ls --color=auto'
# alias grep='grep --extended-regexp --color=auto --line-number'

# Local rcs
if [[ -f $HOME/.zshenv.$USER ]] ; then source $HOME/.zshenv.$USER ; fi
if [[ -f $HOME/.zshenv.$HOST ]] ; then source $HOME/.zshenv.$HOST ; fi
if [[ -f $HOME/.zshenv.local ]] ; then source $HOME/.zshenv.local ; fi
