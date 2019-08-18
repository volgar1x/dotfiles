"vim: sw=2 ts=2 et

set nocompatible               "sensible default vim config
set cursorline                 "highlight current line
set shiftwidth=2 tabstop=2 et  "indent with 2 spaces
set number                     "show line numbers
set smartindent                "smart indentation (somehow)
set splitbelow splitright      "i like it more when it splits below and right
set clipboard=unnamedplus      "use system clipboard (most of the time)
let mapleader=','              "you can do keys ,c<Space> to toggle comments

"prevent polluting vim temporary files in vcs trees
set backupdir=~/.vim/tmp//,/tmp//
set directory=~/.vim/tmp//,/tmp//
set undodir=~/.vim/tmp//,/tmp//

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
  Plug 'srcery-colors/srcery-vim'
  Plug 'sonph/onehalf', {'rtp': 'vim'}
  Plug 'endel/vim-github-colorscheme'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'easymotion/vim-easymotion'
  Plug 'godlygeek/tabular'
  Plug 'scrooloose/nerdtree'
  Plug 'leafgarland/typescript-vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'christoomey/vim-tmux-navigator'
call plug#end()

"Appearance
"colo railscasts
"colo jellybeans
"set background=light
"colo github
"set background=dark
"colo srcery
"let g:airline_theme='srcery'
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
colo onehalfdark
let g:airline_theme='onehalfdark'
hi CursorLine term=NONE cterm=NONE
hi Normal ctermbg=NONE guibg=NONE

"let g:airline_theme='distinguished'
let g:airline#extensions#tabline#enabled = 1

"Ctrl-p
let g:ctrlp_working_path_mode = ''

"Common VIM GUI options
if has('gui_running')
  behave xterm
  if has('mac')
    set guifont=Iosevka:h14
  elseif has('linux')
    set guifont=Iosevka\ SS09\ 12
  endif
  set guioptions=e
  set mousemodel=popup
  set lines=38 columns=130
endif

"NeoVim options
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
endif

if has('gui_vimr') || has('gui_running')
  "split horizontally
  map <A-d> :sp<CR>
  "split vertically
  map <A-S-d> :vs<CR>

  "go to right tab
  map <C-k> :tabnext<CR>
  "go to left tab
  map <C-j> :tabprevious<CR>

  "open a terminal vertically
  map <C-t> :vertical terminal<CR>
  "open a file navigator vertically
  map <C-o> :vs<CR>:e .<CR>
  map <C-S-o> :sp<CR>:e .<CR>

  " delete word with Alt+Backspace in insert mode
  imap <A-BS> <C-w>
endif

au FileType gitcommit setlocal nonu
if !has('nvim')
  au TerminalOpen * setlocal nonu
endif

tmap <silent> <ScrollWheelUp> <c-w>N<cr>

"map <M-Left> <Esc><C-w>h
"map <M-Down> <Esc><C-w>j
"map <M-Up> <Esc><C-w>k
"map <M-Right> <Esc><C-w>l
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 2

nnoremap <silent> <M-Left> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <M-Up> :TmuxNavigateUp<cr>
nnoremap <silent> <M-Right> :TmuxNavigateRight<cr>
"nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
