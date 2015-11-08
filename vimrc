set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'davidhalter/jedi-vim'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/indentpython.vim'

" Color scheme
Plugin 'flazz/vim-colorschemes'

call vundle#end()

filetype plugin indent on
colorscheme zenburn
syntax on

" General System Settigs
set noswapfile
set encoding=utf-8
set nu

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Behavioral
set backspace=indent,eol,start
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0
set listchars=eol:$,tab:▸\ ,trail:·,extends:>,precedes:<
set list

" Custom keys
let mapleader=","
map <F3> :NERDTreeToggle<cr>
nnoremap <space> za
nnoremap <esc><esc> :w<CR>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
