"Common VIM options
set nocompatible
set cursorline
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
  Plug 'nanotech/jellybeans.vim'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'easymotion/vim-easymotion'
  Plug 'godlygeek/tabular'
  Plug 'scrooloose/nerdtree'
  Plug 'leafgarland/typescript-vim'

  if has('python')
    Plug 'Valloric/YouCompleteMe'
  endif
call plug#end()

"Appearance
"colo railscasts
colo jellybeans
let g:airline_theme='distinguished'
let g:airline#extensions#tabline#enabled = 1

"Ctrl-p
let g:ctrlp_working_path_mode = ''

"Pandoc Options
let g:pandoc#command#autoexec_on_writes = 0
"let g:pandoc#command#autoexec_command = "Pandoc pdf"

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

if has('gui_vimr') || has('gui_running')
  map <A-Up> <C-w>k
  map <A-Down> <C-w>j
  map <A-Left> <C-w>h
  map <A-Right> <C-w>l
  map <C-k> :tabnext<CR>
  map <C-j> :tabprevious<CR>
endif

"vim: sw=2 ts=2 et
