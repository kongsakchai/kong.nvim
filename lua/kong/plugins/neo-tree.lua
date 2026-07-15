local M = {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false,                      -- neo-tree will lazily load itself
}

function M.config()
    require("neo-tree").setup({
        window = {
            mappings = {
                ["<space>"] = false,
            }
        }
    })
end

return M
