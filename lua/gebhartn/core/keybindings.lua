local utils = require 'gebhartn.utils'

vim.g.mapleader = ' '

-- Enter normal mode
utils.inoremap('jk', '<ESC>')

-- Map escape from terminal input to Normal mode
utils.tnoremap('<ESC>', [[<C-\><C-n>]])
utils.tnoremap('jk', [[<C-\><C-n>]])

-- Hide highlights
utils.nnoremap('<leader>n', ':noh<CR>')

-- Reload file
utils.nnoremap('<leader>r', ':e!<CR>')

-- LSP
utils.snnoremap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
utils.snnoremap('gf', '<cmd>lua vim.lsp.buf.formatting()<CR>')
utils.snnoremap('gr', '<cmd>lua vim.lsp.buf.references()<CR>')
utils.snnoremap('K', '<cmd>lua vim.lsp.buf.hover()<CR>')
utils.snnoremap('qf', '<cmd>lua vim.lsp.buf.code_action()<CR>')
utils.snnoremap('<leader>ll', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')
utils.snnoremap('<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
utils.snnoremap('<leader>j', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
utils.snnoremap('<leader>k', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')

-- Fuzzyfinding
utils.nnoremap('<C-p>', [[<cmd>lua require'gebhartn.plugins.nvim-telescope'.find_files()<CR>]])
utils.nnoremap('<C-g>', [[<cmd>lua require'gebhartn.plugins.nvim-telescope'.live_grep()<CR>]])

-- Completion
utils.iexnoremap('<Enter>', 'v:lua.smart_enter()')
utils.iexnoremap('<Tab>', 'v:lua.smart_tab()')

-- Run it
utils.nnoremap('=', '<cmd>lua require"gebhartn.core.compiler".compile_and_run()<CR>')

-- Create a new file adjacent to current buffer
utils.nnoremap('<leader>e', ':e <C-R>=expand("%:p:h") . "/" <CR>')

-- Ends my suffering
utils.nnoremap('q:', ':q')
