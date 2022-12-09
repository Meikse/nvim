vim.api.nvim_buf_set_keymap(0,'n', '<leader>lc', '<CMD>VimtexCompile<CR>', { noremap = true })
vim.api.nvim_buf_set_keymap(0,'n', '<leader>lt', '<CMD>VimtexTocToggle<CR>', { noremap = true })
vim.api.nvim_buf_set_keymap(0,'n', '<leader>ls', '<CMD>VimtexStatus<CR>', { noremap = true })
