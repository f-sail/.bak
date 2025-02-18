---@type mason.config
return {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    opts = {
        pip = {
            upgrade_pip = false,
            install_args = pip_args,
        },
        ui = {
            border = "single",
            width = 0.6,
            height = 0.8,
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
        },
    },
}
