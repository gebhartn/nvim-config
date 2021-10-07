-- Trim hanging whitespace
vim.cmd [[au BufWritePre * %s/\s\+$//e]]

-- TSConfig is actually jsonc, stop whining about comments
vim.cmd [[autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc]]
