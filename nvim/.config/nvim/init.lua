-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- load config
require("config.options")

require("config.lazy")

require("plugins.colorscheme")
require("plugins.neotree")
require("plugins.persistence")
require("plugins.fzf-lua")
require("plugins.lualine")
require("plugins.indent")
require("plugins.treesitter")

-- open Neotree on startup, but keep focus on files with 'show'
vim.cmd([[autocmd VimEnter * Neotree show]])

-- enable the colorscheme
vim.cmd("colorscheme kanagawa")

require("config.autocmds")
require("config.keymaps")
