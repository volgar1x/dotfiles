set nocompatible " be iMproved
filetype off " required!
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'nanotech/jellybeans.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'Raimondi/delimitMate'
Bundle 'bling/vim-airline'
Bundle 'junegunn/seoul256.vim'
Bundle 'mattn/emmet-vim'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'vim-niji'
Bundle 'maxbrunsfeld/vim-emacs-bindings'
Bundle 'scilab.vim'
Bundle 'whatyouhide/vim-gotham'
Bundle 'jimenezrick/vimerl'
Bundle 'ehamberg/vim-cute-erlang'
Bundle 'kien/ctrlp.vim'
Bundle 'mbbx6spp/vim-rebar'
Bundle 'elixir-lang/vim-elixir'
Bundle 'mattreduce/vim-mix'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdcommenter'

filetype plugin indent on " required!

set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme="bubblegum"

syntax on
colorscheme seoul256
let g:seoul256_background=233
set background=dark
set mouse=a
set nu
set smartindent
set tabstop=2
set shiftwidth=2
set encoding=UTF-8

autocmd FileType erlang set tabstop=4|set shiftwidth=4

let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_no_startup_for_diff=1
let g:nerdtree_tabs_smart_startup_focus=1
let g:NERDTreeShowBookmarks=1
let g:NERDTreeChDirMode=2 " change CWD whenever the tree root is changed
let g:NERDTreeMouseMode=2 " need only one click to open directory by double click to open file
let g:NERDTreeWinSize=28  " default 31
let g:NERDTreeIgnore=['_build', '\.sublime-project$', '\.sublime-workspace$']

let g:user_emmet_leader_key='<C-J>'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|beam)$',
  \ }

let g:neocomplcache_enable_at_startup=1

"iunmap <C-k>
nmap <C-k> dd
imap <C-k> <Esc>ddi

nmap <C-z> u
imap <C-z> <Esc>ui

imap <M-Right> <Esc>:tabnext<CR>i
nmap <M-Right> :tabnext<CR>

imap <M-Left> <Esc>:tabprevious<CR>i
nmap <M-Left> :tabprevious<CR>

imap <M-Up> <Esc>:m .-2<CR>i
imap <M-Down> <Esc>:m .+1<CR>i

imap <C-Left> <Esc><C-w>hi
nmap <C-Left> <C-w>h

imap <C-Right> <Esc><C-w>li
nmap <C-Right> <C-w>l

imap <C-Down> <Esc><C-w>ji
nmap <C-Down> <C-w>j

imap <C-Up> <Esc><C-w>ki
nmap <C-Up> <C-w>k
