#!/bin/bash

# My prompt (keeping things minimal)
export PS1="\w: "

# Aliases
alias g="git"
alias v="vim"
alias t="tmux"
alias z="zeus"

# On e.g. ubuntu, remap casplock
if hash xmodmap 2>/dev/null; then
  xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
fi

# Run rbenv
if hash xmodmap 2>/dev/null; then
  eval "$(rbenv init -)" 
fi
