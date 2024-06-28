-- neovim 默认设置https://neovim.io/doc/user/vim_diff.html#nvim-defaults
local g = vim.g -- Global variables
local opt = vim.opt -- Set options

vim.scriptencoding = "utf-8"
opt.mouse = 'a' -- 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
opt.clipboard = 'unnamedplus' -- 和外界共享粘贴板内容
opt.cursorline = true
opt.cursorcolumn = true
opt.number = true
opt.title = true


opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

--opt.textwidth = 80    -- 设置70个字符就自动换行
opt.softtabstop = 2 -- 统一缩进为4
opt.smartindent = true
opt.expandtab = true
opt.shiftwidth = 2 -- "设置缩进的空格数为4

opt.laststatus = 3
opt.termguicolors = true
opt.ignorecase = true -- 搜索忽略大小写
opt.filetype = 'on' 
opt.expandtab = true
opt.syntax = 'on'
-- opt.incsearch = true -- 搜索时实时高亮结果
-- opt.hlsearch = true
