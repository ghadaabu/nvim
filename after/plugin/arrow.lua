require('arrow').setup({
	show_icons = false,
	separate_by_branch = false,
	leader_key = ";",
	mappings = {
		edit = "e",
		delete_mode = "d",
		clear_all_items = "C",
		toggle = "s",
		open_vertical = "v",
		open_horizontal = "h",
		quit = "q",
		remove = "x",
	},
})
-- vim.keymap.set("n", "<leader>ha", require("arrow.persist").toggle)
vim.keymap.set("n", "<leader>ha", function()
	require("arrow.persist").toggle()
	local ans = "Removed file from arrow list"
	local is_arrow = require('arrow.statusline').is_on_arrow_file()
	if is_arrow then
		ans = "Added file to arrow list"
	end
	print(ans)
end,{ desc = "Add or remove file from arrow list"} )
