local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("i", "(", "()<left>", opts)
vim.api.nvim_set_keymap("i", "[", "[]<left>", opts)
vim.api.nvim_set_keymap("i", "{", "{}<left>", opts)
vim.api.nvim_set_keymap("i", "\"", "\"\"<left>", opts)
vim.api.nvim_set_keymap("i", "'", "''<left>", opts)
