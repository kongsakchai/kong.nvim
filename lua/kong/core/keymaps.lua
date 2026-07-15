local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Explorer
-- keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Explorer" })
keymap("n", "<leader>e", "<Cmd>Neotree toggle<CR>")


-- Tab
keymap("n", "<leader>[", "<cmd>bprevious<cr>", { desc = "Tab previous" })
keymap("n", "<leader>]", "<cmd>bnext<cr>", { desc = "Tab Next" })
keymap("n", "<leader>bd", function()
    local bufs = vim.fn.getbufinfo({ buflisted = 1 })
    if #bufs > 1 then
        vim.cmd("bp|bd #")
    else
        vim.cmd("bd")
    end
end)

-- Window
keymap("n", "<leader><Left>", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<leader><Right>", "<C-w>l", { desc = "Move to right window" })
keymap("n", "<leader><Down>", "<C-w>j", { desc = "Move to lower window" })
keymap("n", "<leader><Up>", "<C-w>k", { desc = "Move to upper window" })

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
keymap("n", "<S-Up>", "<cmd>resize +2<cr>", {
    desc = "Increase window height",
})
keymap("n", "<S-Down>", "<cmd>resize -2<cr>", {
    desc = "Decrease window height",
})
keymap("n", "<S-Left>", "<cmd>vertical resize -2<cr>", {
    desc = "Decrease window width",
})
keymap("n", "<S-Right>", "<cmd>vertical resize +2<cr>", {
    desc = "Increase window width",
})
