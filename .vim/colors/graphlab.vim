" graphlab.vim
" Author:      Zach Nation <zach@graphlab.com>

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

" Use GraphLab colors
if &background == "dark"
  exe 'hi Normal       guifg=#9b9090 guibg=#221e1e'

  exe 'hi SpecialKey   guifg=#0b9bd9 guibg=#221e1e'
  exe 'hi NonText      guifg=#0b9bd9 guibg=#221e1e'
  exe 'hi Directory    guifg=#0b9bd9 guibg=#221e1e'
  exe 'hi Identifier   guifg=#0b9bd9 guibg=#221e1e'
  exe 'hi PreProc      guifg=#0b9bd9 guibg=#221e1e'
  exe 'hi Underlined   guifg=#0b9bd9 guibg=#221e1e'
  exe 'hi Special      guifg=#0b9bd9 guibg=#221e1e'
  exe 'hi SignColumn   guifg=#0b9bd9 guibg=#221e1e'
  exe 'hi LineNr       guifg=#0b9bd9 guibg=#221e1e'

  exe 'hi Title        guifg=#ff36c7 guibg=#221e1e'
  exe 'hi Comment      guifg=#ff36c7 guibg=#221e1e'

  exe 'hi Question     guifg=#85bd00 guibg=#221e1e'
  exe 'hi Type         guifg=#85bd00 guibg=#221e1e'
  exe 'hi MoreMsg      guifg=#85bd00 guibg=#221e1e'
  exe 'hi TabLineSel   guifg=#85bd00 guibg=#221e1e'
  exe 'hi Constant     guifg=#85bd00 guibg=#221e1e'

  exe 'hi Statement    guifg=#ff5500 guibg=#221e1e'

  exe 'hi SpellRare    guifg=#9b9090 guibg=#4a0035'
  exe 'hi DiffChange   guifg=#9b9090 guibg=#4a0035'
  exe 'hi DiffText     guifg=#9b9090 guibg=#4a0035'
  exe 'hi Pmenu        guifg=#9b9090 guibg=#4a0035'

  exe 'hi DiffAdd      guifg=#9b9090 guibg=#1b2700'

  exe 'hi PmenuSbar    guifg=#9b9090 guibg=#431600'
  exe 'hi DiffDelete   guifg=#9b9090 guibg=#431600'

  exe 'hi Search       guifg=#221e1e guibg=#0b9bd9'

  exe 'hi SpellCap     guifg=#221e1e guibg=#ff36c7'
  exe 'hi SpellLocal   guifg=#221e1e guibg=#ff36c7'
  exe 'hi MatchParen   guifg=#221e1e guibg=#ff36c7'

  exe 'hi ErrorMsg     guifg=#221e1e guibg=#ff5500'
  exe 'hi WildMenu     guifg=#221e1e guibg=#ff5500'
  exe 'hi Todo         guifg=#221e1e guibg=#ff5500'
  exe 'hi Error        guifg=#221e1e guibg=#ff5500'
  exe 'hi SpellBad     guifg=#221e1e guibg=#ff5500'
else
  exe 'hi Normal       guifg=#5e5555 guibg=#e3e0e0'

  exe 'hi SpecialKey   guifg=#076289 guibg=#e3e0e0'
  exe 'hi NonText      guifg=#076289 guibg=#e3e0e0'
  exe 'hi Directory    guifg=#076289 guibg=#e3e0e0'
  exe 'hi Identifier   guifg=#076289 guibg=#e3e0e0'
  exe 'hi PreProc      guifg=#076289 guibg=#e3e0e0'
  exe 'hi Underlined   guifg=#076289 guibg=#e3e0e0'
  exe 'hi Special      guifg=#076289 guibg=#e3e0e0'
  exe 'hi SignColumn   guifg=#076289 guibg=#e3e0e0'
  exe 'hi LineNr       guifg=#076289 guibg=#e3e0e0'

  exe 'hi Title        guifg=#b0007f guibg=#e3e0e0'
  exe 'hi Comment      guifg=#b0007f guibg=#e3e0e0'

  exe 'hi Question     guifg=#486600 guibg=#e3e0e0'
  exe 'hi Type         guifg=#486600 guibg=#e3e0e0'
  exe 'hi MoreMsg      guifg=#486600 guibg=#e3e0e0'
  exe 'hi TabLineSel   guifg=#486600 guibg=#e3e0e0'
  exe 'hi Constant     guifg=#486600 guibg=#e3e0e0'

  exe 'hi Statement    guifg=#a13600 guibg=#e3e0e0'

  exe 'hi SpellRare    guifg=#5e5555 guibg=#ffd3f3'
  exe 'hi DiffChange   guifg=#5e5555 guibg=#ffd3f3'
  exe 'hi DiffText     guifg=#5e5555 guibg=#ffd3f3'
  exe 'hi Pmenu        guifg=#5e5555 guibg=#ffd3f3'

  exe 'hi DiffAdd      guifg=#5e5555 guibg=#acf400'

  exe 'hi PmenuSbar    guifg=#5e5555 guibg=#ffd6c1'
  exe 'hi DiffDelete   guifg=#5e5555 guibg=#ffd6c1'

  exe 'hi Search       guifg=#e3e0e0 guibg=#b0007f'
  exe 'hi SpellCap     guifg=#e3e0e0 guibg=#b0007f'
  exe 'hi SpellLocal   guifg=#e3e0e0 guibg=#b0007f'
  exe 'hi MatchParen   guifg=#e3e0e0 guibg=#b0007f'

  exe 'hi ErrorMsg     guifg=#e3e0e0 guibg=#a13600'
  exe 'hi WildMenu     guifg=#e3e0e0 guibg=#a13600'
  exe 'hi Todo         guifg=#e3e0e0 guibg=#a13600'
  exe 'hi Error        guifg=#e3e0e0 guibg=#a13600'
  exe 'hi SpellBad     guifg=#e3e0e0 guibg=#a13600'
endif

" light/dark-independent settings
exe 'hi IncSearch    cterm=reverse gui=reverse'
exe 'hi StatusLine   cterm=reverse gui=reverse'
exe 'hi StatusLineNC cterm=reverse gui=reverse'
exe 'hi VertSplit    cterm=reverse gui=reverse'
exe 'hi Visual       cterm=reverse gui=reverse'
exe 'hi PmenuThumb   cterm=reverse gui=reverse'
exe 'hi TabLine      cterm=underline guifg=fg guibg=bg gui=underline'
exe 'hi TabLineFill  cterm=reverse gui=reverse'
exe 'hi CursorLine   cterm=underline gui=underline guibg=bg'
exe 'hi Cursor       cterm=reverse guifg=bg guibg=fg'
exe 'hi lCursor      cterm=reverse guifg=bg guibg=fg'

let colors_name = "graphlab"
