syntax on

set nocompatible 
set noerrorbells
set number
set relativenumber
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set scrolloff=999

set nowrap

" 80 character line limit by default
set colorcolumn=80

" 90 character line limit for Rust code
autocmd BufNewFile,BufRead *.rs setlocal colorcolumn=90

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/keybindings/keybindings.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/vim_test.vim
source ~/.config/nvim/fugitive.git

