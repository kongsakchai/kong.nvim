local M = {
    'stevearc/conform.nvim',
    opts = {},
}

function M.config()
    require("conform").setup({
        format = {
            async = true,
            lsp_fallback = true
        },
        formatters_by_ft = {
            go = { "goimports", "gofumpt" },
            svelte = { "prettier" },
            typescript = { "prettier" },
        },
        format_on_save = {
            timeout_ms = 1000,
            lsp_format = "fallback",
        },
    })
end

return M
