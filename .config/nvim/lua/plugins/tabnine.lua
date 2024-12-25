return {
  -- Daftar plugin lain di LazyVim

  -- Tambahkan konfigurasi Tabnine di sini
  {
    "codota/tabnine-nvim",
    build = function()
      vim.cmd("!./dl_binaries.sh")
    end,
    config = function()
      require("tabnine").setup({
        disable_auto_comment = false,
        accept_keymap = "<Tab>",
        dismiss_keymap = "<C-]>",
        debounce_ms = 800,
        suggestion_color = { gui = "#808080", cterm = 244 },
        exclude_filetypes = { "TelescopePrompt" },
      })
    end,
  },
}
