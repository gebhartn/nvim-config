local path = (...):gsub('%.init$', '')
local config = require('gebhartn.utils').config

local fn = vim.fn
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system {
        'git',
        'clone',
        '--depth',
        '1',
        'https://github.com/wbthomason/packer.nvim',
        install_path,
    }
end

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'L3MON4D3/LuaSnip'
    use {
        'neovim/nvim-lspconfig',
        requires = {
            'jose-elias-alvarez/nvim-lsp-ts-utils',
        },
    }
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'windwp/nvim-autopairs'
    use 'noahfrederick/vim-noctu'
    use {
        'nvim-treesitter/nvim-treesitter',
    }
    use 'nvim-lua/lsp-status.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
        },
    }
    use {
        'jose-elias-alvarez/null-ls.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'neovim/nvim-lspconfig',
        },
    }

    if packer_bootstrap then
        require('packer').sync()
    end

    require('packer').install()
end)

if not packer_bootstap then
    config 'nvim-cmp'
    config 'nvim-autopairs'
    config 'nvim-treesitter'
    config 'nvim-lspconfig'
end
