-- [ FORMATTING AND SYNTAX HIGHLIGHTING ]
vim.pack.add({ 
    "https://github.com/NMAC427/guess-indent.nvim", -- detect tabstop and shiftwidth automatically
    "https://github.com/nvim-treesitter/nvim-treesitter"
}) 

-- equivalent to :TSUpdate
require("nvim-treesitter.install").update("all")

require("nvim-treesitter.config").setup({
  sync_install = true,
  modules = {},
  ignore_install = {},
  ensure_installed = {
    "bash",
    "c",
    "diff",
    "html",
    "julia",
    "latex",
    "lua",
    "luadoc",
    "markdown",
    "markdown_inline",
    "python",
    "query",
    "r",
    "regex",
    "rnoweb",
    "vim",
    "vimdoc",
    "yaml",
  },
  auto_install = true,
  highlight = {
    enable = true,
  },
})