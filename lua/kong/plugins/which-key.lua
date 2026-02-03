local M = {
    "folke/which-key.nvim",
    dependencies = { 'nvim-mini/mini.nvim', 'nvim-tree/nvim-web-devicons' },
    event = "VeryLazy",
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
        {
            "<leader>e",
            "<cmd>NvimTreeToggle<cr>",
            desc = "Explorer",
            mode = { "n" }
        }
    },
}

return M
