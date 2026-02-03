local M = {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
}

function M.config()
    require("bufferline").setup({
        options = {
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "Explorer",
                    highlight = "Directory",
                },
            },
        },
    })
end

return M
