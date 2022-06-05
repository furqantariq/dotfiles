return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	
	use 'sainnhe/everforest'

	use {
		'feline-nvim/feline.nvim',
		requires = { 'lewis6991/gitsigns.nvim', 'kyazdani42/nvim-web-devicons' },
		config = "require'plugins.feline'"
	}

	use {
		'lewis6991/gitsigns.nvim',
		config = "require'plugins.gitsigns'"
	}

	use {
    		'kyazdani42/nvim-tree.lua',
    		requires = { 'kyazdani42/nvim-web-devicons' },
		config = "require'plugins.nvimtree'"
	}

	use {
		  "folke/which-key.nvim",
		  config = "require'plugins.whichkey'"
	}


end)
