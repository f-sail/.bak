local options = {
  backup = false,                           -- 是否创建备份文件
  clipboard = "unnamedplus",                -- 允许 Neovim 访问系统剪贴板
  cmdheight = 2,                            -- 在 Neovim 命令行中为显示消息提供更多空间
  completeopt = { "menuone", "noselect" },  -- 主要用于补全插件（如 cmp）
  conceallevel = 0,                         -- 使 Markdown 文件中的 `` 可见
  fileencoding = "utf-8",                   -- 文件编码
  hlsearch = true,                          -- 是否高亮所有匹配的搜索模式
  ignorecase = true,                        -- 是否忽略搜索模式中的大小写
  mouse = "v",                              -- 是否允许在 Neovim 中使用鼠标
  pumheight = 10,                           -- 弹出菜单的高度
  showmode = true,                          -- 是否显示模式（如 -- INSERT --）
  showtabline = 2,                          -- 始终显示标签页
  smartcase = true,                         -- 是否智能大小写匹配
  smartindent = true,                       -- 是否更智能的缩进
  splitbelow = true,                        -- 是否所有水平分割窗口都在当前窗口下方
  splitright = true,                        -- 是否所有垂直分割窗口都在当前窗口右侧
  swapfile = false,                         -- 是否创建交换文件
  timeoutlen = 300,                         -- 等待映射序列完成的时间（毫秒）
  undofile = true,                          -- 是否启用持久化撤销
  updatetime = 300,                         -- 更快的补全（默认 4000ms）
  writebackup = false,                      -- 如果文件被其他程序编辑，是否允许编辑
  expandtab = true,                         -- 是否将制表符转换为空格
  shiftwidth = 4,                           -- 每个缩进级别的空格数
  tabstop = 4,                              -- 制表符的宽度
  cursorline = true,                        -- 是否高亮当前行
  number = true,                            -- 是否显示行号
  relativenumber = false,                   -- 是否显示相对行号
  numberwidth = 4,                          -- 设置行号列宽为 4
  signcolumn = "yes",                       -- 始终显示符号列
  wrap = true,                              -- 是否显示长行时换行
  linebreak = true,                         -- 是否与 wrap 配合使用，不拆分单词
  scrolloff = 8,                            -- 保持光标上下至少 8 行可见
  sidescrolloff = 8,                        -- 保持光标左右至少 8 列可见（如果 wrap 为 false）
  guifont = "monospace:h17",                -- 图形界面中使用的字体
  whichwrap = "bs<>[]hl",                   -- 允许哪些“水平”键移动到上/下一行
  confirm = true,                           -- 当缓冲区有未保存的更改时，退出是否询问
}

-- 应用配置
for k, v in pairs(options) do
  vim.opt[k] = v
end
