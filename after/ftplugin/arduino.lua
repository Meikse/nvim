vim.api.nvim_buf_set_keymap(0,'n', '<leader>cv', ':w %<cr>:ArduinoVerify<CR>', { noremap = true })
vim.api.nvim_buf_set_keymap(0,'n', '<leader>cu', ':w %<cr>:ArduinoUpload<CR>', { noremap = true })

-- " Change these as desired
-- nnoremap <buffer> <leader>aa <cmd>ArduinoAttach<CR>
-- nnoremap <buffer> <leader>av <cmd>ArduinoVerify<CR>
-- nnoremap <buffer> <leader>au <cmd>ArduinoUpload<CR>
-- nnoremap <buffer> <leader>aus <cmd>ArduinoUploadAndSerial<CR>
-- nnoremap <buffer> <leader>as <cmd>ArduinoSerial<CR>
-- nnoremap <buffer> <leader>ab <cmd>ArduinoChooseBoard<CR>
-- nnoremap <buffer> <leader>ap <cmd>ArduinoChooseProgrammer<CR>
