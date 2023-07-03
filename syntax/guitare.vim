" guitare.vim

" notes
syntax keyword GuitareNotes Am C G F Dm Em E7 A7 D7 G7 C7 B7 Bm e B D A E 

" claws
syntax keyword GuitareDot O
syntax match GuitareXXX /-/
syntax match GuitareNumber /-\zs\d\+\ze-/

" overview
syntax match GuitareHeading /^#.*/
syntax match GuitareSection /\[.\{-}\]/

" Set highlight color
highlight link GuitareNumber String
highlight link GuitareDot MoreMsg
highlight link GuitareNotes Keyword
highlight link GuitareHeading Title
highlight link GuitareSection WhiteSpace
highlight link GuitareXXX Whitespace
