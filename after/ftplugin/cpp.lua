-- for learning basics
vim.api.nvim_buf_set_keymap(0,'n', '<F4>', ":w %<CR>:exec '!g++' shellescape(@%,1) '-o' shellescape(expand('%:r'),1)<CR>:exec '!./'.shellescape(expand('%:r'))<CR>", { noremap = true })
-- vim.api.nvim_buf_set_keymap(0,'n', '<F4>', ':w %<CR>:!g++ %<cr>:!./a.out<cr>', { noremap = true })
-- @ == expand()
