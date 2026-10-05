" ===== 缩进（对齐 VSCode 的 4 空格习惯）=====
set tabstop=4        " Tab 显示宽度 4
set softtabstop=4    " 编辑时按 Tab/退格按 4 处理
set shiftwidth=4     " >> / << / 自动缩进宽度 4
set expandtab        " Tab 转为空格（Python/JS 等推荐）
set smartindent      " 智能缩进
set autoindent       " 保留上一行缩进

" ===== 补齐 IDE 的基础体验 =====
syntax on            " 语法高亮
set number           " 行号
set cursorline       " 高亮当前行
set showmatch        " 括号匹配
set incsearch        " 边输入边搜索
set hlsearch         " 搜索高亮
set mouse=a          " 支持鼠标（点选、滚动）
set clipboard=unnamedplus  " 与系统剪贴板互通（需 vim-gtk 或 X11 转发）
set encoding=utf-8
set backspace=indent,eol,start  " 让退格在插入模式正常工作
