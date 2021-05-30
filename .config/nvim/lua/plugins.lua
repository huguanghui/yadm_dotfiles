local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	execute('!git clone https://gitee.com/huguanghui/packer.nvim ' .. install_path)
	execute 'packadd packer.nvim'
end

vim.cmd('autocmd BufWritePost plugins.lua PackerCompile')

require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Information
    use 'nanotee/nvim-lua-guide'

	-- Quality of life improvements
    use 'norcalli/nvim_utils'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use 'kosayoda/nvim-lightbulb'
    use 'mfussenegger/nvim-jdtls'
    use 'kabouzeid/nvim-lspinstall'

	-- Doxygen Tool
	use 'babaybus/DoxygenToolkit.vim'

	-- Autocomplete
	use 'hrsh7th/nvim-compe'
	use 'hrsh7th/vim-vsnip'
	use 'huguanghui/friendly-snippets'

	-- Color
    use 'huguanghui/nvcode-color-schemes.vim'
    use 'norcalli/nvim-colorizer.lua'
    use 'sheerun/vim-polyglot'

	-- Icons
	use 'kyazdani42/nvim-web-devicons' -- file icons
	use 'ryanoasis/vim-devicons'

	-- Status Line and Bufferline
    use 'glepnir/galaxyline.nvim'
    use 'romgrk/barbar.nvim'

    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'

	-- Explorer
	use 'kyazdani42/nvim-tree.lua'

	-- Navigation
    use 'unblevable/quick-scope'
    use 'phaazon/hop.nvim'

	-- General Plugins
	use 'liuchengxu/vim-which-key'
	use 'huguanghui/dashboard-nvim'
	use 'psliwka/vim-smoothie'
	use 'voldikss/vim-floaterm'
	use 'terrortylor/nvim-comment'
	use 'brooth/far.vim'
	use 'windwp/nvim-autopairs'
	use 'liuchengxu/vista.vim'
	use 'vimwiki/vimwiki'

end)
