#!/bin/bash
TEST=`pwd`
echo $TEST

rm ../.tmux.conf 
rm ../.vimrc 

ln -s $TEST/tmux.conf ../.tmux.conf 
ln -s $TEST/vimrc ../.vimrc

