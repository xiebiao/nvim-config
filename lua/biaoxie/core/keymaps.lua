local opts = { noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap
-- 设置主键为空格键
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

keymap('i','jk','<ESC>',opts) -- 在insert模式下同时按下jk键进入Normal模式
keymap('n','<leader>w',':w!<ESC>',opts) --normal模式下快捷保存文件 

-- normal,visual模式下向上/向下移动内容
keymap('n','<S-Down>','mz:m+<cr>`z',opts)
keymap('n','<S-Up>','mz:m-2<cr>`z',opts)
keymap('v','<S-Down>',":m'>+<cr>`<my`>mzgv`yo`z",opts)
keymap('v','<S-Up>',":m'<-2<cr>`>my`<mzgv`yo`z",opts)
-- 窗口相关
keymap('n','<C-j>','<C-w>j',opts)
keymap('n','<C-k>','<C-w>k',opts)
keymap('n','<C-h>','<C-w>h',opts)
keymap('n','<C-l>','<C-w>l',opts)

-- nvim-tree
keymap('n','<leader>d',':NvimTreeToggle <CR>',opts)
-- telescope.nvim
keymap('n',"<leader>ff",'<Cmd>Telescope find_files<CR>',opts)
keymap('n',"<leader>fg",'<Cmd>Telescope live_grep<CR>',opts)
keymap('n',"<leader>fb",'<Cmd>Telescope live_buffers<CR>',opts)
keymap('n',"<leader>fh",'<Cmd>Telescope help_tags<CR>',opts)

