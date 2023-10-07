local opts = { noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap
-- 设置主键为空格键
vim.g.mapleader = " "
keymap('i','jk','<ESC>',opts) -- 在insert模式下同时按下jk键进入Normal模式
-- TIPS: normal模式下向上/向下移动内容，在nvim中不工作
-- kemap('n','<S-Down>','mz:m+<cr>`z')
-- kemap('n','<S-Up>','mz:m-2<cr>`z')

-- 窗口相关
keymap('n','<C-j>','<C-w>j',opts)
keymap('n','<C-k>','<C-w>k',opts)
keymap('n','<C-h>','<C-w>h',opts)
keymap('n','<C-l>','<C-w>l',opts)

-- nvim-tree
keymap('n','<leader>f',':NvimTreeToggle <CR>',opts)
