let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~\Exercism\lua\14\custom-set
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +30 Session.vim
badd +1 custom-set.lua
badd +1 test.lua
badd +1 custom-set_spec.lua
argglobal
%argdel
$argadd custom-set.lua
edit custom-set.lua
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
exe '1resize ' . ((&lines * 15 + 15) / 31)
exe 'vert 1resize ' . ((&columns * 54 + 96) / 192)
exe '2resize ' . ((&lines * 15 + 15) / 31)
exe 'vert 2resize ' . ((&columns * 137 + 96) / 192)
exe '3resize ' . ((&lines * 13 + 15) / 31)
argglobal
balt custom-set_spec.lua
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
let s:l = 19 - ((4 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 19
normal! 019|
lcd ~\Exercism\lua\14\custom-set
wincmd w
argglobal
if bufexists(fnamemodify("~\Exercism\lua\14\custom-set\custom-set_spec.lua", ":p")) | buffer ~\Exercism\lua\14\custom-set\custom-set_spec.lua | else | edit ~\Exercism\lua\14\custom-set\custom-set_spec.lua | endif
balt ~\Exercism\lua\14\custom-set\custom-set.lua
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
let s:l = 54 - ((12 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 54
normal! 06|
lcd ~\Exercism\lua\14\custom-set
wincmd w
argglobal
if bufexists(fnamemodify("~\Exercism\lua\14\custom-set\test.lua", ":p")) | buffer ~\Exercism\lua\14\custom-set\test.lua | else | edit ~\Exercism\lua\14\custom-set\test.lua | endif
balt ~\Exercism\lua\14\custom-set\custom-set.lua
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
let s:l = 4 - ((3 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 022|
lcd ~\Exercism\lua\14\custom-set
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 15 + 15) / 31)
exe 'vert 1resize ' . ((&columns * 54 + 96) / 192)
exe '2resize ' . ((&lines * 15 + 15) / 31)
exe 'vert 2resize ' . ((&columns * 137 + 96) / 192)
exe '3resize ' . ((&lines * 13 + 15) / 31)
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
