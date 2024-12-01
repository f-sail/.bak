-- 定义全局选项
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- 缩短函数名
local keymap = vim.keymap.set


-- 重映射空格键为 leader 键
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 模式
-- normal_mode = "n",
-- insert_mode = "i",
-- visual_mode = "v",
-- visual_block_mode = "x",
-- term_mode = "t",
-- command_mode = "c",



-- 正常模式 ------------------------------------------------------------------------------------
-- 更好的窗口导航
keymap("n", "<C-h>", "<C-w>h", opts)  -- 左移窗口
keymap("n", "<C-j>", "<C-w>j", opts)  -- 下移窗口
keymap("n", "<C-k>", "<C-w>k", opts)  -- 上移窗口
keymap("n", "<C-l>", "<C-w>l", opts)  -- 右移窗口

-- 使用箭头键调整窗口大小
keymap("n", "<C-Up>", ":resize +2<CR>", opts)    -- 减小高度
keymap("n", "<C-Down>", ":resize -2<CR>", opts)  -- 增加高度
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)  -- 减小宽度
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)  -- 增加宽度

-- 导航缓冲区
keymap("n", "<leader>n", ":bnext<CR>", opts)  -- 切换到下一个缓冲区
keymap("n", "<leader>p", ":bprevious<CR>", opts)  -- 切换到上一个缓冲区

-- 移动光标


-- 移动文本
keymap("n", "<A-j>", ":m .+1<CR>==", opts)  -- 向下移动当前行
keymap("n", "<A-k>", ":m .-2<CR>==", opts)  -- 向上移动当前行


-- 插入模式 ------------------------------------------------------------------------------------
-- 快速按 jk 或 kj 退出插入模式
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)


-- 可视模式 ------------------------------------------------------------------------------------
-- 保持缩进
keymap("v", "<", "<gv^", opts)  -- 左缩进并保持选择
keymap("v", ">", ">gv^", opts)  -- 右缩进并保持选择

-- 移动文本
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)  -- 向下移动选中的文本
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)  -- 向上移动选中的文本
keymap("v", "p", '"_dP', opts)  -- 粘贴时不覆盖寄存器


-- 可视块模式 ------------------------------------------------------------------------------------
-- 移动文本
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)  -- 向下移动选中的文本
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)  -- 向上移动选中的文本
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)  -- 向下移动选中的文本
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)  -- 向上移动选中的文本

-- 终端模式
-- 更好的终端导航
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)  -- 左移窗口
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)  -- 下移窗口
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)  -- 上移窗口
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)  -- 右移窗口
