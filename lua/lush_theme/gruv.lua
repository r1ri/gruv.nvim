--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local fg = hsl(43, 59, 81)
local fg4 = hsl(43, 23, 56)
local bg  = hsl(0, 0, 16)
local bg2  = hsl(20, 5, 22)
local bg3  = hsl(27, 10, 36)
local bg4  = hsl(28, 11, 44)
local red = hsl(2, 75, 46)
local red_light = hsl(6, 96, 59)
local orange = hsl(24, 88, 45)
local orange_light = hsl(27, 99, 55)
local yellow = hsl(40, 73, 49)
local yellow_light = hsl(42, 95, 58)
local green = hsl(60, 71, 35)
local green_light = hsl(61, 66, 44)
local blue = hsl(183, 33, 40)
local blue_light = hsl(157, 16, 58)
local purple = hsl(333, 34, 54)
local purple_light = hsl(344, 47, 68)
local purple_bg = hsl(328, 20, 33)
local aqua = hsl(122, 21, 51)
local aqua_light = hsl(104, 35, 62)


local theme = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.
    Comment      { fg=bg4 }, -- any comment
    ColorColumn  { bg=bg2 }, -- used for the columns set with 'colorcolumn'
    -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- character under the cursor
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg=bg2 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory    { }, -- directory names (and other special names in listings)
    DiffAdd      { bg=bg, fg=green_light}, -- diff mode: Added line |diff.txt|
    DiffChange   { bg=bg, fg=blue_light }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { bg=bg, fg=red_light}, -- diff mode: Deleted line |diff.txt|
    -- DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { fg=bg3}, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { fg=red }, -- error messages on the command line
    VertSplit    { fg=bg }, -- the column separating vertically split windows
    -- Folded       { }, -- line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    SignColumn   { bg=bg }, -- column where |signs| are displayed
    -- IncSearch    { bg=bg.rotate(125) }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    IncSearch    { bg = fg, fg = bg },
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    LineNr       { fg=fg4}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg=fg4}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { gui="bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { fg=bg3 }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    NonText      { fg=bg3 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { bg=bg, fg=fg }, -- normal text
    NormalFloat  { bg=bg }, -- Normal text in floating windows.
    NormalNC     { fg=fg4 }, -- normal text in non-current windows
    Pmenu        { bg=bg }, -- Popup menu: normal item.
    PmenuSel     { bg=bg2 }, -- Popup menu: selected item.
    PmenuSbar    { bg=bg }, -- Popup menu: scrollbar.
    PmenuThumb   { bg=bg2 }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { bg = fg, fg = bg  }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     { fg=red_light }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     { fg=yellow_light }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { fg=blue_light }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { fg=blue_light }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { fg=fg, bg=bg }, -- status line of current window
    StatusLineNC { fg=fg, bg=bg }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { bg = bg }, -- tab pages line, not active tab page label
    TabLineFill  { bg = bg }, -- tab pages line, where there are no labels
    TabLineSel   { gui = "bold" }, -- tab pages line, active tab page label
    Title        { fg = purple_light }, -- titles for output from ":set all", ":autocmd" etc.
    -- Visual       { }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg   { }, -- warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu     { }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg=blue_light}, -- (preferred) any constant
    String         { fg=green_light}, --   a string constant: "this is a string"
    -- Character      { }, --  a character constant: 'c', '\n'
    -- Number         { }, --   a number constant: 234, 0xff
    -- Boolean        { }, --  a boolean constant: TRUE, false
    -- Float          { }, --    a floating point constant: 2.3e10

    Identifier     { fg=blue_light }, -- (preferred) any variable name
    -- Function       { }, -- function name (also: methods for classes)

    Statement      { fg=red_light }, -- (preferred) any statement
    -- Conditional    { }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --    case, default, etc.
    Operator       { fg=fg }, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    PreProc        { fg=purple_light}, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg=red_light}, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    -- Special        { }, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    -- Bold       { gui = "bold" },
    -- Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { fg=red }, -- (preferred) any erroneous construct
    Todo           { fg=fg, gui="bold" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    LspDiagnosticsDefaultError           { fg=red }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning         { fg=yellow_light }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation     { fg=blue_light }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint            { fg=blue_light }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { fg=red }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { fg=yellow_light }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { fg=red_light }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { fg=yellow_light }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { fg=blue_light }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    TSAnnotation         { fg=fg },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { },    -- (unstable) TODO: docs
    TSBoolean            { fg=purple_light },    -- For booleans.
    TSCharacter          { fg=green_light },    -- For characters.
    TSComment            { fg=bg4 },    -- For comment blocks.
    -- TSConstructor        { },    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    TSConditional        { fg=red_light },    -- For keywords related to conditionnals.
    TSConstant           { fg=fg},    -- For constants
    TSConstBuiltin       { fg=purple_light },    -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro         { fg=aqua_light },    -- For constants that are defined by macros: `NULL` in C.
    TSError              { gui="bold" },    -- For syntax/parser errors.
    -- TSException          { },    -- For exception related keywords.
    TSField              { fg=blue_light },    -- For fields.
    -- TSFloat              { },    -- For floats.
    TSFunction           { fg=aqua_light },    -- For function (calls and definitions).
    -- TSFuncBuiltin        { },    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude            { fg=aqua },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword            { fg=red_light },    -- For keywords that don't fall in previous categories.
    TSKeywordFunction    { fg=red_light },    -- For keywords used to define a fuction.
    TSLabel              { fg=fg },    -- For labels: `label:` in C and `:label:` in Lua.
    TSMethod             { fg=blue_light },    -- For method calls and definitions.
    TSNamespace          { fg=blue_light },    -- For identifiers referring to modules and namespaces.
    TSNone               { fg=fg},    -- TODO: docs
    TSNumber             { fg=blue_light },    -- For all numbers
    TSOperator           { fg=fg },    -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter          { fg=blue_light },    -- For parameters of a function.
    -- TSParameterReference { },    -- For references to parameters of a function.
    -- TSProperty           { },    -- Same as `TSField`.
    -- TSPunctDelimiter     { },    -- For delimiters ie: `.`
    -- TSPunctBracket       { fg=fg },    -- For brackets and parens.
    -- TSPunctSpecial       { },    -- For special punctutation that does not fall in the catagories before.
    TSRepeat             { fg=red_light},    -- For keywords related to loops.
    TSString             { fg=green_light },    -- For strings.
    -- TSStringRegex        { },    -- For regexes.
    -- TSStringEscape       { },    -- For escape characters within a string.
    TSSymbol             { fg=blue_light },    -- For identifiers referring to symbols or atoms.
    TSType               { fg=red_light },    -- For types.
    TSTypeBuiltin        { fg=red_light },    -- For builtin types.
    TSVariable           { fg=fg },    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { },    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { },    -- Tags like html tag names.
    -- TSTagDelimiter       { },    -- Tag delimiter like `<` `>` `/`
    TSText               { fg=fg },    -- For strings considered text in a markup language.
    TSEmphasis           { gui="bold" },    -- For text to be represented with emphasis.
    -- TSUnderline          { },    -- For text to be represented with an underline.
    -- TSStrike             { },    -- For strikethrough text.
    -- TSTitle              { },    -- Text that is part of a title.
    TSLiteral            { fg=aqua },    -- Literal text.
    -- TSURI                { },    -- Any URI like a link or email.
    ELNormal             { bg=bg, fg=blue_light },
    rainbowcol1          { bg=bg, fg=yellow_light },
    rainbowcol2          { bg=bg, fg=green_light },
    rainbowcol3          { bg=bg, fg=aqua_light },
    rainbowcol4          { bg=bg, fg=blue_light },
    rainbowcol5          { bg=bg, fg=purple_light },
    rainbowcol6          { bg=bg, fg=red_light },
    rainbowcol7          { bg=bg, fg=orange_light },
    IndentBlankline      { bg=bg, fg=purple_bg },
    TabLineSelWrite      { bg=bg, fg=purple_bg, gui="bold,italic" },
    TabLineWrite         { bg=bg, fg=purple_bg, gui="italic" },
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
