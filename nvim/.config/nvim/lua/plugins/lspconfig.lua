vim.lsp.config('ruff', {})

vim.lsp.config('ty', {
  settings = {
    ty = {
      -- ty language server settings go here
    }
  }
})

-- Required: Enable the language servers
vim.lsp.enable('ty')
vim.lsp.enable('markdown_oxide')
