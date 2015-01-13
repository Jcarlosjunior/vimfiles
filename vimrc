set nocompatible              " be iMproved, required filetype off                  " required 
:let maplocalleader = ',' 
set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'Raimondi/delimitMate'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'bling/vim-airline'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'rstacruz/sparkup'
Plugin 'vim-scripts/indenthtml.vim'
Plugin 'scrooloose/syntastic'
Plugin 'msanders/snipmate.vim'

call vundle#end()            " required
filetype on
filetype plugin on
filetype plugin indent on 

set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
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
set tabstop=2
" And again, related.
set shiftwidth=2

set expandtab
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
nnoremap <C-b> :bn<CR> 

" Create windows
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>m <C-w>s<C-w>j
nnoremap <leader>d :bd<CR>
nnoremap <leader>q <C-w>q
" }}}
" ##### Folding {{{
" Toggles folding with space
nnoremap <leader><Space> za

inoremap <C-a> <C-x><C-o>
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_working_path_mode = 'a'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_enable_signs = 1
let g:syntastic_aggregate_errors = 1

" Custom ignores
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store'
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

