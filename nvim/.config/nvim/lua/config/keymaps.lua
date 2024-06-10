local opts = {silent = true}

vim.keymap.set("n", "<c-P>",
  "<cmd>lua require('fzf-lua').files()<CR>", opts)

vim.keymap.set("n", "<c-F>",
  "<cmd>lua require('fzf-lua').grep_cword()<CR>", opts)

vim.keymap.set("n", "<c-B>",
  "<cmd>lua require('fzf-lua').buffers()<CR>", opts) 

vim.keymap.set("n", "<leader>qa", ":wa | qa<CR>", opts)

vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
