-- autocommands

-- Function to unload a Lua module
local function unload_module(module_name)
  package.loaded[module_name] = nil
end

-- restore the session for the current directory
vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {})
