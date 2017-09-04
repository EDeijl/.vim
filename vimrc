execute pathogen#infect()

filetype on
filetype plugin on

syntax on
colorscheme Tomorrow-Night
set guifont=Fira\ Code:h14
set colorcolumn=90
set number
let mapleader=" "

map <leader>s :source ~/.vimrc<CR>
set hidden
set history=100

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

"autocmd BufWritePre * :%s/\s\+$//e

set hlsearch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

set showmatch

noremap <Leader>r :CommandTFlush<CR>

set wildignore+=*.log,*.sql,*.cache

set laststatus=2

let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFinder<CR>

let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

let g:gitgutter_sign_column_always=1
