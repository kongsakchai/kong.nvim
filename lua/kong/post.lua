vim.cmd.colorscheme("catppuccin")
vim.cmd.highlight('DiagnosticVirtualTextOk guibg=#446644')

vim.lsp.config("gopls", {
    settings = {
        gopls = {
            semanticTokens = true,
        },
    },
})

vim.lsp.enable("gopls")
