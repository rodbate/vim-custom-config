set nocompatible
filetype on
filetype plugin on
filetype indent on
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=-1
set encoding=utf-8


syntax on

set hlsearch
set incsearch
set ignorecase
set smartcase

set scrolloff=5
set wildmenu


let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

nnoremap J 5j
nnoremap K 5k



