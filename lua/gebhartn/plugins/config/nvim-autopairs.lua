local autopairs = require 'nvim-autopairs'
local completion = require 'nvim-autopairs.completion.cmp'

autopairs.setup {}
completion.setup {
    map_cr = true,
    map_complete = true,
    auto_select = true,
}
