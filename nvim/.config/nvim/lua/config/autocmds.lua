-- autocommands

-- Function to unload a Lua module
local function unload_module(module_name)
  package.loaded[module_name] = nil
end

-- Remove empty white spaces without moving the cursor
local function trim_trailing_whitespace()
  local pos = vim.api.nvim_win_get_cursor(0)  -- Get the current cursor position
  vim.cmd([[ %s/\s\+$//e ]])                  -- Remove trailing whitespace
  vim.api.nvim_win_set_cursor(0, pos)         -- Restore the cursor position
end

vim.api.nvim_create_augroup('TrimTrailingWhitespace', { clear = true })

vim.api.nvim_create_autocmd('BufWritePre', {
  group = 'TrimTrailingWhitespace',
  pattern = '*',
  callback = trim_trailing_whitespace
})


-- ensure proper indents for python files
vim.api.nvim_create_augroup('PythonIndent', { clear = true })

vim.api.nvim_create_autocmd('FileType', {
  group = 'PythonIndent',
  pattern = 'python',
  command = 'setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4'
})

