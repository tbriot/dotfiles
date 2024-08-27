return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        -- Format code before writing the buffer to the file
        vim.api.nvim_create_autocmd({ "BufWritePre" }, {
            pattern = { "*.lua", "*.tf", "*.tfvars" },
            callback = function()
                vim.lsp.buf.format()
            end,
        })

        -- Enable the following language servers
        -- Feel free to add/remove any LSPs that you want here. They will automatically be installed
        local servers = { "lua_ls", "terraformls" }

        -- Setup mason so it can manage external tooling
        require('mason').setup()

        -- Ensure the servers above are installed
        require('mason-lspconfig').setup {
            ensure_installed = servers,
        }

        require('lspconfig').lua_ls.setup {}
        require('lspconfig').terraformls.setup {}
    end,
}
