syn on
set modeline
set exrc
set autowrite
set tabstop=4
set shiftwidth=4
set textwidth=79
set softtabstop=4
set bs=indent,eol,start
set expandtab
set autoindent
filetype indent on
map <F2> :w<CR>
map <F10> :!/usr/bin/env python %<CR>
map <F8> :TlistToggle<CR><C-w>h
let Tlist_Inc_Winwidth=0
set fileencodings=ucs-bom,utf-8,default,latin2

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

if has('gui_running')
   hi WhiteSpaceEOL guibg=#FF0000
else
   hi WhiteSpaceEOL ctermbg=Red
endif
match WhitespaceEOL /\s\+\%#\@<!$/

au Bufenter *.f90 set comments=:!
