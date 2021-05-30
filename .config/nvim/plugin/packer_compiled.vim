" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/hgh/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/hgh/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/hgh/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/hgh/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/hgh/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["DoxygenToolkit.vim"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/DoxygenToolkit.vim"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["far.vim"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/far.vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/hop.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/nvim-jdtls"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-lua-guide"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/nvim-lua-guide"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  nvim_utils = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/nvim_utils"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/quick-scope"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/vim-which-key"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/hgh/.local/share/nvim/site/pack/packer/start/vista.vim"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
