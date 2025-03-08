vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	--or
	requires = { {'nvim-lua/plenary.nvim'} } 
  }
  use ('Tsuzat/NeoSolarized.nvim')
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('theprimeagen/harpoon') 
  use ('nvim-tree/nvim-tree.lua')
  use ('nvim-tree/nvim-web-devicons')
  use ('craftzdog/solarized-osaka.nvim')
  use ('jose-elias-alvarez/null-ls.nvim')
  use ('folke/which-key.nvim')
  use {
  	'NeogitOrg/neogit',
  	 dependencies = {
    		"nvim-lua/plenary.nvim",
    		"sindrets/diffview.nvim",
  	},
   }
   use ('tpope/vim-fugitive')
  
    use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
      }
end)
