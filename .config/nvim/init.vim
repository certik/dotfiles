set autowrite
set tabstop=4
set shiftwidth=4

set softtabstop=4
set expandtab

map <M-s> :w<CR>

"Autosave if buffer is modified and focus is lost
au FocusLost * update

"Remember last location
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

hi WhiteSpaceEOL ctermbg=Red
match WhitespaceEOL /\s\+\%#\@<!$/

"This unsets the "last search pattern" register by hitting return, taken from:
"http://stackoverflow.com/questions/657447/vim-clear-last-search-highlighting
nnoremap <silent> <CR> :nohlsearch<CR><CR>
