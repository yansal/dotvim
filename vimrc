execute pathogen#infect()
syntax on
filetype plugin indent on

set hlsearch
set ignorecase
set smartcase

set tabstop=2
set shiftwidth=2

nnoremap <leader>n :set number!<return>
nnoremap <leader>p :set paste!<return>

let g:clang_format#command = "clang-format"
let g:go_fmt_command = "goimports"
