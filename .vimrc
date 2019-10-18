" =====================================================
" General settings
" =====================================================


syntax on
filetype plugin on
filetype off
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

" Display the cursor position on the last line of the screen or in the status line of a window
set ruler

 


"Vundle"

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
let g:airline_theme='ayu_dark'
let g:airline_powerline_fonts = 0

" All of your Plugins must be added before the following line
call vundle#end()            " required

" =====================================================
" General settings
" =====================================================

"""""""""""" Start Powerline Settings """"""""""""""""

set guifont=Inconsolata-dz\ for\ Powerline:h30
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

""""""""""" END of PowerLine Settings  """""""""""""'

"Atalhos personalizados
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ==== Suporte ao Virtualenv

py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF