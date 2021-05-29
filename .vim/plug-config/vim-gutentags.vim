let g:gutentags_enabled = 1
" gutentags调试开关
"let g:gutentags_trace = 1

" 设置搜索工程的标志
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

" 所生成的数据文件名称
let g:gutentags_ctags_tagfile = '.tags'

"let g:gutentags_file_list_command = 'ag --cpp --cc --asm -l --nocolor -g ""'
"let g:gutentags_file_list_command = 'find . -type f -iregex ".*\.\(c\|cpp\|cc\|h\|asm\)$" -not -path "./.git/*"'
" gutentags的文件过滤逻辑
let g:gutentags_file_list_command = 'rg --files -t c -t cpp -t asm'

" 设置 gutentags 模块
"let g:gutentags_modules = ['ctags', 'cscope']
let g:gutentags_modules = []
if executable('ctags')
    let g:gutentags_modules += ['ctags']
endif
if executable('cscope')
    let g:gutentags_modules += ['cscope']
endif
"if executable('gtags-cscope') && executable('gtags')
"    let g:gutentags_modules += ['gtags_cscope']
"endif

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中, 避免目录污染
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
let g:gutentags_exclude_project_root=['~/', '/usr/local']
let g:gutentags_ctags_exclude=['.svn/*']

if !isdirectory(s:vim_tags)
    silent! call mkdir (s:vim_tags, 'p')
endif

" 老的 Exuberant-ctags 不能加--extra=+q
" let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extras=+q']
let g:gutentags_ctags_extra_args = ['--fields=+niazS']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 老的 Exuberant-ctags 不能加下一行
"let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 0

if has ("cscope")
    " 设置cscope和ctags对ctrl+] :ta和vim -t的兼容
    set cscopetag
    " cscope优先于ctags
    set csto=0
    " 在当前目录添加cscope数据库
    if filereadable("cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    " 显示信息当其他的cscope数据库被添加
    set cscopeverbose
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif

