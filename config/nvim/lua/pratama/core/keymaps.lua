vim.g.mapleader = " "

local keymap = vim.keymap


-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>ss", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

--open terminal
keymap.set("n","<leader>t","<cmd>ToggleTerm<CR>", {desc="open terminal"}) -- open terminal

-- window moving
keymap.set("n", "<leader>d", "<C-w>h", { desc="move to window left"}) -- move to left
keymap.set("n", "<leader>h", "<C-w>j", {desc="move to window bottom"}) -- move to bottom
keymap.set("n", "<leader>t", "<C-w>k", {desc="move to window top"}) -- move to top
keymap.set("n", "<leader>n", "<C-w>l", {desc="move to windown right"}) -- move to right

