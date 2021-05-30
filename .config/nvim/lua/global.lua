local fn = vim.fn

local global = {}
local home = os.getenv("HOME")
local path_sep = global.is_windows and '\\' or '/'
local os_name = vim.loop.os_uname().sysname

function global:load_variables()
	self.vim_path = fn.stdpath('config')
	self.cache_dir = home .. path_sep..'.cache'..path_sep..'nvim'..path_sep
	self.modules_dir = self.vim_path .. path_sep..'modules'
	self.path_seq = path_seq
	self.home = home
	self.data_dir = string.format('%s/site/', fn.stdpath('data'))
	self.colorscheme = 'nvcode'
	self.auto_complete = true
	self.auto_close_tree = 0
end

global:load_variables()

DATA_PATH = vim.fn.stdpath('data')
CACHE_PATH = vim.fn.stdpath('cache')

return global
