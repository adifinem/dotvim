#!/bin/bash

MYCWD=`pwd`
echo "linking $MYCWD/vimrc to ~/.vimrc"
ln -s $MYCWD/vimrc ~/.vimrc
echo "linking $MYCWD/vim to ~/.vim"
ln -s $MYCWD/vim ~/.vim

