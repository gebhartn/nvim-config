local path = (...):gsub('%.init$', '')
local format = require(path .. '.format')

local lsp = require 'lspconfig'

local M = {}

function M.setup(lsp_opts)
    lsp.efm.setup {
        capabilities = lsp_opts.capabilities,
        on_attach = function(client)
            client.resolved_capabilities.document_formatting = true, lsp_opts.on_attach(client)
        end,
        init_options = { documentFormatting = true, codeAction = true },
        filetypes = vim.tbl_keys(format),
        settings = {
            rootMarkers = { '.git/' },
            languages = format,
        },
    }
end

return M
