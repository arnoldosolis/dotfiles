vim.cmd([[
"""General"""
syntax on
set mouse=a
set nu
set guicursor=
set shiftwidth=2
"""Theme"""
"colorscheme dracula
"colorscheme onedark
" configure nvcode-color-schemes
let g:nvcode_termcolors=256

syntax on
colorscheme onedark " Or whatever colorscheme you make


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" Trigger configuration (Optional)
let g:UltiSnipsExpandTrigger="<C-l>"

]])

require 'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = {},
        },
    indent = {
        enable = false,
        disable = {},
        },
    ensure_installed = {
    "tsx",
    "toml",
    "json",
    "yaml",
    "html",
    "scss",
    "css",
    "javascript",
    "cpp",
    "c",
    "python",
    "go"
    }
}
