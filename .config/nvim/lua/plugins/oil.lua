return {
	"stevearc/oil.nvim",
	opts = {},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local oil = require("oil")

		oil.setup({
			view_options = {
				show_hidden = true, -- show files and directories that starts with "."
			},
			columns = {
				"icon",
				-- "permissions",
				-- "size",
				-- "mtime",
			},
			keymaps = {
				vim.keymap.set("n", "-", "<CMD>Oil --float <CR>", { desc = "Open parent directory" }),
			},
			float = {
				-- Padding around the floating window
				padding = 5,
				border = "rounded",
			},
		})
	end,
}
