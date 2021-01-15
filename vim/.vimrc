"" Miscellany
set ruler
set showmode
set autoindent
set nocompatible
set incsearch
filetype plugin on
syntax on
" Four space indent
set tabstop=4
set shiftwidth=4
set expandtab
" Text width warning
match WarningMsg /\%81v.\+/


"" Maps
map <Leader>y "+y
" Camel and snake inclusive w b & e
nnoremap <Leader>w :call search('[A-Z_^$ ]', 'W')<CR>
nnoremap <Leader>b :call search('[A-Z_^$ ]', 'Wb')<CR>
nnoremap <Leader>e :call search('.[A-Z_^$ ]', 'W')<CR>
inoremap <Leader>w :call search('[A-Z_^$ ]', 'W')<CR>
inoremap <Leader>b :call search('[A-Z_^$ ]', 'Wb')<CR>
inoremap <Leader>e :call search('.[A-Z_^$ ]', 'W')<CR>

"" Plugins
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

" I don't actually use any of these bindings and they slow down my camel
" navigation binds
autocmd VimEnter * nunmap <Leader>w<Leader>m
autocmd VimEnter * nunmap <Leader>w<Leader>y
autocmd VimEnter * nunmap <Leader>w<Leader>t
autocmd VimEnter * nunmap <Leader>w<Leader>w
autocmd VimEnter * nunmap <Leader>w<Leader>i
autocmd VimEnter * nunmap <Leader>wi
autocmd VimEnter * nunmap <Leader>ws
autocmd VimEnter * nunmap <Leader>wt
autocmd VimEnter * nunmap <Leader>ww

