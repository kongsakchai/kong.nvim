local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Explorer
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Explorer" })

-- Next Tab
keymap("n", "<leader>[", "<cmd>bprevious<cr>", { desc = "Tab previous" })
keymap("n", "<leader>]", "<cmd>bnext<cr>", { desc = "Tab Next" })

-- Split
keymap("n", "<leader>ss", "<cmd>sp<cr>", { desc = "Split" })
keymap("n", "<leader>sv", "<cmd>vsp<cr>", { desc = "Split Vertical" })

-- Terminal
keymap("n", "<leader>tt", "<cmd>ToggleTerm direction=horizontal<cr>", {
    desc = "Terminal"
})
keymap("n", "<leader>t<tab>", "<cmd>ToggleTerm direction=tab<cr>", {
    desc = "Terminal Tab"
})
keymap("t", "<Esc>", "<C-\\><C-n>", {
    desc = "Exit terminal mode",
})

-- Resize
keymap("n", "<C-Up>", "<cmd>resize +2<cr>", {
    desc = "Increase window height",
})
keymap("n", "<C-Down>", "<cmd>resize -2<cr>", {
    desc = "Decrease window height",
})
keymap("n", "<S-Left>", "<cmd>vertical resize -2<cr>", {
    desc = "Decrease window width",
})
keymap("n", "<S-Right>", "<cmd>vertical resize +2<cr>", {
    desc = "Increase window width",
})
