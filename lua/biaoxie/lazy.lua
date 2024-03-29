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
        "nvim-tree/nvim-tree.lua", -- 目录文件插件
        "nvim-lua/plenary.nvim", -- 基于nvim封装的一些工具API
        -- theme
        { "catppuccin/nvim", name = "catppuccin", priority = 1000 }, 
--        "navarasu/onedark.nvim",
        {
                lazy = false,
                'nvim-telescope/telescope.nvim', tag = '0.1.3', -- 搜索插件
                -- or                              , branch = '0.1.x',
                dependencies = { 'nvim-lua/plenary.nvim' },
                {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"} -- 源文件解析器，解析各种编程语言
        },
        {
               'nvim-lualine/lualine.nvim', -- nvim状态栏配置
                require = { 'nvim-tree/nvim-web-devicons', opt = true }
        },
        { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = {} -- nvim高亮配置
        },
        {
          "kylechui/nvim-surround",
          -- version = "*", -- Use for stability; omit to use `main` branch for the latest features
          event = "VeryLazy",
          config = function()
              require("nvim-surround").setup({
                  -- Configuration here, or leave empty to use defaults
              })
          end
       }
})
---------------------------------------- lazy.nvim END
-- lualine.nvim
require('lualine').setup({
options = { icons_enabled = false}
})
---------------------------------------- lualine.nvim END
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
---------------------------------------- nvim-tree END
-- theme onedark
--require('onedark').setup {
-- style='deep',
-- term_colors = true,
--}
--require('onedark').load()
---------------------------------------- theme onedark END
-- theme gruvbox
-- vim.o.background = "light" -- "dark" or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])
---------------------------------------- theme gruvbox END
-- theme catppuccin
-- catppuccin-latte (light), catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
vim.cmd([[colorscheme catppuccin-frappe]])
---------------------------------------- theme gruvbox END

