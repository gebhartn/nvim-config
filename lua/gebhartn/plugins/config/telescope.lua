local ts = require 'telescope'
local actions = require 'telescope.actions'
local builtin = require 'telescope.builtin'
local utils = require 'gebhartn.utils'

ts.setup {
    defaults = {
        layout_strategy = 'horizontal',
        use_less = false,
        mappings = {
            i = {
                ['<Esc>'] = actions.close,
                ['<C-k>'] = actions.move_selection_previous,
                ['<C-k>'] = actions.move_selection_next,
            },
        },
    },
}

local M = {}

function M.find_files()
    if utils.git_dir == 0 then
        return builtin.git_files { previewer = false }
    else
        return builtin.find_files {}
    end
end

function M.live_grep()
    builtin.live_grep {}
end

return M
