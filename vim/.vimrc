set nocompatible   				" required
filetype off     				" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' 

"Browseage
Plugin 'scrooloose/nerdtree'

"Git diff
Plugin 'christoomey/vim-conflicted'

"ctrl-p search
Plugin 'kien/ctrlp.vim'

"automatic end's
Plugin 'tpope/vim-endwise'

"Ctags
Plugin 'szw/vim-tags'

"lang/framework support
Plugin 'elixir-lang/vim-elixir'
Plugin 'derekwyatt/vim-scala'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'mattreduce/vim-mix'
Plugin 'elzr/vim-json'
Plugin 'mxw/vim-jsx'
Plugin 'kchmck/vim-coffee-script'
Plugin 'hiukkanen/vim-hamlc'

Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'kana/vim-fakeclip'
Plugin 'bling/vim-airline'
Plugin 'docunext/closetag.vim'

call vundle#end()            " required
filetype plugin indent on    " required
syntax on

" Map to run mix tests => may wish to change up the test run command by
" filetype in the future!
:map <F10> :w\|:!mix test
:map <F9> :w\|:!rspec .

set background=dark
set encoding=utf-8
set ignorecase
set incsearch
set number
set ruler
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set number
set ruler
set smartindent
set showcmd
set visualbell

" Because I'm lazy
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" START NERDTree setup
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" END NERDTree setup

"Powerline Bling
let g:airline_powerline_fonts=1
let g:Powerline_symbols='unicode'


" Grep w/ag instead
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
