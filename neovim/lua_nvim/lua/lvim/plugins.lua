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
  use "Pocco81/true-zen.nvim"
  use "tpope/vim-fugitive"
  use "numToStr/Comment.nvim"
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "lunarvim/darkplus.nvim"
  use "ellisonleao/gruvbox.nvim"
  use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lsp"
  use "kyazdani42/nvim-tree.lua"
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", }
  use "kyazdani42/nvim-web-devicons"
  use "nvim-lualine/lualine.nvim"
  use "akinsho/toggleterm.nvim"
  use "airblade/vim-gitgutter"
  use "goolord/alpha-nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use "vimwiki/vimwiki"
  use "reedes/vim-pencil"
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-fzy-native.nvim'}
    }
  }
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  use "ahmedkhalf/project.nvim"
  use "moll/vim-bbye"
  use 'ishan9299/modus-theme-vim'
  use 'rcarriga/nvim-notify'

end)
