" turn off vi compat
set nocompatible

filetype plugin indent on

" general settings
set backspace=indent,eol,start
set number

" enable syntax highlighting
syntax on

" enable mouse interaction
set mouse=a

" tabs/indentation
au BufRead,BufNewFile *.py,*.c,*.h,*.go set tabstop=4
au BufRead,BufNewFile *.py,*.c,*.h,*.go set shiftwidth=4
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.go set noexpandtab

au BufRead,BufNewFile *.rb,*.js,*.html,*.css,*.scss,*.sass,*.json,*.yaml,*.yml,*.md,*.erl,*.ex,*.exs set tabstop=2
au BufRead,BufNewFile *.rb,*.js,*.html,*.css,*.scss,*.sass,*.json,*.yaml,*.yml,*.md,*.erl,*.ex,*.exs set shiftwidth=2
au BufRead,BufNewFile *.rb,*.js,*.html,*.css,*.scss,*.sass,*.json,*.yaml,*.yml,*.md,*.erl,*.ex,*.exs set expandtab

au BufRead,BufNewFile *.rst set tabstop=3
au BufRead,BufNewFile *.rst set shiftwidth=3
au BufRead,BufNewFile *.rst set expandtab

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

" whitespace cleaning
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.c,*.h,*.go,*.rb,*.js,*.coffee,*.html,*.css,*.scss,*.sass,*.json,*.yaml,*.yml,*.erl,*.ex,*.exs match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.c,*.h,*.go,*.rb,*.js,*.coffee,*.html,*.css,*.scss,*.sass,*.json,*.yaml,*.yml,*.erl,*.ex,*.exs match BadWhitespace /\s\+$/

" unix line endings
set fileformat=unix

" utf8 file encoding
set encoding=utf-8

" use system clipboard
set clipboard=unnamedplus,unnamed,autoselect
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
