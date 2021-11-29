call plug#begin()

" LSP

Plug 'neovim/nvim-lspconfig'
Plug 'mattn/vim-lsp-settings'

" Telescope

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Tree-Sitter

Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}

call plug#end()
