set nocompatible   				" required
filetype off     				" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' 
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fireplace'
Plugin 'derekwyatt/vim-scala'

call vundle#end()            " required
filetype plugin indent on    " required
syntax on

set background=dark
set encoding=utf-8
set ignorecase
set incsearch
set number
set ruler
set tabstop=4
set shiftwidth=4
set smartindent
set number
set ruler
set smartindent
set showcmd
set visualbell


" START NERDTree setup
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" END NERDTree setup

