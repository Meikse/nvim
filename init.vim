call plug#begin('~/.config/nvim/plugins') "install git beforehand

Plug 'meikse/gruvbox'
" Plug 'rafi/awesome-vim-colorschemes'
Plug 'skywind3000/vim-auto-popmenu'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-orgmode/orgmode'
Plug 'jiangmiao/auto-pairs' 
Plug 'voldikss/vim-translator'
Plug 'dhruvasagar/vim-table-mode'
Plug 'ervandew/supertab' 
Plug 'vim-airline/vim-airline' 
Plug 'tpope/vim-fugitive'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'lervag/vimtex'
Plug 'jupyter-vim/jupyter-vim'
Plug 'stevearc/vim-arduino'
Plug 'skywind3000/asyncrun.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-commentary'

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'

" configure debugging mode in some way
" Plug 'puremourning/vimspector'

call plug#end()

source <sfile>:h/editing.vim
" source <sfile>:h/session/startify.vim
" source <sfile>:h/lsp_config.lua

let g:python3_host_prog = "/usr/bin/python3"
let g:python_host_prog = "/usr/bin/python2"

autocmd Filetype python map <buffer> <F4> :w<cr>:exec '!python3' shellescape(@%, 1)<cr>
autocmd Filetype python map <buffer> <F5> :w<cr>:JupyterRunFile <cr>:exec '!python3' shellescape(@%, 1)<cr>

map <F2> :w %<cr>:!g++ %<cr>:!./a.out<cr>
" autocmd FileType .cpp map <buffer> <F2> :w %<cr>:!g++ %<cr>:!./a.out<cr>
" autocmd FileType .cpp map <buffer> <F3> :!source ~/Documents/Cpp/init.zsh

let g:asyncrun_open = 8
let PYTHONUNBUFFERED=1
autocmd FileType python map <buffer> <F3> :w<CR>:JupyterRunFile <CR>:AsyncRun python3 -u "%"<CR>

set background=dark
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox 
" colorscheme pablo 

syntax enable 
filetype plugin indent on
set clipboard+=unnamedplus
let mapleader = ','
set autochdir
set encoding=UTF-8
set number relativenumber
set autoindent
set smartindent
set cindent       " stricter rules for C programs
set mouse=a
" set omnifunc=syntaxcomplete#Complete "build in completion for easy setup
set tabstop=4     " tabs are at better location (maybe change in python)
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=4  " indenting is 4 spaces
set cursorline cursorcolumn
set ignorecase

let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'

imap jj <esc>

tnoremap <Esc> <c-\><c-n> " tnoremap <Esc><Esc> <c-\><c-n><c-w>h
noremap <F8> :e ~/Master/Thesis/notes.md<cr>
noremap <F9> :e $MYVIMRC<cr>
" noremap <bs> :exec KickOut()<cr>:e .<cr>

au FileType netrw nmap <buffer> h -
au FileType netrw nmap <buffer> l <cr>

autocmd FileType help wincmd H

noremap <c-p> :bp <cr>
noremap <c-n> :bn <cr>
noremap <leader>o :b# <cr>
noremap <leader>n :noh<cr>
" noremap <leader><cr> :!ls <cr>
noremap <leader><cr> :!ls <cr>
noremap <leader><leader> :ls <cr>

imap jk <c-o>a
" inoremap <m-,> <c-o>a
noremap <silent> x "_x
xnoremap <silent> x "_x

" go full hardcore mode!
map <up> <NOP>
map <down> <NOP>
map <left> <NOP>
map <right> <NOP>

noremap <c-l> <c-w>l
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k

noremap <m-l> <c-w><
noremap <m-h> <c-w>>
noremap <m-j> <c-w>+
noremap <m-k> <c-w>-


" full size and decrease again buffer single key shortcut
" noremap <leader>h :vert res<cr> 
noremap <leader>f :vert res<cr> :res<cr> 
noremap <leader>r <c-w>=
" noremap <leader>f <c-w>o
" noremap <leader>r <c-w>v

noremap <s-q> :exec KickOut()<cr>
noremap <c-q> :bd<cr>
noremap <m-q> <c-w>c

noremap <Tab> :b<space>

" vim-commentary
noremap <silent> <leader>cc :Commentary<cr>
noremap <silent> <leader>cu :Commentary<cr>

" vimtex
let g:vimtex_quickfix_open_on_warning = 0

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 0

" fzf
" let g:fzf_layout = {'window': {'width': 0.9, 'height': 0.85} }
" let $FZF_DEFAULT_OPTS="inline-info --height 50% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
" let g:fzf_buffers_jump = 1
" nnoremap <silent> <leader>h :Files ~<cr>
" nnoremap <silent> <leader>d :Files /<cr>

" arduino
autocmd Filetype arduino noremap <leader>v :w<cr> :ArduinoVerify<CR>
autocmd Filetype arduino noremap <leader>u :w<cr> :ArduinoUpload<CR>
let g:arduino_programmer ='' 

" telescope
noremap <leader>l :Telescope find_files hidden=false search_dirs=/home/meikse/<cr>


" vim-table-mode'
let g:table_mode_corner='|' "markdown compatible

"vim-translator
let g:translator_target_lang = 'de'
let g:translator_default_engines = ['google']
noremap <leader>td :Translate --target_lang=de<cr>
noremap <leader>te :Translate --target_lang=en<cr>
" does not work if space does not exist in line anymore TODO
noremap <silent> <leader>tw viw:TranslateR --target_lang=en<cr>
noremap <silent> <leader>ts viw:TranslateR --target_lang=de<cr>

" vim-auto-popmenu
" enable this plugin for filetypes, '*' for all files.
let g:apc_enable_ft = {'*':1}
" source for dictionary, current or other loaded buffers, see ':help cpt'
set cpt=.,k,w,b
" don't select the first item.
set completeopt=menu,menuone,noselect
" suppress annoy messages.
set shortmess+=c

" markdown-preview
let g:mkdp_auto_close = 0

" templates
au BufNewFile *.cpp r ~/.config/nvim/skeleton/skeleton.cpp
au BufNewFile *.py r ~/.config/nvim/skeleton/skeleton.py

lua << END
require('telescope').setup{
defaults = {
    preview = {
        treesitter = false,
        }
    },
  pickers = {
    find_files = {
      theme = "dropdown",
    }
  },
}
END


" for ros
if exists("b:current_syntax")
  finish
endif

runtime syntax/xml.vim

let s:current_syntax=b:current_syntax
unlet b:current_syntax

syntax include @YAML syntax/yaml.vim
syntax region ymlSnipInline matchgroup=rosparamTag start="\m<.\{-}rosparam.\{-}>" end="\m</.\{-}rosparam.\{-}>" contains=@YAML containedin=xmlEntity
hi link rosparamTag ModeMsg

let b:current_syntax=s:current_syntax
