-- Initialize vim shortcuts
vim.g.mapleader = " "

-- Set move line up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move up" })

-- Set move page up and down
vim.keymap.set("n", "<C-K>", "<PageUp>", { desc = "PageUp" })
vim.keymap.set("n", "<C-J>", "<PageDown>", { desc = "PageDown" })

-- Code actions
vim.keymap.set("n", "<leader>ca", function()
    require("tiny-code-action").code_action()
end, { noremap = true, silent = true, desc = "Code action" })
