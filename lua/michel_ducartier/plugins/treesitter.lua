return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local builtin = require('nvim-treesitter.configs')
        builtin.setup({
            ensure_installed = { "lua", "rust", "python", "markdown" }
        })
    end
}
