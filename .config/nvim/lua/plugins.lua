vim.cmd([[
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
"""""Coloscheme"""""
Plug 'dikiaap/minimalist'
Plug 'dracula/vim', { 'as': 'dracula' }

"""""File Navigator"""""
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

"""""Syntax Highlighting"""""""""""
"""Typescript""""""""""""""""""""""
"Plug 'leafgarland/typescript-vim'"
"Plug 'ianks/vim-tsx'             "
"""""""""""""""""""""""""""""""""""
"""Javascript"""
"Plug 'pangloss/vim-javascript'    
"Plug 'mxw/vim-jsx'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"""""Code Completion"""""
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-clangd', 'coc-eslint', 'coc-html-css-support', 'coc-python', 'coc-sql']
Plug 'alvan/vim-closetag'

"""""Status/Tabline for vim"""""
Plug 'vim-airline/vim-airline'

"""""Git"""""
Plug 'airblade/vim-gitgutter'

"""""MISC"""""
Plug 'jiangmiao/auto-pairs'

" Initialize plugin system
call plug#end()
]])
