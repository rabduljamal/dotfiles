return {
  -- Plugin Mason dan LSP untuk TypeScript/JavaScript
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },

  -- Plugin null-ls untuk format dan linting (ESLint dan Prettier)
  { "jose-elias-alvarez/null-ls.nvim" },

  -- Plugin Treesitter untuk syntax highlighting yang lebih baik
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  },
}
