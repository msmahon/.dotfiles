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
"set list
"set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»

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

call plug#end()

"----------Mappings---------"

nmap <leader>p :Files<CR>

"----------Auto-Commands-----"

"Change cursor on insert mode
"autocmd InsertEnter * highlight CursorLine cterm=NONE ctermbg=yellow
"autocmd InsertLeave * highlight CursorLine cterm=NONE ctermbg=darkgrey

