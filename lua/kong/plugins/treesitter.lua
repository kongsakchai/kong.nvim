local M = {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ":TSUpdate",
}

function M.config()
    require("nvim-treesitter.config").setup({
        ensure_installed = { "go", "gomod", "gosum" },
        highlight = { enable = true },
        indent = { enable = true },
        folds = { enable = true },
    })
end

return M
