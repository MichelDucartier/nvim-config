-- Initialize vim shortcuts
vim.g.mapleader = " "

-- Set move line up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move up" })

-- Set move page up and down
vim.keymap.set("n", "<C-K>", "<PageUp>", { desc = "PageUp" })
vim.keymap.set("n", "<C-J>", "<PageDown>", { desc = "PageDown" })

-- Find references
vim.keymap.set('n', '<leader>fu', ':lua require("telescope.builtin").lsp_references()<CR>',
    { noremap = true, silent = true })

-- Show diagnostics
-- vim.keymap.set("n", "<C-S>", vim.diagnostic.open_float)

-- Refactoring
vim.keymap.set("x", "<leader>re", ":Refactor extract ")
vim.keymap.set("x", "<leader>rf", ":Refactor extract_to_file ")

vim.keymap.set("x", "<leader>rv", ":Refactor extract_var ")

vim.keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var")

vim.keymap.set("n", "<leader>rI", ":Refactor inline_func")

vim.keymap.set("n", "<leader>rb", ":Refactor extract_block")
vim.keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file")

-- Code actions
vim.keymap.set({ "n", "x" }, "<leader>ca", function()
    require("tiny-code-action").code_action()
end, { noremap = true, silent = true, desc = "Code actions" })

-- Toggle Copilot on/off
vim.keymap.set("n", "tc", function()
    if vim.g.copilot_enabled == 1 then
        vim.cmd("Copilot disable")
        vim.g.copilot_enabled = 0
        print("Copilot disabled")
    else
        -- load plugin if not yet loaded
        if not pcall(require, "copilot") then
            vim.cmd("Lazy load github/copilot.vim")
        end
        vim.cmd("Copilot enable")
        vim.g.copilot_enabled = 1
        print("Copilot enabled")
    end
end, { desc = "Toggle Copilot" })

-- Change Copilot accept key to Ctrl + Y
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-y>", 'copilot#Accept("<CR>")', { silent = true, expr = true, replace_keycodes = false })
