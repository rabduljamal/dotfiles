-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme oneDarkPro]])
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.wrap = true -- Mengaktifkan line wrapping
vim.opt.linebreak = true -- Memastikan pemutusan baris terjadi di tempat yang lebih logis (seperti setelah spasi)
vim.opt.clipboard = "unnamedplus"
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.spell = true
vim.opt.spelllang = { "en_us" }
vim.opt.number = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 10
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.relativenumber = false
vim.g.deprecation_warnings = true
