return {
	{
		"akinsho/toggleterm.nvim",
		tag = "*", -- You can specify a version or leave it as '*'
		config = function()
			require("toggleterm").setup({
				size = 15, -- Size of the terminal
				open_mapping = [[<c-\>]], -- Key mapping to open the terminal
				hide_numbers = true, -- Hide line numbers in terminal
				shade_filetypes = {},
				shade_terminals = true,
				start_in_insert = true,
				insert_mappings = true,
				terminal_mappings = true,
				persist_size = true,
				direction = "horizontal", -- or 'vertical' or 'tab'
			})
		end,
	},
}
