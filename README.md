# vim-crookse

## Summary

*Note: Using this plugin will automatically call set `colorscheme crookse_glacier`. If you don't want that, then remove that line from `plugin/vim-crookse.vim`.*

This package exists to house all of my Vim configurations. Currently, it only has a `colorsets` object (makes changing colors in your Vim theme easier and ensures consistent syntax highlighting across languages) that is based on the 256 color map and an extension to the Glacier color scheme provided by @joeyfigaro.

## Using the `colorsets` object.

I created the `colorsets` object to ensure consistent highlighting across different programming languages. See the below example for defining the default color for strings and applying it to different languages.

```
# Define the default color for strings.
let s:langDefaultString = g:crookse.colorsets.222[s:index]

" Define string colors in Apache files using the default color.
execute "highlight apacheString "
	\. s:ui_mode . "fg=" . s:langDefaultString

" Define strings in HTML files using the default color.
execute "highlight htmlString "
	\. s:ui_mode . "fg=" . s:langDefaultString

" Define strings in JavaScript files using the default color.
execute "highlight jsString "
	\. s:ui_mode . "fg=" . s:langDefaultString

```

## Using `crookse_glacier`.

*Note: Using this plugin will automatically call set `colorscheme crookse_glacier`. If you don't want that, then remove that line from `plugin/vim-crookse.vim`.*

1. In `vimrc`, `Plugin 'crookse/vim-crookse'` to list of plugins.
2. In `vimrc`, add `set rtp+=~/.vim/bundle/vim-crookse`.
3. Done.
