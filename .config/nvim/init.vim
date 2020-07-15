set runtimepath^=/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
" source ~/.vimrc
"
" =====================================================
" FEATURES
" =====================================================

let g:python3_host_prog = '/Users/guiemi/.pyenv/shims/python3'
let g:python_host_prog = '/usr/bin/python2'
set clipboard=unnamed " Copy to clipboard
set termguicolors
" =====================================================
" MUST HAVE options 
" =====================================================

set hlsearch " Highlight searches
set incsearch " Highlight search when entering a pattern

" =====================================================
" USABILITY options
" =====================================================

set backspace=indent,eol,start " Allow backspacing over autoindent, line breaks and start of insert action

set ruler " Display the cursor position on the last line of the screen or in the status line of a window

set number " Show line numbers
set relativenumber " Show line numbers relatively 

" =====================================================
" INDENTATION options
" =====================================================

" =====================================================
" MAPPINGS
" C => Control | S => Shift
" =====================================================

" =====================================================
" VIM-PLUG plugins
" =====================================================

call plug#begin('~/.vim/nvim_plugins')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
call plug#end()

" =====================================================
" VIM-PLUG settings
" =====================================================

""" NERDTree settings
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nmap <C-n> :NERDTreeToggle<CR>

""" Dracula settings
syntax on
color dracula

""" Airline settings

let g:airline_powerline_fonts = 1
let g:airline_section_warning = ''
let g:airline_section_error = ''
