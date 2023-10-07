-- neovim 默认设置https://neovim.io/doc/user/vim_diff.html#nvim-defaults
local g = vim.g -- Global variables
local opt = vim.opt -- Set options

opt.mouse = 'a' -- 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
opt.clipboard = 'unnamedplus' -- 和外界共享粘贴板内容
opt.cursorline = true
opt.cursorcolumn = true
opt.number = true
opt.laststatus = 3
opt.termguicolors = true
opt.ignorecase = true -- 搜索忽略大小写
opt.filetype = 'on' 
opt.expandtab = true
opt.syntax = 'on'
-- opt.incsearch = true -- 搜索时实时高亮结果
-- opt.hlsearch = true
