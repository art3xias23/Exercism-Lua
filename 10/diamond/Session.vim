let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~\Exercism\lua\10\diamond
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +0 diamond.lua
badd +0 test.lua
badd +0 diamond_spec.lua
argglobal
%argdel
edit diamond.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
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
exe '1resize ' . ((&lines * 42 + 35) / 71)
exe 'vert 1resize ' . ((&columns * 62 + 72) / 144)
exe '2resize ' . ((&lines * 42 + 35) / 71)
exe 'vert 2resize ' . ((&columns * 81 + 72) / 144)
exe '3resize ' . ((&lines * 26 + 35) / 71)
argglobal
balt diamond_spec.lua
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
let s:l = 48 - ((40 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 48
normal! 08|
lcd ~\Exercism\lua\10\diamond
wincmd w
argglobal
if bufexists(fnamemodify("~\Exercism\lua\10\diamond\diamond_spec.lua", ":p")) | buffer ~\Exercism\lua\10\diamond\diamond_spec.lua | else | edit ~\Exercism\lua\10\diamond\diamond_spec.lua | endif
balt ~\Exercism\lua\10\diamond\diamond.lua
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
let s:l = 25 - ((24 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 25
normal! 024|
lcd ~\Exercism\lua\10\diamond
wincmd w
argglobal
if bufexists(fnamemodify("~\Exercism\lua\10\diamond\test.lua", ":p")) | buffer ~\Exercism\lua\10\diamond\test.lua | else | edit ~\Exercism\lua\10\diamond\test.lua | endif
balt ~\Exercism\lua\10\diamond\diamond.lua
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
let s:l = 2 - ((1 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 08|
lcd ~\Exercism\lua\10\diamond
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 42 + 35) / 71)
exe 'vert 1resize ' . ((&columns * 62 + 72) / 144)
exe '2resize ' . ((&lines * 42 + 35) / 71)
exe 'vert 2resize ' . ((&columns * 81 + 72) / 144)
exe '3resize ' . ((&lines * 26 + 35) / 71)
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
