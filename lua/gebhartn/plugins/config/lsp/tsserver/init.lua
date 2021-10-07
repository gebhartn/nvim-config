local lsp = require 'lspconfig'
local tsutils = require 'nvim-lsp-ts-utils'

local M = {}

function M.setup(lsp_opts)
    lsp.tsserver.setup {
        init_options = {
            documentHighlight = false,
            publishDiagnostics = true,
        },
        capabilities = lsp_opts.capabilities,
        on_attach = function(client)
            if client.config.flags then
                client.config.flags.allow_incremental_sync = true
            end

            tsutils.setup {}

            client.resolved_capabilities.document_formatting = false
            lsp_opts.on_attach(client)
        end,
    }
end

return M
