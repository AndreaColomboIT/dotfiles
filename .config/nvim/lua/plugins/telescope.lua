return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")
		local actions = require("telescope.actions")
		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
			keymaps = {
				vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files in cwd" }),
				vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Find string in cwd" }),
				vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Find recent files" }),
				vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd" }),
				vim.keymap.set("n", "<leader>fh", builtin.help_tags, {}),
			},
		})
	end,
}
