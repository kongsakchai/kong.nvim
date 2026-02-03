local M = {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        "mason-org/mason.nvim",
        "neovim/nvim-lspconfig",
    },
}

function M.config()
    require("mason").setup({
        ensure_installed = { "gopls", "goimports", "gofumpt" }
    })
    require("mason-lspconfig").setup()
end

return M
