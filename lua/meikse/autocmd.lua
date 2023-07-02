-- opens help on the left 
vim.api.nvim_create_autocmd(
     "Filetype",
     {
	pattern = "help",
	command = "wincmd H"
})

-- enable spell check for text based files
vim.api.nvim_create_autocmd(
    { "BufRead", "BufNewFile" },
    { pattern = 
    { 
	    "*.txt", 
	    "*.md", "*.tex" 
    }, command = "setlocal spell | set complete+=.,k,w,b" 
    }
)

-- easy navigation for netrw
vim.api.nvim_create_autocmd(
     "Filetype",
     {
	pattern = "netrw",
	command = "nmap <buffer> h -"
})
vim.api.nvim_create_autocmd(
     "Filetype", { pattern = "netrw",
	command = "nmap <buffer> l <cr>"
})

-- group skeletons autocmds
-- autogroup them -- TODO
vim.api.nvim_create_autocmd(
    "BufNewFile",
    {
    pattern = "*.py", 
    command = "0r $XDG_CONFIG_HOME/nvim/skeleton/skeleton.py" 
    }
)
vim.api.nvim_create_autocmd(
    "BufNewFile",
    {
    pattern = "*.cpp", 
    command = "0r $XDG_CONFIG_HOME/nvim/skeleton/skeleton.cpp" 
    }
)
vim.api.nvim_create_autocmd(
    "BufNewFile",
    {
    pattern = "*.tex", 
    command = "0r $XDG_CONFIG_HOME/nvim/skeleton/skeleton.tex"
    }
)
-- .md highlighting for calcurse notes
vim.api.nvim_create_autocmd(
    {"BufNewFile","BufRead"},
    { pattern = 
      { 
	      "/tmp/calcurse*",
	      "~/.local/share/calcurse/notes/"
      },
      command = "set filetype=markdown" 
    }
)

-- for fast navigation out of terminal
-- see ./mappings.lua for normal navigation with Alt
vim.cmd([[
augroup TerminalMappings
  autocmd!
  autocmd TermOpen * tnoremap <silent> <m-h> <C-\><C-N><C-w>h
  autocmd TermOpen * tnoremap <silent> <m-j> <C-\><C-N><C-w>j
  autocmd TermOpen * tnoremap <silent> <m-k> <C-\><C-N><C-w>k
  autocmd TermOpen * tnoremap <silent> <m-l> <C-\><C-N><C-w>l
augroup END
]])

-- for Copilot, thus it generates semantic text
-- TODO, always assigns txt format, but should only if no file is invoked
-- vim.api.nvim_create_autocmd(
--     "VimEnter",
--      {
-- 	pattern = "",
-- 	command = "set filetype=txt"
-- })
