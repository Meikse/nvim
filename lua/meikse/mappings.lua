-- go to next/previous buffers
vim.keymap.set('n','<C-p>','<cmd>bp<cr>', { silent = true })
vim.keymap.set('n','<C-n>','<cmd>bn<cr>', { silent = true })

-- buffer overview
vim.keymap.set('n','<leader><leader>','<cmd>ls<cr>')

-- buffer switching
vim.keymap.set('n','<Tab>',':b<space>')

