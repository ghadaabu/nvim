return
{
	"folke/which-key.nvim",
	{	-- Paper color scheme
		'NLKNguyen/papercolor-theme',
		priority = 1000, -- make sure to load this before all the other plugins
		config = function()
			--load the colorscheme
			vim.cmd([[colorscheme PaperColor]])
		end
	},
	{	-- "gc" to comment visual regions/lines
	'numToStr/Comment.nvim', opts = {} 
	},
	{
	-- Add indentation guides even on blank lines
		'lukas-reineke/indent-blankline.nvim',
		-- Enable `lukas-reineke/indent-blankline.nvim`
		-- See `:help ibl`
		main = 'ibl',
		opts = {},
		config = function()
			require("ibl").setup()
		end,
	},
	{   -- Highlight, edit, and navigate code
		'nvim-treesitter/nvim-treesitter',
		dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
		build = ':TSUpdate',
	},
	{	-- oil for tree explore
		'stevearc/oil.nvim',
		dependencies = { "nvim-tree/nvim-web-devicons" },
		lazy = false,
		config = function()
			require('oil').setup()
		end
	},
	'szw/vim-maximizer',
	{
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	'echasnovski/mini.surround',
	'numToStr/Navigator.nvim',
	'ojroques/nvim-osc52',
	{'ggandor/leap.nvim', lazy = false,},

}
--closing brackets pluggin
--'szw/vim-maximizer'
