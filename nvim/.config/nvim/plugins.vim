call plug#begin()

" Code Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Fugitive
Plug 'tpope/vim-fugitive'

" Testing
Plug 'vim-test/vim-test'

" Terminal
Plug 'kassio/neoterm'

" Easy Motion
Plug 'easymotion/vim-easymotion'

call plug#end()
