local actions = require 'telescope.actions'

require('telescope').setup {
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
