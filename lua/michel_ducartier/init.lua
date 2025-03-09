require("michel_ducartier.lazy")
require("michel_ducartier.remap")

-- Initialize tab configuration
vim.o.expandtab = true -- expand tab input with spaces characters
vim.o.smartindent = true -- syntax aware indentations for newline inserts
vim.o.tabstop = 4 -- num of space characters per tab
vim.o.shiftwidth = 4 -- spaces per indentation level

vim.o.number = true
vim.o.relativenumber = true

-- Change font
vim.cmd 'colorscheme catppuccin-frappe'
