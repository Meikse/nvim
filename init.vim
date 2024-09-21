filetype plugin indent on
set clipboard+=unnamedplus
set autochdir
set encoding=UTF-8
set number relativenumber
set autoindent
set smartindent
set cindent
set mouse=a
set omnifunc=syntaxcomplete#Complete "build in completion for easy setup
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
noremap <s-q> :bd<cr>

" information
noremap <space><cr> :!ls -lah<cr>
noremap <space><space> :ls<cr>
noremap <space>o :b#<cr>


if has("eval")   "indicates: not in vim.tiny 

    colo torte
    syntax on
    let mapleader=' '

    noremap <space>n :noh<cr>

    " terminal
    tnoremap <Esc> <c-\><c-n> " tnoremap <Esc><Esc> <c-\><c-n><c-w>h
    autocmd BufWinEnter,WinEnter term://* startinsert
    autocmd BufLeave term://* stopinsert
    
    " registers
    noremap <silent> x "_x
    xnoremap <silent> x "_x
    
    autocmd FileType help wincmd H

"     " Commenting blocks of code.
"     augroup commenting_blocks_of_code
"       autocmd!
"       autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
"       autocmd FileType sh,ruby,python   let b:comment_leader = '# '
"       autocmd FileType conf,fstab       let b:comment_leader = '# '
"       autocmd FileType tex              let b:comment_leader = '% '
"       autocmd FileType mail             let b:comment_leader = '> '
"       autocmd FileType vim              let b:comment_leader = '" '
"     augroup END
"     " implement toggle ability TODO
"     " implement functionality for vim.tiny
"     noremap <silent> <space>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"     noremap <silent> <space>cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
    
endif
