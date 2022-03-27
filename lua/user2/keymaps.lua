local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- Normal --
-- alt + m 键打开关闭tree
keymap("n", "<A-m>", ":NvimTreeToggle<CR>", opts)
-- 上下滚动浏览
keymap("n", "<C-j>", "4j", opts)
keymap("n", "<C-k>", "4k", opts)
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
keymap("n", "<C-u>", "9k", opts)
keymap("n", "<C-d>", "9j", opts)
-- 光标移动屏幕
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- 调整窗口大小
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
-- 切换buffer
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
-- 关闭
--"moll/vim-bbye"
keymap("n", "<C-w>", ":Bdelete!<CR>", opts)
-- 上下移动文本
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
-- windows 分屏快捷键
keymap("n", "<S-v>", ":vsp<CR>", opts)
-- keymap("n", "<S-h>", ":sp<CR>", opts)
-- 关闭当前
keymap("n", "<S-c>", "<C-w>c", opts)
-- 关闭其他
keymap("n", "<S-o>", "<C-w>o", opts)
-- 退出
keymap("n", "q", ":q<CR>", opts)
keymap("n", "qq", ":q!<CR>", opts)
keymap("n", "Q", ":qa!<CR>", opts)
-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
-- 在visual 模式里粘贴不要复制
keymap("v", "p", '"_dP', opts)
-- insert 模式下，跳到行首行尾
keymap("i", "<C-h>", "<ESC>I", opts)
keymap("i", "<C-l>", "<ESC>A", opts)
-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
-- CoC 
keymap("n","[g","<Plug>coc-diagnostic-prev<CR>",opts)
keymap("n","]g","<Plug>coc-diagnostic-next<CR>",opts)
keymap("n","gd","<Plug>coc-definition<CR>",opts)
keymap("n","gy","<Plug>coc-type-definition<CR>",opts)
keymap("n","gi","<Plug>coc-implementation<CR>",opts)
--keymap("n","K",":call <SID>show_documentation()")
keymap("n","rn","<Plug>coc-rename<CR>",opts)
keymap("n","gr","<Plug>coc-references<CR>",opts)
keymap("x","gr","<Plug>coc-references<CR>",opts)

