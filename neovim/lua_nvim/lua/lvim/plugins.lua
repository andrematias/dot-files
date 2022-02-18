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

  use "wbthomason/packer.nvim"
  use "junegunn/goyo.vim"
  use "tpope/vim-fugitive"
  use "tpope/vim-commentary"
  use "lunarvim/darkplus.nvim"
  use "ellisonleao/gruvbox.nvim"
  use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}
end)
