""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
syntax enable
filetype plugin on
" Textwidth 
set textwidth=80		" Set Maximum textwidth
set colorcolumn=+1		" Highlight textwidth
" No.
set relativenumber		" Show relative number
set numberwidth=5		" Set room for number 
" Indent
set autoindent             	" Indent according to previous line.
set expandtab              	" Use spaces instead of tabs.
set softtabstop=4         	" Tab key indents by 4 spaces.
set shiftwidth=4         	" >> indents by 4 spaces.
set shiftround             	" >> indents to next multiple of 'shiftwidth'.
set backspace=indent,eol,start  " Make backspace work as you would expect.
" Timeout
set notimeout
" Showcmd
set showcmd
" More...
set list
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Managing plugins with junegunn/vim-plug
call plug#begin('~/.vim/plugged')
" Gruvbox-material Color Scheme 
Plug 'sainnhe/gruvbox-material'
" Startup Interface
Plug 'mhinz/vim-startify'
" Lightline
Plug 'itchyny/lightline.vim'
" Easy-align
Plug 'junegunn/vim-easy-align'
"Easy Pairs
Plug 'jiangmiao/auto-pairs'
" Easy Surround
Plug 'tpope/vim-surround'
" Deoplete
Plug 'Shougo/deoplete.nvim', {'do':':UpdateRemotePlugins'}
" Comment
Plug 'preservim/nerdcommenter'
" Vim Org-mode
Plug 'vimwiki/vimwiki'
"Vim Calendar
Plug 'itchyny/calendar.vim'
" Writing!
Plug 'junegunn/goyo.vim'
" Hyperfocus
Plug 'junegunn/limelight.vim'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Gruvbox-material Color Scheme 
if has('termguicolors')
  set termguicolors
endif
set background=dark
let g:gruvbox_material_background='soft'
let g:gruvbox_material_enable_ialic=1
colorscheme gruvbox-material

" Lightline gruvbox-material theme
let g:lightline={'colorscheme':'gruvbox_material'}

" Deoplete
let g:deoplete#enable_at_startup=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Leader Key
let mapleader=" "
let maplocalleader=','

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
