set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle

call vundle#rc()

Bundle 'gmaric/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'nvie/vim-flake8'
Bundle 'klen/python-mode'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'sukima/xmledit'
Bundle 'tpope/vim-surround'

filetype plugin indent on
execute pathogen#infect()
syntax enable

let g:solarized_termtrans = 1 
colorscheme solarized

set background=dark
set shiftwidth=4
set tabstop=4
set smartindent
set incsearch
set expandtab

"Line numbers
set number

"Show 80 char column
"set colorcolumn=80
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"Remap Ctrl-S to save
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

"Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

map <F2> :NERDTreeToggle<CR>
