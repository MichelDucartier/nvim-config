-- Set move line up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move up" })

-- Set move page up and down
vim.keymap.set("n", "<C-K>", "<PageUp>", { desc = "PageUp" })
vim.keymap.set("n", "<C-J>", "<PageDown>", { desc = "PageDown" })

-- Code actions
-- Toggle Copilot on/off
-- vim.keymap.set("n", "tc", function()
--     if vim.g.copilot_enabled == 1 then
--         vim.cmd("Copilot disable")
--         vim.g.copilot_enabled = 0
--         print("Copilot disabled")
--     else
--         -- load plugin if not yet loaded
--         if not pcall(require, "copilot") then
--             vim.cmd("Lazy load github/copilot.vim")
--         end
--         vim.cmd("Copilot enable")
--         vim.g.copilot_enabled = 1
--         print("Copilot enabled")
--     end
-- end, { desc = "Toggle Copilot" })
--
-- -- Change Copilot accept key to Ctrl + Y
-- vim.g.copilot_no_tab_map = true
-- vim.api.nvim_set_keymap("i", "<C-y>", 'copilot#Accept("<CR>")', { silent = true, expr = true, replace_keycodes = false })
