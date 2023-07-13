filetype plugin indent on
set clipboard+=unnamedplus
" let mapleader=' '
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

" essential shortcuts
imap jk <c-o>a
imap jj <esc>

" navigation
noremap <c-p> :bp <cr>
noremap <c-n> :bn <cr>
noremap <m-l> <c-w>l
noremap <m-h> <c-w>h
noremap <m-j> <c-w>j
noremap <m-k> <c-w>k

" kick out file without closing buffer :b#|bd#
function KickOut()
	let g:current = bufnr('%')
	exec "bn"
	exec "bd".g:current
endfunction

" closing
noremap <m-q> :bd<cr>
noremap <s-q> :KickOut()<cr>


" terminal
" tnoremap <Esc> <c-\><c-n> " tnoremap <Esc><Esc> <c-\><c-n><c-w>h

" registers
noremap <silent> x "_x
xnoremap <silent> x "_x

autocmd FileType help wincmd H

" Commenting blocks of code.
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
