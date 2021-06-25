set number
set relativenumber
syntax on
set autoindent
set expandtab
set shiftwidth=4 
set shiftround 
set tabstop=4
set smarttab
set showtabline=2
set laststatus=2
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
inoremap jk <ESC>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tt :tabedit<CR>
nnoremap !@ :MtaJumpToOtherTag<cr>

call plug#begin()
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'
Plug 'ncm2/ncm2-jedi'
Plug 'Shougo/neosnippet.vim'
Plug 'ncm2/ncm2-neosnippet'
Plug 'ncm2/ncm2-tern', {'do': 'npm install'}
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Badacadabra/vim-archery'
Plug 'https://github.com/adelarsq/vim-matchit'
"Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'alvan/vim-closetag'
call plug#end()

let g:completion_enable_auto_hover = 1

let g:lsp_settings = {
\  'clangd': {'cmd': ['clangd-13']},
\  'efm-langserver': {'disabled': v:false}
\}


""""""AIR-LINE SETTINGS""""""
"""""""""""""""""""""""""""""
colo archery
hi Normal guibg=NONE ctermbg=NONE
let g:airline_theme = 'archery'
let g:airline#extensions#tabline#enabled = 1

""""""""VIM JSX PRETTY"""""""
"""""""""""""""""""""""""""""
let g:vim_jsx_pretty_colorful_config = 0 " default 0

""""""""VIM CLOSETAGS""""""""
"""""""""""""""""""""""""""""
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *.js'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'



set termguicolors

colorscheme hybrid_material

