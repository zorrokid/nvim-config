require("config.lazy")

require("lazy").setup({
    spec = {
        { import = "plugins.nerdtree" },
        { import = "plugins.copilot" },
        { import = "plugins.nvim-cmp" },
        { import = "plugins.rustacean" },
    },
})
