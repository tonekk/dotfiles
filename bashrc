#!/bin/bash

export PS1="\w: "

xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
eval "$(rbenv init -)"
