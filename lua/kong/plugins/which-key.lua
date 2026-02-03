local M = {
    "folke/which-key.nvim",
    dependencies = { 'nvim-mini/mini.nvim', 'nvim-tree/nvim-web-devicons' },
    event = "VeryLazy",
    opts_extend = { "spec" },
    opts = {
        preset = "helix",
        defaults = {},
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        spec = {
            {
                mode = { "n", "x" },
                {
                    "<leader>b",
                    group = "buffer",
                    expand = function()
                        return require("which-key.extras").expand.buf()
                    end,
                },
                {
                    "<leader>w",
                    group = "windows",
                    proxy = "<c-w>",
                    expand = function()
                        return require("which-key.extras").expand.win()
                    end,
                },
            }
        }
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
        -- {
        --     "<leader>e",
        --     "<cmd>NvimTreeToggle<cr>",
        --     desc = "Explorer",
        --     mode = { "n" }
        -- },
    },
}

return M
