local opts = { noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap
-- 设置主键为空格键
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- TODO 插入模式下，输入`j`会有延迟，建议不要设置
--keymap('i','jk','<ESC>',opts) -- 在insert模式下同时按下jk键进入Normal模式

keymap('n','<leader>w',':w!<ESC>',opts) --normal模式下快捷保存文件 

-- normal,visual模式下向上/向下移动内容
keymap('n','<S-Down>','mz:m+<cr>`z',opts)
keymap('n','<S-Up>','mz:m-2<cr>`z',opts)
keymap('v','<S-Down>',":m'>+<cr>`<my`>mzgv`yo`z",opts)
keymap('v','<S-Up>',":m'<-2<cr>`>my`<mzgv`yo`z",opts)

-- 创建窗口

-- 窗口切换
keymap('n','<C-j>','<C-w>j',opts)
keymap('n','<C-k>','<C-w>k',opts)
keymap('n','<C-h>','<C-w>h',opts)
keymap('n','<C-l>','<C-w>l',opts)

-- 垂直窗口聚焦时，自动调整窗口宽度为85，在多窗口下非常有用
vim.api.nvim_create_autocmd(
  {"CursorMoved"},
  {
    callback = function()
      -- TODO 最好的实现方案是获取当前环境屏幕的宽度和高度，
      -- 再根据百分比计算出当前聚焦窗口的高度和宽度
      vim.fn.execute(":vert res 85")
    end
  } 
)

-- nvim-tree
keymap('n','<leader>d',':NvimTreeToggle <CR>',opts)
-- telescope.nvim
keymap('n',"<leader>ff",'<Cmd>Telescope find_files<CR>',opts)
keymap('n',"<leader>fg",'<Cmd>Telescope live_grep<CR>',opts)
keymap('n',"<leader>fb",'<Cmd>Telescope live_buffers<CR>',opts)
keymap('n',"<leader>fh",'<Cmd>Telescope help_tags<CR>',opts)

