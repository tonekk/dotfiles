#!/bin/bash

# My prompt (keeping things minimal)
export PS1="\w: "

# On e.g. ubuntu, remap casplock
if hash xmodmap 2>/dev/null; then
  xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
fi

# Run rbenv
if hash xmodmap 2>/dev/null; then
  eval "$(rbenv init -)" 
fi
