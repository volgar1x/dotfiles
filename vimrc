set shiftwidth=2
set tabstop=2
set expandtab
set number

call plug#begin('~/.vim/plugged')
  Plug 'vim-airline/vim-airline'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'Raimondi/delimitMate'
  Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'mhinz/vim-startify'
  Plug 'jpo/vim-railscasts-theme'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

let mapleader=','
let g:airline#extensions#tabline#enabled = 1

colo railscasts
let g:airline_theme='distinguished'
