-- vim.api.nvim_set_keymap('n', '<leader>x', ':Vexplore<CR>', { noremap = true, silent = true })

-- vim.keymap.set("i", "<C-i>", "<Esc>")
vim.keymap.set("i", "ii", "<Esc>")

vim.keymap.set("n", "<leader>d", "dd")
vim.keymap.set("n", "dd", "\"_d_")
vim.keymap.set({"n", "x"}, "x", "\"_x")

-- Remap to quick rearrange lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Remap to add new line
vim.keymap.set("n", "<leader>n", "o<Esc>")
vim.keymap.set("n", "<leader>N", "O<Esc>")

-- Remap to duplicate line in normal mode
vim.keymap.set("n", "<C-d>", "yyp")

-- Remap to duplicate a block in visual mode
vim.keymap.set("v", "<C-d>", "yp")

vim.keymap.set("n", "<leader><leader>", ":source $MYVIMRC")

vim.keymap.set("n", "<C-f>", ":NvimTreeFindFileToggle<CR>")

vim.keymap.set("n", "<C-h>", "<C-w>h", {noremap = true, silent = false})
vim.keymap.set("n", "<C-l>", "<C-w>l", {noremap = true, silent = false})
vim.keymap.set("n", "<C-j>", "<C-w>j", {noremap = true, silent = false})
vim.keymap.set("n", "<C-k>", "<C-w>k", {noremap = true, silent = false})

vim.keymap.set("n", "gw", ":%s/\\s\\+$//e<CR>", { desc = "Remove trailing white spaces", })

vim.keymap.set("n", "-", ":Oil<CR>", { silent = true, })

vim.keymap.set("n", "<leader>/", ":noh<CR>", {desc = "Remove highlight", silent = true, })

vim.keymap.set("n", "i", function()
  if #vim.fn.getline(".") == 0 then
    return [["_cc]]
  else
    return "i"
  end
end, { expr = true, desc = "properly indent on empty line when insert" })
