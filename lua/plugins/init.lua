return
{
	"folke/which-key.nvim",
	{	-- Paper color scheme
		'NLKNguyen/papercolor-theme',
		priority = 1000, -- make sure to load this before all the other plugins
		config = function()
			vim.g.PaperColor_Theme_Options = {
				theme= {
					default= {
						transparent_background= 1 
					}
				}
			}
			--load the colorscheme
			vim.cmd([[colorscheme PaperColor]])
		end
	},
	{	-- "gc" to comment visual regions/lines
	'numToStr/Comment.nvim', opts = {} 
	},
	{ 
		'echasnovski/mini.indentscope', 
		config = function() require('mini.indentscope').setup() 
		end 
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
	'lewis6991/gitsigns.nvim',
	'deoplete-plugins/deoplete-clang',

	-- lsp plugins for c/c++ enviroment
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	'neovim/nvim-lspconfig',
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-nvim-lsp'},
	'folke/neodev.nvim',
	'L3MON4D3/LuaSnip',
	'voldikss/vim-floaterm',

}
--closing brackets pluggin
--'szw/vim-maximizer'
