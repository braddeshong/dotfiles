set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle

let s:ocamlmerlin=substitute(system('opam config var share'),'\n$','','''') .  "/ocamlmerlin"
execute "set rtp+=".s:ocamlmerlin."/vim"
execute "set rtp+=".s:ocamlmerlin."/vimbufsync"

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

filetype plugin on
filetype indent on
execute pathogen#infect()
syntax enable

let g:solarized_termtrans = 1 
colorscheme solarized

set t_Co=256
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

nmap <silent> ]b :bn<CR>
nmap <silent> [b :bp<CR>

map <F2> :NERDTreeToggle<CR>

set tags=~/Projects/linux/tags
