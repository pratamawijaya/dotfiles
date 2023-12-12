return {
		"folke/which-key.nvim",
		keys = { "<leader>", '"', "'", "`", "c", "v" },
		event = "VeryLazy",
		config = function()
			require("user.whichkey")
      vim.o.timeout = true
      vim.o.timeoutlen = 500
		end,
	
}
