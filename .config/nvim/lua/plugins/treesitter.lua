return {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "go", "lua", "javascript", "typescript" }, -- Bahasa yang diperlukan
      sync_install = false, -- Menonaktifkan instalasi sinkron parsers
      ignore_install = {}, -- Kosongkan jika tidak ingin mengabaikan bahasa
      auto_install = true, -- Install parser otomatis jika belum ada
      highlight = {
        enable = true, -- Mengaktifkan highlight untuk semua bahasa yang diinstal
        additional_vim_regex_highlighting = false,
      },
      modules = {}, -- Menambahkan opsi modules kosong untuk menghindari error
    })
  end,
}
