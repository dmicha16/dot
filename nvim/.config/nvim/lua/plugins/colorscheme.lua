-- return {
--   "nyoom-engineering/oxocarbon.nvim"
--   -- Add in any other configuration; 
--   --   event = foo, 
--   --   config = bar
--   --   end,
-- }

-- return { "EdenEast/nightfox.nvim" }
-- return { "sainnhe/everforest" }
require('evergarden').setup({
  theme = {
    variant = 'spring', -- 'winter'|'fall'|'spring'|'summer'
    accent = 'green',
  },
  editor = {
    transparent_background = true,
    sign = { color = 'none' },
    float = {
      color = 'mantle',
      solid_border = false,
    },
    completion = {
      color = 'surface0',
    },
  },
})
return { "comfysage/evergarden"}
