-- for learning basics
vim.api.nvim_buf_set_keymap(0,'n', '<F5>', ':w %<CR>:!g++ %<cr>:!./a.out<cr>', { noremap = true })
