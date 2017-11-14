execute pathogen#infect()

filetype on
filetype plugin on

syntax on
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
    set termguicolors
endif
set background=dark
colorscheme one
set guifont=Fira\ Code:h14
set colorcolumn=90
set number
let mapleader=" "

map <leader>s :source ~/vim/vimrc<CR>
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

set signcolumn=yes

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Yank text to the OSX clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OSX clipboard
noremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>

let g:ruby_host_prog = '~/.rbenv/versions/2.0.0-p648/bin/neovim-ruby-host'
