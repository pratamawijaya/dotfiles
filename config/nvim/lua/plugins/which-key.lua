return {
		"folke/which-key.nvim",
		keys = { "<leader>", '"', "'", "`", "c", "v" },
		event = "VeryLazy",
		config = function()
			require("user.whichkey")
		end,
	
}
