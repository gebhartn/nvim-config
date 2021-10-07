local eslint = {
    lintCommand = 'eslint_d -f unix --stdin --stdin-filename "${INPUT}"',
    lintIgnoreExitCode = true,
    lintStdin = true,
    lintFormats = { '%f:%l:%c: %m' },
    formatCommand = 'eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}',
    formatStdin = true,
}
local prettier = { formatCommand = 'prettierd "${INPUT}"', formatStdin = true }

local stylua = {
    formatCommand = 'stylua -s -',
    formatStdin = true,
}

local clang_format = { formatCommand = 'clang-format -style=LLVM ${INPUT}', formatStdin = true }

local goimports = { formatCommand = 'goimports', formatStdin = true }

local gofmt = {
    formatCommand = 'gofmt',
    formatStdin = true,
    lintCommand = 'golint',
    lintIgnoreExitCode = true,
    lintFormats = { '%f:%l:%c: %m' },
}

local rustfmt = {
    formatCommand = 'rustfmt --edition 2018',
    formatStdin = true,
    lintCommand = 'cargo clippy',
    lintFormats = { '%f:%l:%c: %m' },
}

return {
    cpp = { clang_format },
    css = { prettier },
    html = { prettier },
    javascript = { prettier, eslint },
    javascriptreact = { prettier, eslint },
    lua = { stylua },
    markdown = { prettier },
    scss = { prettier },
    typescript = { prettier },
    typescriptreact = { prettier, eslint },
    yaml = { prettier },
    rust = { rustfmt },
    go = { goimports, gofmt },
}
