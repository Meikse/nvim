
" usefull functions
" use call instead of exec when invoking vim functions
"
"
" augroup commenting_blocks_of_code
"   autocmd!
"   autocmd FileType c,cpp,java       let b:comment_leader = '// '
"   autocmd FileType arduino          let b:comment_leader = '// '
"   autocmd FileType sh,ruby,python   let b:comment_leader = '# '
"   autocmd FileType conf,fstab,      let b:comment_leader = '# '
"   autocmd FileType tex              let b:comment_leader = '% '
"   autocmd FileType mail             let b:comment_leader = '> '
"   autocmd FileType vim              let b:comment_leader = '" '
" augroup END
" noremap <silent> <leader>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
" noremap <silent> <leader>cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
"
"
" add number in first box of the row

function AddNumber()
     let num = line('$')
     for i in range(num+1)
         call setline(i, i . '. ' . getline(i))
     endfor
endfunction

" choose specific buffer for adding line number
function AddBufNum(buf)
     exec 'b'. a:buf 
     call AddNumber()
endfunction

"with :10,15call Number() 
"from line10 till 15 the number are written
" add offset TODO
function Number(offset)
     let i = line('.')
     call setline(i, i + a:offset . '. ' . getline(i))
endfunction

" split sentence from one row to seperate rows
function SplitSen()
    let lnum = line('.')
    let text = trim(getline(lnum))[:-2]
    let alist = split(text, '\. \+')
    let blist = []
    for item in alist
        if strpart(item,0,1) == " "
            call add(blist, item[1:-1])
        else
            call add(blist, item)
        endif
    endfor
	let tlist = map(blist, ' v:val . ". "')
    call setline(lnum, blist)
endfunction

" usually possible with s/../../
function DoubleLine()
    let text = trim(getline(line('.')))
endfunction

" kick out file without closing buffer :b#|bd#
function KickOut()
	let g:current = bufnr('%')
	exec "bn"
	exec "bd".g:current
endfunction

" loop trough available colorschemes
function DisplayColorSchemes()
   let currDir = getcwd()
   exec "cd $VIMRUNTIME/colors"
   for myCol in split(glob("*"), '\n')
      if myCol =~ '\.vim'
         let mycol = substitute(myCol, '\.vim', '', '')
         exec "colorscheme " . mycol
         exec "redraw!"
         echo "colorscheme = ". myCol
         sleep 2
      endif
   endfor
   exec "cd " . currDir
endfunction

"print timestamp for logging
function PrintTime(suffix, preffix)
   let time = strftime('%d.%m.%Y %T')
   call append(line('.'), a:suffix. " " . time . " " .a:preffix) 
endfunction

"print timestamp for journals
function TimestampJournal(suffix = "", preffix = "")
    let l:lastline = getline(line("$"))
    if empty(l:lastline) == 0
        call append(line("$"),"")
    endif
    call cursor(line("$"),1)
    call PrintTime(a:suffix,a:preffix)
    call append(line("$"),"")
    call cursor(line("$"),0)
    call append(line("$"),"")
    call cursor(line("$"),0)
    exec "startinsert"
endfunction

" way easier to implement like this
function DateInsert()
  $delete
  read !date
endfunction

" function ResizeWindow()
" TODO

" functoin DisplayTime()
" TODO
