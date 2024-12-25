return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, opts)
    local null_ls = require("null-ls")
    vim.list_extend(opts.sources, {
      null_ls.builtins.formatting.golines,
    })
  end,
}
