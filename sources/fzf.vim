let g:fzf_layout = {'window': {'width': 0.9, 'height': 0.85} }
let g:fzf_preview_window = ''
let $FZF_DEFAULT_OPTS = '--reverse --inline-info'
let g:fzf_buffers_jump = 1
nnoremap <silent> <leader>d :Files /<cr>
nnoremap <silent> <leader>h :Files ~/<cr>
nnoremap <silent> <leader><leader> :Buffers<cr>
nnoremap <c-f> :RG 
command! -bang -nargs=* RG  
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --smart-case -- '.(<q-args>), 1, <bang>0)
