"Common VIM options
set nocompatible
set shiftwidth=2
set tabstop=2
set expandtab
set number
set smartindent
let mapleader=','

"Extensions
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
  Plug 'Valloric/YouCompleteMe'
  Plug 'vim-pandoc/vim-pandoc-syntax'
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'easymotion/vim-easymotion'
  Plug 'godlygeek/tabular'
call plug#end()

"Appearance
colo railscasts
let g:airline_theme='distinguished'
let g:airline#extensions#tabline#enabled = 1

"Pandoc Options
let g:pandoc#command#autoexec_command = "Pandoc! pdf"
let g:pandoc#command#custom_open = "Skim"

"Common VIM GUI options
if has('gui_running')
  behave xterm
  set guifont=Iosevka\ Term:h13
  set go=
  set mousemodel=popup
endif

"NeoVim options
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
endif

