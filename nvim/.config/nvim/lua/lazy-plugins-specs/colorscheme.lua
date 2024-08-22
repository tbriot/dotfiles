return {
    {
	"catppuccin/nvim",
	enabled = false, -- I prefer 'habamax' built-in neovim color scheme
	name = "catppuccin",
	priority = 1000,
	opts = {
		flavour = "mocha",
		show_end_of_buffer = true,
	},
	config = function(_, opts)
		require("catppuccin").setup(opts)
		vim.cmd.colorscheme "catppuccin"
    	end,
    }
}
