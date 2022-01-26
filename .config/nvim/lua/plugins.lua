vim.cmd([[
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
"""""Coloscheme"""""
Plug 'dikiaap/minimalist'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'
Plug 'christianchiarulli/nvcode-color-schemes.vim'

"""""File Navigator"""""
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"""""Syntax Highlighting"""""""""""
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'pantharshit00/vim-prisma'
Plug 'jparise/vim-graphql'

"""""Code Completion"""""
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-clangd', 'coc-eslint', 'coc-html-css-support', 'coc-python', 'coc-sql', 'coc-rome', 'coc-graphql', 'coc-prisma']

"""Code Snippet"""
Plug 'SirVer/ultisnips'
Plug 'epilande/vim-react-snippets'

"""""Status/Tabline for vim"""""
Plug 'vim-airline/vim-airline'

"""""Git"""""
Plug 'airblade/vim-gitgutter'

"""""MISC"""""
Plug 'jiangmiao/auto-pairs'

" Initialize plugin system
call plug#end()
]])
