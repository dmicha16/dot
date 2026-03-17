vim.lsp.config('ruff', {})

vim.lsp.config('basedpyright', {
  settings = {
    basedpyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { '*' },
      },
    },
  },
})

vim.lsp.enable('markdown_oxide')
