-- map to system clipboard
vim.opt.clipboard = "unnamedplus"

-- mapleader
vim.g.mapleader = ' '

-- linenumbering
vim.opt.number = true
vim.opt.relativenumber = true

-- working dir
vim.opt.autochdir = true

-- indenting
-- vim.opt.autoindent = true
-- vim.opt.smarttab = true
-- vim.opt.smartindent = true
vim.cmd [[filetype indent off]]

-- tabbing
vim.opt.expandtab = true
vim.opt.tabstop = 2
-- vim.opt.softtabstop= 4 -- typescript?
vim.opt.shiftwidth = 2

-- completion
vim.opt.completeopt = {"menu","menuone"}

-- WHY DO THESE NOT WORK ?? :verbose set <option>
vim.cmd [[set formatoptions-=cro)]]
-- vim.opt.formatoptions = "jql"
