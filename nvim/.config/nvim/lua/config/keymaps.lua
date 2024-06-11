local opts = {silent = true}

-- keymaps for fzf-lua
vim.keymap.set("n", "<c-P>", "<cmd>lua require('fzf-lua').files()<CR>", opts)

vim.keymap.set("n", "<c-F>", "<cmd>lua require('fzf-lua').grep_cword()<CR>", opts)

vim.keymap.set("n", "<c-B>", "<cmd>lua require('fzf-lua').buffers()<CR>", opts) 

-- save all files and quit
vim.keymap.set("n", "<leader>qa", ":wa | qa<CR>", opts)

-- center the screen after page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- persistance
-- restore the session for the current directory
vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>|<cmd>Neotree show<cr>]], {})
