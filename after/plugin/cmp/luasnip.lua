local luasnip = require("luasnip")
-- Loading any vscode snippets from plugins
-- https://github.com/rafamadriz/friendly-snippets
require('luasnip.loaders.from_vscode').lazy_load()

luasnip.config.set_config{
  -- do not go back to latest snippet, thus tab works normally again
  history = false,
}

vim.keymap.set({ 'i', 's' }, '<m-j>', '<CMD>lua require("luasnip").jump(1)<CR>')
vim.keymap.set({ 'i', 's' }, '<m-k>', '<CMD>lua require("luasnip").jump(-1)<CR>')
-- snippet trigger is done through nvim-cmp.lua
