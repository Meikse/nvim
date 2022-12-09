-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'meikse/gruvbox'
  use 'tpope/vim-commentary'
  use 'jiangmiao/auto-pairs' 
  use 'potamides/pantran.nvim'
  use 'tpope/vim-fugitive'
  use 'lervag/vimtex'

-- use 'voldikss/vim-translator'
-- use 'dhruvasagar/vim-table-mode'
-- use 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

-- Plug 'ervandew/supertab' 
-- Plug 'lervag/vimtex'
-- Plug 'jupyter-vim/jupyter-vim'
-- Plug 'stevearc/vim-arduino'
-- Plug 'nvim-telescope/telescope.nvim'

  end)
