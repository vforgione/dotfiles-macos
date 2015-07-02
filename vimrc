" Number of spaces that a pre-existing tab is equal to.
" For the amount of space used for a new tab use shiftwidth.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4
au BufRead,BufNewFile *rb,*html,*js,*css,*json,*yaml set tabstop=2


" What to use for an indent.
" This will affect Ctrl-T and 'autoindent'.
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
fu Select_c_style()
    if search('^\t', 'n', 150)
        set shiftwidth=4
        set noexpandtab
    el 
        set shiftwidth=4
        set expandtab
    en
endf
au BufRead,BufNewFile *.c,*.h call Select_c_style()
au BufRead,BufNewFile Makefile* set noexpandtab
au BufRead,BufNewFile *.rb,*.html,*.js,*.css,*.json,*.yaml set shiftwidth=2
au BufRead,BufNewFile *.rb,*.html,*.js,*.css,*.json,*.yaml set expandtab


" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red


" Display tabs at the beginning of a line as bad.
au BufRead,BufNewFile *.py,*.pyw,*.rb,*.html,*.js,*.css,*.json,*.yaml match BadWhitespace /^\t\+/


" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.rb,*.html,*.js,*.css,*.json,*.yaml match BadWhitespace /\s\+$/


" Wrap text after a certain number of characters
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set textwidth=79


" Turn off settings in 'formatoptions' relating to comment formatting.
" - c : do not automatically insert the comment leader when wrapping based on
"    'textwidth'
" - o : do not insert the comment leader when using 'o' or 'O' from command mode
" - r : do not insert the comment leader when hitting <Enter> in insert mode
" C: prevents insertion of '*' at the beginning of every line in a comment
au BufRead,BufNewFile *.c,*.h set formatoptions-=c formatoptions-=o formatoptions-=r


" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h,*.rb,*.html,*.js,*.css,*.json,*.yaml set fileformat=unix

" make backspace work like most other apps
set backspace=2


" ----------------------------------------------------------------------------
" The following section contains suggested settings.  While in no way required
" to meet coding standards, they are helpful.

" Set the default file encoding to UTF-8: 
set encoding=utf-8


" For full syntax highlighting:
syntax on
