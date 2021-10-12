local ts = require 'telescope'
local builtins = require 'telescope.builtin'
local actions = require 'telescope.actions'
local utils = require 'gebhartn.utils'

local M = {}

M.setup = function()
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

M.find_files_m = function()
    if utils.is_git_dir == 0 then
        builtins.git_files {}
    else
        builtins.find_files { previewer = false }
    end
end

M.live_grep = function()
    builtins.live_grep {}
end

return M
