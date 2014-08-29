" Vim color file
" Converted from my Textmate Code School theme using Coloration
" http://astonj.com

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "codeschool"

" General colors
hi Normal ctermfg=231 ctermbg=0 cterm=NONE guifg=#f0f0f0 guibg=#252c31 gui=NONE
hi NonText ctermfg=59 ctermbg=0 cterm=NONE guifg=#414e58 guibg=#232c31 gui=NONE
hi SignColumn ctermfg=231 ctermbg=0 cterm=NONE guifg=#f0f0f0 guibg=#252c31 gui=NONE

hi Cursor ctermfg=16 ctermbg=145 cterm=NONE guifg=#182227 guibg=#9ea7a6 gui=NONE
hi LineNr ctermfg=102 ctermbg=235 cterm=NONE guifg=#84898c guibg=#2a343a gui=NONE

hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#252c31 guibg=#252c31 gui=NONE
hi StatusLine ctermfg=231 ctermbg=59 cterm=bold guifg=#f0f0f0 guibg=#575e61 gui=bold
hi StatusLineNC ctermfg=231 ctermbg=59 cterm=NONE guifg=#f0f0f0 guibg=#575e61 gui=NONE

hi Folded ctermfg=247 ctermbg=16 cterm=NONE guifg=#9a9a9a guibg=#182227 gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f0f0f0 guibg=NONE gui=bold
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3f4b52 gui=NONE

" hi TabLine ctermfg=231 ctermbg=NONE cterm=bold guifg=#f0f0f0 guibg=NONE gui=bold
hi TabLine ctermfg=231 ctermbg=242 cterm=bold
hi TabLineFill ctermfg=231 ctermbg=242 cterm=bold
" hi TabLineSel ctermfg=231 ctermbg=NONE cterm=bold guifg=#f0f0f0 guibg=NONE gui=bold

hi SpecialKey ctermfg=59 ctermbg=0 cterm=NONE guifg=#414e58 guibg=#252c31 gui=NONE

hi WildMenu guifg=green guibg=yellow gui=NONE ctermfg=black ctermbg=yellow cterm=NONE
hi PmenuSbar guifg=black guibg=white gui=NONE ctermfg=black ctermbg=white cterm=NONE
"hi Ignore guifg=gray guibg=black gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

hi Error guifg=NONE guibg=NONE gui=undercurl ctermfg=white ctermbg=red cterm=NONE guisp=#FF6C60 " undercurl color
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi LongLineWarning guifg=NONE guibg=#371F1C gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi SpellBad guifg=NONE guibg=NONE gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline guisp=#FF6C60 " undercurl color
hi SpellCap guifg=NONE guibg=NONE gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline guisp=#FF6C60 " undercurl color
hi SpellLocal guifg=NONE guibg=NONE gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline guisp=#FF6C60 " undercurl color
hi SpellRare guifg=NONE guibg=NONE gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline guisp=#FF6C60 " undercurl color

" Message displayed in lower left, such as --INSERT--
" hi ModeMsg guifg=black guibg=#C6C5FE gui=BOLD ctermfg=black ctermbg=cyan cterm=BOLD

if version >= 700 " Vim 7.x specific colors
 hi CursorLine ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE
 hi CursorColumn ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE
 hi MatchParen ctermfg=180 ctermbg=NONE cterm=underline guifg=#dda790 guibg=NONE gui=underline
 hi Pmenu ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
 hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3f4b52 gui=NONE
 hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=NONE
 " ?"
 hi ColorColumn ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE
 let &colorcolumn="80,".join(range(120,999),",")
 hi IncSearch ctermfg=16 ctermbg=107 cterm=NONE guifg=#182227 guibg=#8bb664 gui=NONE
 hi Directory ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
endif

hi Function ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi Identifier ctermfg=113 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi Operator ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f0f0f0 guibg=NONE gui=NONE
hi Statement ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi Type ctermfg=153 ctermbg=NONE cterm=NONE guifg=#b5d8f6 guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline

" Syntax highlighting
hi Comment ctermfg=247 ctermbg=NONE cterm=NONE guifg=#9a9a9a guibg=NONE gui=italic
hi String ctermfg=107 ctermbg=NONE cterm=NONE guifg=#8bb664 guibg=NONE gui=NONE
hi Number ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE

hi Keyword ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi PreProc ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi Conditional ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE

hi Todo ctermfg=247 ctermbg=NONE cterm=inverse,bold guifg=#9a9a9a guibg=NONE gui=inverse,bold,italic
hi Constant ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE

hi Character ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi Boolean ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi Float ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi link Repeat Statement
hi Label ctermfg=107 ctermbg=NONE cterm=NONE guifg=#8bb664 guibg=NONE gui=NONE
hi link Exception Statement
hi link Include PreProc
hi Define ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi link Macro PreProc
hi link PreCondit PreProc
hi StorageClass ctermfg=113 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi link Structure Type
hi link Typedef Type
hi Tag ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi link SpecialChar Special
hi link SpecialComment Special
hi link Debug Special

" Special for Ruby
hi rubyRegexp ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi rubyEscape ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyControl ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=107 ctermbg=NONE cterm=NONE guifg=#8bb664 guibg=NONE gui=NONE
hi rubyClass ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi rubyOperator ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi rubyConstant ctermfg=146 ctermbg=NONE cterm=NONE guifg=#bfabcb guibg=NONE gui=NONE
hi rubyFunction ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi rubySymbol ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi rubyInclude ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi rubyException ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=146 ctermbg=NONE cterm=NONE guifg=#bfabcb guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=247 ctermbg=NONE cterm=NONE guifg=#9a9a9a guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi link rubyModule Keyword
hi link rubyKeyword Keyword
hi link rubyIdentifier Identifier

" Special for XML
hi link xmlTag Keyword
hi link xmlTagName Conditional
hi link xmlEndTag Identifier

" Special for HTML
hi htmlTag ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlTagName ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlEndTag ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlArg ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE

" Special for Javascript
hi link javaScriptNumber Number
hi javaScriptFunction ctermfg=113 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

" Special for diff
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f0f0f0 guibg=#43820d gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#880708 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#f0f0f0 guibg=#1c3657 gui=NONE
hi DiffText ctermfg=231 ctermbg=0 cterm=bold guifg=#f0f0f0 guibg=#204a87 gui=bold

" Special for yaml
hi yamlKey ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi yamlAnchor ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi yamlAlias ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=107 ctermbg=NONE cterm=NONE guifg=#8bb664 guibg=NONE gui=NONE

" Special for css
hi cssURL ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi cssFunctionName ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi cssColor ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi cssClassName ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi cssValueLength ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=151 ctermbg=NONE cterm=NONE guifg=#a7cfa3 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

" Special for Ctrl-Space
hi CtrlSpaceSelected ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE
hi CtrlSpaceNormal ctermfg=231 ctermbg=0 cterm=NONE guifg=#f0f0f0 guibg=#252c31 gui=NONE
hi CtrlSpaceFound ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE

" ---

