vim.cmd([[
"""General"""
syntax on
set mouse=a
set nu
set guicursor=
"""Theme"""
"colorscheme dracula
colorscheme onedark
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
