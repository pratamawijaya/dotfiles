local keymap = vim.keymap -- for conciseness

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- window movement
keymap.set("n", "<leader>sd", "<C-w>h", { desc = "move to window left" })
keymap.set("n", "<leader>st", "<C-w>k", { desc = "move to window top" })
keymap.set("n", "<leader>sh", "<C-w>j", { desc = "move to window bottom" })
keymap.set("n", "<leader>sn", "<C-w>l", { desc = "move to window right" })

-- ini text baru
-- update text

-- window resize
keymap.set("n", "<C-w>d", "<C-w><", { desc = "rezize window to left" })
keymap.set("n", "<C-w>n", "<C-w>>", { desc = "rezize window to right" })
keymap.set("n", "<C-w>h", "<C-w>-", { desc = "rezize window to down" })
keymap.set("n", "<C-w>h", "<C-w>+", { desc = "rezize window to up" })

-- test tex baru
-- test baru 2
