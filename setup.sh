#!/bin/bash

VUNDLE_FILE=~/.vim/bundle/Vundle.vim

#Install Vundle if not available
if [ ! -d "$VUNDLE_FILE" ]; then
	echo "Vundle not found. Installing Vundle"
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [ ! -f ~/.vimrc ]; then
	echo "Updating your .vimrc"
	ln -s .dotfiles/vim/.vimrc ~/.vimrc
fi

if [ ! -f ~/.gitconfig ]; then
	echo "Updating your .gitconfig"
	ln -s .dotfiles/git/.gitconfig ~/.gitconfig
fi

if [ ! -f ~/.bash_profile ]; then
	echo "Updating your .bash_profile"
	ln -s .dotfiles/bash/.bash_profile ~/.bash_profile
fi

if [ ! -f ~/.cheat ]; then
	echo "Updating cheat"
	ln -s .dotfiles/cheat/ ~/.cheat
fi
