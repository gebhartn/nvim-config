local config = require('gebhartn.utils').config

local fn = vim.fn
local execute = vim.api.nvim_command

local install_dir = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local packer_repo = 'https://github.com/wbthomason/packer.nvim'

local install_cmd = string.format('10split |term git clone --depth=1 %s %s', packer_repo, install_dir)
if fn.empty(fn.glob(install_dir)) > 0 then
    vim.api.nvim_echo({ { 'Installing packer.nvim', 'Type' } }, true, {})
    execute(install_cmd)
    execute 'packadd packer.nvim'
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

    require('packer').install()
end)

config 'nvim-cmp'
config 'nvim-autopairs'
config 'nvim-lspconfig'
config 'nvim-treesitter'
config('nvim-telescope').setup()
