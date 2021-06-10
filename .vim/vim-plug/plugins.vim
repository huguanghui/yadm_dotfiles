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
" 编辑格式统一插件
Plug 'editorconfig/editorconfig-vim'
Plug 'sirver/ultisnips' 
Plug 'huguanghui/vim-snippets' 
" Golang
Plug 'fatih/vim-go', {'do': 'GoUpdateBinaries'}
Plug 'Blackrush/vim-gocode'
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
" Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'townk/vim-autoclose'
"Plug 'dense-analysis/ale'
Plug 'thinca/vim-localrc'
" Zen mode
Plug 'junegunn/goyo.vim'
" 终端
Plug 'voldikss/vim-floaterm'
Plug 'huguanghui/nvcode-color-schemes.vim'
" Debugging
" Plug 'puremourning/vimspector'
Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python --enable-go --enable-bash'}
" 模糊查找插件
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'mhinz/vim-signify'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Shougo/echodoc.vim'
Plug 'justinmk/vim-dirvish'
" vimwiki
Plug 'vimwiki/vimwiki'
" ASCII绘图
Plug 'vim-scripts/DrawIt'
" 撤销树功能
Plug 'mbbill/undotree'
" Doxygen
Plug 'babaybus/DoxygenToolkit.vim'

call plug#end()

