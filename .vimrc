" VUNDLE SETUP
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Plugins
Plugin 'bling/vim-airline'
Plugin 'digitaltoad/vim-jade'
Plugin 'kien/ctrlp.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
" Color schemes
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required
filetype plugin indent on    " required

" Plugin Configurations
" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

syntax on
colorscheme molokai
" colorscheme twilight256

set encoding=utf-8 nobomb

set number

set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status bar
set laststatus=2
" Enable mouse in all modes
" set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
set scrolljump=3
set cursorline
set nowrap
set nobackup
set noswapfile
" Commands for doing diffs
nnoremap <F7> [c
nnoremap <F8> ]c


"" Automatic commands
if has("autocmd")
    " Enable file type detection
    filetype on
    " Treat .json files as .js
    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
    " Treat .md files as Markdown
    autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
    autocmd BufNewFile,BufRead *.sass setlocal ts=2 sw=2
    autocmd BufNewFile,BufRead *.scss setlocal ts=2 sw=2
    autocmd BufNewFile,BufRead *.jade setlocal ts=2 sw=2
end

function! NumberToggle()
    if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
set textwidth=76
let mapleader = ","
"" Nifty mappings for quickly editting vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap jk <esc>
iabbrev glup gulp

map <Esc><Esc> :w<CR>
nnoremap <leader>s :update<CR>
