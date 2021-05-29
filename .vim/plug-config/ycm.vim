"disable ycm 语法检测
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
"ycmd setting
let g:ycm_error_symbol = 'K'
let g:ycm_warning_symbol = 'O'
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
"停止提示是否载入本地 ycm_extra_conf 文件
let g:ycm_confirm_extra_conf = 0
let g:ycm_show_diagnostics_ui = 0 
"停止弹出函数原型
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt=0
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"从2个键入字符开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_indentifiers_candiate_chars = 2
"禁止缓存匹配项
let g:ycm_cache_omnifunc=0
"语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
"让YouCompleteMe同时利用原来的ctags
let g:ycm_collect_identifiers_from_tag_files = 1
"设置出发补全快捷键
"let g:ycm_key_invoke_completion='<c-z>'


noremap <c-z> <nop>

let g:ycm_semantic_triggers = {
    \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
    \ 'cs,lua,javascript': ['re!\w{2}'],
    \}

let g:ycm_filetype_whitelist = {
    \ "c":1,
    \ "cpp":1,
    \ "objc":1,
    \ "sh":1,
    \ "zsh":1,
    \ "zimbu":1,
    \ "go":1,
    \}

let g:UltiSnipsExpandTrigger='<c-z>'
let g:UltiSnipsListSnippets='<c-l>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'
let g:UlitSnipsEditSplit='vertical'

"跳转到定义处
" nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> 
