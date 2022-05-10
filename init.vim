call plug#begin('~/.config/nvim/plugins') "install git beforehand

Plug 'rafi/awesome-vim-colorschemes'
Plug 'jiangmiao/auto-pairs' 
Plug 'jupyter-vim/jupyter-vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline' "lualine might be better but icons dont work
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'neoclide/coc.nvim', {'branch':'release'} " :CocInstall coc-python
Plug 'lervag/vimtex'
Plug 'stevearc/vim-arduino'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" x Post-update hook for fzf ... Failed to download fzf: /home/meik/.config/nvim/plugins/fzf/install --bin

call plug#end()

source <sfile>:h/editing.vim

let g:python3_host_prog = "/usr/bin/python3"
let g:python_host_prog = "/usr/bin/python2"

autocmd Filetype python map <buffer> <F4> :w<cr>:exec '!python3' shellescape(@%, 1)<cr>
autocmd Filetype python map <buffer> <F5> :w<cr>:JupyterRunFile <cr>:exec '!python3' shellescape(@%, 1)<cr>

let g:asyncrun_open = 8
let PYTHONUNBUFFERED=1
autocmd FileType python map <buffer> <F3> :w<CR>:JupyterRunFile <CR>:AsyncRun python3 -u "%"<CR>

colorscheme gruvbox 
set background=dark

syntax enable 
filetype plugin indent on
set clipboard+=unnamedplus
let mapleader = ','
set autochdir
set number relativenumber
set autoindent
set smartindent
set cindent       " stricter rules for C programs
set mouse=a
" set omnifunc=syntaxcomplete#Complete "build in completion for easy setup
set tabstop=4     " tabs are at better location (maybe change in python)
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=4  " indenting is 4 spaces


let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'

imap jj <esc>

tnoremap <Esc> <c-\><c-n> " tnoremap <Esc><Esc> <c-\><c-n><c-w>h
noremap <F8> :bro ol<cr>
noremap <F9> :e $MYVIMRC<cr>
" noremap <bs> :exec KickOut()<cr>:e .<cr>

au FileType netrw nmap <buffer> h -
au FileType netrw nmap <buffer> l <cr>

autocmd FileType help wincmd H

noremap <c-b> :bp <cr>
noremap <c-n> :bn <cr>
noremap <c-p> :noh<cr>

noremap <leader><leader> :ls <cr>

inoremap <M-,> <c-o>a
noremap <silent> x "_x
xnoremap <silent> x "_x

inoremap <up> <NOP>
inoremap <down> <NOP>
inoremap <left> <NOP>
inoremap <right> <NOP>

" noremap <up> <NOP>
" noremap <down> <NOP>
" noremap <left> <NOP>
" noremap <right> <NOP>

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
" noremap <leader>h :vert res<cr> 
noremap <leader>f :vert res<cr> :res<cr> 
noremap <leader>r <c-w>=

noremap <s-q> :exec KickOut()<cr>
noremap <c-q> :bd<cr>
noremap <m-q> <c-w>c

noremap <Tab> :b<space>

augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java       let b:comment_leader = '// '
  autocmd FileType arduino          let b:comment_leader = '// '
  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType conf,fstab       let b:comment_leader = '# '
  autocmd FileType tex              let b:comment_leader = '% '
  autocmd FileType mail             let b:comment_leader = '> '
  autocmd FileType vim              let b:comment_leader = '" '
augroup END
noremap <silent> <leader>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <leader>cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" vimtex
let g:vimtex_quickfix_open_on_warning = 0

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" fzf
let g:fzf_layout = {'window': {'width': 0.9, 'height': 0.85} }
let $FZF_DEFAULT_OPTS="inline-info --height 50% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
let g:fzf_buffers_jump = 1
nnoremap <silent> <leader>h :Files ~<cr>
nnoremap <silent> <leader>d :Files /<cr>

" arduino
autocmd Filetype arduino noremap <leader>v :w<cr> :ArduinoVerify<CR>
autocmd Filetype arduino noremap <leader>u :w<cr> :ArduinoUpload<CR>
let g:arduino_programmer ='' 
