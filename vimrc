set nocompatible              " be iMproved, required filetype off                  " required 
:let maplocalleader = ',' 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()	

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-vinegar'
Plugin 'kien/ctrlp.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'Raimondi/delimitMate'
Plugin 'marijnh/tern_for_vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'ahayman/vim-nodejs-complete'
Plugin 'bling/vim-airline'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'teranex/jk-jumps.vim'
Plugin 'rstacruz/sparkup'
Plugin 'vim-scripts/indenthtml.vim'

call vundle#end()            " required
filetype on
filetype plugin on
filetype plugin indent on 

syntax enable
set background=dark
colorscheme solarized
set noswapfile
let NERDTreeHijackNetrw = 1
let g:html_indent_inctags = "li"
set autoindent 
set cindent 
" ##### Basic options  {{{
" Display incomplete commands.
set showcmd
" Display the mode you're in.
set showmode

" Intuitive backspacing.
set backspace=indent,eol,start
" Handle multiple buffers better.
set hidden

" Enhanced command line completion.
set wildmenu
" Complete files like a shell.
set wildmode=list:longest

" Case-insensitive searching.
set ignorecase
" But case-sensitive if expression contains a capital letter.
set smartcase

" Show line numbers.
set number
" Show cursor position.
set ruler

" Highlight matches as you type.
set incsearch
" Don't highlight matches.
set nohlsearch

" Turn off line wrapping.
set nowrap    
" Show 3 lines of context around the cursor.
set scrolloff=3

" Set the terminal's title
set title
" No beeping.
set visualbell

" Don't make a backup before overwriting a file.
set nobackup
" And again.
set nowritebackup
" Keep swap files in one location
set directory=$HOME/.vim/tmp//,.

" Global tab width.
set tabstop=4
" And again, related.
set shiftwidth=4

" Files open expanded
set foldlevelstart=20
" Use decent folding
set foldmethod=indent

" Show the status line all the time
set laststatus=2
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Enable syntax highlighting
syntax on
" Sets the c

let mapleader = ","
noremap H ^
noremap L $

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Create windows
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>m <C-w>s<C-w>j
nnoremap <leader>d <C-w>q
" }}}
" ##### Folding {{{
" Toggles folding with space
nnoremap <leader><Space> za

inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

let g:ctrlp_working_path_mode = 'a'
" Custom ignores
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store'
