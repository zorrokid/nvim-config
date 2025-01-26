-- File: ~/.config/nvim/lua/plugins/nerdtree.lua
return {
    {
        "preservim/nerdtree",
        lazy = true, -- Lazy load the plugin
        cmd = { "NERDTreeToggle", "NERDTreeFind" }, -- Commands that trigger loading
        keys = {
            { "<leader>n", ":NERDTreeToggle<CR>", desc = "Toggle NERDTree" },
            --{ "<leader>nf", ":NERDTreeFind<CR>", desc = "Find file in NERDTree" },
        },
        config = function()
            -- Configure NERDTree options here if needed
            vim.g.NERDTreeShowHidden = 1 -- Show hidden files
        end,
    },
}

