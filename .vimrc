" Vundle Required
set nocompatible
filetype off
" UTF-8 sp
set encoding=utf-8

" Enable folding
set foldmethod=indent
set foldlevel=99

" Search
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase

set cursorline
set nu
set ruler
set showcmd
syntax on
set history=50


"Split Navigations
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" PEP8
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set colorcolumn=80

" Clang
au BufNewFile,BufRead *.c
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \let g:ycm_global_ycm_extra_conf = '~/.vim/.c.py' |

au BufNewFile,BufRead *.cpp,*.hpp
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \let g:ycm_global_ycm_extra_conf = '~/.vim/.cpp.py' |

" JS HTML CSS
au BufNewFile,BufRead *.html,*.js,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2
" Ycm Config
let python_highlight_all = 1
let g:ycm_python_binary_path = 'python'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

""AIRLINE
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='tomorrow'
"let g:airline_powerline_fonts = 1

"Theme by day/night
if strftime("%H") >= 5 && strftime("%H") <= 17
    execute 'colorscheme Tomorrow'
    "execute 'set background=light'
    "execute 'colorscheme solarized'
else
    execute 'colorscheme Tomorrow-Night-Eighties'
    "execute 'set background=dark'
    "execute 'colorscheme solarized'
endif

"Syntastic Setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting=0

"Eliminating Vim esc delay
set timeoutlen=1000 ttimeoutlen=0

"Vundle
"Install git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Vim beauty
Plugin 'ChrisKempson/Tomorrow-Theme'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
"Ez life
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'itmammoth/doorboy.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
"Plugin for Python
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Vimjas/vim-python-pep8-indent'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
