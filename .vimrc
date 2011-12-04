" --- General Set Up ---
" Make vim act like vim, not vi
set nocompatible

filetype on
filetype plugin on
filetype indent on
set backspace=eol,indent,start
set autoindent

" Tab settings, indent and convert to spaces
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set textwidth=80

" Highlight search terms, ignore case when doing searches (except when using
" capitalized letters)
set ignorecase
set smartcase
set hlsearch

" --- Visual Set Up ---
" Show line & column number of the cursor position, show which insert mode
set ruler
set showmode

" Syntax highlighting, kill match parentheses highlighting, and set up coloring
" preferences
syntax on
let loaded_matchparen = 1
hi Comment term=NONE ctermfg=cyan guifg=#FF00CC cterm=NONE gui=NONE
hi String  term=NONE ctermfg=green guifg=#FF00CC cterm=NONE gui=NONE

" Report how many lines were affected by a command
set report=0

" --- Shortcuts/functions ---
" Toggle line numbers on and off
nmap <C-N><C-N> :set invnumber <CR>

" Toggle paste mode
nmap <C-P><C-P> :set invpaste <CR>

" Map keys for window buffers (+ = bigger, - = smaller)
if bufwinnr(1)
    map + <C-W>+
    map - <C-W>-
endif

" Highlight trailing or broken whitespace
nmap <C-W><C-W> :call WShighlighting()<CR>
function WShighlighting()
    highlight WhitespaceEOL ctermbg=green guibg=green
    match WhitespaceEOL /\s\+$/
endfunction

" Unhighlight trailing or broken whitespace
nmap <C-W><C-W><C-W> :call NoWShighlight()<CR>
function NoWShighlight()
    highlight WhitespaceEOL ctermbg=0 guibg=0
    match WhitespaceEOL /\s\+$/
endfunction

" Highlight tabs
nmap <C-T><C-T> :call TabHighlight()<CR>
function TabHighlight()
    highlight Tabs ctermbg=red guibg=red
    match Tabs /\t/
endfunction
