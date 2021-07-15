call plug#begin('~/.vim/plugged')
" 注释
Plug 'tpope/vim-commentary'
" 状态栏
Plug 'vim-airline/vim-airline'
" 语法补全
Plug 'Valloric/YouCompleteMe', {'on': []}
augroup load_ycm
    autocmd!
    autocmd InsertEnter * call plug#load('YouCompleteMe') | autocmd! load_ycm
augroup END
Plug 'rdnetto/ycm-generator', {'branch': 'stable'}
" tag
Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-scripts/taglist.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'sirver/ultisnips' 
Plug 'huguanghui/vim-snippets' 
Plug 'scrooloose/nerdtree' 
" 文件管理
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" 文本查询
Plug 'mileszs/ack.vim'
Plug 'majutsushi/tagbar'
Plug 'liuchengxu/vim-which-key'
" 快速移动
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
Plug 'townk/vim-autoclose'
Plug 'thinca/vim-localrc'
" 终端
Plug 'huguanghui/nvcode-color-schemes.vim'
" 模糊查找插件
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'octol/vim-cpp-enhanced-highlight'
" vimwiki
Plug 'vimwiki/vimwiki'

call plug#end()

