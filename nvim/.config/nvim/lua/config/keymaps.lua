local opts = {noremap = true, silent = true}

-- Keymaps for fzf-lua
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

-- Neogen
vim.keymap.set('n', '<leader>nd', ':Neogen<CR>', opts)

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
vim.keymap.set("n", "<C-Up>", ":resize -10<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +10<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize +10<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize -10<CR>")

-- tabs
vim.keymap.set("n", "<leader>nt", function()
  -- Open a new tab
  vim.cmd("tabnew")
  vim.cmd("enew")

  -- Open Neo-tree
  vim.cmd("Neotree toggle")

end, opts)

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

-- Helper to set buffer-local wrapped-movement mappings
local function set_wrap_mappings(buf, enable)
  if enable then
    -- j/k move by screen lines when no count; counts still use real lines
    vim.keymap.set({'n','x','o'}, 'j', function()
      return vim.v.count == 0 and 'gj' or 'j'
    end, { buffer = buf, expr = true, silent = true, desc = 'j by screen line when wrapped' })

    vim.keymap.set({'n','x','o'}, 'k', function()
      return vim.v.count == 0 and 'gk' or 'k'
    end, { buffer = buf, expr = true, silent = true, desc = 'k by screen line when wrapped' })

    -- Optional: make 0/$ act on screen line starts/ends
    vim.keymap.set({'n','x','o'}, '0', 'g0', { buffer = buf, silent = true, desc = 'Start of screen line' })
    vim.keymap.set({'n','x','o'}, '$', 'g$', { buffer = buf, silent = true, desc = 'End of screen line' })
  else
    -- Remove the buffer-local mappings when unwrapping
    pcall(vim.keymap.del, {'n','x','o'}, 'j', { buffer = buf })
    pcall(vim.keymap.del, {'n','x','o'}, 'k', { buffer = buf })
    pcall(vim.keymap.del, {'n','x','o'}, '0', { buffer = buf })
    pcall(vim.keymap.del, {'n','x','o'}, '$', { buffer = buf })
  end
end

-- Command to enable soft wrap + nice visuals + screen-line movement
vim.api.nvim_create_user_command('WrapMe', function()
  vim.opt_local.wrap = true
  vim.opt_local.linebreak = true         -- wrap at word boundaries
  vim.opt_local.breakindent = true       -- keep indentation on wrapped segments
  vim.opt_local.breakindentopt = { 'shift:2' }
  vim.opt_local.showbreak = '↪ '         -- indicator for wrapped segments (pick what you like)
  set_wrap_mappings(0, true)
  print('Wrap enabled')
end, {})

-- Command to disable soft wrap and restore normal movement
vim.api.nvim_create_user_command('UnwrapMe', function()
  vim.opt_local.wrap = false
  -- reset visuals (optional—comment out if you want to keep them)
  vim.opt_local.linebreak = false
  vim.opt_local.breakindent = false
  vim.opt_local.breakindentopt = {}
  vim.opt_local.showbreak = ''
  set_wrap_mappings(0, false)
  print('Wrap disabled')
end, {})

-- Single toggle of Wrap
vim.api.nvim_create_user_command('WrapToggle', function()
  local enabled = vim.wo.wrap
  if enabled then
    vim.cmd('UnwrapMe')
  else
    vim.cmd('WrapMe')
  end
end, {})

-- Disable the wrapping
vim.api.nvim_create_user_command("Unwrap", function()
  vim.opt.wrap = false
  vim.opt.breakindent = false
  vim.opt.breakindentopt = {}
  vim.opt.showbreak = ''
  print("Wrap disabled")
end, {})


-- unsure
vim.api.nvim_set_keymap('n', '<Leader>b', ':call append(line("."), "")<CR>', { noremap = true, silent = true })

-- grug-far search and replace
vim.keymap.set('n', '<leader>rs', function()
    require('grug-far').open({ 
        prefills = { 
            search = vim.fn.expand("<cword>") 
        } 
    })
end, { desc = 'Grug-far: search current word' })

-- search and replace only in current file
vim.keymap.set('n', '<leader>rsf', function()
    require('grug-far').open({
        prefills = {
            search = vim.fn.expand("<cword>"),
            paths = vim.fn.expand("%")
        }
    })
end, { desc = "Grugfar: Search current word in current file" })

