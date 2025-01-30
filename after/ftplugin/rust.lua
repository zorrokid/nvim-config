local bufnr = vim.api.nvim_get_current_buf()

-- show code actions in a floating window
vim.keymap.set("n", "<leader>a", 
  function()
    vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
    --vim.lsp.buf.codeAction() --if you don't want grouping.
  end,
  { silent = true, buffer = bufnr }
)

vim.keymap.set("n", "K",  -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp({'hover', 'actions'})
  end,
  { silent = true, buffer = bufnr }
)

vim.keymap.set("n", "K",  -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp({'hover', 'actions'})
  end,
  { silent = true, buffer = bufnr }
)

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { silent = true, buffer = true })

vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { buffer = true })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { buffer = true })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { buffer = true })

-- Navigate to definition
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = true, silent = true })

-- Navigate to implementation
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = true, silent = true })

-- Show references
vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = true, silent = true })

-- Go to type definition
vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, { buffer = true, silent = true })

