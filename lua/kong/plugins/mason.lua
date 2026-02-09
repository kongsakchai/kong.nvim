local M = {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        "mason-org/mason.nvim",
        "neovim/nvim-lspconfig",
    },
}

function M.config()
    require("mason").setup()
    require("mason-lspconfig").setup({
        ensure_installed = {
            "gopls",
            "goimports",
            "gofumpt",
            "svelte",
            "ts_ls",
            "prettier"
        }
    })
end

return M
