local path = (...):gsub('%.init$', '')

local packer = require 'packer'

packer.startup(function()
    use 'jose-elias-alvarez/nvim-lsp-ts-utils'
    use 'windwp/nvim-autopairs'
    use 'wbthomason/packer.nvim'
    use 'L3MON4D3/LuaSnip'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    use 'noahfrederick/vim-noctu'
    use 'nvim-lua/lsp-status.nvim'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'nvim-treesitter/nvim-treesitter'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
    }
end)

require(path .. '.config.treesitter')
require(path .. '.config.nvim-cmp')
require(path .. '.config.nvim-autopairs')
require(path .. '.config.lsp')
require(path .. '.config.telescope')
