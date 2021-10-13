local null_ls = require 'null-ls'

local M = {}

M.setup = function(lsp_opts)
    null_ls.config {
        sources = {
            null_ls.builtins.formatting.prettierd,
            null_ls.builtins.formatting.eslint_d,
            null_ls.builtins.formatting.clang_format,
            null_ls.builtins.formatting.goimports,
            null_ls.builtins.formatting.gofmt,
            null_ls.builtins.formatting.rustfmt,
            null_ls.builtins.formatting.stylua,
            null_ls.builtins.formatting.shfmt.with {
                args = { '-i', '2', '-ci' },
            },
            null_ls.builtins.formatting.rufo,
        },
    }

    require('lspconfig')['null-ls'].setup {
        on_attach = function(client)
            lsp_opts.on_attach(client)
        end,
    }
end

return M
