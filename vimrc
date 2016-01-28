" turn off vi compat
set nocompatible

" enable plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'

call vundle#end()
filetype plugin indent on

" general settings
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

" enable syntax highlighting
syntax on

" enable mouse interaction
set mouse=a

" colorscheme
set laststatus=2
let g:airline_detect_paste=1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" open/close nerdtree tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>

" nerdtree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1

" syntastic
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" vim-gitgutter
hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only = 1

" delimitMate
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" tabs/indentation
au BufRead,BufNewFile *.py,*.c,*.h,*.go set tabstop=4
au BufRead,BufNewFile *.py,*.c,*.h,*.go set shiftwidth=4
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.go set noexpandtab
au BufRead,BufNewFile *.rb,*.js,*.coffee,*.html,*.css,*.scss,*.sass,*.json,*.yaml,*.yml set tabstop=2
au BufRead,BufNewFile *.rb,*.js,*.coffee,*.html,*.css,*.scss,*.sass,*.json,*.yaml,*.yml set shiftwidth=2
au BufRead,BufNewFile *.rb,*.js,*.coffee,*.html,*.css,*.scss,*.sass,*.json,*.yaml,*.yml set expandtab
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
au BufRead,BufNewFile *.py,*.c,*.h,*.go,*.rb,*.js,*.coffee,*.html,*.css,*.scss,*.sass,*.json,*.yaml,*.yml match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.c,*.h,*.go,*.rb,*.js,*.coffee,*.html,*.css,*.scss,*.sass,*.json,*.yaml,*.yml match BadWhitespace /\s\+$/

" unix line endings
au BufNewFile *.py,*.c,*.h,*.go,*.rb,*.js,*.coffee,*.html,*.css,*.scss,*.sass,*.json,*.yaml,*.yml set fileformat=unix

" utf8 file encoding
set encoding=utf-8

