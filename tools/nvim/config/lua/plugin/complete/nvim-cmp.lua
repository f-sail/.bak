return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-vsnip",
        "hrsh7th/vim-vsnip",
    },
    config = function()
        local cmp = require ("cmp")
        cmp.setup ({
            -- 指定 snippet 引擎
            snippet = {
                expand = function (args)
                    -- For `vsnip` users.
                    vim.fn ["vsnip#anonymous"](args.body)

                    -- For `luasnip` users.
                    -- require ('luasnip'). lsp_expand (args. body)

                    -- For `ultisnips` users.
                    -- vim. fn ["UltiSnips#Anon"](args.body)

                    -- For `snippy` users.
                    -- require'snippy'. expand_snippet (args. body)
                end,
            },
            -- 补全源
            sources = cmp.config.sources ({
                { name = "nvim_lsp" },

                -- For vsnip users.
                { name = "vsnip" },

                -- For luasnip users.
                -- { name = 'luasnip' },

                --For ultisnips users.
                -- { name = 'ultisnips' },

                -- -- For snippy users.
                -- { name = 'snippy' },
            }, { { name = "buffer" }, { name = "path" } }),

            -- 快捷键设置
            mapping = {
                -- 出现补全
                ["<A-.>"] = cmp.mapping (cmp.mapping.complete (), {"i", "c"}),
                -- 取消补全
                ["<A-,>"] = cmp.mapping ({
                    i = cmp.mapping.abort (),
                    c = cmp.mapping.close ()
                }),
                -- 上一个
                ["<C-p>"] = cmp. mapping. select_prev_item (),
                -- 下一个
                ["<C-n>"] = cmp. mapping. select_next_item (),
                ["<Tab>"] = cmp. mapping. select_next_item (),
                -- 确认
                ["<CR>"] = cmp.mapping.confirm ({
                    select = true,
                    behavior = cmp. ConfirmBehavior. Replace
                }),
                ["<Space>"] = cmp.mapping.confirm ({
                    select = true,
                    behavior = cmp. ConfirmBehavior. Replace
                }),
                -- 如果窗口内容太多，可以滚动
                -- ["<C-mp>"] = cmp.mapping (cmp. mapping. scroll_docs (-4), {"i", "c"}),
                -- ["<C-mn>"] = cmp.mapping (cmp. mapping. scroll_docs (4), {"i", "c"}),
            }
        })

        -- / 查找模式使用 buffer 源
        cmp.setup.cmdline ("/", {
            mapping = cmp.mapping.preset.cmdline (),
            sources = {
                { name = "buffer" },
            },
        })

        -- : 命令行模式中使用 path 和 cmdline 源.
        cmp.setup.cmdline (": ", {
            mapping = cmp.mapping.preset.cmdline (),
            sources = cmp.config.sources ({
                { name = "path" },
            }, {
                { name = "cmdline" },
            }),
        })
    end
}
