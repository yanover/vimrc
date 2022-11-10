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


" ===== NERDTree =====

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Map F6 in order to toggle nerdTREE.
nmap <F6> :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


" ===== Theme =====

autocmd vimenter * ++nested colorscheme gruvbox

" ===== Airline plugin =====

let g:airline_theme='gruvbox'

