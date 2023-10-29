-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
--
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Git plugins
  use('tpope/vim-fugitive')
  use('airblade/vim-gitgutter')

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.4',
      requires = {
          {'nvim-lua/plenary.nvim'}, 
          {'BurntSushi/ripgrep'}
      }
  }

  use({ 'rose-pine/neovim', as = 'rose-pine' ,
  config = function()
      vim.cmd('colorscheme rose-pine')
  end
     })

     use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
     use('theprimeagen/harpoon')
     use('mbbill/undotree')

    -- LSP Servers    
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    -- LSP Support    
    use { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' }
    
    use {
        'neovim/nvim-lspconfig',
        requires = { {'hrsh7th/cmp-nvim-lsp'} }
    }

    -- Autocompletion
    use {
        'hrsh7th/nvim-cmp',
        requires = { {'L3MON4D3/LuaSnip'} }
    }
end)
