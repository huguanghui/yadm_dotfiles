let g:which_key_timeout = 100
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

let g:which_key_map = {}
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

autocmd FileType vista,vista_kind nnoremap <buffer> <silent> \  :<c-u>call vista#finder#fzf#Run()<CR>

let g:which_key_map['/'] = 'comment toggle'
let g:which_key_map[';'] = [ ':Dashboard',  'home screen']
let g:which_key_map['?'] = [ ':NvimTreeFindFile', 'find current file']
let g:which_key_map['e'] = [ ':NvimTreeToggle', 'explorer']
let g:which_key_map['h'] = [ '<C-W>s', 'split below']
let g:which_key_map['v'] = [ '<C-W>v', 'split right']

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '>' : [':BufferMoveNext'        , 'move next'],
      \ '<' : [':BufferMovePrevious'    , 'move prev'],
      \ 'b' : [':BufferPick'            , 'pick buffer'],
      \ 'd' : [':Bdelete'               , 'delete-buffer'],
      \ 'n' : ['bnext'                  , 'next-buffer'],
      \ 'p' : ['bprevious'              , 'previous-buffer'],
      \ '?' : ['Buffers'                , 'fzf-buffer'],
      \ }

" s is for search powered by telescope
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '.' : [':Telescope filetypes'                   , 'filetypes'],
      \ 'B' : [':Telescope git_branches'                , 'git branches'],
      \ 'd' : [':Telescope lsp_document_diagnostics'    , 'document_diagnostics'],
      \ 'D' : [':Telescope lsp_workspace_diagnostics'   , 'workspace_diagnostics'],
      \ 'f' : [':Telescope find_files'                  , 'files'],
      \ 'h' : [':Telescope command_history'             , 'history'],
      \ 'i' : [':Telescope media_files'                 , 'media files'],
      \ 'm' : [':Telescope marks'                       , 'marks'],
      \ 'M' : [':Telescope man_pages'                   , 'man_pages'],
      \ 'o' : [':Telescope vim_options'                 , 'vim_options'],
      \ 't' : [':Telescope live_grep'                   , 'text'],
      \ 'r' : [':Telescope registers'                   , 'registers'],
      \ 'w' : [':Telescope file_browser'                , 'buf_fuz_find'],
      \ 'u' : [':Telescope colorscheme'                 , 'colorschemes'],
      \ }

let g:which_key_map.t = {
	\ 'name' : '+terminal',
	\ ';' : [':FloatermNew --wintype=normal --height=6', 'terminal'],
	\ 'f' : [':FloatermNew fzf', 'fzf'],
	\ 'g' : [':FloatermNew lazygit', 'git'],
	\ 'd' : [':FloatermNew lazydocker', 'docker'],
	\ 'n' : [':FloatermNew node', 'node'],
	\ 'N' : [':FloatermNew nnn', 'nnn'],
	\ 'p' : [':FloatermNew python', 'python'],
	\ 'm' : [':FloatermNew lazynpm', 'npm'],
	\ 't' : [':FloatermToggle', 'toggle'],
	\ 'y' : [':FloatermNew ytop', 'ytop'],
	\ 'u' : [':FloatermNew ncdu', 'ncdu'],
	\}

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'a' : [':Lspsaga code_action'                , 'code action'],
      \ 'A' : [':Lspsaga range_code_action'          , 'selected action'],
      \ 'd' : [':Telescope lsp_document_diagnostics' , 'document diagnostics'],
      \ 'D' : [':Telescope lsp_workspace_diagnostics', 'workspace diagnostics'],
      \ 'f' : [':LspFormatting'                      , 'format'],
      \ 'I' : [':LspInfo'                            , 'lsp info'],
      \ 'v' : [':LspVirtualTextToggle'               , 'lsp toggle virtual text'],
      \ 'l' : [':Lspsaga lsp_finder'                 , 'lsp finder'],
      \ 'L' : [':Lspsaga show_line_diagnostics'      , 'line_diagnostics'],
      \ 'o' : [':Vista!!'                            , 'outline'],
      \ 'p' : [':Lspsaga preview_definition'         , 'preview definition'],
      \ 'q' : [':Telescope quickfix'                 , 'quickfix'],
      \ 'r' : [':Lspsaga rename'                          , 'rename'],
      \ 'T' : [':LspTypeDefinition'                  , 'type defintion'],
      \ 'x' : [':cclose'                             , 'close quickfix'],
      \ 's' : [':Telescope lsp_document_symbols'     , 'document symbols'],
      \ 'S' : [':Telescope lsp_workspace_symbols'    , 'workspace symbols'],
      \ }
      " \ 'H' : [':Lspsaga signature_help'             , 'signature_help'],

" S is for Session
let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 's' : [':SessionSave'           , 'save session'],
      \ 'l' : [':SessionLoad'           , 'load Session'],
      \ }

let g:which_key_map.R = {
      \ 'name' : '+Find_Replace' ,
      \ 'f' : [':Farr --source=vimgrep'    , 'file'],
      \ 'p' : [':Farr --source=rgnvim'     , 'project'],
      \ }

call which_key#register('<Space>', "g:which_key_map")
