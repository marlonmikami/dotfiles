" set number
set nocompatible
set encoding=utf-8
filetype plugin on

" Color related configs
syntax on
packadd! gruvbox-material
if ( $TERM == 'linux' )
    colorscheme default
else
    if has('termguicolors')
        set termguicolors
    endif
    set background=dark
    let g:gruvbox_material_background = 'soft'
    let g:gruvbox_material_transparent_background = 1
    colorscheme gruvbox-material
endif
"set termguicolors
"colorscheme disco


" Tab behavior
set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =4         " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set hidden

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

" Word wrap and correct movement
set linebreak
set wrap
map j gj
map k gk

" Clipboard
set clipboard^=unnamed,unnamedplus
set laststatus=2

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" VIMWIKI related 
let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{ 'path': '~/Notes/',
                      \ 'syntax': 'markdown',
                      \ 'ext': 'md'}]


" --- Abreviations ---
:iab mdt ## <CR>* Other names: <CR><ESC>xxi* Tradition: <CR><ESC>xxi* For whom: <CR><ESC>xxi* Effects: <ESC>04k$i

" --- Python setup ---
\ au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
