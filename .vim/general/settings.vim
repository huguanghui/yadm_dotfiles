" 基本配置

" 管理兼容模式
set nocompatible

" 设置历史记录数
set history=10000

set clipboard=unnamed
set clipboard+=unnamedplus

set autoread

" 显示相关
set cul

" 缩进相关
set autoindent
set cindent

" 设置Tab宽度
set tabstop=4
set shiftwidth=4 
" 使用空格代替制表符
set expandtab
" 在行开始的地方使用制表符
set smarttab
" 显示行数
set number
set numberwidth=4

" 显示相对行号
set relativenumber

" 搜索逐字符高亮
set hlsearch
set incsearch
set ignorecase
set smartcase

" 语言设置
set langmenu=zh_CN.UTF-8
let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936
set helplang=cn
let g:python_host_prog='/usr/bin/python'
let g:python3_host_prog='/usr/bin/python3'
" 总是显示状态行
set cmdheight=2

set showcmd
set wildmenu
set wildignore=*.o,*.obj,*.dll,*.exe,*~,*.pyc

" 长于窗口长度自动换行
set wrap

" 保留10行的滚动区间
set scrolloff=10

" 关闭备份
set nobackup
set nowritebackup
set noswapfile

set timeoutlen=250 " 默认值是1000 ms

" 显示隐藏字符
set listchars=
set listchars+=space:·
set listchars+=tab:¦\ 
":set listchars+=tab:░\ 
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:⣿
" set list
