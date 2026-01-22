vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('options')
require('keymaps')
require('autocmds')
require('plugins.colorscheme')
require('plugins.treesitter')
require('plugins.quarto')

--helpful refs and links for this
--https://www.reddit.com/r/neovim/comments/1mpyc5o/minimal_neovim_v012_configuration/
--https://vieitesss.github.io/posts/Neovim-new-config/
--https://github.com/Hashino/minimal.nvim/blob/featureful/init.lua   this one has 3 versions to compare
