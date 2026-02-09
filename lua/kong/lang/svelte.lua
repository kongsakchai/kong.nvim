local M = {
    "evanleck/vim-svelte",
    dependencies = { -- optional packages
        "pangloss/vim-javascript",
        "othree/html5.vim",
    },
}

vim.lsp.config("svelte", {
    on_attach = function(client, bufnr)
        -- ตั้งค่า keybinding สำหรับ organize imports
        vim.keymap.set('n', '<leader>cf', function()
            vim.lsp.buf.code_action({
                context = { only = { 'source.organizeImports' } },
                apply = true
            })
        end, { buffer = bufnr, desc = 'Organize Imports' })
    end,
})

return M
