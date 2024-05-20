return {
	"EdenEast/nightfox.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local colorscheme = require("nightfox")
		colorscheme.setup({
			options = {
				transparent = true,
			},
		})
		vim.cmd("colorscheme nightfox")
	end,
}
