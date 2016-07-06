#!/bin/zsh

# Needed on some systems
export LANG=en_US.UTF-8 
# Adding extra stuff to path
export PATH=$HOME/.bin:$HOME/bin:/usr/local/bin:$PATH
export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Aliases
alias v="vim"
alias t="tmux"
alias pg="postgres -D /usr/local/var/postgres"

alias vimtoday="vim $(ruby -e 'print "#{Time.now.strftime("%Y-%m-%d")}.md"')"

alias zconf="vim ~/etc/zshrc"
alias reload="source ~/etc/zshrc"
alias vimconf="vim ~/etc/vim/vimrc"

alias enc='openssl enc -aes-256-cbc -in "$@"'
alias dec='openssl enc -d -aes-256-cbc -in "$@"'

# Common typos
alias cd..="cd .."
alias gist="git st ."
alias noprompt="export PS1='$ ' && clear"

# vim <3
export EDITOR="vim"

# zsh history not enabled by default
export HISTFILE="/Users/finn/.zsh_history"
export SAVEHIST=999
export HISTSIZE=999
setopt APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY

export DISABLE_AUTO_TITLE=true

# For some reason reverse-i-search
# does not work by default
bindkey '^R' history-incremental-search-backward

# z - jump around
. $HOME/etc/z/z.sh

# super useful: many cd steps in one
function up() {
  i=$1
  while [ $i -gt 0 ]
  do
     cd ..
     i=$(($i - 1))
  done
}

# Golang
export GOPATH=$HOME/etc/go
export PATH=$GOPATH/bin:$PATH

#############
# OH MY ZSH #
#############
ZSH_CUSTOM="$HOME/etc/zsh"
ZSH_THEME="bullet-train"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(k git brew tmux npm bundler capistrano zsh-syntax-highlighting)

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# switch to newest chruby if chruby installed
CHRUBY_FILE=/usr/local/opt/chruby/share/chruby/chruby.sh
CHRUBY_AUTO_FILE=/usr/local/opt/chruby/share/chruby/auto.sh
if [ -f $CHRUBY_FILE ]; then
  source $CHRUBY_FILE && source $CHRUBY_AUTO_FILE && \
  chruby $(chruby | tail -n 1 | awk '{print $NF}')
fi
