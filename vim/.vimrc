set number
set relativenumber
set nocompatible
set hlsearch
set incsearch
set mouse=a
set title
set cursorline

set tabstop=4
set softtabstop=4
set shiftwidth=4
set laststatus=2
set expandtab

set backupdir=$TMPDIR//
set directory=$TMPDIR//

"Highlight cursorline
highlight CursorLine cterm=NONE ctermbg=darkgrey

"Change cursor on mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"Remove delay switching to normal mode
set timeoutlen=1000 ttimeoutlen=0

"Show hidden characters
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»

"set wildignorecase
"set wildmode=full

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set backspace=indent,eol,start      "Make backspace behave like other editors.
let mapleader = ' '                 "Use ' ' instead of '\' as the <Leader>

syntax on
filetype indent plugin on

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"----------Mappings---------"

cmap Q q
cmap W w
cmap wQ wq
cmap Wq wq
cmap WQ wq
nmap <leader>p :Files<cr>
nmap <leader>u :UndotreeToggle <cr> <bar> :UndotreeFocus <cr>

