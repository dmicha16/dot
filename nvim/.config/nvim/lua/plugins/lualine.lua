require('lualine').setup {
  sections = {
    lualine_a = { { function() return vim.fn.winnr() end, icon = '' } }, -- This will show the window number
    lualine_c = {
      { 'filename', path = 1 }  -- This will show the full path
    }
  }
}

