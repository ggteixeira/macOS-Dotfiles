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
set cursorline
set tabstop=4  "Number of tabs
set encoding=utf-8 "Encoding
set linebreak " Wraps lines without trimming words in the middle; breaks line instead

" =====================================================
" MUST HAVE options 
" =====================================================

set incsearch " Highlight search when entering a pattern
set hlsearch " Highlight searches
set showmatch
set inccommand=nosplit

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

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" =====================================================
" VIM-PLUG plugins
" =====================================================

call plug#begin('~/.vim/nvim_plugins')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" =====================================================
" VIM-PLUG settings
" =====================================================

""" Nerdtree settings
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nmap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  " Close Vim if only NerdTree is open

""" Dracula settings
syntax on
color dracula

""" Airline settings
let g:airline_powerline_fonts = 1
let g:airline_section_warning = ''
let g:airline_section_error = ''
