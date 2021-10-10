local M = {}

M.setup = function(lsp_opts)
    require('lspconfig').tsserver.setup {
        capabilities = lsp_opts.capabilities,
        on_attach = function(client)
            if client.config.flags then
                client.config.flags.allow_incremental_sync = true
            end

            local ts_utils = require 'nvim-lsp-ts-utils'

            ts_utils.setup {
                eslint_bin = 'eslint_d',
                eslint_enable_diagnostics = true,
            }

            ts_utils.setup_client(client)
            lsp_opts.on_attach(client)
        end,
    }
end

return M
