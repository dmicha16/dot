local opts = {noremap = ture, silent = true}

-- keymaps for fzf-lua
vim.keymap.set("n", "<c-P>",
  "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })

vim.keymap.set("n", "<c-B>",
  "<cmd>lua require('fzf-lua').buffers()<CR>", { silent = true })

vim.keymap.set("n", "<C-F>", function()
  require('fzf-lua').grep({
    search = '',  -- Leave empty to prompt for search input
    cmd = "rg --hidden --column --line-number --no-heading --color=always --smart-case"
  })
end, opts)

vim.keymap.set("n", "<C-K>", function()
  require('fzf-lua').grep_cword({
    search = '',  -- Leave empty to prompt for search input
    cmd = "rg --hidden --column --line-number --no-heading --color=always --smart-case"
  })
end, opts)


-- save all files and quit
vim.keymap.set("n", "<leader>qa", ":wa | qa<CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>wq', ':wa<CR>:qa<CR>', { noremap = true, silent = true })


-- center the screen after page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- remap gc in comment nvim to <leader>c
vim.api.nvim_set_keymap('v', '<leader>c', ':lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', opts)
-- Remap <leader>c to comment out the current line in normal mode
vim.api.nvim_set_keymap('n', '<leader>c', ':lua require("Comment.api").toggle.linewise.current()<CR>', opts)


-- persistance
-- restore the session for the current directory
vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>|<cmd>Neotree show<cr>]], {})


-- neogen
vim.api.nvim_set_keymap('n', '<leader>nd', ':Neogen<CR>', { noremap = true, silent = true })

-- lsp
vim.api.nvim_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)

-- restore the session for the current directory
vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {})
