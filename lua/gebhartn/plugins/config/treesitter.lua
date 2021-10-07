local treesitter = require 'nvim-treesitter.configs'

treesitter.setup {
    ensure_installed = 'maintained',
    indent = { enable = true },
    highlight = {
        enable = true,
        use_languagetree = true,
    },
    autopairs = { enable = true },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },
}
