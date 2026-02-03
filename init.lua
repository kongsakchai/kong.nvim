require("kong.core.options")
require("kong.core.spec")
require("kong.core.keymaps")

-- Spec
spec("kong.plugins.autocomplete")
spec("kong.plugins.bufferline")
spec("kong.plugins.colorscheme")
-- spec("kong.plugins.flash")
spec("kong.plugins.formatting")
spec("kong.plugins.lspconfig")
spec("kong.plugins.lualine")
spec("kong.plugins.mason")
spec("kong.plugins.mini-pairs")
spec("kong.plugins.noice")
spec("kong.plugins.nvim-tree")
-- spec("kong.plugins.snack")
spec("kong.plugins.telescope")
spec("kong.plugins.toggleterm")
spec("kong.plugins.treesitter")
spec("kong.plugins.trouble")
spec("kong.plugins.which-key")

-- Lang
spec("kong.lang.go")

require("kong.lazy")
require("kong.post")
