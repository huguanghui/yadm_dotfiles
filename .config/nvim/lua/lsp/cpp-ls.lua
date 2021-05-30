require'lspconfig'.clangd.setup {
    cmd = {DATA_PATH .. "/lspinstall/cpp/clangd/bin/clangd", "--background-index"},
    on_attach = require'lsp'.common_on_attach
}
