return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- lua
        null_ls.builtins.formatting.stylua,
        -- java
        null_ls.builtins.formatting.google_java_format, -- Ajout du formateur Java
        null_ls.builtins.diagnostics.checkstyle.with({ -- Ajout de Checkstyle pour Java
          extra_args = { "-c", "/google_checks.xml" }, -- Vous pouvez changer le chemin vers votre fichier de configuration Checkstyle
        }),
        -- Autres langages (inchangés)
        null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.diagnostics.eslint_d,
        -- php
        null_ls.builtins.diagnostics.phpstan,
        -- html
        -- null_ls.builtins.diagnostics.htmlhint,
        null_ls.builtins.formatting.prettier,
        -- css
        null_ls.builtins.formatting.prettier,
        -- python
        null_ls.builtins.formatting.black,
        --null_ls.builtins.diagnostics.ruff,
        -- rust
        null_ls.builtins.formatting.rustfmt,
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
