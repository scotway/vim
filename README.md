# vim
vim+tmux=amazing

This repo using submodules for pathogen. To add:
* git submodule add git://github.com/tpope/vim-fugitive.git bundle/vim-fugitive
* git commit -m 'Added vim-fugitive'
* git push

To pull down:
* cd ~/.vim
* git submodule init
* git submodule update

You Complete Me:
* cd YouCompleteMe
* git submodule update --init --recursive
* ./install.py --clang-completer
* ./install.py --tern-completer

Boom!
