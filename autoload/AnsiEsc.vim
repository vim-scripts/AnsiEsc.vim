" AnsiEsc.vim: Uses syntax highlighting.  A vim 7.0 plugin!
" Language:		Text with ansi escape sequences
" Maintainer:	Dr. Charles E. Campbell, Jr. <NdrOchipS@PcampbellAfamily.Mbiz>
" Version:		9
" Date:		Mar 18, 2009
"
" Usage: :AnsiEsc
"
" Typical Compiling Directions:
"  To get Vince Negri's conceal-patch is available using wget:
"      wget http://vince.negri.googlepages.com/conceal-ownsyntax.diff
"      cd ...Wherever/vim70
"      patch -p0 <...Wherever/conceal-ownsyntax.diff
"   You'll then need to
"      cd src
"      configure --with-features=huge
"      make
"      make install
"
" GetLatestVimScripts: 302 1 :AutoInstall: AnsiEsc.vim
" ---------------------------------------------------------------------
"  Load Once: {{{1
if exists("g:loaded_AnsiEsc")
 finish
endif
let g:loaded_AnsiEsc = "v9"
if v:version < 700
 echohl WarningMsg
 echo "***warning*** this version of AnsiEsc needs vim 7.0"
 echohl Normal
 finish
endif
let s:keepcpo= &cpo
set cpo&vim

" ---------------------------------------------------------------------
" AnsiEsc#AnsiEsc: toggles ansi-escape code visualization {{{2
fun! AnsiEsc#AnsiEsc()
"  call Dfunc("AnsiEsc#AnsiEsc()")
  let bn= bufnr("%")
  if !exists("s:AnsiEsc_enabled_{bn}")
   let s:AnsiEsc_enabled_{bn}= 0
  endif
  if s:AnsiEsc_enabled_{bn}
   " disable AnsiEsc highlighting
   syn clear
   exe "set ft=".s:AnsiEsc_ft
   let s:AnsiEsc_enabled_{bn}= 0
  else
   let s:AnsiEsc_ft           = &ft
   let s:AnsiEsc_enabled_{bn} = 1

   " -----------------
   "  Conceal Support: {{{2
   " -----------------
   if has("conceal")
    if &conc == 0
     let &conc= 3
    endif
   endif
  endif

  syn clear

  " ------------------------------
  " Ansi Escape Sequence Handling: {{{2
  " ------------------------------
  syn region ansiBlack		 start="\e\[30m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRed		 start="\e\[31m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiGreen		 start="\e\[32m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiYellow		 start="\e\[33m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBlue		 start="\e\[34m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiMagenta	 start="\e\[35m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiCyan		 start="\e\[36m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiWhite		 start="\e\[37m" end="\e\["me=e-2 contains=ansiConceal

  syn region ansiBoldBlack	 start="\e\[\%(1;30\|30;1\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBoldRed	 start="\e\[\%(1;31\|31;1\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBoldGreen	 start="\e\[\%(1;32\|32;1\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBoldYellow	 start="\e\[\%(1;33\|33;1\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBoldBlue	 start="\e\[\%(1;34\|34;1\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBoldMagenta	 start="\e\[\%(1;35\|35;1\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBoldCyan	 start="\e\[\%(1;36\|36;1\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBoldWhite	 start="\e\[\%(1;37\|37;1\)m" end="\e\["me=e-2 contains=ansiConceal

  syn region ansiStandoutBlack	 start="\e\[\%(1;\)\=\%(3;30\|30;3\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiStandoutRed	 start="\e\[\%(1;\)\=\%(3;31\|31;3\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiStandoutGreen	 start="\e\[\%(1;\)\=\%(3;32\|32;3\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiStandoutYellow	 start="\e\[\%(1;\)\=\%(3;33\|33;3\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiStandoutBlue	 start="\e\[\%(1;\)\=\%(3;34\|34;3\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiStandoutMagenta	 start="\e\[\%(1;\)\=\%(3;35\|35;3\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiStandoutCyan	 start="\e\[\%(1;\)\=\%(3;36\|36;3\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiStandoutWhite	 start="\e\[\%(1;\)\=\%(3;37\|37;3\)m" end="\e\["me=e-2 contains=ansiConceal

  syn region ansiItalicBlack	 start="\e\[\%(1;\)\=\%(2;30\|30;2\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiItalicRed	 start="\e\[\%(1;\)\=\%(2;31\|31;2\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiItalicGreen	 start="\e\[\%(1;\)\=\%(2;32\|32;2\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiItalicYellow	 start="\e\[\%(1;\)\=\%(2;33\|33;2\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiItalicBlue	 start="\e\[\%(1;\)\=\%(2;34\|34;2\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiItalicMagenta	 start="\e\[\%(1;\)\=\%(2;35\|35;2\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiItalicCyan	 start="\e\[\%(1;\)\=\%(2;36\|36;2\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiItalicWhite	 start="\e\[\%(1;\)\=\%(2;37\|37;2\)m" end="\e\["me=e-2 contains=ansiConceal

  syn region ansiUnderlineBlack	 start="\e\[\%(1;\)\=\%(4;30\|30;4\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiUnderlineRed	 start="\e\[\%(1;\)\=\%(4;31\|31;4\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiUnderlineGreen	 start="\e\[\%(1;\)\=\%(4;32\|32;4\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiUnderlineYellow	 start="\e\[\%(1;\)\=\%(4;33\|33;4\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiUnderlineBlue	 start="\e\[\%(1;\)\=\%(4;34\|34;4\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiUnderlineMagenta	 start="\e\[\%(1;\)\=\%(4;35\|35;4\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiUnderlineCyan	 start="\e\[\%(1;\)\=\%(4;36\|36;4\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiUnderlineWhite	 start="\e\[\%(1;\)\=\%(4;37\|37;4\)m" end="\e\["me=e-2 contains=ansiConceal

  syn region ansiBlinkBlack	 start="\e\[\%(1;\)\=\%(5;30\|30;5\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBlinkRed	 start="\e\[\%(1;\)\=\%(5;31\|31;5\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBlinkGreen	 start="\e\[\%(1;\)\=\%(5;32\|32;5\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBlinkYellow	 start="\e\[\%(1;\)\=\%(5;33\|33;5\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBlinkBlue	 start="\e\[\%(1;\)\=\%(5;34\|34;5\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBlinkMagenta	 start="\e\[\%(1;\)\=\%(5;35\|35;5\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBlinkCyan	 start="\e\[\%(1;\)\=\%(5;36\|36;5\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBlinkWhite	 start="\e\[\%(1;\)\=\%(5;37\|37;5\)m" end="\e\["me=e-2 contains=ansiConceal

  syn region ansiRapidBlinkBlack	 start="\e\[\%(1;\)\=\%(6;30\|30;6\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRapidBlinkRed	 start="\e\[\%(1;\)\=\%(6;31\|31;6\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRapidBlinkGreen	 start="\e\[\%(1;\)\=\%(6;32\|32;6\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRapidBlinkYellow	 start="\e\[\%(1;\)\=\%(6;33\|33;6\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRapidBlinkBlue	 start="\e\[\%(1;\)\=\%(6;34\|34;6\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRapidBlinkMagenta	 start="\e\[\%(1;\)\=\%(6;35\|35;6\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRapidBlinkCyan	 start="\e\[\%(1;\)\=\%(6;36\|36;6\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRapidBlinkWhite	 start="\e\[\%(1;\)\=\%(6;37\|37;6\)m" end="\e\["me=e-2 contains=ansiConceal

  syn region ansiRVBlack	 start="\e\[\%(1;\)\=\%(7;30\|30;7\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRVRed		 start="\e\[\%(1;\)\=\%(7;31\|31;7\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRVGreen	 start="\e\[\%(1;\)\=\%(7;32\|32;7\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRVYellow	 start="\e\[\%(1;\)\=\%(7;33\|33;7\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRVBlue		 start="\e\[\%(1;\)\=\%(7;34\|34;7\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRVMagenta	 start="\e\[\%(1;\)\=\%(7;35\|35;7\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRVCyan		 start="\e\[\%(1;\)\=\%(7;36\|36;7\)m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRVWhite		 start="\e\[\%(1;\)\=\%(7;37\|37;7\)m" end="\e\["me=e-2 contains=ansiConceal

  " handle 256-color terminals
  " unfortunately the following loops supporting 256-color mode
  "   a) take a *long* time, and
  "   b) cause the E424: Too many different highlighting attributes in use
  " so I don't advise using g:ansiesc_256color yet
  if v:version >= 700 && exists("&t_Co") && &t_Co == 256 && exists("g:ansiesc_256color")
"   call Decho("handle 256-color terminal")
   let icolor= 1
   while icolor < 256
    let jcolor= 1
    exe "syn region ansi256Color_".icolor.'_0 start="\e\[\%(1;\)\=47;5;'.icolor.'m" end="\e\["me=e-2 contains=ansiConceal'
    exe "syn region ansi256Color_0_".icolor.' start="\e\[\%(1;\)\=48;5;'.icolor.'m" end="\e\["me=e-2 contains=ansiConceal'
"    call Decho("exe syn region ansi256Color_".icolor.' start="\e\[\%(1;\)\=47;5;'.icolor.'m" end="\e\["me=e-2 contains=ansiConceal')
    while jcolor < 256
     exe "syn region ansi256Color_".icolor."_".jcolor.' start="\e\[\%(1;\)\=\%(47;5;'.icolor.';48;5;'.jcolor.'\|48;5;'.jcolor.';47;5;'.icolor.'\)m" end="\e\["me=e-2 contains=ansiConceal'
"     call Decho("exe syn region ansi256Color_".icolor."_".jcolor.' start="\e\[\%(1;\)\=\%(47;5;'.icolor.';48;5;'.jcolor.'\|48;5;'.jcolor.';47;5;'.icolor.'\)m" end="\e\["me=e-2 contains=ansiConceal')
     let jcolor= jcolor + 1
    endwhile
    let icolor= icolor + 1
   endwhile
  endif

  if has("conceal")
   syn match ansiStop		conceal "\e\[0\=m"
  else
   syn match ansiStop		"\e\[0\=m"
  endif

  "syn match ansiIgnore		conceal "\e\[\([56];3[0-9]\|3[0-9];[56]\)m"
  "syn match ansiIgnore		conceal "\e\[\([0-9]\+;\)\{2,}[0-9]\+m"

  " ---------------------------------------------------------------------
  " Some Color Combinations: - can't do 'em all, the qty of highlighting groups is limited! {{{2
  " ---------------------------------------------------------------------
  syn region ansiBlackBlack	 start="\e\[30;40m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRedBlack	 start="\e\[31;40m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiGreenBlack	 start="\e\[32;40m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiYellowBlack	 start="\e\[33;40m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBlueBlack	 start="\e\[34;40m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiMagentaBlack	 start="\e\[35;40m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiCyanBlack	 start="\e\[36;40m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiWhiteBlack	 start="\e\[37;40m" end="\e\["me=e-2 contains=ansiConceal

  syn region ansiBlackRed	 start="\e\[30;41m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRedRed		 start="\e\[31;41m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiGreenRed	 start="\e\[32;41m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiYellowRed	 start="\e\[33;41m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBlueRed	 start="\e\[34;41m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiMagentaRed	 start="\e\[35;41m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiCyanRed	 start="\e\[36;41m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiWhiteRed	 start="\e\[37;41m" end="\e\["me=e-2 contains=ansiConceal

  syn region ansiBlackGreen	 start="\e\[30;42m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRedGreen	 start="\e\[31;42m" end="\e\["me=e-2 contains=ansiConceal
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
  syn region ansiRedBlue	 start="\e\[31;44m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiGreenBlue	 start="\e\[32;44m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiYellowBlue	 start="\e\[33;44m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBlueBlue	 start="\e\[34;44m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiMagentaBlue	 start="\e\[35;44m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiCyanBlue	 start="\e\[36;44m" end="\e\["me=e-2 contains=ansiConceal
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
  syn region ansiRedCyan	 start="\e\[31;46m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiGreenCyan	 start="\e\[32;46m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiYellowCyan	 start="\e\[33;46m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBlueCyan	 start="\e\[34;46m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiMagentaCyan	 start="\e\[35;46m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiCyanCyan	 start="\e\[36;46m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiWhiteCyan	 start="\e\[37;46m" end="\e\["me=e-2 contains=ansiConceal

  syn region ansiBlackWhite	 start="\e\[30;47m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiRedWhite	 start="\e\[31;47m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiGreenWhite	 start="\e\[32;47m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiYellowWhite	 start="\e\[33;47m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiBlueWhite	 start="\e\[34;47m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiMagentaWhite	 start="\e\[35;47m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiCyanWhite	 start="\e\[36;47m" end="\e\["me=e-2 contains=ansiConceal
  syn region ansiWhiteWhite	 start="\e\[37;47m" end="\e\["me=e-2 contains=ansiConceal

  syn match ansiExtended	 "\e\[\(0;\)\=[34]8;\(\d*;\)*\d*m"	contains=ansiConceal

  if has("conceal")
   syn match ansiConceal		contained conceal "\e\[\(\d*;\)*\d*m"
  else
   syn match ansiConceal		contained "\e\[\(\d*;\)*\d*m"
  endif

  " -------------
  " Highlighting: {{{2
  " -------------
  " --------------
  " ansiesc_ignore: {{{3
  " --------------
  if !has("conceal")
   hi def link ansiConceal	Ignore
   hi def link ansiIgnore	ansiStop
   hi def link ansiStop		Ignore
   hi def link ansiExtended	Ignore
  endif
  exe "setlocal hl=".substitute(&hl,'8:[^,]\{-},','8:Ignore,',"")

  if &t_Co == 8 || &t_Co == 256
   " ---------------------
   " eight-color handling: {{{3
   " ---------------------
"   call Decho("set up 8-color highlighting groups")
   hi ansiBlack             ctermfg=black      guifg=black                                        cterm=none         gui=none
   hi ansiRed               ctermfg=red        guifg=red                                          cterm=none         gui=none
   hi ansiGreen             ctermfg=green      guifg=green                                        cterm=none         gui=none
   hi ansiYellow            ctermfg=yellow     guifg=yellow                                       cterm=none         gui=none
   hi ansiBlue              ctermfg=blue       guifg=blue                                         cterm=none         gui=none
   hi ansiMagenta           ctermfg=magenta    guifg=magenta                                      cterm=none         gui=none
   hi ansiCyan              ctermfg=cyan       guifg=cyan                                         cterm=none         gui=none
   hi ansiWhite             ctermfg=white      guifg=white                                        cterm=none         gui=none

   hi ansiBoldBlack         ctermfg=black      guifg=black                                        cterm=bold         gui=bold
   hi ansiBoldRed           ctermfg=red        guifg=red                                          cterm=bold         gui=bold
   hi ansiBoldGreen         ctermfg=green      guifg=green                                        cterm=bold         gui=bold
   hi ansiBoldYellow        ctermfg=yellow     guifg=yellow                                       cterm=bold         gui=bold
   hi ansiBoldBlue          ctermfg=blue       guifg=blue                                         cterm=bold         gui=bold
   hi ansiBoldMagenta       ctermfg=magenta    guifg=magenta                                      cterm=bold         gui=bold
   hi ansiBoldCyan          ctermfg=cyan       guifg=cyan                                         cterm=bold         gui=bold
   hi ansiBoldWhite         ctermfg=white      guifg=white                                        cterm=bold         gui=bold

   hi ansiStandoutBlack     ctermfg=black      guifg=black                                        cterm=standout     gui=standout
   hi ansiStandoutRed       ctermfg=red        guifg=red                                          cterm=standout     gui=standout
   hi ansiStandoutGreen     ctermfg=green      guifg=green                                        cterm=standout     gui=standout
   hi ansiStandoutYellow    ctermfg=yellow     guifg=yellow                                       cterm=standout     gui=standout
   hi ansiStandoutBlue      ctermfg=blue       guifg=blue                                         cterm=standout     gui=standout
   hi ansiStandoutMagenta   ctermfg=magenta    guifg=magenta                                      cterm=standout     gui=standout
   hi ansiStandoutCyan      ctermfg=cyan       guifg=cyan                                         cterm=standout     gui=standout
   hi ansiStandoutWhite     ctermfg=white      guifg=white                                        cterm=standout     gui=standout

   hi ansiItalicBlack       ctermfg=black      guifg=black                                        cterm=italic       gui=italic
   hi ansiItalicRed         ctermfg=red        guifg=red                                          cterm=italic       gui=italic
   hi ansiItalicGreen       ctermfg=green      guifg=green                                        cterm=italic       gui=italic
   hi ansiItalicYellow      ctermfg=yellow     guifg=yellow                                       cterm=italic       gui=italic
   hi ansiItalicBlue        ctermfg=blue       guifg=blue                                         cterm=italic       gui=italic
   hi ansiItalicMagenta     ctermfg=magenta    guifg=magenta                                      cterm=italic       gui=italic
   hi ansiItalicCyan        ctermfg=cyan       guifg=cyan                                         cterm=italic       gui=italic
   hi ansiItalicWhite       ctermfg=white      guifg=white                                        cterm=italic       gui=italic

   hi ansiUnderlineBlack    ctermfg=black      guifg=black                                        cterm=underline    gui=underline
   hi ansiUnderlineRed      ctermfg=red        guifg=red                                          cterm=underline    gui=underline
   hi ansiUnderlineGreen    ctermfg=green      guifg=green                                        cterm=underline    gui=underline
   hi ansiUnderlineYellow   ctermfg=yellow     guifg=yellow                                       cterm=underline    gui=underline
   hi ansiUnderlineBlue     ctermfg=blue       guifg=blue                                         cterm=underline    gui=underline
   hi ansiUnderlineMagenta  ctermfg=magenta    guifg=magenta                                      cterm=underline    gui=underline
   hi ansiUnderlineCyan     ctermfg=cyan       guifg=cyan                                         cterm=underline    gui=underline
   hi ansiUnderlineWhite    ctermfg=white      guifg=white                                        cterm=underline    gui=underline

   hi ansiBlinkBlack        ctermfg=black      guifg=black                                        cterm=standout     gui=undercurl
   hi ansiBlinkRed          ctermfg=red        guifg=red                                          cterm=standout     gui=undercurl
   hi ansiBlinkGreen        ctermfg=green      guifg=green                                        cterm=standout     gui=undercurl
   hi ansiBlinkYellow       ctermfg=yellow     guifg=yellow                                       cterm=standout     gui=undercurl
   hi ansiBlinkBlue         ctermfg=blue       guifg=blue                                         cterm=standout     gui=undercurl
   hi ansiBlinkMagenta      ctermfg=magenta    guifg=magenta                                      cterm=standout     gui=undercurl
   hi ansiBlinkCyan         ctermfg=cyan       guifg=cyan                                         cterm=standout     gui=undercurl
   hi ansiBlinkWhite        ctermfg=white      guifg=white                                        cterm=standout     gui=undercurl
                                                                                                                 
   hi ansiRapidBlinkBlack   ctermfg=black      guifg=black                                        cterm=standout     gui=undercurl
   hi ansiRapidBlinkRed     ctermfg=red        guifg=red                                          cterm=standout     gui=undercurl
   hi ansiRapidBlinkGreen   ctermfg=green      guifg=green                                        cterm=standout     gui=undercurl
   hi ansiRapidBlinkYellow  ctermfg=yellow     guifg=yellow                                       cterm=standout     gui=undercurl
   hi ansiRapidBlinkBlue    ctermfg=blue       guifg=blue                                         cterm=standout     gui=undercurl
   hi ansiRapidBlinkMagenta ctermfg=magenta    guifg=magenta                                      cterm=standout     gui=undercurl
   hi ansiRapidBlinkCyan    ctermfg=cyan       guifg=cyan                                         cterm=standout     gui=undercurl
   hi ansiRapidBlinkWhite   ctermfg=white      guifg=white                                        cterm=standout     gui=undercurl

   hi ansiRVBlack           ctermfg=black      guifg=black                                        cterm=reverse      gui=reverse
   hi ansiRVRed             ctermfg=red        guifg=red                                          cterm=reverse      gui=reverse
   hi ansiRVGreen           ctermfg=green      guifg=green                                        cterm=reverse      gui=reverse
   hi ansiRVYellow          ctermfg=yellow     guifg=yellow                                       cterm=reverse      gui=reverse
   hi ansiRVBlue            ctermfg=blue       guifg=blue                                         cterm=reverse      gui=reverse
   hi ansiRVMagenta         ctermfg=magenta    guifg=magenta                                      cterm=reverse      gui=reverse
   hi ansiRVCyan            ctermfg=cyan       guifg=cyan                                         cterm=reverse      gui=reverse
   hi ansiRVWhite           ctermfg=white      guifg=white                                        cterm=reverse      gui=reverse

   hi ansiBlackBlack        ctermfg=black      ctermbg=black      guifg=Black      guibg=Black    cterm=none         gui=none
   hi ansiRedBlack          ctermfg=red        ctermbg=black      guifg=Red        guibg=Black    cterm=none         gui=none
   hi ansiGreenBlack        ctermfg=green      ctermbg=black      guifg=Green      guibg=Black    cterm=none         gui=none
   hi ansiYellowBlack       ctermfg=yellow     ctermbg=black      guifg=Yellow     guibg=Black    cterm=none         gui=none
   hi ansiBlueBlack         ctermfg=blue       ctermbg=black      guifg=Blue       guibg=Black    cterm=none         gui=none
   hi ansiMagentaBlack      ctermfg=magenta    ctermbg=black      guifg=Magenta    guibg=Black    cterm=none         gui=none
   hi ansiCyanBlack         ctermfg=cyan       ctermbg=black      guifg=Cyan       guibg=Black    cterm=none         gui=none
   hi ansiWhiteBlack        ctermfg=white      ctermbg=black      guifg=White      guibg=Black    cterm=none         gui=none

   hi ansiBlackRed          ctermfg=black      ctermbg=red        guifg=Black      guibg=Red      cterm=none         gui=none
   hi ansiRedRed            ctermfg=red        ctermbg=red        guifg=Red        guibg=Red      cterm=none         gui=none
   hi ansiGreenRed          ctermfg=green      ctermbg=red        guifg=Green      guibg=Red      cterm=none         gui=none
   hi ansiYellowRed         ctermfg=yellow     ctermbg=red        guifg=Yellow     guibg=Red      cterm=none         gui=none
   hi ansiBlueRed           ctermfg=blue       ctermbg=red        guifg=Blue       guibg=Red      cterm=none         gui=none
   hi ansiMagentaRed        ctermfg=magenta    ctermbg=red        guifg=Magenta    guibg=Red      cterm=none         gui=none
   hi ansiCyanRed           ctermfg=cyan       ctermbg=red        guifg=Cyan       guibg=Red      cterm=none         gui=none
   hi ansiWhiteRed          ctermfg=white      ctermbg=red        guifg=White      guibg=Red      cterm=none         gui=none

   hi ansiBlackGreen        ctermfg=black      ctermbg=green      guifg=Black      guibg=Green    cterm=none         gui=none
   hi ansiRedGreen          ctermfg=red        ctermbg=green      guifg=Red        guibg=Green    cterm=none         gui=none
   hi ansiGreenGreen        ctermfg=green      ctermbg=green      guifg=Green      guibg=Green    cterm=none         gui=none
   hi ansiYellowGreen       ctermfg=yellow     ctermbg=green      guifg=Yellow     guibg=Green    cterm=none         gui=none
   hi ansiBlueGreen         ctermfg=blue       ctermbg=green      guifg=Blue       guibg=Green    cterm=none         gui=none
   hi ansiMagentaGreen      ctermfg=magenta    ctermbg=green      guifg=Magenta    guibg=Green    cterm=none         gui=none
   hi ansiCyanGreen         ctermfg=cyan       ctermbg=green      guifg=Cyan       guibg=Green    cterm=none         gui=none
   hi ansiWhiteGreen        ctermfg=white      ctermbg=green      guifg=White      guibg=Green    cterm=none         gui=none

   hi ansiBlackYellow       ctermfg=black      ctermbg=yellow     guifg=Black      guibg=Yellow   cterm=none         gui=none
   hi ansiRedYellow         ctermfg=red        ctermbg=yellow     guifg=Red        guibg=Yellow   cterm=none         gui=none
   hi ansiGreenYellow       ctermfg=green      ctermbg=yellow     guifg=Green      guibg=Yellow   cterm=none         gui=none
   hi ansiYellowYellow      ctermfg=yellow     ctermbg=yellow     guifg=Yellow     guibg=Yellow   cterm=none         gui=none
   hi ansiBlueYellow        ctermfg=blue       ctermbg=yellow     guifg=Blue       guibg=Yellow   cterm=none         gui=none
   hi ansiMagentaYellow     ctermfg=magenta    ctermbg=yellow     guifg=Magenta    guibg=Yellow   cterm=none         gui=none
   hi ansiCyanYellow        ctermfg=cyan       ctermbg=yellow     guifg=Cyan       guibg=Yellow   cterm=none         gui=none
   hi ansiWhiteYellow       ctermfg=white      ctermbg=yellow     guifg=White      guibg=Yellow   cterm=none         gui=none

   hi ansiBlackBlue         ctermfg=black      ctermbg=blue       guifg=Black      guibg=Blue     cterm=none         gui=none
   hi ansiRedBlue           ctermfg=red        ctermbg=blue       guifg=Red        guibg=Blue     cterm=none         gui=none
   hi ansiGreenBlue         ctermfg=green      ctermbg=blue       guifg=Green      guibg=Blue     cterm=none         gui=none
   hi ansiYellowBlue        ctermfg=yellow     ctermbg=blue       guifg=Yellow     guibg=Blue     cterm=none         gui=none
   hi ansiBlueBlue          ctermfg=blue       ctermbg=blue       guifg=Blue       guibg=Blue     cterm=none         gui=none
   hi ansiMagentaBlue       ctermfg=magenta    ctermbg=blue       guifg=Magenta    guibg=Blue     cterm=none         gui=none
   hi ansiCyanBlue          ctermfg=cyan       ctermbg=blue       guifg=Cyan       guibg=Blue     cterm=none         gui=none
   hi ansiWhiteBlue         ctermfg=white      ctermbg=blue       guifg=White      guibg=Blue     cterm=none         gui=none

   hi ansiBlackMagenta      ctermfg=black      ctermbg=magenta    guifg=Black      guibg=Magenta  cterm=none         gui=none
   hi ansiRedMagenta        ctermfg=red        ctermbg=magenta    guifg=Red        guibg=Magenta  cterm=none         gui=none
   hi ansiGreenMagenta      ctermfg=green      ctermbg=magenta    guifg=Green      guibg=Magenta  cterm=none         gui=none
   hi ansiYellowMagenta     ctermfg=yellow     ctermbg=magenta    guifg=Yellow     guibg=Magenta  cterm=none         gui=none
   hi ansiBlueMagenta       ctermfg=blue       ctermbg=magenta    guifg=Blue       guibg=Magenta  cterm=none         gui=none
   hi ansiMagentaMagenta    ctermfg=magenta    ctermbg=magenta    guifg=Magenta    guibg=Magenta  cterm=none         gui=none
   hi ansiCyanMagenta       ctermfg=cyan       ctermbg=magenta    guifg=Cyan       guibg=Magenta  cterm=none         gui=none
   hi ansiWhiteMagenta      ctermfg=white      ctermbg=magenta    guifg=White      guibg=Magenta  cterm=none         gui=none

   hi ansiBlackCyan         ctermfg=black      ctermbg=cyan       guifg=Black      guibg=Cyan     cterm=none         gui=none
   hi ansiRedCyan           ctermfg=red        ctermbg=cyan       guifg=Red        guibg=Cyan     cterm=none         gui=none
   hi ansiGreenCyan         ctermfg=green      ctermbg=cyan       guifg=Green      guibg=Cyan     cterm=none         gui=none
   hi ansiYellowCyan        ctermfg=yellow     ctermbg=cyan       guifg=Yellow     guibg=Cyan     cterm=none         gui=none
   hi ansiBlueCyan          ctermfg=blue       ctermbg=cyan       guifg=Blue       guibg=Cyan     cterm=none         gui=none
   hi ansiMagentaCyan       ctermfg=magenta    ctermbg=cyan       guifg=Magenta    guibg=Cyan     cterm=none         gui=none
   hi ansiCyanCyan          ctermfg=cyan       ctermbg=cyan       guifg=Cyan       guibg=Cyan     cterm=none         gui=none
   hi ansiWhiteCyan         ctermfg=white      ctermbg=cyan       guifg=White      guibg=Cyan     cterm=none         gui=none

   hi ansiBlackWhite        ctermfg=black      ctermbg=white      guifg=Black      guibg=White    cterm=none         gui=none
   hi ansiRedWhite          ctermfg=red        ctermbg=white      guifg=Red        guibg=White    cterm=none         gui=none
   hi ansiGreenWhite        ctermfg=green      ctermbg=white      guifg=Green      guibg=White    cterm=none         gui=none
   hi ansiYellowWhite       ctermfg=yellow     ctermbg=white      guifg=Yellow     guibg=White    cterm=none         gui=none
   hi ansiBlueWhite         ctermfg=blue       ctermbg=white      guifg=Blue       guibg=White    cterm=none         gui=none
   hi ansiMagentaWhite      ctermfg=magenta    ctermbg=white      guifg=Magenta    guibg=White    cterm=none         gui=none
   hi ansiCyanWhite         ctermfg=cyan       ctermbg=white      guifg=Cyan       guibg=White    cterm=none         gui=none
   hi ansiWhiteWhite        ctermfg=white      ctermbg=white      guifg=White      guibg=White    cterm=none         gui=none

   if v:version >= 700 && exists("&t_Co") && &t_Co == 256 && exists("g:ansiesc_256color")
    " ---------------------------
    " handle 256-color terminals: {{{3
    " ---------------------------
"    call Decho("set up 256-color highlighting groups")
    let icolor= 1
    while icolor < 256
     let jcolor= 1
     exe "hi ansiHL_".icolor."_0 ctermfg=".icolor
     exe "hi ansiHL_0_".icolor." ctermbg=".icolor
"     call Decho("exe hi ansiHL_".icolor." ctermfg=".icolor)
     while jcolor < 256
      exe "hi ansiHL_".icolor."_".jcolor." ctermfg=".icolor." ctermbg=".jcolor
"      call Decho("exe hi ansiHL_".icolor."_".jcolor." ctermfg=".icolor." ctermbg=".jcolor)
      let jcolor= jcolor + 1
     endwhile
     let icolor= icolor + 1
    endwhile
   endif

  else
   " ----------------------------------
   " not 8 or 256 color terminals (gui): {{{3
   " ----------------------------------
"   call Decho("set up gui highlighting groups")
   hi ansiBlack             ctermfg=black      guifg=black                                        cterm=none         gui=none
   hi ansiRed               ctermfg=red        guifg=red                                          cterm=none         gui=none
   hi ansiGreen             ctermfg=green      guifg=green                                        cterm=none         gui=none
   hi ansiYellow            ctermfg=yellow     guifg=yellow                                       cterm=none         gui=none
   hi ansiBlue              ctermfg=blue       guifg=blue                                         cterm=none         gui=none
   hi ansiMagenta           ctermfg=magenta    guifg=magenta                                      cterm=none         gui=none
   hi ansiCyan              ctermfg=cyan       guifg=cyan                                         cterm=none         gui=none
   hi ansiWhite             ctermfg=white      guifg=white                                        cterm=none         gui=none

   hi ansiBoldBlack         ctermfg=black      guifg=black                                        cterm=bold         gui=bold
   hi ansiBoldRed           ctermfg=red        guifg=red                                          cterm=bold         gui=bold
   hi ansiBoldGreen         ctermfg=green      guifg=green                                        cterm=bold         gui=bold
   hi ansiBoldYellow        ctermfg=yellow     guifg=yellow                                       cterm=bold         gui=bold
   hi ansiBoldBlue          ctermfg=blue       guifg=blue                                         cterm=bold         gui=bold
   hi ansiBoldMagenta       ctermfg=magenta    guifg=magenta                                      cterm=bold         gui=bold
   hi ansiBoldCyan          ctermfg=cyan       guifg=cyan                                         cterm=bold         gui=bold
   hi ansiBoldWhite         ctermfg=white      guifg=white                                        cterm=bold         gui=bold

   hi ansiStandoutBlack     ctermfg=black      guifg=black                                        cterm=standout     gui=standout
   hi ansiStandoutRed       ctermfg=red        guifg=red                                          cterm=standout     gui=standout
   hi ansiStandoutGreen     ctermfg=green      guifg=green                                        cterm=standout     gui=standout
   hi ansiStandoutYellow    ctermfg=yellow     guifg=yellow                                       cterm=standout     gui=standout
   hi ansiStandoutBlue      ctermfg=blue       guifg=blue                                         cterm=standout     gui=standout
   hi ansiStandoutMagenta   ctermfg=magenta    guifg=magenta                                      cterm=standout     gui=standout
   hi ansiStandoutCyan      ctermfg=cyan       guifg=cyan                                         cterm=standout     gui=standout
   hi ansiStandoutWhite     ctermfg=white      guifg=white                                        cterm=standout     gui=standout

   hi ansiItalicBlack       ctermfg=black      guifg=black                                        cterm=italic       gui=italic
   hi ansiItalicRed         ctermfg=red        guifg=red                                          cterm=italic       gui=italic
   hi ansiItalicGreen       ctermfg=green      guifg=green                                        cterm=italic       gui=italic
   hi ansiItalicYellow      ctermfg=yellow     guifg=yellow                                       cterm=italic       gui=italic
   hi ansiItalicBlue        ctermfg=blue       guifg=blue                                         cterm=italic       gui=italic
   hi ansiItalicMagenta     ctermfg=magenta    guifg=magenta                                      cterm=italic       gui=italic
   hi ansiItalicCyan        ctermfg=cyan       guifg=cyan                                         cterm=italic       gui=italic
   hi ansiItalicWhite       ctermfg=white      guifg=white                                        cterm=italic       gui=italic

   hi ansiUnderlineBlack    ctermfg=black      guifg=black                                        cterm=underline    gui=underline
   hi ansiUnderlineRed      ctermfg=red        guifg=red                                          cterm=underline    gui=underline
   hi ansiUnderlineGreen    ctermfg=green      guifg=green                                        cterm=underline    gui=underline
   hi ansiUnderlineYellow   ctermfg=yellow     guifg=yellow                                       cterm=underline    gui=underline
   hi ansiUnderlineBlue     ctermfg=blue       guifg=blue                                         cterm=underline    gui=underline
   hi ansiUnderlineMagenta  ctermfg=magenta    guifg=magenta                                      cterm=underline    gui=underline
   hi ansiUnderlineCyan     ctermfg=cyan       guifg=cyan                                         cterm=underline    gui=underline
   hi ansiUnderlineWhite    ctermfg=white      guifg=white                                        cterm=underline    gui=underline

   hi ansiBlinkBlack        ctermfg=black      guifg=black                                        cterm=standout     gui=undercurl
   hi ansiBlinkRed          ctermfg=red        guifg=red                                          cterm=standout     gui=undercurl
   hi ansiBlinkGreen        ctermfg=green      guifg=green                                        cterm=standout     gui=undercurl
   hi ansiBlinkYellow       ctermfg=yellow     guifg=yellow                                       cterm=standout     gui=undercurl
   hi ansiBlinkBlue         ctermfg=blue       guifg=blue                                         cterm=standout     gui=undercurl
   hi ansiBlinkMagenta      ctermfg=magenta    guifg=magenta                                      cterm=standout     gui=undercurl
   hi ansiBlinkCyan         ctermfg=cyan       guifg=cyan                                         cterm=standout     gui=undercurl
   hi ansiBlinkWhite        ctermfg=white      guifg=white                                        cterm=standout     gui=undercurl
                                                                                                                 
   hi ansiRapidBlinkBlack   ctermfg=black      guifg=black                                        cterm=standout     gui=undercurl
   hi ansiRapidBlinkRed     ctermfg=red        guifg=red                                          cterm=standout     gui=undercurl
   hi ansiRapidBlinkGreen   ctermfg=green      guifg=green                                        cterm=standout     gui=undercurl
   hi ansiRapidBlinkYellow  ctermfg=yellow     guifg=yellow                                       cterm=standout     gui=undercurl
   hi ansiRapidBlinkBlue    ctermfg=blue       guifg=blue                                         cterm=standout     gui=undercurl
   hi ansiRapidBlinkMagenta ctermfg=magenta    guifg=magenta                                      cterm=standout     gui=undercurl
   hi ansiRapidBlinkCyan    ctermfg=cyan       guifg=cyan                                         cterm=standout     gui=undercurl
   hi ansiRapidBlinkWhite   ctermfg=white      guifg=white                                        cterm=standout     gui=undercurl

   hi ansiRVBlack           ctermfg=black      guifg=black                                        cterm=reverse      gui=reverse
   hi ansiRVRed             ctermfg=red        guifg=red                                          cterm=reverse      gui=reverse
   hi ansiRVGreen           ctermfg=green      guifg=green                                        cterm=reverse      gui=reverse
   hi ansiRVYellow          ctermfg=yellow     guifg=yellow                                       cterm=reverse      gui=reverse
   hi ansiRVBlue            ctermfg=blue       guifg=blue                                         cterm=reverse      gui=reverse
   hi ansiRVMagenta         ctermfg=magenta    guifg=magenta                                      cterm=reverse      gui=reverse
   hi ansiRVCyan            ctermfg=cyan       guifg=cyan                                         cterm=reverse      gui=reverse
   hi ansiRVWhite           ctermfg=white      guifg=white                                        cterm=reverse      gui=reverse

   hi ansiBlackBlack        ctermfg=black      ctermbg=black      guifg=Black      guibg=Black    cterm=none         gui=none
   hi ansiRedBlack          ctermfg=black      ctermbg=black      guifg=Black      guibg=Black    cterm=none         gui=none
   hi ansiRedBlack          ctermfg=red        ctermbg=black      guifg=Red        guibg=Black    cterm=none         gui=none
   hi ansiGreenBlack        ctermfg=green      ctermbg=black      guifg=Green      guibg=Black    cterm=none         gui=none
   hi ansiYellowBlack       ctermfg=yellow     ctermbg=black      guifg=Yellow     guibg=Black    cterm=none         gui=none
   hi ansiBlueBlack         ctermfg=blue       ctermbg=black      guifg=Blue       guibg=Black    cterm=none         gui=none
   hi ansiMagentaBlack      ctermfg=magenta    ctermbg=black      guifg=Magenta    guibg=Black    cterm=none         gui=none
   hi ansiCyanBlack         ctermfg=cyan       ctermbg=black      guifg=Cyan       guibg=Black    cterm=none         gui=none
   hi ansiWhiteBlack        ctermfg=white      ctermbg=black      guifg=White      guibg=Black    cterm=none         gui=none

   hi ansiBlackRed          ctermfg=black      ctermbg=red        guifg=Black      guibg=Red      cterm=none         gui=none
   hi ansiRedRed            ctermfg=red        ctermbg=red        guifg=Red        guibg=Red      cterm=none         gui=none
   hi ansiGreenRed          ctermfg=green      ctermbg=red        guifg=Green      guibg=Red      cterm=none         gui=none
   hi ansiYellowRed         ctermfg=yellow     ctermbg=red        guifg=Yellow     guibg=Red      cterm=none         gui=none
   hi ansiBlueRed           ctermfg=blue       ctermbg=red        guifg=Blue       guibg=Red      cterm=none         gui=none
   hi ansiMagentaRed        ctermfg=magenta    ctermbg=red        guifg=Magenta    guibg=Red      cterm=none         gui=none
   hi ansiCyanRed           ctermfg=cyan       ctermbg=red        guifg=Cyan       guibg=Red      cterm=none         gui=none
   hi ansiWhiteRed          ctermfg=white      ctermbg=red        guifg=White      guibg=Red      cterm=none         gui=none

   hi ansiBlackGreen        ctermfg=black      ctermbg=green      guifg=Black      guibg=Green    cterm=none         gui=none
   hi ansiRedGreen          ctermfg=red        ctermbg=green      guifg=Red        guibg=Green    cterm=none         gui=none
   hi ansiGreenGreen        ctermfg=green      ctermbg=green      guifg=Green      guibg=Green    cterm=none         gui=none
   hi ansiYellowGreen       ctermfg=yellow     ctermbg=green      guifg=Yellow     guibg=Green    cterm=none         gui=none
   hi ansiBlueGreen         ctermfg=blue       ctermbg=green      guifg=Blue       guibg=Green    cterm=none         gui=none
   hi ansiMagentaGreen      ctermfg=magenta    ctermbg=green      guifg=Magenta    guibg=Green    cterm=none         gui=none
   hi ansiCyanGreen         ctermfg=cyan       ctermbg=green      guifg=Cyan       guibg=Green    cterm=none         gui=none
   hi ansiWhiteGreen        ctermfg=white      ctermbg=green      guifg=White      guibg=Green    cterm=none         gui=none

   hi ansiBlackYellow       ctermfg=black      ctermbg=yellow     guifg=Black      guibg=Yellow   cterm=none         gui=none
   hi ansiRedYellow         ctermfg=red        ctermbg=yellow     guifg=Red        guibg=Yellow   cterm=none         gui=none
   hi ansiGreenYellow       ctermfg=green      ctermbg=yellow     guifg=Green      guibg=Yellow   cterm=none         gui=none
   hi ansiYellowYellow      ctermfg=yellow     ctermbg=yellow     guifg=Yellow     guibg=Yellow   cterm=none         gui=none
   hi ansiBlueYellow        ctermfg=blue       ctermbg=yellow     guifg=Blue       guibg=Yellow   cterm=none         gui=none
   hi ansiMagentaYellow     ctermfg=magenta    ctermbg=yellow     guifg=Magenta    guibg=Yellow   cterm=none         gui=none
   hi ansiCyanYellow        ctermfg=cyan       ctermbg=yellow     guifg=Cyan       guibg=Yellow   cterm=none         gui=none
   hi ansiWhiteYellow       ctermfg=white      ctermbg=yellow     guifg=White      guibg=Yellow   cterm=none         gui=none

   hi ansiBlackBlue         ctermfg=black      ctermbg=blue       guifg=Black      guibg=Blue     cterm=none         gui=none
   hi ansiRedBlue           ctermfg=red        ctermbg=blue       guifg=Red        guibg=Blue     cterm=none         gui=none
   hi ansiGreenBlue         ctermfg=green      ctermbg=blue       guifg=Green      guibg=Blue     cterm=none         gui=none
   hi ansiYellowBlue        ctermfg=yellow     ctermbg=blue       guifg=Yellow     guibg=Blue     cterm=none         gui=none
   hi ansiBlueBlue          ctermfg=blue       ctermbg=blue       guifg=Blue       guibg=Blue     cterm=none         gui=none
   hi ansiMagentaBlue       ctermfg=magenta    ctermbg=blue       guifg=Magenta    guibg=Blue     cterm=none         gui=none
   hi ansiCyanBlue          ctermfg=cyan       ctermbg=blue       guifg=Cyan       guibg=Blue     cterm=none         gui=none
   hi ansiWhiteBlue         ctermfg=white      ctermbg=blue       guifg=White      guibg=Blue     cterm=none         gui=none

   hi ansiBlackMagenta      ctermfg=black      ctermbg=magenta    guifg=Black      guibg=Magenta  cterm=none         gui=none
   hi ansiRedMagenta        ctermfg=red        ctermbg=magenta    guifg=Red        guibg=Magenta  cterm=none         gui=none
   hi ansiGreenMagenta      ctermfg=green      ctermbg=magenta    guifg=Green      guibg=Magenta  cterm=none         gui=none
   hi ansiYellowMagenta     ctermfg=yellow     ctermbg=magenta    guifg=Yellow     guibg=Magenta  cterm=none         gui=none
   hi ansiBlueMagenta       ctermfg=blue       ctermbg=magenta    guifg=Blue       guibg=Magenta  cterm=none         gui=none
   hi ansiMagentaMagenta    ctermfg=magenta    ctermbg=magenta    guifg=Magenta    guibg=Magenta  cterm=none         gui=none
   hi ansiCyanMagenta       ctermfg=cyan       ctermbg=magenta    guifg=Cyan       guibg=Magenta  cterm=none         gui=none
   hi ansiWhiteMagenta      ctermfg=white      ctermbg=magenta    guifg=White      guibg=Magenta  cterm=none         gui=none

   hi ansiBlackCyan         ctermfg=black      ctermbg=cyan       guifg=Black      guibg=Cyan     cterm=none         gui=none
   hi ansiRedCyan           ctermfg=red        ctermbg=cyan       guifg=Red        guibg=Cyan     cterm=none         gui=none
   hi ansiGreenCyan         ctermfg=green      ctermbg=cyan       guifg=Green      guibg=Cyan     cterm=none         gui=none
   hi ansiYellowCyan        ctermfg=yellow     ctermbg=cyan       guifg=Yellow     guibg=Cyan     cterm=none         gui=none
   hi ansiBlueCyan          ctermfg=blue       ctermbg=cyan       guifg=Blue       guibg=Cyan     cterm=none         gui=none
   hi ansiMagentaCyan       ctermfg=magenta    ctermbg=cyan       guifg=Magenta    guibg=Cyan     cterm=none         gui=none
   hi ansiCyanCyan          ctermfg=cyan       ctermbg=cyan       guifg=Cyan       guibg=Cyan     cterm=none         gui=none
   hi ansiWhiteCyan         ctermfg=white      ctermbg=cyan       guifg=White      guibg=Cyan     cterm=none         gui=none

   hi ansiBlackWhite        ctermfg=black      ctermbg=white      guifg=Black      guibg=White    cterm=none         gui=none
   hi ansiRedWhite          ctermfg=red        ctermbg=white      guifg=Red        guibg=White    cterm=none         gui=none
   hi ansiGreenWhite        ctermfg=green      ctermbg=white      guifg=Green      guibg=White    cterm=none         gui=none
   hi ansiYellowWhite       ctermfg=yellow     ctermbg=white      guifg=Yellow     guibg=White    cterm=none         gui=none
   hi ansiBlueWhite         ctermfg=blue       ctermbg=white      guifg=Blue       guibg=White    cterm=none         gui=none
   hi ansiMagentaWhite      ctermfg=magenta    ctermbg=white      guifg=Magenta    guibg=White    cterm=none         gui=none
   hi ansiCyanWhite         ctermfg=cyan       ctermbg=white      guifg=Cyan       guibg=White    cterm=none         gui=none
   hi ansiWhiteWhite        ctermfg=white      ctermbg=white      guifg=White      guibg=White    cterm=none         gui=none
  endif
"  call Dret("AnsiEsc#AnsiEsc")
endfun

" ---------------------------------------------------------------------
"  Restore: {{{1
let &cpo= s:keepcpo
unlet s:keepcpo

" ---------------------------------------------------------------------
"  Modelines: {{{1
" vim: ts=12 fdm=marker
