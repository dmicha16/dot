-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set('n', '<C-w>v', ':vsplit<CR>', { noremap = true })

vim.lsp.set_log_level("debug")

-- load config
require("config.options")

require("config.lazy")

-- load plugins
require("plugins.colorscheme")
require("plugins.neotree")
require("plugins.persistence")
require("plugins.fzf-lua")
require("plugins.lualine")
require("plugins.indent")
require("plugins.treesitter")
require("plugins.comment")
require("plugins.neogen")
require("plugins.hop")
require("plugins.utils")
require("plugins.lspconfig")
require("plugins.grug-far")

-- open Neotree on startup, but keep focus on files with 'show'
vim.cmd([[autocmd VimEnter * Neotree show]])

-- enable the colorscheme
-- vim.cmd("colorscheme dawnfox")
vim.cmd("colorscheme evergarden")
vim.cmd("COQnow --shut-up")

-- load autocmds and keymaps
require("config.autocmds")
require("config.keymaps")
