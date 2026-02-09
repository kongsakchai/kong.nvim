vim.lsp.config("ts_ls", {
    on_attach = function(client, bufnr)
        -- Remove Unused Imports
        vim.keymap.set('n', '<leader>cf', function()
            vim.lsp.buf.code_action({
                context = {
                    only = { 'source.removeUnused' },
                    diagnostics = {}
                },
                apply = true
            })

            vim.defer_fn(function()
                vim.lsp.buf.code_action({
                    context = {
                        only = { 'source.organizeImports' },
                        diagnostics = {}
                    },
                    apply = true
                })
            end, 200)
        end, { buffer = bufnr, desc = 'Organize Imports' })
    end,
})

return {}
