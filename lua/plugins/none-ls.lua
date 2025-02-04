return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,         -- lua
        null_ls.builtins.formatting.google_java_format, -- java
        null_ls.builtins.diagnostics.checkstyle.with({
          extra_args = { "-c", "/google_checks.xml" },
        }),
        null_ls.builtins.diagnostics.phpstan, -- php
        null_ls.builtins.formatting.prettier.with({
          filetypes = {
            "javascript",
            "typescript",
            "css",
            "html",
            "json",
            "yaml",
            "markdown",
            "php",
            "blade",
          },
          extra_args = { "--plugin=@prettier/plugin-php" },
        }),
        null_ls.builtins.formatting.black, -- python
        --null_ls.builtins.formatting.beautysh,
        --null_ls.builtins.diagnostics.shellcheck
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
