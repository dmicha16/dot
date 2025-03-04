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
-- focus/unfocus neotree
vim.keymap.set('n', '<leader>nt', ':Neotree<CR>', opts)

-- LSP
-- go to defintion
vim.keymap.set('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
-- open hover 
vim.keymap.set('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
-- rename symbol
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
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>")

-- indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- clear search highlight
vim.keymap.set("n", "<C-L>", ":nohl<CR>")

-- gitsigns blame single line
vim.api.nvim_create_user_command(
    'Blame', -- The custom command name
    function()
        vim.cmd('Gitsigns blame_line')
    end,
    { desc = 'Show blame information for the current line' }
)

-- Move selected text up/down
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")


-- Command to softwrap and unwrap text
vim.api.nvim_create_user_command("WrapMe", function()
  vim.opt.wrap = true
  vim.opt.breakindent = true
  vim.opt.breakindentopt = { "shift:2" }
  vim.opt.showbreak = '↪ '
  print("Wrap enabled")
end, {})

vim.api.nvim_create_user_command("Unwrap", function()
  vim.opt.wrap = false
  vim.opt.breakindent = false
  vim.opt.breakindentopt = {}
  vim.opt.showbreak = ''
  print("Wrap disabled")
end, {})


vim.api.nvim_set_keymap('n', '<Leader>b', ':call append(line("."), "")<CR>', { noremap = true, silent = true })

