set nocompatible " be iMproved
filetype off " required!

let g:plug_threads = 8
call plug#begin('~/.vim/plugged')
 
Plug 'tpope/vim-fugitive'
Plug 'nanotech/jellybeans.vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'bling/vim-airline'
Plug 'junegunn/seoul256.vim'
Plug 'mattn/emmet-vim'
Plug 'amdt/vim-niji'
Plug 'scilab.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'jimenezrick/vimerl'
Plug 'ehamberg/vim-cute-erlang'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'mbbx6spp/vim-rebar'
Plug 'elixir-lang/vim-elixir'
Plug 'mattreduce/vim-mix'
Plug 'Lokaltog/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'Blackrush/lexima.vim'
Plug 'tpope/vim-commentary'
Plug 'groovy.vim'
Plug 'tfnico/vim-gradle'
Plug 'GEverding/vim-hocon'
Plug 'junegunn/vim-easy-align'
Plug 'mru.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-addon-mw-utils' " required by vim-snipmate
Plug 'tlib'               " required by vim-snipmate
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
" Plug 'vim-misc'           " required by vim-session
" Plug 'xolox/vim-session'
Plug 'Shougo/vimproc'     " required by vimshell.vim
Plug 'Shougo/vimshell.vim'
Plug 'derekwyatt/vim-scala'
Plug 'mpollmeier/vim-scalaConceal'

call plug#end()

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


let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_no_startup_for_diff=1
let g:nerdtree_tabs_smart_startup_focus=1
let g:NERDTreeShowBookmarks=1
let g:NERDTreeChDirMode=2 " change CWD whenever the tree root is changed
let g:NERDTreeMouseMode=2 " need only one click to open directory by double click to open file
let g:NERDTreeWinSize=28  " default 31
let g:NERDTreeIgnore=['deps', '_build', '\.sublime-project$', '\.sublime-workspace$']
nmap <C-m> <Plug>NERDTreeTabsToggle<CR>

let g:user_emmet_leader_key='<C-J>'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|beam|class)$',
  \ }
let g:ctrlp_extensions = ['funky']
imap <C-l> <Esc>:CtrlPFunky<CR>
nmap <C-l> :CtrlPFunky<CR>

let g:neocomplcache_enable_at_startup=1

let g:session_autoload='yes'
let g:session_autosave='yes'

" delete current line
nmap <C-k> dd
imap <C-k> <Esc>ddi

" duplicate current line
nmap <C-y> yyp
imap <C-y> <Esc>yypi

" revert last change
nmap <C-z> u
imap <C-z> <Esc>ui

" Go to right tab
imap <M-Right> <Esc>:tabnext<CR>i
nmap <M-Right> :tabnext<CR>

" Go to left tab
imap <M-Left> <Esc>:tabprevious<CR>i
nmap <M-Left> :tabprevious<CR>

" Move current line up or downwards
imap <M-Up> <Esc>:m .-2<CR>i
imap <M-Down> <Esc>:m .+1<CR>i

" Go to left window
imap <C-Left> <Esc><C-w>hi
nmap <C-Left> <C-w>h

" Go to right window
imap <C-Right> <Esc><C-w>li
nmap <C-Right> <C-w>l

" Go to down window
imap <C-Down> <Esc><C-w>ji
nmap <C-Down> <C-w>j

" Go to up window
imap <C-Up> <Esc><C-w>ki
nmap <C-Up> <C-w>k

imap <C-t> <Esc>:tabnew<CR>i
nmap <C-t> :tabnew<CR>

" vim-commentary custom shortcuts
" nmap <C-=> gcc
" vmap <C-=> gc
" imap <C-=> <Esc>gcci

nmap <C-o> :tabnew<CR>:VimShell<CR>
imap <C-o> <Esc><C-o>

" set default comment string
autocmd FileType      groovy set commentstring=//%s
autocmd FileType jproperties set commentstring=#%s

" set default indentations
autocmd FileType erlang set tabstop=4|set shiftwidth=4
autocmd FileType   java set tabstop=4|set shiftwidth=4
autocmd FileType groovy set tabstop=4|set shiftwidth=4

