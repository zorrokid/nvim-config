local bufnr = vim.api.nvim_get_current_buf()

print("Rust-specific configuration loaded!")

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


