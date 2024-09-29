-- dismiss Noice Message
vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })

-- moving around the windows or buffer no matter
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

-- For edition
vim.keymap.set("n", "\\p", "i{A}<Esc>", {})

-- command
vim.keymap.set("n", "<leader>hc", ":help ", {})
