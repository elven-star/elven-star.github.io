let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(table-mode-tableize) |:call tablemode#TableizeInsertMode()a
inoremap <silent> <expr> <Plug>delimitMateS-BS delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>"
inoremap <silent> <Plug>delimitMateBS =delimitMate#BS()
map! <D-v> *
nnoremap ; :
xmap \T <Plug>(table-mode-tableize-delimiter)
xmap \tt <Plug>(table-mode-tableize)
nmap \tt <Plug>(table-mode-tableize)
nnoremap <silent> \tm :call tablemode#Toggle()
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nnoremap <silent> <Plug>(table-mode-sort) :call tablemode#spreadsheet#Sort('')
nnoremap <silent> <Plug>(table-mode-echo-cell) :call tablemode#spreadsheet#EchoCell()
nnoremap <silent> <Plug>(table-mode-eval-formula) :call tablemode#spreadsheet#formula#EvaluateFormulaLine()
nnoremap <silent> <Plug>(table-mode-add-formula) :call tablemode#spreadsheet#formula#Add()
nnoremap <silent> <Plug>(table-mode-insert-column-after) :call tablemode#spreadsheet#InsertColumn(1)
nnoremap <silent> <Plug>(table-mode-insert-column-before) :call tablemode#spreadsheet#InsertColumn(0)
nnoremap <silent> <Plug>(table-mode-delete-column) :call tablemode#spreadsheet#DeleteColumn()
nnoremap <silent> <Plug>(table-mode-delete-row) :call tablemode#spreadsheet#DeleteRow()
xnoremap <silent> <Plug>(table-mode-cell-text-object-i) :call tablemode#spreadsheet#cell#TextObject(1)
xnoremap <silent> <Plug>(table-mode-cell-text-object-a) :call tablemode#spreadsheet#cell#TextObject(0)
onoremap <silent> <Plug>(table-mode-cell-text-object-i) :call tablemode#spreadsheet#cell#TextObject(1)
onoremap <silent> <Plug>(table-mode-cell-text-object-a) :call tablemode#spreadsheet#cell#TextObject(0)
nnoremap <silent> <Plug>(table-mode-motion-right) :call tablemode#spreadsheet#cell#Motion('l')
nnoremap <silent> <Plug>(table-mode-motion-left) :call tablemode#spreadsheet#cell#Motion('h')
nnoremap <silent> <Plug>(table-mode-motion-down) :call tablemode#spreadsheet#cell#Motion('j')
nnoremap <silent> <Plug>(table-mode-motion-up) :call tablemode#spreadsheet#cell#Motion('k')
nnoremap <silent> <Plug>(table-mode-realign) :call tablemode#table#Realign('.')
xnoremap <silent> <Plug>(table-mode-tableize-delimiter) :call tablemode#TableizeByDelimiter()
xnoremap <silent> <Plug>(table-mode-tableize) :Tableize
nnoremap <silent> <Plug>(table-mode-tableize) :Tableize
vmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=cql
set helplang=en
set hidden
set history=100
set laststatus=2
set modelines=0
set runtimepath=~/.vim,~/.vim/autoload/vim-tomorrow-theme,~/.vim/autoload/vim-airline-themes,~/.vim/autoload/vim-markdown-folding,~/.vim/autoload/vim-markdown,~/.vim/autoload/vim-openscad,~/.vim/autoload/vim-airline,~/.vim/autoload/syntastic,~/.vim/autoload/delimitmate,~/.vim/autoload/vim-table-mode,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,~/.vim/autoload/vim-markdown-folding/after,~/.vim/after
set tabstop=4
set window=0
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd /Volumes/GoogleDrive/My\ Drive/elven-star.github.io
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit CharacterSheet.md
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 35 + 36) / 73)
exe 'vert 1resize ' . ((&columns * 117 + 117) / 235)
exe '2resize ' . ((&lines * 35 + 36) / 73)
exe 'vert 2resize ' . ((&columns * 117 + 117) / 235)
exe 'vert 3resize ' . ((&columns * 117 + 117) / 235)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <C-G>g <Plug>delimitMateJumpMany
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <C-H> <Plug>delimitMateBS
imap <buffer> <BS> <Plug>delimitMateBS
xnoremap <buffer> <silent> [[ :exe "normal! gv"|call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "bsW")
nnoremap <buffer> <silent> [[ :call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "bsW")
xnoremap <buffer> <silent> ]] :exe "normal! gv"|call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "sW")
nnoremap <buffer> <silent> ]] :call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "sW")
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> < <Plug>delimitMate<
imap <buffer> > <Plug>delimitMate>
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:*,fb:-,fb:+,n:>
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'markdown'
setlocal filetype=markdown
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=StackedMarkdownFolds()
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=<SNR>70_FoldText()
setlocal formatexpr=
setlocal formatoptions=tcqln
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\|^\\s*[-*+]\\s\\+\\|^\\[^\\ze[^\\]]\\+\\]:
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=8
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'markdown'
setlocal syntax=markdown
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd /Volumes/GoogleDrive/My\ Drive/elven-star.github.io
wincmd w
argglobal
if bufexists("/Volumes/GoogleDrive/My\ Drive/elven-star.github.io/Journey.md") | buffer /Volumes/GoogleDrive/My\ Drive/elven-star.github.io/Journey.md | else | edit /Volumes/GoogleDrive/My\ Drive/elven-star.github.io/Journey.md | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <C-G>g <Plug>delimitMateJumpMany
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <C-H> <Plug>delimitMateBS
imap <buffer> <BS> <Plug>delimitMateBS
xnoremap <buffer> <silent> [[ :exe "normal! gv"|call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "bsW")
nnoremap <buffer> <silent> [[ :call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "bsW")
xnoremap <buffer> <silent> ]] :exe "normal! gv"|call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "sW")
nnoremap <buffer> <silent> ]] :call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "sW")
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> < <Plug>delimitMate<
imap <buffer> > <Plug>delimitMate>
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:*,fb:-,fb:+,n:>
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'markdown'
setlocal filetype=markdown
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=StackedMarkdownFolds()
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=<SNR>71_FoldText()
setlocal formatexpr=
setlocal formatoptions=tcqln
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\|^\\s*[-*+]\\s\\+\\|^\\[^\\ze[^\\]]\\+\\]:
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=8
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'markdown'
setlocal syntax=markdown
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
1
normal! zo
let s:l = 7 - ((6 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 048|
lcd /Volumes/GoogleDrive/My\ Drive/elven-star.github.io
wincmd w
argglobal
if bufexists("/Volumes/GoogleDrive/My\ Drive/elven-star.github.io/ElvenStar.md") | buffer /Volumes/GoogleDrive/My\ Drive/elven-star.github.io/ElvenStar.md | else | edit /Volumes/GoogleDrive/My\ Drive/elven-star.github.io/ElvenStar.md | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <C-G>g <Plug>delimitMateJumpMany
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <C-H> <Plug>delimitMateBS
imap <buffer> <BS> <Plug>delimitMateBS
xnoremap <buffer> <silent> [[ :exe "normal! gv"|call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "bsW")
nnoremap <buffer> <silent> [[ :call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "bsW")
xnoremap <buffer> <silent> ]] :exe "normal! gv"|call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "sW")
nnoremap <buffer> <silent> ]] :call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "sW")
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> < <Plug>delimitMate<
imap <buffer> > <Plug>delimitMate>
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:*,fb:-,fb:+,n:>
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'markdown'
setlocal filetype=markdown
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=StackedMarkdownFolds()
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=<SNR>70_FoldText()
setlocal formatexpr=
setlocal formatoptions=tcqln
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\|^\\s*[-*+]\\s\\+\\|^\\[^\\ze[^\\]]\\+\\]:
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=8
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(3)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'markdown'
setlocal syntax=markdown
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
1
normal! zo
253
normal! zo
554
normal! zo
799
normal! zo
let s:l = 1136 - ((70 * winheight(0) + 35) / 71)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1136
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 35 + 36) / 73)
exe 'vert 1resize ' . ((&columns * 117 + 117) / 235)
exe '2resize ' . ((&lines * 35 + 36) / 73)
exe 'vert 2resize ' . ((&columns * 117 + 117) / 235)
exe 'vert 3resize ' . ((&columns * 117 + 117) / 235)
tabnext 1
badd +1 /Volumes/GoogleDrive/My\ Drive/elven-star.github.io/CharacterSheet.md
badd +1 /Volumes/GoogleDrive/My\ Drive/elven-star.github.io/ElvenStar.md
badd +0 /Volumes/GoogleDrive/My\ Drive/elven-star.github.io/Journey.md
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
