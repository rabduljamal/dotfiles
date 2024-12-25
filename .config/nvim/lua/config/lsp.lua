local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")
local null_ls = require("null-ls")

-- Setup mason untuk mengelola server LSP
require("mason").setup()
mason_lspconfig.setup()

-- Setup server LSP untuk TypeScript, JavaScript, React, dan Golang
mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({})
  end,

  -- Config khusus untuk tsserver
  ["tsserver"] = function()
    lspconfig.tsserver.setup({
      settings = {
        javascript = {
          format = {
            enable = false, -- Kita pakai Prettier
          },
        },
        typescript = {
          format = {
            enable = false, -- Kita pakai Prettier
          },
        },
      },
    })
  end,

  -- Config khusus untuk gopls (Go)
  ["gopls"] = function()
    lspconfig.gopls.setup({
      settings = {
        gopls = {
          analyses = {
            unusedparams = true,
          },
          staticcheck = true,
        },
      },
    })
  end,
})

-- Setup null-ls untuk Prettier, ESLint, dan Go formatting
null_ls.setup({
  sources = {
    -- Integrasi Prettier untuk formatting JavaScript, TypeScript, dsb.
    null_ls.builtins.formatting.prettier.with({
      filetypes = { "javascript", "typescript", "typescriptreact", "javascriptreact", "json" },
    }),
    -- Integrasi ESLint untuk linting
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.code_actions.eslint,

    -- Integrasi Go formatters seperti gofmt atau golines
    null_ls.builtins.formatting.gofmt, -- or you can use golines
  },
})
