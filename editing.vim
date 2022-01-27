" usefull functions
" use call instead of exec when invoking vim functions
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
function Number()
     let i = line('.')
     call setline(i, i . '. ' . getline(i))
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
         sleep 1
      endif
   endfor
   exec "cd " . currDir
endfunction

"print timestamp for logging
function PrintTime(suffix)
   let time = strftime('%d.%m.%Y %T')
   call setline(line('.'), a:suffix. " " . time) 
endfunction

"
" function ResizeWindow()
" endfunction
