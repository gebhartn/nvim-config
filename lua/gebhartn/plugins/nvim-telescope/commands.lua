local builtins = require 'telescope.builtin'
local utils = require 'gebhartn.utils'

local M = {}

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
