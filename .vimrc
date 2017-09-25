set nocompatible
set encoding=utf-8
set history=50

set autoindent
set smartindent
set cindent

set expandtab
set sw=4
set ts=4

set cursorline
set colorcolumn=80
set nu
set ruler
set showcmd
set spell
syntax on
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase


let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1
execute 'colorscheme ' . (strftime('%H') < 20 ? 'Tomorrow' : 'Tomorrow-Night-Eighties')

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ChrisKempson/Tomorrow-Theme'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
