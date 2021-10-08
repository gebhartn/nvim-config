local path = (...):gsub('%.init$', '')

require(path .. '.autocmds')
require(path .. '.colorscheme')
require(path .. '.commands')
require(path .. '.compiler')
require(path .. '.keybindings')
require(path .. '.options')
require(path .. '.statusline')
