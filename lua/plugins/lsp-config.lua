return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "clangd" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
      -- lua
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

      -- javascript and typscript 
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})

      -- c
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})

      -- python
			lspconfig.ruff.setup({
				capabilities = capabilities,
			})

      -- css 
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})

      -- rust
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})

      -- java
			lspconfig.jdtls.setup({
				capabilities = capabilities,
			})

      -- php 
      lspconfig.intelephense.setup({
        capabilities = capabilities
      })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
