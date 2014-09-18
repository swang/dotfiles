syntax on
autocmd Filetype gitcommit setlocal spell textwidth=72

set number
set ruler

" on save, clean up lines that are just empty spaces
autocmd BufWritePre * :%s/\s\+$//e
