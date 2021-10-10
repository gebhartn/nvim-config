local attach_server_with = require('gebhartn.utils').attach_server_with
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    signs = true,
    virtual_text = false,
    update_in_insert = true,
    underline = true,
})

local on_attach = function(client)
    if client.name ~= 'null-ls' then
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.range_formatting = false
    end

    client.resolved_capabilities.document_highlighting = false

    vim.cmd [[
        augroup HoverDiagnostics
            au!
            au CursorHold <buffer> lua vim.lsp.diagnostic.show_line_diagnostics({ focusable = false })
        augroup END
    ]]

    if client.resolved_capabilities.document_formatting then
        vim.cmd [[
            augroup Format
                au! * <buffer>
                au BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 1000)
            augroup END
        ]]
    end
end

local attach_server = attach_server_with(on_attach, capabilities)

attach_server 'servers.tsserver'
attach_server 'servers.go'
attach_server 'servers.rust'
attach_server 'servers.null'
