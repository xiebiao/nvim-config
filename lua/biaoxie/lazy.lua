local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
"nvim-tree/nvim-tree.lua",
"navarasu/onedark.nvim",
})

-- nvim-tree
require("nvim-tree").setup({
renderer = {
  icons = { -- 目录和文件不显示icon
    show = {
     file = false,
     folder = false,
     folder_arrow = false
    }
  }
 }
})
-- theme
require("onedark").setup {
 style='dark',
 term_colors = true,
}
require('onedark').load()
