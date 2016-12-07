set nocompatible " be iMproved
filetype off " required!

let g:plug_threads = 8
call plug#begin('~/.vim/plugged')

"Editor
Plug 'Shougo/vimproc'     " required by vimshell.vim
Plug 'Shougo/vimshell.vim'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/vim-easy-align'
Plug 'mru.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'JazzCore/ctrlp-cmatcher', {'do': 'yes \| ./install.sh'}
Plug 'tacahiroy/ctrlp-funky'
Plug 'Lokaltog/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-expand-region'
Plug 'majutsushi/tagbar'
Plug 'luochen1990/rainbow'
"Themes
Plug 'nanotech/jellybeans.vim'
Plug 'junegunn/seoul256.vim'
Plug 'ajh17/Spacegray.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
"Snippets
Plug 'aperezdc/vim-template'
Plug 'mattn/emmet-vim'
Plug 'vim-addon-mw-utils' " required by vim-snipmate
Plug 'tlib'               " required by vim-snipmate
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
"Ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
"Scala
Plug 'derekwyatt/vim-scala'
Plug 'mpollmeier/vim-scalaConceal'
Plug 'GEverding/vim-hocon'
"Groovy
Plug 'groovy.vim'
Plug 'tfnico/vim-gradle'
"JS
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'
" Plug 'kchmck/vim-coffee-script'
" Plug 'mtscout6/vim-cjsx'
" Plug 'trotzig/import-js'
Plug 'pangloss/vim-javascript'
Plug 'flowtype/vim-flow'
"Go
Plug 'Blackrush/vim-gocode'
"Erlang
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'ehamberg/vim-cute-erlang'
Plug 'mbbx6spp/vim-rebar'
"Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'mattreduce/vim-mix'
Plug 'Frost/vim-eh-docs'
"Scilab
Plug 'scilab.vim'
"Docker
Plug 'ekalinin/Dockerfile.vim'
"Python
" Plug 'pfdevilliers/Pretty-Vim-Python'
" Plug 'tmhedberg/SimpylFold'

call plug#end()

filetype plugin indent on " required!

set laststatus=2

syntax on
set mouse=a
set nu
set smartindent
set expandtab tabstop=2 shiftwidth=2
set encoding=UTF-8
set nowrap
set noswapfile
set noeb vb t_vb=
set cursorline
au GUIEnter * set vb t_vb=

if has("gui_running")
	set clipboard=unnamed
	set lines=56 columns=179
	set t_md=
	set go=
	set guifont="Fantasque Sans Mono:h15"
	set background=dark
	let g:airline_theme='gruvbox'
	colorscheme gruvbox
else
	set background=dark
	let g:airline_theme='gruvbox'
	colorscheme gruvbox
endif

let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_no_startup_for_diff=1
let g:nerdtree_tabs_smart_startup_focus=1
let g:NERDTreeShowBookmarks=1
let g:NERDTreeChDirMode=2 " change CWD whenever the tree root is changed
let g:NERDTreeMouseMode=2 " need only one click to open directory by double click to open file
let g:NERDTreeWinSize=28  " default 31
let g:NERDTreeIgnore=['deps', '_build', '\.sublime-project$', '\.sublime-workspace$', 'node_modules', 'dist']
nmap <C-m> <Plug>NERDTreeTabsToggle<CR>

let g:user_emmet_leader_key='<C-J>'

let g:ctrlp_match_func = {'match': 'matcher#cmatch'}
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v(\.git|\.hg|\.svn|node_modules)$',
  \ 'file': '\v\.(exe|so|dll|beam|class)$',
  \ }
let g:ctrlp_extensions = ['funky']

let g:neocomplcache_enable_at_startup=1

let g:session_autoload='yes'
let g:session_autosave='yes'

let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-n>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

let g:tagbar_type_xsd = {
    \ 'ctagstype' : 'XML',
    \ 'kinds'     : [
        \ 'r:records',
        \ 't:templates',
        \ 'm:menuitems'
    \ ]
\ }

" Go to right tab
imap <C-k> <Esc>:tabnext<CR>i
nmap <C-k> :tabnext<CR>

" Go to left tab
imap <C-j> <Esc>:tabprevious<CR>i
nmap <C-j> :tabprevious<CR>

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
autocmd FileType      python set commentstring=#%s
autocmd FileType jproperties set commentstring=#%s
autocmd FileType         php set commentstring=//%s
autocmd FileType          cs set commentstring=//%s

" set default indentations
autocmd FileType     erlang set tabstop=4 shiftwidth=4
autocmd FileType       java set tabstop=4 shiftwidth=4
autocmd FileType         cs set tabstop=4 shiftwidth=4
autocmd FileType     groovy set tabstop=4 shiftwidth=4
autocmd FileType     python set tabstop=4 shiftwidth=4
autocmd FileType javascript set tabstop=4 shiftwidth=4
autocmd FileType     coffee set tabstop=2 shiftwidth=2
autocmd FileType       json set tabstop=2 shiftwidth=2
autocmd FileType      scala set tabstop=2 shiftwidth=2
autocmd FileType        vim set tabstop=4 shiftwidth=4 noexpandtab
autocmd FileType        xml set tabstop=4 shiftwidth=4

autocmd BufNewFile,BufRead *.json set ft=javascript
