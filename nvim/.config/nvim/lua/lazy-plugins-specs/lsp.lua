return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        -- Format code before writing the buffer to the file
        vim.api.nvim_create_autocmd({ "BufWritePre" }, {
            pattern = { "*.lua", "*.tf", "*.tfvars", "*.json", "*.yaml", "*.yml", "*.py", "*.sh", "*.bash", "*.md", "*.go" },
            callback = function()
                vim.lsp.buf.format()
            end,
        })

        -- Set file type for gitlab files
        vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
            pattern = "*.gitlab-ci*.{yml,yaml}",
            callback = function()
                vim.bo.filetype = "yaml.gitlab"
            end,
        })

        -- Enable the following language servers
        -- Feel free to add/remove any LSPs that you want here. They will automatically be installed
        local servers = { "lua_ls", "terraformls", "jsonls", "yamlls", "gitlab_ci_ls", "bashls", "gopls" }

        -- Setup mason so it can manage external tooling
        require('mason').setup()

        -- Ensure the servers above are installed
        require('mason-lspconfig').setup {
            ensure_installed = servers,
        }

        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        for _, lsp in ipairs(servers) do
            require('lspconfig')[lsp].setup {
                capabilities = capabilities,
            }
        end

        require('lspconfig').lua_ls.setup {
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        -- Get the language server to recognize the `vim` global
                        globals = { 'vim' },
                    },
                },
            },
        }
    end,
}
