local fn = vim.fn

-- Install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Intalling packer, restart Neovim"
  vim.cmd [[ packadd packer.nvim ]]
end

-- Sync packer when save this file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Silent packer error when firt use
local ok, packer = pcall(require, "packer")
if not ok then
  return
end

-- Install plugins
return packer.startup(function(use)

  use 'lewis6991/impatient.nvim'
  use "nvim-lua/plenary.nvim"
  use "wbthomason/packer.nvim"
  use "junegunn/goyo.vim"
  use "tpope/vim-fugitive"
  use "tpope/vim-commentary"
  use "lunarvim/darkplus.nvim"
  use "ellisonleao/gruvbox.nvim"
  use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}
  use {"nvim-telescope/telescope.nvim", "nvim-telescope/telescope-fzy-native.nvim"}
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lsp"
  use "kyazdani42/nvim-tree.lua"
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "kyazdani42/nvim-web-devicons"
  use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"
  use "nvim-lualine/lualine.nvim"

end)
