" -----------------------------------------------------------------------------
" File: crookse_glacier.vim
" Description: A flat, colorful theme/scheme combo for VIM
" Credits: Brian Ward <twitter: @brianward>, Joey Figaro <twitter: @joeyfigaro>
" Source: https://github.com/primedirective/glacier-remixes
" Last Modified: 26 Jun 2014
" -----------------------------------------------------------------------------

" ***THIS IS A WORK IN PROGRESS***

" Note: This theme uses g:crookse.colorsets from:
" ~/.dotfiles/.vim/crookse/plugin/colorsets.vim
" Place cursor over the path and type <C-w>f to go to the file

" Initialization {{

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name = "crookse_glacier"

" }}

" Set Color Mode {{

function! s:UIMode()
    if has("gui_running")
        let s:ui_mode     = "gui"
        let s:id = 0
    else
        let s:ui_mode     = "cterm"
        let s:id = 1
		let s:index = 0
        " Force 16 color mode
        set t_Co=16
    endif
endfunction

call s:UIMode()

" }}

" Semantics {{ 

" Set window background color
if has("gui_running")
    execute "highlight Normal "
		\. s:ui_mode . "fg=" . g:crookse.colorsets.015[s:index] . " "
		\. s:ui_mode . "bg=" . s:color.guibg . " "
		\. s:ui_mode . "=none"
else
" The background for non-gui mode is controlled by iterm
    execute "highlight Normal "
		\. s:ui_mode . "fg=" . g:crookse.colorsets.015[s:index] . " "
		\. s:ui_mode . "=none"
endif

"///////////////////////////////////////////////////////////////////////////////
"// COMMON VARIABLES/HIGHLIGHT COLORS //////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////

" Keep these in descending order by color value

" Default language colors
let s:langDefaultFuncCallFg    = g:crookse.colorsets.208[s:index]
let s:langDefaultVariableFg    = g:crookse.colorsets.013[s:index]
let s:langDefaultDataTypeDefFg = g:crookse.colorsets.012[s:index]
let s:langDefaultHtmlTagFg     = g:crookse.colorsets.074[s:index]

let s:commentTodoFg = g:crookse.colorsets.255[s:index]
let s:commentTodoBg = g:crookse.colorsets.199[s:index]
let s:jsObjectKey   = g:crookse.colorsets.074[s:index]

"///////////////////////////////////////////////////////////////////////////////
"// VIM UI COLORS //////////////////////////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////

execute "highlight ColorColumn "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.236[s:index]
execute "highlight Cursor "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.011[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.005[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight CursorLine "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.236[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight Folded "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.015[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.004[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight LineNr "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.000[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight MatchParen "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.011[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.005[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight NonText "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.000[s:index] . " "
	\. s:ui_mode . "=none"
" SpecialKey chars: whitespace, tabs, VIM control characters
execute "highlight SpecialKey "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.235[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight StatusLine "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.004[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.004[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight StatusLineNC "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.008[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.011[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight TabLine "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.232[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight TabLineFill "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.004[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.255[s:index]
execute "highlight TabLineSel "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.232[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.148[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight TabLineSelected "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.232[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.148[s:index] . " "
	\. s:ui_mode . "=bold"
execute "highlight TabLineUnselected "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.240[s:index]
execute "highlight Title "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.001[s:index]
execute "highlight! VertSplit "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.004[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.004[s:index] . " "
	\. s:ui_mode . "=none"

"///////////////////////////////////////////////////////////////////////////////
"// FILE-SPECIFIC SYNTAX HIGHLIGHTING //////////////////////////////////////////
"///////////////////////////////////////////////////////////////////////////////

" VIM
execute "highlight Comment "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.240[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight Constant "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.010[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight Identifier "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.013[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight Statement "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.013[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight PreProc "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.013[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight Function "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.012[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight Type "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.013[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight Number "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.010[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight Special "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.010[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight String "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.011[s:index] . " "
	\. s:ui_mode . "=none"
execute "highlight vimString "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.222[s:index] . " "
	\. s:ui_mode . "=none"

" HTML
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

" JavaScript
execute "highlight jsCommentTodo "
	\. s:ui_mode . "fg=" . s:commentTodoFg . " "
	\. s:ui_mode . "bg=" . s:commentTodoBg
execute "highlight jsObjectKey "
	\. s:ui_mode . "fg=" . s:jsObjectKey
execute "highlight jsFunctionKey "
	\. s:ui_mode . "fg=" . s:jsObjectKey
execute "highlight jsFuncCall "
	\. s:ui_mode . "fg=" . s:langDefaultFuncCallFg
execute "highlight jsVariableDef "
	\. s:ui_mode . "fg=" . s:langDefaultVariableFg
execute "highlight jsStorageClass "
	\. s:ui_mode . "fg=" . s:langDefaultDataTypeDefFg

" Mustache/Handlebars
"""" Brackets
execute "highlight mustacheHandlebars "
	\. s:ui_mode . "fg=" . s:langDefaultHtmlTagFg
execute "highlight mustacheUnescape "
	\. s:ui_mode . "fg=" . s:langDefaultHtmlTagFg
"""" Mustache/Handlerbars variable
let s:mustacheVariable = g:crookse.colorsets.005[s:index]
let s:mustachePartial  = g:crookse.colorsets.214[s:index]
execute "highlight mustacheSection "
	\. s:ui_mode . "fg=" . s:mustacheVariable
execute "highlight mustacheInside "
	\. s:ui_mode . "fg=" . s:mustacheVariable
execute "highlight mustachePartial "
	\. s:ui_mode . "fg=" . s:mustachePartial

" PHP
execute "highlight phpParent "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index]
execute "highlight phpTodo "
	\. s:ui_mode . "fg=" . s:commentTodoFg . " "
	\. s:ui_mode . "bg=" . s:commentTodoBg
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
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index]
execute "highlight phpRegion "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index]
execute "highlight phpStaticClasses "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.255[s:index]

" }}

