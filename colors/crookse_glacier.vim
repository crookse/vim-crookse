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

" Set syntax colors
execute "highlight Comment "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.000[s:index] . " " 
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

" Set VIM UI colors
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
	\. s:ui_mode . "bg=" . g:crookse.colorsets.236[s:index]
execute "highlight TabLineFill "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.232[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.255[s:index]
execute "highlight TabLineSel "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.232[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.148[s:index]
execute "highlight Title "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.001[s:index]
execute "highlight! VertSplit "
	\. s:ui_mode . "fg=" . g:crookse.colorsets.004[s:index] . " "
	\. s:ui_mode . "bg=" . g:crookse.colorsets.004[s:index] . " "
	\. s:ui_mode . "=none"

" }}

