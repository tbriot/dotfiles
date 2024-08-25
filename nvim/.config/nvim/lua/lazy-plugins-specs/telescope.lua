return {
	  {
	  'nvim-telescope/telescope.nvim',
	  branch = '0.1.x',
	  dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons'
	  },
      config = function()
        local builtin = require('telescope.builtin')
        
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.git_branches, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>fm', builtin.marks, {})
        -- List Built-in pickers
        vim.keymap.set('n', '<leader>fp', builtin.builtin, {})
        -- List buffers
        vim.keymap.set('n', '<leader>fw', builtin.buffers, {})
      end
	},
	{
	  'nvim-telescope/telescope-fzf-native.nvim',
	  build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release'
	}
}
