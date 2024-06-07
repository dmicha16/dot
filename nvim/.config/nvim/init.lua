-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- load config
require("config.options")

require("config.lazy")
require("config.keymaps")

require("config.autocmds")
require("plugins.colorscheme")

require("plugins.neotree")

vim.cmd([[autocmd VimEnter * Neotree]])

-- enable the colorscheme
vim.cmd("colorscheme kanagawa")
