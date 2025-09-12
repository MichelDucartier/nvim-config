require("lspconfig").qmlls.setup {
    cmd = { 'qmlls6', "-E" },
    filetypes = { 'qml', 'qmljs' },
    single_file_support = true,
    root_dir = function()
        return vim.fn.getcwd()
    end
}

-- vim.lsp.enable("qmlls")
