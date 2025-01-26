return {
    {
        "github/copilot.vim",
        lazy = true, -- Lazy load the plugin
        event = "InsertEnter", -- Load when entering insert mode
        config = function()
            -- Configure Copilot options here if needed
            vim.g.copilot_no_tab_map = true -- Disable default <Tab> mapping
	    -- Accept answer with CTRL+J in insert mode
            vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
            vim.g.copilot_filetypes = {
                ["*"] = true, -- Enable Copilot for all filetypes
            }
        end,
    },
}
