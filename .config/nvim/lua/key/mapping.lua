local bind = require('key.bind')
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

-- default map
local def_map = {
	-- Vim map
	["n|<C-s>"] = map_cu('write'):with_noremap(),
	["n|<C-q>"] = map_cr('wq'),
	["n|<C-h>"] = map_cmd('<C-w>h'):with_noremap(),
	["n|<C-l>"] = map_cmd('<C-w>l'):with_noremap(),
	["n|<C-j>"] = map_cmd('<C-w>j'):with_noremap(),
	["n|<C-k>"] = map_cmd('<C-w>k'):with_noremap(),
	["n|<Space>"] = map_cmd('<NOP>'):with_noremap():with_silent(),
	["n|<TAB>"] = map_cr('bnext'):with_noremap():with_silent(),
	["n|<S-TAB>"] = map_cr('bprevious'):with_noremap():with_silent(),
	-- Insert
	["i|jk"] = map_cmd('<Esc>'):with_noremap():with_silent(),
	["i|kj"] = map_cmd('<Esc>'):with_noremap():with_silent(),
	["i|jj"] = map_cmd('<Esc>'):with_noremap():with_silent(),
	["i|<C-s>"] = map_cmd('<Esc>:w<CR>'),
	["i|<C-q>"] = map_cmd('<Esc>:wq<CR>'),
}

bind.nvim_load_mapping(def_map)

vim.g.mapleader = ' '

vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')
