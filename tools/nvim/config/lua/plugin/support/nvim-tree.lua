---@type nvim-tree.config
return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = true,
    tag = 'nightly',
    dependencies = {
        require("plugin/theme.nvim-web-devicons"),
        --"nvim-tree/nvim-web-devicons",
    },
    keys = {
        {"<leader>tt", ":NvimTreeToggle<CR>", { desc = ""}},
        {"<leader>tf", ":NvimTreeFindFile<CR>", { desc = ""}},
        {"<leader>tc", ":NvimTreeCollapse<CR>", { desc = ""}},
        {"<leader>tr", ":NvimTreeRefresh<CR>", { desc = ""}},
    };
    config = function()
        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- optionally enable 24-bit colour
        vim.opt.termguicolors = true

        -- empty setup using defaults
        require("nvim-tree").setup({
        })

        -- OR setup with some options
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
       })
    end,
}
