require("yanky").setup({
    preserve_cursor_position = {
        enabled = true,
    },
})

require("gitsigns").setup()

require('log-highlight').setup {}

-- dashboard plugin
require('alpha').setup(require'alpha.themes.startify'.config)

require('rainbow-delimiters.setup').setup()
