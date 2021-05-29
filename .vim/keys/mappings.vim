" 映射配置

"键盘命令
" leader 键 设为空格
let g:mapleader=" "

nnoremap <Space> <Nop>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" nmap <leader>w :w!<CR>
" nmap <leader>f :find<CR>
" vmap <leader>c "+y
" nmap <leader>v "+gp
" nmap <leader>v <esc>"+gp
vmap ,c y:call system("xsel -ib", getreg('"'))<CR>"'))
nmap ,v :call setreg("\"",system("xsel -o"))<CR>p")")

" 映射按键
inoremap jj <esc>`^
inoremap kj <esc>`^
inoremap jk <esc>`^

" 保存
" nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> ,s :w<CR>
" map S :w<CR>
" 保存退出
" nnoremap <silent> <C-Q> :wq!<CR>
map Q :q<CR>
" 实现 CTRL+s 保存文件
nmap <C-S> :w!<CR>
vmap <C-S> <C-C>:w!<CR>
imap <C-S> <Esc>:w!<CR>
nmap <C-Q> :q<CR>
vmap <C-Q> <C-C>:q<CR>
imap <C-Q> <Esc>:q<CR>

nnoremap <silent> <C-c> <Esc>

map R :source $MYVIMRC<CR>
map <F4> :tabnew .<CR>
"nnoremap <leader>g :grep <c-r><c-w> */**<cr>

inoremap ' ''<ESC>i

map <silent> <F2> :TlistToggle<CR>
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
imap <F6> <C-x><C-o>

" nnoremap <silent> <Leader>ag :Ack! <C-R><C-W><CR>
nnoremap <silent> <c-p> :LeaderfFile <CR>
nnoremap <silent> <c-e> :Buffers <CR>
