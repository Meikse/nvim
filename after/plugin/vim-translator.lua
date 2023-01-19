vim.g.translator_target_lang = 'de'
vim.g.translator_default_engines = {'google'}
-- translate one word and insert
vim.keymap.set('n','<leader>td',':Translate --target_lang=de<cr>')
vim.keymap.set('n','<leader>te',':Translate --target_lang=en<cr>')
-- translate one word and info
vim.keymap.set('n','<leader>tw','viw:TranslateR --target_lang=en<cr>')
vim.keymap.set('n','<leader>ts','viw:TranslateR --target_lang=de<cr>')
