set ruler
set showmode
set autoindent
set nocompatible
set incsearch

" Four space indent
set tabstop=4
set shiftwidth=4
set expandtab

" Text width warning
match WarningMsg /\%81v.\+/

filetype plugin on
syntax on

" _PLUGINS_
" Vim-Plug
call plug#begin('~/.vim/plugged')
	Plug 'https://github.com/airblade/vim-gitgutter'
	Plug 'https://github.com/frazrepo/vim-rainbow'
	Plug 'https://github.com/vimwiki/vimwiki'
call plug#end()

" GitGutter
let g:gitgutter_enabled = 1
set updatetime=100
highlight clear SignColumn

" VimWiki
let g:vimwiki_list = [{'path': '~/doc/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

