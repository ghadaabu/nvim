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

vim.keymap.set("n", "<leader><leader>", ":source $MYVIMRC<CR>")

vim.keymap.set("n", "<C-f>", ":NvimTreeFindFileToggle<CR>")

vim.keymap.set("n", "gw", ":%s/\\s\\+$//e<CR>", { desc = "Remove trailing white spaces", })

vim.keymap.set("n", "-", ":Oil<CR>", { silent = true, })

-- copies the directory path of the current file
vim.keymap.set("n", "<leader>p", ':let @+=expand("%:p:h")<CR>', { silent = true, })

vim.keymap.set("n", "<leader>/", ":noh<CR>", {desc = "Remove highlight", silent = true, })

-- select all (ctrl+a)
vim.keymap.set("n", "<leader>a", ":keepjumps normal! ggVG<cr>")

vim.keymap.set("n", "i", function()
  if #vim.fn.getline(".") == 0 then
    return [["_cc]]
  else
    return "i"
  end
end, { expr = true, desc = "properly indent on empty line when insert" })

-- navigation
vim.keymap.set({'n', 't'}, '<C-h>', '<CMD>NavigatorLeft<CR>')
vim.keymap.set({'n', 't'}, '<C-l>', '<CMD>NavigatorRight<CR>')
vim.keymap.set({'n', 't'}, '<C-j>', '<CMD>NavigatorDown<CR>')
vim.keymap.set({'n', 't'}, '<C-k>', '<CMD>NavigatorUp<CR>')

vim.keymap.set({"n", "x", "o"}, "s", function()
  require('leap').leap({target_windows = {vim.api.nvim_get_current_win()}})
end)
