# Neovim config by kong

## Install

```
git clone https://github.com/kongsakchai/kong.nvim ~/.config/nvim
```

## Setup LSP

- Add config to `treesitter.lua` and run `:TSUpdate`

```lua
ensure_installed = {
    "go",
    "gomod",
    "gosum",
    "svelte",
    "html",
    "css",
    "javascript",
    "typescript",
},
```

- Run `:Mason` and install dependency
- Add language plugin in `./lua/kong/lang`
