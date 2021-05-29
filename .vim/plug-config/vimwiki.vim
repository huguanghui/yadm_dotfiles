" vimwiki 的配置
" vimwiki 管理
" 多个 vimwiki 工作目录管理
" 1. 进入指定目录 [n] <leader> ww
" 2. 切换目录 <leader>ws  [n]
" 日记管理
"  1. 进入/创建日志管理 <leader>wi
"  2. 创建当天日志 <leader>w<leader>w
"  3. 更新日志到日志管理 <leader>w<leader>i

" 语法相关
" 标题控制 - +
" 列表 gl
"   gll - 增加等级 glh - 降低等级
"   格式切换
"     g[l|L] [-|1|*]  l-单行 -L-多行
" todo
" 表格
" 字体
" 链接
" 代码框

" 将 vimwiki 的语法格式设为 markdown
let g:vimwiki_list = [{'path': '~/vimwiki/work/', 'syntax': 'markdown', 'ext': '.md'},
                    \{'path': '~/vimwiki/personal/', 'syntax': 'markdown', 'ext': '.md'}]

nmap <leader>wl <Plug>VimwikiToggleListItem

let g:vimwiki_listsyms = ' ✗○◐✓'
