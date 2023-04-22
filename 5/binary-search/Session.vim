let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~\Exercism\lua\5\binary-search
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +13 NERD_tree_1
badd +13 \Users\kmilchev\Exercism\lua\4\difference-of-squares\difference-of-squares.lua
badd +1 binary-search.lua
badd +5 binary-search_spec.lua
badd +15 assertions.lua
badd +1 TracedArray.lua
badd +1 new
badd +1 library.lua
badd +5 test.lua
argglobal
%argdel
$argadd test.lua
edit binary-search.lua
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
exe '1resize ' . ((&lines * 15 + 17) / 34)
exe 'vert 1resize ' . ((&columns * 62 + 62) / 125)
exe '2resize ' . ((&lines * 15 + 17) / 34)
exe 'vert 2resize ' . ((&columns * 62 + 62) / 125)
exe '3resize ' . ((&lines * 16 + 17) / 34)
exe 'vert 3resize ' . ((&columns * 62 + 62) / 125)
exe '4resize ' . ((&lines * 16 + 17) / 34)
exe 'vert 4resize ' . ((&columns * 62 + 62) / 125)
argglobal
balt binary-search_spec.lua
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
let s:l = 63 - ((2 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 63
normal! 032|
lcd ~\Exercism\lua\5\binary-search
wincmd w
argglobal
if bufexists(fnamemodify("~\Exercism\lua\5\binary-search\binary-search_spec.lua", ":p")) | buffer ~\Exercism\lua\5\binary-search\binary-search_spec.lua | else | edit ~\Exercism\lua\5\binary-search\binary-search_spec.lua | endif
balt ~\Exercism\lua\5\binary-search\binary-search.lua
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
let s:l = 24 - ((11 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 24
normal! 07|
lcd ~\Exercism\lua\5\binary-search
wincmd w
argglobal
if bufexists(fnamemodify("~\Exercism\lua\5\binary-search\TracedArray.lua", ":p")) | buffer ~\Exercism\lua\5\binary-search\TracedArray.lua | else | edit ~\Exercism\lua\5\binary-search\TracedArray.lua | endif
balt ~\Exercism\lua\5\binary-search\test.lua
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
let s:l = 7 - ((6 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 031|
lcd ~\Exercism\lua\5\binary-search
wincmd w
argglobal
if bufexists(fnamemodify("~\Exercism\lua\5\binary-search\test.lua", ":p")) | buffer ~\Exercism\lua\5\binary-search\test.lua | else | edit ~\Exercism\lua\5\binary-search\test.lua | endif
balt ~\Exercism\lua\5\binary-search\new
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
let s:l = 7 - ((6 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 079|
lcd ~\Exercism\lua\5\binary-search
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 15 + 17) / 34)
exe 'vert 1resize ' . ((&columns * 62 + 62) / 125)
exe '2resize ' . ((&lines * 15 + 17) / 34)
exe 'vert 2resize ' . ((&columns * 62 + 62) / 125)
exe '3resize ' . ((&lines * 16 + 17) / 34)
exe 'vert 3resize ' . ((&columns * 62 + 62) / 125)
exe '4resize ' . ((&lines * 16 + 17) / 34)
exe 'vert 4resize ' . ((&columns * 62 + 62) / 125)
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
