local ts = require 'telescope'
local builtins = require 'telescope.builtin'
local utils = require 'gebhartn.utils'

local M = {}

M.setup = function()
    local ts = require 'telescope'
    local actions = require 'telescope.actions'
    ts.setup {
        defaults = {
            layout_strategy = 'horizontal',
            use_less = false,
            mappings = {
                i = {
                    ['<Esc>'] = actions.close,
                    ['<C-k>'] = actions.move_selection_previous,
                    ['<C-j>'] = actions.move_selection_next,
                },
            },
        },
    }
end

M.find_files = function()
    return utils.git_dir == 0 and builtins.git_files { previewer = false } or builtins.find_files {}
end

M.live_grep = function()
    builtin.live_grep {}
end

return M
