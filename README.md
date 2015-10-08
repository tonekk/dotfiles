my dotfiles
===========

[![License](http://img.shields.io/:license-mit-blue.svg)](http://tonekk.mit-license.org)


## Installation

To setup everything in `~/etc`, execute the following command:

```js
cd && git clone git@github.com:tonekk/dotfiles.git etc && cd etc && git submodule init && git submodule update && cd && etc/bin/init && cd ~/etc/tmux && git submodule init && git submodule update && cd ~/etc/vim && git submodule init && git submodule update && vim -c BundleInstall
```
