local M = {
    'stevearc/conform.nvim',
    opts = {},
}

function M.config()
    require("conform").setup({
        formatters_by_ft = {
            go = { "goimports", "gofumpt" },
        },
        format_on_save = {
            timeout_ms = 300,
            lsp_format = "fallback",
        },
    })
end

return M
