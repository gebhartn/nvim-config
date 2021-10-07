local path = (...):gsub('%.init$', '')
local cmp = require 'cmp_nvim_lsp'

-- Diagnostics configuration
local diagnostics = vim.lsp.diagnostic.on_publish_diagnostics
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(diagnostics, {
    signs = true,
    virtual_text = true,
    update_in_insert = true,
    underline = true,
})

-- Shared 'on attach' functionality
local on_attach = function(client)
    if client.name ~= 'efm' then
        client.resolved_capabilities.document_formatting = false
    end

    if client.resolved_capabilities.document_formatting then
        vim.cmd [[
            augroup Format
                au! * <buffer>
                au BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 1200)
            augroup END
        ]]
    end
end

-- Completion
local capabilities = cmp.update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Linting
require(path .. '.efm').setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- Golang
require(path .. '.go').setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- Rust
require(path .. '.rust').setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- Typescript
require(path .. '.tsserver').setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
