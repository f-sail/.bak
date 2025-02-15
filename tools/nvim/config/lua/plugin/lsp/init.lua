---@type lsp.init
return {
    mason = require("plugin/lsp.mason"),
    mason_lspconfig = require("plugin/lsp.mason-lspconfig"),
    lspconfig = require("plugin/lsp.nvim-lspconfig"),
}
