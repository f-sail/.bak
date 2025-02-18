local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- BufRead      当读取一个已存在的文件时触发。
-- BufNewFile   当创建一个新文件时触发。
-- BufWritePost 当文件被写入后触发。
-- FileType     当文件类型被设置时触发。
-- InsertEnter  当进入插入模式时触发。
-- VimEnter     当 Neovim 完全启动后触发。
-- BufAdd       当缓冲区被添加时触发。
-- CursorHold   当光标在一个位置停留一段时间后触发。
-- CmdlineEnter 当进入命令行模式时触发。
-- VeryLazy

require("lazy").setup({

-- theme
    -- airline
    require("plugin.theme").airline,

    -- colorscheme                                               
        require("plugin.theme").colorscheme.vscode,
        --require("../plugin.theme").colorscheme.monokai,
        --require("../plugin.theme").colorscheme.darkplus,

-- support 
    -- flash
    require("plugin.support").flash,

    -- telescope
    require("plugin.support").telescope,

    -- nvim-tree
    require("plugin.support").tree,


-- lsp
    -- mason    
    require("plugin.lsp").mason,

    -- mason-lspconfig
    require("plugin.lsp").mason_lspconfig,

    -- nvim-lspconfig
    require("plugin.lsp").lspconfig,


-- cmp
    -- nvim-cmp
    require("plugin.complete").cmp,

--[[
	-- Vscode-like pictograms
	{"onsails/lspkind.nvim", event = { "VimEnter" }},

	-- Auto-completion engine
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"lspkind.nvim",
			"hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
			"hrsh7th/cmp-nvim-lua", -- 
			"hrsh7th/cmp-buffer", -- buffer auto-completion
			"hrsh7th/cmp-path", -- path auto-completion
			"hrsh7th/cmp-cmdline", -- cmdline auto-completion
		},
		config = function()
            require("..plugin.nvim-cmp")
        end,
	},

	-- Code snippet engine
	{"L3MON4D3/LuaSnip", version = "v2.*"},

    -- autopairs 
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/nvim-cmp",  -- 确保已经安装了 nvim-cmp
        },
        config = true
        --config = function()
        --    require("..plugin.nvim-autopairs")  -- 调用 autopairs.lua 文件中的配置
        --end,
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
-- tag
    -- nvim-tree
    {
        "nvim-tree/nvim-tree.lua",
        envent = {"VeryLazy"},
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("..plugin.nvim-tree")
        end,
    },
    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        envent = {"VimEnter"},
        config = function()
            require("..plugin.nvim-treesitter")
        end,
        --ensure_installed = require("..plugin.nvim-treesitter").ensure_installed,


    },
--]]

})
