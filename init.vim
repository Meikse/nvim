call plug#begin('~/.config/nvim/plugins') "install git beforehand

Plug 'rafi/awesome-vim-colorschemes'
Plug 'jiangmiao/auto-pairs' 
Plug 'jupyter-vim/jupyter-vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'neoclide/coc.nvim', {'branch':'release'} " :CocInstall coc-python
Plug 'lervag/vimtex'
Plug 'stevearc/vim-arduino'

call plug#end()

source ./editing.vim

let g:python3_host_prog = "/usr/bin/python3"
let g:python_host_prog = "/usr/bin/python2"

autocmd Filetype python map <buffer> <F4> :w<cr>:exec '!python3' shellescape(@%, 1)<cr>
autocmd Filetype python map <buffer> <F5> :w<cr>:JupyterRunFile <cr>:exec '!python3' shellescape(@%, 1)<cr>

let g:asyncrun_open = 8
let PYTHONUNBUFFERED=1
autocmd FileType python map <buffer> <F3> :w<CR>:JupyterRunFile <CR>:AsyncRun python3 -u "%"<CR>

colorscheme gruvbox "darkblue
set background=dark

set clipboard+=unnamedplus
let mapleader = ','
set autochdir
set number relativenumber
set autoindent
set smartindent
set mouse=a
syntax enable 
filetype plugin indent on
" set omnifunc=syntaxcomplete#Complete "build in completion for easy setup

let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'

tnoremap <Esc> <c-\><c-n>
" tnoremap <Esc><Esc> <c-\><c-n><c-w>h "critical 

noremap <F8> :bro ol<cr>
noremap <F9> :e $MYVIMRC<cr>
noremap <F10> :e .<cr>

noremap <c-b> :bp <cr>
noremap <c-n> :bn <cr>
noremap <c-p> :noh<cr>

noremap <leader><leader> :ls <cr>

inoremap <M-,> <c-o>a

noremap <up> <NOP>
noremap <down> <NOP>
noremap <left> <NOP>
noremap <right> <NOP>

noremap <c-l> <c-w>l
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k

noremap <m-l> <c-w><
noremap <m-h> <c-w>>
noremap <m-j> <c-w>+
noremap <m-k> <c-w>-

noremap <leader>n :noh<cr>
noremap <leader><cr> :pwd<cr>

" full size and decrease again buffer single key shortcut
noremap <leader>f :vert res<cr>
noremap <leader>r <c-w>=

noremap <s-q> :exec KickOut()<cr>
noremap <c-q> :bd<cr>
noremap <m-q> <c-w>c

augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java       let b:comment_leader = '// '
  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType conf,fstab       let b:comment_leader = '# '
  autocmd FileType tex              let b:comment_leader = '% '
  autocmd FileType mail             let b:comment_leader = '> '
  autocmd FileType vim              let b:comment_leader = '" '
augroup END
noremap <silent> <leader>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <leader>cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" arduino
noremap <buffer> <leader>v :w<cr> :ArduinoVerify<CR>
noremap <buffer> <leader>u :w<cr> :ArduinoUpload<CR>
let g:arduino_programmer ='' 
" serial console 
" $ stty -F %PORT raw %BAUDRATE
" cat %PORT
