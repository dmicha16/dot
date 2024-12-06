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

-- vim.api.nvim_create_augroup('TrimTrailingWhitespace', { clear = true })

-- vim.api.nvim_create_autocmd('BufWritePre', {
--   group = 'TrimTrailingWhitespace',
--   pattern = '*',
--   callback = trim_trailing_whitespace
-- })


-- ensure proper indents for python files
vim.api.nvim_create_augroup('PythonIndent', { clear = true })

vim.api.nvim_create_autocmd('FileType', {
  group = 'PythonIndent',
  pattern = 'python',
  command = 'setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4'
})

-- ensure proper syntax highlight for yml, sls and yaml files
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = {'*.yml', '*.sls', '*.yaml'},
  command = "set syntax=yaml"
})
--
-- ensure proper syntax highlight for yml, sls and yaml files
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = {'*syslog*'},
  command = "set syntax=log"
})

-- ensure proper indents for yaml files
vim.api.nvim_create_augroup('YamlIndent', { clear = true })

vim.api.nvim_create_autocmd('FileType', {
  group = 'YamlIndent',
  pattern = {'*.yml', '*.sls', '*.yaml'},
  command = 'setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 autoindent'
})

-- automatically resize splits when window is resized
vim.api.nvim_create_augroup('AutoResizeSplits', { clear = true })

vim.api.nvim_create_autocmd('VimResized', {
  group = 'AutoResizeSplits',
  pattern = '*',
  command = 'wincmd ='
})

-- highlight yanked text
vim.api.nvim_create_augroup('HighlightYank', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
  group = 'HighlightYank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({ higroup = 'IncSearch', timeout = 200 })
  end
})

-- show absolute line numbers in inactive windows
vim.api.nvim_create_augroup('RelativeLineNumbers', { clear = true })

vim.api.nvim_create_autocmd({'BufEnter', 'FocusGained', 'InsertLeave'}, {
  group = 'RelativeLineNumbers',
  pattern = '*',
  command = 'set relativenumber'
})

vim.api.nvim_create_autocmd({'BufLeave', 'FocusLost', 'InsertEnter'}, {
  group = 'RelativeLineNumbers',
  pattern = '*',
  command = 'set norelativenumber'
})
