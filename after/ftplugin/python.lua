vim.api.nvim_buf_set_keymap(0,'n', '<F4>', ':w %<cr>:!python3 %<CR>', { noremap = true })
-- map <F5> :w <cr> :JupyterSendCell <cr>
vim.api.nvim_buf_set_keymap(0,'n', '<F5>', ':w %<cr>:JupyterSendCell <CR>', { noremap = true })
-- autocmd Filetype python map <buffer> <F5> :w<cr>:JupyterRunFile <cr>:exec '!python3' shellescape(@%, 1)<cr>
--

vim.opt.colorcolumn="80"
