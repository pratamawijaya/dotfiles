-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
--
--
--

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- delete a word backwards
-- keymap.set("n", "dw", "vb_d")

--select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- splint window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- window moving
keymap.set("n", "ah", "<C-w>h")
keymap.set("n", "at", "<C-w>j")
keymap.set("n", "an", "<C-w>k")
keymap.set("n", "as", "<C-w>l")
