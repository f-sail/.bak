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



-- 正常模式-NORMAL ------------------------------------------------------------------------------------
keymap("n", "<leader>/", ":nohlsearch<CR>", opts)
-- 窗口切换
keymap("n", "<C-h>", "<C-w>h", opts)  -- 移到左窗口
keymap("n", "<C-j>", "<C-w>j", opts)  -- 移到下窗口
keymap("n", "<C-k>", "<C-w>k", opts)  -- 移到上窗口
keymap("n", "<C-l>", "<C-w>l", opts)  -- 移到右窗口

-- 窗口调整
keymap("n", "<C-Up>", ":resize +2<CR>", opts)               -- 减小高度
keymap("n", "<C-Down>", ":resize -2<CR>", opts)             -- 增加高度
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)    -- 减小宽度
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)   -- 增加宽度

-- 缓冲区导航
keymap("n", "<leader>j", ":bnext<CR>", opts)        -- 切换至下一个buffer
keymap("n", "<leader>k", ":bprevious<CR>", opts)    -- 切换至上一个buffer
keymap("n", "<leader>d", ":bdelete<CR>", opts)      -- 关闭当前buffer
keymap("n", "<leader>D", ":only<CR>", opts)         -- 关闭其他buffer

-- 光标移动
keymap("n", "<leader>h", "^", opts)     -- 移动光标至行首
keymap("n", "<leader>l", "$", opts)     -- 移动光标至行尾
-- keymap("n", "<leader>j", "5j", opts)    -- 移动光标下五行
-- keymap("n", "<leader>k", "5k", opts)    -- 移动光标下五行

-- 文本移动
keymap("n", "<leader>J", ":m .+1<CR>==", opts)  -- 向下移动当前行
keymap("n", "<leader>K", ":m .-2<CR>==", opts)  -- 向上移动当前行
-- keymap("n", "<A-j>", ":m .+1<CR>==", opts)  -- 向下移动当前行
-- keymap("n", "<A-k>", ":m .-2<CR>==", opts)  -- 向上移动当前行

-- 切割窗口
-- keymap("n", "<leader>v", ":vs<CR>", opts)   -- 水平切割
-- keymap("n", "<leader>s", ":sp<CR>", opts)   -- 垂直切割

-- 跳转
keymap("n", "<leader>[", "<C-o>", opts)   -- 返回
keymap("n", "<leader>]", "<C-i>", opts)   -- 前进

-- 复制
keymap("n", "yh", "y0", opts)   -- 复制至行首
keymap("n", "yl", "y$", opts)   -- 复制至行尾

-- 删除
keymap("n", "dh", "d0", opts)   -- 删除至行首
keymap("n", "dl", "d$", opts)   -- 删除至行尾


keymap("n", "<leader>sh", ":helptags ~/.local/share/nvim/runtime/doc<CR>", opts)


-- 插入模式_INSERT ------------------------------------------------------------------------------------
-- 快速按 jk 或 kj 退出插入模式
keymap("i", "jk", "<ESC>l", opts)
keymap("i", "kj", "<ESC>l", opts)


-- 可视模式_VISUAL ------------------------------------------------------------------------------------
-- 保持缩进
keymap("v", "<", "<gv^", opts)  -- 左缩进并保持选择
keymap("v", ">", ">gv^", opts)  -- 右缩进并保持选择

-- 移动光标
keymap("v", "<leader>h", "^", opts)     -- 移动光标至行首
keymap("v", "<leader>l", "$", opts)     -- 移动光标至行尾

-- 移动文本
keymap("v", "<leader>J", ":m '>+1<CR>gv=gv", opts)  -- 向下移动选中的文本
keymap("v", "<leader>K", ":m '<-2<CR>gv=gv", opts)  -- 向上移动选中的文本
-- keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)  -- 向下移动选中的文本
-- keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)  -- 向上移动选中的文本

keymap("v", "p", '"_dP', opts)  -- 粘贴时不覆盖寄存器


-- 可视块模式_V-BLOCK ---------------------------------------------------------------------------------
-- 移动文本
keymap("x", "<leader>J", ":m '>+1<CR>gv=gv", opts)  -- 向下移动选中的文本
keymap("x", "<leader>K", ":m '<-2<CR>gv=gv", opts)  -- 向上移动选中的文本
-- keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)  -- 向下移动选中的文本
-- keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)  -- 向上移动选中的文本

-- 移动光标
keymap("x", "<leader>h", "^", opts)     -- 移动光标至行首
keymap("x", "<leader>l", "$", opts)     -- 移动光标至行尾


-- 终端模式_TERMIMAL ----------------------------------------------------------------------------------
-- 退出
keymap("t", "<C-\\>", "<C-\\><C-N>", term_opts)  -- 退出终端模式

-- 窗口导航
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)  -- 移到左窗口
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)  -- 移到下窗口
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)  -- 移到上窗口
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)  -- 移到右窗口


--  --
vim.g.clipboard = {
  name = 'xclip',
  copy = {
    ['+'] = 'xclip -selection clipboard',
    ['*'] = 'xclip -selection clipboard',
  },
  paste = {
    ['+'] = 'xclip -selection clipboard -o',
    ['*'] = 'xclip -selection clipboard -o',
  },
  cache_enabled = 0,
}
