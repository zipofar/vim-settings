set tabstop=2
set shiftwidth=2
set smarttab
set smartindent
set number

set list!
set listchars=tab:▸\ ,eol:¬
"set list listchars+=space:␣

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/vim-airline/vim-airline.git'

call plug#end()


"#### REPLACE SPACES TO TABS ####
"First, you need to decide how many spaces will have a single tab. That said, suppose you have lines with leading 4 spaces, or 8... Than you realize you probably want a tab to be 4 spaces. Now with that info, you do:
"https://stackoverflow.com/questions/9104706/how-can-i-convert-spaces-to-tabs-in-vim-or-linux
":set ts=4
":set noet
":%retab!
