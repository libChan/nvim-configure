-- leader key 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 本地变量
local map = vim.api.nvim_set_keymap
local opt = {
  noremap = true,
  silent = true
}

-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- magic search
map("n", "/", "/\\v", { noremap = true , silent = false})
map("v", "/", "/\\v", { noremap = true , silent = false})

-- jj映射到esc
map("i", "jj", "<ESC>", opt)

-- <C-s>快速保存
map("n", "<C-s>", ":w!<Enter>", opt)
map("i", "<C-s>", "<ESC>:w!<Enter>", opt)
------------------------------------------------------------------
-- windows 分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)

-- 关闭当前
map("n", "sw", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt) -- close others

-- 比例控制
map("n", "s.", ":vertical resize +10<CR>", opt)
map("n", "s,", ":vertical resize -10<CR>", opt)
map("n", "s=", "<C-w>=", opt)
map("n", "sj", ":resize +10<CR>", opt)
map("n", "sk", ":resize -10<CR>", opt)

-- alt + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
------------------------------------------------------------------
-- 插件快捷键
-- nvimTree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)
-- bufferline 
-- 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
-- Tab移动
map("n", "<t-Left>", ":BufferLineMovePrev<CR>", opt)
map("n", "<t-Right>", ":BufferLineMoveNext<CR>", opt)
-- nvim-treesitter 代码格式化
map("n", "<leader>i", "gg=G", opt)
-- fzf-lua
map("n", "<C-p>", "<cmd>lua require('fzf-lua').files()<CR>", opt)
