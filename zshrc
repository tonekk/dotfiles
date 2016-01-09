#!/bin/zsh

# Needed on some systems
export LANG=en_US.UTF-8 
# Adding extra stuff to path
export PATH=$HOME/.bin:$HOME/bin:/usr/local/bin:$PATH

# Aliases
alias v="vim"
alias t="tmux"
alias r="rake"

alias rt="bin/spring rake"
rtt () { bin/spring rake test TEST="$@" }

# zeus workaround for https://github.com/burke/zeus/issues/469
zet () { ARGS=$@; zeus test $@; ZE_EC=$?; stty sane; if [ $ZE_EC = 2 ]; then zet $ARGS; fi }
zer () { zeus rake; ZE_EC=$?; stty sane; if [ $ZE_EC = 2 ]; then zeus rake; fi }

alias pg="postgres -D /usr/local/var/postgres"
alias compress="tar cvzf"
alias connect="ssh finn@178.79.137.198"

alias zserver="foreman run rails s -p 5000"

alias vimtoday="vim $(ruby -e 'print "#{Time.now.strftime("%Y-%m-%d")}.md"')"

alias ssh-jovoto="ssh -i ~/.ssh/jovoto fheemeyer@54.220.77.180"
alias ssh-jovoto-blog="ssh -i ~/.ssh/jovoto fheemeyer@54.73.204.199"

alias zconf="vim ~/etc/zshrc"
alias reload="source ~/etc/zshrc"
alias vimconf="vim ~/etc/vim/vimrc"

alias p="postgres -D /usr/local/var/postgres"

# Common typos
alias cd..="cd .."
alias gist="git st ."

# vim <3
export EDITOR="vim"

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

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

# git completion
source $HOME/etc/git-completion.bash

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
ZSH_THEME="bira"
DISABLE_AUTO_UPDATE="true"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git)

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# switch to newest chruby if chruby installed
command -v chruby >/dev/null && \
  chruby $(chruby | tail -n 1 | awk '{print $NF}')
