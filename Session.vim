let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()=emmet#anchorizeURL(1)
inoremap <Plug>(emmet-anchorize-url) =emmet#util#closePopup()=emmet#anchorizeURL(0)
inoremap <Plug>(emmet-remove-tag) =emmet#util#closePopup()=emmet#removeTag()
inoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
inoremap <Plug>(emmet-toogle-comment) =emmet#util#closePopup()=emmet#toggleComment()
inoremap <Plug>(emmet-image-size) =emmet#util#closePopup()=emmet#imageSize()
inoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
inoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
inoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
inoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
inoremap <Plug>(emmet-update-tag) =emmet#util#closePopup()=emmet#updateTag()
inoremap <Plug>(emmet-expand-word) =emmet#util#closePopup()=emmet#expandAbbr(1,"")
inoremap <Plug>(emmet-expand-abbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")
inoremap <silent> <expr> <Plug>delimitMateS-BS delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>"
inoremap <silent> <Plug>delimitMateBS =delimitMate#BS()
nnoremap <silent>  :CtrlP
vmap  <Plug>(expand_region_shrink)
nnoremap  :call GotoFile("new")
nnoremap f :call GotoFile("new")
vmap c <Plug>(emmet-code-pretty)
vmap m <Plug>(emmet-merge-lines)
nmap A <Plug>(emmet-anchorize-summary)
nmap a <Plug>(emmet-anchorize-url)
nmap k <Plug>(emmet-remove-tag)
nmap j <Plug>(emmet-split-join-tag)
nmap / <Plug>(emmet-toogle-comment)
nmap i <Plug>(emmet-image-size)
nmap N <Plug>(emmet-move-prev)
nmap n <Plug>(emmet-move-next)
vmap D <Plug>(emmet-balance-tag-outword)
nmap D <Plug>(emmet-balance-tag-outword)
vmap d <Plug>(emmet-balance-tag-inward)
nmap d <Plug>(emmet-balance-tag-inward)
nmap u <Plug>(emmet-update-tag)
nmap ; <Plug>(emmet-expand-word)
vmap , <Plug>(emmet-expand-abbr)
nmap , <Plug>(emmet-expand-abbr)
nnoremap   za
nnoremap $ <Nop>
nmap ,* :execute 'noautocmd vimgrep /\V' . substitute(escape(expand("<cword>"), '\'), '\n', '\\n', 'g') . '/ **'
nmap <silent> ,w,t <Plug>VimwikiTabMakeDiaryNote
nmap <silent> ,w,w <Plug>VimwikiMakeDiaryNote
nmap <silent> ,w,i <Plug>VimwikiDiaryGenerateLinks
nmap <silent> ,wi <Plug>VimwikiDiaryIndex
nmap <silent> ,ws <Plug>VimwikiUISelect
nmap <silent> ,wt <Plug>VimwikiTabIndex
nmap <silent> ,ww <Plug>VimwikiIndex
nmap ,hp <Plug>GitGutterPreviewHunk
nmap ,hr <Plug>GitGutterRevertHunk
nmap ,hs <Plug>GitGutterStageHunk
map ,mbt <Plug>TMiniBufExplorer
map ,mbu <Plug>UMiniBufExplorer
map ,mbc <Plug>CMiniBufExplorer
map ,mbe <Plug>MiniBufExplorer
nnoremap <silent> ,cgv :ColorVList Value
nnoremap <silent> ,cg5 :ColorVList Five-Tone
nnoremap <silent> ,cg4 :ColorVList Tetradic
nnoremap <silent> ,cgs :ColorVList Saturation
nnoremap <silent> ,cg2 :ColorVList Complementary
nnoremap <silent> ,cgq :ColorVList Square
nnoremap <silent> ,cgp :ColorVList Split-Complementary
nnoremap <silent> ,cgn :ColorVList Neutral
nnoremap <silent> ,cgm :ColorVList Monochromatic
nnoremap <silent> ,cgl :ColorVList luma
nnoremap <silent> ,cgh :ColorVList Hue
nnoremap <silent> ,cgc :ColorVList Clash
nnoremap <silent> ,cga :ColorVList Analogous
nnoremap <silent> ,cg6 :ColorVList Six-Tone
nnoremap <silent> ,cg3 :ColorVList Triadic
nnoremap <silent> ,cim :ColorVInsert CMYK
nnoremap <silent> ,c2m :ColorVEditTo CMYK
nnoremap <silent> ,cin :ColorVInsert NAME
nnoremap <silent> ,c2n :ColorVEditTo NAME
nnoremap <silent> ,cipr :ColorVInsert RGBP
nnoremap <silent> ,c2pr :ColorVEditTo RGBP
nnoremap <silent> ,cil :ColorVInsert HSL
nnoremap <silent> ,c2l :ColorVEditTo HSL
nnoremap <silent> ,cial :ColorVInsert HSLA
nnoremap <silent> ,c2al :ColorVEditTo HSLA
nnoremap <silent> ,ciar :ColorVInsert RGBA
nnoremap <silent> ,c2ar :ColorVEditTo RGBA
nnoremap <silent> ,cih :ColorVInsert HSV
nnoremap <silent> ,c2h :ColorVEditTo HSV
nnoremap <silent> ,cipa :ColorVInsert RGBAP
nnoremap <silent> ,c2pa :ColorVEditTo RGBAP
nnoremap <silent> ,cir :ColorVInsert RGB
nnoremap <silent> ,c2r :ColorVEditTo RGB
nnoremap <silent> ,ci0 :ColorVInsert HEX0
nnoremap <silent> ,c20 :ColorVEditTo HEX0
nnoremap <silent> ,cis :ColorVInsert HEX#
nnoremap <silent> ,c2s :ColorVEditTo HEX#
nnoremap <silent> ,cgg :ColorVTurn2
nnoremap <silent> ,cii :ColorVInsert
nnoremap <silent> ,c22 :ColorVEditTo HEX
nnoremap <silent> ,cpc :ColorVClear
nnoremap <silent> ,cpa :ColorVPreviewArea
nnoremap <silent> ,cpl :ColorVPreviewLine
nnoremap <silent> ,can :ColorVNoAutoPreview
nnoremap <silent> ,cap :ColorVAutoPreview
nnoremap <silent> ,cpp :ColorVPreview
nnoremap <silent> ,cq :ColorVQuit
nnoremap <silent> ,cn :ColorVName
nnoremap <silent> ,cd :ColorVPicker
nnoremap <silent> ,cE :ColorVEditAll
nnoremap <silent> ,ce :ColorVEdit
nnoremap <silent> ,cw :ColorVView
nnoremap <silent> ,cmx :ColorVMax
nnoremap <silent> ,c3 :ColorVMax
nnoremap <silent> ,cmd :ColorVMid
nnoremap <silent> ,cmn :ColorVMin
nnoremap <silent> ,c1 :ColorVMin
nnoremap <silent> ,csn :ColorVSchemeNew
nnoremap <silent> ,csf :ColorVSchemeFav
nnoremap <silent> ,css :ColorVScheme
nnoremap <silent> ,cv :ColorV
vnoremap ,y "+y
nnoremap ,t :TlistToggle
nnoremap ,me :Texplore
nnoremap ,mb :TMiniBufExplorer
nnoremap ,g :call RunGoFile()
nnoremap ,r :call RunTestFile()
nnoremap ,d :Make! 
nnoremap ,1 :set number!
nnoremap ,c :SyntasticCheck:Errors
nnoremap ,a :Ag 
nnoremap ,s :mksession
nnoremap ,  :noh
nnoremap ,l :call ToggleNumber()
nnoremap ,sv :source $MYVIMRC
nnoremap ,ez :vsp ~/.zshrc
nnoremap ,ev :vsp $MYVIMRC
nnoremap ,h :A
nnoremap ,u :GundoToggle
nnoremap ,w :NERDTree
nnoremap ,m :silent make|redraw!|cw
nnoremap B ^
nnoremap E $
xmap S <Plug>VSurround
nmap [c <Plug>GitGutterPrevHunk
nmap [xx <Plug>unimpaired_line_xml_encode
xmap [x <Plug>unimpaired_xml_encode
nmap [x <Plug>unimpaired_xml_encode
nmap [uu <Plug>unimpaired_line_url_encode
xmap [u <Plug>unimpaired_url_encode
nmap [u <Plug>unimpaired_url_encode
nmap [yy <Plug>unimpaired_line_string_encode
xmap [y <Plug>unimpaired_string_encode
nmap [y <Plug>unimpaired_string_encode
nmap [p <Plug>unimpairedPutAbove
nnoremap [ov :set virtualedit+=all
nnoremap [ox :set cursorline cursorcolumn
nnoremap [ow :set wrap
nnoremap [os :set spell
nnoremap [or :set relativenumber
nnoremap [on :set number
nnoremap [ol :set list
nnoremap [oi :set ignorecase
nnoremap [oh :set hlsearch
nnoremap [od :diffthis
nnoremap [ou :set cursorcolumn
nnoremap [oc :set cursorline
nnoremap [ob :set background=light
xmap [e <Plug>unimpairedMoveSelectionUp
nmap [e <Plug>unimpairedMoveUp
nmap [  <Plug>unimpairedBlankUp
omap [n <Plug>unimpairedContextPrevious
nmap [n <Plug>unimpairedContextPrevious
nmap [o <Plug>unimpairedOPrevious
nmap [f <Plug>unimpairedDirectoryPrevious
nmap <silent> [T <Plug>unimpairedTFirst
nmap <silent> [t <Plug>unimpairedTPrevious
nmap <silent> [ <Plug>unimpairedQPFile
nmap <silent> [Q <Plug>unimpairedQFirst
nmap <silent> [q <Plug>unimpairedQPrevious
nmap <silent> [ <Plug>unimpairedLPFile
nmap <silent> [L <Plug>unimpairedLFirst
nmap <silent> [l <Plug>unimpairedLPrevious
nmap <silent> [B <Plug>unimpairedBFirst
nmap <silent> [b <Plug>unimpairedBPrevious
nmap <silent> [A <Plug>unimpairedAFirst
nmap <silent> [a <Plug>unimpairedAPrevious
nmap ]c <Plug>GitGutterNextHunk
nmap ]xx <Plug>unimpaired_line_xml_decode
xmap ]x <Plug>unimpaired_xml_decode
nmap ]x <Plug>unimpaired_xml_decode
nmap ]uu <Plug>unimpaired_line_url_decode
xmap ]u <Plug>unimpaired_url_decode
nmap ]u <Plug>unimpaired_url_decode
nmap ]yy <Plug>unimpaired_line_string_decode
xmap ]y <Plug>unimpaired_string_decode
nmap ]y <Plug>unimpaired_string_decode
nmap ]p <Plug>unimpairedPutBelow
nnoremap ]ov :set virtualedit-=all
nnoremap ]ox :set nocursorline nocursorcolumn
nnoremap ]ow :set nowrap
nnoremap ]os :set nospell
nnoremap ]or :set norelativenumber
nnoremap ]on :set nonumber
nnoremap ]ol :set nolist
nnoremap ]oi :set noignorecase
nnoremap ]oh :set nohlsearch
nnoremap ]od :diffoff
nnoremap ]ou :set nocursorcolumn
nnoremap ]oc :set nocursorline
nnoremap ]ob :set background=dark
xmap ]e <Plug>unimpairedMoveSelectionDown
nmap ]e <Plug>unimpairedMoveDown
nmap ]  <Plug>unimpairedBlankDown
omap ]n <Plug>unimpairedContextNext
nmap ]n <Plug>unimpairedContextNext
nmap ]o <Plug>unimpairedONext
nmap ]f <Plug>unimpairedDirectoryNext
nmap <silent> ]T <Plug>unimpairedTLast
nmap <silent> ]t <Plug>unimpairedTNext
nmap <silent> ] <Plug>unimpairedQNFile
nmap <silent> ]Q <Plug>unimpairedQLast
nmap <silent> ]q <Plug>unimpairedQNext
nmap <silent> ] <Plug>unimpairedLNFile
nmap <silent> ]L <Plug>unimpairedLLast
nmap <silent> ]l <Plug>unimpairedLNext
nmap <silent> ]B <Plug>unimpairedBLast
nmap <silent> ]b <Plug>unimpairedBNext
nmap <silent> ]A <Plug>unimpairedALast
nmap <silent> ]a <Plug>unimpairedANext
nnoremap ^ <Nop>
nnoremap cov :set =(&virtualedit =~# "all") ? 'virtualedit-=all' : 'virtualedit+=all'
nnoremap cox :set =&cursorline && &cursorcolumn ? 'nocursorline nocursorcolumn' : 'cursorline cursorcolumn'
nnoremap cod :=&diff ? 'diffoff' : 'diffthis'
nnoremap cob :set background==&background == 'dark' ? 'light' : 'dark'
nmap cs <Plug>Csurround
nmap cr <Plug>Coerce
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
xmap g! <Plug>ScripteaseFilter
nmap g!! <Plug>ScripteaseFilter_
nmap g! <Plug>ScripteaseFilter
nnoremap gf :call GotoFile("")
nnoremap gV `[v`]
nnoremap j gj
nnoremap k gk
vmap v <Plug>(expand_region_expand)
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nmap zS <Plug>ScripteaseSynnames
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <Plug>GitGutterPreviewHunk :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterRevertHunk :GitGutterRevertHunk
nnoremap <silent> <Plug>GitGutterStageHunk :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
nmap <silent> <Plug>unimpairedOPrevious <Plug>unimpairedDirectoryPrevious:echohl WarningMSG|echo "[o is deprecated. Use [f"|echohl NONE
nmap <silent> <Plug>unimpairedONext <Plug>unimpairedDirectoryNext:echohl WarningMSG|echo "]o is deprecated. Use ]f"|echohl NONE
nnoremap <silent> <Plug>unimpairedTLast :exe "".(v:count ? v:count : "")."tlast"
nnoremap <silent> <Plug>unimpairedTFirst :exe "".(v:count ? v:count : "")."tfirst"
nnoremap <silent> <Plug>unimpairedTNext :exe "".(v:count ? v:count : "")."tnext"
nnoremap <silent> <Plug>unimpairedTPrevious :exe "".(v:count ? v:count : "")."tprevious"
nnoremap <silent> <Plug>unimpairedQNFile :exe "".(v:count ? v:count : "")."cnfile"zv
nnoremap <silent> <Plug>unimpairedQPFile :exe "".(v:count ? v:count : "")."cpfile"zv
nnoremap <silent> <Plug>unimpairedQLast :exe "".(v:count ? v:count : "")."clast"zv
nnoremap <silent> <Plug>unimpairedQFirst :exe "".(v:count ? v:count : "")."cfirst"zv
nnoremap <silent> <Plug>unimpairedQNext :exe "".(v:count ? v:count : "")."cnext"zv
nnoremap <silent> <Plug>unimpairedQPrevious :exe "".(v:count ? v:count : "")."cprevious"zv
nnoremap <silent> <Plug>unimpairedLNFile :exe "".(v:count ? v:count : "")."lnfile"zv
nnoremap <silent> <Plug>unimpairedLPFile :exe "".(v:count ? v:count : "")."lpfile"zv
nnoremap <silent> <Plug>unimpairedLLast :exe "".(v:count ? v:count : "")."llast"zv
nnoremap <silent> <Plug>unimpairedLFirst :exe "".(v:count ? v:count : "")."lfirst"zv
nnoremap <silent> <Plug>unimpairedLNext :exe "".(v:count ? v:count : "")."lnext"zv
nnoremap <silent> <Plug>unimpairedLPrevious :exe "".(v:count ? v:count : "")."lprevious"zv
nnoremap <silent> <Plug>unimpairedBLast :exe "".(v:count ? v:count : "")."blast"
nnoremap <silent> <Plug>unimpairedBFirst :exe "".(v:count ? v:count : "")."bfirst"
nnoremap <silent> <Plug>unimpairedBNext :exe "".(v:count ? v:count : "")."bnext"
nnoremap <silent> <Plug>unimpairedBPrevious :exe "".(v:count ? v:count : "")."bprevious"
nnoremap <silent> <Plug>unimpairedALast :exe "".(v:count ? v:count : "")."last"
nnoremap <silent> <Plug>unimpairedAFirst :exe "".(v:count ? v:count : "")."first"
nnoremap <silent> <Plug>unimpairedANext :exe "".(v:count ? v:count : "")."next"
nnoremap <silent> <Plug>unimpairedAPrevious :exe "".(v:count ? v:count : "")."previous"
nnoremap <silent> <Plug>SurroundRepeat .
vnoremap <Plug>(emmet-code-pretty) :call emmet#codePretty()
vnoremap <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nnoremap <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nnoremap <Plug>(emmet-remove-tag) :call emmet#removeTag()
nnoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nnoremap <Plug>(emmet-toogle-comment) :call emmet#toggleComment()
nnoremap <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-2)
nnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(2)
nnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-update-tag) :call emmet#updateTag()
nnoremap <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>DiscretionaryEnd
imap  <Plug>Isurround
imap A <Plug>(emmet-anchorize-summary)
imap a <Plug>(emmet-anchorize-url)
imap k <Plug>(emmet-remove-tag)
imap j <Plug>(emmet-split-join-tag)
imap / <Plug>(emmet-toogle-comment)
imap i <Plug>(emmet-image-size)
imap N <Plug>(emmet-move-prev)
imap n <Plug>(emmet-move-next)
imap D <Plug>(emmet-balance-tag-outword)
imap d <Plug>(emmet-balance-tag-inward)
imap u <Plug>(emmet-update-tag)
imap ; <Plug>(emmet-expand-word)
imap , <Plug>(emmet-expand-abbr)
nmap ë <Plug>MoveLineUp
nmap ê <Plug>MoveLineDown
vmap ë <Plug>MoveBlockUp
vmap ê <Plug>MoveBlockDown
inoremap jk 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=indent,eol,start
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set noequalalways
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set foldlevelstart=10
set guioptions=aegimtT
set helplang=en
set hlsearch
set ignorecase
set incsearch
set isfname=@,48-57,/,.,-,_,+,,,#,$,%,~,=,:
set laststatus=2
set modelines=1
set mouse=a
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Lua-Support-2,~/.vim/bundle/MatchTagAlways,~/.vim/bundle/R,~/.vim/bundle/abolish,~/.vim/bundle/ack.vim,~/.vim/bundle/ag,~/.vim/bundle/airline,~/.vim/bundle/android,~/.vim/bundle/autoreloadwach,~/.vim/bundle/bufexplorer,~/.vim/bundle/bufferline,~/.vim/bundle/clam.vim,~/.vim/bundle/cocoa,~/.vim/bundle/coffee-script,~/.vim/bundle/colorv.vim,~/.vim/bundle/css3-syntax,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/cucumber,~/.vim/bundle/dart,~/.vim/bundle/delimitMate,~/.vim/bundle/dispatch,~/.vim/bundle/easytags,~/.vim/bundle/editorconfig,~/.vim/bundle/ember.vim,~/.vim/bundle/emmet,~/.vim/bundle/endwise,~/.vim/bundle/eunuch,~/.vim/bundle/fugitive,~/.vim/bundle/gist,~/.vim/bundle/haml,~/.vim/bundle/handlebars,~/.vim/bundle/irblack,~/.vim/bundle/jade,~/.vim/bundle/javascript,~/.vim/bundle/json,~/.vim/bundle/less,~/.vim/bundle/markdown,~/.vim/bundle/minibufexplorerpp,~/.vim/bundle/misc_lang_support,~/.vim/bundle/move,~/.vim/bundle/mru.vim,~/.vim/bundle/neocomplete.vim,~/.vim/bundle/nerdtree,~/.vim/bundle/nerdtree-ack,~/.vim/bundle/nerdtree-execute,~/.vim/bundle/nerdtree-git-plugin,~/.vim/bundle/nerdtree-tabs,~/.vim/bundle/numbers.vim,~/.vim/bundle/obsession,~/.vim/bundle/open_file_under_cursor.vim,~/.vim/bundle/perldoc,~/.vim/bundle/rails,~/.vim/bundle/repeat,~/.vim/bundle/rogue.vim,~/.vim/bundle/ruby,~/.vim/bundle/scratch,~/.vim/bundle/scriptease,~/.vim/bundle/session,~/.vim/bundle/splitjoin.vim,~/.vim/bundle/startify,~/.vim/bundle/stylus,~/.vim/bundle/surround,~/.vim/bundle/syntastic,~/.vim/bundle/tabular,~/.vim/bundle/taglist.vim,~/.vim/bundle/task,~/.vim/bundle/template,~/.vim/bundle/textobj-rubyblock,~/.vim/bundle/the_silver_searcher,~/.vim/bundle/unimpared,~/.vim/bundle/vim-gitgutter,~/.vim/bundle/vim-misc,~/.vim/bundle/vim-notes,~/.vim/bundle/vim-quicktask,~/.vim/bundle/vimwiki,~/.vim/bundle/visual-star-search,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/bundle/tabular/after,~/.vim/bundle/less/after,~/.vim/bundle/css3-syntax/after,~/.vim/bundle/coffee-script/after,~/.vim/bundle/cocoa/after,~/.vim/after
set shiftwidth=4
set showmatch
set softtabstop=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set tags=./tags,./TAGS,tags,TAGS,~/.vimtags
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/src/dotvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +38 .vimrc
badd +229 ~/.vimrc
args .vimrc
edit ~/.vimrc
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 22 + 23) / 47)
exe '2resize ' . ((&lines * 22 + 23) / 47)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nnoremap <buffer> <silent> <NL> i=Vim_JumpForward()
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")
vnoremap <buffer> <silent> \nw :call Vim_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call Vim_CodeSnippet("w")
onoremap <buffer> <silent> \nw :call Vim_CodeSnippet("w")
noremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Vim_Templates,-1)
noremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Vim_Templates,"!pick")
noremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Vim_Templates,"reload","all")
vnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Help.english")
nnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Help.english")
vnoremap <buffer> <silent> \dl :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.list entry")
nnoremap <buffer> <silent> \dl :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.list entry")
vnoremap <buffer> <silent> \de :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.example","v")
nnoremap <buffer> <silent> \de :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.example")
vnoremap <buffer> <silent> \df :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.function description")
nnoremap <buffer> <silent> \df :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.function description")
vnoremap <buffer> <silent> \dcu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.subsection, contents")
nnoremap <buffer> <silent> \dcu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.subsection, contents")
vnoremap <buffer> <silent> \dcs :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.section, contents")
nnoremap <buffer> <silent> \dcs :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.section, contents")
vnoremap <buffer> <silent> \dcc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.chapter, contents")
nnoremap <buffer> <silent> \dcc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.chapter, contents")
vnoremap <buffer> <silent> \dtu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.subsection, text")
nnoremap <buffer> <silent> \dtu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.subsection, text")
vnoremap <buffer> <silent> \dts :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.section, text")
nnoremap <buffer> <silent> \dts :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.section, text")
vnoremap <buffer> <silent> \dtc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.chapter, text")
nnoremap <buffer> <silent> \dtc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.chapter, text")
vnoremap <buffer> <silent> \pmw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-Warning")
nnoremap <buffer> <silent> \pmw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-Warning")
vnoremap <buffer> <silent> \pme :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-ErrorMsg")
nnoremap <buffer> <silent> \pme :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-ErrorMsg")
vnoremap <buffer> <silent> \pmc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-Comment")
nnoremap <buffer> <silent> \pmc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-Comment")
vnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg")
nnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg")
vnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Eval")
nnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Eval")
vnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM DoCommand")
nnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM DoCommand")
vnoremap <buffer> <silent> \ps :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.Perl snippet")
nnoremap <buffer> <silent> \ps :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.Perl snippet")
vnoremap <buffer> <silent> \xs :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.switches")
nnoremap <buffer> <silent> \xs :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.switches")
vnoremap <buffer> <silent> \xcc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.character classes")
nnoremap <buffer> <silent> \xcc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.character classes")
vnoremap <buffer> <silent> \xw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.word")
nnoremap <buffer> <silent> \xw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.word")
vnoremap <buffer> <silent> \xbn :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.branch, no capture","v")
nnoremap <buffer> <silent> \xbn :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.branch, no capture")
vnoremap <buffer> <silent> \xbc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.branch","v")
nnoremap <buffer> <silent> \xbc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.branch")
vnoremap <buffer> <silent> \xc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.capture","v")
nnoremap <buffer> <silent> \xc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.capture")
vnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Idioms.function","v")
nnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Idioms.function")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Idioms.iterators","v")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Idioms.iterators")
vnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.try, catch","v")
nnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.try, catch")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.while","v")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.while")
vnoremap <buffer> <silent> \sel :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.else")
nnoremap <buffer> <silent> \sel :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.else")
vnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.elseif")
nnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.elseif")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.if, else","v")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.if, else")
vnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.if, end","v")
nnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.if, end")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.for","v")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.for")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let dictionary")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let dictionary")
vnoremap <buffer> <silent> \sl :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let list")
nnoremap <buffer> <silent> \sl :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let list")
vnoremap <buffer> <silent> \sv :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let variable")
nnoremap <buffer> <silent> \sv :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let variable")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.macros")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.macros")
vnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.date-time")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.date-time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.date")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.date")
vnoremap <buffer> <silent> \ch :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.file description")
nnoremap <buffer> <silent> \ch :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.file description")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.frame")
vnoremap <buffer> <silent> \ce :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.end-of-line comment")
nnoremap <buffer> <silent> \ce :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.end-of-line comment")
noremap <buffer> <silent> \hp :call Vim_HelpVimSupport()
nnoremap <buffer> <silent> \hk :call Vim_Help()
nnoremap <buffer> <silent> \rs :call Vim_Settings()
vnoremap <buffer> <silent> \rh :call Vim_Hardcopy("v")
nnoremap <buffer> <silent> \rh :call Vim_Hardcopy("n")
noremap <buffer> <silent> \ne :call Vim_CodeSnippet("e")
noremap <buffer> <silent> \nr :call Vim_CodeSnippet("r")
vnoremap <buffer> <silent> \ca :call Vim_FunctionComment()
nnoremap <buffer> <silent> \ca :call Vim_FunctionComment()
vnoremap <buffer> <silent> \cu :call Vim_CommentCode(0)
nnoremap <buffer> <silent> \cu :call Vim_CommentCode(0)
vnoremap <buffer> <silent> \cc :call Vim_CodeComment()
nnoremap <buffer> <silent> \cc :call Vim_CodeComment()
vnoremap <buffer> <silent> \cs :call Vim_GetLineEndCommCol()
nnoremap <buffer> <silent> \cs :call Vim_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call Vim_AdjustLineEndComm()
nnoremap <buffer> <silent> \cj :call Vim_AdjustLineEndComm()
vnoremap <buffer> <silent> \cl :call Vim_MultiLineEndComments()A
nnoremap <buffer> <silent> \cl :call Vim_EndOfLineComment()
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
inoremap <buffer> <silent> <NL> =Vim_JumpForward()
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Vim_Templates,-1)
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Vim_Templates,"!pick")
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Vim_Templates,"reload","all")
inoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Help.english","i")
inoremap <buffer> <silent> \dl :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.list entry","i")
inoremap <buffer> <silent> \de :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.example","i")
inoremap <buffer> <silent> \df :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.function description","i")
inoremap <buffer> <silent> \dcu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.subsection, contents","i")
inoremap <buffer> <silent> \dcs :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.section, contents","i")
inoremap <buffer> <silent> \dcc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.chapter, contents","i")
inoremap <buffer> <silent> \dtu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.subsection, text","i")
inoremap <buffer> <silent> \dts :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.section, text","i")
inoremap <buffer> <silent> \dtc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.chapter, text","i")
inoremap <buffer> <silent> \pmw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-Warning","i")
inoremap <buffer> <silent> \pme :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-ErrorMsg","i")
inoremap <buffer> <silent> \pmc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-Comment","i")
inoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg","i")
inoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Eval","i")
inoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM DoCommand","i")
inoremap <buffer> <silent> \ps :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.Perl snippet","i")
inoremap <buffer> <silent> \xs :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.switches","i")
inoremap <buffer> <silent> \xcc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.character classes","i")
inoremap <buffer> <silent> \xw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.word","i")
inoremap <buffer> <silent> \xbn :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.branch, no capture","i")
inoremap <buffer> <silent> \xbc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.branch","i")
inoremap <buffer> <silent> \xc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.capture","i")
inoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Idioms.function","i")
inoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Idioms.iterators","i")
inoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.try, catch","i")
inoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.while","i")
inoremap <buffer> <silent> \sel :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.else","i")
inoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.elseif","i")
inoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.if, else","i")
inoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.if, end","i")
inoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.for","i")
inoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let dictionary","i")
inoremap <buffer> <silent> \sl :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let list","i")
inoremap <buffer> <silent> \sv :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let variable","i")
inoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.macros","i")
inoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.keyword comments","i")
inoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.date-time","i")
inoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.date","i")
inoremap <buffer> <silent> \ch :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.file description","i")
inoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.function","i")
inoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.frame","i")
inoremap <buffer> <silent> \ce :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.end-of-line comment","i")
inoremap <buffer> <silent> \hp :call Vim_HelpVimSupport()
inoremap <buffer> <silent> \hk :call Vim_Help()
inoremap <buffer> <silent> \ne :call Vim_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call Vim_CodeSnippet("w")
inoremap <buffer> <silent> \nr :call Vim_CodeSnippet("r")
inoremap <buffer> <silent> \ca :call Vim_FunctionComment()
inoremap <buffer> <silent> \cu :call Vim_CommentCode(0)
inoremap <buffer> <silent> \cc :call Vim_CodeComment()
inoremap <buffer> <silent> \cs :call Vim_GetLineEndCommCol()
inoremap <buffer> <silent> \cj :call Vim_AdjustLineEndComm()
inoremap <buffer> <silent> \cl :call Vim_EndOfLineComment()
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=marker
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=:help
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=~/.vim,~/.vim/bundle/Lua-Support-2,~/.vim/bundle/MatchTagAlways,~/.vim/bundle/R,~/.vim/bundle/abolish,~/.vim/bundle/ack.vim,~/.vim/bundle/ag,~/.vim/bundle/airline,~/.vim/bundle/android,~/.vim/bundle/autoreloadwach,~/.vim/bundle/bufexplorer,~/.vim/bundle/bufferline,~/.vim/bundle/clam.vim,~/.vim/bundle/cocoa,~/.vim/bundle/coffee-script,~/.vim/bundle/colorv.vim,~/.vim/bundle/css3-syntax,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/cucumber,~/.vim/bundle/dart,~/.vim/bundle/delimitMate,~/.vim/bundle/dispatch,~/.vim/bundle/easytags,~/.vim/bundle/editorconfig,~/.vim/bundle/ember.vim,~/.vim/bundle/emmet,~/.vim/bundle/endwise,~/.vim/bundle/eunuch,~/.vim/bundle/fugitive,~/.vim/bundle/gist,~/.vim/bundle/haml,~/.vim/bundle/handlebars,~/.vim/bundle/irblack,~/.vim/bundle/jade,~/.vim/bundle/javascript,~/.vim/bundle/json,~/.vim/bundle/less,~/.vim/bundle/markdown,~/.vim/bundle/minibufexplorerpp,~/.vim/bundle/misc_lang_support,~/.vim/bundle/move,~/.vim/bundle/mru.vim,~/.vim/bundle/neocomplete.vim,~/.vim/bundle/nerdtree,~/.vim/bundle/nerdtree-ack,~/.vim/bundle/nerdtree-execute,~/.vim/bundle/nerdtree-git-plugin,~/.vim/bundle/nerdtree-tabs,~/.vim/bundle/numbers.vim,~/.vim/bundle/obsession,~/.vim/bundle/open_file_under_cursor.vim,~/.vim/bundle/perldoc,~/.vim/bundle/rails,~/.vim/bundle/repeat,~/.vim/bundle/rogue.vim,~/.vim/bundle/ruby,~/.vim/bundle/scratch,~/.vim/bundle/scriptease,~/.vim/bundle/session,~/.vim/bundle/splitjoin.vim,~/.vim/bundle/startify,~/.vim/bundle/stylus,~/.vim/bundle/surround,~/.vim/bundle/syntastic,~/.vim/bundle/tabular,~/.vim/bundle/taglist.vim,~/.vim/bundle/task,~/.vim/bundle/template,~/.vim/bundle/textobj-rubyblock,~/.vim/bundle/the_silver_searcher,~/.vim/bundle/unimpared,~/.vim/bundle/vim-gitgutter,~/.vim/bundle/vim-misc,~/.vim/bundle/vim-notes,~/.vim/bundle/vim-quicktask,~/.vim/bundle/vimwiki,~/.vim/bundle/visual-star-search,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/bundle/tabular/after,~/.vim/bundle/less/after,~/.vim/bundle/css3-syntax/after,~/.vim/bundle/coffee-script/after,~/.vim/bundle/cocoa/after,~/.vim/after
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.vim
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=78
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
2
normal! zo
let s:l = 2 - ((1 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 012|
wincmd w
argglobal
edit .vimrc
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nnoremap <buffer> <silent> <NL> i=Vim_JumpForward()
noremap <buffer> <silent> <C-D-CR> :call Toggle_task_status()
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")
noremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Vim_Templates,-1)
noremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Vim_Templates,"!pick")
noremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Vim_Templates,"reload","all")
vnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Help.english")
nnoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Help.english")
vnoremap <buffer> <silent> \dl :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.list entry")
nnoremap <buffer> <silent> \dl :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.list entry")
vnoremap <buffer> <silent> \de :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.example","v")
nnoremap <buffer> <silent> \de :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.example")
vnoremap <buffer> <silent> \df :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.function description")
nnoremap <buffer> <silent> \df :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.function description")
vnoremap <buffer> <silent> \dcu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.subsection, contents")
nnoremap <buffer> <silent> \dcu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.subsection, contents")
vnoremap <buffer> <silent> \dcs :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.section, contents")
nnoremap <buffer> <silent> \dcs :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.section, contents")
vnoremap <buffer> <silent> \dcc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.chapter, contents")
nnoremap <buffer> <silent> \dcc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.chapter, contents")
vnoremap <buffer> <silent> \dtu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.subsection, text")
nnoremap <buffer> <silent> \dtu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.subsection, text")
vnoremap <buffer> <silent> \dts :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.section, text")
nnoremap <buffer> <silent> \dts :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.section, text")
vnoremap <buffer> <silent> \dtc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.chapter, text")
nnoremap <buffer> <silent> \dtc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.chapter, text")
vnoremap <buffer> <silent> \pmw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-Warning")
nnoremap <buffer> <silent> \pmw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-Warning")
vnoremap <buffer> <silent> \pme :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-ErrorMsg")
nnoremap <buffer> <silent> \pme :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-ErrorMsg")
vnoremap <buffer> <silent> \pmc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-Comment")
nnoremap <buffer> <silent> \pmc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-Comment")
vnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg")
nnoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg")
vnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Eval")
nnoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Eval")
vnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM DoCommand")
nnoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM DoCommand")
vnoremap <buffer> <silent> \ps :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.Perl snippet")
nnoremap <buffer> <silent> \ps :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.Perl snippet")
vnoremap <buffer> <silent> \xs :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.switches")
nnoremap <buffer> <silent> \xs :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.switches")
vnoremap <buffer> <silent> \xcc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.character classes")
nnoremap <buffer> <silent> \xcc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.character classes")
vnoremap <buffer> <silent> \xw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.word")
nnoremap <buffer> <silent> \xw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.word")
vnoremap <buffer> <silent> \xbn :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.branch, no capture","v")
nnoremap <buffer> <silent> \xbn :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.branch, no capture")
vnoremap <buffer> <silent> \xbc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.branch","v")
nnoremap <buffer> <silent> \xbc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.branch")
vnoremap <buffer> <silent> \xc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.capture","v")
nnoremap <buffer> <silent> \xc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.capture")
vnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Idioms.function","v")
nnoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Idioms.function")
vnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Idioms.iterators","v")
nnoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Idioms.iterators")
vnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.try, catch","v")
nnoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.try, catch")
vnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.while","v")
nnoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.while")
vnoremap <buffer> <silent> \sel :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.else")
nnoremap <buffer> <silent> \sel :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.else")
vnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.elseif")
nnoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.elseif")
vnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.if, else","v")
nnoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.if, else")
vnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.if, end","v")
nnoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.if, end")
vnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.for","v")
nnoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.for")
vnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let dictionary")
nnoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let dictionary")
vnoremap <buffer> <silent> \sl :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let list")
nnoremap <buffer> <silent> \sl :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let list")
vnoremap <buffer> <silent> \sv :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let variable")
nnoremap <buffer> <silent> \sv :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let variable")
vnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.macros")
nnoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.macros")
vnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.keyword comments")
nnoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.keyword comments")
vnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.date-time")
nnoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.date-time")
vnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.date")
nnoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.date")
vnoremap <buffer> <silent> \ch :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.file description")
nnoremap <buffer> <silent> \ch :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.file description")
vnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.function")
nnoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.function")
vnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.frame")
nnoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.frame")
vnoremap <buffer> <silent> \ce :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.end-of-line comment")
nnoremap <buffer> <silent> \ce :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.end-of-line comment")
noremap <buffer> <silent> \hp :call Vim_HelpVimSupport()
nnoremap <buffer> <silent> \hk :call Vim_Help()
nnoremap <buffer> <silent> \rs :call Vim_Settings()
vnoremap <buffer> <silent> \rh :call Vim_Hardcopy("v")
nnoremap <buffer> <silent> \rh :call Vim_Hardcopy("n")
noremap <buffer> <silent> \ne :call Vim_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call Vim_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call Vim_CodeSnippet("w")
onoremap <buffer> <silent> \nw :call Vim_CodeSnippet("w")
noremap <buffer> <silent> \nr :call Vim_CodeSnippet("r")
vnoremap <buffer> <silent> \ca :call Vim_FunctionComment()
nnoremap <buffer> <silent> \ca :call Vim_FunctionComment()
vnoremap <buffer> <silent> \cu :call Vim_CommentCode(0)
nnoremap <buffer> <silent> \cu :call Vim_CommentCode(0)
vnoremap <buffer> <silent> \cc :call Vim_CodeComment()
nnoremap <buffer> <silent> \cc :call Vim_CodeComment()
vnoremap <buffer> <silent> \cs :call Vim_GetLineEndCommCol()
nnoremap <buffer> <silent> \cs :call Vim_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call Vim_AdjustLineEndComm()
nnoremap <buffer> <silent> \cj :call Vim_AdjustLineEndComm()
vnoremap <buffer> <silent> \cl :call Vim_MultiLineEndComments()A
nnoremap <buffer> <silent> \cl :call Vim_EndOfLineComment()
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
inoremap <buffer> <silent> <NL> =Vim_JumpForward()
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
inoremap <buffer> <silent> <C-D-CR> :call Toggle_task_status()i
imap <buffer> [ <Plug>delimitMate[
inoremap <buffer> <silent> \ntl :call mmtemplates#core#EditTemplateFiles(g:Vim_Templates,-1)
inoremap <buffer> <silent> \nts :call mmtemplates#core#ChooseStyle(g:Vim_Templates,"!pick")
inoremap <buffer> <silent> \ntr :call mmtemplates#core#ReadTemplates(g:Vim_Templates,"reload","all")
inoremap <buffer> <silent> \he :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Help.english","i")
inoremap <buffer> <silent> \dl :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.list entry","i")
inoremap <buffer> <silent> \de :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.example","i")
inoremap <buffer> <silent> \df :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.function description","i")
inoremap <buffer> <silent> \dcu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.subsection, contents","i")
inoremap <buffer> <silent> \dcs :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.section, contents","i")
inoremap <buffer> <silent> \dcc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.chapter, contents","i")
inoremap <buffer> <silent> \dtu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.subsection, text","i")
inoremap <buffer> <silent> \dts :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.section, text","i")
inoremap <buffer> <silent> \dtc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Documentation.chapter, text","i")
inoremap <buffer> <silent> \pmw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-Warning","i")
inoremap <buffer> <silent> \pme :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-ErrorMsg","i")
inoremap <buffer> <silent> \pmc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg-Comment","i")
inoremap <buffer> <silent> \pm :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Msg","i")
inoremap <buffer> <silent> \pe :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM Eval","i")
inoremap <buffer> <silent> \pd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.VIM DoCommand","i")
inoremap <buffer> <silent> \ps :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Perl.Perl snippet","i")
inoremap <buffer> <silent> \xs :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.switches","i")
inoremap <buffer> <silent> \xcc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.character classes","i")
inoremap <buffer> <silent> \xw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.word","i")
inoremap <buffer> <silent> \xbn :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.branch, no capture","i")
inoremap <buffer> <silent> \xbc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.branch","i")
inoremap <buffer> <silent> \xc :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Regex.capture","i")
inoremap <buffer> <silent> \if :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Idioms.function","i")
inoremap <buffer> <silent> \ii :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Idioms.iterators","i")
inoremap <buffer> <silent> \st :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.try, catch","i")
inoremap <buffer> <silent> \sw :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.while","i")
inoremap <buffer> <silent> \sel :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.else","i")
inoremap <buffer> <silent> \sei :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.elseif","i")
inoremap <buffer> <silent> \sie :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.if, else","i")
inoremap <buffer> <silent> \sif :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.if, end","i")
inoremap <buffer> <silent> \sf :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.for","i")
inoremap <buffer> <silent> \sd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let dictionary","i")
inoremap <buffer> <silent> \sl :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let list","i")
inoremap <buffer> <silent> \sv :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Statements.let variable","i")
inoremap <buffer> <silent> \cma :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.macros","i")
inoremap <buffer> <silent> \ck :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.keyword comments","i")
inoremap <buffer> <silent> \ct :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.date-time","i")
inoremap <buffer> <silent> \cd :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.date","i")
inoremap <buffer> <silent> \ch :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.file description","i")
inoremap <buffer> <silent> \cfu :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.function","i")
inoremap <buffer> <silent> \cfr :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.frame","i")
inoremap <buffer> <silent> \ce :call mmtemplates#core#InsertTemplate(g:Vim_Templates,"Comments.end-of-line comment","i")
inoremap <buffer> <silent> \hp :call Vim_HelpVimSupport()
inoremap <buffer> <silent> \hk :call Vim_Help()
inoremap <buffer> <silent> \ne :call Vim_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call Vim_CodeSnippet("w")
inoremap <buffer> <silent> \nr :call Vim_CodeSnippet("r")
inoremap <buffer> <silent> \ca :call Vim_FunctionComment()
inoremap <buffer> <silent> \cu :call Vim_CommentCode(0)
inoremap <buffer> <silent> \cc :call Vim_CodeComment()
inoremap <buffer> <silent> \cs :call Vim_GetLineEndCommCol()
inoremap <buffer> <silent> \cj :call Vim_AdjustLineEndComm()
inoremap <buffer> <silent> \cl :call Vim_EndOfLineComment()
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=netrw#NetrwBalloonHelp()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=10
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=:help
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=~/.vim,~/.vim/bundle/Lua-Support-2,~/.vim/bundle/MatchTagAlways,~/.vim/bundle/R,~/.vim/bundle/abolish,~/.vim/bundle/ack.vim,~/.vim/bundle/ag,~/.vim/bundle/airline,~/.vim/bundle/android,~/.vim/bundle/autoreloadwach,~/.vim/bundle/bufexplorer,~/.vim/bundle/bufferline,~/.vim/bundle/clam.vim,~/.vim/bundle/cocoa,~/.vim/bundle/coffee-script,~/.vim/bundle/colorv.vim,~/.vim/bundle/css3-syntax,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/cucumber,~/.vim/bundle/dart,~/.vim/bundle/delimitMate,~/.vim/bundle/dispatch,~/.vim/bundle/easytags,~/.vim/bundle/editorconfig,~/.vim/bundle/ember.vim,~/.vim/bundle/emmet,~/.vim/bundle/endwise,~/.vim/bundle/eunuch,~/.vim/bundle/fugitive,~/.vim/bundle/gist,~/.vim/bundle/haml,~/.vim/bundle/handlebars,~/.vim/bundle/irblack,~/.vim/bundle/jade,~/.vim/bundle/javascript,~/.vim/bundle/json,~/.vim/bundle/less,~/.vim/bundle/markdown,~/.vim/bundle/minibufexplorerpp,~/.vim/bundle/misc_lang_support,~/.vim/bundle/move,~/.vim/bundle/mru.vim,~/.vim/bundle/neocomplete.vim,~/.vim/bundle/nerdtree,~/.vim/bundle/nerdtree-ack,~/.vim/bundle/nerdtree-execute,~/.vim/bundle/nerdtree-git-plugin,~/.vim/bundle/nerdtree-tabs,~/.vim/bundle/numbers.vim,~/.vim/bundle/obsession,~/.vim/bundle/open_file_under_cursor.vim,~/.vim/bundle/perldoc,~/.vim/bundle/rails,~/.vim/bundle/repeat,~/.vim/bundle/rogue.vim,~/.vim/bundle/ruby,~/.vim/bundle/scratch,~/.vim/bundle/scriptease,~/.vim/bundle/session,~/.vim/bundle/splitjoin.vim,~/.vim/bundle/startify,~/.vim/bundle/stylus,~/.vim/bundle/surround,~/.vim/bundle/syntastic,~/.vim/bundle/tabular,~/.vim/bundle/taglist.vim,~/.vim/bundle/task,~/.vim/bundle/template,~/.vim/bundle/textobj-rubyblock,~/.vim/bundle/the_silver_searcher,~/.vim/bundle/unimpared,~/.vim/bundle/vim-gitgutter,~/.vim/bundle/vim-misc,~/.vim/bundle/vim-notes,~/.vim/bundle/vim-quicktask,~/.vim/bundle/vimwiki,~/.vim/bundle/visual-star-search,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/bundle/tabular/after,~/.vim/bundle/less/after,~/.vim/bundle/css3-syntax/after,~/.vim/bundle/coffee-script/after,~/.vim/bundle/cocoa/after,~/.vim/after
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.vim
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=78
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 22 + 23) / 47)
exe '2resize ' . ((&lines * 22 + 23) / 47)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
