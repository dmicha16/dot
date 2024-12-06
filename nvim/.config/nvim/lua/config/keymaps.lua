local opts = {noremap = true, silent = true}

-- Keymaps for fzf-lua
--
vim.keymap.set("n", "<c-P>", function()
  require('fzf-lua').files({case_mode ="smart"})
end, { silent = true })

vim.keymap.set("n", "<c-B>", function()
  require('fzf-lua').buffers()
end, { silent = true })

vim.keymap.set("n", "<C-F>", function()
  require('fzf-lua').grep({
    search = '',  -- Leave empty to prompt for search input
    cmd = "rg --hidden --column --line-number --no-heading --color=always --smart-case --glob '!**/.git/**'"
  })
end, opts)


vim.keymap.set("n", "<C-K>", function()
  require('fzf-lua').grep_cword({
    search = '',  -- Leave empty to prompt for search input
    cmd = "rg --hidden --column --line-number --no-heading --color=always --smart-case"
  })
end, opts)

vim.keymap.set("n", "<C-J>", function()
  require('fzf-lua').lgrep_curbuf({
  })
end, opts)

vim.keymap.set("n", "<C-G>", function()
  require('fzf-lua').resume({
  })
end, opts)

vim.keymap.set("n", "<C-S>", function()
  require('fzf-lua').git_status({
  })
end, opts)


-- Save all files and quit
--
vim.keymap.set("n", "<leader>qa", ":wa | qa<CR>", opts)
vim.keymap.set("n", "<leader>wq", ":wa<CR>:qa<CR>", opts)

-- Center the screen after page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Persistence
-- Restore the session for the current directory
vim.keymap.set("n", "<leader>qs", function()
  require("persistence").load()
  vim.cmd('Neotree show')
end, opts)

-- Neogen
vim.keymap.set('n', '<leader>nd', ':Neogen<CR>', opts)

-- Neotree
vim.keymap.set('n', '<leader>nt', ':Neotree<CR>', opts)

-- LSP
vim.keymap.set('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)


-- Keymap for highlighting all text in a file with Ctrl+A
vim.keymap.set('n', '<C-a>', 'ggVG', opts)

-- preserve cursor location on yank
vim.keymap.set({"n","x"}, "y", "<Plug>(YankyYank)")


-- Hop related settings
vim.keymap.set('n', "<leader>d", ":HopWord<CR>", opts)

-- panes
-- vim.keymap.del('n', '<C-h>')
vim.keymap.set('n', "<C-h>", "<C-w>h", opts)
vim.keymap.set('n', "<C-l>", "<C-w>l", opts)

-- resizing panes
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- clear search highlight
vim.keymap.set("n", "<C-L>", ":nohl<CR>")
