return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim"        -- optional - Diff integration
  },
  config = function()
    local neogit = require("neogit")
    local telescope = require("telescope.builtin")
    neogit.setup({
      graph_style = "unicode",
    })

    ---@param key string
    ---@param cmd string|fun():nil
    ---@param desc string
    local map = function(key, cmd, desc)
      vim.keymap.set("n", key, cmd, { desc = "Git: " .. desc })
    end

    ---@param key string
    ---@param opt table
    ---@param desc string
    local mapneogit = function(key, opt, desc)
      -- stylua: ignore
      map(key, function() neogit.open(opt) end, desc)
    end

    mapneogit("<leader>gs", {}, "[G]it [S]tatus")
    mapneogit("<leader>gc", { "commit" }, "[G]it [C]ommit")
    mapneogit("<leader>gl", { "log" }, "[G]it [L]og")
    mapneogit("<leader>gp", { "pull" }, "[G]it [p]ull")
    mapneogit("<leader>gP", { "push" }, "[G]it [P]ush")
    mapneogit("<leader>gb", { "branch" }, "[G]it [B]ranch")
    
    -- Diffview
    vim.keymap.set("n", "<leader>gd", ":DiffviewOpen<CR>", {})
    vim.keymap.set("n", "<leader>gh", ":DiffviewFileHistory<CR>", {})
  end,
}
