" My Vimrc
" URL: https://github.com/guiemi/mac-dotfiles/blob/master/.vimrc
" Auhor: Guilherme Teixeira
" Description: My personal VIMRC, built along the years in order to fulfull my
" needs. 

filetype on
filetype plugin on 
filetype indent on
syntax on
colorscheme industry
set nocompatible
set number
set t_Co=256
set showmatch
set enc=utf-8
set hlsearch
set incsearch
set ignorecase
set smartcase
set wildmenu
set autoindent
let g:pymode_python = 'python3'
" Backspace over anything in insert mode:
set backspace=indent,eol,start


" Display the cursor position on the last line of the screen or in the status line of a window
set ruler

" =====================================================
" VUNDLE settings
" =====================================================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugin manager
Plugin 'VundleVim/Vundle.vim'

" Autopair
Plugin 'jiangmiao/auto-pairs'

" Status bar on bottom (Powerline/Airline)
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required

" =====================================================
" PYTHON settings
" =====================================================

" Python-Syntax
Plugin 'vim-python/python-syntax'

let g:python_highlight_all = 1 
let g:python_highlight_string_formatting = 1
let g:Python3Syntax = 1

" =====================================================
" GENERAL settings
" =====================================================

"""""""""""" Start Powerline Settings 

set guifont=Hack:h30
"set guifont=Inconsolata-dz\ for\ Powerline:h30
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Inconsolata-dz\ for\ Powerline:h15
    endif
endif

""""""""""" END of PowerLine Settings  

"Atalhos personalizados
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <S-Tab> << 
inoremap <S-Tab> <C-d>

" ==== Suporte ao Virtualenv
if has('python')
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
endif
