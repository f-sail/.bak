---@type theme.init
return {
    airline = require("plugin.theme.airline"),
    colorscheme = {
        vscode = {"Mofiqul/vscode.nvim", event = {"VimEnter"}},
        monokai = {"tanvirtin/monokai.nvim", event = {"VimEnter"}},
        darkplus = { "lunarvim/darkplus.nvim", event = {"VimEnter"}},
    },
}
