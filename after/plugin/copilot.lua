-- vim.g.copilot_filetypes = { latex = false, markdown = false, pandoc = false, vimwiki = false }

-- key for selecting
vim.cmd[[imap <silent><script><expr> <C-j> copilot#Accept("\<CR>")]]

-- stop using tab for completion, since it is already used by cmp
vim.g.copilot_no_tab_map = true

-- tab through suggestions
vim.keymap.set('i', '<M-j>', '<Plug>(copilot-next)', {})
vim.keymap.set('i', '<M-k>', '<Plug>(copilot-previous)', {})
