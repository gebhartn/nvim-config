local ts = require 'telescope'
local actions = require 'telescope.actions'
local builtin = require 'telescope.builtin'

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

function M.git_files()
    builtin.git_files { previewer = false }
end

function M.live_grep()
    builtin.live_grep {}
end

return M
