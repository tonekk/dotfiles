my dotfiles
===========

[![License](http://img.shields.io/:license-mit-blue.svg)](http://tonekk.mit-license.org)


## Installation

To set up my environment, we have to follow these steps:

* `git clone https://github.com/tonekk/dotfiles`
* `mv dotfiles etc`
* `cd etc && git submodule init && git submodule update`
* `cd && etc/bin/init`

To setup vim, also exec:

* `cd ~/etc/vim && git submodule init && git submodule update`
* `vim`
* (in Vim:) `:BundleInstall`
