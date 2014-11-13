#!/bin/zsh

# Needed on some systems
export LANG=en_US.UTF-8 
# Adding extra stuff to path
export PATH=$HOME/.bin:$HOME/bin:/usr/local/bin:$PATH

# Aliases
alias v="vim"
alias t="tmux"
alias compress="tar cvzf"
alias connect="ssh finn@178.79.137.198"

alias vimtoday="vim $(ruby -e 'print "#{Time.now.strftime("%Y-%m-%d")}.md"')"

# Common typos
alias cd..="cd .."
alias gist="git st"

# vim <3
export EDITOR="vim"

# zsh history not enabled by default
export HISTFILE="/Users/finn/.zsh_history"
export SAVEHIST=999
export HISTSIZE=999
setopt APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY

# For some reason reverse-i-search
# does not work by default
bindkey '^R' history-incremental-search-backward

# chruby
source /usr/local/share/chruby/chruby.sh
chruby ruby-2.0.0

# git completion
source $HOME/etc/git-completion.bash

# z - jump around
. $HOME/etc/z/z.sh

#############
# OH MY ZSH #
#############
ZSH_THEME="bira"
DISABLE_AUTO_UPDATE="true"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git)

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
