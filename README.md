## Neovim configuration

It's a configuration for neovim

### Quick Start

- Install [nvim-nightly](https://github.com/neovim/neovim/releases)
- Clone `git clone git@github.com:gebhartn/nvim-config ~/.config/nvim`
- Open once to bootstrap Packer
- Open again to install plugins
- Open AGAIN to install treesitter parsers
- Have fun

Use `:LspInfo` to see if servers are attached to the buffer, `:checkhealth` to see which executables (if any) are missing. If plugins are wild, `:PackerSync` and `:PackerCompile`.

### Assumptions

- Neovim nightly
- Install your own server binaries
- Install your own linting binaries

### Requirements

Tools/Languages:

- [Ripgrep](https://github.com/BurntSushi/ripgrep)
- [Node](https://nodejs.org/en/)
- [ts-node](https://github.com/TypeStrong/ts-node)
- [Rust](https://www.rust-lang.org/)
- [Golang](https://golang.org/)
- [Ruby](https://www.ruby-lang.org/en/)

Language Servers:

- [Rust Analyzer](https://github.com/rust-analyzer/rust-analyzer)
- [typescript-language-server](https://github.com/typescript-language-server/typescript-language-server)
- [gopls](https://github.com/golang/tools/tree/master/gopls)
- [sumneko_lua](<https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)>)
  [Solargraph](https://solargraph.org/guides/getting-started)

Linters/Formatters:

- [StyLua](https://github.com/JohnnyMorganz/StyLua)
- [eslint_d](https://github.com/mantoni/eslint_d.js/)
- [prettierd](https://github.com/fsouza/prettierd)
- [goimpots](https://pkg.go.dev/golang.org/x/tools/cmd/goimports)
- [gofmt](https://pkg.go.dev/cmd/gofmt)
- [rustfmt](https://github.com/rust-lang/rustfmt)
- [clang format (clang)](https://clang.llvm.org/)
- [shfmt](https://github.com/mvdan/sh)
- [Rufo](https://github.com/ruby-formatter/rufo)

### Caveats / Limitations

#### General:

Typically the language servers will attach to their relevant filetypes if you're in a git directory, but formatting should work based on the detected filetype. If you're getting weird linting behaviors, run `:set filetype?` and check the associated null-ls builtins. Also, the first run is a little bit iffy while you're bootstrapping, but should work.

#### TypeScript:

If you're using eslint plugins (react/typescript, airbnb config, etc) you need to have those plugins globally intalled along with your eslint_d binary. Also, stick to `eslint@7.32.0` if you're initializing a new project.

#### Lua:

The `lua-language-server` executable (as well as `main.lua`) needs to be in your `$PATH` and (probably) only works on Linux.

### Known Bugs

:)
