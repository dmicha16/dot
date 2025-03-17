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

local lspconfig = require('lspconfig')

-- Function to detect Python version
local function get_python_version()
  local handle = io.popen('python -c "import sys; print(sys.version_info.major); print(sys.version_info.minor)"')
  if not handle then
    return nil
  end
  local major = handle:read("*l")
  local minor = handle:read("*l")
  handle:close()
  return tonumber(major), tonumber(minor)
end

-- Function to setup LSP based on Python version
local function setup_lsp()
  local major, minor = get_python_version()
  if major == 2 and minor == 7 then
    -- Setup basedpyright for Python 2.7
    lspconfig.basedpyright.setup {
      settings = {
        basedpyright = {
          disableOrganizeImports = true,
          disableTaggedHints = true,
          typeCheckingMode = 'off',
        },
      },
    }
  else
    -- Setup ruff for other Python versions
    lspconfig.ruff.setup({
      init_options = {
        settings = {
          -- Ruff language server settings go here
        }
      }
    })
  end
end

-- Call the setup function
setup_lsp()

require("plugins.lint")

-- open Neotree on startup, but keep focus on files with 'show'
vim.cmd([[autocmd VimEnter * Neotree show]])

-- enable the colorscheme
vim.cmd("colorscheme evergarden")

-- load autocmds and keymaps
require("config.autocmds")
require("config.keymaps")
