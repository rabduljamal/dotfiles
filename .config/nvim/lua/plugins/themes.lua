return {
  "EdenEast/nightfox.nvim",
  config = function()
    require("nightfox").setup({
      options = {
        styles = {
          comments = "italic", -- Kamu bisa menyesuaikan sesuai preferensi
        },
      },
    })
    vim.cmd.colorscheme("nightfox") -- atau nightfox
  end,
}
