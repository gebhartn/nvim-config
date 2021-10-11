local ts = require 'telescope'
local builtins = require 'telescope.builtin'
local actions = require 'telescope.actions'
local utils = require 'gebhartn.utils'

local M = {}

M.setup = function()
    ts.setup {
        defaults = {
            --layout_strategy = 'horizontal',
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

M.find_files_m = function()
    if utils.get_dir == 0 then
        builtins.find_files { previewer = false }
    else
        builtins.git_files {}
    end
end

M.live_grep = function()
    builtin.live_grep {}
end

return M
