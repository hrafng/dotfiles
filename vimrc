 set nocompatible               " be iMproved
 filetype off                   " required!

" General
:set expandtab " convert tab to spaces
:set tabstop=4 " set tab to 4 characters
:set shiftwidth=4
:set smarttab

set foldmethod=indent
set foldlevel=99
set history=1000
syntax enable
set mouse=r
set nobackup

" Mappings
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
