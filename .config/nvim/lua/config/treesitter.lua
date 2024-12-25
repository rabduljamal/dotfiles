require("nvim-treesitter.configs").setup({
  ensure_installed = { "javascript", "typescript", "tsx", "json", "html", "css" }, -- Daftar bahasa yang ingin diinstall
  sync_install = false, -- Install parser secara sinkron atau asinkron
  auto_install = true, -- Otomatis menginstall parser jika belum ada
  ignore_install = { "php" }, -- Daftar parser yang diabaikan saat instalasi
  highlight = {
    enable = true, -- Enable syntax highlighting
    additional_vim_regex_highlighting = false, -- Gunakan highlight regex bawaan Vim (false untuk mematikan)
  },
  modules = {},
})
