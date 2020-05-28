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
"call plug#begin('~/.vim/plugged')
call plug#begin('~/.local/share/nvim/plugged')
" Gruvbox-material Color Scheme 
Plug 'sainnhe/gruvbox-material'
" Startup Interface
Plug 'mhinz/vim-startify'
" Lightline
Plug 'itchyny/lightline.vim'
" Show Key Mapping
Plug 'liuchengxu/vim-which-key'
"Vim Calendar
Plug 'itchyny/calendar.vim'
" Writing!
Plug 'junegunn/goyo.vim'
" Hyperfocus
Plug 'junegunn/limelight.vim'
" Easy-align
Plug 'junegunn/vim-easy-align'
"Easy Pairs
Plug 'jiangmiao/auto-pairs'
" Easy Surround
Plug 'tpope/vim-surround'
" Comment
Plug 'preservim/nerdcommenter'
"Fuzzy Search
Plug 'junegunn/fzf.vim'
" Deoplete
Plug 'Shougo/deoplete.nvim', {'do':':UpdateRemotePlugins'}
" Git
Plug 'tpope/vim-fugitive'
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

inoremap jk <Esc>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" IM Auto Switch Back
let g:input_toggle = 1
function! Fcitx2en()
   let s:input_status = system("fcitx-remote")
   if s:input_status == 2
      let g:input_toggle = 1
      let l:a = system("fcitx-remote -c")
   endif
endfunction

function! Fcitx2zh()
   let s:input_status = system("fcitx-remote")
   if s:input_status != 2 && g:input_toggle == 1
      let l:a = system("fcitx-remote -o")
      let g:input_toggle = 0
   endif
endfunction

set timeoutlen=150
autocmd InsertLeave * call Fcitx2en()
"autocmd InsertEnter * call Fcitx2zh()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
