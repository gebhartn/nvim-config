### Neovim configuration

It's a configuration for neovim

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

Language Servers:

- [Rust Analyzer](https://github.com/rust-analyzer/rust-analyzer)
- [typescript-language-server](https://github.com/typescript-language-server/typescript-language-server)
- [gopls](https://github.com/golang/tools/tree/master/gopls)

Linters/Formatters:

- [StyLua](https://github.com/JohnnyMorganz/StyLua)
- [eslint_d](https://github.com/mantoni/eslint_d.js/)
- [prettierd](https://github.com/fsouza/prettierd)
- [goimpots](https://pkg.go.dev/golang.org/x/tools/cmd/goimports)
- [gofmt](https://pkg.go.dev/cmd/gofmt)
- [rustfmt](https://github.com/rust-lang/rustfmt)
- [clang format (clang)](https://clang.llvm.org/)

### Caveats / Limitations

If you're using eslint plugins (react/typescript, airbnb config, etc) you need to have those plugins globally intalled along with your eslint_d binary. Also, stick to `eslint@7.32.0` if you're initializing a new project.

### Known Bugs

- ~~Oct 10, 2021 - eslint_d can't resolve plugin dependencies even if they're installed globally~~
- Oct 10, 2021 - Packer bootstrapping isn't super smooth, have to open vim a few times to get it working
