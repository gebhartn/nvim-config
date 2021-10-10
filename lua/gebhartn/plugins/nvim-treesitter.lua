require('nvim-treesitter.configs').setup {
    ensure_installed = 'maintained',
    indent = { enable = true },
    highlight = {
        enable = true,
        use_languagetree = true,
    },
    autopairs = { enable = true },
}
