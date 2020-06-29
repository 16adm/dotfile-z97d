""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
set termguicolors
syntax enable
" Filetype
filetype plugin on
filetype indent on
" Textwidth 
set textwidth=80               " Set Maximum textwidth
set colorcolumn=+1              " Highlight textwidth
" No.
set relativenumber              " Show relative number
set numberwidth=5               " Set room for number 
" Indent
set autoindent                  " Indent according to previous line.
set expandtab                   " Use spaces instead of tabs.
set softtabstop=4               " Tab key indents by 4 spaces.
set shiftwidth=4                " >> indents by 4 spaces.
set shiftround                  " >> indents to next multiple of 'shiftwidth'.
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

" Auto Pairs
let g:AutoPairs={'<':'>', '(':')', '[':']', '{':'}',"'":"'",'"':'"', '```':'```', '"""':'"""', "'''":"'''", "`":"`"}

" Deoplete
let g:deoplete#enable_at_startup=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Leader Key
let mapleader=" "

"Logical Map
map Y y$
map j gj
map k gk

"Sudo Writing
cmap w!! w !sudo tee % >/dev/null

" Term
map <leader>to :term<CR>
map <leader>ti <C-Z>                         " fg to return

"Buffer
map <leader>bn :bn<CR>
map <leader>bp :bp<CR>
map <leader>bc :bd<CR>
map <leader>bl :ls<CR>
map <leader>b1 :b1<CR>
map <leader>b2 :b2<CR>
map <leader>b3 :b3<CR>
map <leader>b4 :b4<CR>
map <leader>b5 :b5<CR>
map <leader>b6 :b6<CR>
map <leader>b7 :b7<CR>
map <leader>b8 :b8<CR>
map <leader>b9 :b9<CR>

" Window
map <leader>w <C-W>
noremap <leader>wS :Startify<CR>

" Local Leader Key
let maplocalleader=','

" Writing: Goyo, Limelight, Calendar
noremap <localleader>wg :Goyo<CR>
noremap <localleader>wG :Goyo!<CR>
noremap <localleader>wl :Limelight<CR>
noremap <localleader>wL :Limelight!<CR>
noremap <localleader>wc :Calendar<CR>
noremap <localleader>wC :Calendar -view=clock<CR>

"Auto-pairs
let g:AutoPairsShortcutToggle='<localleader>pt'
let g:AutoPairsShortcutFastWrap='<localleader>pe'
let g:AutoPairsShortcutJump='<localleader>pn'
let g:AutoPairsShortcutBackInsert='<localleader>pb'

"Surround
"cs"'                         " change surround from "" to ''
"cs"<q>                       " change surround from "" to tag <q></q>
"cst'                         " change surround from <tag></tag> to ''
"ds"                          " remove surround ""
"ysiw]                        " add surround [] w/o space
"ysiw[                        " add surround [] w/ space
"ysiw<em>                     " add surround tag <em></em>
"yss)                         " add surround () w/o space, entire line
"<M-v>S<p class="fuck">       " add surround tag <p class="fuck"></p> in visual mode

"NerdCommenter
map <localleader>cc <plug>NERDCommenterComment
map <localleader>ct <plug>NERDCommenterToggle
map <localleader>ca <plug>NERDCommenterAppend
map <localleader>ci <plug>NERDCommenterInsert
map <localleader>ce <plug>NERDCommenterToEOL

"FZF
":Files [PATH]              "Files (runs $FZF_DEFAULT_COMMAND if defined)
":GFiles [OPTS]             "Git files (git ls-files)
":GFiles?                   "Git files (git status)
":Buffers                   "Open buffers
":Colors                    "Color schemes
":Ag [PATTERN]              "ag search result (ALT-A to select all, ALT-D to deselect all)
":Rg [PATTERN]              "rg search result (ALT-A to select all, ALT-D to deselect all)
":Lines [QUERY]             "Lines in loaded buffers
":BLines [QUERY]            "Lines in the current buffer
":Tags [QUERY]              "Tags in the project (ctags -R)
":BTags [QUERY]             "Tags in the current buffer
":Marks                     "Marks
":Windows                   "Windows
":Locate PATTERN            "locate command output
":History                   "v:oldfiles and open buffers
":History:                  "Command history
":History/                  "Search history
":Snippets                  "Snippets (UltiSnips)
":Commits                   "Git commits (requires fugitive.vim)
":BCommits                  "Git commits for the current buffer
":Commands                  "Commands
":Maps                      "Normal mode mappings
":Helptags                  "Help tags 1
":Filetypes                 "File types

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
