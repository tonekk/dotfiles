my dotfiles
===========

[![License](http://img.shields.io/:license-mit-blue.svg)](http://tonekk.mit-license.org)


## Installation

To setup everything in `~/etc`, execute the following command:

```sh
source <(curl -sL http://bit.ly/tonekk-dotfiles-script)
```

### Post-install

Apart from the things that gets installed with the command above, we will need to get some additional stuff:
* [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts) as the terminal font
* [rbenv](https://github.com/rbenv/rbenv) with [ruby-install](https://github.com/postmodern/ruby-install) for a decent ruby-environment
* [alacritty](https://www.iterm2.com/)
* [skhd](https://github.com/koekeishiya/skhd) to remap cmd key
* [starship](https://github.com/starship/starship) as my prompt

#### TODO

* Update `Brewfile` to reflect tools that I currently use
* Get rid of skhd (use alacritty keybindings)
* Get rid of hammerspoon, probably
