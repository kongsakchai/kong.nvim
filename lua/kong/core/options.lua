local opt = vim.opt

--- file & safety
opt.backup = false      -- creates a backup file
opt.swapfile = false    -- creates a swapfile
opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.undofile = true     -- save undo history

--- clipboard & mouse
opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
opt.mouse = "a"               -- allow the mouse to be used in neovim

--- search
opt.ignorecase = true -- ignore case in search patterns
opt.smartcase = true  -- smart case
opt.hlsearch = true   -- highlight all matches on previous search pattern

--- indent & space
opt.expandtab = false  -- convert tabs to spaces
opt.shiftwidth = 4     -- the number of spaces inserted for each indentation
opt.tabstop = 4        -- insert n spaces for a tab
opt.smartindent = true -- make indenting smarter again

--- ui
opt.number = true         -- set numbered lines
opt.relativenumber = true -- set relative numbered lines
opt.numberwidth = 4       -- set number column width to 2 {default 4}
opt.signcolumn = "yes"    -- always show the sign column, otherwise it would shift the text each time
opt.cursorline = true     -- highlight the current line
opt.termguicolors = true  -- set term gui colors (most terminals support this)

--- style
opt.wrap = true      -- display lines as one long line
opt.conceallevel = 0 -- so that `` is visible in markdown files

--- split
opt.splitbelow = true -- force all horizontal splits to go below current window
opt.splitright = true -- force all vertical splits to go to the right of current window

--- cmp
opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
