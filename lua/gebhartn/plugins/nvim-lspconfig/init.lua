local path = (...):gsub('%.init%', '')
local attach_server = require(path .. '.on_attach').attach_server

local diagnostics = vim.lsp.diagnostic.on_publish_diagnostics

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(diagnostics, {
    signs = true,
    virtual_text = false,
    update_in_insert = true,
    underline = true,
})

attach_server 'tsserver'
attach_server 'go'
attach_server 'rust'
attach_server 'null'
