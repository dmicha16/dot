-- Function to unload a Lua module
local function unload_module(module_name)
  package.loaded[module_name] = nil
end

-- Function to reload Lua configuration modules
local function reload_config()
  -- Specify the modules you want to reload, e.g., 'config.settings'
  local modules_to_reload = {
    'config.options',
    'config.keymaps'
  }
  -- Unloading and reloading each module
  for _, module in ipairs(modules_to_reload) do
    unload_module(module)
    require(module)
  end
  print("Configuration reloaded!")
end

-- Set up the autocmd
vim.api.nvim_create_autocmd("BufWritePost", {
    -- Adjust the pattern to match the path to your lua/config directory
    pattern = "*/lua/config/*",
    callback = reload_config,
})

