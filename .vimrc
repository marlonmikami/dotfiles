" set number
set nocompatible
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



" Tab behavior
set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =4         " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set hidden

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

set linebreak
set wrap
map j gj
map k gk

set clipboard^=unnamed,unnamedplus
set laststatus=2

" VIMWIKI related 
let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{ 'path': '~/Notes/',
                      \ 'syntax': 'markdown',
                      \ 'ext': 'md'}]


" --- Abreviations ---
:iab mdt ## <CR>* Other names: <CR><ESC>xxi* Tradition: <CR><ESC>xxi* For whom: <CR><ESC>xxi* Effects: <ESC>04k$i
