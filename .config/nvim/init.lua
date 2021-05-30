-- General mappings
require('plugins')			-- plugins
require('global')           -- global
require('general') 			-- setting
require('plug-config/utils')
require('key') 				-- keymap
require('colorscheme') 		-- colorscheme
require('plug-config/galaxyline')

require('plug-config/compe')
require('plug-config/nvimtree')
require('plug-config/quickscope')
require('plug-config/autopairs')
require('plug-config/comment')
require('plug-config/telescope')
require('plug-config/floaterm')
require('plug-config/lspkind')
require('plug-config/hop')
require('plug-config/vista')

vim.cmd('source ~/.config/nvim/vimscript/vimwiki.vim')
vim.cmd('source ~/.config/nvim/vimscript/whichkey.vim')

require('lsp')
require('lsp.vim-ls')
require('lsp.bash-ls')
-- require('lsp.lua-ls')
require('lsp.cpp-ls')
