-- quick insertmode exit 
vim.keymap.set('i','jj','<esc>', { silent = true })

-- quick insertmode jump
vim.keymap.set('i','jk','<c-o>a', { silent = true })

-- disable Del storage
vim.keymap.set({'n','x'},'x','"_x', { silent = true })

-- stop highlighting 
vim.keymap.set('n','<leader>n','<cmd>noh<cr>')

-- files overview
vim.keymap.set('n','<leader><cr>','<cmd>!ls<cr>')

-- buffer overview
vim.keymap.set('n','<leader><leader>','<cmd>ls<cr>')

-- buffer switching
vim.keymap.set('n','<C-p>','<cmd>bp<cr>', { silent = true })
vim.keymap.set('n','<C-n>','<cmd>bn<cr>', { silent = true })
vim.keymap.set('n','<leader>o','<cmd>b#<cr>', { silent = true })

-- buffer tabbing 
vim.keymap.set('n','<Tab>',':b<space>')

-- buffer closing
vim.keymap.set('n','<m-q>',':bd<cr>')
vim.keymap.set('n','<s-q>',':b#|bd#<cr>')

-- buffer resizing
vim.keymap.set('n','<leader>e',':vert res<cr>:res<cr>')
vim.keymap.set('n','<leader>r','<c-w>=')
vim.keymap.set('n','<m-l>','<c-w><')
vim.keymap.set('n','<m-h>','<c-w>>')
vim.keymap.set('n','<m-j>','<c-w>+')
vim.keymap.set('n','<m-k>','<c-w>-')

-- buffer jumping 
-- vim.keymap.set('n','<c-l>','<c-w>l')
-- vim.keymap.set('n','<c-h>','<c-w>h')
-- vim.keymap.set('n','<c-j>','<c-w>j')
-- vim.keymap.set('n','<c-k>','<c-w>k')

-- hardcore mode
vim.keymap.set({'n','v','i'},'<up>','<NOP>', { silent = true })
vim.keymap.set({'n','v','i'},'<down>','<NOP>', { silent = true })
vim.keymap.set({'n','v','i'},'<left>','<NOP>', { silent = true })
vim.keymap.set({'n','v','i'},'<right>','<NOP>', { silent = true })

-- terminal exit
-- vim.keymap.set('t','<esc>','<c-\><c-n>')
