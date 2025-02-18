return {
    "rmagatti/goto-preview",
    event = "BufEnter",
    keys = {
        -- nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>
        -- nnoremap gpt <cmd>lua require('goto-preview').goto_preview_type_definition()<CR>
        -- nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>
        -- nnoremap gpD <cmd>lua require('goto-preview').goto_preview_declaration()<CR>
        -- nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>
        -- nnoremap gpr <cmd>lua require('goto-preview').goto_preview_references()<CR>
        { "gd", mode = { "n" }, function() require("goto-preview").goto_preview_definition() end, desc = "" },
        { "gt", mode = { "n" }, function() require("goto-preview").goto_preview_type_definition() end, desc = "" },
        { "gi", mode = { "n" }, function() require("goto-preview").goto_preview_implementation() end, desc = "" },
        { "gD", mode = { "n" }, function() require("goto-preview").goto_preview_declaration() end, desc = "" },
        { "gr", mode = { "n" }, function() require("goto-preview").goto_preview_references() end, desc = "" },
        { "gc", mode = { "n" }, function() require("goto-preview").close_all_win() end, desc = "" },
    },
    config = function()
        require('goto-preview').setup {
            -- Width of the floating window
            width = 120,

            -- Height of the floating window
            height = 15,

            -- Border characters of the floating window
            border = {"↖", "─" ,"┐", "│", "┘", "─", "└", "│"},

            -- Bind default mappings
            default_mappings = false,

            -- Print debug information
            debug = false,

            -- 0-100 opacity level of the floating window where 100 is fully transparent.
            opacity = nil,

            -- Binds arrow keys to resizing the floating window.
            resizing_mappings = false,

            -- A function taking two arguments, a buffer and a window to be ran as a hook.
            post_open_hook = nil,

            -- A function taking two arguments, a buffer and a window to be ran as a hook.
            post_close_hook = nil,

            -- Configure the telescope UI for slowing the references cycling window.
            references = {
                telescope = require("telescope.themes").get_dropdown({ hide_preview = false })
            },

            -- These two configs can also be passed down to the goto-preview definition and implementation calls for one off "peak" functionality.
            focus_on_open = true,       -- Focus the floating window when opening it.
            dismiss_on_move = false,    -- Dismiss the floating window when moving the cursor.

            -- passed into vim.api.nvim_win_close's second argument. See :h nvim_win_close
            force_close = true,

            -- the bufhidden option to set on the floating window. See :h bufhidden
            bufhidden = "wipe",

            -- Whether to nest floating windows
            stack_floating_preview_windows = true,

            -- Whether to open a new floating window for a reference within the current file
            same_file_float_preview = true,

            -- Whether to set the preview window title as the filename
            preview_window_title = { enable = true, position = "left" },

            -- Starting zindex for the stack of floating windows
            zindex = 1,
        }
    end
}
