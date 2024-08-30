require('lualine').setup {
  sections = {
    lualine_c = {
      { 'filename', path = 1 }  -- This will show the full path
    }
  }
}

