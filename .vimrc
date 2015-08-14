syntax on
autocmd Filetype gitcommit setlocal spell textwidth=72

set number
set ruler

" fix backspace/delete problems
set backspace=indent,eol,start

set expandtab
set shiftwidth=2
set autoindent
set smartindent

" on save, clean up lines that are just empty spaces
autocmd BufWritePre * :%s/\s\+$//e
