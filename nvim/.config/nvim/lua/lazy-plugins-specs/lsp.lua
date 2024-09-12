return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        -- Format code before writing the buffer to the file
        vim.api.nvim_create_autocmd({ "BufWritePre" }, {
            pattern = { "*.lua", "*.tf", "*.tfvars", "*.json", "*.yaml", "*.yml", "*.py", "*.sh", "*.bash" },
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
        local servers = { "lua_ls", "terraformls", "jsonls", "yamlls", "gitlab_ci_ls", "bashls" }

        -- Setup mason so it can manage external tooling
        require('mason').setup()

        -- Ensure the servers above are installed
        require('mason-lspconfig').setup {
            ensure_installed = servers,
        }

        require('lspconfig').lua_ls.setup {}
        require('lspconfig').terraformls.setup {}
        require('lspconfig').yamlls.setup {
            filetypes = { "yaml", "yaml.docker-compose" }
        }
        require('lspconfig').pyright.setup {}
        require('lspconfig').gitlab_ci_ls.setup {}
        require('lspconfig').bashls.setup {}
        --Enable (broadcasting) snippet capability for completion
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = true

        require 'lspconfig'.jsonls.setup {
            capabilities = capabilities,
        }
    end,
}
