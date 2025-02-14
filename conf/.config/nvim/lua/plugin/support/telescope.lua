-- telescope
return {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    cmd = "Telescope",
    keys = {
        {"<leader>ff", ":Telescope find_files<CR>", { desc = "Telescope find files"}},
        {"<leader>fg", ":Telescope live_grep<CR>", { desc = "Telescope live grep"}},
        {"<leader>fb", ":Telescope buffers<CR>", { desc = "Telescope buffers"}},
        {"<leader>fr", ":Telescope resume<CR>", { desc = "Telescope resume"}},
        {"<leader>fo", ":Telescope oldfiles<CR>", { desc = "Telescope oldfiles"}},
        {"<leader>fh", ":Telescope help_tags<CR>", { desc = "Telescope help tags"}},
    },

    dependencies = { 
        'nvim-lua/plenary.nvim' 
    },
}
