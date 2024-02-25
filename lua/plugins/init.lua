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
		'numToStr/Comment.nvim', opts = {} },
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
		require('oil').setup({
			keymaps = {
    			["g?"] = "actions.show_help",
    			["<CR>"] = "actions.select",
    			["<C-s>"] = "actions.select_vsplit",
    			["<C-h>"] = "actions.select_split",
    			["<C-t>"] = "actions.select_tab",
    			["<C-p>"] = "actions.preview",
    			["<C-c>"] = "actions.close",
    			["<C-l>"] = "actions.refresh",
    			["-"] = "actions.parent",
    			["_"] = "actions.open_cwd",
				["`"] = "actions.cd",
    			["~"] = "actions.tcd",
    			["gs"] = "actions.change_sort",
    			["gx"] = "actions.open_external",
    			["gh"] = "actions.toggle_hidden",
    			["g\\"] = "actions.toggle_trash",
			},
			-- Configuration for the floating keymaps help window
			keymaps_help = {
    			border = "rounded",
			},
			-- Set to false to disable all of the above keymaps
			use_default_keymaps = true,
			view_options = {
			-- Show files and directories that start with "."
			show_hidden = true,
			-- This function defines what is considered a "hidden" file
			is_hidden_file = function(name, bufnr)
			  return vim.startswith(name, ".")
			end,
			-- This function defines what will never be shown, even when `show_hidden` is set
			is_always_hidden = function(name, bufnr)
			  return false
			end,
			sort = {
			-- sort order can be "asc" or "desc"
			-- see :help oil-columns to see which columns are sortable
			{ "type", "asc" },
			{ "name", "asc" },
				},
			},

			-- Configuration for the actions floating preview window
			preview = {
				-- Width dimensions can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
				-- min_width and max_width can be a single value or a list of mixed integer/float types.
				-- max_width = {100, 0.8} means "the lesser of 100 columns or 80% of total"
				max_width = 0.9,
				-- min_width = {40, 0.4} means "the greater of 40 columns or 40% of total"
				min_width = { 40, 0.4 },
				-- optionally define an integer/float for the exact width of the preview window
				width = nil,
				-- Height dimensions can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
				-- min_height and max_height can be a single value or a list of mixed 
				-- integer/float types.
				-- max_height = {80, 0.9} means "the lesser of 80 columns or 90% of total"
				max_height = 0.9,
				-- min_height = {5, 0.1} means "the greater of 5 columns or 10% of total"
				min_height = { 5, 0.1 },
				-- optionally define an integer/float for the exact height of the preview window
				height = nil,
				border = "rounded",
				win_options = { winblend = 0, },
				-- Whether the preview window is automatically updated when the cursor is moved
				update_on_cursor_moved = true,
			},
		}) 
		end
	},
	'szw/vim-maximizer',
	{
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

	--{
		-- tree
		--'nvim-tree/nvim-tree.lua',
		--requires = 'nvim-tree/nvim-web-devicons',
		--sort = {sorter = "case_sensitive",},
		--view = {width = 30,},
		--renderer = {group_empty = true,},
		--filters = {dotfiles = true,},
	--},
}
--minisrround
--closing brackets pluggin
--'szw/vim-maximizer'
