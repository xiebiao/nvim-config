return {
    { "ellisonleao/gruvbox.nvim", priority = 1000 , 
     config = function()
        vim.o.background = "dark"
        vim.cmd([[colorscheme gruvbox]])
     end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
          "nvim-tree/nvim-web-devicons",
        },
        config = function()
            vim.g.loaded_netrw = 0
            vim.g.loaded_netrwPlugin = 0
          require("nvim-tree").setup {}
       
        end,
    },
    {
        lazy = false,
       'nvim-telescope/telescope.nvim', tag = '0.1.3', -- 搜索插件
        -- or                              , branch = '0.1.x',
       dependencies = { 'nvim-lua/plenary.nvim' },
        {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"} -- 源文件解析器，解析各种编程语言
    },
    {
        'nvim-lualine/lualine.nvim', -- nvim状态栏配置
        options = { icons_enabled = true},
        require = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup()
        end,
      },
}
