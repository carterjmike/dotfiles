-- [ COLORSCHEME ]
vim.pack.add({ "https://github.com/webhooked/kanso.nvim" })
require('kanso').setup({
    background = {
        dark = "zen",
        light = "pearl"
    },
    foreground = "default",      -- "default" or "saturated"
})
vim.cmd.colorscheme("kanso")

--vim.pack.add({"https://github.com/rebelot/kanagawa.nvim"})
--vim.cmd.colorscheme("kanagawa-dragon")