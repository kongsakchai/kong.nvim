local M = {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        "mason-org/mason.nvim",
        "neovim/nvim-lspconfig",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
}

function M.config()
    require("mason").setup()
    require("mason-lspconfig").setup({
        ensure_installed = {
            "gopls",
            "svelte",
            "ts_ls",
        }
    })

    require("mason-tool-installer").setup({
        ensure_installed = {
            "goimports",
            "gofumpt",
            "prettier",
        },
        auto_update = true,
    })
end

return M
