set nocompatible               " be iMproved
filetype off                   " required!
set relativenumber
set number

" General
"set encoding=iso-8859-1
set encoding=utf-8
"set fileencodings=utf-8,latin-1
set expandtab " convert tab to spaces
set tabstop=4 " set tab to 4 characters
set shiftwidth=4
set smarttab
set nobackup
set nowritebackup
set noswapfile
set softtabstop=4
set autoindent
set textwidth=80
filetype indent on
filetype on
filetype plugin on

set foldmethod=indent
set foldlevel=99
set history=1000
set mouse=r
set exrc

" Mappings
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
set background=dark
set t_Co=256 " 256 colors in terminal

if has('gui_gnome')
  set guifont=Ubuntu\ Mono\ 8.4
endif


" Tweaks for Molokai colorscheme (ignored if Molokai isn't used)
let g:molokai_original=1
let g:rehash256=1

" Use the first available colorscheme in this list
for scheme in [ 'molokai', 'solarized', 'desert' ]
  try
    execute 'colorscheme '.scheme
    break
  catch
    continue
  endtry
endfor

" highlight the 80th column
"
" In Vim >= 7.3, also highlight columns 120+
if exists('+colorcolumn')
" (I picked 120-320 because you have to provide an upper bound and 500 seems
" to be enough.)
  let &colorcolumn="80,".join(range(120,500),",")
else
" fallback for Vim < v7.3
  autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
