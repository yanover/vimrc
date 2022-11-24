" ===== Plugin install =====
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

call plug#end()

" ===== Default options =====

" Set 'nocompatible' to ward off unexpected things that your distro might
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Display line numbers on the left
set number

" Indentation settings for using 4 spaces instead of tabs.
set shiftwidth=4
set softtabstop=4
set expandtab

" Enable use of the mouse for all modes
if has('mouse')
  set mouse=a
endif

" Disable bellsound
set belloff=all

" ===== Pluggin Configuration =====

" = AIRLINE
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
:helptags ~/.vim/plugged/vim-airline/doc

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"Unicode symbols for the Status Line
let g:airline_left_alt_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_alt_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.readonly = '∥'
let g:airline_symbols.whitespace = 'Ξ'

set laststatus=2
set t_Co=256
set notermguicolors
set encoding=utf-8

" - THEMES
autocmd vimenter * ++nested colorscheme gruvbox
