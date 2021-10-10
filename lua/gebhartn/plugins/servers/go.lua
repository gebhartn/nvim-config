local M = {}

M.setup = function(lsp_opts)
    require('lspconfig').gopls.setup {
        capabilities = lsp_opts.capabilities,
        on_attach = function(client)
            lsp_opts.on_attach(client)
            vim.wo.list = false
        end,
        cmd = { 'gopls', 'serve' },
        settings = {
            gopls = {
                analyses = {
                    unusedparams = false,
                },
                staticcheck = true,
            },
        },
    }
end

return M
