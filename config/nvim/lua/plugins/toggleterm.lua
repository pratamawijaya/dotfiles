return {
    "akinsho/toggleterm.nvim",
		lazy = true,
		cmd = { "ToggleTerm" },
		event = "InsertEnter",
		config = function()
			require("user.toggleterm")
		end,
}