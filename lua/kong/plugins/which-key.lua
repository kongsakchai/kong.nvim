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
                    "<leader>[",
                    icon = "󰒮 ",
                },
                {
                    "<leader>]",
                    icon = "󰒭 ",
                },
                {
                    "<leader>c",
                    icon = " ",
                    group = "Code"
                },
                {
                    "<leader>e",
                    icon = "󰉋 "
                },
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
                {
                    "<leader>f",
                    group = "telescope",
                    icon = " "
                },
                {
                    "<leader>x",
                    group = "trouble",
                    icon = " "
                },
                {
                    "<leader>t",
                    group = "Terminal",
                },
                {
                    "<leader>l",
                    group = "LSP",
                    icon = "󰒋 "
                },
                {
                    "<leader>ld",
                    desc = "Definition",
                    icon = "󰊕 "
                },
                {
                    "<leader>lD",
                    desc = "Declaration",
                    icon = "󰊕 "
                },
                {
                    "<leader>lr",
                    desc = "References",
                    icon = "󰈇 "
                },
                {
                    "<leader>li",
                    desc = "Implementation",
                    icon = "󰡱 "
                },
                {
                    "<leader>lt",
                    desc = "Type Definition",
                    icon = "󰆧 "
                },
                {
                    "<leader>s",
                    group = "Split",
                    icon = " "
                },
                {
                    "<leader>s",
                    group = "Split horizontal",
                    icon = " "
                },
                {
                    "<leader>s",
                    group = "Split Vertical",
                    icon = " "
                },
            }
        }
    },
    keys = {
        {
            "<leader>b",
            group = "buffer",
            expand = function()
                return require("which-key.extras").expand.buf()
            end,
        },
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
}

return M
