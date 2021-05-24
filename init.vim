set number
set relativenumber
set termguicolors
colorscheme desert
syntax on
set autoindent
set expandtab
set shiftwidth=4
set shiftround
set tabstop=4
set smarttab
set backspace=indent,eol,start
set scrolloff=10
set sidescrolloff=10
set cursorline
set nostartofline
set visualbell
set mouse=a
set autoread
set ttyfast
set lazyredraw
set hidden
set showmode
set showmatch

inoremap jj <ESC>

"""""""""""""""""""
" Plugins Go Here!"
"""""""""""""""""""
call plug#begin()
"Plug 'prabirshrestha/vim-lsp'
Plug 'neovim/nvim-lsp'
call plug#end()


