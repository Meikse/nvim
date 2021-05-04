"general settings
set nocompatible               " Use improved version of Vim
set hidden                     " Allow buffer switching without saving first
set noerrorbells               " Disable annoying error bells
set noshowmode                 " Disable when airline is on
set encoding=utf-8             " Set encoding to UTF-8
set termencoding=utf-8         " Set encoding to UTF-8 in terminal
set clipboard=unnamed          " Copy from clipboard
set backspace=indent,eol,start " Make backspace behave live every other editor
set whichwrap+=<,>,h,l
set number relativenumber      " Enable Line numbers
set whichwrap+=<,>,h,l,[,]     " Allow left uarrow to go up a line
set shortmess=aoOtT
silent! set shortmess+=cI
set updatetime=500
set autochdir                  " change working directory to that of current file
let mapleader = ','            " Set mapleader to ','
" default os clipboard
set clipboard+=unnamedplus
" open file under cursor
nnoremap <silent><leader>g <c-w>gF
" comment out
augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType conf,fstab       let b:comment_leader = '# '
  autocmd FileType tex              let b:comment_leader = '% '
  autocmd FileType mail             let b:comment_leader = '> '
  autocmd FileType vim              let b:comment_leader = '" '
augroup END
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
" Jump between buffers 
nnoremap <silent> <C-J> <C-W><C-J>
nnoremap <silent> <C-K> <C-W><C-K>
nnoremap <silent> <C-L> <C-W><C-L>
nnoremap <silent> <C-H> <C-W><C-H>
" browser tabbing
nnoremap <silent> <m-h> :tabprevious<CR>
nnoremap <silent> <m-l> :tabnext<CR>
map <silent> <leader>t :tabnew<CR>
map <silent> <leader>w :q<CR>
" NERDtree
nnoremap <leader>n :NERDTreeToggle /home/meik<CR> 
nnoremap <leader>m :NERDTreeFind<CR>
" let g:NERDTreeMapOpenDirNode = 'l'
" let g:NERDTreeMapCloseDirNode = 'h'
