-- require('lualine').setup {
--   sections = {
--     lualine_a = { { function() return vim.fn.winnr() end, icon = '' } }, -- This will show the window number
--     lualine_c = {
--       { 'filename', path = 1 }  -- This will show the full path
--     }
--   }
-- }


require('lualine').setup {
  sections = {
    lualine_a = { { function() return vim.fn.winnr() end, icon = '' } },
    lualine_b = {},
    lualine_c = { 'branch' },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {} -- Ensure this is explicitly empty
  },
  winbar = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { { 'filename', path = 1 } },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  inactive_winbar = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { { 'filename', path = 1 } },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  }
}


