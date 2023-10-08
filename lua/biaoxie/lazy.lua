-- nvim 插件管理工具lazy.nvim
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
        "nvim-lua/plenary.nvim",
        "navarasu/onedark.nvim",
        {
        lazy = false,
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
        }
    
})
-- lazy.nvim END

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
-- nvim-tree END
-- theme onedark
require('onedark').setup {
 style='cool',
 term_colors = true,
}
require('onedark').load()
-- theme onedark END
