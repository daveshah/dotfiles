set nocompatible   				" required
filetype off     				" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' 
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fireplace'
Plugin 'derekwyatt/vim-scala'
Plugin 'christoomey/vim-conflicted'
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'elzr/vim-json'
Plugin 'kana/vim-fakeclip'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'guns/vim-clojure-static'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mattreduce/vim-mix'
Plugin 'docunext/closetag.vim'
Plugin 'tpope/vim-markdown'
Plugin 'szw/vim-tags'
Plugin 'hiukkanen/vim-hamlc'
Plugin 'mxw/vim-jsx'
Plugin 'kchmck/vim-coffee-script'

call vundle#end()            " required
filetype plugin indent on    " required
syntax on

" Map to run mix tests => may wish to change up the test run command by
" filetype in the future!
:map <F10> :w\|:!mix test

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
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" END NERDTree setup

