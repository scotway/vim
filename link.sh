#!/bin/bash
TEST=`pwd`
echo $TEST

rm ../.tmux.conf 
rm ../.vimrc 
rm ../.tern-config 

ln -s $TEST/vimrc ../.vimrc 
ln -s $TEST/tmux.conf ../.tmux.conf 
ln -s $TEST/tern-config ../.tern-config 

