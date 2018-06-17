" Name:         Iosvkem
" Description:  Remake and minor tweaks of the colourscheme be5invis used to showcase his typeface, Iosevka.
" Author:       neutaaaaan
" Maintainer:   neutaaaaan
" Website:      github.com/neutaaaaan/iosvkem
" License:      Vim License (see `:help license`)
" Last Updated: Mon 18 Jun 2018 12:01:31 AM CEST

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Iosvkem] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'Iosvkem'

" Color similarity table (dark background)
"     uiblack: GUI=#303030/rgb( 48, 48, 48)  Term=236 #303030/rgb( 48, 48, 48)  [delta=0.000000]
" brightblack: GUI=#808080/rgb(128,128,128)  Term=244 #808080/rgb(128,128,128)  [delta=0.000000]
" brightwhite: GUI=#ffffff/rgb(255,255,255)  Term=231 #ffffff/rgb(255,255,255)  [delta=0.000000]
"       white: GUI=#dddddd/rgb(221,221,221)  Term=253 #dadada/rgb(218,218,218)  [delta=0.682497]
"   greyblack: GUI=#505050/rgb( 80, 80, 80)  Term=239 #4e4e4e/rgb( 78, 78, 78)  [delta=0.689525]
"       black: GUI=#1b1d1e/rgb( 27, 29, 30)  Term=234 #1c1c1c/rgb( 28, 28, 28)  [delta=1.402113]
"       green: GUI=#60aa00/rgb( 96,170,  0)  Term= 70 #5faf00/rgb( 95,175,  0)  [delta=1.461529]
"        teal: GUI=#00aa80/rgb(  0,170,128)  Term= 36 #00af87/rgb(  0,175,135)  [delta=1.674692]
"      uilime: GUI=#bbfc20/rgb(187,252, 32)  Term=154 #afff00/rgb(175,255,  0)  [delta=1.752062]
"    greyblue: GUI=#6688aa/rgb(102,136,170)  Term= 67 #5f87af/rgb( 95,135,175)  [delta=1.885690]
"         red: GUI=#d02b61/rgb(208, 43, 97)  Term=161 #d7005f/rgb(215,  0, 95)  [delta=2.228908]
"      uipink: GUI=#fc20bb/rgb(252, 32,187)  Term=199 #ff00af/rgb(255,  0,175)  [delta=2.436735]
"      yellow: GUI=#d08928/rgb(208,137, 40)  Term=172 #d78700/rgb(215,135,  0)  [delta=2.602762]
"      uiteal: GUI=#20fcbb/rgb( 32,252,187)  Term= 49 #00ffaf/rgb(  0,255,175)  [delta=2.766988]
"      purple: GUI=#b77fdb/rgb(183,127,219)  Term=140 #af87d7/rgb(175,135,215)  [delta=2.975730]
"    uipurple: GUI=#bb20fc/rgb(187, 32,252)  Term=129 #af00ff/rgb(175,  0,255)  [delta=3.113883]
"    diffblue: GUI=#80aacc/rgb(128,170,204)  Term=110 #87afd7/rgb(135,175,215)  [delta=3.169244]
"     uiamber: GUI=#fcbb20/rgb(252,187, 32)  Term=214 #ffaf00/rgb(255,175,  0)  [delta=4.314031]
"   diffgreen: GUI=#40bb40/rgb( 64,187, 64)  Term= 34 #00af00/rgb(  0,175,  0)  [delta=5.245883]
"        blue: GUI=#6c9ef8/rgb(108,158,248)  Term=111 #87afff/rgb(135,175,255)  [delta=5.367459]
"      uiblue: GUI=#20bbfc/rgb( 32,187,252)  Term= 39 #00afff/rgb(  0,175,255)  [delta=6.574042]
"    errorred: GUI=#ff2040/rgb(255, 32, 64)  Term=203 #ff5f5f/rgb(255, 95, 95)  [delta=7.745401]
"     diffred: GUI=#cc4040/rgb(204, 64, 64)  Term=167 #d75f5f/rgb(215, 95, 95)  [delta=8.213229]
if !has('gui_running') && get(g:, 'dark_transp_bg', 0)
  hi Normal ctermfg=253 ctermbg=NONE guifg=#dddddd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=253 ctermbg=NONE guifg=#dddddd guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
endif
hi ColorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CursorColumn ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=39 ctermbg=234 guifg=#20bbfc guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=34 ctermbg=234 guifg=#40bb40 guibg=#1b1d1e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=110 ctermbg=234 guifg=#80aacc guibg=#1b1d1e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=167 ctermbg=234 guifg=#cc4040 guibg=#1b1d1e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=214 ctermbg=234 guifg=#fcbb20 guibg=#1b1d1e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Directory ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi FoldColumn ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE,italic gui=NONE,italic
hi IncSearch ctermfg=214 ctermbg=234 guifg=#fcbb20 guibg=#1b1d1e guisp=NONE cterm=NONE,reverse gui=NONE,standout
hi LineNr ctermfg=239 ctermbg=234 guifg=#505050 guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=199 ctermbg=234 guifg=#fc20bb guibg=#1b1d1e guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,standout
hi ModeMsg ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=253 ctermbg=236 guifg=#dddddd guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=199 ctermbg=236 guifg=#fc20bb guibg=#303030 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PmenuThumb ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=39 ctermbg=234 guifg=#20bbfc guibg=#1b1d1e guisp=NONE cterm=NONE,reverse gui=NONE,standout
hi SignColumn ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=199 ctermbg=234 guifg=#fc20bb guibg=#1b1d1e guisp=#d02b61 cterm=NONE gui=NONE
hi SpellCap ctermfg=39 ctermbg=234 guifg=#20bbfc guibg=#1b1d1e guisp=#6c9ef8 cterm=NONE gui=NONE
hi SpellLocal ctermfg=129 ctermbg=234 guifg=#bb20fc guibg=#1b1d1e guisp=#b77fdb cterm=NONE gui=NONE
hi SpellRare ctermfg=49 ctermbg=234 guifg=#20fcbb guibg=#1b1d1e guisp=#00aa80 cterm=NONE,reverse gui=NONE,reverse
hi StatusLine ctermfg=253 ctermbg=236 guifg=#dddddd guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=253 ctermbg=236 guifg=#dddddd guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=253 ctermbg=236 guifg=#dddddd guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=253 ctermbg=239 guifg=#dddddd guibg=#505050 guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=239 ctermbg=234 guifg=#505050 guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=39 ctermbg=236 guifg=#20bbfc guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=244 ctermbg=NONE guifg=#808080 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi! link Conditional Statement
hi Constant ctermfg=70 ctermbg=NONE guifg=#60aa00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=203 ctermbg=234 guifg=#ff2040 guibg=#1b1d1e guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,standout
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=140 ctermbg=NONE guifg=#b77fdb guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=253 ctermbg=NONE guifg=#dddddd guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=67 ctermbg=NONE guifg=#6688aa guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=161 ctermbg=NONE guifg=#d02b61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Special
hi Statement ctermfg=111 ctermbg=NONE guifg=#6c9ef8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi String ctermfg=172 ctermbg=NONE guifg=#d08928 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=49 ctermbg=NONE guifg=#20fcbb guibg=NONE guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,standout
hi Type ctermfg=36 ctermbg=NONE guifg=#00aa80 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=253 ctermbg=NONE guifg=#dddddd guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1b1d1e guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1b1d1e guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownH1 ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownH2 ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownH3 ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownH4 ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownH5 ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownH6 ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownLinkTextDelimiter ctermfg=161 ctermbg=NONE guifg=#d02b61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi markdownLinkDelimiter ctermfg=161 ctermbg=NONE guifg=#d02b61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi markdownListMarker ctermfg=140 ctermbg=NONE guifg=#b77fdb guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownLinkText ctermfg=111 ctermbg=NONE guifg=#6c9ef8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi markdownUrl ctermfg=239 ctermbg=NONE guifg=#505050 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi markdownBoldDelimiter ctermfg=161 ctermbg=NONE guifg=#d02b61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi markdownItalicDelimiter ctermfg=161 ctermbg=NONE guifg=#d02b61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi markdownBoldItalicDelimiter ctermfg=161 ctermbg=NONE guifg=#d02b61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi rstSections ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi rstEmphasis ctermfg=36 ctermbg=NONE guifg=#00aa80 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi rstStrongEmphasis ctermfg=36 ctermbg=NONE guifg=#00aa80 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
finish

" Background: dark
" Color: black                #1b1d1e     ~   
" Color: greyblack            #505050     ~   
" Color: brightblack          #808080     ~   
" Color: white                #dddddd     ~   
" Color: brightwhite          #ffffff     ~   
" Color: red                  #d02b61     ~   
" Color: green                #60aa00     ~   
" Color: yellow               #d08928     ~   
" Color: blue                 #6c9ef8     ~   
" Color: purple               #b77fdb     ~   
" Color: greyblue             #6688aa     ~   
" Color: teal                 #00aa80     ~   
" Color: diffred              #cc4040     ~   
" Color: diffgreen            #40bb40     ~   
" Color: diffblue             #80aacc     ~   
" Color: uipink               #fc20bb     ~   
" Color: uilime               #bbfc20     ~   
" Color: uiteal               #20fcbb     ~   
" Color: uiblue               #20bbfc     ~   
" Color: uipurple             #bb20fc     ~   
" Color: uiamber              #fcbb20     ~   
" Color: uiblack              #303030     ~   
" Color: errorred             #ff2040     ~   
"     Normal           white             none
"     Terminal         white             none
"     Normal           white             black
"     Terminal         white             black
" ColorColumn          none              uiblack
" Conceal              none              none
" Cursor               none              none              reverse
" CursorColumn         white             black
" CursorLine           none              black
" CursorLineNr         uiblue            black
" DiffAdd              diffgreen         black             reverse
" DiffChange           diffblue          black             reverse
" DiffDelete           diffred           black             reverse
" DiffText             uiamber           black             reverse
" Directory            white             black
" EndOfBuffer          white             black
" ErrorMsg             white             black             reverse
" FoldColumn           white             black
" Folded               white             black             italic
" IncSearch            uiamber           black             t=reverse g=standout
" LineNr               greyblack         black
" MatchParen           uipink            black             t=bold,reverse g=bold,standout
" ModeMsg              white             black
" MoreMsg              white             black
" NonText              white             black  
" Pmenu                white             uiblack
" PmenuSbar            white             black
" PmenuSel             uipink            uiblack           t=bold g=bold 
" PmenuThumb           white             black
" Question             white             black
" QuickFixLine     ->  Search
" Search               uiblue            black             t=reverse g=standout
" SignColumn           white             black
" SpecialKey           white             black
" SpellBad             uipink            black             s=red
" SpellCap             uiblue            black             s=blue
" SpellLocal           uipurple          black             s=purple
" SpellRare            uiteal            black             s=teal reverse
" StatusLine           white             uiblack           
" StatusLineNC         white             black
" StatusLineTerm    -> StatusLine
" StatusLineTermNC  -> StatusLineNC
" TabLine              white             uiblack
" TabLineFill          white             uiblack
" TabLineSel           white             greyblack
" Title                white             black
" VertSplit            greyblack         black
" Visual               none              uiblack 
" VisualNOS            none              uiblack
" WarningMsg           white             black
" WildMenu             uiblue            uiblack
" Boolean           -> Constant
" Character         -> Constant
" Comment              brightblack       none              t=italic g=italic
" Conditional       -> Statement
" Constant             green             none
" Define            -> PreProc
" Debug             -> Special
" Delimiter         -> Special
" Error                errorred          black             t=reverse,bold g=standout,bold
" Exception         -> Statement
" Float             -> Constant
" Function          -> Identifier
" Identifier           purple            none
" Ignore               white             none
" Include           -> PreProc
" Keyword           -> Statement
" Label             -> Statement
" Macro             -> PreProc
" Number            -> Constant
" Operator          -> Statement
" PreCondit         -> PreProc
" PreProc              greyblue          none
" Repeat            -> Statement
" Special              red               none
" SpecialChar       -> Special
" SpecialComment    -> Special
" Statement            blue              none
" StorageClass      -> Type
" String               yellow            none
" Structure         -> Type
" Tag               -> Special
" Todo                 uiteal            none              t=reverse,bold g=standout,bold
" Type                 teal              none
" Typedef           -> Type
" Underlined           white             none
" lCursor           -> Cursor
" CursorIM             none              fg
" ToolbarLine          none              black
" ToolbarButton        white             black             bold
" markdownH1           brightwhite    none        t=bold g=bold
" markdownH2           brightwhite    none        t=bold g=bold
" markdownH3           brightwhite    none        t=bold g=bold
" markdownH4           brightwhite    none        t=bold g=bold
" markdownH5           brightwhite    none        t=bold g=bold
" markdownH6           brightwhite    none        t=bold g=bold
" markdownLinkTextDelimiter        red            none
" markdownLinkDelimiter            red            none
" markdownListMarker   purple         none        t=bold g=bold
" markdownLinkText     blue           none
" markdownUrl          greyblack      none
" markdownBoldDelimiter            red            none
" markdownItalicDelimiter          red            none
" markdownBoldItalicDelimiter      red            none
" rstSections          brightwhite    none        t=bold g=bold
" rstEmphasis          teal           none        t=italic g=italic
" rstStrongEmphasis    teal           none        t=bold g=bold
