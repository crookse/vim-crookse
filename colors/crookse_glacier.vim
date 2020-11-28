" File: crookse_glacier.vim
" Description: A colorful theme/scheme combo to that matches Glacier. Syntax highlighting is still
" an ongoing process in this project.
"
" Notes:
"  - iTerm2 background color should be set to #0a1017.
"  - All color sets that target 000 - 015 are controlled by the terminal's settings. For example,
"    iTerm2 users have the option to change their profile's ANSI color settings by going to:
"        Preferences > Profiles > {Profile Name} > Colors > ANSI Colors
"    This package will honor the setting of those colors, so if color set 000 is used and iTerm2 has
"    Black set to #ffffff (white), then 000 in this package is #ffffff (white).
"
" --------------------------------------------------------------------------------------------------
" Credits: Brian Ward <twitter: @brianward>, Joey Figaro <twitter: @joeyfigaro>
" Source: https://github.com/primedirective/glacier-remixes
" --------------------------------------------------------------------------------------------------

" Note: This theme uses g:crookse.colorsets from:
" ~/.dotfiles/.vim/bundle/vim-crookse/autoload/components/colorsets.vim

" Initialization

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name = "crookse_glacier"

" Set the color mode.

function! s:UIMode()
    if has("gui_running")
        let s:ui_mode     = "gui"
        let s:id = 0
    else
        let s:ui_mode     = "cterm"
        let s:id = 1
		let s:index = 0
    endif
endfunction

call s:UIMode()

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// WINDOW BACKGROUND //////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

if has("gui_running")
	execute "highlight Normal "
		\. s:ui_mode . "fg=" . g:crookse.colorsets.015[s:index] . " "
		\. s:ui_mode . "bg=" . s:color.guibg . " "
		\. s:ui_mode . "=none"
else
" The background for non-gui mode is controlled by iterm
	execute "highlight Normal "
		\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index] . " "
		\. s:ui_mode . "=none"
endif

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// COMMON VARIABLES/HIGHLIGHT COLORS //////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

" Keep these in descending order by color value

" By color name
let s:white  = g:crookse.colorsets.255[s:index]
let s:yellow = g:crookse.colorsets.227[s:index]

" Default language colors
let s:langDefaultCursor        = g:crookse.colorsets.232[s:index]
let s:langDefaultDataTypeDefFg = g:crookse.colorsets.074[s:index]
let s:langDefaultDefiner       = g:crookse.colorsets.074[s:index]
let s:langDefaultDivider       = g:crookse.colorsets.024[s:index]
let s:langDefaultDividerBlue   = g:crookse.colorsets.024[s:index]
let s:langDefaultFuncCallFg    = g:crookse.colorsets.208[s:index]
let s:langDefaultHtmlTagFg     = g:crookse.colorsets.074[s:index]
let s:langDefaultIntegerFg     = g:crookse.colorsets.084[s:index]
let s:langDefaultKeyword       = g:crookse.colorsets.202[s:index]
let s:langDefaultOperator      = g:crookse.colorsets.255[s:index]
let s:langDefaultString        = g:crookse.colorsets.222[s:index]
let s:langDefaultVariableFg    = g:crookse.colorsets.203[s:index]

let s:commentFg     = g:crookse.colorsets.238[s:index]
let s:commentTodoFg = g:crookse.colorsets.255[s:index]
let s:commentTodoBg = g:crookse.colorsets.199[s:index]
let s:jsObjectKey   = g:crookse.colorsets.074[s:index]

let s:langDefaultSuccessForeground = g:crookse.colorsets.042[s:index]

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// STANDARD ///////////////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

execute 'highlight Delimiter '
	\. s:ui_mode . 'fg=' . g:crookse.colorsets.255[s:index]

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// APACHE /////////////////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

execute "highlight apacheAnything "
	\. s:ui_mode . "fg=" . s:langDefaultString
execute "highlight apacheComment "
	\. s:ui_mode . "fg=" . s:commentFg
execute "highlight apacheOption "
	\. s:ui_mode . "fg=" . s:langDefaultIntegerFg
execute "highlight apacheOptionOption "
	\. s:ui_mode . "fg=" . s:langDefaultIntegerFg
execute "highlight apacheString "
	\. s:ui_mode . "fg=" . s:langDefaultString
execute "highlight apacheOrderValue "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index]

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// VIM ////////////////////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

" Mode: Visual

execute 'highlight Visual '
	\. s:ui_mode . 'bg=' . g:crookse.colorsets.024[s:index]

" Mode: Normal

execute "highlight ColorColumn "
	\. s:ui_mode . "bg=" . s:langDefaultCursor
" Note: The CursorLine is controlled by iTerm2's setting.
execute "highlight CursorLine "
	\. s:ui_mode . "bg=" . s:langDefaultCursor . " "
	\. s:ui_mode . "=none"
execute "highlight Folded "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.015[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.004[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight LineNr "
	\. s:ui_mode . "fg=" . s:commentFg . " "
	\. s:ui_mode . "=none"
" The MatchParen higlights the opening character and closing character (e.g., opening function
" bracket and closing function bracket).
execute "highlight MatchParen "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.232[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.197[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight NonText "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.236[s:index] . " "
	\. s:ui_mode . "=none"
" SpecialKey chars: whitespace, tabs, VIM control characters.
execute "highlight SpecialKey "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.238[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight StatusLine "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.240[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.255[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight StatusLineNC "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.240[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.240[s:index] . " "
	\. s:ui_mode . "=none"
" Top tab names.
execute "highlight TabLine "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.232[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.232[s:index] . " "
	" \. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index] . " "
	" \. s:ui_mode . "bg=" . g:crookse.colorsets.232[s:index] . " "
	\. s:ui_mode . "=none"
" Top tab extended background area (everything to the right of the last tab).
execute "highlight TabLineFill "
	\. s:ui_mode . "fg=" . s:langDefaultDivider . " "
	" \. s:ui_mode . "bg=" . g:crookse.colorsets.255[s:index]
execute "highlight TabLineSel "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.232[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.148[s:index] . " "
	\. s:ui_mode . "=none"
" The currently selected tab (the one you are viewing).
execute "highlight TabLineSelected "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.232[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.148[s:index] . " "
	\. s:ui_mode . "=bold"
" Tabs not selected (tabs other than the one you are viewing).
execute "highlight TabLineUnselected "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.240[s:index]
execute "highlight Title "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.001[s:index]
execute "highlight! VertSplit "
	\. s:ui_mode . "fg=" . s:langDefaultDivider . " "
	\. s:ui_mode . "bg=" . s:langDefaultDivider . " "
	\. s:ui_mode . "=none"
execute "highlight vimAutoEvent "
	\. s:ui_mode . "fg=" . s:langDefaultVariableFg
execute "highlight vimCommentTitle "
	\. s:ui_mode . "fg=" . s:commentFg
execute "highlight vimContinue "
	\. s:ui_mode . "fg=" . s:langDefaultOperator
execute "highlight vimFuncSID "
	\. s:ui_mode . "fg=" . s:langDefaultVariableFg
execute "highlight vimOption "
	\. s:ui_mode . "fg=" . s:langDefaultVariableFg
execute "highlight vimParenSep "
	\. s:ui_mode . "fg=" . s:langDefaultOperator
" Commands such as `execute`.
execute "highlight! vimCommand "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
" Conditionals
execute "highlight! vimNotFunc "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
" The `let` keyword.
execute "highlight! vimLet "
	\. s:ui_mode . "fg=" . s:langDefaultDataTypeDefFg
" Operators
execute "highlight! vimOper "
	\. s:ui_mode . "fg=" . s:langDefaultOperator
execute "highlight vimTodo "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.232[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.005[s:index]
" Variables
execute "highlight! vimVar "
	\. s:ui_mode . "fg=" . s:langDefaultVariableFg
execute "highlight vimNumber "
	\. s:ui_mode . "fg=" . s:langDefaultIntegerFg
execute "highlight Comment "
	\. s:ui_mode . "fg=" . s:commentFg . " "
	\. s:ui_mode . "=none"
execute "highlight Constant "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.010[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight Identifier "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.238[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight Statement "
	\. s:ui_mode . "fg=" . s:langDefaultDataTypeDefFg . " "
	\. s:ui_mode . "=none"
execute "highlight PreProc "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.238[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight Function "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.074[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight Type "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.238[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight Number "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.011[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight Special "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.010[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight String "
	\. s:ui_mode . "fg=" . s:langDefaultString . " "
	\. s:ui_mode . "=none"
execute "highlight vimString "
	\. s:ui_mode . "fg=" . s:langDefaultString . " "
	\. s:ui_mode . "=none"
execute "highlight vimSynType "
	\. s:ui_mode . "fg=" . s:langDefaultString
execute "highlight vimLineComment "
	\. s:ui_mode . "fg=" . s:commentFg

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// CSS ////////////////////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

execute "highlight cssAttributeSelector "
	\. s:ui_mode . "fg=" . s:langDefaultString
execute "highlight cssStringQQ "
	\. s:ui_mode . "fg=" . s:langDefaultString
execute "highlight scssSelectorName "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight cssBoxProp "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight cssMediaProp "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight cssAtRule "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight cssBorderProp "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight cssPositioningProp "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight cssPseudoClassId "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight cssTagName "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight cssClassName "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight cssFontProp "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight cssBackgroundProp "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight cssTextProp "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// HTML ///////////////////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

execute "highlight htmlArg "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.010[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight htmlH3 "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight htmlLink "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.011[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight htmlTag "
	\. s:ui_mode . "fg=" . s:langDefaultHtmlTagFg . " "
	\. s:ui_mode . "=none"
execute "highlight htmlTagName "
	\. s:ui_mode . "fg=" . s:langDefaultHtmlTagFg . " "
	\. s:ui_mode . "=none"
execute "highlight htmlEndTag "
	\. s:ui_mode . "fg=" . s:langDefaultHtmlTagFg . " "
	\. s:ui_mode . "=none"
execute "highlight htmlBold "
	\. s:ui_mode . "=none"
execute "highlight htmlLink "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index]
execute "highlight htmlString "
	\. s:ui_mode . "fg=" . s:langDefaultString

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// JAVASCRIPT /////////////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

execute "highlight jsBlock "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight jsCommentTodo "
	\. s:ui_mode . "fg=" . s:commentTodoFg . " "
	\. s:ui_mode . "bg=" . s:commentTodoBg
execute "highlight jsConditional "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight jsGlobalNodeObjects "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight jsGlobalObjects "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index]
execute "highlight jsLabel "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight jsReturn "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight jsStatement "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight jsOperator "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight jsException "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight jsExceptions "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight jsFunction "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight jsObjectKey "
	\. s:ui_mode . "fg=" . s:jsObjectKey
execute "highlight jsObjectStringKey "
	\. s:ui_mode . "fg=" . s:jsObjectKey
execute "highlight jsFunctionKey "
	\. s:ui_mode . "fg=" . s:jsObjectKey
execute "highlight jsFuncCall "
	\. s:ui_mode . "fg=" . s:langDefaultFuncCallFg
execute "highlight jsString "
	\. s:ui_mode . "fg=" . s:langDefaultString
execute "highlight jsThis "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight jsVariableDef "
	\. s:ui_mode . "fg=" . s:langDefaultVariableFg
execute "highlight jsStorageClass "
	\. s:ui_mode . "fg=" . s:langDefaultDataTypeDefFg
execute "highlight jsTernaryIfOperator "
	\. s:ui_mode . "fg=" . s:langDefaultOperator
execute "highlight jsExport "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight jsExportDefault "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight jsImport "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight jsFrom "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// MUSTACHE / HANDLEBARS //////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

" Brackets
execute "highlight mustacheHandlebars "
	\. s:ui_mode . "fg=" . s:langDefaultHtmlTagFg
execute "highlight mustacheUnescape "
	\. s:ui_mode . "fg=" . s:langDefaultHtmlTagFg
" Mustache/Handlerbars variable
let s:mustachePartial  = g:crookse.colorsets.214[s:index]
execute "highlight mustacheSection "
	\. s:ui_mode . "fg=" . s:langDefaultVariableFg
execute "highlight mustacheInside "
	\. s:ui_mode . "fg=" . s:langDefaultVariableFg
execute "highlight mustachePartial "
	\. s:ui_mode . "fg=" . s:mustachePartial

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// PHP ////////////////////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

execute "highlight phpClasses "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index]
execute "highlight phpParent "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index]
execute "highlight phpTodo "
	\. s:ui_mode . "fg=" . s:commentTodoFg . " "
	\. s:ui_mode . "bg=" . s:commentTodoBg
execute "highlight phpKeyword "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight phpVarSelector "
	\. s:ui_mode . "fg=" . s:langDefaultVariableFg
execute "highlight phpMemberSelector "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index]
execute "highlight phpOperator "
	\. s:ui_mode . "fg=" . s:langDefaultVariableFg
execute "highlight phpInclude "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight phpIdentifier "
	\. s:ui_mode . "fg=" . s:langDefaultVariableFg
execute "highlight phpMethodsVar "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.208[s:index]
execute "highlight phpMethod "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.208[s:index]
execute "highlight phpIdentifierComplex "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.208[s:index]
execute "highlight phpClass "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.074[s:index]
execute "highlight phpFunction "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.074[s:index]
execute "highlight phpFunctions "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.074[s:index]
execute "highlight phpRegion "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index]
execute "highlight phpStaticClasses "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index]
execute "highlight phpStringDelimiter "
	\. s:ui_mode . "fg=" . s:langDefaultString
execute "highlight phpStringDouble "
	\. s:ui_mode . "fg=" . s:langDefaultString
execute "highlight phpStringSingle "
	\. s:ui_mode . "fg=" . s:langDefaultString
execute "highlight phpSuperglobals "
	\. s:ui_mode . "fg=" . s:langDefaultVariableFg
execute "highlight phpType "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight phpDocTags "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// GIT ////////////////////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

execute "highlight gitcommitHeader "
	\. s:ui_mode . "fg=" . s:white
execute "highlight gitcommitSelectedType "
	\. s:ui_mode . "fg=" . s:white
execute "highlight diffFile "
	\. s:ui_mode . "fg=" . s:white
execute "highlight diffNewFile "
	\. s:ui_mode . "fg=" . s:yellow
execute "highlight diffIndexLine "
	\. s:ui_mode . "fg=" . s:white
execute "highlight diffLine "
	\. s:ui_mode . "fg=" . s:white
execute "highlight diffAdded "
	\. s:ui_mode . "fg=" . s:langDefaultSuccessForeground
execute "highlight diffRemoved "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.074[s:index]
execute "highlight gitcommitDiff "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.237[s:index]
execute "highlight SignColumn "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.237[s:index]
	\. s:ui_mode . "bg=" . g:crookse.colorsets.237[s:index]

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// GO /////////////////////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////


execute "highlight goBuiltins "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight goSignedInts "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight goUnsignedInts "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute "highlight goType "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// INI ////////////////////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

execute 'highlight dosiniLabel '
	\. s:ui_mode . 'fg=' . s:langDefaultVariableFg

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// NERD TREE //////////////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

let s:nerdTreeDirFile = g:crookse.colorsets.255[s:index]
let s:nerdTreeDir     = s:langDefaultDividerBlue
execute 'highlight NERDTreeDirSlash '
	\. s:ui_mode . 'fg=' . s:nerdTreeDir
execute 'highlight NERDTreeDir '
	\. s:ui_mode . 'fg=' . s:nerdTreeDir
execute 'highlight NERDTreeFile '
	\. s:ui_mode . 'fg=' . s:nerdTreeDirFile
execute 'highlight NERDTreeOpenable '
	\. s:ui_mode . 'fg=' . s:nerdTreeDir
execute 'highlight NERDTreeClosable '
	\. s:ui_mode . 'fg=' . s:nerdTreeDir

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// PUG ////////////////////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

execute 'highlight pugAttributesDelimiter '
	\. s:ui_mode . 'fg=' . s:white
execute 'highlight pugClass '
	\. s:ui_mode . 'fg=' . s:langDefaultVariableFg
execute 'highlight pugId '
	\. s:ui_mode . 'fg=' . s:langDefaultVariableFg
execute 'highlight pugScriptConditional '
	\. s:ui_mode . 'fg=' . s:langDefaultKeyword
execute 'highlight pugScriptStatement '
	\. s:ui_mode . 'fg=' . s:langDefaultVariableFg

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// SH /////////////////////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

execute 'highlight shVariable '
	\. s:ui_mode . 'fg=' . s:langDefaultVariableFg
execute 'highlight shSetList '
	\. s:ui_mode . 'fg=' . s:langDefaultVariableFg
execute 'highlight shDerefSimple '
	\. s:ui_mode . 'fg=' . s:langDefaultVariableFg

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// TYPESCRIPT /////////////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

execute "highlight typescriptDocTags "
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute 'highlight typescriptDocParam '
	\. s:ui_mode . "fg=" . s:langDefaultIntegerFg
execute "highlight typescriptCommentTodo "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.232[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.005[s:index]
execute 'highlight typescriptStorageClass '
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute 'highlight typescriptIdentifier '
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute 'highlight typescriptType '
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute 'highlight typescriptNumber '
	\. s:ui_mode . "fg=" . s:langDefaultIntegerFg
execute 'highlight typescriptNull '
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
execute 'highlight typescriptPrototype '
	\. s:ui_mode . "fg=" . s:langDefaultIntegerFg

"///////////////////////////////////////////////////////////////////////////////////////////////////
"// YAML ///////////////////////////////////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////////////////////////

execute 'highlight yamlKey '
	\. s:ui_mode . "fg=" . s:langDefaultKeyword
