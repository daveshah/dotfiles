set nocompatible   				" required
filetype off     				" required

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

" Because I'm lazy
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

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
