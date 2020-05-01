" My Vimrc
" URL: https://github.com/guiemi/mac-dotfiles/blob/master/.vimrc
" Auhor: Guilherme Teixeira
" Description: My personal VIMRC, built along the years in order to fulfull my
" needs. 

" =====================================================
" FEATURES
" =====================================================

" Avoid unexpected things that the OS may have made:
set nocompatible

"
filetype indent plugin on

" Syntax highlighting
syntax on


" Copy to clipboard
set clipboard=unnamed

"" =====================================================
" MUST HAVE options 
" =====================================================

" Managing multiple instances of Vim
set hidden

" Show partial commands in the last line of the screen
set showcmd

" Set colorscheme
colorscheme industry

" Highlight searches
set hlsearch

" =====================================================
" USABILITY options
" =====================================================
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Keeps the same indent as the line you're currently on
set autoindent

 " Display the cursor position on the last line of the screen or in the status line of a window
set ruler

" Use case insensitive search, execpt when using capital letters
set ignorecase
" set smartcase

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Enable use of mouse for all modes
set mouse=a

" Show line numbers on the left
set number

" =====================================================
" INDENTATION options
" =====================================================

" Indentation settings for using 4 spaces instead of tabs.
set shiftwidth=4
set softtabstop=4
set expandtab

" =====================================================
" OTHER options
" =====================================================
set t_Co=256
set showmatch
set enc=utf-8
set incsearch

" Better command-line completion
set wildmenu

" =====================================================
" MAPPINGS
" C => Control | S => Shift
" =====================================================

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <S-Tab> << 
inoremap <S-Tab> <C-d>

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

" Autocomplete (Jedi)
Plugin 'davidhalter/jedi-vim'

" Linter (ALE)
Plugin 'dense-analysis/ale'


"" Status bar on bottom (Powerline/Airline)
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

" NERDTree
Plugin 'preservim/nerdtree'

nmap <C-n> :NERDTreeToggle<CR>


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
let g:pymode_python = 'python3'


" =====================================================
" START Powerline settings
" =====================================================

" Set font
set guifont=Hack:h30

let g:Powerline_symbols = 'fancy'

" Set encoding
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
""""""""""""""""" END of PowerLine Settings  

" =====================================================
" VIRTUALENV
" =====================================================

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
