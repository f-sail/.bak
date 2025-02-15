---@type nvim-lspconfig.config
return {
    "neovim/nvim-lspconfig",
    event = {
        "BufReadPost",
        "BufNewFile" ,
    },
    cmd = {
        "LspInfo",
        "LspInstall",
        "LspUninstall",
    },
    dependencies = {
        { "rmagatti/goto-preview", event = "VeryLazy" },
    },
    config = function()
        -- local lspconfig = require("lspconfig")
        -- lspconfig["lua_ls"].setup()
        -- lspconfig["clangd"].setup()
        require("lspconfig").lua_ls.setup{}
        require("lspconfig").clangd.setup({
            cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
            init_options = {
                fallbackFlags = { '-std=c++17' },
            },
        })
    end
}
