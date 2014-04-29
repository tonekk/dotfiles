#!/bin/zsh

source $HOME/etc/liquidprompt/liquidprompt

# Adding extra ~/.bin to path
export PATH="~/.bin:$PATH"

# Aliases
alias g="git"
alias v="vim"
alias t="tmux"
alias z="zeus"
alias compress="tar cvzf"
alias connect="ssh finn@178.79.137.198"

# Common typos
alias cd..="cd .."
alias gist="git st"

export PATH="$HOME/.rbenv/shims:$PATH"

# vim <3
EDITOR="vim"

# chruby
source /usr/local/share/chruby/chruby.sh
chruby ruby-2.0.0

# git completion
source $HOME/etc/git-completion.bash
