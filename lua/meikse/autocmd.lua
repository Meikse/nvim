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
	    -- "*.txt", 
	    "*.md", 
	    "*.tex" 
    }, command = "setlocal spell" 
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
     "Filetype",
     {
	pattern = "netrw",
	command = "nmap <buffer> l <cr>"
})

-- maps skeleton to new file
-- TODO

-- executes python interpreter
-- TODO

-- executes cpp compiler
-- TODO
