" AnsiEscPlugin.vim
"   Author: Charles E. Campbell, Jr.
"   Date:   May 12, 2008
"   Version: 9	ASTRO-ONLY
" ---------------------------------------------------------------------
"  Load Once: {{{1
if &cp || exists("g:loaded_AnsiEscPlugin")
 finish
endif
let g:loaded_AnsiEscPlugin = "v9"
let s:keepcpo              = &cpo
set cpo&vim

" ---------------------------------------------------------------------
"  Public Interface: {{{1
com! -nargs=0 AnsiEsc	:call AnsiEsc#AnsiEsc()

" ---------------------------------------------------------------------
"  Restore: {{{1
let &cpo= s:keepcpo
unlet s:keepcpo
" vim: ts=4 fdm=marker
