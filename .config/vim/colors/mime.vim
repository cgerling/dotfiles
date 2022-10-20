"  Setup
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
  let g:colors_name="mime"

" Italics
let g:terminal_italic = get(g:, 'terminal_italic', 0)
let s:italic = ""
if g:terminal_italic == 1
  let s:italic = "italic"
endif

" Bold
let s:bold = "bold"

" Colors
let s:color0  = '0'
let s:color1  = '1'
let s:color2  = '2'
let s:color3  = '3'
let s:color4  = '4'
let s:color5  = '5'
let s:color6  = '6'
let s:color7  = '7'
let s:color8  = '8'
let s:color9  = '9'
let s:color10 = '10'
let s:color11 = '11'
let s:color12 = '12'
let s:color13 = '13'
let s:color14 = '14'
let s:color15 = '15'
let s:none    = 'NONE'

" Highlight function
function! s:hi(group, fg, bg, attr)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "hi " . a:group . " ctermfg=" . a:fg
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " ctermbg=" . a:bg
  endif
  if a:attr != ""
    exec "hi " . a:group . " cterm=" . a:attr
  endif
endfunction

" User Interface
call s:hi('Bold',                               '',          '',        s:bold)
call s:hi('Debug',                              s:color9,    '',        '')
call s:hi('Directory',                          s:color12,   '',        '')
call s:hi('ErrorMsg',                           s:color9,    s:color0,  '')
call s:hi('Exception',                          s:color9,    '',        '')
call s:hi('FoldColumn',                         s:color0,    s:color6,  '')
call s:hi('Folded',                             s:color0,    s:color6,  s:italic)
call s:hi('IncSearch',                          s:color0,    s:color15, s:none)
call s:hi('Italic',                             '',          '',        s:italic)

call s:hi('Macro',                              s:color9,    '',        '')
call s:hi('MatchParen',                         s:color0,    s:color7,  '')
call s:hi('ModeMsg',                            s:color4,    '',        '')
call s:hi('MoreMsg',                            s:color10,   '',        '')
call s:hi('Question',                           s:color12,   '',        '')
call s:hi('Search',                             s:color0,    s:color13, '')
call s:hi('SpecialKey',                         s:color3,    '',        '')
call s:hi('TooLong',                            s:color9,    '',        '')
call s:hi('Underlined',                         s:color9,    '',        '')
call s:hi('Visual',                             s:color0,    s:color7,  '')
call s:hi('VisualNOS',                          s:color9,    '',        '')
call s:hi('WarningMsg',                         s:color9,    '',        '')
call s:hi('WildMenu',                           s:color12,    s:color0, '')
call s:hi('Title',                              s:color12,   '',        '')
call s:hi('Conceal',                            s:color12,   s:color0,  '')
call s:hi('Cursor',                             s:color15,   s:color0,  '')
call s:hi('NonText',                            s:color3,    '',        '')
call s:hi('Normal',                             s:color7,    s:color0,  '')
call s:hi('EndOfBuffer',                        s:color5,    s:color0,  '')
call s:hi('LineNr',                             s:color8,    s:color0,  '')
call s:hi('SignColumn',                         s:color0,    s:color0,  '')
call s:hi('StatusLine',                         s:color12,   s:color0,  '')
call s:hi('StatusLineNC',                       s:color8,    s:color0,  '')
call s:hi('VertSplit',                          s:color0,    s:color8,  '')
call s:hi('ColorColumn',                        s:color0,    s:color7,  '')
call s:hi('CursorColumn',                       '',          s:color8,  '')
call s:hi('CursorLine',                         '',          s:color8,  '')
call s:hi('CursorLineNr',                       s:color15,   s:color8,  '')
call s:hi('PMenu',                              s:color15,   s:color0,  '')
call s:hi('PMenuSel',                           s:color0,    s:color12, '')
call s:hi('PmenuSbar',                          s:color8,    s:color8,  '')
call s:hi('PmenuThumb',                         s:color15,   s:color15, '')
call s:hi('TabLine',                            s:color7,    s:color0,  '')
call s:hi('TabLineFill',                        s:color0,    s:color0,  '')
call s:hi('TabLineSel',                         s:color12,   s:color0,  '')
call s:hi('helpExample',                        s:color11,   '',        '')
call s:hi('helpCommand',                        s:color11,   '',        '')

" Standard syntax highlighting
call s:hi('Boolean',                            s:color9,    '',        '')
call s:hi('Character',                          s:color9,    '',        '')
call s:hi('Comment',                            s:color3,    '',        s:italic)
call s:hi('Conditional',                        s:color13,   '',        '')
call s:hi('Constant',                           s:color9,    '',        '')
call s:hi('Define',                             s:color13,   '',        '')
call s:hi('Delimiter',                          s:color8,    '',        '')
call s:hi('Float',                              s:color9,    '',        '')
call s:hi('Function',                           s:color12,   '',        '')

call s:hi('Identifier',                         s:color14,   '',        '')
call s:hi('Include',                            s:color12,   '',        '')
call s:hi('Keyword',                            s:color13,   '',        '')

call s:hi('Label',                              s:color11,   '',        '')
call s:hi('Number',                             s:color9,    '',        '')
call s:hi('Operator',                           s:color5,    '',        '')
call s:hi('PreProc',                            s:color11,   '',        '')
call s:hi('Repeat',                             s:color11,   '',        '')
call s:hi('Special',                            s:color14,   '',        '')
call s:hi('SpecialChar',                        s:color8,    '',        '')
call s:hi('Statement',                          s:color9,    '',        '')
call s:hi('StorageClass',                       s:color11,   '',        '')
call s:hi('String',                             s:color10,   '',        '')
call s:hi('Structure',                          s:color13,   '',        '')
call s:hi('Tag',                                s:color11,   '',        '')
call s:hi('Todo',                               s:color11,   s:color1,  '')
call s:hi('Type',                               s:color11,   '',        '')
call s:hi('Typedef',                            s:color11,   '',        '')

" LSP
call s:hi('LspDiagnosticsDefaultError',         '',          '',        '')
call s:hi('LspDiagnosticsSignError',            s:color9,    '',        '')
call s:hi('LspDiagnosticsUnderlineError',       '',          '',        'undercurl')

call s:hi('LspDiagnosticsDefaultWarning',       '',          '',        '')
call s:hi('LspDiagnosticsSignWarning',          s:color11,   '',        '')
call s:hi('LspDiagnosticsUnderlineWarning',     '',          '',        'undercurl')

call s:hi('LspDiagnosticsDefaultInformation',   '',          '',        '')
call s:hi('LspDiagnosticsSignInformation',      s:color12,   '',        '')
call s:hi('LspDiagnosticsUnderlineInformation', '',          '',        'undercurl')

call s:hi('LspDiagnosticsDefaultHint',          '',          '',        '')
call s:hi('LspDiagnosticsSignHint',             s:color14,   '',        '')
call s:hi('LspDiagnosticsUnderlineHint',        '',          '',        'undercurl')

" TreeSitter stuff
call s:hi('TSInclude',                          s:color14,   '',        '')
call s:hi('TSPunctBracket',                     s:color14,   '',        '')
call s:hi('TSPunctDelimiter',                   s:color7,    '',        '')
call s:hi('TSParameter',                        s:color7,    '',        '')
call s:hi('TSType',                             s:color12,   '',        '')
call s:hi('TSFunction',                         s:color14,   '',        '')

call s:hi('TSTagDelimiter',                     s:color14,   '',        '')
call s:hi('TSProperty',                         s:color11,   '',        '')
call s:hi('TSMethod',                           s:color12,   '',        '')
call s:hi('TSParameter',                        s:color11,   '',        '')
call s:hi('TSConstructor',                      s:color7,    '',        '')
call s:hi('TSVariable',                         s:color7,    '',        '')
call s:hi('TSOperator',                         s:color7,    '',        '')
call s:hi('TSTag',                              s:color7,    '',        '')
call s:hi('TSKeyword',                          s:color13,   '',        '')
call s:hi('TSKeywordOperator',                  s:color13,   '',        '')
call s:hi('TSVariableBuiltin',                  s:color9,    '',        '')
call s:hi('TSLabel',                            s:color14,   '',        '')

call s:hi('SpellBad',                           s:color0,    '',        'undercurl')
call s:hi('SpellLocal',                         s:color0,    '',        'undercurl')
call s:hi('SpellCap',                           s:color0,    '',        'undercurl')
call s:hi('SpellRare',                          s:color0,    '',        'undercurl')

call s:hi('csClass',                            s:color11,   '',        '')
call s:hi('csAttribute',                        s:color11,   '',        '')
call s:hi('csModifier',                         s:color13,   '',        '')
call s:hi('csType',                             s:color9,    '',        '')
call s:hi('csUnspecifiedStatement',             s:color12,   '',        '')
call s:hi('csContextualStatement',              s:color13,   '',        '')
call s:hi('csNewDecleration',                   s:color9,    '',        '')
call s:hi('cOperator',                          s:color14,   '',        '')
call s:hi('cPreCondit',                         s:color13,   '',        '')

call s:hi('cssColor',                           s:color14,   '',        '')
call s:hi('cssBraces',                          s:color5,    '',        '')
call s:hi('cssClassName',                       s:color13,   '',        '')


call s:hi('DiffAdd',                            s:color2,    s:color0,  s:bold)
call s:hi('DiffChange',                         s:color3,    s:color0,  '')
call s:hi('DiffDelete',                         s:color1,    s:color0,  '')
call s:hi('DiffText',                           s:color7,    s:color0,  '')
call s:hi('DiffAdded',                          s:color7,    s:color10, s:bold)
call s:hi('DiffFile',                           s:color9,    s:color0,  '')
call s:hi('DiffNewFile',                        s:color10,   s:color0,  '')
call s:hi('DiffLine',                           s:color12,   s:color0,  '')
call s:hi('DiffRemoved',                        s:color7,    s:color9,  s:bold)

call s:hi('gitCommitOverflow',                  s:color9,    '',        '')
call s:hi('gitCommitSummary',                   s:color10,   '',        '')

call s:hi('htmlBold',                           s:color11,   '',        '')
call s:hi('htmlItalic',                         s:color13,   '',        '')
call s:hi('htmlTag',                            s:color14,   '',        '')
call s:hi('htmlEndTag',                         s:color14,   '',        '')
call s:hi('htmlArg',                            s:color11,   '',        '')
call s:hi('htmlTagName',                        s:color7,    '',        '')

call s:hi('javaScript',                         s:color5,    '',        '')
call s:hi('javaScriptNumber',                   s:color9,    '',        '')
call s:hi('javaScriptBraces',                   s:color5,    '',        '')

call s:hi('jsonKeyword',                        s:color10,   '',        '')
call s:hi('jsonQuote',                          s:color10,   '',        '')

call s:hi('markdownCode',                       s:color10,   '',        '')
call s:hi('markdownCodeBlock',                  s:color10,   '',        '')
call s:hi('markdownHeadingDelimiter',           s:color12,   '',        '')
call s:hi('markdownItalic',                     s:color13,   '',        s:italic)
call s:hi('markdownBold',                       s:color11,   '',        s:bold)
call s:hi('markdownCodeDelimiter',              s:color8,    '',        s:italic)
call s:hi('markdownError',                      s:color5,    s:color0,  '')

call s:hi('typescriptParens',                   s:color5,    s:none,    '')

call s:hi('NeomakeErrorSign',                   s:color9,    s:color0,  '')
call s:hi('NeomakeWarningSign',                 s:color11,   s:color0,  '')
call s:hi('NeomakeInfoSign',                    s:color15,   s:color0,  '')
call s:hi('NeomakeError',                       s:color9,    '',        'underline')
call s:hi('NeomakeWarning',                     s:color9,    '',        'underline')

call s:hi('ALEErrorSign',                       s:color9,    s:color0,  s:bold)
call s:hi('ALEWarningSign',                     s:color11,   s:color0,  s:bold)
call s:hi('ALEInfoSign',                        s:color15,   s:color0,  s:bold)

call s:hi('NERDTreeExecFile',                   s:color5,    '',        '')
call s:hi('NERDTreeDirSlash',                   s:color12,   '',        '')
call s:hi('NERDTreeOpenable',                   s:color12,   '',        '')
call s:hi('NERDTreeFile',                       '',          s:none,    '')
call s:hi('NERDTreeFlags',                      s:color12,   '',        '')

call s:hi('phpComparison',                      s:color5,    '',        '')
call s:hi('phpParent',                          s:color5,    '',        '')
call s:hi('phpMemberSelector',                  s:color5,    '',        '')

call s:hi('pythonRepeat',                       s:color13,   '',        '')
call s:hi('pythonOperator',                     s:color13,   '',        '')

call s:hi('rubyConstant',                       s:color11,   '',        '')
call s:hi('rubySymbol',                         s:color10,   '',        '')
call s:hi('rubyAttribute',                      s:color12,   '',        '')
call s:hi('rubyInterpolation',                  s:color10,   '',        '')
call s:hi('rubyInterpolationDelimiter',         s:color8,    '',        '')
call s:hi('rubyStringDelimiter',                s:color10,   '',        '')
call s:hi('rubyRegexp',                         s:color14,   '',        '')

call s:hi('sassidChar',                         s:color9,    '',        '')
call s:hi('sassClassChar',                      s:color9,    '',        '')
call s:hi('sassInclude',                        s:color13,   '',        '')
call s:hi('sassMixing',                         s:color13,   '',        '')
call s:hi('sassMixinName',                      s:color12,   '',        '')

call s:hi('vimfilerLeaf',                       s:color5,    '',        '')
call s:hi('vimfilerNormalFile',                 s:color5,    s:color0,  '')
call s:hi('vimfilerOpenedFile',                 s:color12,   '',        '')
call s:hi('vimfilerClosedFile',                 s:color12,   '',        '')

call s:hi('GitGutterAdd',                       s:color10,   s:color0,  s:bold)
call s:hi('GitGutterChange',                    s:color12,   s:color0,  s:bold)
call s:hi('GitGutterDelete',                    s:color9,    s:color0,  s:bold)
call s:hi('GitGutterChangeDelete',              s:color13,   s:color0,  s:bold)

call s:hi('SignifySignAdd',                     s:color10,   s:color0,  s:bold)
call s:hi('SignifySignChange',                  s:color12,   s:color0,  s:bold)
call s:hi('SignifySignDelete',                  s:color9,    s:color0,  s:bold)
call s:hi('SignifySignChangeDelete',            s:color13,   s:color0,  s:bold)
call s:hi('SignifySignDeleteFirstLine',         s:color9,    s:color0,  s:bold)

call s:hi('xmlTag',                             s:color14,   '',        '')
call s:hi('xmlTagName',                         s:color5,    '',        '')
call s:hi('xmlEndTag',                          s:color14,   '',        '')
call s:hi('Defx_filename_directory',            s:color12,   '',        '')

call s:hi('CocErrorSign',                       s:color9,    '',        '')
call s:hi('CocWarningSign',                     s:color11,   '',        '')
call s:hi('CocInfoSign',                        s:color12,   '',        '')
call s:hi('CocHintSign',                        s:color14,   '',        '')
call s:hi('CocErrorFloat',                      s:color9,    '',        '')
call s:hi('CocWarningFloat',                    s:color11,   '',        '')
call s:hi('CocInfoFloat',                       s:color12,   '',        '')
call s:hi('CocHintFloat',                       s:color14,   '',        '')
call s:hi('CocDiagnosticsError',                s:color9,    '',        '')
call s:hi('CocDiagnosticsWarning',              s:color11,   '',        '')
call s:hi('CocDiagnosticsInfo',                 s:color12,   '',        '')
call s:hi('CocDiagnosticsHint',                 s:color14,   '',        '')
call s:hi('CocSelectedText',                    s:color13,   '',        '')
call s:hi('CocCodeLens',                        s:color4,    '',        '')

