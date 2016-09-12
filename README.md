# vim
vim+tmux=amazing

This repo using submodules for pathogen. To add:
* git submodule add git://github.com/tpope/vim-fugitive.git bundle/vim-fugitive
* git commit -m 'Added vim-fugitive'
* git push

To Remove a submodule:
* Delete the relevant section from the .gitmodules file.
* Stage the .gitmodules changes git add .gitmodules.
* Delete the relevant section from .git/config .
* Run git rm --cached path_to_submodule (no trailing slash).
* Run rm -rf .git/modules/path_to_submodule.

To pull down:
* cd ~/.vim
* git submodule init
* git submodule update

You Complete Me:
* cd YouCompleteMe
* git submodule update --init --recursive
* ./install.py --clang-completer
* ./install.py --tern-completer
* NOTE: You may need to install cmake to run the .py script

Boom!
