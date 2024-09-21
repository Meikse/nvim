filetype plugin indent on
set clipboard+=unnamedplus
set autochdir
set encoding=UTF-8
set number relativenumber
set autoindent
set smartindent
set cindent
set mouse=a
set tabstop=4     
set expandtab     
set shiftwidth=4  
set cursorline cursorcolumn
set ignorecase
" set spell
set complete+=.,k,w,b
language en_US.UTF-8

" lazy shortcuts
imap jk <c-o>a
imap jj <esc>

" navigation
noremap <c-p> :bp <cr> 
noremap <c-n> :bn <cr>
noremap <tab> :b<space>
noremap <m-q> :bd<cr>

" information
noremap <space><cr> :!ls -lah<cr>
noremap <space><space> :ls<cr>
noremap <space>o :b#<cr>


if has("eval")   "indicates: not in vim.tiny 

    colo torte
    syntax on
    set omnifunc=syntaxcomplete#Complete "build in completion for easy setup
    let mapleader=' '
    noremap <space>n :noh<cr>

    " terminal (just in case)
    tnoremap <Esc> <c-\><c-n> " tnoremap <Esc><Esc> <c-\><c-n><c-w>h
    autocmd BufWinEnter,WinEnter term://* startinsert
    autocmd BufLeave term://* stopinsert

    " netrw navigaton
    au FileType netrw nmap <buffer> h -
    au FileType netrw nmap <buffer> l <cr>
    
    " registers
    noremap <silent> x "_x
    xnoremap <silent> x "_x
    
    " vertical help alignement
    autocmd FileType help wincmd H
    
    if has("nvim")   "indicates: not in vim.tiny 
        call plug#begin('~/.config/nvim/plugged')
        Plug 'voldikss/vim-translator'
        Plug 'm4xshen/autoclose.nvim' 
        Plug 'tpope/vim-commentary'
        Plug 'tpope/vim-fugitive'
        Plug 'christoomey/vim-tmux-navigator'
        call plug#end()
        
        " vim-commentary
        noremap <silent> <leader>c :Commentary<CR>

        " vim-translator
        let g:translator_target_lang = 'de'
        let g:translator_default_engines = ['google']
        noremap <leader>td :Translate --target_lang=de<cr>
        noremap <leader>te :Translate --target_lang=en<cr>
        noremap <silent> <leader>tw viw:TranslateR --target_lang=en<cr>
        noremap <silent> <leader>ts viw:TranslateR --target_lang=de<cr

        " vim-fugitive
        noremap <silent> <leader>gs <cmd>Git status<cr>
        noremap <silent> <leader>gt <cmd>Git tree<cr>
        noremap <silent> <leader>ga <cmd>Git add %<cr>
        noremap <silent> <leader>gA <cmd>Git add<cr>
        noremap <silent> <leader>gc <cmd>Git commit -v<cr>
        noremap <silent> <leader>go <cmd>Git checkout<cr>
        noremap <silent> <leader>gm <cmd>Git merge<cr>
        noremap <silent> <leader>gb <cmd>Git branch<cr>
        noremap <silent> <leader>gr <cmd>Git restore --staged<cr>
    endif

endif
