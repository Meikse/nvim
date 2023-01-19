-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'meikse/gruvbox'
  use 'nvim-lualine/lualine.nvim'

  use 'tpope/vim-commentary'
  use 'ervandew/supertab'
  -- use 'jiangmiao/auto-pairs' 
  use 'm4xshen/autoclose.nvim' 
  use({ "iamcco/markdown-preview.nvim",
      run = "cd app && npm install",
      setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
      ft = { "markdown" }, })


  -- use 'potamides/pantran.nvim' --errors while config TODO
  use 'voldikss/vim-translator'   --slow but plug-and-play (replace)

  use 'tpope/vim-fugitive'
  use 'lervag/vimtex'
  use 'jupyter-vim/jupyter-vim'

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'hrsh7th/nvim-cmp'

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

-- use 'voldikss/vim-translator'
-- use 'dhruvasagar/vim-table-mode'
-- use 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

-- use 'ervandew/supertab' 
-- use 'jupyter-vim/jupyter-vim'
-- use 'stevearc/vim-arduino'
-- use 'nvim-telescope/telescope.nvim'

  end)
