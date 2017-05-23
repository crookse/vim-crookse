" MIT License. Copyright (c) 2017 Eric Crooks.

if exists("g:loaded_crookse") && g:loaded_crookse
	finish
endif
let g:loaded_crookse = 1
let g:crookse        = {}

call components#colorsets#Load()


colorscheme crookse_glacier
