let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~\Exercism\lua\6\matrix
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +2 matrix.lua
badd +1 ~\Exercism\lua\6\matrix
badd +0 matrix_spec.lua
badd +0 test.lua
argglobal
%argdel
$argadd .\
edit matrix_spec.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 62) / 125)
exe '2resize ' . ((&lines * 15 + 17) / 34)
exe 'vert 2resize ' . ((&columns * 93 + 62) / 125)
exe '3resize ' . ((&lines * 16 + 17) / 34)
exe 'vert 3resize ' . ((&columns * 46 + 62) / 125)
exe '4resize ' . ((&lines * 16 + 17) / 34)
exe 'vert 4resize ' . ((&columns * 46 + 62) / 125)
argglobal
enew
file NERD_tree_2
balt matrix.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
lcd ~\Exercism\lua\6\matrix
wincmd w
argglobal
balt ~\Exercism\lua\6\matrix\matrix.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 11 - ((10 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 11
normal! 019|
lcd ~\Exercism\lua\6\matrix
wincmd w
argglobal
if bufexists(fnamemodify("~\Exercism\lua\6\matrix\matrix.lua", ":p")) | buffer ~\Exercism\lua\6\matrix\matrix.lua | else | edit ~\Exercism\lua\6\matrix\matrix.lua | endif
balt ~\Exercism\lua\6\matrix\test.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~\Exercism\lua\6\matrix
wincmd w
argglobal
if bufexists(fnamemodify("~\Exercism\lua\6\matrix\test.lua", ":p")) | buffer ~\Exercism\lua\6\matrix\test.lua | else | edit ~\Exercism\lua\6\matrix\test.lua | endif
balt ~\Exercism\lua\6\matrix\matrix.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 48 - ((12 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 48
normal! 0
lcd ~\Exercism\lua\6\matrix
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 62) / 125)
exe '2resize ' . ((&lines * 15 + 17) / 34)
exe 'vert 2resize ' . ((&columns * 93 + 62) / 125)
exe '3resize ' . ((&lines * 16 + 17) / 34)
exe 'vert 3resize ' . ((&columns * 46 + 62) / 125)
exe '4resize ' . ((&lines * 16 + 17) / 34)
exe 'vert 4resize ' . ((&columns * 46 + 62) / 125)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
