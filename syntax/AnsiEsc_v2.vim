" AnsiEsc.vim: Uses the 6.0 syntax highlighting.
" Language:		Text with ansi escape sequences
" Maintainer:	Dr. Charles E. Campbell, Jr. <Charles.E.Campbell.1@gsfc.nasa.gov>
" Version:		2
" Date:		November 21, 2001

if exists("loaded_ansiesc")
 finish
endif
let loaded_ansiesc= "v2"

syn clear

" Ansi-escape Sequence Handling
" =============================
syn region ansiBlack		 start="\e\[30m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRed		 start="\e\[31m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiGreen		 start="\e\[32m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiYellow		 start="\e\[33m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBlue		 start="\e\[34m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiMagenta		 start="\e\[35m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiCyan		 start="\e\[36m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiWhite		 start="\e\[37m" end="\e\["me=e-2 contains=ansiConceal

syn region ansiBoldBlack	 start="\e\[\(1;30\|30;1\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBoldRed		 start="\e\[\(1;31\|31;1\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBoldGreen	 start="\e\[\(1;32\|32;1\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBoldYellow	 start="\e\[\(1;33\|33;1\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBoldBlue		 start="\e\[\(1;34\|34;1\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBoldMagenta	 start="\e\[\(1;35\|35;1\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBoldCyan		 start="\e\[\(1;36\|36;1\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBoldWhite	 start="\e\[\(1;37\|37;1\)m" end="\e\["me=e-2 contains=ansiConceal

syn region ansiStandoutBlack	 start="\e\[\(3;30\|30;3\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiStandoutRed	 start="\e\[\(3;31\|31;3\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiStandoutGreen	 start="\e\[\(3;32\|32;3\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiStandoutYellow	 start="\e\[\(3;33\|33;3\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiStandoutBlue	 start="\e\[\(3;34\|34;3\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiStandoutMagenta	 start="\e\[\(3;35\|35;3\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiStandoutCyan	 start="\e\[\(3;36\|36;3\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiStandoutWhite	 start="\e\[\(3;37\|37;3\)m" end="\e\["me=e-2 contains=ansiConceal

syn region ansiItalicBlack	 start="\e\[\(2;30\|30;2\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiItalicRed	 start="\e\[\(2;31\|31;2\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiItalicGreen	 start="\e\[\(2;32\|32;2\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiItalicYellow	 start="\e\[\(2;33\|33;2\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiItalicBlue	 start="\e\[\(2;34\|34;2\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiItalicMagenta	 start="\e\[\(2;35\|35;2\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiItalicCyan	 start="\e\[\(2;36\|36;2\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiItalicWhite	 start="\e\[\(2;37\|37;2\)m" end="\e\["me=e-2 contains=ansiConceal

syn region ansiUnderlineBlack	 start="\e\[\(4;30\|30;4\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiUnderlineRed	 start="\e\[\(4;31\|31;4\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiUnderlineGreen	 start="\e\[\(4;32\|32;4\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiUnderlineYellow	 start="\e\[\(4;33\|33;4\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiUnderlineBlue	 start="\e\[\(4;34\|34;4\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiUnderlineMagenta	 start="\e\[\(4;35\|35;4\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiUnderlineCyan	 start="\e\[\(4;36\|36;4\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiUnderlineWhite	 start="\e\[\(4;37\|37;4\)m" end="\e\["me=e-2 contains=ansiConceal

syn region ansiRVBlack		 start="\e\[\(7;30\|30;7\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRVRed		 start="\e\[\(7;31\|31;7\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRVGreen		 start="\e\[\(7;32\|32;7\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRVYellow		 start="\e\[\(7;33\|33;7\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRVBlue		 start="\e\[\(7;34\|34;7\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRVMagenta	 start="\e\[\(7;35\|35;7\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRVCyan		 start="\e\[\(7;36\|36;7\)m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRVWhite		 start="\e\[\(7;37\|37;7\)m" end="\e\["me=e-2 contains=ansiConceal

syn match ansiStop		"\e\[m"
syn match ansiIgnore		"\e\[\([56];3[0-9]\|3[0-9];[56]\)m"
syn match ansiIgnore		"\e\[\([0-9]\+;\)\{2,}[0-9]\+m"

" Some Color Combinations - can't do 'em all, the qty of highlighting groups is limited!
" =======================
syn region ansiBlackBlack	 start="\e\[30;40m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRedBlack		 start="\e\[31;40m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiGreenBlack	 start="\e\[32;40m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiYellowBlack	 start="\e\[33;40m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBlueBlack	 start="\e\[34;40m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiMagentaBlack	 start="\e\[35;40m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiCyanBlack	 start="\e\[36;40m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiWhiteBlack	 start="\e\[37;40m" end="\e\["me=e-2 contains=ansiConceal

syn region ansiBlackRed		 start="\e\[30;41m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRedRed		 start="\e\[31;41m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiGreenRed		 start="\e\[32;41m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiYellowRed	 start="\e\[33;41m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBlueRed		 start="\e\[34;41m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiMagentaRed	 start="\e\[35;41m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiCyanRed		 start="\e\[36;41m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiWhiteRed		 start="\e\[37;41m" end="\e\["me=e-2 contains=ansiConceal

syn region ansiBlackGreen	 start="\e\[30;42m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRedGreen		 start="\e\[31;42m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiGreenGreen	 start="\e\[32;42m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiYellowGreen	 start="\e\[33;42m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBlueGreen	 start="\e\[34;42m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiMagentaGreen	 start="\e\[35;42m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiCyanGreen	 start="\e\[36;42m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiWhiteGreen	 start="\e\[37;42m" end="\e\["me=e-2 contains=ansiConceal

syn region ansiBlackYellow	 start="\e\[30;43m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRedYellow	 start="\e\[31;43m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiGreenYellow	 start="\e\[32;43m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiYellowYellow	 start="\e\[33;43m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBlueYellow	 start="\e\[34;43m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiMagentaYellow	 start="\e\[35;43m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiCyanYellow	 start="\e\[36;43m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiWhiteYellow	 start="\e\[37;43m" end="\e\["me=e-2 contains=ansiConceal

syn region ansiBlackBlue	 start="\e\[30;44m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRedBlue		 start="\e\[31;44m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiGreenBlue	 start="\e\[32;44m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiYellowBlue	 start="\e\[33;44m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBlueBlue		 start="\e\[34;44m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiMagentaBlue	 start="\e\[35;44m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiCyanBlue		 start="\e\[36;44m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiWhiteBlue	 start="\e\[37;44m" end="\e\["me=e-2 contains=ansiConceal

syn region ansiBlackMagenta	 start="\e\[30;45m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRedMagenta	 start="\e\[31;45m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiGreenMagenta	 start="\e\[32;45m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiYellowMagenta	 start="\e\[33;45m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBlueMagenta	 start="\e\[34;45m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiMagentaMagenta	 start="\e\[35;45m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiCyanMagenta	 start="\e\[36;45m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiWhiteMagenta	 start="\e\[37;45m" end="\e\["me=e-2 contains=ansiConceal

syn region ansiBlackCyan	 start="\e\[30;46m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRedCyan		 start="\e\[31;46m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiGreenCyan	 start="\e\[32;46m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiYellowCyan	 start="\e\[33;46m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBlueCyan		 start="\e\[34;46m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiMagentaCyan	 start="\e\[35;46m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiCyanCyan		 start="\e\[36;46m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiWhiteCyan	 start="\e\[37;46m" end="\e\["me=e-2 contains=ansiConceal

syn region ansiBlackWhite	 start="\e\[30;47m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiRedWhite		 start="\e\[31;47m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiGreenWhite	 start="\e\[32;47m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiYellowWhite	 start="\e\[33;47m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiBlueWhite	 start="\e\[34;47m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiMagentaWhite	 start="\e\[35;47m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiCyanWhite	 start="\e\[36;47m" end="\e\["me=e-2 contains=ansiConceal
syn region ansiWhiteWhite	 start="\e\[37;47m" end="\e\["me=e-2 contains=ansiConceal

syn match ansiConceal		contained "\e\[\(\d*;\)*\d*m"

" Highlighting
" ============
hi link ansiConceal		Ignore
hi link ansiIgnore		ansiStop
hi link ansiStop		Ignore

if &t_Co == 8
  hi ansiBlack		cterm=none gui=none ctermfg=0 guifg=black
  hi ansiRed		cterm=none gui=none ctermfg=1 guifg=red
  hi ansiGreen		cterm=none gui=none ctermfg=2 guifg=green
  hi ansiYellow		cterm=none gui=none ctermfg=3 guifg=yellow
  hi ansiBlue		cterm=none gui=none ctermfg=4 guifg=blue
  hi ansiMagenta		cterm=none gui=none ctermfg=5 guifg=magenta
  hi ansiCyan		cterm=none gui=none ctermfg=6 guifg=cyan
  hi ansiWhite		cterm=none gui=none ctermfg=7 guifg=white
  
  hi ansiBoldBlack		cterm=bold gui=bold ctermfg=0 guifg=black
  hi ansiBoldRed		cterm=bold gui=bold ctermfg=1 guifg=red
  hi ansiBoldGreen		cterm=bold gui=bold ctermfg=2 guifg=green
  hi ansiBoldYellow		cterm=bold gui=bold ctermfg=3 guifg=yellow
  hi ansiBoldBlue		cterm=bold gui=bold ctermfg=4 guifg=blue
  hi ansiBoldMagenta		cterm=bold gui=bold ctermfg=5 guifg=magenta
  hi ansiBoldCyan		cterm=bold gui=bold ctermfg=6 guifg=cyan
  hi ansiBoldWhite		cterm=bold gui=bold ctermfg=7 guifg=white
  
  hi ansiStandoutBlack		cterm=standout gui=standout ctermfg=0 guifg=black
  hi ansiStandoutRed		cterm=standout gui=standout ctermfg=1 guifg=red
  hi ansiStandoutGreen		cterm=standout gui=standout ctermfg=2 guifg=green
  hi ansiStandoutYellow		cterm=standout gui=standout ctermfg=3 guifg=yellow
  hi ansiStandoutBlue		cterm=standout gui=standout ctermfg=4 guifg=blue
  hi ansiStandoutMagenta	cterm=standout gui=standout ctermfg=5 guifg=magenta
  hi ansiStandoutCyan		cterm=standout gui=standout ctermfg=6 guifg=cyan
  hi ansiStandoutWhite		cterm=standout gui=standout ctermfg=7 guifg=white
  
  hi ansiItalicBlack		cterm=italic gui=italic ctermfg=0 guifg=black
  hi ansiItalicRed		cterm=italic gui=italic ctermfg=1 guifg=red
  hi ansiItalicGreen		cterm=italic gui=italic ctermfg=2 guifg=green
  hi ansiItalicYellow		cterm=italic gui=italic ctermfg=3 guifg=yellow
  hi ansiItalicBlue		cterm=italic gui=italic ctermfg=4 guifg=blue
  hi ansiItalicMagenta		cterm=italic gui=italic ctermfg=5 guifg=magenta
  hi ansiItalicCyan		cterm=italic gui=italic ctermfg=6 guifg=cyan
  hi ansiItalicWhite		cterm=italic gui=italic ctermfg=7 guifg=white
  
  hi ansiUnderlineBlack		cterm=underline gui=underline ctermfg=0 guifg=black
  hi ansiUnderlineRed		cterm=underline gui=underline ctermfg=1 guifg=red
  hi ansiUnderlineGreen		cterm=underline gui=underline ctermfg=2 guifg=green
  hi ansiUnderlineYellow	cterm=underline gui=underline ctermfg=3 guifg=yellow
  hi ansiUnderlineBlue		cterm=underline gui=underline ctermfg=4 guifg=blue
  hi ansiUnderlineMagenta	cterm=underline gui=underline ctermfg=5 guifg=magenta
  hi ansiUnderlineCyan		cterm=underline gui=underline ctermfg=6 guifg=cyan
  hi ansiUnderlineWhite		cterm=underline gui=underline ctermfg=7 guifg=white
  
  hi ansiRVBlack		cterm=reverse gui=reverse ctermfg=0 guifg=black
  hi ansiRVRed		cterm=reverse gui=reverse ctermfg=1 guifg=red
  hi ansiRVGreen		cterm=reverse gui=reverse ctermfg=2 guifg=green
  hi ansiRVYellow		cterm=reverse gui=reverse ctermfg=3 guifg=yellow
  hi ansiRVBlue		cterm=reverse gui=reverse ctermfg=4 guifg=blue
  hi ansiRVMagenta		cterm=reverse gui=reverse ctermfg=5 guifg=magenta
  hi ansiRVCyan		cterm=reverse gui=reverse ctermfg=6 guifg=cyan
  hi ansiRVWhite		cterm=reverse gui=reverse ctermfg=7 guifg=white
  
  hi ansiBlackBlack		cterm=none gui=none ctermfg=0 ctermbg=0 guifg=Black guibg=Black
  hi ansiRedBlack		cterm=none gui=none ctermfg=1 ctermbg=0 guifg=Red guibg=Black
  hi ansiGreenBlack		cterm=none gui=none ctermfg=2 ctermbg=0 guifg=Green guibg=Black
  hi ansiYellowBlack		cterm=none gui=none ctermfg=3 ctermbg=0 guifg=Yellow guibg=Black
  hi ansiBlueBlack		cterm=none gui=none ctermfg=4 ctermbg=0 guifg=Blue guibg=Black
  hi ansiMagentaBlack		cterm=none gui=none ctermfg=5 ctermbg=0 guifg=Magenta guibg=Black
  hi ansiCyanBlack		cterm=none gui=none ctermfg=6 ctermbg=0 guifg=Cyan guibg=Black
  hi ansiWhiteBlack		cterm=none gui=none ctermfg=7 ctermbg=0 guifg=White guibg=Black
  
  hi ansiBlackRed		cterm=none gui=none ctermfg=0 ctermbg=1 guifg=Black guibg=Red
  hi ansiRedRed		cterm=none gui=none ctermfg=1 ctermbg=1 guifg=Red guibg=Red
  hi ansiGreenRed		cterm=none gui=none ctermfg=2 ctermbg=1 guifg=Green guibg=Red
  hi ansiYellowRed		cterm=none gui=none ctermfg=3 ctermbg=1 guifg=Yellow guibg=Red
  hi ansiBlueRed		cterm=none gui=none ctermfg=4 ctermbg=1 guifg=Blue guibg=Red
  hi ansiMagentaRed		cterm=none gui=none ctermfg=5 ctermbg=1 guifg=Magenta guibg=Red
  hi ansiCyanRed		cterm=none gui=none ctermfg=6 ctermbg=1 guifg=Cyan guibg=Red
  hi ansiWhiteRed		cterm=none gui=none ctermfg=7 ctermbg=1 guifg=White guibg=Red
  
  hi ansiBlackGreen		cterm=none gui=none ctermfg=0 ctermbg=2 guifg=Black guibg=Green
  hi ansiRedGreen		cterm=none gui=none ctermfg=1 ctermbg=2 guifg=Red guibg=Green
  hi ansiGreenGreen		cterm=none gui=none ctermfg=2 ctermbg=2 guifg=Green guibg=Green
  hi ansiYellowGreen		cterm=none gui=none ctermfg=3 ctermbg=2 guifg=Yellow guibg=Green
  hi ansiBlueGreen		cterm=none gui=none ctermfg=4 ctermbg=2 guifg=Blue guibg=Green
  hi ansiMagentaGreen		cterm=none gui=none ctermfg=5 ctermbg=2 guifg=Magenta guibg=Green
  hi ansiCyanGreen		cterm=none gui=none ctermfg=6 ctermbg=2 guifg=Cyan guibg=Green
  hi ansiWhiteGreen		cterm=none gui=none ctermfg=7 ctermbg=2 guifg=White guibg=Green
  
  hi ansiBlackYellow		cterm=none gui=none ctermfg=0 ctermbg=3 guifg=Black guibg=Yellow
  hi ansiRedYellow		cterm=none gui=none ctermfg=1 ctermbg=3 guifg=Red guibg=Yellow
  hi ansiGreenYellow		cterm=none gui=none ctermfg=2 ctermbg=3 guifg=Green guibg=Yellow
  hi ansiYellowYellow		cterm=none gui=none ctermfg=3 ctermbg=3 guifg=Yellow guibg=Yellow
  hi ansiBlueYellow		cterm=none gui=none ctermfg=4 ctermbg=3 guifg=Blue guibg=Yellow
  hi ansiMagentaYellow		cterm=none gui=none ctermfg=5 ctermbg=3 guifg=Magenta guibg=Yellow
  hi ansiCyanYellow		cterm=none gui=none ctermfg=6 ctermbg=3 guifg=Cyan guibg=Yellow
  hi ansiWhiteYellow		cterm=none gui=none ctermfg=7 ctermbg=3 guifg=White guibg=Yellow
  
  hi ansiBlackBlue		cterm=none gui=none ctermfg=0 ctermbg=4 guifg=Black guibg=Blue
  hi ansiRedBlue		cterm=none gui=none ctermfg=1 ctermbg=4 guifg=Red guibg=Blue
  hi ansiGreenBlue		cterm=none gui=none ctermfg=2 ctermbg=4 guifg=Green guibg=Blue
  hi ansiYellowBlue		cterm=none gui=none ctermfg=3 ctermbg=4 guifg=Yellow guibg=Blue
  hi ansiBlueBlue		cterm=none gui=none ctermfg=4 ctermbg=4 guifg=Blue guibg=Blue
  hi ansiMagentaBlue		cterm=none gui=none ctermfg=5 ctermbg=4 guifg=Magenta guibg=Blue
  hi ansiCyanBlue		cterm=none gui=none ctermfg=6 ctermbg=4 guifg=Cyan guibg=Blue
  hi ansiWhiteBlue		cterm=none gui=none ctermfg=7 ctermbg=4 guifg=White guibg=Blue
  
  hi ansiBlackMagenta		cterm=none gui=none ctermfg=0 ctermbg=5 guifg=Black guibg=Magenta
  hi ansiRedMagenta		cterm=none gui=none ctermfg=1 ctermbg=5 guifg=Red guibg=Magenta
  hi ansiGreenMagenta		cterm=none gui=none ctermfg=2 ctermbg=5 guifg=Green guibg=Magenta
  hi ansiYellowMagenta		cterm=none gui=none ctermfg=3 ctermbg=5 guifg=Red guibg=Magenta
  hi ansiBlueMagenta		cterm=none gui=none ctermfg=4 ctermbg=5 guifg=Red guibg=Magenta
  hi ansiMagentaMagenta		cterm=none gui=none ctermfg=5 ctermbg=5 guifg=Magenta guibg=Magenta
  hi ansiCyanMagenta		cterm=none gui=none ctermfg=6 ctermbg=5 guifg=Cyan guibg=Magenta
  hi ansiWhiteMagenta		cterm=none gui=none ctermfg=7 ctermbg=5 guifg=White guibg=Magenta
  
  hi ansiBlackCyan		cterm=none gui=none ctermfg=0 ctermbg=6 guifg=Black guibg=Cyan
  hi ansiRedCyan		cterm=none gui=none ctermfg=1 ctermbg=6 guifg=Red guibg=Cyan
  hi ansiGreenCyan		cterm=none gui=none ctermfg=2 ctermbg=6 guifg=Green guibg=Cyan
  hi ansiYellowCyan		cterm=none gui=none ctermfg=3 ctermbg=6 guifg=Yellow guibg=Cyan
  hi ansiBlueCyan		cterm=none gui=none ctermfg=4 ctermbg=6 guifg=Blue guibg=Cyan
  hi ansiMagentaCyan		cterm=none gui=none ctermfg=5 ctermbg=6 guifg=Magenta guibg=Cyan
  hi ansiCyanCyan		cterm=none gui=none ctermfg=6 ctermbg=6 guifg=Cyan guibg=Cyan
  hi ansiWhiteCyan		cterm=none gui=none ctermfg=7 ctermbg=6 guifg=White guibg=Cyan
  
  hi ansiBlackWhite		cterm=none gui=none ctermfg=0 ctermbg=7 guifg=Black guibg=White
  hi ansiRedWhite		cterm=none gui=none ctermfg=1 ctermbg=7 guifg=Red guibg=White
  hi ansiGreenWhite		cterm=none gui=none ctermfg=2 ctermbg=7 guifg=Green guibg=White
  hi ansiYellowWhite		cterm=none gui=none ctermfg=3 ctermbg=7 guifg=Yellow guibg=White
  hi ansiBlueWhite		cterm=none gui=none ctermfg=4 ctermbg=7 guifg=Blue guibg=White
  hi ansiMagentaWhite		cterm=none gui=none ctermfg=5 ctermbg=7 guifg=Magenta guibg=White
  hi ansiCyanWhite		cterm=none gui=none ctermfg=6 ctermbg=7 guifg=Cyan guibg=White
  hi ansiWhiteWhite		cterm=none gui=none ctermfg=7 ctermbg=7 guifg=White guibg=White
else
  hi ansiBlack		cterm=none gui=none ctermfg=0  guifg=black
  hi ansiRed		cterm=none gui=none ctermfg=12 guifg=red
  hi ansiGreen		cterm=none gui=none ctermfg=10 guifg=green
  hi ansiYellow		cterm=none gui=none ctermfg=14 guifg=yellow
  hi ansiBlue		cterm=none gui=none ctermfg=9  guifg=blue
  hi ansiMagenta		cterm=none gui=none ctermfg=13 guifg=magenta
  hi ansiCyan		cterm=none gui=none ctermfg=11 guifg=cyan
  hi ansiWhite		cterm=none gui=none ctermfg=15 guifg=white
  
  hi ansiBoldBlack		cterm=bold gui=bold ctermfg=0  guifg=black
  hi ansiBoldRed		cterm=bold gui=bold ctermfg=12 guifg=red
  hi ansiBoldGreen		cterm=bold gui=bold ctermfg=10 guifg=green
  hi ansiBoldYellow		cterm=bold gui=bold ctermfg=14 guifg=yellow
  hi ansiBoldBlue		cterm=bold gui=bold ctermfg=9  guifg=blue
  hi ansiBoldMagenta		cterm=bold gui=bold ctermfg=13 guifg=magenta
  hi ansiBoldCyan		cterm=bold gui=bold ctermfg=11 guifg=cyan
  hi ansiBoldWhite		cterm=bold gui=bold ctermfg=15 guifg=white
  
  hi ansiStandoutBlack		cterm=standout gui=standout ctermfg=0  guifg=black
  hi ansiStandoutRed		cterm=standout gui=standout ctermfg=12 guifg=red
  hi ansiStandoutGreen		cterm=standout gui=standout ctermfg=10 guifg=green
  hi ansiStandoutYellow		cterm=standout gui=standout ctermfg=14 guifg=yellow
  hi ansiStandoutBlue		cterm=standout gui=standout ctermfg=9  guifg=blue
  hi ansiStandoutMagenta	cterm=standout gui=standout ctermfg=13 guifg=magenta
  hi ansiStandoutCyan		cterm=standout gui=standout ctermfg=11 guifg=cyan
  hi ansiStandoutWhite		cterm=standout gui=standout ctermfg=15 guifg=white
  
  hi ansiItalicBlack		cterm=italic gui=italic ctermfg=0  guifg=black
  hi ansiItalicRed		cterm=italic gui=italic ctermfg=12 guifg=red
  hi ansiItalicGreen		cterm=italic gui=italic ctermfg=10 guifg=green
  hi ansiItalicYellow		cterm=italic gui=italic ctermfg=14 guifg=yellow
  hi ansiItalicBlue		cterm=italic gui=italic ctermfg=9  guifg=blue
  hi ansiItalicMagenta		cterm=italic gui=italic ctermfg=13 guifg=magenta
  hi ansiItalicCyan		cterm=italic gui=italic ctermfg=11 guifg=cyan
  hi ansiItalicWhite		cterm=italic gui=italic ctermfg=15 guifg=white
  
  hi ansiUnderlineBlack		cterm=underline gui=underline ctermfg=0  guifg=black
  hi ansiUnderlineRed		cterm=underline gui=underline ctermfg=12 guifg=red
  hi ansiUnderlineGreen		cterm=underline gui=underline ctermfg=10 guifg=green
  hi ansiUnderlineYellow	cterm=underline gui=underline ctermfg=14 guifg=yellow
  hi ansiUnderlineBlue		cterm=underline gui=underline ctermfg=9  guifg=blue
  hi ansiUnderlineMagenta	cterm=underline gui=underline ctermfg=13 guifg=magenta
  hi ansiUnderlineCyan		cterm=underline gui=underline ctermfg=11 guifg=cyan
  hi ansiUnderlineWhite		cterm=underline gui=underline ctermfg=15 guifg=white
  
  hi ansiRVBlack		cterm=reverse gui=reverse ctermfg=0  guifg=black
  hi ansiRVRed		cterm=reverse gui=reverse ctermfg=12 guifg=red
  hi ansiRVGreen		cterm=reverse gui=reverse ctermfg=10 guifg=green
  hi ansiRVYellow		cterm=reverse gui=reverse ctermfg=14 guifg=yellow
  hi ansiRVBlue		cterm=reverse gui=reverse ctermfg=9  guifg=blue
  hi ansiRVMagenta		cterm=reverse gui=reverse ctermfg=13 guifg=magenta
  hi ansiRVCyan		cterm=reverse gui=reverse ctermfg=11 guifg=cyan
  hi ansiRVWhite		cterm=reverse gui=reverse ctermfg=15 guifg=white
  
  hi ansiRedBlack		cterm=none gui=none ctermfg=0  ctermbg=0  guifg=Black guibg=Black
  hi ansiRedBlack		cterm=none gui=none ctermfg=12 ctermbg=0  guifg=Red guibg=Black
  hi ansiGreenBlack		cterm=none gui=none ctermfg=10 ctermbg=0  guifg=Green guibg=Black
  hi ansiYellowBlack		cterm=none gui=none ctermfg=14 ctermbg=0  guifg=Yellow guibg=Black
  hi ansiBlueBlack		cterm=none gui=none ctermfg=9  ctermbg=0  guifg=Blue guibg=Black
  hi ansiMagentaBlack		cterm=none gui=none ctermfg=13 ctermbg=0  guifg=Magenta guibg=Black
  hi ansiCyanBlack		cterm=none gui=none ctermfg=11 ctermbg=0  guifg=Cyan guibg=Black
  hi ansiWhiteBlack		cterm=none gui=none ctermfg=15 ctermbg=0  guifg=White guibg=Black
  
  hi ansiBlackRed		cterm=none gui=none ctermfg=0  ctermbg=12 guifg=Black guibg=Red
  hi ansiRedRed		cterm=none gui=none ctermfg=12 ctermbg=12 guifg=Red guibg=Red
  hi ansiGreenRed		cterm=none gui=none ctermfg=10 ctermbg=12 guifg=Green guibg=Red
  hi ansiYellowRed		cterm=none gui=none ctermfg=14 ctermbg=12 guifg=Yellow guibg=Red
  hi ansiBlueRed		cterm=none gui=none ctermfg=9  ctermbg=12 guifg=Blue guibg=Red
  hi ansiMagentaRed		cterm=none gui=none ctermfg=13 ctermbg=12 guifg=Magenta guibg=Red
  hi ansiCyanRed		cterm=none gui=none ctermfg=11 ctermbg=12 guifg=Cyan guibg=Red
  hi ansiWhiteRed		cterm=none gui=none ctermfg=15 ctermbg=12 guifg=White guibg=Red
  
  hi ansiBlackGreen		cterm=none gui=none ctermfg=0  ctermbg=10 guifg=Black guibg=Green
  hi ansiRedGreen		cterm=none gui=none ctermfg=12 ctermbg=10 guifg=Red guibg=Green
  hi ansiGreenGreen		cterm=none gui=none ctermfg=10 ctermbg=10 guifg=Green guibg=Green
  hi ansiYellowGreen		cterm=none gui=none ctermfg=14 ctermbg=10 guifg=Yellow guibg=Green
  hi ansiBlueGreen		cterm=none gui=none ctermfg=9  ctermbg=10 guifg=Blue guibg=Green
  hi ansiMagentaGreen		cterm=none gui=none ctermfg=13 ctermbg=10 guifg=Magenta guibg=Green
  hi ansiCyanGreen		cterm=none gui=none ctermfg=11 ctermbg=10 guifg=Cyan guibg=Green
  hi ansiWhiteGreen		cterm=none gui=none ctermfg=15 ctermbg=10 guifg=White guibg=Green
  
  hi ansiBlackYellow		cterm=none gui=none ctermfg=0  ctermbg=14 guifg=Black guibg=Yellow
  hi ansiRedYellow		cterm=none gui=none ctermfg=12 ctermbg=14 guifg=Red guibg=Yellow
  hi ansiGreenYellow		cterm=none gui=none ctermfg=10 ctermbg=14 guifg=Green guibg=Yellow
  hi ansiYellowYellow		cterm=none gui=none ctermfg=14 ctermbg=14 guifg=Yellow guibg=Yellow
  hi ansiBlueYellow		cterm=none gui=none ctermfg=9  ctermbg=14 guifg=Blue guibg=Yellow
  hi ansiMagentaYellow		cterm=none gui=none ctermfg=13 ctermbg=14 guifg=Magenta guibg=Yellow
  hi ansiCyanYellow		cterm=none gui=none ctermfg=11 ctermbg=14 guifg=Cyan guibg=Yellow
  hi ansiWhiteYellow		cterm=none gui=none ctermfg=15 ctermbg=14 guifg=White guibg=Yellow
  
  hi ansiBlackBlue		cterm=none gui=none ctermfg=0  ctermbg=9  guifg=Black guibg=Blue
  hi ansiRedBlue		cterm=none gui=none ctermfg=12 ctermbg=9  guifg=Red guibg=Blue
  hi ansiGreenBlue		cterm=none gui=none ctermfg=10 ctermbg=9  guifg=Green guibg=Blue
  hi ansiYellowBlue		cterm=none gui=none ctermfg=14 ctermbg=9  guifg=Yellow guibg=Blue
  hi ansiBlueBlue		cterm=none gui=none ctermfg=9  ctermbg=9  guifg=Blue guibg=Blue
  hi ansiMagentaBlue		cterm=none gui=none ctermfg=13 ctermbg=9  guifg=Magenta guibg=Blue
  hi ansiCyanBlue		cterm=none gui=none ctermfg=11 ctermbg=9  guifg=Cyan guibg=Blue
  hi ansiWhiteBlue		cterm=none gui=none ctermfg=15 ctermbg=9  guifg=White guibg=Blue
  
  hi ansiBlackMagenta		cterm=none gui=none ctermfg=0  ctermbg=13 guifg=Black guibg=Magenta
  hi ansiRedMagenta		cterm=none gui=none ctermfg=12 ctermbg=13 guifg=Red guibg=Magenta
  hi ansiGreenMagenta		cterm=none gui=none ctermfg=10 ctermbg=13 guifg=Green guibg=Magenta
  hi ansiYellowMagenta		cterm=none gui=none ctermfg=14 ctermbg=13 guifg=Red guibg=Magenta
  hi ansiBlueMagenta		cterm=none gui=none ctermfg=9  ctermbg=13 guifg=Red guibg=Magenta
  hi ansiMagentaMagenta		cterm=none gui=none ctermfg=13 ctermbg=13 guifg=Magenta guibg=Magenta
  hi ansiCyanMagenta		cterm=none gui=none ctermfg=11 ctermbg=13 guifg=Cyan guibg=Magenta
  hi ansiWhiteMagenta		cterm=none gui=none ctermfg=15 ctermbg=13 guifg=White guibg=Magenta
  
  hi ansiBlackCyan		cterm=none gui=none ctermfg=0  ctermbg=11 guifg=Black guibg=Cyan
  hi ansiRedCyan		cterm=none gui=none ctermfg=12 ctermbg=11 guifg=Red guibg=Cyan
  hi ansiGreenCyan		cterm=none gui=none ctermfg=10 ctermbg=11 guifg=Green guibg=Cyan
  hi ansiYellowCyan		cterm=none gui=none ctermfg=14 ctermbg=11 guifg=Yellow guibg=Cyan
  hi ansiBlueCyan		cterm=none gui=none ctermfg=9  ctermbg=11 guifg=Blue guibg=Cyan
  hi ansiMagentaCyan		cterm=none gui=none ctermfg=13 ctermbg=11 guifg=Magenta guibg=Cyan
  hi ansiCyanCyan		cterm=none gui=none ctermfg=11 ctermbg=11 guifg=Cyan guibg=Cyan
  hi ansiWhiteCyan		cterm=none gui=none ctermfg=15 ctermbg=11 guifg=White guibg=Cyan
  
  hi ansiBlackWhite		cterm=none gui=none ctermfg=0  ctermbg=15 guifg=Black guibg=White
  hi ansiRedWhite		cterm=none gui=none ctermfg=12 ctermbg=15 guifg=Red guibg=White
  hi ansiGreenWhite		cterm=none gui=none ctermfg=10 ctermbg=15 guifg=Green guibg=White
  hi ansiYellowWhite		cterm=none gui=none ctermfg=14 ctermbg=15 guifg=Yellow guibg=White
  hi ansiBlueWhite		cterm=none gui=none ctermfg=9  ctermbg=15 guifg=Blue guibg=White
  hi ansiMagentaWhite		cterm=none gui=none ctermfg=13 ctermbg=15 guifg=Magenta guibg=White
  hi ansiCyanWhite		cterm=none gui=none ctermfg=11 ctermbg=15 guifg=Cyan guibg=White
  hi ansiWhiteWhite		cterm=none gui=none ctermfg=15 ctermbg=15 guifg=White guibg=White
endif

exe "setlocal hl=".substitute(&hl,'8:[^,]\{-},','8:Ignore,',"")
" vim: ts=12
