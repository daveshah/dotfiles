#!/bin/bash

VUNDLE_FILE=~/.vim/bundle/Vundle.vim

#Install Vundle if not available
if [ ! -d "$VUNDLE_FILE" ]; then
	echo "Vundle not found. Installing Vundle"
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

for directory in $(ls -d */); do stow ${directory}; done
