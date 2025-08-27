# History options {{{
setopt incappendhistory 
setopt sharehistory
setopt extendedhistory
setopt histignoredups
HISTSIZE=SAVEHIST=999999
# }}}
# Vi mode {{{
bindkey -v
# edit cmd line in vi mode with v
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
# vim backspace doesn't stop at the point where you started insert mode
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char
bindkey '^W' backward-kill-word
# bindkey -M vicmd '^[h' run-help
bindkey -M viins '^[h' run-help
# }}}
# Extra bindings {{{
# position info
bindkey '^G' what-cursor-position
bindkey '^R' history-incremental-search-backward
# bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward
bindkey ' ' magic-space
# }}}
# Alt String Bindings {{{
# bindkey -s '^[p' 'popd\n' # Alt-P - popd
# }}}
# PS1 {{{
if [[ $UID = 0 ]] ; then NCOLOR='red' ; else NCOLOR='green' ; fi
PS1="%{$fg[$NCOLOR]%}%B%n%b%{$reset_color%} at %{$fg[yellow]%}%B%m%b%{$reset_color%} in %{$fg[blue]%}%B%.%b%{$reset_color%}
%{$fg[white]%}:%{$reset_color%} "
# }}}
# User dircolors rc {{{
if [[ -f $HOME/.dircolors ]] ; then eval $(dircolors -b $HOME/.dircolors) ; fi
# }}}
# Local rc {{{
if [[ -f ~/.zshrc.$USER ]] ; then source ~/.zshrc.$USER ; fi
if [[ -f ~/.zshrc.$HOST ]] ; then source ~/.zshrc.$HOST ; fi
if [[ -f ~/.zshrc.local ]] ; then source ~/.zshrc.local ; fi
# }}}
# Disable Ctrl+s, Ctrl+q {{{
stty -ixon -ixoff
# }}}
