return {
	{
	  'nvim-telescope/telescope.nvim',
	  branch = '0.1.x',
	  dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons'
		}
	},
	{
	  'nvim-telescope/telescope-fzf-native.nvim',
	  build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release'
	}
}
