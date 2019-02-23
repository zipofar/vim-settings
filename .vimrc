setglobal nocompatible
setglobal pastetoggle=<F2>

set tabstop=2
set shiftwidth=2
set smartindent
set expandtab
set number

set list!
set listchars=tab:→\ 
"set list listchars+=space:␣

"if !has('gui_running')
  set t_Co=256
"endif
colors deus
set background=dark
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
"hi Normal ctermbg=White ctermfg=Black guifg=Black guibg=White
":PluginInstall

call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'slim-template/vim-slim', { 'for': ['slim', 'slime'] }
Plug 'elzr/vim-json'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'stephpy/vim-yaml', { 'for': 'yaml' }
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }

Plug 'itchyny/lightline.vim'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'ajmwagar/vim-deus'
Plug 'https://github.com/Townk/vim-autoclose.git'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

let NERDTreeShowHidden=1
let mapleader = ","

" https://github.com/vim/vim/blob/master/runtime/doc/russian.txt
" Enable hotkeys for Russian layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
" setlocal spell spelllang=en_us,ru_ru


nmap <silent> <leader><leader> :NERDTreeToggle<CR>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
