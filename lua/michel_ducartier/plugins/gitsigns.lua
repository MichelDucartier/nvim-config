return {
    "lewis6991/gitsigns.nvim",
    config = function()
        local gitsigns = require("gitsigns")

        gitsigns.setup({
            signs = {
                add          = { text = "│" },
                change       = { text = "│" },
                delete       = { text = "_" },
                topdelete    = { text = "‾" },
                changedelete = { text = "~" },
            },

            -- 🔥 Show deleted lines inline (very useful)
            show_deleted = false,

            -- Optional: blame info inline
            current_line_blame = false,
        })

        -- 🔑 Keymaps
        local keymap = vim.keymap

        -- Navigation
        keymap.set("n", "]c", gitsigns.next_hunk)
        keymap.set("n", "[c", gitsigns.prev_hunk)

        -- Actions
        keymap.set("n", "<leader>hp", gitsigns.preview_hunk) -- 👈 see old lines
        keymap.set("n", "<leader>hs", gitsigns.stage_hunk)
        keymap.set("n", "<leader>hr", gitsigns.reset_hunk)

        -- Bonus
        keymap.set("n", "<leader>hb", gitsigns.toggle_current_line_blame)

        keymap.set("n", "<C-h>", function()
            require("gitsigns").preview_hunk_inline()
        end)
    end
}
