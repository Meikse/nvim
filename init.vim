"---main init---
call plug#begin('~/.config/nvim/plugged')

Plug 'rafi/awesome-vim-colorschemes' 			" colorschemes
Plug 'neovim/nvim-lspconfig' 				" language-server-protocol
Plug 'nvim-lua/completion-nvim' 			" general auto-completion
" Plug 'SirVer/ultisnips' 				" snippets
" Plug 'honza/vim-snippets' 				" snippets
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 				" file Finder
Plug 'lervag/vimtex' 					" LaTex compiler
Plug 'Konfekt/FastFold' 				" Folding
Plug 'ervandew/supertab' 				" completion Tab
Plug 'plasticboy/vim-markdown' 				" Markdown Highlighting
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'jiangmiao/auto-pairs' 				" auto-pair Brackets
Plug 'szw/vim-maximizer' 				" controlling several panes
Plug 'justinmk/vim-sneak' 				" find things in text body
Plug 'jupyter-vim/jupyter-vim' 				" REPL (live command line)
" Plug 'Kethku/neovide' 					" annimations
Plug 'preservim/nerdtree' 				" file browser
call plug#end()

filetype indent plugin on
source ~/.config/nvim/sources/colorschemes.vim 		" colorscheme settings
source ~/.config/nvim/sources/lsp_python.vim 		" pyright setting
source ~/.config/nvim/sources/general.vim 		" general settings
source ~/.config/nvim/sources/fzf.vim 			" fzf settings
source ~/.config/nvim/sources/markdown.vim 		" markdown-preview settings
source ~/.config/nvim/sources/supertab.vim 		" supertab settings 
source ~/.config/nvim/sources/NERDtree.vim 		" NERDtree settings 
source ~/.config/nvim/sources/Terminal.vim 		" NERDtree settings 

" Miscellaneous
let g:python3_host_prog='/usr/bin/python3'
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" Always use the same virtualenv for vim, regardless of what Python
" environment is loaded in the shell from which vim is launched
let g:vim_virtualenv_path = '/home/meik/.config/vim_virtualenv'
if exists('g:vim_virtualenv_path')
    pythonx import os; import vim
    pythonx activate_this = os.path.join(vim.eval('g:vim_virtualenv_path'), 'bin/activate_this.py')
    pythonx with open(activate_this) as f: exec(f.read(), {'__file__': activate_this})
endif

tnoremap <Esc> <C-\><C-n>

" ------------------------------------------------------------ "
fun! s:jup_ter()
"   echo 'hello sir'
  :vnew <CR>
endfun
command REPL call s:jup_ter()
